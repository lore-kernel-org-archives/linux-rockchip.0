From: Brian Norris <briannorris@chromium.org>
Subject: Re: [RFC PATCH v2 1/3] PCI: rockchip: Add support for pcie wake irq
Date: Fri, 18 Aug 2017 10:07:17 -0700
Message-ID: <20170818170716.GB119461@google.com>
References: <20170817120431.12398-1-jeffy.chen@rock-chips.com>
 <20170817120431.12398-2-jeffy.chen@rock-chips.com>
 <20170818170107.GA119461@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20170818170107.GA119461@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, bhelgaas@google.com, shawn.lin@rock-chips.com, dianders@chromium.org, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Tony Lindgren <tony@atomide.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Aug 18, 2017 at 10:01:07AM -0700, Brian Norris wrote:
> + Tony
> 
> On Thu, Aug 17, 2017 at 08:04:29PM +0800, Jeffy Chen wrote:
> > Add support for PCIE_WAKE pin in rockchip pcie driver.
> > 
> > Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> > ---
> > 
> > Changes in v2:
> > Use dev_pm_set_dedicated_wake_irq
> >         -- Suggested by Brian Norris <briannorris@chromium.com>

Oops, I forgot you sent a v3. Same questions/comments apply there
though.
