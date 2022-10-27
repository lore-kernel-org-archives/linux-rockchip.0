Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1F03C38A2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 08:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iw7vBFzLQFFtQatiPj0xyD+X37a6c2umt+GrTrZpg38=; b=p7PIYEiD9+xKoX
	s2StAJPo/8zh+bpyoX/qp96i7vP03ZT8aAAlZclFXW9X3jdejySRjiWlFEnBxko+cZnwtb/jY23u/
	dF7aDSHxHXffhggIPtDT6OpcPMwjImkHbqpF5mU2zal83ELc4LRqCnvzlFJTAC2KX1s8jqPzY/z5m
	jraHIkQ7cnvNynxUUNcBQ8sI665N4LlsMT99oIk0wWU+mIhD7mfPOsyu9z9dlJL0j/E5DTJrEOagJ
	cyipUqB47KGUT1WCeH4Ra42Ea3COIKjW2IBzqPmzf0NSG+fCax5a/FQwXmVlKp/4RuvLZODK1qhV9
	aZwEoszgc/sPYVyvb4sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyPb-00CQgj-CI; Thu, 27 Oct 2022 08:38:51 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyPP-00CQcb-Ty; Thu, 27 Oct 2022 08:38:41 +0000
Received: by mail-ed1-x52a.google.com with SMTP id i21so1459627edj.10;
        Thu, 27 Oct 2022 01:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=puwTlLP9lmf0zgYvX1dMoVhRhEqgzhe1ybxuYXcJx78=;
        b=olbjbkkA5TroRbqv12SWc+RlX22yHHX0FKgAQgyNP/fETknI3U7L3O+JaviZGx1ArZ
         jZtTw84Nowlu3Gma+VVhukw0QvM/tw0tlWXDoi8bxj3cstvOylI2OiP2ia0aTtqOzz9R
         0Rv6btHw/jf8nd+kIB9x5fzZyiCf3G75vLLqVpepEvtVqKhvEAOqN37AQNMtW5PP8tsf
         0YKxe0ljnzki3QGs/74EXI7hmR8S75ZdD6oJMtQalbnTXoFQyyVxVyyKLSzgOGs46XTg
         QCrpuQH+z7IkoIcrOw8PbyYbwNWu/hF7jU5sGiYoHn083ws4ZmU4d9Ch0g4QNTeOwTWV
         T2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=puwTlLP9lmf0zgYvX1dMoVhRhEqgzhe1ybxuYXcJx78=;
        b=DcrQ39MGV7WTnaIBJr45l+G+E3elOY4CNT478pMJG/2luV4ctXNnq+3+NdGit30f5o
         4VbZErMZcTo7wSkk/2lYdsVBCx9Wl98L6A14NFfrA89yqfsIL/6aYtqyDKKwEK5NXrkw
         TeIMdyYwhkrGTiSV3ym3vDeMmNioqHj2sC43IckBaVq5nn9pxVbBatBp6cMWeqVaM7qq
         HiuapU3A0XQm15BRrsq7IZymfSYx4HEI/yn2e1WoEnHWpSW8lXkCeL1lv7zwBrPF/aqs
         do7jmMfr4K91eFBcK1Ifa1pl62jAaAex8W4o74ke24HWWsz9j/3Jh7XiRrR1LQT5c7iC
         o2fg==
X-Gm-Message-State: ACrzQf3i7UYcUjIv5w+wI8H5l09zhhix1o/nCYt/4USL7MKj2J523jWv
	47ak2Whe1HBj6fR2QoKKaBAb8LA/OM4=
X-Google-Smtp-Source: AMsMyM7eDpvxt6NJ4zfhtmQVmVnalVbjIbbxtutpxE2DiOdFP+n1WYc13lGIBVeu8eRb7KuxVh7+ag==
X-Received: by 2002:a05:6402:2893:b0:461:59fd:9b4 with SMTP id eg19-20020a056402289300b0046159fd09b4mr27999036edb.389.1666859917112;
        Thu, 27 Oct 2022 01:38:37 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id w15-20020a056402268f00b004615bea1d5bsm615517edd.35.2022.10.27.01.38.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 01:38:36 -0700 (PDT)
Message-ID: <6a6a3603-5540-cacc-2672-c015af1ec684@gmail.com>
Date: Thu, 27 Oct 2022 10:38:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/2] arm64: dts: rockchip: fix adc-keys sub node names
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <7a0013b1-3a55-a344-e9ea-eacb4b49433c@gmail.com>
Content-Language: en-US
In-Reply-To: <7a0013b1-3a55-a344-e9ea-eacb4b49433c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_013840_000385_EF8040B9 
X-CRM114-Status: GOOD (  10.93  )
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

Fix adc-keys sub node names on Rockchip boards,
so that they match with regex: '^button-'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts            | 10 +++++-----
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts          | 12 ++++++------
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts      |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts   |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi      |  2 +-
 .../boot/dts/rockchip/rk3399-sapphire-excavator.dts  |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi    |  2 +-
 10 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 07008d844..c1bbd555f 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -30,31 +30,31 @@
 		keyup-threshold-microvolt = <1800000>;
 		poll-interval = <100>;

