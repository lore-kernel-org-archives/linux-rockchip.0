From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
Date: Mon, 16 Dec 2019 08:49:23 +0000
Message-ID: <CA+V-a8uKBuVUQvkoJ9pJYX97Qy3JazTyLCy-2T35gOX77AP8vg@mail.gmail.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, PCI <linux-pci@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, moderated list:ARM/FREESCALE IMX /
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

Thank you for the review.

On Fri, Dec 13, 2019 at 8:37 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 2:48 AM Lad Prabhakar
> <prabhakar.csengg@gmail.com> wrote:
> >
> > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > this patch adds support to parse PCI outbound-ranges, the
> > outbound-regions are similar to pci ranges except it doesn't
> > have pci address, below is the format for bar-ranges:
> >
> > outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
> >                    upper32_size lower32_size>;
>
> You can't just make up a new ranges property. Especially one that
> doesn't follow how 'ranges' works. We already have 'dma-ranges' to
> translate device to memory addresses.
>
> Explain the problem or feature you need, not the solution you came up
> with. Why do you need this and other endpoint bindings haven't?
>
rcar SoC's supports multiple outbound region for mapping the PCI address
locally to the system. This lead to discussion where there exist controllers
which support regions for high/low priority transfer and similarly regions
for large/small memory allocations, as a result a new ranges property was
added, where we can specify the flags which would indicate how the outbound
region can be used during requests.

The current endpoint controller drivers just support  single region.

Cheers,
--Prabhakar
