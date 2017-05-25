From: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH] PCI: Make error code types consistent in
 pci_{read,write}_config_*
Date: Thu, 25 May 2017 02:50:16 -0400
Message-ID: <20170525065015.GA25033@localhost.localdomain>
References: <1495177107-203736-1-git-send-email-shawn.lin@rock-chips.com>
 <20170523184359.GB115572@google.com>
 <20170523193655.GA144183@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20170523193655.GA144183@google.com>
Sender: linux-pci-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, Jeffy Chen <jeffy.chen@rock-chips.com>, linux-rockchip@lists.infradead.org, Krishna Dhulipala <krishnad@fb.com>, Christoph Hellwig <hch@lst.de>, Wei Zhang <wzhang@fb.com>
List-Id: linux-rockchip.vger.kernel.org

On Tue, May 23, 2017 at 12:36:58PM -0700, Brian Norris wrote:
> Callers normally treat the config space accessors as returning PCBIOS_*
> error codes, not Linux error codes (or they don't look at them at all).
> We have pcibios_err_to_errno(), in case the error code needs translated.
> 
> Fixes: 4b1038834739 ("PCI: Don't attempt config access to disconnected devices")
> Signed-off-by: Brian Norris <briannorris@chromium.org>

That looks fine to me.

Reviewed-by: Keith Busch <keith.busch@intel.com>
