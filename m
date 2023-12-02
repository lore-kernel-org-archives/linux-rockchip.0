Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7E68C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBESAzA1liCeskNWAN0zPBgdKuIegM2RGEMVpnU+4S4=; b=EkbZ1KYNFguYo2
	cwOMECHxxBBDtVOodP4ETmQbTB+G+Wq/VK5tgrxkcKEZtLwl7pfvae7J+LXldRhPRL9KLoXJ0YOaa
	YM1XPYhfzTJ0FP+LwQ7jA6N8ZTFCfRy/v88SonM5BBC7+zpDz9GXy9bvuIHS7PeHgbjY+bhMsPhFk
	2saELh2pGH3PugTu4QOdLNdPsxep46lIBiWfkqOUZ001T4P7IAFDmdwJfZ6UZzC7UUmXcQuU/mvAE
	pvC1JM1CnjHIaMvPHJqwqgNG90z9BmnDWQ88HIW/UlslvAMbTLX5rXgIORRsLI2wrJaVNZBkG5Vz7
	5g0uqC1JT+pskVIk+8kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PgW-00Fj8q-0W;
	Sat, 02 Dec 2023 13:05:28 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PgP-00Fj4p-2n;
	Sat, 02 Dec 2023 13:05:23 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a195e0145acso303823566b.2;
        Sat, 02 Dec 2023 05:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701522318; x=1702127118; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=adSEYqN8FGT+ykmMCmzGxY6EhaQvEvBv0NcW+fx7a08=;
        b=iWwb/Hm1GBpPkPf1BpZPSQAx/CpoQFH0/Dzi6T33t/gMfLl+zVKhgWsnwwHutnA56G
         jZAnVgZ6/iTNErmero6hK3vWlUl+E+ZuPPI9DSk5mdCdKmJWCi9YTMJwYLjIKn54w4b4
         OGSMIePN3JDQOieg+w53o2eSYznd0TgNklbJ19610neIq5VyhvLpSibjizbP6/vG2mQ8
         sD/sEnC73UFAi0loOiegC7Kl3bC/+Zdtytim1F6+drLv2jMYo2CeAgA48u2g/PsxdOUe
         T/lY8YSVreWSqkGMVp7YD1LQ1RurXwkZxb6QeQhvB1pdqDXd296xBr86+vSphKaamQwb
         ELRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701522318; x=1702127118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=adSEYqN8FGT+ykmMCmzGxY6EhaQvEvBv0NcW+fx7a08=;
        b=Qm4dyzNH/TanZDD4tnmYoRc4PofRbQkCIrqNRJWSq3otBm4P5fXrGIFIBSSQ1c5MCY
         o8rN6jV96QrpH+y2S/tcCVZ1cIbb2Ch0bzeswv9H3GBOF5TFx9f/ZJMizy0qO+7rlJne
         VBjKXklNsFybGc3+NfoCYDBkA4bxajJFYL728Jx2VcEjDL9jAqijVYFVod0TYdgW3zad
         ws0h7vjxwAOWsrj9oN67edD4qZSdoKfdzgYfd+CfZp5W58KC7GOOSa3p51r/aLWIl6pO
         SfY2n5rialPFVfR96JCYsyubb/IbrT3Ry9uAFmFCVWPh4Jrgwp3yDk8k2MbMf/4uTNs2
         QTqA==
X-Gm-Message-State: AOJu0YzEN6nMChY/zEGf8rWU6mYJXKyFF6N20CaqjYVXeCYaYY/O4tfC
	+Ux1lwLxyf3XjO0PykuuQw==
X-Google-Smtp-Source: AGHT+IHHKc1ev66uYDB6740dr47fDqVGRCOAVGOBwZCTvCIbkuLo5yoSsdkiAEidwCwLC9bdgrsyPw==
X-Received: by 2002:a17:906:3f5a:b0:a19:a19b:4236 with SMTP id f26-20020a1709063f5a00b00a19a19b4236mr1174545ejj.161.1701522318035;
        Sat, 02 Dec 2023 05:05:18 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id bs5-20020a170906d1c500b00a0bf09c9483sm3045324ejb.35.2023.12.02.05.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 05:05:17 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 1/3] ARM: dts: rockchip: Move gpio aliases to SoC dtsi for RK3128
Date: Sat,  2 Dec 2023 14:05:05 +0100
Message-ID: <20231202130506.66738-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202130506.66738-2-knaerzche@gmail.com>
References: <20231202130506.66738-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_050521_907493_EE8CA463 
X-CRM114-Status: GOOD (  13.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

SoC TRM, SoC datasheet and board schematics always refer to the
same gpio numbers - even if not all are used for a specific board.
In order to not have to re-define them for every board move the
aliases to SoC dtsi for RK3128 like it's being done for most other
Rockchip ARM SoCs.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128-evb.dts      | 4 ----
 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 4 ----
 arch/arm/boot/dts/rockchip/rk3128.dtsi         | 7 +++++++
 3 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128-evb.dts b/arch/arm/boot/dts/rockchip/rk3128-evb.dts
index c38f42497cbd..776a483cc26b 100644
--- a/arch/arm/boot/dts/rockchip/rk3128-evb.dts
+++ b/arch/arm/boot/dts/rockchip/rk3128-evb.dts
@@ -12,10 +12,6 @@ / {
 	compatible = "rockchip,rk3128-evb", "rockchip,rk3128";
 
 	aliases {
-		gpio0 = &gpio0;
-		gpio1 = &gpio1;
-		gpio2 = &gpio2;
-		gpio3 = &gpio3;
 		i2c1 = &i2c1;
 		mmc0 = &emmc;
 	};
diff --git a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
index 61b9f069c8a2..b448e2b96e08 100644
--- a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
+++ b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
@@ -11,10 +11,6 @@ / {
 	compatible = "geniatech,xpi-3128", "rockchip,rk3128";
 
 	aliases {
-		gpio0 = &gpio0;
-		gpio1 = &gpio1;
-		gpio2 = &gpio2;
-		gpio3 = &gpio3;
 		mmc0 = &emmc;
 		mmc1 = &sdmmc;
 		serial0 = &uart1;
diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 4e8b38604ecd..5b751284d6ca 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -15,6 +15,13 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
+	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+	};
+
 	arm-pmu {
 		compatible = "arm,cortex-a7-pmu";
 		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
