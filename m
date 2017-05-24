From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] PCI: rockchip: check link status when validating device
Date: Tue, 23 May 2017 18:00:15 -0700
Message-ID: <20170524010014.GA109842@google.com>
References: <1495177107-203736-1-git-send-email-shawn.lin@rock-chips.com>
 <20170523180048.GA115572@google.com>
 <3fea7598-501e-6131-612a-977f005e9a2b@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3fea7598-501e-6131-612a-977f005e9a2b@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Jeffy Chen <jeffy.chen@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, May 24, 2017 at 08:54:14AM +0800, Shawn Lin wrote:
> 在 2017/5/24 2:00, Brian Norris 写道:
> >On Fri, May 19, 2017 at 02:58:27PM +0800, Shawn Lin wrote:
> >>This patch checks the link status before reading and
> >>writing configure space of devices attached to the RC.
> >>If the link status is down, we shouldn't try to access
> >>the devices.
> >
> >I'm curious, in what situations are you seeing the link down? In all the
> >cases where I can manage to screw up my endpoint and see system aborts
> >due to config accesses, this check still says the link is up. Presumably
> >you have some test cases that benefit from this though.

NB: Bjorn asked a similar question in a different form. The underlying
concern though, is that this is racy.

> Of course. This patch doesn't prevent all these cases, for instance,
> you do a memory read/write in the EP function driver, since it doesn't
> call these two APIs at all.

Of course. I'm only talking about config accesses.

> The reason for me to added this check is that I saw a external abort
> down to rockchip_pcie_rd_own_conf, of which I highly suspected was that
> the link was re-init or total broken at that time.

I've seen plenty of aborts in this function as well, but I've verified
that the link was still reported "up" in all the cases I could reproduce.

So, do you "suspect" or did you "prove"? e.g., log cases where this
check actually helps?

And to Bjorn's point: do you know *why* such cases were hit? That would
help to understand if the cases you're worrying about are hopelessly
racy, or if there's some way to ensure synchronization.

Brian
