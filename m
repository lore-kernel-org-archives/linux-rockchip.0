From: Rob Herring <robh@kernel.org>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
Date: Thu, 19 Dec 2019 17:31:29 -0600
Message-ID: <20191219233129.GA5484@bogus>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
 <CA+V-a8uKBuVUQvkoJ9pJYX97Qy3JazTyLCy-2T35gOX77AP8vg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CA+V-a8uKBuVUQvkoJ9pJYX97Qy3JazTyLCy-2T35gOX77AP8vg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, PCI <linux-pci@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, moderated list:ARM/FREESCALE IMX /
List-Id: linux-rockchip.vger.kernel.org

On Mon, Dec 16, 2019 at 08:49:23AM +0000, Lad, Prabhakar wrote:
> Hi Rob,
> 
> Thank you for the review.
> 
> On Fri, Dec 13, 2019 at 8:37 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Fri, Dec 13, 2019 at 2:48 AM Lad Prabhakar
> > <prabhakar.csengg@gmail.com> wrote:
> > >
> > > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > this patch adds support to parse PCI outbound-ranges, the
> > > outbound-regions are similar to pci ranges except it doesn't
> > > have pci address, below is the format for bar-ranges:
> > >
> > > outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
> > >                    upper32_size lower32_size>;
> >
> > You can't just make up a new ranges property. Especially one that
> > doesn't follow how 'ranges' works. We already have 'dma-ranges' to
> > translate device to memory addresses.
> >
> > Explain the problem or feature you need, not the solution you came up
> > with. Why do you need this and other endpoint bindings haven't?
> >
> rcar SoC's supports multiple outbound region for mapping the PCI address
> locally to the system. This lead to discussion where there exist controllers
> which support regions for high/low priority transfer and similarly regions
> for large/small memory allocations, as a result a new ranges property was
> added, where we can specify the flags which would indicate how the outbound
> region can be used during requests.

What are the flags?

Rob
