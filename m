From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: RE: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
Date: Fri, 3 Apr 2020 08:03:46 +0000
Message-ID: <TYAPR01MB454403D69A74036B74CC8220D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <1585856319-4380-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: ja-JP
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>, Shawn Lin <shawn.lin@rock-chips.com>, Lad Prabhakar <prabhakar.csengg@gmail.com>, Frank Rowand <frowand.list@gmail.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, Arnd Bergmann <arnd@arndb.de>, Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Simon Horman <horms@verge.net.au>, Bjorn Helgaas <bhelgaas@google.com>"linux-arm-kernel@lists.infradead.org" <li>
List-Id: linux-rockchip.vger.kernel.org

Hi Prabhakar-san,

> From: Lad Prabhakar, Sent: Friday, April 3, 2020 4:39 AM
> 
> config option PCIE_RCAR internally selects PCIE_RCAR_HOST which builds the
> same driver. So this patch renames CONFIG_PCIE_RCAR to
> CONFIG_PCIE_RCAR_HOST so that PCIE_RCAR can be safely dropped from Kconfig
> file.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thank you for the patch!

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

But, I'm thinking this patch (and patch 03/11) should be separated
from this patch series for arm64 subsystem to ease maintenance.
My scenario is:
 1) patch series 1: R-Car PCIe endpoint support.
 -- This means: patch 1, 4 - 9, 11

 2) After the patch series 1 is merged, submit this patch 2/11 to arm subsystem
   and submit the patch 10/11 to misc subsystem.

 3) At last, submit patch 3/11 after the patch 2/11 is merged.

Geert-san, what do you think?

Best regards,
Yoshihiro Shimoda
