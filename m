Return-Path: <SRS0=PymM=KP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16136C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 09:19:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79B2A6124C
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 09:19:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 79B2A6124C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5amso8DMATLRaQGvew7Kkd+2rw5yyi7kW1szlMPy0lo=; b=rFzrqozayGGd8WJxP8pTwOvqKs
	YNWmfbJ37mlAarRMpOELzFP4cWewO6CUlEihaD1BpYCcwrFYslcHr5SQXTohqp4by7ZJXXfFlbLfG
	wlDEz32NHYabRR5LSuA/h8vRBayjkMojjQhzSqwTmZ21dqb1T1h8EPtynaoJHTEuZOryQKk2/kx6w
	NKZsWu3UjnRoyCunFITVkwYkGRS6l1hvqZ+JtE/ura/kBgy82sd6o9IuL3suroMWq71wjO+4xK0Vb
	1xWy5/B+/T4GxiaIUiOnHDlxbn7HpJRoX8hmgn2gACTbzjqaOR9sZGa44gj8LuiTK4TFsJokwVsgW
	0PZb7OKQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ljepc-006LPL-Qt; Thu, 20 May 2021 09:19:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ljepE-006LMY-N8; Thu, 20 May 2021 09:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=+rOdv3KCbiUqd8c0X4RWj5P62xfZFWST/dV9i1ux5cU=; b=uSXsJBMUhZiCWFP8dVPTqYbSSP
 nEdSA2Ab1v2HJ2i3RxUz/eGA7iLR5MaQMRpj+63poRJw4qJIX3CSl2M9zj/6TEQIyeRMoe35fKSoA
 l8pQvD1SMz7Riz/uxvatoTiLZMryJvM5oCvpX8ZfLxR7r7i8lsJDBECPY7ivf3v/hg0WOB0lnfxhU
 llk3YBSip2eo3S3E2xR9F6AFJu1y8w7dHyyP+jcsE5shf9bbtiJjqn7wBUH9Z8FmDMdFm0xmA5l1j
 Tvrye3ox0QPxOmcBwT/zLo7YmWhjuuIHBhcR2ILV2bBH4BQ0cZVsSehJ/2MZTGpyEEGciLj1HFwD9
 c2riv5aw==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljepB-00G5oi-RP; Thu, 20 May 2021 09:18:39 +0000
Received: by mail-ej1-x62b.google.com with SMTP id gb17so6123550ejc.8;
 Thu, 20 May 2021 02:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+rOdv3KCbiUqd8c0X4RWj5P62xfZFWST/dV9i1ux5cU=;
 b=rViVNkW33eI09Q16b9eoNOV7URSgw7l1JyZaIpZi5hSs1Ws1YCcu8vrnrOiWJ+AKz9
 sAHS8ho3n+vvdPBqeYaViZj9WDy//M8yZAHFyTnXs9aASvQ1cfE+wP0IephC8JK1KDU8
 +Cb0VmpoUAt3PxD6zvfjPkGeVN3Q9L9OmtYZex9TGaPtfpvGg/wjYD7KXtwnpsoKWtIi
 MU4JBUJdKPll7+nbn9NbCjsgTbgS4Ao/ZIjbokoiAHMV3RArlZHIbOCG81uewniq9RJH
 CIlRVadEzj6tkNlBTMd6LhFAhkJexIwVU0HHRzUpqkk28c6mGV8SVUqdIZMC/4Ytq/jP
 WyRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+rOdv3KCbiUqd8c0X4RWj5P62xfZFWST/dV9i1ux5cU=;
 b=V6kGOd3kKmSHCyfiwIKcePQBSNQC2VWIkg9jp52shXf9esgtLF8D7ISSryKDA4b0QY
 UuMmSQUGGuRiMEgcbJo3jZ8w5CfB5+NIXWL64ixQDXlgIeHMPlgfi1ZWogTUdGZKIX7J
 euvUK9WIzkfF1wEeqaZV5vn7uuTZoPr5L58yATSXGABCCXaqDAGKC7n5Vpd1GzGt4qHe
 05Xw3ewXV4rwKToUWO5GU8YKaw+Wm1tqe5DnkAaoDBiGqPf/rlsMDDE8Cyk1rSYCFUKf
 uYhAJrvnkjRnI2/1LIvvO+k3Ui4BIvaSqRgU592Q/GgBTvPRWIgFwlktpCrdS9gqm+it
 3CFQ==
X-Gm-Message-State: AOAM530hE7vLSc8uZGkrHHGh/qYsQkys+7cO9XpKCk9JpDUW+LCSbRTs
 NHBWBGmj3YMsPxipMkLxF2ifoht4y4c=
