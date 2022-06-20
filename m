Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7B2FC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BEvWd4ZeYkBUR1oZxPBWPKImJywbbdLonnqtAqxZi34=; b=324Awed47MNDwi
	axJPjlJw1qT4wLkhxSCuhK12qdspcSbOtz0Ln4yszocBAnYFQMvFXwYGbyaMtdbGs71pSvCeGH5MR
	daeqaQd/dLuft3+qxN0Kk5U5L4uqso6Op1HIaD3Vul7cobOTQ+RYsLkYHhzsnx8CoDD6cW0nQRbbD
	HXN+5BzudAwSPKWyGREMcN/8yCScFgcXrUQFhCv2UHzpPrKyHciB4KNJi1ys9JQx37WoxfK7fXDWU
	kzyJWxlOiWvI0oNlb6W95mQGFm0WSn5AUholp7qColPZ1DAcK+4gy8tCs+5eXVQTpxUuQO2YhJ7H8
	/wz2SKERFRXS2CbQSMXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3FCx-0000Ds-H3; Mon, 20 Jun 2022 11:04:39 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3FCt-0000C5-QR
	for linux-rockchip@lists.infradead.org; Mon, 20 Jun 2022 11:04:38 +0000
Received: by mail-wm1-x32b.google.com with SMTP id z17so5604775wmi.1
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jun 2022 04:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=E9aKX9oDaX2lfkTZYFCt5GDgDZqAXKuhAdFiZdMrPqY=;
        b=NW4jz6dwfA5JksloJV3dLWU46ohpfweUdbOBappE3Yd/0pA5MPuyI3XIzT+XCXHDCQ
         TphPyrKVss82RWnsp0C8VYArXNsJ2bmQp1zRnanFbsP7DD/MEjN4QgqA35e3QAgvR1sE
         L9m+M39BkIG/Ca0ZiQzPPZvhJapsLKiKwLKK+CG0gPQwegoueqSu3OiWv+7B0arCnjy5
         FLXflRBf8ed6wQYy32keNxyX/F5P3ceOSK91YBleAhg2K8W91mGgd0L8+2amsRt7xIDb
         D7EQaa/KBTgXsjezdglGahdHsoODcXjwOoA6TH/l/1awBTjmam7Ej6ue4shDzsSJnJef
         79/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=E9aKX9oDaX2lfkTZYFCt5GDgDZqAXKuhAdFiZdMrPqY=;
        b=c6rJHL3qNVwZq8xzVg1qWXMl55Kdsh4TMMDn7dZDlPP0RNO9sUmGT+R2EUwIAJEAhn
         6OeU0l2PzX3rtWG9HPPFNaPhKAtuaAR0W3kl41igY2kuf0Sfith/aOTaKm4AhquphGg8
         P9cdYp2hmpqVvgIxKvmbaHoZim4l1KUW6DfTqipoSoQTqpeBcAmYw+1E+NEs1e9/qyOl
         VD0TuXu1PnBkeZkWKoLeOVSBW5xb7KMqZ+aunlLozk1cFCgEcn0YKcAe8O8fr1uaBzsk
         IVghPlBFOB25KgfdnqVV2dikvGO8NbVfwWVQecKbvFzQ6nkVi3wrwkMnzXo2hCLC7gXJ
         qDqg==
X-Gm-Message-State: AJIora9kIKZv2lmbb5+EqqV9fssNF3413Db9ad8Ds1t3eP2S0PhS+XMB
	YsiFyX7qWLf3EKxTgREXC0c6tw==
X-Google-Smtp-Source: AGRyM1sWoia6ofcqh57mNpVUqj2dfOlA//Qf4Y6NoEk7FLRl0BExflOY7RUSmN/hMk9v88Y+2OxcKw==
X-Received: by 2002:a7b:cbda:0:b0:397:48d6:6c9f with SMTP id n26-20020a7bcbda000000b0039748d66c9fmr24035982wmi.10.1655723072824;
        Mon, 20 Jun 2022 04:04:32 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x12-20020adfffcc000000b00218453adaefsm12838167wrs.101.2022.06.20.04.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 04:04:31 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	m.reichl@fivetechno.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>,
	stable@kernel.org
Subject: [PATCH] arm64: rockchip: rk3399-roc-pc: prevent fusb302 powering off the board during boot
Date: Mon, 20 Jun 2022 11:04:07 +0000
Message-Id: <20220620110407.2393644-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_040436_093218_26A50108 
X-CRM114-Status: GOOD (  10.53  )
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

The rk3399-roc-pc never finish booting because it is powered off when probing
fusb302.

The type c port is disabled because not present in DT as can seen in dmesg:
OF: graph: no port node found in /i2c@ff3d0000/usb-typec@22

So adding the port in DT (as needed by the device tree schema of
fusb302), permits the board to survive and finish booting.

CC: stable@kernel.org # 5.10+
Fixes: 8bb878cf20ae ("arm64: dts: rockchip: add support for ROC-RK3399-PC board")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
This patch is tested on 5.10.123, 5.15.48 and next-20220614

 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 0e45cc2d195b..60c400ca4034 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -552,6 +552,22 @@ fusb0: usb-typec@22 {
 		pinctrl-0 = <&fusb0_int>;
 		vbus-supply = <&vcc_vbus_typec0>;
 		status = "okay";
+
+		connector {
+			compatible = "usb-c-connector";
+			data-role = "host";
+			label = "USB-C";
+			power-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+			};
+		};
 	};
 
 	mp8859: regulator@66 {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
