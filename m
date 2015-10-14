From: Doug Anderson <dianders@chromium.org>
Subject: Re: [RFC PATCH] usb: dwc2: host: dwc2_check_qtd_still_ok() can be static
Date: Wed, 14 Oct 2015 15:54:24 -0700
Message-ID: <CAD=FV=XMfPEZuWt7pWHPcAzBjcaLn=SjwYozSA_=6=okZF7Zbw@mail.gmail.com>
References: <201510150401.c19CKrBd%fengguang.wu@intel.com>
	<1444848406-16451-1-git-send-email-dianders@chromium.org>
	<20151014204443.GA144226@lkp-ib03>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20151014204443.GA144226@lkp-ib03>
Sender: linux-kernel-owner@vger.kernel.org
To: kbuild test robot <lkp@intel.com>
Cc: "kbuild-all@01.org" <kbuild-all@01.org>, John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Oct 14, 2015 at 1:44 PM, kbuild test robot <lkp@intel.com> wrote:
>
> Signed-off-by: Fengguang Wu <fengguang.wu@intel.com>
> ---
>  hcd_intr.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
> index 57e71f9d..b31a1fb 100644
> --- a/drivers/usb/dwc2/hcd_intr.c
> +++ b/drivers/usb/dwc2/hcd_intr.c
> @@ -1956,7 +1956,7 @@ static void dwc2_hc_chhltd_intr(struct dwc2_hsotg *hsotg,
>   * the qtd from the top of the list, this will return NULL.  Otherwise
>   * it will be passed back qtd.
>   */
> -struct dwc2_qtd *dwc2_check_qtd_still_ok(struct dwc2_qtd *qtd,
> +static struct dwc2_qtd *dwc2_check_qtd_still_ok(struct dwc2_qtd *qtd,
>                                             struct list_head *qtd_list)
>  {
>         struct dwc2_qtd *cur_head;

Fixed in v2.  https://patchwork.kernel.org/patch/7398911/

-Doug
