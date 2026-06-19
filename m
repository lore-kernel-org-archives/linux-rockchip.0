Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78139CDB466
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jun 2026 15:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRqtMAbFWQS3Vcd9ree9xGyGMEnY1uixzy2xB2LTWwY=; b=p61Nx6RCfMvy0S
	utljVtPjiN6VxFGwYLBVQOJcnIi/BAJyxtwnuXn4bziIrrzoSk3j1x//mAUtAVmRaByFzaBCar3Oc
	8VBCjJ1M+oAsMbjTWt+rC/xVbereVDh3VyyIDY45dNoXx6gUafVgsJMS4Z8PFvcoO1j97sC3lbYu8
	gFFpItv1rbAAlTFsgr0K4xBlpZ0psXE5kAaYyFo3EZ3l3r5Qonr4GScT9BtOKqgTv4P9EpcoKW6QE
	70ltnvYF0aJS3tj3Q2aWwxLVYP5ywrPDjEsUyIKBTfzU6RtqCY4CWwY+K5NJUIQASFJAy3/hhUML9
	KzHRbBRgWfogGUFUYmdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabAI-00000002eiC-48j3;
	Fri, 19 Jun 2026 15:29:54 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wab9Z-00000002dbW-0gfg;
	Fri, 19 Jun 2026 15:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781882938;
	bh=vzGBtAimQD/c/iwmrluNEzZrLQN7+T0GbgLa8xRcfH8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jgqR6WwUvtm1/4ZHyy2TSOatQkiL2XIRR2B4S31EyQfCevajHdNg1lqDu25xitRvl
	 a4jlykDRU4PlHgZdVVRnHb8GOW0d9cC7ZgXlXgzAhvix3LCIR/k3HZ/jCAE4TqASF2
	 7PUmTkIAwW77scBWjfu2vvVPVrannMlx2QoOjbDo8vnZtPLERh1YI1XFRF5HVac5o0
	 SlRqaR1+rVS5wCFFIRvOyfo06vaAt/+N4kdA4cuqWTNea9B4SKSaofl3mX9sgdV+B0
	 3KORTP2UTsel4OsVf735t6ZAtC/AsZcNHs5HOaiH5ckBQCjU7eYLDhV9hr1KzWDcnf
	 VgwE03zqHHwJg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 95C7917E15A8;
	Fri, 19 Jun 2026 17:28:58 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A4204480064; Fri, 19 Jun 2026 17:28:57 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 19 Jun 2026 17:29:10 +0200
Subject: [PATCH v6 19/23] phy: rockchip: usbdp: Factor out lane_mux_sel
 setup
MIME-Version: 1.0
Message-Id: <20260619-rockchip-usbdp-cleanup-v6-19-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4580;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=vzGBtAimQD/c/iwmrluNEzZrLQN7+T0GbgLa8xRcfH8=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGo1YDmbvZ0CinduXFcZfcddwm3o9VWF/tZy4
 olnGo8Af1C+eokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqNWA5AAoJENju1/PI
 O/qaMdgP/2k7FJhJypP1uDKpWpqdLV3DRXE75RrJADqoaNBHJqM6drdgoxyCQf+SEionxZBVzrr
 3lJ5ev1/EIinJc0SDPpTlZ/0/Kys75EVxfv3qe6SZN4rPzktKYtZHluj8o5OVKmT1Jmojj1lJ8x
 fLzGlSeHhbMQ5yVoziGsc4DfAS6S+JHn5V3Wj9ipeTn/4XCWhCpW+jaCMExMaxeQZ4nv1Fbc6Oc
 AG286iIUpyOvBWaGkMSkWUstnLpRL7eJyt1ayqTGI08i6Bu6ue4U1Uddllg4tfMYwf/OFPqEC8n
 Sy49vIvrNGWgB3TGxxZZJ+B/QowXRsA3ahkC6COw/osaWKBYONibogGulJHW8nUWGfJKaaBVvDQ
 7oo6uNV8nvY3zQvRyMbZohyFj12d+xp5ZEKWJwSxTBMLPKVyr5kGWqGQqHzWAjDSZQ5nqnCWdQi
 VQQYalzn2qIujPX5Vr8jnB5R8eKBzossMerqKSufurUJvmSrl9fVcAbSYAuIfyiwidL7Ch6RR7/
 GF8l4ZitHrqTUhVPrDzG/pnd0yRscrgR+5qgm1Onp4i81DCO6gEeuCVfK5MFcJu4d0duRtfP2Ed
 RAuLGcTAvIXSrKarVeoWt5mVL5guWWG9PRVhm00/N+qyD3A7FVaKvuyJ6pCqkeAER4Iqw7MxeJU
 KQaaHXDPR23BiAp5RpPwlag==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_082909_396924_25B5BD66 
X-CRM114-Status: GOOD (  13.21  )
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

Avoid describing the USB+DP lane_mux_sel logic twice by introducing
a helper function to reduce code duplication.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 81 +++++++++++++++----------------
 1 file changed, 40 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 402f3cafcf0a..46ab9fb45ca4 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -584,6 +584,42 @@ static void rk_udphy_mode_set(struct rk_udphy *udphy, u8 mode)
 	udphy->mode = mode;
 }
 
