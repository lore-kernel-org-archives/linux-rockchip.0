From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/2] Documentation: bindings: add DT documentation for Rockchip USB2PHY
Date: Thu, 02 Jun 2016 00:17:46 +0200
Message-ID: <4799985.esYaUoo40j@diego>
References: <1464676811-7418-1-git-send-email-frank.wang@rock-chips.com> <6548390.RQDBBuPzBf@diego> <574E9845.30501@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <574E9845.30501@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
Cc: dianders@chromium.org, kishon@ti.com, robh+dt@kernel.org, pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, kever.yang@rock-chips.com, huangtao@rock-chips.com, william.wu@rock-chips.com, frank.wang@rock-chips.com.org
List-Id: linux-rockchip.vger.kernel.org

Hi Frank,

Am Mittwoch, 1. Juni 2016, 16:09:41 schrieb Frank Wang:
> > You might want to add the bvalid and id interrupts for the otg phys as
> > well
> > already - would make handling legacy devicetree files easier. [= if they
> > get specified later, the driver would always need to also handle
> > devicetrees where they aren't specified].
> 
> Hmmm! you mean that I can specify these properties into documentation,
> even if the driver have not handled (implemented) them in current?

The devicetree bindings are supposed to be a generic hardware-description.
And a driver then simply implements that binding. So if the interrupt is part 
of the hardware it can be part of the binding, independent of the driver.

I guess it really comes down to, will you need those interrupts later in the 
driver, then they should definitly be specified now, as later on you cannot 
require them anymore and always need to also support devicetrees not having 
them.


Heiko
