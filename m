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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83DBBC4361B
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 10:37:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E8AE22D07
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 10:37:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0E8AE22D07
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4wSVd9JBbUNk2CyZKIpAD3AqlEFk1MJfv0mnwzdyFHQ=; b=TAE5Dhk3SO27mXnFtMx2tEBBza
	v+xLGJ0z6/a7xXSrSCVfm01vISCvKhCH3vfDWFR2NRBH24GwNqRRcEn30Gf2TkIM9KefW+dB0tpLZ
	DcEr3QLKwfYU/NrB/sN7Sgg+0Mo6q9WUU/M4l2ReeT0FxclKxZemmnChYuLVgeSgFozCiL/RrI+9h
	1bmfPWGC4U1+4MlEVbHWRJ5U473I0vx6Fcuy6PTs15WHcInS7tkiBlrr4d870j9BU5HTlO/ntmhSI
	InfDTlj5ApdrFTfoUejW5+5ivvMJIgjY3W7jEXR9urzayTvg6mMQzKjFcr9H4aIY7LoQEaxQRuKu2
	oakybkWg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klrQ3-0002xa-0P; Sun, 06 Dec 2020 10:37:31 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klrPs-0002vC-4V; Sun, 06 Dec 2020 10:37:21 +0000
Received: by mail-ej1-x643.google.com with SMTP id bo9so15133964ejb.13;
 Sun, 06 Dec 2020 02:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1aM9iIOktHmsTxuO3hu40BJkplZLp0Yh807OLHKdklo=;
 b=a7ddm5nrcaYnaJQ3hhMtld0cfrNLDbmqlUy3j3nSjffAI1a/ZAlPZG5Wqb7Kdzexum
 TwbAXB01eLH6j5QKY5HF3IfemVSvyodPeFDM4m4ihJK0Q14uJFz8MXECNnZgIfCprARg
 YeL/A7IlIPhfodyRR5VFvhVVtNJau+tVICHceE9NV+Nh1G/LZu+4D1CqJuF1mkdlmDtw
 2SXBKatmkHLBPXSgIpRffqUeVBrYv8ZU/qMTgB4aJxkciqTZAZVIvreAue/iBgYPOShL
 wjinyO/IPICxtkMkPiwUYtEvefhmemvDOl0i6dZBPQbL4juUqV66xha/+qrYBlkjbYaJ
 wY/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1aM9iIOktHmsTxuO3hu40BJkplZLp0Yh807OLHKdklo=;
 b=h/ZDzkeXWdSyVMQn9SHF+4jPb1L+TY6iPhsWdRtcq2eCO5+b+zpZ7yqCEK5TJ03lY5
 qezZhIlbg0d8uHlVyGgMyGADQum6IgS9u1b26IPkAay/GeX2Ll6IgUr0exAviu6/+4Wf
 gXPBoTXv4AI+ezua8Ybo2vGY1eHQkhC+ipjJm1LJPBh1rAe3y+0qXzk1rLnXtmZRINLG
 8BMoCd1lzTIf6ewK/kavvKY0fi7W37PiYQImmt5WUsEOMsEmMnu9ZlxHU5Wi7lsCwOze
 n9/180pn8WRBmJEPIpwsqlmh3beif5Rs9HA2K0qWRFKsx28PgRcnVxlkreCEvTbh1gjr
 IxDg==
X-Gm-Message-State: AOAM533xOoSSDI7Q+Gy0MgitUglMq35MZEVKf1kQWKZ2DMCp/iFHjC/l
 Et583XJNV9U9nXKOGUdSYa0=
X-Google-Smtp-Source: ABdhPJxGQ3BM6taSvVa9uhTTlEg7D/i46KNwGXDhJYoOt7bTLS7NomV1oF8AdHywDN74f3uRbww2tw==
X-Received: by 2002:a17:906:27d1:: with SMTP id
 k17mr15176498ejc.325.1607251039345; 
 Sun, 06 Dec 2020 02:37:19 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cc8sm7811556edb.17.2020.12.06.02.37.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Dec 2020 02:37:18 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/4] ARM: dts: rockchip: add QoS register compatibles for
 rk3288
Date: Sun,  6 Dec 2020 11:37:09 +0100
Message-Id: <20201206103711.7465-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201206103711.7465-1-jbx6244@gmail.com>
References: <20201206103711.7465-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_053720_308083_E9EFAF4B 
X-CRM114-Status: GOOD (  12.59  )
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
QoS registers. Add Rockchip QoS compatibles for rk3288
to reduce notifications produced with:

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed v2:
  add space
---
 arch/arm/boot/dts/rk3288.dtsi | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 68d5a58cf..01ea1f170 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1329,72 +1329,72 @@
 	};
 
 	qos_gpu_r: qos@ffaa0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffaa0000 0x0 0x20>;
 	};
 
 	qos_gpu_w: qos@ffaa0080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffaa0080 0x0 0x20>;
 	};
 
 	qos_vio1_vop: qos@ffad0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffad0000 0x0 0x20>;
 	};
 
 	qos_vio1_isp_w0: qos@ffad0100 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffad0100 0x0 0x20>;
 	};
 
 	qos_vio1_isp_w1: qos@ffad0180 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffad0180 0x0 0x20>;
 	};
 
 	qos_vio0_vop: qos@ffad0400 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffad0400 0x0 0x20>;
 	};
 
 	qos_vio0_vip: qos@ffad0480 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffad0480 0x0 0x20>;
 	};
 
 	qos_vio0_iep: qos@ffad0500 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffad0500 0x0 0x20>;
 	};
 
 	qos_vio2_rga_r: qos@ffad0800 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffad0800 0x0 0x20>;
 	};
 
 	qos_vio2_rga_w: qos@ffad0880 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffad0880 0x0 0x20>;
 	};
 
 	qos_vio1_isp_r: qos@ffad0900 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffad0900 0x0 0x20>;
 	};
 
 	qos_video: qos@ffae0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffae0000 0x0 0x20>;
 	};
 
 	qos_hevc_r: qos@ffaf0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffaf0000 0x0 0x20>;
 	};
 
 	qos_hevc_w: qos@ffaf0080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3288-qos", "syscon";
 		reg = <0x0 0xffaf0080 0x0 0x20>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
