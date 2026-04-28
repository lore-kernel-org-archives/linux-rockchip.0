Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48F1BFF8876
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DH5FEjK2pub6ao7m6dBChAU7LI5QcwRwJW+L3RFE+Sw=; b=Tapv82LNrRoQLf
	5hwgZs/zNTbGkg/zWtkcUk99/36uCbDXW/GddDJIP3EJjK2s6fSv9oOJvO7s7JKvqYzMJau1MbJ9A
	JWKFysgvJs9yZt+jJtz4SPICX7ankBwwBQyVNWk8b40WMTmoSOOBIxf/4XHCF1RIvIDEMCYPAzfbH
	pOH9vDkwHgIb2x2V35v9NWkziGp507jCW+AR7bTr0WaCsXK1wufhKBPgoEo8/VDiulEluahme2bM4
	csZIJykfFZ1wk4xWOdOGLUKX+I93bXqHj1zLTMYnlS7mHBYarrH5H7Qrv1+GUyUHsbKHFFNBytUQf
	DT3O1tQyzb8IihCqahwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHl4l-00000001t05-3R2X;
	Tue, 28 Apr 2026 16:14:19 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHl4b-00000001shK-2DMi;
	Tue, 28 Apr 2026 16:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777392842;
	bh=jN3EWA7Y+IO1E1+ctlqunQ4afKe4Rg68KcoQplL5rMI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=gkF0O/HwmgHNMX9ayjQ0cJ8nZNMsER1zPFPJnVHuUgTeXgkCreT7jzJPyDO8Sm4rD
	 5wPW/vzCw3JcyjYPhdeNAK/Whq0Mzubi4G++psJ0jQfovejFYbHVsQM3w6jpCwvZ/Y
	 uVvI7RMOF6wfdEGKD6zJSuR/v93iMTdwYoKhErPENJc+DYBFl8Gm0bjtuRXBMmZs+E
	 TsGk6VLfCElHaeCpwcXi1s2aznHyrZ9CUp/hdmP2lt+TR4xhgxuwsTc1k4F+jqdeYT
	 k+7T3pfkhN/vk0wVcCjU8R8U0rf544OgBz7gQwdosBKQNC1IrEwj7QBm7ND1MD5iY8
	 jk/MlFMC5NRmA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 24D2A17E1562;
	Tue, 28 Apr 2026 18:14:02 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 87F6348003A; Tue, 28 Apr 2026 18:14:01 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 28 Apr 2026 18:13:45 +0200
Subject: [PATCH v4 06/16] phy: rockchip: usbdp: Add missing mode_change
 update
MIME-Version: 1.0
Message-Id: <20260428-rockchip-usbdp-cleanup-v4-6-7775671ece22@collabora.com>
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1949;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=jN3EWA7Y+IO1E1+ctlqunQ4afKe4Rg68KcoQplL5rMI=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGnw3MnLtB8nOxEXUVhTmg2XYLHFs60idx6Vj
 FjOT2c9a7ivKokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJp8NzJAAoJENju1/PI
 O/qa5gkP/RdMPWyyzXlIZAxDzVUlY4nV3vFAKU59lKk7BbvtSN9nPI28xd4KWhd30imgyra2EPo
 tSp+lI1lIUciR34/pwcd8zNaZ3jzYjX5Ge84heJNULnxKtoW0zwKQSdCz+14sDbreXC4spAtjQc
 i2H6sDF5EBqh2tVonardS/xnWN3cOdMfS5jrVwyvqbXHml1GgpHHwtLalYqRtY29WDkp+pM0zhx
 QOGUTSHWal4QU7+DGzWWMYDu47puZ0MQT03mWYuzx5nUW75Z2eETrW0C8583mlK8y8GmwGOsGmL
 WQplNGL/2UkCOyScfCju1sA5gMxL623U5yvi5fL4l9LEPSJKiknRrGZGShuKFaAm9/ryiG46IDr
 sO+/R1EflsElfQk8LP0jcNjHrleIIFMms4+sMDAetvS10+6NV/S7eG61+qDnEC1fXDf+4ax1aPb
 FZj123ur4Iq0+XtDX98iAA+zddB1VAvn2pNn2YyOwxOS+N4TtFVSRKoLy3hpX2FLPc309l/GsWK
 Z4oft72s4L4N01Eaib1V/v1iAkS7/jkgYUYTiXBID1163JIHwUIg8rziyMCjH5juwL4HEspVBk5
 yuLeFMGD9eTB6pywxnYN9tV5Y8mfURTe/NEdROxUQHbRlVVJAPaAKQ9Pk1nqG5NCkNfWc+uFV9c
 nbURqjmZXuM6MlOPlgikvPg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_091409_792715_94FCDC8E 
X-CRM114-Status: GOOD (  12.51  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

rk_udphy_set_typec_default_mapping() updates the available modes,
but does not set the mode_change as required. This results in
missing re-initialization and thus non-working DisplayPort.

Fix this issue by introducing a new helper to update the available
modes.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 97e53b933225..febc148a754e 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -619,6 +619,15 @@ static void rk_udphy_dp_hpd_event_trigger(struct rk_udphy *udphy, bool hpd)
 	rk_udphy_grfreg_write(udphy->vogrf, &cfg->vogrfcfg[udphy->id].hpd_trigger, hpd);
 }
 
+static void rk_udphy_mode_set(struct rk_udphy *udphy, u8 mode)
+{
+	if (udphy->mode == mode)
+		return;
+
+	udphy->mode_change = true;
+	udphy->mode = mode;
+}
+
 static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
 {
 	if (udphy->flip) {
@@ -649,7 +658,7 @@ static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
 		gpiod_set_value_cansleep(udphy->sbu2_dc_gpio, 1);
 	}
 
-	udphy->mode = UDPHY_MODE_DP_USB;
+	rk_udphy_mode_set(udphy, UDPHY_MODE_DP_USB);
 }
 
 static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
@@ -1385,10 +1394,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
 			usleep_range(750, 800);
 			rk_udphy_dp_hpd_event_trigger(udphy, true);
 		} else if (data->status & DP_STATUS_HPD_STATE) {
-			if (udphy->mode != mode) {
-				udphy->mode = mode;
-				udphy->mode_change = true;
-			}
+			rk_udphy_mode_set(udphy, mode);
 			rk_udphy_dp_hpd_event_trigger(udphy, true);
 		} else {
 			rk_udphy_dp_hpd_event_trigger(udphy, false);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
