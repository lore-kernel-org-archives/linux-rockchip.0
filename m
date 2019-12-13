From: Rob Herring <robh+dt@kernel.org>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
Date: Fri, 13 Dec 2019 09:07:07 -0600
Message-ID: <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, PCI <linux-pci@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, devicetree@vger.kernel.org, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Dec 13, 2019 at 2:48 AM Lad Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> this patch adds support to parse PCI outbound-ranges, the
> outbound-regions are similar to pci ranges except it doesn't
> have pci address, below is the format for bar-ranges:
>
> outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
>                    upper32_size lower32_size>;

You can't just make up a new ranges property. Especially one that
doesn't follow how 'ranges' works. We already have 'dma-ranges' to
translate device to memory addresses.

Explain the problem or feature you need, not the solution you came up
with. Why do you need this and other endpoint bindings haven't?

Rob
