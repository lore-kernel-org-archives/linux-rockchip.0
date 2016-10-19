From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] PCI: rockchip: remove the pointer to L1 substate cap
Date: Wed, 19 Oct 2016 10:43:57 -0700
Message-ID: <20161019174357.GB78840@google.com>
References: <1476868234-15135-1-git-send-email-shawn.lin@rock-chips.com>
 <20161019174205.GA78840@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20161019174205.GA78840@google.com>
Sender: linux-pci-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Rajat Jain <rajatja@google.com>, Wenrui Li <wenrui.li@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Oct 19, 2016 at 10:42:05AM -0700, Brian Norris wrote:
> Hi,
> 
> On Wed, Oct 19, 2016 at 05:10:34PM +0800, Shawn Lin wrote:
> > Per the errata of TRM, the RC can't support L1 substate, so we
> > need to remove the L1 substate cap.
> > 
> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

[snip]

BTW, I couldn't actually find the original patch email in any mailing
list archive, nor in patchwork. Did the email get held up by the mailing
list or something?

Brian
