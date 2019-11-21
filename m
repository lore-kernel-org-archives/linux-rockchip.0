From: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 0/6] Raspberry Pi 4 PCIe support
Date: Thu, 21 Nov 2019 12:18:05 +0000
Message-ID: <20191121121804.GY43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191119111848.GR43905@e119886-lin.cambridge.arm.com>
 <1b116fabe85a324e2d05a593d38811467f43fb91.camel@suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1b116fabe85a324e2d05a593d38811467f43fb91.camel@suse.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, linux-rdma@vger.kernel.org, maz@kernel.org, phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com, linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org, mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net, james.quinlan@broadcom.com, linux-pci@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Nov 19, 2019 at 12:49:24PM +0100, Nicolas Saenz Julienne wrote:
> On Tue, 2019-11-19 at 11:18 +0000, Andrew Murray wrote:
> > On Tue, Nov 12, 2019 at 04:59:19PM +0100, Nicolas Saenz Julienne wrote:
> > > This series aims at providing support for Raspberry Pi 4's PCIe
> > > controller, which is also shared with the Broadcom STB family of
> > > devices.
> > > 
> > > There was a previous attempt to upstream this some years ago[1] but was
> > > blocked as most STB PCIe integrations have a sparse DMA mapping[2] which
> > > is something currently not supported by the kernel.  Luckily this is not
> > > the case for the Raspberry Pi 4.
> > > 
> > > Note that the driver code is to be based on top of Rob Herring's series
> > > simplifying inbound and outbound range parsing.
> > > 
> > > [1] https://patchwork.kernel.org/cover/10605933/
> > > [2] https://patchwork.kernel.org/patch/10605957/
> > > 
> > 
> > What happened to patch 3? I can't see it on the list or in patchwork?
> 
> For some reason the script I use to call get_maintainer.sh or git send-mail
> failed to add linux-pci@vger.kernel.org and linux-kernel@vger.kernel.org as
> recipients. I didn't do anything different between v1 and v2 as far as mailing
> is concerned.
> 
> Nevertheless it's here: https://www.spinics.net/lists/arm-kernel/msg768461.html
> and should be present in the linux-arm-kernel list.
> 
> I'll look in to it and make sure this doesn't happen in v3.

No problem.

Thanks,

Andrew Murray

> 
> Regards,
> Nicolas
> 
