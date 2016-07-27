From: Guenter Roeck <groeck@google.com>
Subject: Re: [v7 PATCH 1/6] extcon: Add EXTCON_DISP_DP and the property for
 USB Type-C
Date: Wed, 27 Jul 2016 14:31:05 -0700
Message-ID: <CABXOdTfzZ8KD+W4GQBCoi_xhoX1Hu5USyHXorKY-rqLcB3gEpA@mail.gmail.com>
References: <1469624836-22792-1-git-send-email-zyw@rock-chips.com> <1469624836-22792-2-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1469624836-22792-2-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, myungjoo.ham@samsung.com, Chanwoo Choi <cw00.choi@samsung.com>, wulf <wulf@rock-chips.com>, =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jul 27, 2016 at 6:07 AM, Chris Zhong <zyw@rock-chips.com> wrote:
> Add EXTCON_DISP_DP for the Display external connector. For Type-C
> connector the DisplayPort can work as an Alternate Mode(VESA DisplayPort
> Alt Mode on USB Type-C Standard). The Type-C support both normal
> and flipped orientation, so add a property to extcon.
>
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>
> Changes in v7: None
> Changes in v6: None
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
> Changes in v1: None
>
>  drivers/extcon/extcon.c | 5 +++++
>  include/linux/extcon.h  | 8 +++++++-
>  2 files changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/extcon/extcon.c b/drivers/extcon/extcon.c
> index 68890bb..6c7488a 100644
> --- a/drivers/extcon/extcon.c
> +++ b/drivers/extcon/extcon.c
> @@ -157,6 +157,11 @@ struct __extcon_info {
>                 .id = EXTCON_DISP_VGA,
>                 .name = "VGA",
>         },
> +       [EXTCON_DISP_DP] = {
> +               .type = EXTCON_TYPE_DISP | EXTCON_TYPE_USB,
> +               .id = EXTCON_DISP_DP,
> +               .name = "DP",
> +       },
>
>         /* Miscellaneous external connector */
>         [EXTCON_DOCK] = {
> diff --git a/include/linux/extcon.h b/include/linux/extcon.h
> index f686204..9670d3f 100644
> --- a/include/linux/extcon.h
> +++ b/include/linux/extcon.h
> @@ -69,6 +69,7 @@
>  #define EXTCON_DISP_MHL                41      /* Mobile High-Definition Link */
>  #define EXTCON_DISP_DVI                42      /* Digital Visual Interface */
>  #define EXTCON_DISP_VGA                43      /* Video Graphics Array */
> +#define EXTCON_DISP_DP         44      /* Display Port */
>
>  /* Miscellaneous external connector */
>  #define EXTCON_DOCK            60
> @@ -106,12 +107,17 @@
>   * @type:      integer (intval)
>   * @value:     0 (low) or 1 (high)
>   * @default:   0 (low)
> + * - EXTCON_PROP_USB_TYPEC_POLARITY
> + * @type:      integer (intval)
> + * @value:     0 (normal) or 1 (flip)
> + * @default:   0 (normal)
>   */
>  #define EXTCON_PROP_USB_ID             0
>  #define EXTCON_PROP_USB_VBUS           1
> +#define EXTCON_PROP_USB_TYPEC_POLARITY 2
>
>  #define EXTCON_PROP_USB_MIN            0
> -#define EXTCON_PROP_USB_MAX            1
> +#define EXTCON_PROP_USB_MAX            2
>  #define EXTCON_PROP_USB_CNT    (EXTCON_PROP_USB_MAX - EXTCON_PROP_USB_MIN + 1)
>
>  /* Properties of EXTCON_TYPE_CHG. */
> --
> 2.6.3
>
