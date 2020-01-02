From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
Date: Thu, 2 Jan 2020 08:44:23 +0000
Message-ID: <CA+V-a8vjwqkH5rYsy_rsHF93d91izsaEwmFXNpYqk3_=_Asd2g@mail.gmail.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
 <CA+V-a8uKBuVUQvkoJ9pJYX97Qy3JazTyLCy-2T35gOX77AP8vg@mail.gmail.com>
 <20191219233129.GA5484@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191219233129.GA5484@bogus>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, PCI <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Catalin Marinas <catalin.marinas@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>, Simon Horman <horms@verge.net.au>, Bjorn Helgaas <bhelgaas@google.com>, moderated list:ARM/FREESCALE IMX / MXC ARM
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

On Thu, Dec 19, 2019 at 11:31 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Dec 16, 2019 at 08:49:23AM +0000, Lad, Prabhakar wrote:
> > Hi Rob,
> >
> > Thank you for the review.
> >
> > On Fri, Dec 13, 2019 at 8:37 PM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > On Fri, Dec 13, 2019 at 2:48 AM Lad Prabhakar
> > > <prabhakar.csengg@gmail.com> wrote:
> > > >
> > > > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > >
> > > > this patch adds support to parse PCI outbound-ranges, the
> > > > outbound-regions are similar to pci ranges except it doesn't
> > > > have pci address, below is the format for bar-ranges:
> > > >
> > > > outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
> > > >                    upper32_size lower32_size>;
> > >
> > > You can't just make up a new ranges property. Especially one that
> > > doesn't follow how 'ranges' works. We already have 'dma-ranges' to
> > > translate device to memory addresses.
> > >
> > > Explain the problem or feature you need, not the solution you came up
> > > with. Why do you need this and other endpoint bindings haven't?
> > >
> > rcar SoC's supports multiple outbound region for mapping the PCI address
> > locally to the system. This lead to discussion where there exist controllers
> > which support regions for high/low priority transfer and similarly regions
> > for large/small memory allocations, as a result a new ranges property was
> > added, where we can specify the flags which would indicate how the outbound
> > region can be used during requests.
>
> What are the flags?

below are the flags which were discussed in first version of the
series, but since the driver is
currently using just PCI_EPC_WINDOW_FLAG_NON_MULTI_ALLOC flag I'll be
dropping them in
next version (suggested by Kishon) and rest will be added as and when
required by the driver.

 * @PCI_EPC_WINDOW_FLAG_MULTI_ALLOC: Indicates multiple chunks of memory can be
 *                                  allocated from same window
 * @PCI_EPC_WINDOW_FLAG_NON_MULTI_ALLOC: Indicates only single memory allocation
 *                                      is possible on the window
 * @PCI_EPC_WINDOW_FLAG_LARGE_ALLOC: Window is used for large memory allocation
 * @PCI_EPC_WINDOW_FLAG_SMALL_ALLOC: Window is used for small memory allocation
 * @PCI_EPC_WINDOW_FLAG_HIGH_PRI_ALLOC: Window is used for high priority data
 *                                     transfers
 * @PCI_EPC_WINDOW_FLAG_LOW_PRI_ALLOC: Window is used for low priority data
 *                                    transfers

Cheers,
--Prabhakar
