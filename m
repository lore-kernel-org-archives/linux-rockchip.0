Return-Path: <SRS0=0WH/=FX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B33BC3526C
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 11:27:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C461233CE
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 11:27:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C461233CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/QtefAKpXQF0R/B++cnA9/GXjW8GnKKI24IcHCZRTEY=; b=rLrRNewPohFTNUrPkI1A5wqy0F
	DykQ8eqOTS91+Z0Y4B2N0dotKmStETrHXMAgMO42hY/y0EuPhfTqoDFh1AISSkrC0j4rK3GFxZcYe
	DEarrNMBkgPD2FUn7h7dm43CYkgpsxp1BoOgmNnvmeWuqf9TP+kb/HeRpoVKmf+E/WVyy304ltnNW
	kFewTWPzxyYOn5Bskp22SZ+PQlsKPRaFNedsj1AbucxaE4xGizDXpKdvleVlyj67q3a0SDm0wpypx
	W8ucKnAW3Irmw8lrLL4Bekmj3H+5MAiDHh+3JtE+aA+BZN9LZ0s7XIKQbGwnbqJL4PwQeYZV3WdIU
	AztGY/7w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqaOJ-0006UZ-7i; Sat, 19 Dec 2020 11:27:15 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqaOD-0006RR-SO; Sat, 19 Dec 2020 11:27:13 +0000
Received: by mail-ed1-x52f.google.com with SMTP id b2so5033271edm.3;
 Sat, 19 Dec 2020 03:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=O0BHF7zOv72+OMsiSWi5IM7QDQ0jnj2mxRk25H3az0M=;
 b=gaOG8iDkx32Hjz0NHAA1IWSgUnit8I4ja1eg/F3dwNFB/vSFVyMRruKpFc3A6ohNHf
 XhehpIQfkmJ5I+zdqZt8qMS7wuMuKIuOzIQ69so78gItjJCDyUYNsOjJhLmf0pJ2wYxq
 qTs2V66XpMefNS5JW5B+oVk+yu4+xDr+xgeEFVek8LH6bXKyUTgXeWJFkQPjMIZFrGcS
 MPY1mA8EMzXJc0r8Qg1v3LJnj2PwhBPf9VAgKov2xceqJAZJMcLnFwKV/qJHVB1uiy8n
 ZqWAwP7OiE9YEIQJqfV0ybtXd4qBKjOlFqsv6R1ymvMuIPF10XGY79qvn8XK0lEPgwn2
 RuZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=O0BHF7zOv72+OMsiSWi5IM7QDQ0jnj2mxRk25H3az0M=;
 b=CeT4Jq5PlxR5YrrBb3ZyOxTdtaCxTwR+sw/ymLto6pjiy8aawpxkFZPdtJLC+RaxY5
 zBNFQRCBxKltgD13xSfhy9tpNHhn2bBOCDpBTfeLmy0NVkU5Cgin2slsUeQiUVMfuBPH
 fDR/vTd25z+tLU/Kj16FO7KMjuFgPhX0K8V6Zu047hV612O9sfOZ6Mn80l5+7cZeuQtm
 1ukrDcxpovWYafchiisFx45qYOqYFuv7n3mqm8Hryepggy2vfC09Jcec5iNVmqpAr4lC
 5GhTZRqFIo/Cc0rFDjr6SUzXAxeUYRbMG5QTRLUZNzvx01DN2vbn7sLgQCXSEQCseWrW
 SeBg==
X-Gm-Message-State: AOAM530ce+0iD7WeP4/WYhehPXhd+7pb7G1e1WfuU+opQxekoIm7kR9c
 d+8pDFzIKRTvWhR6eBFi/70=
X-Google-Smtp-Source: ABdhPJx9FYJ+jxcG0dXiSajPuZQ5bbFi2zAzIcjOiLcM8ERkoBEBNlnq9wk/EvXNqFHwlc3DOGn/sQ==
X-Received: by 2002:aa7:cdc3:: with SMTP id h3mr8453714edw.52.1608377221597;
 Sat, 19 Dec 2020 03:27:01 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n17sm6651785ejh.49.2020.12.19.03.27.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 19 Dec 2020 03:27:01 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v1 2/4] arm64: dts: rockchip: add rga node to px30.dtsi
Date: Sat, 19 Dec 2020 12:26:51 +0100
Message-Id: <20201219112653.10705-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201219112653.10705-1-jbx6244@gmail.com>
References: <20201219112653.10705-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201219_062709_978057_DA16282E 
X-CRM114-Status: GOOD (  13.44  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org, jacob-chen@iotwrt.com,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add rga node to the px30.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 541785425..fac9b4120 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1106,6 +1106,17 @@
 		status = "disabled";
 	};
 
+	rga: rga@ff480000 {
+		compatible = "rockchip,px30-rga", "rockchip,rk3288-rga";
+		reg = <0x0 0xff480000 0x0 0x1000>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
+		clock-names = "aclk", "hclk", "sclk";
+		power-domains = <&power PX30_PD_VO>;
+		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
+		reset-names = "core", "axi", "ahb";
+	};
+
 	qos_gmac: qos@ff518000 {
 		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
