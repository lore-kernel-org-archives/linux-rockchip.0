Return-Path: <SRS0=Jt5i=NB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCEB9C4320A
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Aug 2021 02:55:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9151B6101D
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Aug 2021 02:55:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9151B6101D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WD9hXsNJXnuDWAOx3WarJ7sF5Dhjgs6F8+9JbDjYY7g=; b=BCGahmOfRrofny
	TbHJYKo9KwvNXQycuLKvFkcFcFkrriv0h0rsWiUP8W2aCVRTkVIB/moft5+KkHegZR4rfweBp3jh6
	2+aW7DDwJVsSTWjk6yqLdyn1x8vfO4XZLn+3jjQ17YPTWmKiisTaGceOReCq2AGpH+4/g9yoS4xlQ
	YhkjLO3AkcXd4l7zDWzNC+0T1aUAaoYn587+xEMTvw9DeMUnuzIYcmr15zW/yluCoemEBO/Jgu6LR
	LaZZpf3/DENvIQ1aDOw3F9bXeMhA1F7+wmtSSWfZbBuxtR8ZRui2NSYQtEIuYQkn2KPQyG8Rp8hJX
	GSlWPY7qXy/moeZjnbGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDHur-002J0v-LF; Tue, 10 Aug 2021 02:54:57 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDHup-002Izy-8v
 for linux-rockchip@lists.infradead.org; Tue, 10 Aug 2021 02:54:56 +0000
Received: by mail-ot1-x330.google.com with SMTP id
 v10-20020a9d604a0000b02904fa9613b53dso9439409otj.6
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Aug 2021 19:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CTuSMH4A7Ffb6ZlHMh0V3hg0lEYSc6xST4UQtOrkdPg=;
 b=Mc8XzRnKYGwBFbKGq0j1Ioq0aMvAl1z7h8aGveQLoAawDFeikygiS+FmjQGTkn26vh
 4BgmKsfTk5KVrMfxGHzRS3ql0ZXfzscKc49wgFpeZPFjE0V/Yg+McqqW0P39yHbLU+ht
 uUAQuiDfXpuXiC3CZcmH9eGUDqI6egyuAkbiQmKEZbeb6B2dQ78+1OrW89Xsk0/LwYIQ
 IAX0+mwqRcmC8f+r13bw5mKSxvfuK6RHEB9Udcjc3ldzIUfso67veXp08xMTdNre26ot
 4MqAl66bsCfJhxY3IeJFGb93PEVee1q+CrPnuJeFe87a5Yan+kvD16DqNKhXBtoZ/qlO
 le0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CTuSMH4A7Ffb6ZlHMh0V3hg0lEYSc6xST4UQtOrkdPg=;
 b=WUlWTts2TPGE/LJjcmWDSiYIlq6ChSTYdMbwb6g1MLw7Ov+rCuxKAYRIESXC6S6IRE
 391ltjyG2ho+f3cNTKWkMo9IxawIunUX1d3Ic2ifBaI1sz3+DazL1z1Mawux5VLXVrHT
 zOfD11b5JVBx3wszr2LkU9wsU/gco3UjaER7n1smByfcjcNCCtU87NcrcMjkaBEZS516
 V0lGxu9fHvQtyx35EqsCWiPPx2U1NHO0+o9p4d+KQhy4CnmF309ELCSTxnkiTcmcI8ZJ
 d3/AdBUCY0qVUlnZvJmohoIbHiyl5VFzGE/e/uQHMR5uRBuXux5zi4udVWNFNeLrpHyl
 3lBg==
X-Gm-Message-State: AOAM530S8LpVXZRWoAhPRcc+Muvn/LKpTqhNsUS/46TRoyMaaxAYYLgo
 wxkqXJha3CeqCRtPwXeiP5I=
X-Google-Smtp-Source: ABdhPJwlRVu7yKGk3mooNF1L4OP8yzSS8BwyFARWD8TW5wtBBXh6+oSlKwOLSOpq7w6GK3rgAQJJww==
X-Received: by 2002:a9d:67d9:: with SMTP id c25mr13471087otn.65.1628564094777; 
 Mon, 09 Aug 2021 19:54:54 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id h187sm3654898oif.48.2021.08.09.19.54.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 19:54:54 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org, lee.jones@linaro.org, pgwipeout@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v3 4/4] arm64: dts: rockchip: add rk817 charger to Odroid Go
 Advance
Date: Mon,  9 Aug 2021 21:54:36 -0500
Message-Id: <20210810025436.23367-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210810025436.23367-1-macroalpha82@gmail.com>
References: <20210810025436.23367-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_195455_365999_945B638B 
X-CRM114-Status: GOOD (  11.49  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the new rk817 charger driver to the Odroid Go Advance. Create a
monitored battery node as well for the charger to use. All values
from monitored battery are gathered from the BSP kernel for the
Odroid Go Advance provided by HardKernel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 7fc674a99a6c..aff8d0768c5a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -52,6 +52,25 @@ backlight: backlight {
 		pwms = <&pwm1 0 25000 0>;
 	};
 
+	battery_cell: battery-cell {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3000000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <180000>;
+		voltage-max-design-microvolt = <4100000>;
+		voltage-min-design-microvolt = <3500000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =	<4106000 100>, <4071000 95>, <4018000 90>, <3975000 85>,
+					<3946000 80>, <3908000 75>, <3877000 70>, <3853000 65>,
+					<3834000 60>, <3816000 55>, <3802000 50>, <3788000 45>,
+					<3774000 40>, <3760000 35>, <3748000 30>, <3735000 25>,
+					<3718000 20>, <3697000 15>, <3685000 10>, <3625000 5>,
+					<3500000 0>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -462,6 +481,13 @@ regulator-state-mem {
 			};
 		};
 
+		rk817_battery: battery {
+			monitored-battery = <&battery_cell>;
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <300000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
+		};
+
 		rk817_codec: codec {
 			rockchip,mic-in-differential;
 		};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
