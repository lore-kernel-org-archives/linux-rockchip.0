From: =?UTF-8?B?QW50dGkgU2VwcMOkbMOk?= <a.seppala@gmail.com>
Subject: Re: [PATCH v3 2/2] usb: dwc2: host: Clear interrupts before handling them
Date: Thu, 19 Nov 2015 23:09:25 +0200
Message-ID: <CAKv9HNbtQjnOzctNH9qVy97KZCW-W0M+s+vZAt0oRDv7KUtsUw@mail.gmail.com>
References: <1447962313-17069-1-git-send-email-dianders@chromium.org>
	<1447962313-17069-2-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1447962313-17069-2-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: John Youn <John.Youn@synopsys.com>, balbi@ti.com, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 19 November 2015 at 21:45, Douglas Anderson <dianders@chromium.org> wrote:
> In general it is wise to clear interrupts before processing them.  If
> you don't do that, you can get:
>  1. Interrupt happens
>  2. You look at system state and process interrupt
>  3. A new interrupt happens
>  4. You clear interrupt without processing it.
>
> This patch was actually a first attempt to fix missing device insertions
> as described in (usb: dwc2: host: Fix missing device insertions) and it
> did solve some of the signal bouncing problems but not all of
> them (which is why I submitted the other patch).  Specifically, this
> patch itself would sometimes change:
>  1. hardware sees connect
>  2. hardware sees disconnect
>  3. hardware sees connect
>  4. dwc2_port_intr() - clears connect interrupt
>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>
> ...to:
>  1. hardware sees connect
>  2. hardware sees disconnect
>  3. dwc2_port_intr() - clears connect interrupt
>  4. hardware sees connect
>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>
> ...but with different timing then sometimes we'd still miss cable
> insertions.
>
> In any case, though this patch doesn't fix any (known) problems, it
> still seems wise as a general policy to clear interrupt before handling
> them.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Acked-by: John Youn <johnyoun@synopsys.com>
> Tested-by: John Youn <johnyoun@synopsys.com>
> ---
> Changes in v3:
> - Don't (uselessly) clear the PRTINT anymore (Felipe Balbi).
>
> Changes in v2: None
>

Hi.

It seems that towards the end of hcd_intr.c you seem to be switching a
few calls of dwc2_writel() to plain writel(). It looks like something
that is easily overlooked but please always use dwc2_writel to
preserve correct register endianness on big-endian platforms.

Br,
-- 
Antti
