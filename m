Return-Path: <SRS0=Jg7J=FK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40CAC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 10:37:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 82D4B22D07
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 10:37:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 82D4B22D07
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vBjWUiqyVJAGnHs7NRHVdfnMp7IIsR4cBJdk8MJ7ly4=; b=sbgdAdgLHk4mcsYei6f+E3+G5p
	uTOEHcgHYQOladvjQqkYuFYtGqVR58dmKrf/71TN6ju2yLRrXN2onuWOmCy1PybNhepNoAnNQi4Ey
	9kC72Unng8/r5I/B9iPMvZw+KLktv757y6ndYU+1kEUfyVaXLQ5kfyJ7cRaYzzV7J9OYRu3mY4JTp
	0SvKSWB8Y2icShQHsOYpSL6GH260ASnV6FxvwW9oX8KoTn1PmRoM8mw+OMmv9vc9LjiPTQSUivKpP
	U0bG7HGamvOZxMVZqAzJYAB4K4h6OvE2Ai0FG20VCED10ZjHAEXSQQqRLP75MvL5aYjaCCy4FLmkx
	ZpDLVTBQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klrQG-00030X-DC; Sun, 06 Dec 2020 10:37:44 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klrPv-0002vt-He; Sun, 06 Dec 2020 10:37:25 +0000
Received: by mail-ej1-x644.google.com with SMTP id qw4so15173621ejb.12;
 Sun, 06 Dec 2020 02:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kDtc4U1SrIvcrwzir8Ie4AKFcuKd6oNqPV4vKCYPco8=;
 b=WRy+ipNvJGTRViTBfEjx35T2YHd0IZuAzVWsTyjivU/2fs+hHYIAb6Yl8wVEmETaFw
 COTR6/if4PysZyBA1QdxV1ypHn+3FZI9H2ihNNnlnYV8+bh8atI6XYUEyjSr4Ea15Km+
 bETK56Ui8EQEkToM/3O1CZ+kgtppvcbuybFq0yxYdE6HBRgTwpimHcv4CCbw3pbkoebP
 Oh/jxQjBtNQqQ0YPwJqCUtQc4O4ZsdgIX8NumkU5iwfMR6uxa8oAlMRItDt2pcpKln2s
 aGVyDHGoyUE9Eeh0ZZLJvVFThlpnddDXByfZdyeKjGL08Bi7lqadGZsP89VET6K3Fn1G
 ixpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kDtc4U1SrIvcrwzir8Ie4AKFcuKd6oNqPV4vKCYPco8=;
 b=cJ6YMR3AD/W3Xt2u0gKAZQ75IHhdMuqO96I2fyZzlpqBANMEPMlPD2NUkBaAKes1/e
 sAGFe27+OkSZbgoyjwiXPTx/Z2Uo8VqfyEkdKus9DcWpoQdG5hxS4JGtvF4oXXBSOiHf
 upcAAjx3hH33/lUDAsysfqBzEKqbAKAn5QKD/UuoDC32O2cr4lkBDypkS7g8wgo7reWm
 iZEGf8g7FugOu0VbIuJtmWoP8Mb1CVktq1PE4UJlbrI3lIvQwCjJvBFgNuJ3TOwEQWdd
 Fw90q83YXgWjkses63UFF9vUmnNKLPqlVsiT4bIuVpeW6WyEOxdOQ1YQVzAwq6EMvSae
 39bg==
X-Gm-Message-State: AOAM5325RBCGW7hcR7gmuoYXd6pnYnJearbL5DwVslPguXonzihoUM3u
 9NulDbDzlxE8ypdZLbf2lnY=
X-Google-Smtp-Source: ABdhPJxhINOqjGiap9E226COugIdGnCAK4PO/u3fv59IAkxDONMJv+V9zXK5MPOteqnqUmYaBMcNNw==
X-Received: by 2002:a17:906:48c1:: with SMTP id
 d1mr14560385ejt.123.1607251041297; 
 Sun, 06 Dec 2020 02:37:21 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cc8sm7811556edb.17.2020.12.06.02.37.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Dec 2020 02:37:20 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 4/4] arm64: dts: rockchip: add QoS register compatibles for
 px30
Date: Sun,  6 Dec 2020 11:37:11 +0100
Message-Id: <20201206103711.7465-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201206103711.7465-1-jbx6244@gmail.com>
References: <20201206103711.7465-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_053723_722329_2CA3C3DB 
X-CRM114-Status: GOOD (  12.37  )
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the conversion of syscon.yaml minItems for compatibles
was set to 2. Current Rockchip dtsi files only use "syscon" for
QoS registers. Add Rockchip QoS compatibles for px30
to reduce notifications produced with:

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed v2:
  add space
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 40 +++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 2695ea8cd..af6bcef9e 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1107,102 +1107,102 @@
 	};
 
 	qos_gmac: qos@ff518000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
 	};
 
 	qos_gpu: qos@ff520000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff520000 0x0 0x20>;
 	};
 
 	qos_sdmmc: qos@ff52c000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff52c000 0x0 0x20>;
 	};
 
 	qos_emmc: qos@ff538000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff538000 0x0 0x20>;
 	};
 
 	qos_nand: qos@ff538080 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff538080 0x0 0x20>;
 	};
 
 	qos_sdio: qos@ff538100 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff538100 0x0 0x20>;
 	};
 
 	qos_sfc: qos@ff538180 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff538180 0x0 0x20>;
 	};
 
 	qos_usb_host: qos@ff540000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff540000 0x0 0x20>;
 	};
 
 	qos_usb_otg: qos@ff540080 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff540080 0x0 0x20>;
 	};
 
 	qos_isp_128: qos@ff548000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff548000 0x0 0x20>;
 	};
 
 	qos_isp_rd: qos@ff548080 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff548080 0x0 0x20>;
 	};
 
 	qos_isp_wr: qos@ff548100 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff548100 0x0 0x20>;
 	};
 
 	qos_isp_m1: qos@ff548180 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff548180 0x0 0x20>;
 	};
 
 	qos_vip: qos@ff548200 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff548200 0x0 0x20>;
 	};
 
 	qos_rga_rd: qos@ff550000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff550000 0x0 0x20>;
 	};
 
 	qos_rga_wr: qos@ff550080 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff550080 0x0 0x20>;
 	};
 
 	qos_vop_m0: qos@ff550100 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff550100 0x0 0x20>;
 	};
 
 	qos_vop_m1: qos@ff550180 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff550180 0x0 0x20>;
 	};
 
 	qos_vpu: qos@ff558000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff558000 0x0 0x20>;
 	};
 
 	qos_vpu_r128: qos@ff558080 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff558080 0x0 0x20>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
