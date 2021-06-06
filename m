Return-Path: <SRS0=3dFo=LA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B344C4743F
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Jun 2021 18:16:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CFDB6138C
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Jun 2021 18:16:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CFDB6138C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BiiCfQZjpGMmWeyfiBwcsS0wLj507cSuUn3MCRjeT2I=; b=l6W3vqfR0ufGEM
	ZK67Wzf2GU0nyM0M3T4BD4Cww5OeS8McJtXHLr9iPf9k1y9zScuCvDc6YJq9qsyXH+fh4gbtxvNS9
	nBwoHUevAhhnwEH+9+KacafoFHIOMUoDOdpdp9RNK5I6iedLPq9dNoPfuIVEyZX9LeGMV4B0v4Fm3
	qWY7bp6zvQS35GfdEKq0emjKxu+U0bwI8Ism/w+M278gKcUwEXEG5QPGy64/30qBKSu/EOXw5iRCM
	Me4NUxxXE9N/gj6JQ3WT3GCGFi3RR2M29MhHWD+VhynZRmjlMKlXVz/yqWIdyvu2qqj57GkGmVuTH
	JhACcKkFIxGl2nwo4FkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpxKJ-000e48-Io; Sun, 06 Jun 2021 18:16:47 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpxKG-000e3Y-UH; Sun, 06 Jun 2021 18:16:46 +0000
Received: by mail-ed1-x536.google.com with SMTP id i13so17400709edb.9;
 Sun, 06 Jun 2021 11:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=07UrgWTUrvd41OIpiSSSUai1/EscZkb/oDXQgnTVOVI=;
 b=RlJFng2oujbRP5GmKodhuSw5e/WwTGOcywGxdKk8ouL5YU4vWtadBbFGSXkUNyTsB/
 ToMJ+hdBs4gvdlUGY8lwhKW08UwYA8nxey0Bsddke4R/5GXqj1AI1GcCvbnZbOkPjhrT
 VFe6gSObR/KBdGEN4MVUf3/XIt1g0BDui0F2wZlXcej+YS/puUFdrSFXdeWH+WxPiQw7
 3X7Go0d+46aCDQ56uFFjrQz5HTonaeaaVKpRll05f07Y4TX6GLQf4mXs5KitNBnYeot8
 3FxukhV4yxRRJwCxy0bdyJStLB1klCzonsc8shFXPhsKUg5RLrqD9D2ubC4y3qaA9tlV
 8iEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=07UrgWTUrvd41OIpiSSSUai1/EscZkb/oDXQgnTVOVI=;
 b=Xtgwp+XvbB5zo0t7JFNk1I/ql+0almqzaQwED78Lawev5mefKP/cWRTNPX6sTTmAQ8
 bE5H7Oz5b2/qX2NVaGTnUrPXbmKCVxoHm5vveluAP2Q6zsm/IBIhbzmGRMjZbmaJ23Ce
 3VEngL31WxOFONpaKwWEL4Qr1OZ5TWfT/SCleDrzbCcPxUm/gN3y4J71oVGLAThd3NxO
 TKS9uuegNhGy+5mOb8YA3dv+WEbPLQz2IVICNCgdR9dA+zrL3uW1o51wvNidNwOOWJSO
 Hdpz5b4q7OyjBI7A7OAalxRvZ5/VorTlPW8hfkCZleJnDFbV5hvTnO+ddPvPtoRwRMpX
 nAtg==
X-Gm-Message-State: AOAM530stb31sxqeH73gNFkD2F5kWZdLgBLbm5mcAoQB7KZ9/hW1yKIl
 Dbpu2podaeic0wOlILnxatk=
X-Google-Smtp-Source: ABdhPJybhG2sFlGgCbW76SCPoPv85702fLqv89akUJ8LhblfPozxj/blYPKtMYJPABXwj3KRqfqXcg==
X-Received: by 2002:aa7:db90:: with SMTP id u16mr16072806edt.106.1623003401891; 
 Sun, 06 Jun 2021 11:16:41 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id qq26sm4415932ejb.6.2021.06.06.11.16.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Jun 2021 11:16:41 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: fix supply properties in io-domains nodes
Date: Sun,  6 Jun 2021 20:16:32 +0200
Message-Id: <20210606181632.13371-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210606_111645_011914_209C4650 
X-CRM114-Status: GOOD (  11.41  )
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

A test with rockchip-io-domain.yaml gives notifications
for supply properties in io-domains nodes.
Fix them all into ".*-supply$" format.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288-rock2-som.dtsi | 2 +-
 arch/arm/boot/dts/rk3288-vyasa.dts      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-rock2-som.dtsi b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
index 44bb5e6f8..76363b8af 100644
--- a/arch/arm/boot/dts/rk3288-rock2-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
@@ -218,7 +218,7 @@
 	flash0-supply = <&vcc_flash>;
 	flash1-supply = <&vccio_pmu>;
 	gpio30-supply = <&vccio_pmu>;
-	gpio1830 = <&vcc_io>;
+	gpio1830-supply = <&vcc_io>;
 	lcdc-supply = <&vcc_io>;
 	sdcard-supply = <&vccio_sd>;
 	wifi-supply = <&vcc_18>;
diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index aa50f8ed4..b156a83eb 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -379,10 +379,10 @@
 	audio-supply = <&vcc_18>;
 	bb-supply = <&vcc_io>;
 	dvp-supply = <&vcc_io>;
-	flash0-suuply = <&vcc_18>;
+	flash0-supply = <&vcc_18>;
 	flash1-supply = <&vcc_lan>;
 	gpio30-supply = <&vcc_io>;
-	gpio1830 = <&vcc_io>;
+	gpio1830-supply = <&vcc_io>;
 	lcdc-supply = <&vcc_io>;
 	sdcard-supply = <&vccio_sd>;
 	wifi-supply = <&vcc_18>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
