/******************************************************************************

 @file tiop_config.c

 @brief TI-OpenThread stack configuration function implementation

 DO NOT EDIT - This file is generated by the SysConfig tool.

 *****************************************************************************/
/* Standard Library header files */
#include <assert.h>

/* OpenThread public API header files */
#include <openthread/instance.h>
#include <openthread/thread.h>
#include <openthread/link.h>
#include <openthread/joiner.h>

/* Configuration header file */
#include "tiop_config.h"


/**
 * Documented in tiop_config.h
 */
otError TIOP_configuredJoinerStart(otInstance *     aInstance,
                                   const char *     aProvisioningUrl,
                                   const char *     aVendorName,
                                   const char *     aVendorModel,
                                   const char *     aVendorSwVersion,
                                   const char *     aVendorData,
                                   otJoinerCallback aCallback,
                                   void *           aContext)
{
    return otJoinerStart(aInstance, TIOP_CONFIG_PSKD, aProvisioningUrl, aVendorName,
                         aVendorModel, aVendorSwVersion, aVendorData, aCallback, aContext);
}

/**
 * Documented in tiop_config.h
 */
void TIOP_init(otInstance * aInstance)
{
    unsigned int i;
    otError err;

    otLinkModeConfig linkMode;
    otExtAddress extAddress;
    otExtendedPanId extPanID;
    otMasterKey aKey;


    /* Set link mode */
    linkMode.mRxOnWhenIdle       = TIOP_CONFIG_LINK_MODE_R;
    linkMode.mSecureDataRequests = 1;
    linkMode.mDeviceType         = TIOP_CONFIG_LINK_MODE_D;
    linkMode.mNetworkData        = 1;
    err = otThreadSetLinkMode(aInstance, linkMode);
    assert(err == OT_ERROR_NONE);

    /* Set poll period */
    if (linkMode.mRxOnWhenIdle == 0)
    {
        otLinkSetPollPeriod(aInstance, TIOP_CONFIG_POLL_PERIOD);
    }

    /* Set default channel */
    err = otLinkSetChannel(aInstance, TIOP_CONFIG_LINK_CHANNEL);
    assert(err == OT_ERROR_NONE);

    /* Set network parameters if TIOP_CONFIG_SET_NW_ID is 1 */
    if (TIOP_CONFIG_SET_NW_ID)
    {
        /* Set PAN ID */
        err = otLinkSetPanId(aInstance, TIOP_CONFIG_PAN_ID);
        assert(err == OT_ERROR_NONE);

        /* Set extended PAN ID */
        for (i = 0; i < OT_EXT_PAN_ID_SIZE; i++)
        {
            extPanID.m8[OT_EXT_PAN_ID_SIZE - i - 1] =
                    ((TIOP_CONFIG_EXT_PAN_ID >> (8*i)) & 0xFF);
        }
        err = otThreadSetExtendedPanId(aInstance, &extPanID);
        assert(err == OT_ERROR_NONE);

        /* Set master key*/
        for (i = 0; i < OT_MASTER_KEY_SIZE/2; i++)
        {
            aKey.m8[OT_MASTER_KEY_SIZE - i - 1] =
                    ((TIOP_CONFIG_MASTER_KEY_L >> (8*i)) & 0xFF);
        }
        for (i = OT_MASTER_KEY_SIZE/2; i < OT_MASTER_KEY_SIZE; i++)
        {
            aKey.m8[OT_MASTER_KEY_SIZE - i - 1] =
                    ((TIOP_CONFIG_MASTER_KEY_U >> (8*(i-(OT_MASTER_KEY_SIZE/2)))) & 0xFF);
        }
        err = otThreadSetMasterKey(aInstance, (const otMasterKey *) (&aKey));
        assert(err == OT_ERROR_NONE);

        /* Set network name */
        err = otThreadSetNetworkName(aInstance, TIOP_CONFIG_NETWORK_NAME);
        assert(err == OT_ERROR_NONE);
    }

    /* Prevent compiler warning */
    (void) err;
}
