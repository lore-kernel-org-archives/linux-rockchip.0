Return-Path: <SRS0=31gD=BX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38FF8C433E3
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 17:25:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DAF8E20716
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 17:25:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pJfzYGq4";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K94gyUdQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DAF8E20716
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OdBfXI9JJBMGE3Nd/jTeWr1zG35KqC91ItrDwp3anfo=; b=pJfzYGq45heMKa7Pp2DztNaHlU
	ZD6FqCpYv8eor/FAh0PoX6GA32nviX6d3UpHwUZTKgMQiZj62bYL3qIJ2Kn/KdMFNaeAvibh/5b3a
	m6FlNk9csSL3jCMSrOygQC/7QXIZDkfkl2Q+nIOVatA4/YtTmK+xnh1kz70ulgr4cWC1wTD0s4G8r
	NnhvsoEX2VLiGj0GLJAKCUYt7+ydndtvVsjdl6/DUqwH9OfKMZfmPhW0OBQUBnjDQlB/haaeiuWr4
	oCNkdms7uThEw4y59J87Q+EyHIqWyUzRMiJEEevhNa7nrNdMuGAstoOgF1Ulu797KDEsUAc0kvXjK
	cO1k4SJg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6GyS-0004PT-OA; Thu, 13 Aug 2020 17:25:08 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6GyM-0004N5-RC; Thu, 13 Aug 2020 17:25:03 +0000
Received: by mail-ej1-x642.google.com with SMTP id m22so7005071eje.10;
 Thu, 13 Aug 2020 10:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JSziVWRJLj99fs/o9jvqTmAPB4w60TkQsdXXf0rek18=;
 b=K94gyUdQRZPmB05+3k9Z1PSC0eQHaDF9c/bZGoTac1j0890sqK8Vt9xySvufBvy52n
 E5eAM8x2Uz2LCkFpQ8MWR7lluDTuYrjrMZUSqN9qpOLvifamb1PsR/5acusPJQBN+XXB
 7hwbeLXdiuy4aK7Scou98e6zLc/VBDJw+dQmaPageVPlRd62c8bzwL4OXqgXCfgjs1VJ
 BL5k8c7Yjpm+CvVUbtd9rDA59CUdU0VgLkT++gs9YnYBCq40VEox65WzfkeLhQwHm8rk
 2/nbfH8NHV1DSvw1NeIQM4iC83kbyEHjvWJGo59qqBF+g4WZ0Was9WhRLZ3PvevYyTp8
 2vVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JSziVWRJLj99fs/o9jvqTmAPB4w60TkQsdXXf0rek18=;
 b=kYPbl9ceX53A7LvOtBVt0XLiN9PZXpgSkq+GUdNKb7/iB25mJ13oZfcaWdcZz4Fk5y
 SCi+iJUjzbYXwx74By3vdHrDn9pYGVzr9AzqPw2leM8cjRVMDnKiUbJHs+OHM+GskO7u
 VHn7k+3X/jOIFF1/7Z5d9o9iucUdOtJIZ57+8nTNfWkQETw4/JuTBz7/6ad7NYLUHAfA
 j4JKMjNLgXz+P3/V5jLvQFVM4/Hs4Av81FgNaBadWPzKUYjGDe15VfjKPN1vEFH3s5R/
 u8WMLN09VzlLj2jDQq58IrP/YMCWrO44OFvsaFBLaF5G5EahPPLtgj2Xc6KFCq80gbcx
 mYnw==
X-Gm-Message-State: AOAM532FThlvEyc0jh/OlLC62ZjRWdQh+yYl+86yHvRDVzi+0Bv842Jb
 PhwrD3SI4xx9E13RymjTv5I=
X-Google-Smtp-Source: ABdhPJz8ON0Jv1CjEw96HVcM4iHk0E1Oa/AAFcWQGJr05GyftdwWS0GRU2210nrlt3Aw7v7LJMTgsQ==
X-Received: by 2002:a17:906:60d5:: with SMTP id
 f21mr5777833ejk.94.1597339500199; 
 Thu, 13 Aug 2020 10:25:00 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u4sm4369408edy.18.2020.08.13.10.24.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Aug 2020 10:24:59 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] ARM: dts: rockchip: update cpu supplies on rk3066a
Date: Thu, 13 Aug 2020 19:24:51 +0200
Message-Id: <20200813172451.13754-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200813172451.13754-1-jbx6244@gmail.com>
References: <20200813172451.13754-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_132502_911551_D159AE9A 
X-CRM114-Status: GOOD (  13.18  )
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The use of cpu0-supply for cpu0 alone is deprecated,
so add cpu-supply to each cpu separately and
update all existing rk3066a boards.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-bqcurie2.dts  | 6 +++++-
 arch/arm/boot/dts/rk3066a-marsboard.dts | 6 +++++-
 arch/arm/boot/dts/rk3066a-rayeager.dts  | 6 +++++-
 3 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a-bqcurie2.dts b/arch/arm/boot/dts/rk3066a-bqcurie2.dts
index 0a56a2f1b..eba7a1344 100644
--- a/arch/arm/boot/dts/rk3066a-bqcurie2.dts
+++ b/arch/arm/boot/dts/rk3066a-bqcurie2.dts
@@ -63,7 +63,11 @@
 };
 
 &cpu0 {
-	cpu0-supply = <&vdd_arm>;
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
 };
 
 &i2c1 {
diff --git a/arch/arm/boot/dts/rk3066a-marsboard.dts b/arch/arm/boot/dts/rk3066a-marsboard.dts
index 7e01f6406..6b121658d 100644
--- a/arch/arm/boot/dts/rk3066a-marsboard.dts
+++ b/arch/arm/boot/dts/rk3066a-marsboard.dts
@@ -47,7 +47,11 @@
 };
 
 &cpu0 {
-	cpu0-supply = <&vdd_arm>;
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
 };
 
 &i2c1 {
diff --git a/arch/arm/boot/dts/rk3066a-rayeager.dts b/arch/arm/boot/dts/rk3066a-rayeager.dts
index f9db6bb9f..309518403 100644
--- a/arch/arm/boot/dts/rk3066a-rayeager.dts
+++ b/arch/arm/boot/dts/rk3066a-rayeager.dts
@@ -128,7 +128,11 @@
 };
 
 &cpu0 {
-	cpu0-supply = <&vdd_arm>;
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
 };
 
 &emac {
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
