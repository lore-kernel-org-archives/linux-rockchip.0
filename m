Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C31DC433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 12:24:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B31F261A09
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 12:23:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B31F261A09
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oOSMK62i93n50y4Cwfb2sg4Ca9pIHsQB53SK+/j2lrk=; b=czcvVUUfs5koMRV4p2E+fIRrE
	OtOKiroS9F2Ud10Gtn+iQw+d2t/84cwSPWXBWr6KuJc2f2w2FRjkTXaFOjPD01ppZO5X/yjEkBgm+
	noYvOm3BXeuF39N8bp5/sQepoGHCaBf6D9dsxq6RPtuj00tNmwBK3OznqrUpA2gcH++BvZdRv+Q9a
	FKqfA7yHhsJ8TXAInuvZgZtLaZonj36t/5yhAdSzbJHxLxdlAZKYsoyOJrUyc6ZLIzzZkeilWDn4B
	oRv59zc5gD+DENwJTtJ/ueO6v7NBZWGknq/1i0GQmuy5tt6ILszu5OqjAScGytWcjBX0rrteM0Ai4
	aT3gffemw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP2YC-00H3b8-Ml; Wed, 24 Mar 2021 12:23:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP2X3-00H3AW-Pv; Wed, 24 Mar 2021 12:22:45 +0000
Received: from [95.90.166.74] (helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lP2X2-00009P-Cv; Wed, 24 Mar 2021 13:22:40 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: jagan@amarulasolutions.com, jbx6244@gmail.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, arnd@kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH 6/7] arm64: dts: rockchip: move mmc aliases to board dts on
 rk3368
Date: Wed, 24 Mar 2021 13:22:34 +0100
Message-Id: <20210324122235.1059292-6-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210324122235.1059292-1-heiko@sntech.de>
References: <20210324122235.1059292-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_122241_987498_7615C8AA 
X-CRM114-Status: GOOD (  13.44  )
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

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

As suggested by Arnd Bergmann, the newly added mmc aliases
should be board specific, so move them from the general dtsi
to the individual boards.

Suggested-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi           | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts        | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts    | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi          | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts        | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts            | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi               | 3 ---
 8 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index 87fabc64cc39..15d1fc541c38 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -8,6 +8,10 @@
 #include "rk3368.dtsi"
 
 / {
+	aliases {
+		mmc0 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:115200n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index 46357d1d77cd..62aa97a0b8c9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -11,6 +11,10 @@ / {
 	model = "GeekBox";
 	compatible = "geekbuying,geekbox", "rockchip,rk3368";
 
+	aliases {
+		mmc0 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:115200n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
index f3a397b7eba0..b508b16657d6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
@@ -10,6 +10,10 @@ / {
 	model = "Theobroma Systems RK3368-uQ7 Baseboard";
 	compatible = "tsd,rk3368-lion-haikou", "rockchip,rk3368";
 
+	aliases {
+		mmc1 = &sdmmc;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index 2ae5fb4c8516..51da69cfcdde 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -7,6 +7,10 @@
 #include "rk3368.dtsi"
 
 / {
+	aliases {
+		mmc0 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index ecce16ecc9c3..3ebe15e03cf4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -11,6 +11,11 @@ / {
 	model = "Rockchip Orion R68";
 	compatible = "tronsmart,orion-r68-meta", "rockchip,rk3368";
 
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:115200n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
index 5ffd7b4d3036..5ccaa5f7a370 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
@@ -11,6 +11,11 @@ / {
 	model = "Rockchip PX5 EVB";
 	compatible = "rockchip,px5-evb", "rockchip,px5", "rockchip,rk3368";
 
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial4:115200n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 2582fa4b90e2..959d3cc801f2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -11,6 +11,11 @@ / {
 	model = "Rockchip R88";
 	compatible = "rockchip,r88", "rockchip,rk3368";
 
+	aliases {
+		mmc0 = &sdio0;
+		mmc1 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:115200n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 789b1197fe28..d85242a6a40c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -26,9 +26,6 @@ aliases {
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
-		mmc0 = &sdmmc;
-		mmc1 = &sdio0;
-		mmc2 = &emmc;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
