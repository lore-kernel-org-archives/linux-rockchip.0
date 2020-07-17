From: Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 30/30] iio: adc: rockchip_saradc: Demote Demote seemingly unintentional kerneldoc header
Date: Fri, 17 Jul 2020 17:55:38 +0100
Message-ID: <20200717165538.3275050-31-lee.jones@linaro.org>
References: <20200717165538.3275050-1-lee.jones@linaro.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200717165538.3275050-1-lee.jones@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This is the only use of kerneldoc in the source file and no
descriptions are provided.

Fixes the following W=1 kernel build warning(s):

 drivers/iio/adc/rockchip_saradc.c:190: warning: Function parameter or member 'reset' not described in 'rockchip_saradc_reset_controller'

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/iio/adc/rockchip_saradc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 582ba047c4a67..cf4ec59c1dab0 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -183,7 +183,7 @@ static const struct of_device_id rockchip_saradc_match[] = {
 };
 MODULE_DEVICE_TABLE(of, rockchip_saradc_match);
 
-/**
+/*
  * Reset SARADC Controller.
  */
 static void rockchip_saradc_reset_controller(struct reset_control *reset)
-- 
2.25.1
