From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/2] soc: rockchip: power-domain: Handle errors from of_genpd_add_provider_onecell
Date: Fri, 16 Sep 2016 00:14:39 +0200
Message-ID: <1473977679-18649-3-git-send-email-heiko@sntech.de>
References: <1473977679-18649-1-git-send-email-heiko@sntech.de>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1473977679-18649-1-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, tomeu.vizoso@collabora.com, wxt@rock-chips.com, rjw@rjwysocki.net, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

From: Tomeu Vizoso <tomeu.vizoso@collabora.com>

It was a bit surprising that the device was reported to have probed just
fine, but the provider hadn't been registered.

So handle any errors when registering the provider and fail the probe
accordingly.

Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc: Caesar Wang <wxt@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
unchanged from Tomeu's single-patch

 drivers/soc/rockchip/pm_domains.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 241df213..2fd0c89 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -636,7 +636,11 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
 		goto err_out;
 	}
 
-	of_genpd_add_provider_onecell(np, &pmu->genpd_data);
+	error = of_genpd_add_provider_onecell(np, &pmu->genpd_data);
+	if (error) {
+		dev_err(dev, "failed to add provider: %d\n", error);
+		goto err_out;
+	}
 
 	return 0;
 
-- 
2.8.1
