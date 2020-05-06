From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH] pinctrl: rockchip: return ENOMEM instead of EINVAL if allocation fails
Date: Wed,  6 May 2020 12:14:24 +0200
Message-ID: <20200506101424.15691-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-gpio-owner@vger.kernel.org>
Sender: linux-gpio-owner@vger.kernel.org
To: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: helen.koike@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, dafna3@gmail.com, kernel@collabora.com, linus.walleij@linaro.org, heiko@sntech.de
List-Id: linux-rockchip.vger.kernel.org

The function rockchip_pinctrl_parse_dt returns -EINVAL if
allocation fails. Change the return error to -ENOMEM

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 098951346339..a9299f0bd21e 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2940,14 +2940,14 @@ static int rockchip_pinctrl_parse_dt(struct platform_device *pdev,
 					      sizeof(struct rockchip_pmx_func),
 					      GFP_KERNEL);
 	if (!info->functions)
-		return -EINVAL;
+		return -ENOMEM;
 
 	info->groups = devm_kcalloc(dev,
 					    info->ngroups,
 					    sizeof(struct rockchip_pin_group),
 					    GFP_KERNEL);
 	if (!info->groups)
-		return -EINVAL;
+		return -ENOMEM;
 
 	i = 0;
 
-- 
2.17.1