+static void rk_udphy_set_typec_state(struct rk_udphy *udphy, unsigned long state)
+{
+	u8 mode;
+
+	switch (state) {
+	case TYPEC_DP_STATE_C:
+	case TYPEC_DP_STATE_E:
+		udphy->lane_mux_sel[0] = PHY_LANE_MUX_DP;
+		udphy->lane_mux_sel[1] = PHY_LANE_MUX_DP;
+		udphy->lane_mux_sel[2] = PHY_LANE_MUX_DP;
+		udphy->lane_mux_sel[3] = PHY_LANE_MUX_DP;
+		mode = UDPHY_MODE_DP;
+		udphy->dp_lanes = 4;
+		break;
+
+	case TYPEC_DP_STATE_D:
+	default:
+		if (udphy->flip) {
+			udphy->lane_mux_sel[0] = PHY_LANE_MUX_DP;
+			udphy->lane_mux_sel[1] = PHY_LANE_MUX_DP;
+			udphy->lane_mux_sel[2] = PHY_LANE_MUX_USB;
+			udphy->lane_mux_sel[3] = PHY_LANE_MUX_USB;
+		} else {
+			udphy->lane_mux_sel[0] = PHY_LANE_MUX_USB;
+			udphy->lane_mux_sel[1] = PHY_LANE_MUX_USB;
+			udphy->lane_mux_sel[2] = PHY_LANE_MUX_DP;
+			udphy->lane_mux_sel[3] = PHY_LANE_MUX_DP;
+		}
+		mode = UDPHY_MODE_DP_USB;
+		udphy->dp_lanes = 2;
+		break;
+	}
+
+	rk_udphy_mode_set(udphy, mode);
+}
+
 static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
 {
 	if (udphy->flip) {
@@ -591,10 +627,6 @@ static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
 		udphy->dp_lane_sel[1] = 1;
 		udphy->dp_lane_sel[2] = 3;
 		udphy->dp_lane_sel[3] = 2;
-		udphy->lane_mux_sel[0] = PHY_LANE_MUX_DP;
-		udphy->lane_mux_sel[1] = PHY_LANE_MUX_DP;
-		udphy->lane_mux_sel[2] = PHY_LANE_MUX_USB;
-		udphy->lane_mux_sel[3] = PHY_LANE_MUX_USB;
 		udphy->dp_aux_dout_sel = PHY_AUX_DP_DATA_POL_INVERT;
 		udphy->dp_aux_din_sel = PHY_AUX_DP_DATA_POL_INVERT;
 		gpiod_set_value_cansleep(udphy->sbu1_dc_gpio, 1);
@@ -604,18 +636,14 @@ static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
 		udphy->dp_lane_sel[1] = 3;
 		udphy->dp_lane_sel[2] = 1;
 		udphy->dp_lane_sel[3] = 0;
-		udphy->lane_mux_sel[0] = PHY_LANE_MUX_USB;
-		udphy->lane_mux_sel[1] = PHY_LANE_MUX_USB;
-		udphy->lane_mux_sel[2] = PHY_LANE_MUX_DP;
-		udphy->lane_mux_sel[3] = PHY_LANE_MUX_DP;
 		udphy->dp_aux_dout_sel = PHY_AUX_DP_DATA_POL_NORMAL;
 		udphy->dp_aux_din_sel = PHY_AUX_DP_DATA_POL_NORMAL;
 		gpiod_set_value_cansleep(udphy->sbu1_dc_gpio, 0);
 		gpiod_set_value_cansleep(udphy->sbu2_dc_gpio, 1);
 	}
 
-	rk_udphy_mode_set(udphy, UDPHY_MODE_DP_USB);
-	udphy->dp_lanes = 2;
+	/* default to USB3 + DP as 4 lane USB is not supported */
+	rk_udphy_set_typec_state(udphy, TYPEC_DP_STATE_D);
 }
 
 static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
@@ -1293,7 +1321,6 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
 				  struct typec_mux_state *state)
 {
 	struct rk_udphy *udphy = typec_mux_get_drvdata(mux);
-	u8 mode;
 
 	/*
 	 * Ignore mux events not involving DP AltMode, because
@@ -1305,38 +1332,10 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
 
 	mutex_lock(&udphy->mutex);
 
-	switch (state->mode) {
-	case TYPEC_DP_STATE_C:
-	case TYPEC_DP_STATE_E:
-		udphy->lane_mux_sel[0] = PHY_LANE_MUX_DP;
-		udphy->lane_mux_sel[1] = PHY_LANE_MUX_DP;
-		udphy->lane_mux_sel[2] = PHY_LANE_MUX_DP;
-		udphy->lane_mux_sel[3] = PHY_LANE_MUX_DP;
-		mode = UDPHY_MODE_DP;
-		udphy->dp_lanes = 4;
-		break;
-
-	case TYPEC_DP_STATE_D:
-	default:
-		if (udphy->flip) {
-			udphy->lane_mux_sel[0] = PHY_LANE_MUX_DP;
-			udphy->lane_mux_sel[1] = PHY_LANE_MUX_DP;
-			udphy->lane_mux_sel[2] = PHY_LANE_MUX_USB;
-			udphy->lane_mux_sel[3] = PHY_LANE_MUX_USB;
-		} else {
-			udphy->lane_mux_sel[0] = PHY_LANE_MUX_USB;
-			udphy->lane_mux_sel[1] = PHY_LANE_MUX_USB;
-			udphy->lane_mux_sel[2] = PHY_LANE_MUX_DP;
-			udphy->lane_mux_sel[3] = PHY_LANE_MUX_DP;
-		}
-		mode = UDPHY_MODE_DP_USB;
-		udphy->dp_lanes = 2;
-		break;
-	}
-
-	rk_udphy_mode_set(udphy, mode);
+	rk_udphy_set_typec_state(udphy, state->mode);
 
 	mutex_unlock(&udphy->mutex);
+
 	return 0;
 }
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
