From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v5 0/6] drm/rockchip: px30 dsi support
Date: Mon,  9 Dec 2019 15:31:24 +0100
Message-ID: <20191209143130.4553-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org
Cc: bivvy.bi-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jernej.skrabec-gGgVlfcn5nU@public.gmane.org, xzy.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, kuninori.morimoto.gx-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org, jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org, sean-p7yTbzM4H96eqtR555YLDQ@public.gmane.org, narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, philippe.cornu-qxv4g6HH51o@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, yannick.fertre-qxv4g6HH51o@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org, Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org, christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>

This series addes support for the px30 Rockchip soc to the dsi driver.
This includes support for external dsi-phys like used on the px30.

What happened between v1 and v5? The then separate dsi hs2lp timing
patch happened ;-) . As both it and this series touch similar areas
in the dsi driver ordering becomes an issue and so combining them to
make ordering explicit is helpful. v2-v4 where then iterations of the
timing patch.

So this v5 is mainly rebased on 5.5-rc1 and rechecked against drm-misc.

Heiko Stuebner (6):
  drm/bridge/synopsys: dsi: driver-specific configuration of phy timings
  drm/bridge/synopsys: dsi: move phy_ops callbacks around panel
    enablement
  dt-bindings: display: rockchip-dsi: document external phys
  drm/rockchip: add ability to handle external dphys in mipi-dsi
  dt-bindings: display: rockchip-dsi: add px30 compatible
  drm/rockchip: dsi: add px30 support

 .../display/rockchip/dw_mipi_dsi_rockchip.txt |  13 +-
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c |  40 ++--
 drivers/gpu/drm/rockchip/Kconfig              |   1 +
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 173 +++++++++++++++++-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  13 ++
 include/drm/bridge/dw_mipi_dsi.h              |   9 +
 6 files changed, 227 insertions(+), 22 deletions(-)

-- 
2.24.0
