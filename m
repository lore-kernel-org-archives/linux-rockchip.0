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
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E72C11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80E8C610FB
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 80E8C610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Of1GaiHOG204uhLaONbprhoRuyobQzYRSzJyyvEcYY=; b=aFupFxB4fTPNWV
	wGJj0Fjl1nrvtf6S/2UP+GqOzw1ohWezGgXvM47HgqeCbf3yE3mZl0OVTRFWowWWufyPIKB6NOk1w
	EnOo5WCQcrD2pArvY9v/bIy+s3ZMQUqyNrfhMfVyitL5pGxnTQCWG0QhmOGr0w3yMbeDI+/lmjQED
	+PTh7doXLwZR8Astgyc0YotQENBshUtSExdW+imiU7kWhw2bVQxRNP1tYRv58tE4P7phH5/f9y6NL
	MQOnLlruo4eRnEQEi61RP4egzt/ujSyzHzGRYBvLNONBUGo8a178ZOFAJ7+/YS58QxTco9j/3v9LR
	3DnjBgsC6dTNnmpOum9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyczY-00Eima-6g; Wed, 30 Jun 2021 16:23:12 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyczS-00EijP-VE
 for linux-rockchip@lists.infradead.org; Wed, 30 Jun 2021 16:23:09 +0000
Received: by mail-ed1-x52b.google.com with SMTP id t3so4078029edc.7
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Jun 2021 09:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jibHvBV6IcP0OqZW0lFfbAq8RE5yIECDDpR3j7HPNQI=;
 b=k9xICGLxtJVGOA5FGQbAfJb65KcaE4Tk1bAov5zvlu6QlMUiw69TJHtrPZ+5nTueut
 EsoJvG7V9k0GYWXlBxx17eyrasTnTjfqocOvaMUevVzcpN+7/lAiejYv7AykFSP3zcOC
 trjJz3vcaKkr/SOgTLgNSLPrN53I9VDG3Ib+zxfEpBXdXvPfJQ0JuoLnjB7CzJ+2IYrU
 Fsuvu+6jF0eRoNFcQE6jmurNqCFEZWhgJldHnARjtgnlpbV5a5G67fRECo6lN7GB79+U
 mg+F18fOWigH9pxj+iTjdHppD3sAZ6ndY9gunxU6qeHi/jjcbtmQ4zNLkPnZMbKi/lmX
 irgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jibHvBV6IcP0OqZW0lFfbAq8RE5yIECDDpR3j7HPNQI=;
 b=McLlH4m9qfcBUznkkocB0x0jWe9N9vWPzNxHJWjSZEvOHv3yWlu4s14M4qnoQyPvY8
 zdGHSPIrh2ZZgwhy2QwNR+l7kFonDsw0yhMLnlURVy6S90hrzZvPcFUXlYDVPYdT2HB0
 0XNlB7gIF9X+L0OreYwi3ckkbK7JwUe8Af8P7uOYGC6RDFFT5TrJ9tuBGbkQ0Htua9EY
 vCdFwfCpk75v50xANGGU9CVBapCQ/DKDavxUv9e0XObnCto+GUKT2Y4k+1nqKtbzd8mP
 lskPYX71t78eVbJdSDlnT0IXzEm54lMm07EPRKVQi3NthbFza/CsLrulQJUbQNM1kWnX
 k0bQ==
X-Gm-Message-State: AOAM5329KLM+eaa4UQ+PMzOq5T1XWTaxIOFEag8iW3j/UQ5tGDAXGhY+
 1lCtYNW24a1/gPfcMGI2WOwfdaOXbPV/Zg==
X-Google-Smtp-Source: ABdhPJyQnSJZrcSo32nLk6M0As5vYxljT67VXf9g8GDMj7NkZ1dfs8QaLXXCSJQfpcatHba57Rl9uQ==
X-Received: by 2002:a05:6402:14ca:: with SMTP id
 f10mr48168129edx.141.1625070185480; 
 Wed, 30 Jun 2021 09:23:05 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u17sm13091168edt.67.2021.06.30.09.23.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Jun 2021 09:23:05 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, heiko@sntech.de,
 mail@david-bauer.net, ldevulder@suse.com, wens@csie.org,
 banglang.huang@foxmail.com, matwey.kornilov@gmail.com,
 u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
