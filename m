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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1676AC4361B
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 10:37:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85F4122D2C
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 10:37:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 85F4122D2C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=247pQXuFMjIu1G3/9qdHzEl32mw/0WThszqpwWBaafI=; b=wzI/7/jhP7PadzE1mvWwDegVbm
	h247TlqaH8+F3dXZAuVxchYx25nCcnFORPEMTJWvr8Kb55n8IJHedYmU6InaamEHmtbiDWRa6CeQX
	jHcOKQm+b5V6Bd/8ButSI18Jn0/9+xOeZwUEujXJmIka4IIrQiCWuIs/upY7TBjNYa5IWbok4zZop
	WBlW47bxd8rx+5GVrVqP0WCZm8nMAL7ar6TnynEfO/F26gh5oYOwvX0z/CLkb0oNltRcwrRCdZuvl
	HY3PGzK2X6d8mWkwIM8K7qwHIcEWuUJ2FwzQywgHdijk5AZ9bRkHkqxPS+CtbFITRqcP4LYTAxBXY
	BKFaIAew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klrQ4-0002xk-6X; Sun, 06 Dec 2020 10:37:33 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klrPr-0002vB-Mv; Sun, 06 Dec 2020 10:37:21 +0000
Received: by mail-ej1-x643.google.com with SMTP id x16so15197967ejj.7;
 Sun, 06 Dec 2020 02:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cvwYqmCIRPdXNktVSRsny/sYz3R2ctp4JTUSP8UZAlo=;
 b=NXMUS0AKQwIKdfL3LpT+DEGWW0kJG4Pk+Hpxi4f4KZdwfVY6CcOpZKXJL1IGQys59I
 LwMWbkmH5xy6XmkLRzrUmWPVy0K2l4Otg2VX4d8O51pGFZkKT/5/lnUzngIoVg1Lh2jq
 nRNc9nfc+09MYSmc11hUlRMmbTDQzjth5QXSuD+G2MsBa5Q6uBKd8IHcyyRfeObQZLYz
 iv5l+FPeMoa27jX8+zgyF2p54OmLyardyYiHdYEDeMWds/hU/mi5HsiifQsexOVuXaeM
 arnYvXEJ69Ix41guCLok0199sIgo7GYKUf9hP6GU5+xX4eX7Ibk7GmbMs1enPLPY+uCg
 PlpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cvwYqmCIRPdXNktVSRsny/sYz3R2ctp4JTUSP8UZAlo=;
 b=QvY+YH4Ps9cSOIhSGm/3DeLOp1C/nuhCaatGmizWp5S3Kt573jTJdRPsLswDGYrtEV
 dJeT8pr7o/d+GPLf6N6lQvpFJLDy1SACpOuZwGBw0Dvf/c3hy4xDeB21SOJKyr2N6UlD
 2P9UJNYCelibcInDeVE9ecPlrGQ5F1jI16ojV8YlDffYGCM/rIUSJ6GO40G3SVa7sG8L
 ZvqIt85V8Md1zSKk3yNk/LvNT6pi4wyZFsRLmAdmdEfF1BMKURTkkKeBoKESdOABuPUP
 3eOMgeNnJI9xjIU4NGEIxrvK/Ytt1NL39TBwiNdwGDQCfjFQj3UDex5ciFWkeIvIzilc
 S9Zg==
X-Gm-Message-State: AOAM531hX6VAiewkcXmNbos11sNFhq+LMzkYw6CTnR77+frGuKQUROp+
 62UkrnTJ+c5DpUsvhAL8RoYdafrW/34FaQ==
X-Google-Smtp-Source: ABdhPJzBGFCyoZgaS437Jqs/oH/9Gprd0j90q7vrUi4o5BpVTBJdakKuh8rSwLQlpGMpIT5fDncZ3A==
X-Received: by 2002:a17:906:614:: with SMTP id
 s20mr14320287ejb.202.1607251038455; 
 Sun, 06 Dec 2020 02:37:18 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cc8sm7811556edb.17.2020.12.06.02.37.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Dec 2020 02:37:17 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/4] ARM: dts: rockchip: add QoS register compatibles for
 rk3066/rk3188
Date: Sun,  6 Dec 2020 11:37:08 +0100
Message-Id: <20201206103711.7465-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_053720_030436_8A29B312 
X-CRM114-Status: GOOD (  12.36  )
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
QoS registers. Add Rockchip QoS compatibles for rk3066/rk3188
to reduce notifications produced with:

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed v2:
  add space
---
 arch/arm/boot/dts/rk3xxx.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 859a74779..49bcdf46d 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -151,42 +151,42 @@
 	};
 
 	qos_gpu: qos@1012d000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos", "syscon";
 		reg = <0x1012d000 0x20>;
 	};
 
 	qos_vpu: qos@1012e000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos", "syscon";
 		reg = <0x1012e000 0x20>;
 	};
 
 	qos_lcdc0: qos@1012f000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos", "syscon";
 		reg = <0x1012f000 0x20>;
 	};
 
 	qos_cif0: qos@1012f080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos", "syscon";
 		reg = <0x1012f080 0x20>;
 	};
 
 	qos_ipp: qos@1012f100 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos", "syscon";
 		reg = <0x1012f100 0x20>;
 	};
 
 	qos_lcdc1: qos@1012f180 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos", "syscon";
 		reg = <0x1012f180 0x20>;
 	};
 
 	qos_cif1: qos@1012f200 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos", "syscon";
 		reg = <0x1012f200 0x20>;
 	};
 
 	qos_rga: qos@1012f280 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos", "syscon";
 		reg = <0x1012f280 0x20>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
