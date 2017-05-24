From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 1/7] arm64: defconfig: enable Rockchip pcie support
Date: Wed, 24 May 2017 15:54:09 +0200
Message-ID: <20170524135415.5590-2-heiko@sntech.de>
References: <20170524135415.5590-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170524135415.5590-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Enable to the controller and phy drivers as modules.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 65cdd878cfbd..a12ccb40ce0a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -68,6 +68,7 @@ CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
 CONFIG_PCI_AARDVARK=y
 CONFIG_PCIE_RCAR=y
+CONFIG_PCIE_ROCKCHIP=m
 CONFIG_PCI_HOST_GENERIC=y
 CONFIG_PCI_XGENE=y
 CONFIG_ARM64_VA_BITS_48=y
@@ -484,6 +485,7 @@ CONFIG_PHY_HI6220_USB=y
 CONFIG_PHY_SUN4I_USB=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_EMMC=y
+CONFIG_PHY_ROCKCHIP_PCIE=m
 CONFIG_PHY_XGENE=y
 CONFIG_PHY_TEGRA_XUSB=y
 CONFIG_ARM_SCPI_PROTOCOL=y
-- 
2.11.0
