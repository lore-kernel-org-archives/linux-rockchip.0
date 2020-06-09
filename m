From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v9 08/11] drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
Date: Tue,  9 Jun 2020 19:26:57 +0300
Message-ID: <20200609162700.953260-9-adrian.ratiu@collabora.com>
References: <20200609162700.953260-1-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200609162700.953260-1-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org>, Yannick FERTRE <yannick.fertre-qxv4g6HH51o@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-imx-3arQi8VN3Tc@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org, Emil Velikov <emil.velikov-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The stm mipi-dsi platform driver added a version test in
commit fa6251a747b7 ("drm/stm: dsi: check hardware version")
so that HW revisions other than v1.3x get rejected. The rockchip
driver had no such check and just assumed register layouts are
v1.3x compatible.

Having such tests was a good idea because only v130/v131 layouts
were supported at the time, however since adding multiple layout
support in the bridge, the version is automatically checked for
all drivers, compatible layouts get picked and unsupported HW is
automatically rejected by the bridge, so there's no use keeping
the test in the stm driver.

The main reason prompting this change is that the stm driver
test immediately disabled the peripheral clock after reading
the version, making the bridge read version 0x0 immediately
after in its own probe(), so we move the clock disabling after
the bridge does the version test.

Tested on STM32F769 and STM32MP1.

Cc: linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org
Cc: Emil Velikov <emil.velikov-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Reported-by: Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Tested-by: Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Tested-by: Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
New in v6.
---
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index 2e1f2664495d0..45f67f8a5f6c8 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -396,26 +396,19 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 		goto err_dsi_probe;
 	}
 
+	/* enable pclk so MMIO register values can be read, else reads == 0x0 */
 	ret = clk_prepare_enable(pclk);
 	if (ret) {
 		DRM_ERROR("%s: Failed to enable peripheral clk\n", __func__);
 		goto err_dsi_probe;
 	}
 
-	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
-	clk_disable_unprepare(pclk);
-
-	if (dsi->hw_version != HWVER_130 && dsi->hw_version != HWVER_131) {
-		ret = -ENODEV;
-		DRM_ERROR("bad dsi hardware version\n");
-		goto err_dsi_probe;
-	}
-
 	dw_mipi_dsi_stm_plat_data.base = dsi->base;
 	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
 
 	platform_set_drvdata(pdev, dsi);
 
+	/* setup the bridge, this will also access MMIO registers via regmap */
 	dsi->dsi = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
 	if (IS_ERR(dsi->dsi)) {
 		ret = PTR_ERR(dsi->dsi);
@@ -423,6 +416,11 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 		goto err_dsi_probe;
 	}
 
+	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
+
+	/* initial MMIO config done, disable clk to save power */
+	clk_disable_unprepare(pclk);
+
 	return 0;
 
 err_dsi_probe:
-- 
2.27.0
