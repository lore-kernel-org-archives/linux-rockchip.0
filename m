From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
Date: Mon, 16 Dec 2019 08:55:35 +0000
Message-ID: <CA+V-a8sd1c_8-weQjn6_UbAmVELLQa=3Fe+0cdXSm2Sif0HDRQ@mail.gmail.com>
References: <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com> <20191213201944.GA190383@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191213201944.GA190383@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-pci <linux-pci@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Bjorn,

Thank you for the review.

On Fri, Dec 13, 2019 at 9:05 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 08:47:45AM +0000, Lad Prabhakar wrote:
> > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> $ git log --oneline drivers/of/address.c
> 951d48855d86 of: Make of_dma_get_range() work on bus nodes
> 645c138636de of/address: Fix of_pci_range_parser_one translation of DMA addresses
> 81db12ee15cb of/address: Translate 'dma-ranges' for parent nodes missing 'dma-ranges'
> b68ac8dc22eb of: Factor out #{addr,size}-cells parsing
> c60bf3eb888a of: address: Follow DMA parent for "dma-coherent"
> 862ab5578f75 of/address: Introduce of_get_next_dma_parent() helper
>
> Make yours match.  There are a few "of: address: " subjects, but the
> ones from Rob (the maintainer) use "of/address: ", so I'd use that.
>
will do the same for next iteration.

> > this patch adds support to parse PCI outbound-ranges, the
> > outbound-regions are similar to pci ranges except it doesn't
> > have pci address, below is the format for bar-ranges:
>
> s/pci/PCI/
> Capitalize sentences.
>
will fix that.

> Is "bar-range" an actual DT property?  If it's supposed to be a
> generic description, "BAR range" would be better.
>
my bad, it should be outbound-range.

Cheers,
--Prabhakar

> > outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
> >                    upper32_size lower32_size>;
