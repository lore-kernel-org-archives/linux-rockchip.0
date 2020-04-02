From: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
Subject: [PATCH v6 11/11] MAINTAINERS: Add file patterns for rcar PCI device tree bindings
Date: Thu,  2 Apr 2020 20:38:39 +0100
Message-ID: <1585856319-4380-12-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, Magnus Damm <magnus.damm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Marek Vasut <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, Will Deacon <will-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Chris Paterson <Chris.Paterson2-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, Frank Rowand <frowand.list-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Simon Horman <horms-/R6kz+dDXgpPR4JQBCEnsQ@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tom Joseph <tjoseph-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Lad Prabhakar <prabhakar.csengg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Lad Prabhakar <prabhakar.mahadev-lad.rj-XSz+K7b/LWM@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Add file pattern entry for rcar PCI devicetree binding, so that when
people run ./scripts/get_maintainer.pl the rcar PCI maintainers could also
be listed.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3f0f2ee2af32..87df2d31a54b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12933,6 +12933,7 @@ L:	linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
 L:	linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
 S:	Maintained
 F:	drivers/pci/controller/*rcar*
+F:	Documentation/devicetree/bindings/pci/*rcar*
 
 PCI DRIVER FOR SAMSUNG EXYNOS
 M:	Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
-- 
2.20.1
