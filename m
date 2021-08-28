Return-Path: <SRS0=b+1m=NT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70A8C432BE
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 09:45:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E5B260524
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 09:45:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6E5B260524
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HCsUdhwWc4aFMvW6iUo27zr70mU/246py9GuFjEb7Nc=; b=xxwASgZ3KFk5th
	gQT7jH8+aUhNnrmj77eyNO7MFyjQD6n3/Wt7FNgPjEecdQNfCma7Y8emk4OuY9ahZJn6jNUGhLwVZ
	JisvhQ/xr/qzfbfXFXd9/jS3OmfUy4ZziCLTLcgNXIOnryomZ5F2ProG9jm8ohcXY5xcOlvLQsh15
	fUHSua5UVruWi5bQEgpgmPMFO7ssG2WMQ8LfzyU05kjRf6cnsd6XSTUvGRhHgVERQTLzcb7PCyMSt
	ZaNnH87ul1t/KfmEAauL2SWhhUTAr5U5jkp+lMSBGBmYOVt/NaR/LlJ0r1tr8Tf8U04k4O6Zhibvp
	/XEM+QAVGtoeF307K98g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJuuP-00DypL-RQ; Sat, 28 Aug 2021 09:45:53 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJutz-00Dynk-EI; Sat, 28 Aug 2021 09:45:28 +0000
Received: by mail-ej1-x633.google.com with SMTP id me10so19357030ejb.11;
 Sat, 28 Aug 2021 02:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rVSThyxcJIxO6/MqLNa1RZ3VCG/V0uLT1hBIC06use0=;
 b=bN7jTAmnpL49pubBkgeXTD49jV39N0wtwwBoHDNZ+3geH6/XdVcvmVNVE+/KnAHEXn
 bfSOeO47eVnywNzYUtqUhrXMlTW70rNefh5tEA0KafAtkR7TiUUdn2Ff5/amcsMUaNRh
 +ITC3H2hbQNSW1ePJHJb1TZI30Dci4GSrqShfi9b4E7OzZb4KfJUdqwxqZQj7GqC5V1e
 7Q3Xl8XLTFugt0slsOxlXkv0IUdXsDl1FapbC7u1mp5bbgg00Vs+iixgZnJCxPY6NIlH
 RsHPxJ+yg9/INmCvqcviSH9P7e/49tfHWQDNCsnCGSyRcdABAqFj2yQfsXVorL5eD2pm
 JxRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rVSThyxcJIxO6/MqLNa1RZ3VCG/V0uLT1hBIC06use0=;
 b=Yoan9+nlkV5M4mHLN/y7I0GWNMi2InR9/4xJ7svPm8iOAQPlRIAo+KJ4TRXLBlO/mM
 poWP4juJSrtgW/6+oC7SrILW5HfdhlaEBfDqjuVQSaHrQzSEINSHJHZDR48iRehLFDlA
 OzMUHMbETGnV8ke5mLAohbFZjovsxfKWeKWoHeRL7WG44rroGsFJaP1zg1hT9tFsuVhb
 fNTsblO6cmGndjiHHKu//2occ56XFrHYi2KxmCBYlJ8vakCmv388mqcrRZL0/3liF90e
 cVRy/Kx7Ep/ht4wNPSF1gmWHRTO1xchu58TLjLhLuUAMyrDvcNyVUA3Hy/vuTLyBdSVM
 qPqQ==
X-Gm-Message-State: AOAM530UWVVLSgxJm6t/4fdbc3F9Xf/oZflbryYBItLySfvwP/oBRfQN
 HnxbxBrVCKoQw0Lo44C0XbkulDE/83Exe0WT
X-Google-Smtp-Source: ABdhPJwWxk63rPsUGH0JQ+4pj/rJeLjbpyQKsxXZ5WOrFnxl9QL/oOy1HaO4X7kUOAecSCdz6u6Y9g==
X-Received: by 2002:a17:906:7095:: with SMTP id
 b21mr14704691ejk.131.1630143922661; 
 Sat, 28 Aug 2021 02:45:22 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q18sm4017076ejc.84.2021.08.28.02.45.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 02:45:22 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: rename opp-table node names
Date: Sat, 28 Aug 2021 11:45:12 +0200
Message-Id: <20210828094512.26862-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_024527_527167_C400C841 
X-CRM114-Status: GOOD (  11.10  )
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

After the conversion to YAML of the Operating Performance Points(OPP)
binding the operating-points-v2 property expects the nodename to have
the '^opp-table(-[a-z0-9]+)?$' format, so rename all Rockchip ARM dts
opp-table node names.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/opp/opp-v2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188.dtsi | 2 +-
 arch/arm/boot/dts/rk3229.dtsi | 2 +-
 arch/arm/boot/dts/rk322x.dtsi | 2 +-
 arch/arm/boot/dts/rk3288.dtsi | 4 ++--
 arch/arm/boot/dts/rv1108.dtsi | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 2c606494b..d6a946a2a 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -54,7 +54,7 @@
 		};
 	};
 
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm/boot/dts/rk3229.dtsi b/arch/arm/boot/dts/rk3229.dtsi
index cb7d3fad8..c340fb30e 100644
--- a/arch/arm/boot/dts/rk3229.dtsi
+++ b/arch/arm/boot/dts/rk3229.dtsi
@@ -10,7 +10,7 @@
 
 	/delete-node/ opp-table0;
 
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 75af99c76..4021e92e0 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -68,7 +68,7 @@
 		};
 	};
 
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 4dcdcf17c..1ded2aabe 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -100,7 +100,7 @@
 		};
 	};
 
-	cpu_opp_table: cpu-opp-table {
+	cpu_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -1278,7 +1278,7 @@
 		status = "disabled";
 	};
 
-	gpu_opp_table: gpu-opp-table {
+	gpu_opp_table: opp-table-1 {
 		compatible = "operating-points-v2";
 
 		opp-100000000 {
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 24d56849a..7d96a0d02 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -40,7 +40,7 @@
 		};
 	};
 
-	cpu_opp_table: opp_table {
+	cpu_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 
 		opp-408000000 {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
