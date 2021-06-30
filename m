Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08AB4C11F68
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF48C610FB
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BF48C610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXyMoBBjx0s3RzrVI4A47RRyob/2i5LodQwk/ISfHCA=; b=JtJY/IFZ9q4Fsp
	7Nf2xaKdrpQri15Q5Yjyl5giDWfLx8254BhzRFCjQSGb/IFvx4Trnnx4iyIGBcYy92dGwwFdURVvh
	1aOOYux5ndtDIDe9337c3oA0FLsRNW9M0co5/nhI7mpPtjfotbnGKlmCCAsqsFXIomKcMRJt+E2yr
	v9SmgJzj9oHfh1k+A9c7pdVta6Sw3DZedFt+2NbTiZt6GJEBziao5CijNF2UGFE+hPV+icNtZ85tG
	iVQVTKMq8Boh52gpjz8LGBLeDjCYtMW1/qcmkKSBvyskOf+b6FOkW0sc3F4wAiOYK02LggehonPV/
	Rw/0gdGJorj+lSdSH3dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyczZ-00Ein1-0m; Wed, 30 Jun 2021 16:23:13 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyczT-00Eijm-MW
 for linux-rockchip@lists.infradead.org; Wed, 30 Jun 2021 16:23:09 +0000
Received: by mail-ej1-x632.google.com with SMTP id bg14so5172679ejb.9
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Jun 2021 09:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9azxPBXyAMEN3G0OIyBcPZGPC59ZSnwYGhhpGBFfZk8=;
 b=G29ovW49M4cicymwYrmF5Sv7c5t43dBLXzO7qPdEJPlk3QTa6F/E95hVWJDRpGXkhT
 i/+aFmsUC0UohlppZZtfA9XzEbwtAYbkCIA3hsI3kosMnGQb7PAmaAr+cJZD6idUiSUT
 VyBlYamQCKwO5Az+JgeydtirsGOu6hgT1tEY976/sYmCpVttTMLPbAToZ8IwTX8wwruV
 pmz5vylGBpnZAqdHTKijVLQLiWMBBqY4bksYTyNXD4cPN+4lFDjqFiKDJlVbw2/T6azQ
 obD7ZGZfRVSupCrhPB8n3EUnN9usqTQRxPBVwGB1fQaCJ7VUAsLS3VqQf5+BCQ6ZpRSx
 9AyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9azxPBXyAMEN3G0OIyBcPZGPC59ZSnwYGhhpGBFfZk8=;
 b=Eaa5bhoItBcgSdWIo00TstL1IfkVqXeHf36piGwkKaqxRmwelMTs4VpIPlx2QnU8W7
 bjDefAYOKtQo/NuWYWdlO9W6sVb1TY5nc0cUq5taOv+UsmfeNStxvIMpKeAJhVj34Gjk
 P7Z8AbD7u64nEfOBeFzi5UEp/ejgOD5ncPgGIzI3HEhoEQu2K19GnQbmyw4VIxqyOimz
 IoyXf0IBrkJfd+2si0L72VU7xb1nUSo9rmByx6jRDIZjJMCrGpaYN7/kg5gL3/3JLfHB
 GwHvRK1tZ0kdfcEpB3WEIRZm62398n9cOI1QJWqGE82erq7Hjn0MHECaIxnPEwx4/EyN
 E1/A==
X-Gm-Message-State: AOAM533M1E+qeWKUUEWAksGdTcb4jn21t8pNsnr7daZL8sRjDbLxUjkY
 hn27VvZGjz514n/kBAWWFas=
X-Google-Smtp-Source: ABdhPJxLP+CFOcdAjnovBixaGcSfe8to0GCqAu4fUWYLAdQgzz4jQCV7cLidRQRgx/FcfQfgsH7x3g==
X-Received: by 2002:a17:907:2637:: with SMTP id
 aq23mr36943181ejc.17.1625070186242; 
 Wed, 30 Jun 2021 09:23:06 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u17sm13091168edt.67.2021.06.30.09.23.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Jun 2021 09:23:06 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, heiko@sntech.de,
 mail@david-bauer.net, ldevulder@suse.com, wens@csie.org,
 banglang.huang@foxmail.com, matwey.kornilov@gmail.com,
 u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
Subject: [RFC PATCH v1 4/6] arm: dts: rockchip: move spi0 u-boot,
 dm-pre-reloc and alias to rk3328 board files
Date: Wed, 30 Jun 2021 18:22:49 +0200
Message-Id: <20210630162251.7378-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210630162251.7378-1-jbx6244@gmail.com>
References: <20210630162251.7378-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_092307_784756_3D9EAC6A 
X-CRM114-Status: GOOD (  13.29  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The spi0 node has a common u-boot,dm-pre-reloc property and
an alias in rk3328-u-boot.dtsi, so all boards contain this
as well in u-boot-tpl.dtb. Clean it up a bit and move it
to only boards that use it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/dts/rk3328-rock64-u-boot.dtsi | 6 ++++++
 arch/arm/dts/rk3328-u-boot.dtsi        | 8 --------
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm/dts/rk3328-rock64-u-boot.dtsi b/arch/arm/dts/rk3328-rock64-u-boot.dtsi
index 37ecc6a753..dae79d6268 100644
--- a/arch/arm/dts/rk3328-rock64-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-rock64-u-boot.dtsi
@@ -6,6 +6,10 @@
 #include "rk3328-u-boot.dtsi"
 #include "rk3328-sdram-lpddr3-1600.dtsi"
 / {
+	aliases {
+		spi0 = &spi0;
+	};
+
 	chosen {
 		u-boot,spl-boot-order = "same-as-spl", &sdmmc, &emmc;
 	};
@@ -69,6 +73,8 @@
 };
 
 &spi0 {
+	u-boot,dm-pre-reloc;
+
 	spi_flash: spiflash@0 {
 		u-boot,dm-pre-reloc;
 	};
diff --git a/arch/arm/dts/rk3328-u-boot.dtsi b/arch/arm/dts/rk3328-u-boot.dtsi
index e00e466d8d..03e5f18f1a 100644
--- a/arch/arm/dts/rk3328-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-u-boot.dtsi
@@ -4,10 +4,6 @@
  */
 
 / {
-	aliases {
-		spi0 = &spi0;
-	};
-
 	chosen {
 		u-boot,spl-boot-order = &emmc, &sdmmc;
 	};
@@ -54,7 +50,3 @@
 &usb20_otg {
 	hnp-srp-disable;
 };
-
-&spi0 {
-	u-boot,dm-pre-reloc;
-};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
