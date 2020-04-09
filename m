From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v7 2/8] PCI: rcar: Move shareable code to a common file
Date: Thu, 9 Apr 2020 11:06:10 +0100
Message-ID: <CA+V-a8v6=9dmgtvP+vWo+isZXeo45ARDpXZ2YKqn3reMVw3Xiw@mail.gmail.com>
References: <1586360280-10956-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200408233008.GA150200@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <20200408233008.GA150200@google.com>
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh+dt@kernel.org>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Tom Joseph <tjoseph@cadence.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci <linux-pci@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.or>
List-Id: linux-rockchip.vger.kernel.org

Hi Bjorn,

Thank you for the review.

On Thu, Apr 9, 2020 at 12:30 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Apr 08, 2020 at 04:37:54PM +0100, Lad Prabhakar wrote:
> > This patch moves sharable code to common file pcie-rcar.c and the #defines
> > to pcie-rcar.h so that the common code can be reused with endpoint driver.
> > There are no functional changes with this patch for the host controller
> > driver.
>
> s/This patch moves/Move/
> s/sharable/shareable/

My bad shall replace it.

Cheers,
--Prabhakar