-		esc-key {
+		button-esc {
 			label = "esc";
 			linux,code = <KEY_ESC>;
 			press-threshold-microvolt = <1310000>;
 		};

-		home-key {
+		button-home {
 			label = "home";
 			linux,code = <KEY_HOME>;
 			press-threshold-microvolt = <624000>;
 		};

-		menu-key {
+		button-menu {
 			label = "menu";
 			linux,code = <KEY_MENU>;
 			press-threshold-microvolt = <987000>;
 		};

-		vol-down-key {
+		button-down {
 			label = "volume down";
 			linux,code = <KEY_VOLUMEDOWN>;
 			press-threshold-microvolt = <300000>;
 		};

-		vol-up-key {
+		button-up {
 			label = "volume up";
 			linux,code = <KEY_VOLUMEUP>;
 			press-threshold-microvolt = <17000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
index 9fe9b0d11..184b84fdd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
@@ -23,7 +23,7 @@
 		poll-interval = <100>;
 		keyup-threshold-microvolt = <1800000>;

-		func-key {
+		button-func {
 			linux,code = <KEY_FN>;
 			label = "function";
 			press-threshold-microvolt = <18000>;
@@ -37,31 +37,31 @@
 		poll-interval = <100>;
 		keyup-threshold-microvolt = <1800000>;

-		esc-key {
+		button-esc {
 			linux,code = <KEY_MICMUTE>;
 			label = "micmute";
 			press-threshold-microvolt = <1130000>;
 		};

-		home-key {
+		button-home {
 			linux,code = <KEY_MODE>;
 			label = "mode";
 			press-threshold-microvolt = <901000>;
 		};

-		menu-key {
+		button-menu {
 			linux,code = <KEY_PLAY>;
 			label = "play";
 			press-threshold-microvolt = <624000>;
 		};

-		vol-down-key {
+		button-down {
 			linux,code = <KEY_VOLUMEDOWN>;
 			label = "volume down";
 			press-threshold-microvolt = <300000>;
 		};

-		vol-up-key {
+		button-up {
 			linux,code = <KEY_VOLUMEUP>;
 			label = "volume up";
 			press-threshold-microvolt = <18000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index 43c928ac9..1deef53a4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -25,7 +25,7 @@
 		keyup-threshold-microvolt = <1800000>;
 		poll-interval = <100>;

-		recovery {
+		button-recovery {
 			label = "recovery";
 			linux,code = <KEY_VENDOR>;
 			press-threshold-microvolt = <17000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 2a332763c..9d9297bc5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -123,7 +123,7 @@
 		keyup-threshold-microvolt = <1800000>;
 		poll-interval = <100>;

-		recovery {
+		button-recovery {
 			label = "Recovery";
 			linux,code = <KEY_VENDOR>;
 			press-threshold-microvolt = <18000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index 452728b82..3bf8f959e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -39,7 +39,7 @@
 		keyup-threshold-microvolt = <1800000>;
 		poll-interval = <100>;

-		recovery {
+		button-recovery {
 			label = "Recovery";
 			linux,code = <KEY_VENDOR>;
 			press-threshold-microvolt = <18000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts
index 72182c58c..65cb21837 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts
@@ -19,7 +19,7 @@
 		keyup-threshold-microvolt = <1500000>;
 		poll-interval = <100>;

-		recovery {
+		button-recovery {
 			label = "Recovery";
 			linux,code = <KEY_VENDOR>;
 			press-threshold-microvolt = <18000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 9e2e246e0..dba4d03bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -52,13 +52,13 @@
 			press-threshold-microvolt = <300000>;
 		};

-		back {
+		button-back {
 			label = "Back";
 			linux,code = <KEY_BACK>;
 			press-threshold-microvolt = <985000>;
 		};

-		menu {
+		button-menu {
 			label = "Menu";
 			linux,code = <KEY_MENU>;
 			press-threshold-microvolt = <1314000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 2f4b1b2e3..bbf1e3f24 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -41,7 +41,7 @@
 		keyup-threshold-microvolt = <1500000>;
 		poll-interval = <100>;

-		recovery {
+		button-recovery {
 			label = "Recovery";
 			linux,code = <KEY_VENDOR>;
 			press-threshold-microvolt = <18000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index 13927e7d0..dbec2b717 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -33,13 +33,13 @@
 			press-threshold-microvolt = <300000>;
 		};

-		back {
+		button-back {
 			label = "Back";
 			linux,code = <KEY_BACK>;
 			press-threshold-microvolt = <985000>;
 		};

-		menu {
+		button-menu {
 			label = "Menu";
 			linux,code = <KEY_MENU>;
 			press-threshold-microvolt = <1314000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 0d4586813..8d61f824c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -23,7 +23,7 @@
 		io-channel-names = "buttons";
 		keyup-threshold-microvolt = <1750000>;

-		recovery {
+		button-recovery {
 			label = "recovery";
 			linux,code = <KEY_VENDOR>;
 			press-threshold-microvolt = <0>;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
