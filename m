From: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
Date: Fri, 13 Dec 2019 15:05:48 -0600
Message-ID: <20191213201944.GA190383@google.com>
References: <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-pci@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>Frank Rowand <f>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Dec 13, 2019 at 08:47:45AM +0000, Lad Prabhakar wrote:
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>

$ git log --oneline drivers/of/address.c
951d48855d86 of: Make of_dma_get_range() work on bus nodes
645c138636de of/address: Fix of_pci_range_parser_one translation of DMA addresses
81db12ee15cb of/address: Translate 'dma-ranges' for parent nodes missing 'dma-ranges'
b68ac8dc22eb of: Factor out #{addr,size}-cells parsing
c60bf3eb888a of: address: Follow DMA parent for "dma-coherent"
862ab5578f75 of/address: Introduce of_get_next_dma_parent() helper

Make yours match.  There are a few "of: address: " subjects, but the
ones from Rob (the maintainer) use "of/address: ", so I'd use that.

> this patch adds support to parse PCI outbound-ranges, the
> outbound-regions are similar to pci ranges except it doesn't
> have pci address, below is the format for bar-ranges:

s/pci/PCI/
Capitalize sentences.

Is "bar-range" an actual DT property?  If it's supposed to be a
generic description, "BAR range" would be better.

> outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
>                    upper32_size lower32_size>;
