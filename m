From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4] usb: dwc2: host: Fix use after free w/ simultaneous irqs
Date: Mon, 19 Oct 2015 09:36:26 -0700
Message-ID: <CAD=FV=Xua_hyjtK6abQUQE=ieV5LL4K8ToWx==FAhEpiZgZecA@mail.gmail.com>
References: <1445036492-21079-1-git-send-email-dianders@chromium.org>
	<2B3535C5ECE8B5419E3ECBE30077290901DC39CC4A@US01WEMBX2.internal.synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2B3535C5ECE8B5419E3ECBE30077290901DC39CC4A@US01WEMBX2.internal.synopsys.com>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>
Cc: "balbi@ti.com" <balbi@ti.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "gregory.herrero@intel.com" <gregory.herrero@intel.com>, "yousaf.kaukab@intel.com" <yousaf.kaukab@intel.com>, "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

John,

On Fri, Oct 16, 2015 at 9:14 PM, John Youn <John.Youn@synopsys.com> wrote:
> I reviewed this some more and I think this should be ok. Most of
> the handlers don't make sense without a qtd and/or channel.
>
> Although I am not completely sure on the desc dma case. I think
> it will at least be better than letting the use-after-free occur.
>
>
> Acked-by: John Youn <johnyoun@synopsys.com>

Thanks!

I put some code in to give a stack crawl for the cause of the NULL
"qh" case.  I'm running with Gregory Herrero's Descriptor DMA series.
NULL case only happens if I move "dma_desc_enable" and
"dma_desc_fs_enable" away from 0 (right now Rockchip is hardcoded to
have dma_desc off).

--

kgdb shows:

#0  0xc0198728 in arch_kgdb_breakpoint () at
arch/arm/include/asm/outercache.h:103

#1  kgdb_breakpoint () at kernel/debug/debug_core.c:1054

#2  0xc0462dcc in dwc2_release_channel_ddma
(hsotg=hsotg@entry=0xed426058, qh=qh@entry=0xed682280) at
drivers/usb/dwc2/hcd_ddma.c:318

...AKA on "chan->qh = NULL;"


#3  0xc0463f48 in dwc2_hcd_complete_xfer_ddma
(hsotg=hsotg@entry=0xed426058, chan=chan@entry=0xed531a40,
chnum=chnum@entry=0,
halt_status=halt_status@entry=DWC2_HC_XFER_COMPLETE)
    at drivers/usb/dwc2/hcd_ddma.c:1351

#4  0xc0460414 in dwc2_hc_xfercomp_intr (hsotg=hsotg@entry=0xed426058,
chan=chan@entry=0xed531a40, chnum=chnum@entry=0,
qtd=qtd@entry=0xed66cc00)
    at drivers/usb/dwc2/hcd_intr.c:1002

#5  0xc0461814 in dwc2_hc_chhltd_intr_dma (qtd=0xed66cc00, chnum=0,
chan=0xed531a40, hsotg=0xed426058) at drivers/usb/dwc2/hcd_intr.c:1830

#6  dwc2_hc_chhltd_intr (qtd=0xed66cc00, chnum=0, chan=0xed531a40,
hsotg=0xed426058) at drivers/usb/dwc2/hcd_intr.c:1951

#7  dwc2_hc_n_intr (chnum=0, hsotg=0xed426058) at
drivers/usb/dwc2/hcd_intr.c:2063

...AKA on "dwc2_hc_chhltd_intr(hsotg, chan, chnum, qtd);"

#8  dwc2_hc_intr (hsotg=0xed426058) at drivers/usb/dwc2/hcd_intr.c:2138

#9  dwc2_handle_hcd_intr (hsotg=0xed426058) at drivers/usb/dwc2/hcd_intr.c:2188

#10 0xc045c22c in _dwc2_hcd_irq (hcd=<optimized out>) at
drivers/usb/dwc2/hcd.c:2895

#11 0xc044752c in usb_hcd_irq (irq=<optimized out>, __hcd=<optimized
out>) at drivers/usb/core/hcd.c:2353


-Doug
