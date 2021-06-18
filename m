Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CD52C48BE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:14:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA8A86127C
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:14:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CA8A86127C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPsj+ZvhB8xGUVuSOn+69KMiSxLCXXys0xE1LZqcUcI=; b=tE0tcULZ89PfEg
	Bg6jHlZt3aVsPQJRxOeO5mgaH3RgtXjQkZ6GczvxGiDjpYDo2268eOLeRDAjFOhmql9eACG6LpKjs
	ymMs5AnzyplpqjMiXTFsFpMeo6Wji56uxhpe7Ie9F1MIJjQz0QO43xVuxBOItFbX2/v6GsFoSOPFc
	OFMdkrvhwI1SVRj99wnSh+pnkqVCuU8pWnImZ5ozeQpNQO6s6hjn+XqbDN4Plyyl5IQ9Xrm6E2YIS
	c8X75ZOJDo7HgYUPBJ+f6oR+iYVWqp3xtcieD6xSU9ag32ud8lw4HSzknarlmEjU5TxBOQlPxx3OO
	aThNm36AOYalX0wPbo6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luJ0U-00F8PP-BG; Fri, 18 Jun 2021 18:14:18 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luIzh-00F81M-K4; Fri, 18 Jun 2021 18:13:30 +0000
Received: by mail-wr1-x431.google.com with SMTP id m18so11698968wrv.2;
 Fri, 18 Jun 2021 11:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FRadAAJthazKXCs3EEyrRLqIIy1SFHZ81iHPWgmnJRI=;
 b=ny3LB6aXzm8w8C3+A9jf74tf+BJ986neHs79X76TCRusy5yLSp0LO3EWdBMg0srLNh
 KIeluN/0svlz2LiKKVdBMwWQ2tyMAriywQiW9cqmW/LaGjqjtfbb5d9ECq2MWH2UpXmA
 mE6DQTzTQIrkOc82FAufn5lZ0UHmzBzzD1yoHZVQcKa45Wx/8lkFLyAy0o/QBW0MQVj0
 myGns/y4E4h/zzLtvcglLgvzg/Hz2drPsNPJpYYhgYi86j3gEAvx12/a7cnDoZUI+2bT
 n013PLal7MkOMd3BP6gE7OervN1873OvazXnpI1urafITd3UmANw62uMjEBfKxdlGmwt
 jWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FRadAAJthazKXCs3EEyrRLqIIy1SFHZ81iHPWgmnJRI=;
 b=VCVZ3s6UQifCrB5asAc3biEQ1qGP3KxDgIshi0b64K/D3CTqBdVpWw2CIGMtNRGzLa
 182CWheEQB/sD6EMrYczkdudjJAaMxQ6EWL5QsGnBD8lnv5SSEHQPloNmY8u8gl8Gggr
 3uKwPI8P0k1/QoOMZnL2MXvz/tvSYAgWuyix50nrrqmZcLPjdPXqYVPZ7OSLICWZQcmG
 fjooMapMGeM73E2FtGhbKHI/bx8eaXlwv+uI1Nr0sVioA21y9kRbHmHkI4aooeP1v26c
 Fw8yrpBmKNmUMGkrM9TLyJA6a81hmau4G718fc56sRK1l0H7RKOy0bHnmx2X1P2BNIks
 uWgg==
X-Gm-Message-State: AOAM5325yy5QUXilLg46r5GIuo9nX5W4iCq/kKnov19o5LYzlAk1CwNR
 nA7fRNjFYrfgZBikOvaEtDozHHmOJcyg
X-Google-Smtp-Source: ABdhPJxwYQRQMqECTGWplAPGQubZuPc+DAoMbIBgAWiqVlg7kAw1Gi3FbNatZS9UZrU2FM6mBdz28w==
X-Received: by 2002:adf:d4cc:: with SMTP id w12mr13871170wrk.216.1624040007816; 
 Fri, 18 Jun 2021 11:13:27 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id l10sm9306782wrv.82.2021.06.18.11.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Jun 2021 11:13:27 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 5/5] arm64: dts: rockchip: add SPDIF node for ROCK Pi 4
Date: Fri, 18 Jun 2021 20:12:56 +0200
Message-Id: <20210618181256.27992-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210618181256.27992-1-knaerzche@gmail.com>
References: <20210618181256.27992-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_111329_765501_D888146E 
X-CRM114-Status: GOOD (  12.96  )
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

Add a SPDIF audio-graph-card to ROCK Pi 4 device tree.

It's not enabled by default since all dma channels are used by
the (already) enabled i2s0/1/2 and the pin is muxed with GPIO4_C5
which might be in use already.
If enabled SPDIF_TX will be available at pin #15.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 80925a58e470..b5b8a79116fd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -42,6 +42,23 @@ sound {
 		dais = <&i2s0_p0>;
 	};
 
+	sound-dit {
+		compatible = "audio-graph-card";
+		label = "SPDIF";
+		dais = <&spdif_p0>;
+	};
+
+	spdif-dit {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+
+		port {
+			dit_p0_0: endpoint {
+				remote-endpoint = <&spdif_p0_0>;
+			};
+		};
+	};
+
 	vcc12v_dcin: dc-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -632,6 +649,15 @@ &sdhci {
 	status = "okay";
 };
 
+&spdif {
+
+	spdif_p0: port {
+		spdif_p0_0: endpoint {
+			remote-endpoint = <&dit_p0_0>;
+		};
+	};
+};
+
 &tcphy0 {
 	status = "okay";
 };
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
