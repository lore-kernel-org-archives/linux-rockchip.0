From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH v15 1/5] extcon: Introduce EXTCON_PROP_DISP_HPD property
Date: Tue, 13 Sep 2016 14:25:47 +0900
Message-ID: <57D78DDB.3090206@samsung.com>
References: <1473473748-22331-1-git-send-email-zyw@rock-chips.com>
 <CGME20160910021556epcas1p4c9ceeebf12d23b1963f78d4e789c6bf5@epcas1p4.samsung.com>
 <1473473748-22331-2-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <1473473748-22331-2-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>, dianders@chromium.org, tfiga@chromium.org, heiko@sntech.de, yzq@rock-chips.com, groeck@chromium.org, myungjoo.ham@samsung.com, wulf@rock-chips.com, marcheu@chromium.org, briannorris@chromium.org, zhengxing@rock-chips.com, cychiang@chromium.org, hychao@chromium.org, broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Dear all,

On 2016년 09월 10일 11:15, Chris Zhong wrote:
> EXTCON_PROP_DISP_HPD is need by display port, if the system has no hpd
> interrupt, this property can be used.
> 
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
> ---
> 
> Changes in v15: None
> Changes in v14: None
> Changes in v13: None
> Changes in v12: None
> Changes in v11: None
> Changes in v10: None
> Changes in v9: None
> Changes in v8: None
> Changes in v7: None
> Changes in v6: None
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
> Changes in v1: None
> 
>  include/linux/extcon.h | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/extcon.h b/include/linux/extcon.h
> index 9147c42..4411893 100644
> --- a/include/linux/extcon.h
> +++ b/include/linux/extcon.h
> @@ -131,9 +131,21 @@
>  #define EXTCON_PROP_JACK_MAX		100
>  #define EXTCON_PROP_JACK_CNT (EXTCON_PROP_JACK_MAX - EXTCON_PROP_JACK_MIN + 1)
>  
> +/*
> + * Properties of EXTCON_TYPE_DISP.
> + *
> + * - EXTCON_PROP_DISP_HPD
> + * @type:       integer (intval)
> + * @value:      0 (no hpd) or 1 (hpd)
> + * @default:    0 (no hpd)
> + *
> + */
> +
> +#define EXTCON_PROP_DISP_HPD		150
> +
>  /* Properties of EXTCON_TYPE_DISP. */
>  #define EXTCON_PROP_DISP_MIN		150
> -#define EXTCON_PROP_DISP_MAX		150
> +#define EXTCON_PROP_DISP_MAX		151
>  #define EXTCON_PROP_DISP_CNT (EXTCON_PROP_DISP_MAX - EXTCON_PROP_DISP_MIN + 1)
>  
>  /*
> 

This patch rely on the extcon git repository to support the extcon property.
I created the immutable branch(ib-extcon-phy-4.9). I send this pull request
to prevent the build error.

Best Regards,
Chanwoo Choi

The following changes since commit 29b4817d4018df78086157ea3a55c1d9424a7cfc:

  Linux 4.8-rc1 (2016-08-07 18:18:00 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/chanwoo/extcon.git ib-extcon-phy-4.9

for you to fetch changes up to c7914e8dfa4032d24ef7af4c86b9c841ec6b74e6:

  extcon: Introduce EXTCON_PROP_DISP_HPD property (2016-09-13 10:08:47 +0900)

----------------------------------------------------------------
Chanwoo Choi (12):
      extcon: arizona: Remove the usage of extcon_update_state()
      extcon: adc-jack: Remove the usage of extcon_set_state()
      extcon: gpio: Remove the usage of extcon_set_state()
      extcon: Remove the state_store() to prevent the wrong access
      extcon: Block the bit masking operation for cable state except for extcon core
      extcon: Add the extcon_type to gather each connector into five category
      extcon: Add the support for extcon property according to extcon type
      extcon: Add the support for the capability of each property
      extcon: Rename the extcon_set/get_state() to maintain the function naming pattern
      extcon: Add the synchronization extcon APIs to support the notification
      extcon: Add new EXTCON_DISP_HMD for Head-mounted Display device
      extcon: Add new EXTCON_CHG_WPT for Wireless Power Transfer device

Charles Keepax (1):
      extcon: arizona: Remove unneeded semi-colon

Chris Zhong (2):
      extcon: Add EXTCON_DISP_DP and the property for USB Type-C
      extcon: Introduce EXTCON_PROP_DISP_HPD property

Guenter Roeck (1):
      extcon: Introduce EXTCON_PROP_USB_SS property for SuperSpeed mode

Maninder Singh (1):
      extcon: Fix compile time warning

Stephen Boyd (1):
      extcon: Move extcon_get_edev_by_phandle() errors to dbg level

Venkat Reddy Talla (1):
      extcon: adc-jack: update cable state during boot

 drivers/extcon/extcon-adc-jack.c       |  27 +-
 drivers/extcon/extcon-arizona.c        |  13 +-
 drivers/extcon/extcon-gpio.c           |   2 +-
 drivers/extcon/extcon.c                | 774 ++++++++++++++++++++++++++-------
 include/linux/extcon.h                 | 192 +++++++-
 include/linux/extcon/extcon-adc-jack.h |   4 +-
 6 files changed, 820 insertions(+), 192 deletions(-)
