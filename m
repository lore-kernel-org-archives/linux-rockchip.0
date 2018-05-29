From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: [PATCH] usb: dwc2: fix the incorrect bitmaps for the ports of
 multi_tt hub
Date: Tue, 29 May 2018 14:45:10 +0000
Message-ID: <410670D7E743164D87FA6160E7907A56013135A5A0@am04wembxa.internal.synopsys.com>
References: <1526897520-9340-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>, "Minas.Harutyunyan@synopsys.com" <Minas.Harutyunyan@synopsys.com>, "felipe.balbi@linux.intel.com" <felipe.balbi@linux.intel.com>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Cc: "sergei.shtylyov@cogentembedded.com" <sergei.shtylyov@cogentembedded.com>, "heiko@sntech.de" <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "frank.wang@rock-chips.com" <frank.wang@rock-chips.com>, "huangtao@rock-chips.com" <huangtao@rock-chips.com>, "dianders@google.com" <dianders@google.com>, "daniel.meng@rock-chips.com" <daniel.meng@rock-chips.com>, "John.Youn@synopsys.com" <John.Youn@synopsys.com>, "fml@rock-chips.com" <fml@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Acked-by Minas Harutyunyan hminas@synopsys.com>=0A=
=0A=
On 5/21/2018 2:13 PM, William Wu wrote:=0A=
> The dwc2_get_ls_map() use ttport to reference into the=0A=
> bitmap if we're on a multi_tt hub. But the bitmaps index=0A=
> from 0 to (hub->maxchild - 1), while the ttport index from=0A=
> 1 to hub->maxchild. This will cause invalid memory access=0A=
> when the number of ttport is hub->maxchild.=0A=
> =0A=
> Without this patch, I can easily meet a Kernel panic issue=0A=
> if connect a low-speed USB mouse with the max port of FE2.1=0A=
> multi-tt hub (1a40:0201) on rk3288 platform.=0A=
> =0A=
> Signed-off-by: William Wu <william.wu@rock-chips.com>=0A=
> ---=0A=
>   drivers/usb/dwc2/hcd_queue.c | 2 +-=0A=
>   1 file changed, 1 insertion(+), 1 deletion(-)=0A=
> =0A=
> diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c=
=0A=
> index d7c3d6c..9c55d1a 100644=0A=
> --- a/drivers/usb/dwc2/hcd_queue.c=0A=
> +++ b/drivers/usb/dwc2/hcd_queue.c=0A=
> @@ -383,7 +383,7 @@ static unsigned long *dwc2_get_ls_map(struct dwc2_hso=
tg *hsotg,=0A=
>   	/* Get the map and adjust if this is a multi_tt hub */=0A=
>   	map =3D qh->dwc_tt->periodic_bitmaps;=0A=
>   	if (qh->dwc_tt->usb_tt->multi)=0A=
> -		map +=3D DWC2_ELEMENTS_PER_LS_BITMAP * qh->ttport;=0A=
> +		map +=3D DWC2_ELEMENTS_PER_LS_BITMAP * (qh->ttport - 1);=0A=
>   =0A=
>   	return map;=0A=
>   }=0A=
> =0A=
=0A=
