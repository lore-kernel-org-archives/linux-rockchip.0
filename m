From: Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [PATCH 2/3] usb: dwc2: host: Giveback URB in tasklet context
Date: Thu, 5 Nov 2015 10:19:00 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1511051012580.25468-100000@netrider.rowland.org>
References: <CAD=FV=WhD-CcHHZN0_h57xPmvwiOiroOQKoDpy8f2HfDJY-PCg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=WhD-CcHHZN0_h57xPmvwiOiroOQKoDpy8f2HfDJY-PCg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Ming Lei <ming.lei@canonical.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 4 Nov 2015, Doug Anderson wrote:

> In the ChromeOS gerrit
> <https://chromium-review.googlesource.com/#/c/310583/> Julius Werner
> points out that for EHCI it was good to take the optimization from
> commit 9118f9eb4f1e ("USB: EHCI: improve interrupt qh unlink") before
> this one.  I'm still trying to learn USB / dwc2 so it's unclear to me
> whether we also need a similar change before landing.
> 
> I'll see if I can do some investigation about this and also some
> benchmarking before and after.  Certainly profiling the interrupt
> handler itself showed a huge improvement, but I'd hate to see a
> regression elsewhere.
> 
> If anyone else knows better than I, please speak up!  :)

This is a matter of both efficiency and correctness.  Giving back URBs 
in a tasklet is not a simple change.

Have you read the kerneldoc for usb_submit_urb() in 
drivers/usb/core/urb.c?  The portion about "Reserved Bandwidth 
Transfers" is highly relevant.  I don't know how dwc2 goes about 
reserving bandwidth for periodic transfers, but if it relies on the 
endpoint queue being non-empty to maintain a reservation then it will 
be affected by this change.

Alan Stern
