From: Bjorn Helgaas <helgaas@kernel.org>
Subject: Why do we check for "link-up" in *_pcie_valid_device()?
Date: Thu, 14 Dec 2017 16:58:21 -0600
Message-ID: <20171214225821.GN30595@bhelgaas-glaptop.roam.corp.google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-pci-owner@vger.kernel.org
To: Jingoo Han <jingoohan1@gmail.com>, Joao Pinto <Joao.Pinto@synopsys.com>, Ley Foon Tan <lftan@altera.com>, Shawn Lin <shawn.lin@rock-chips.com>, Michal Simek <michal.simek@xilinx.com>
Cc: Jim Quinlan <jim2101024@gmail.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org, rfi@lists.rocketboards.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi all,

In the PCI config access path, the *_pcie_valid_device() functions in
the dwc, altera, rockchip, and xilinx drivers all check whether the
link is up.

I think this is racy because the link may go down after we check but
before we perform the config access.

What would blow up if we removed the *_pcie_link_up() checks?

I'd like to either remove the checks or add comments about why the
race is acceptable.  If we've covered this before, I apologize.
Adding a comment will keep me from pestering you about this again in
the future.

Bjorn
