Return-Path: <SRS0=g/fF=LH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC49C48BDF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 21:54:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 966F46108E
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 21:54:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 966F46108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DW0HtxlH6l9t/LbXqssodmA6FZorVxCj5H4Q9xgakFM=; b=kCb8EQ3qubnIlA
	KKwLKGM5pKICOxcjTqEhxpFU2kAfD+dzKRmhQCtC3cz5XrbtNHv3rxvLOw0tUYOD/SLc5kj+09oXE
	BoQKBvx+bFaIH39+rUt+wK4ohZ32GLvJGxyNp/vmf2KFHbCWYBgtsDOZDyCvIszKEm9bUuTTrOGVV
	C+mf+4AvN+B97wRPyBJeMFUlSg1E6WC4PZJ1k2OgFhTapelU9gq8CYz1AgLO0Hn2XW/u0i5beAVYs
	mKvnArEjTP6mhw0MwyvLe7SUZP/J+RbMunFlPi6+8uQnBDOh5ffYhTcOKp5iMKmBnih+AkCPSax4U
	aTTI86c31bVlFgilxieA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsY3M-00BPTI-MD; Sun, 13 Jun 2021 21:54:00 +0000
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsY34-00BPNc-HH; Sun, 13 Jun 2021 21:53:43 +0000
Received: by mail-wr1-f42.google.com with SMTP id a20so12297142wrc.0;
 Sun, 13 Jun 2021 14:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gHDz6AWLLq/gx7oIS4AjvcfZvVUiCFUsfxFsQ80+UI4=;
 b=J8VQvTzq9/EnMAC9zaIGEQNXJeaCxsUKx3dUJCl6aIkalCSuas8cdGL0N1hjP0fif+
 mPx9mkYRmNBSAxzELOk7srg4vGYRFsGoSi8p4Hp59mknsdeLTxY1rGld4gXbKBdjYrnA
 22NeIkx3SdEUeOQ3RqjUd3bO5EsZEcOK8luE1rTJN/OXGTTGYj2k+EOJ0H/Q12kKqEwg
 jNLupfmSbq80DqZ2A75Q7tZHa/KSrWmNHkMMLcBSkVOS3mm1BnIaaRs24TZCzA0EZAUe
 iSWuMpd5v7ZCXQKWHAoKEYrvQLHZyFv35d/R6PcT283nVt1p8I0x6Kcy1waKdrZXeFGL
 9UcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gHDz6AWLLq/gx7oIS4AjvcfZvVUiCFUsfxFsQ80+UI4=;
 b=Kv+beuGpbaQHftHrz32y9ryj5DJmCuagsMgMLl+Tk4q2z9aER6QkqaSQtLQ+e+tLWb
 7qBzIxE3cFnC3fM7H9YicqwE/gYrPz/bGh66xZAYP24/WBiHSlB31molWxtecvjHyXu7
 jvSMLWSzcHXYyT8C1lQpymbdascAV7ZhmqtVtCxCgmi4oCFEyTpjxq8x/PKjTAJ0uDRN
 wk3r9tyZv0KYWlFFMP3FN4DPVra42ZYFARzG+5ApzyvMjhdia7rxuMt4RCLObda6UrDq
 gDKwmSLSCs4oUKqsh0N+l2txIYmAnLL1SpnssqhuKhIWNEJ+EADVO6kp6AHaKQ2PFLyP
 Ah9Q==
X-Gm-Message-State: AOAM531nOYjrAhIHofDZms5xu/YnlXXmWVipjhUvF6o+Y6fklWa0H9aK
 vEuNQaHSyjyT+dnI/U19VKZPoZDmrOM=
X-Google-Smtp-Source: ABdhPJy8CWHU+bI/YsjifrDwAnvK7OMTVzvpXB0qMWhZy+z10TkGfTfnh0O68Y27j4BpwtTslxv49A==
X-Received: by 2002:a5d:5243:: with SMTP id k3mr15403285wrc.19.1623621161095; 
 Sun, 13 Jun 2021 14:52:41 -0700 (PDT)
Received: from morpheus.home.roving-it.com
 (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
 by smtp.googlemail.com with ESMTPSA id a10sm12803883wrr.48.2021.06.13.14.52.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Jun 2021 14:52:40 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: add SPDIF node for rk3399-firefly
Date: Sun, 13 Jun 2021 22:52:34 +0100
Message-Id: <20210613215237.830160-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_145342_599702_765819CF 
X-CRM114-Status: GOOD (  11.48  )
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

This patch adds the SPDIF sound node and related settings
for rk3399-firefly.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../boot/dts/rockchip/rk3399-firefly.dts      | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 45254be1350d..6bbf79a370df 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -151,6 +151,23 @@ sdio_pwrseq: sdio-pwrseq {
 		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
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
 	/* switched by pmic_sleep */
 	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
 		compatible = "regulator-fixed";
@@ -710,6 +727,17 @@ &sdhci {
 	status = "okay";
 };
 
+&spdif {
+	pinctrl-0 = <&spdif_bus_1>;
+	status = "okay";
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
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
