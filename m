Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FDDEC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jY1Z8r586bTfBQuPIeBr71QVmY8Ag8auplvxvx/UuEA=; b=HXZdvKj3fJSWqu
	ejF1ORw26liRBT6Gu7rr21scs4FvrdqwbnRqqyp736jrcsaNskhDkQFZ/glfQv4i1zi0TOg7xQ2Tp
	1L5y2ijn6vlbjB2W8Bdd5EZK7CY4+lqvLzfs8Q/uHQ7uRkD2KeanrW6LcaMUN7t1mVTHm1mIQ7Wv0
	xzzKkidDxNyze3bqzsXaYnYLU585Z3y74tlEHQ3jrV4vpgMqOx51DOrrg3D0WmJO6uiEWwSbHKfKk
	Nz4mlGBXDgOlV33eW6Qvaro10fGCQaL+dSUdBMy0vwrG8iRM847DJYady7m7gR5rIN3BQYXG1+FPd
	aolQqxTMwZSdnbwaYLwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neijy-002TdN-Mu; Wed, 13 Apr 2022 19:33:22 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiLS-002IIc-Sk
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:08:05 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 u17-20020a05600c211100b0038eaf4cdaaeso4613711wml.1
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7MLyGA4WUDMi+Qf8y5tCaEOv26U6HFRODkGLHS/fFC8=;
 b=0fnXMottDMHawO/G08dPtjRNELO7Z6wbMXWUyV9JBCKEbxGl1L07CPdlG/u469u6Ci
 dSYaA4Njd/hnbpaK3oWB6U3dgyhTTeMWN2izBvw70jPVaP9wDh1R0OLzzCpC+zJ3hnSu
 DkcIZIDycX4jt626uaocz4P6s0zTE0IFFFcU4SOLCz0mJVQHU1KkWvxHV66paQzR5ePE
 sgkwi6gGtR3bUFS/lcnQaJZtCOSV7gWHpQSBMw2FWB4/fxLocvman8Y8CvOD7J0lOOjr
 veu6RoNI9R3QFqF0jAO/ghChMFf9dnBdVnjEwHrgqnBs9BGXVCwud70/OlvTTJdxhAmW
 +hiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7MLyGA4WUDMi+Qf8y5tCaEOv26U6HFRODkGLHS/fFC8=;
 b=E9sYL5MFaDuQYyOik2aXAjv22BzXfZVrG8DaXDUX2YfIiuYgJ+Ko1fvq7qQusXN49I
 OLImWHSRKSRXfOBFFeuMWjKN0ALKC1OXj5DOoU7W+XZLceSe0brcGaSfD10cLN215lE7
 HU2Qw3DWllC2Rliz0EbFvv3NEJOP3VBTOH9+0EtOPOVmtp8B0Kt8An23LISHzee5Fdj+
 kjCQ7nqCQEw9h1uV0IfYA3CXj3oe623jAgp5irjpi3JViWA2Qc/G2vos5rvMOlzw19S8
 CQFgzPc6s6x0bH8tNRXNek/rzM05qH36NPPfj/3j6O8XzGIO8RdQtQqUQ3nj3M2qVxJj
 0D2g==
X-Gm-Message-State: AOAM531fC7WoGWNy435zIT4+Tl+k3RHePt7Tt/FTf1tCu4PiLCSu4ExN
 TxuAjRnyuDgxeGwlZl7gPDdxmg==
X-Google-Smtp-Source: ABdhPJz9DDjuscrfaJJ0xJ53yOFv+BYcHWFfJFxuo2CFhEIbsRQ6tHN5Qx+X/5f1JsOmdn8U5tUH9A==
X-Received: by 2002:a1c:f604:0:b0:38c:8ffd:dbb6 with SMTP id
 w4-20020a1cf604000000b0038c8ffddbb6mr154513wmc.43.1649876870996; 
 Wed, 13 Apr 2022 12:07:50 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:50 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 27/33] arm64: dts: rockchip: add rk3328 crypto node
Date: Wed, 13 Apr 2022 19:07:07 +0000
Message-Id: <20220413190713.1427956-28-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120803_020780_A82CCEC6 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

rk3328 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc7f1..c23fa985e66d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1007,6 +1007,17 @@ gic: interrupt-controller@ff811000 {
 		      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	crypto: crypto@ff060000 {
+		compatible = "rockchip,rk3328-crypto";
+		reg = <0x0 0xff060000 0x0 0x4000>;
+		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO>;
+		reset-names = "crypto-rst";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3328-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
