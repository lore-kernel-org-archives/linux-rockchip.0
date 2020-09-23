Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2EC2D0A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 09:33:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 033D121D91
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 09:33:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xuWQjINA";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T6HYy6JG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 033D121D91
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YHA84T8epRk3HGx8pL+XtvfCK7ZlSTax2YRY9/FUO98=; b=xuWQjINAPJ4ZiSGTZOtEx4zdQ
	qPZBNCP28L8vx4FtWrmCK7v7AXopyo6i2J5IeCx2DkKousOCerUoaub+v3lhs8a0u1Tm3wkjyj0ZQ
	gHuBlJwnay7piGuWCQhbTWynGd9xLqQGD/YbIECWFqBAyYNlA/1w/b6xoNcJyQ7QP0GG9x+kR2vmO
	G4xWjk1g0ZfzC4JCuhuotk9kPoB6+IzuCGJdjZ9GkJz2NQVGD0QSB49TTYhQfG/nIZwca4KS1pe8v
	pXACRtv255diym/BnjW9GIVbX0rJ17aqCqLcG7rd3nVe7c4fJpllF2o27m1YY8+n2WaQPRfXs80l7
	W7hbyL5jg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL19M-0007Or-Oa; Wed, 23 Sep 2020 09:33:20 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL19K-0007Nz-W8
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 09:33:19 +0000
Received: by mail-pj1-x1041.google.com with SMTP id md22so2473831pjb.0
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 02:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j4R3q/B+RQaycGXbN2yEBl4AP6ihJrpnfs7s1c4skU4=;
 b=T6HYy6JG7MTilfkUGcolUbENSZeAg8q/fwgRH+ofhQ6Eo/mhV857nm6exhGvkRSxX5
 XjmKpRXRV5ebdFwcf8CgeYxO+arsz43fCC8j2senbRdEvQVzyZOG7dPsWuTqmbapf+Rz
 PK0klS4Mzs9fux7XltyI1ONp7L7iOHh0nZEz4KMzSoq5D31v9ohuP1yFXAnhW4Vwwrro
 JE6adn+2RyAtbFEFRYsQAdDM7CDxIBL/+OmnriZqVXQPOEm9oEE2cG9iLciJ1I1uztP1
 B2HIoTHWJO4zjof9UBjY2wmccdf7Dm7VPB4GTovPtqXhJBIisLxHAnoO6AGYW3A9ZGde
 CS5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j4R3q/B+RQaycGXbN2yEBl4AP6ihJrpnfs7s1c4skU4=;
 b=Q0NKguXCgNIK16N6TIxfIE2QOPImrPhtS+XamRuVrpltn/8nuxgOCq+2XxR8WjBgvQ
 7EVN1JZnGhLu5ZT9K7Z34qWJEoeFhlT6BkDYM3oJU7MVtvJRKtCuLStLub0ffwfHdIwS
 yjxyC8aXyMZ8HAgD2kQf8CM63CDOJqoeDC7ndddY9Oa4dRFqsVhECHfhBwnQuncfT001
 X5iENmaUdM+LEyoYysE4H30SbiLURg8hfDq3Zz7BSUtPKeMnQ4y/79musrh4VEeR2RVB
 qmhOZQ/eefbRpV7FDEVmgo22yBYi4qx+o12jq3UmsAcxZDsF3VS/+kCV08kIWaAtUynS
 8B/g==
X-Gm-Message-State: AOAM530x3dJJoKaVBuZV617HheNJCBBRR5ySwFUprNkQLWlPoCbArhUW
 muOuj7uOyythmjY1YoPZbHmlCwdeT02Mgw==
X-Google-Smtp-Source: ABdhPJxHlPWG046WFFlx91QrZ7kwO4SECV2ai7QE/1lCGZ1ZtoEi1i+SCEYV1bB8KMJaKkz7iwOUtQ==
X-Received: by 2002:a17:902:6ac6:b029:cf:85a7:8373 with SMTP id
 i6-20020a1709026ac6b02900cf85a78373mr2723748plt.2.1600853595901; 
 Wed, 23 Sep 2020 02:33:15 -0700 (PDT)
Received: from universe.lan (80.251.221.29.16clouds.com. [80.251.221.29])
 by smtp.gmail.com with ESMTPSA id h35sm16874348pgl.31.2020.09.23.02.33.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 02:33:15 -0700 (PDT)
From: Artem Lapkin <email2tema@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3399-khadas-edge add missed
 ir-receiver and ir_rx pinctl nodes
Date: Wed, 23 Sep 2020 17:32:34 +0800
Message-Id: <20200923093234.1512037-3-email2tema@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200923093234.1512037-1-email2tema@gmail.com>
References: <20200923093234.1512037-1-email2tema@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_053319_106743_3B9F003D 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: art@khadas.com, gouwa@khadas.com, nick@khadas.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Artem Lapkin <art@khadas.com>

add missed ir receivier to Khadas Edge board
Khadas Edge uses gpio-ir-receiver on RK_PB6 gpio
---
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi    | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 42ebbd6fa46..389ae43d869 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -109,6 +109,14 @@ vsys_5v0: vsys-5v0 {
 		vin-supply = <&vsys>;
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_rx>;
+		linux,rc-map-name = "rc-khadas";
+	};
+
 	adc-keys {
 		compatible = "adc-keys";
 		io-channels = <&saradc 1>;
@@ -682,6 +690,14 @@ &sdmmc {
 	status = "okay";
 };
 
+&pinctrl {
+    ir {
+	ir_rx: ir-rx {
+	    rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+	};
+    };
+};
+
 &sdhci {
 	bus-width = <8>;
 	mmc-hs400-1_8v;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
