Return-Path: <SRS0=QBjV=EN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86504C388F9
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 17:01:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C847F20888
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 17:01:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="l2gpE73I";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IMymneUl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C847F20888
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ql6KCxUuTEh7xf0sMJFiFRauRSYwG2b9xVGQPUdFsb0=; b=l2gpE73ILim8YrRIqbGSbw1gv3
	ArAh1vxa6aJlc1XIcEmYTt9cEFyiSfCkniVUnZWmz4kiEnMgtw0DtIQv0WugGZr5Jnzsp8oIzKKi0
	tWNTbEJ/qZESftRJeskM+o18uEXnERtsiFtv8Ht7LUcfcEWP0GbpmwqcT+8PlcUT15Ju68qZSMH3G
	UyliKYd3g6V0dkrBlRpDjS8t1RxOVgv2sWQbZ1/ZtnT3QXcvQs/jnwHy+zmRNd4ck+WtiLVYjjV3e
	obKvztm/+aozeqbrboGuKXynKclaxJ1nMjF5hQokNGfAAz3iYaGha1E1MLVKyq9R/X3dfLxccqMKr
	ahcKYfTg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbRam-0007Ht-Hf; Sat, 07 Nov 2020 17:01:32 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbRaX-0007C1-Ad; Sat, 07 Nov 2020 17:01:19 +0000
Received: by mail-ej1-x641.google.com with SMTP id w13so6305507eju.13;
 Sat, 07 Nov 2020 09:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ieXuoaRLe75wW+v2XILXUGMGBXmYTfCH1LnRyaQZz24=;
 b=IMymneUlVsgmwBGy+Sba8XB11v6voMGhcviGnsGxeliL/aOkPbX86fTs2CjbYbMKyX
 aAWFldK05YJv+IbqYLy0W9Y2pwrNH4iyz9/rS0wfMQguNswH3R8Fj4VQy3d/jV+MHBB0
 ixmJ9iHo0SvnSLaEXXLcrnBHmEFlMPO3CvKyAFT2waNmY5iheXu+qwJjY9tVo6Gm3ynV
 6uKaitGJGKsCFj5PN7wkdiAim5uCNNulv1nTfSQKgHWpIlUAMCMQFVkeOLmIgZEdV2+i
 1/7yRMrXLvaxcZnPmpOVEvXEpZpSwJjphOis6WfK6MqPuhCrLDlX6izV3W+TyX1zSI9M
 iP2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ieXuoaRLe75wW+v2XILXUGMGBXmYTfCH1LnRyaQZz24=;
 b=T46ejqOcNXih1VDnWRJmZRGupLt1ncoWpNfVtOVpWCIwz72YHWRZZwTtdMg3ugjxB8
 n0/uTfUzBHKHQiQ5zKABh4hLG/dctlg8GVyLHeZ5lLNl991HRV/B7/2yeB5qhQqx9vMX
 oXdmUHjVpnyJvDJdQGHgvdMsym1h5TSWR6BXOvQkLl2rgSdXNJMKZ8H/t5S0U3UYbY+g
 JAqAzcvYvOw9HT2KTwQfn5m54lmnmM2tVGG9f4PPIrWKNqcKRfNH8PcdS32+UjnhmkCJ
 LAFIUy0H/d2SRY3thWGPBNNk1QZ5FWXIoXZxg7y9lRjpni2WVb50WHnDGEyio+gs4uZ9
 o4uA==
X-Gm-Message-State: AOAM530mhF7roJmaJpdzOdEQ5FhdyFw4XYhzV7xE14i6IAWvRkCUxy0b
 Maf2Mu1wabESdTDt+XNrn+Y=
X-Google-Smtp-Source: ABdhPJxMCCqsWil0e2tUXcUcEaUmgB+bjMd1ick/fAe7iO79ry1SM4aUsiAahJPSXP7yKJncZex5Lg==
X-Received: by 2002:a17:906:5e02:: with SMTP id
 n2mr7014215eju.295.1604768476492; 
 Sat, 07 Nov 2020 09:01:16 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t22sm3729700edq.64.2020.11.07.09.01.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Nov 2020 09:01:16 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 3/5] ARM: dts: rockchip: add QoS register compatibles for
 rk3288
Date: Sat,  7 Nov 2020 18:01:01 +0100
Message-Id: <20201107170103.25608-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201107170103.25608-1-jbx6244@gmail.com>
References: <20201107170103.25608-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201107_120117_403213_34D70863 
X-CRM114-Status: GOOD (  12.66  )
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
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the conversion of syscon.yaml minItems for compatibles
was set to 2. Current Rockchip dtsi files only use "syscon" for
QoS registers. Add Rockchip QoS compatibles for rk3288
to reduce notifications produced with:

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 68d5a58cf..d65f3b7b3 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1329,72 +1329,72 @@
 	};
 
 	qos_gpu_r: qos@ffaa0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffaa0000 0x0 0x20>;
 	};
 
 	qos_gpu_w: qos@ffaa0080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffaa0080 0x0 0x20>;
 	};
 
 	qos_vio1_vop: qos@ffad0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffad0000 0x0 0x20>;
 	};
 
 	qos_vio1_isp_w0: qos@ffad0100 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffad0100 0x0 0x20>;
 	};
 
 	qos_vio1_isp_w1: qos@ffad0180 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffad0180 0x0 0x20>;
 	};
 
 	qos_vio0_vop: qos@ffad0400 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffad0400 0x0 0x20>;
 	};
 
 	qos_vio0_vip: qos@ffad0480 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffad0480 0x0 0x20>;
 	};
 
 	qos_vio0_iep: qos@ffad0500 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffad0500 0x0 0x20>;
 	};
 
 	qos_vio2_rga_r: qos@ffad0800 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffad0800 0x0 0x20>;
 	};
 
 	qos_vio2_rga_w: qos@ffad0880 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffad0880 0x0 0x20>;
 	};
 
 	qos_vio1_isp_r: qos@ffad0900 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffad0900 0x0 0x20>;
 	};
 
 	qos_video: qos@ffae0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffae0000 0x0 0x20>;
 	};
 
 	qos_hevc_r: qos@ffaf0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffaf0000 0x0 0x20>;
 	};
 
 	qos_hevc_w: qos@ffaf0080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos","syscon";
 		reg = <0x0 0xffaf0080 0x0 0x20>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
