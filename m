From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v5 1/3] PCI: rockchip: Add support for pcie wake irq
Date: Thu, 12 Oct 2017 23:31:00 -0700
Message-ID: <20171013063100.GB56763@google.com>
References: <20170911151029.25185-1-jeffy.chen@rock-chips.com>
 <20170911151029.25185-2-jeffy.chen@rock-chips.com>
 <20171013015620.GA94568@google.com>
 <20171013023246.GZ25517@bhelgaas-glaptop.roam.corp.google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20171013023246.GZ25517@bhelgaas-glaptop.roam.corp.google.com>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Oct 12, 2017 at 09:32:47PM -0500, Bjorn Helgaas wrote:
> On Thu, Oct 12, 2017 at 06:56:22PM -0700, Brian Norris wrote:
> > Bjorn, were you planning to pick this up?
> 
> I had already applied this to pci/host-rockchip, but I must have gotten
> interrupted before sending the email.

You also hadn't merged it into your /next branch either, which is where
I was looking (and basing my other patch set).

> But now that you mention it, I looked at this again and have some
> questions.  I'll respond to the original patch.

Brian