X-Google-Smtp-Source: ABdhPJyLPLLmdyBirFVZH929Ha5LVQZZMccLL7QdF84RzeWpqUovUNhhouA4eTKFHHQouKxrBE2vYA==
X-Received: by 2002:a17:907:1b06:: with SMTP id
 mp6mr3802773ejc.292.1621502310300; 
 Thu, 20 May 2021 02:18:30 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n8sm1069746ejl.0.2021.05.20.02.18.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 May 2021 02:18:29 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1] ARM: dts: rockchip: move mmc aliases to board dts on
 rk3066/rk3188
Date: Thu, 20 May 2021 11:18:22 +0200
Message-Id: <20210520091822.28491-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210520_021837_911407_C607A317 
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

As suggested by Arnd Bergmann, the newly added mmc aliases
should be board specific, so move them from the general dtsi
to the individual boards.

Suggested-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-bqcurie2.dts   | 5 +++++
 arch/arm/boot/dts/rk3066a-marsboard.dts  | 4 ++++
 arch/arm/boot/dts/rk3066a-mk808.dts      | 5 +++++
 arch/arm/boot/dts/rk3066a-rayeager.dts   | 6 ++++++
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 6 ++++++
 arch/arm/boot/dts/rk3188-px3-evb.dts     | 5 +++++
 arch/arm/boot/dts/rk3188-radxarock.dts   | 4 ++++
 arch/arm/boot/dts/rk3xxx.dtsi            | 3 ---
 8 files changed, 35 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a-bqcurie2.dts b/arch/arm/boot/dts/rk3066a-bqcurie2.dts
index eba7a1344..390aa33cd 100644
--- a/arch/arm/boot/dts/rk3066a-bqcurie2.dts
+++ b/arch/arm/boot/dts/rk3066a-bqcurie2.dts
@@ -12,6 +12,11 @@
 	model = "bq Curie 2";
 	compatible = "mundoreader,bq-curie2", "rockchip,rk3066a";
 
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x40000000>;
diff --git a/arch/arm/boot/dts/rk3066a-marsboard.dts b/arch/arm/boot/dts/rk3066a-marsboard.dts
index 6b121658d..a66d915aa 100644
--- a/arch/arm/boot/dts/rk3066a-marsboard.dts
+++ b/arch/arm/boot/dts/rk3066a-marsboard.dts
@@ -10,6 +10,10 @@
 	model = "MarsBoard RK3066";
 	compatible = "haoyu,marsboard-rk3066", "rockchip,rk3066a";
 
+	aliases {
+		mmc0 = &mmc0;
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x40000000>;
diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index 5fe74c097..a90729f6c 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -10,6 +10,11 @@
 	model = "Rikomagic MK808";
 	compatible = "rikomagic,mk808", "rockchip,rk3066a";
 
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+	};
+
 	chosen {
 		stdout-path = "serial2:115200n8";
 	};
diff --git a/arch/arm/boot/dts/rk3066a-rayeager.dts b/arch/arm/boot/dts/rk3066a-rayeager.dts
index a73e8900c..12b2e59ae 100644
--- a/arch/arm/boot/dts/rk3066a-rayeager.dts
+++ b/arch/arm/boot/dts/rk3066a-rayeager.dts
@@ -11,6 +11,12 @@
 	model = "Rayeager PX2";
 	compatible = "chipspark,rayeager-px2", "rockchip,rk3066a";
 
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &emmc;
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x40000000>;
diff --git a/arch/arm/boot/dts/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
index 66a0ff196..85d3fce01 100644
--- a/arch/arm/boot/dts/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
@@ -13,6 +13,12 @@
 	model = "BQ Edison2 Quad-Core";
 	compatible = "mundoreader,bq-edison2qc", "rockchip,rk3188";
 
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &emmc;
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x80000000>;
diff --git a/arch/arm/boot/dts/rk3188-px3-evb.dts b/arch/arm/boot/dts/rk3188-px3-evb.dts
index c32e1d441..39c60426c 100644
--- a/arch/arm/boot/dts/rk3188-px3-evb.dts
+++ b/arch/arm/boot/dts/rk3188-px3-evb.dts
@@ -11,6 +11,11 @@
 	model = "Rockchip PX3-EVB";
 	compatible = "rockchip,px3-evb", "rockchip,px3", "rockchip,rk3188";
 
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:115200n8";
 	};
diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index b0fef82c0..36c0945f4 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -11,6 +11,10 @@
 	model = "Radxa Rock";
 	compatible = "radxa,rock", "rockchip,rk3188";
 
+	aliases {
+		mmc0 = &mmc0;
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x80000000>;
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index d473552e8..f9bbc2424 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -21,9 +21,6 @@
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
-		mshc0 = &emmc;
-		mshc1 = &mmc0;
-		mshc2 = &mmc1;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
