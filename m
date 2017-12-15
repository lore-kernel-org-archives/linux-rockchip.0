From: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: Why do we check for "link-up" in *_pcie_valid_device()?
Date: Fri, 15 Dec 2017 13:04:26 -0600
Message-ID: <20171215190426.GW30595@bhelgaas-glaptop.roam.corp.google.com>
References: <20171214225821.GN30595@bhelgaas-glaptop.roam.corp.google.com>
 <000f01d375d4$17e9c830$47bd5890$@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <000f01d375d4$17e9c830$47bd5890$@gmail.com>
Sender: linux-pci-owner@vger.kernel.org
To: Jingoo Han <jingoohan1@gmail.com>
Cc: 'Joao Pinto' <Joao.Pinto@synopsys.com>, 'Ley Foon Tan' <lftan@altera.com>, 'Shawn Lin' <shawn.lin@rock-chips.com>, 'Michal Simek' <michal.simek@xilinx.com>, 'Jim Quinlan' <jim2101024@gmail.com>, 'Lorenzo Pieralisi' <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org, rfi@lists.rocketboards.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Dec 15, 2017 at 01:39:50PM -0500, Jingoo Han wrote:
> On Thursday, December 14, 2017 5:58 PM, Bjorn Helgaas wrote:
> > In the PCI config access path, the *_pcie_valid_device() functions in
> > the dwc, altera, rockchip, and xilinx drivers all check whether the
> > link is up.
> > 
> > I think this is racy because the link may go down after we check but
> > before we perform the config access.
> > 
> > What would blow up if we removed the *_pcie_link_up() checks?
> 
> The original intention is to avoid config access before link up.
> 
> Also, I did not find any racy condition as you mentioned.
> However, if you think that we need to prevent the racy condition,
> someone can send a patch or add comments.

Here's the race:

  pci_read_config_word
    ...
      dw_pcie_rd_conf
        dw_pcie_valid_device
          dw_pcie_link_up        # returns true; link currently up
                                 <-- link goes down for unrelated reason
        dw_pcie_rd_other_conf
          dw_pcie_read
            readl                # issue config read

The readl() that issues the config read in the PCIe domain races with
the link-down event.  If the readl() completes first, everything works
as expected.  If the link-down happens first, I don't know what
happens.  This is the core of my question.

The hardware *should* do something sane because link-down is an
asynchronous event that is unrelated to the config read and may happen
at any time.  It's just part of the PCIe environment and the spec
defines mechanisms for dealing with and reporting the situation.

> > I'd like to either remove the checks or add comments about why the
> > race is acceptable.  If we've covered this before, I apologize.
> > Adding a comment will keep me from pestering you about this again in
> > the future.
> > 
> > Bjorn
> 