Subject: [RFC PATCH v1 3/6] arm: dts: rockchip: move mmc aliases to board files
Date: Wed, 30 Jun 2021 18:22:48 +0200
Message-Id: <20210630162251.7378-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210630162251.7378-1-jbx6244@gmail.com>
References: <20210630162251.7378-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_092307_070459_0A13713E 
X-CRM114-Status: GOOD (  12.47  )
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

In the Linux DT the recently introduced async probe on mmc devices
can shuffle block IDs. Pin them to fixed values to ease booting
in environments where UUIDs are not practical.
The newly added mmc aliases should be board specific,
so move them from the general dtsi to the individual boards.
Sort aliases on reg order when available and without number gap.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/dts/rk3328-evb.dts        | 6 ++++++
 arch/arm/dts/rk3328-nanopi-r2s.dts | 4 ++++
 arch/arm/dts/rk3328-roc-cc.dts     | 5 +++++
 arch/arm/dts/rk3328-rock-pi-e.dts  | 5 +++++
 arch/arm/dts/rk3328-rock64.dts     | 5 +++++
 arch/arm/dts/rk3328-u-boot.dtsi    | 2 --
 6 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/rk3328-evb.dts b/arch/arm/dts/rk3328-evb.dts
index a0000d072c..832773d0fd 100644
--- a/arch/arm/dts/rk3328-evb.dts
+++ b/arch/arm/dts/rk3328-evb.dts
@@ -10,6 +10,12 @@
 	model = "Rockchip RK3328 EVB";
 	compatible = "rockchip,rk3328-evb", "rockchip,rk3328";
 
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdio;
+		mmc2 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm/dts/rk3328-nanopi-r2s.dts b/arch/arm/dts/rk3328-nanopi-r2s.dts
index b1e45c01a9..92bb282ed9 100644
--- a/arch/arm/dts/rk3328-nanopi-r2s.dts
+++ b/arch/arm/dts/rk3328-nanopi-r2s.dts
@@ -13,6 +13,10 @@
 	model = "FriendlyElec NanoPi R2S";
 	compatible = "friendlyarm,nanopi-r2s", "rockchip,rk3328";
 
+	aliases {
+		mmc0 = &sdmmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm/dts/rk3328-roc-cc.dts b/arch/arm/dts/rk3328-roc-cc.dts
index 8dc4c57fbb..401be93364 100644
--- a/arch/arm/dts/rk3328-roc-cc.dts
+++ b/arch/arm/dts/rk3328-roc-cc.dts
@@ -10,6 +10,11 @@
 	model = "Firefly roc-rk3328-cc";
 	compatible = "firefly,roc-rk3328-cc", "rockchip,rk3328";
 
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm/dts/rk3328-rock-pi-e.dts b/arch/arm/dts/rk3328-rock-pi-e.dts
index 57e36ec609..63e73781f1 100644
--- a/arch/arm/dts/rk3328-rock-pi-e.dts
+++ b/arch/arm/dts/rk3328-rock-pi-e.dts
@@ -10,6 +10,11 @@
 	model = "Radxa Rockpi E";
 	compatible = "radxa,rock-pi-e", "rockchip,rk3328";
 
+	aliases {
+	mmc0 = &sdmmc;
+	mmc1 = &emmc;
+	};
+
 	chosen {
 	stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm/dts/rk3328-rock64.dts b/arch/arm/dts/rk3328-rock64.dts
index 7a78255f52..57a796e220 100644
--- a/arch/arm/dts/rk3328-rock64.dts
+++ b/arch/arm/dts/rk3328-rock64.dts
@@ -10,6 +10,11 @@
 	model = "Pine64 Rock64";
 	compatible = "pine64,rock64", "rockchip,rk3328";
 
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm/dts/rk3328-u-boot.dtsi b/arch/arm/dts/rk3328-u-boot.dtsi
index 1d7bf19192..e00e466d8d 100644
--- a/arch/arm/dts/rk3328-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-u-boot.dtsi
@@ -5,8 +5,6 @@
 
 / {
 	aliases {
-		mmc0 = &emmc;
-		mmc1 = &sdmmc;
 		spi0 = &spi0;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
