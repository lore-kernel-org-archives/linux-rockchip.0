From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [RESEND PATCH 0/1] add multiple clock handling for dwc2 driver
Date: Tue, 07 Feb 2017 00:53:13 +0100
Message-ID: <2573136.XRL8a3JAlG@phil>
References: <1486263061-10681-1-git-send-email-frank.wang@rock-chips.com> <3508420.z4eX5F6ytJ@phil> <a573a8d1-7df8-24cd-1291-4dfdc8068f18@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <a573a8d1-7df8-24cd-1291-4dfdc8068f18@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Frank Wang <frank.wang@rock-chips.com>
Cc: johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, huangtao@rock-chips.com, kever.yang@rock-chips.com, william.wu@rock-chips.com, elaine.zhang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Frank,

Am Montag, 6. Februar 2017, 09:40:35 CET schrieb Frank Wang:
> On 2017/2/5 17:41, Heiko Stuebner wrote:
> > Am Sonntag, 5. Februar 2017, 10:51:00 CET schrieb Frank Wang:
> >> The original posting on Jan 19th have not received any responses, so I
> >> resend them.
> >> 
> >> The Current default dwc2 just handle one clock named otg, however, it may
> >> have two or more clock need to manage for some new SoCs(such as RK3328),
> >> so
> >> this adds change clk to clk's array of dwc2_hsotg to handle more clocks
> >> operation.
> > 
> > can you please give a bit more detail on the specific layout.
> > 
> > I guess you're talking about hclk_otg_pmu, right? What component does it
> > supply, because I didn't find anything in the partial TRM in the PMU
> > section relating to the "otg".
> 
> Yes, it is hclk_otg_pmu.
> 
> The rock-chip hclk_otg_pmu is an input clock for dwc2 PMU module which
> named pmu_hclk in chapter 2.4 of dwc otg databook v3.10.

ok great, on establishing that this is a actual part of the IP block.

I'm going to comment on the actual code change in a minute, so see you over 
there :-)

Heiko
