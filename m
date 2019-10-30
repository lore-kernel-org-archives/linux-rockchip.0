From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 19/25] PCI: of: Add inbound resource parsing to helpers
Date: Wed, 30 Oct 2019 17:18:25 -0500
Message-ID: <CAL_Jsq+9U3E7hQsg0yqJqMJrcZ2n4UfK_es+5-4qg=VCSHiL5g@mail.gmail.com>
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-20-robh@kernel.org>
 <20191029110751.GB27171@e121166-lin.cambridge.arm.com>
 <CABe79T7LPi-XvzARVh-_oVnv1Dr=Uzztps-W2vTr_7gSeiPFQg@mail.gmail.com>
 <20191029173406.GA25104@e121166-lin.cambridge.arm.com>
 <CABe79T5Cd30jFfTr1RRsMZ85sohwk64ZW1qb_LGHvns90WBpGw@mail.gmail.com>
 <20191030114839.GA16067@e121166-lin.cambridge.arm.com>
 <e5d2af18-0263-df56-7586-b0d31143a7e4@arm.com>
 <20191030145621.GA29602@e121166-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191030145621.GA29602@e121166-lin.cambridge.arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, PCI <linux-pci@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>, Shawn Lin <shawn.lin@rock-chips.com>, Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>, "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Linux ARM <linux-ar>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Oct 30, 2019 at 9:56 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Wed, Oct 30, 2019 at 12:49:59PM +0000, Robin Murphy wrote:
> > On 30/10/2019 11:48, Lorenzo Pieralisi wrote:
> > > [+Cc Robin]
> > >
> > > On Wed, Oct 30, 2019 at 12:14:54PM +0530, Srinath Mannam wrote:
> > > > Hi Lorenzo,
> > > >
> > > > Thanks for the details.
> > > > Based on Robin's comment in the old patch, I thought dma_ranges list
> > > > will be in sorted order.
> > > > https://lore.kernel.org/lkml/741a4210-251c-9c00-d4a7-bc7ebf8cd57b@arm.com/
> > > >
> > > > Now, another patch is required to sort the list before reserving in
> > > > iova_reserve_pci_windows() function.
> > > >
> > > > Regards,
> > > > Srinath.
> > >
> > > Don't top-post please.
> > >
> > > https://en.wikipedia.org/wiki/Posting_style#Top-posting
> > >
> > > Yes, the dma_ranges list must be sorted somehow I reckon
> > > iova_reserve_pci_windows() is where it should be done (since that's
> > > where the requirement is) or it can be done in
> > > devm_of_pci_get_host_bridge_resources().
> > >
> > > Thoughts ?
> >
> > Right, strictly it's only iova_reserve_pci_windows() that needs the list
> > sorted, it just worked out that maintaining the list in sorted order by
> > construction took a fair bit less code than explicitly sorting it. In terms
> > of preserving that behaviour in a slightly more generalised fashion I
> > suppose we could add something like:
> >
> > void pci_add_resource_offset_sorted(struct list_head *resources,
> >                               struct resource *res,
> >                               resource_size_t offset)
> > {
> >       struct resource_entry *entry;
> >
> >       resource_list_for_each_entry(entry, resources)
> >               if (entry->res.start > res.start)
> >                       break;
> >
> >       pci_add_resource_offset(&entry->node, res, offset);
> > }
> >
> > but if you'd rather add a specific resource_list_sort() or even just
> > open-code it in iommu-dma, I don't have any real preference. The "least code
> > necessary" approach definitely made sense when individual drivers were
> > expected to build their own lists, but once it gets generalised then having
> > a sensible and robust API becomes a more important consideration.
>
> I think that open coding it in iommu-dma is fine, @RobH would you be
> able to add this to the series please ? I think it should be added to
> prevent any regressions, we can't rely on dma-ranges entries order in DT
> files.

I don't think it's good to be modifying the list as a side effect of
calling iova_reserve_pci_windows() and making a copy of it wouldn't be
great either. So I'm just going to keep it sorted in
devm_of_pci_get_host_bridge_resources().

Rob
