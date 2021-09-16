Return-Path: <SRS0=2I9J=OG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0432FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 19:42:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B54BA61212
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 19:42:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B54BA61212
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WD9hXsNJXnuDWAOx3WarJ7sF5Dhjgs6F8+9JbDjYY7g=; b=xodvpGp/wIJ/fg
	cwKpQSl+Xr1yU6AcBttGa9h1ju1XJSibdyasczzfq7GfMM6myYYmddWkOW1StxN/TrMuFhY1zI7Vp
	A0gQWQagSwYCgxDLktlRctyPQ+vrBGIzc0mfmBlbgp6+uiWUJKQAt+lJNak+Tk7/cmevilKM1SodL
	3h+W2UNBQMe0lrISJXWUZak7F6e8rE2IuGMmglS3ybMLWKRmi6TKkQzAiB2CHGyie64leBgW9VnZv
	sE0MRA9nvs0owi2AZGwA+HpcUeSQnDIzz7KP3WeBl1p1Pf56R5/9m89iqopoeKwQNkaRqOisQl6s2
	Ab3HubXjhqnoPaQnZiCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQxH3-00CGw9-Uh; Thu, 16 Sep 2021 19:42:21 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQxH1-00CGu2-2M
 for linux-rockchip@lists.infradead.org; Thu, 16 Sep 2021 19:42:21 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 i8-20020a056830402800b0051afc3e373aso9778483ots.5
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 12:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CTuSMH4A7Ffb6ZlHMh0V3hg0lEYSc6xST4UQtOrkdPg=;
 b=iDHZt+X3Ab83QWM+zioYv8T9mPVyWyN18lkIQ67D0wE5HebPGEb8XAXU1FmswZdEON
 0I8TR39I0TIgpEMqMnTVu3GO4vSIiNv2zZORBrfBCCVr+BS6POJsjYC2SeJN+OMg81ns
 YvzHde2N5G1pDD58k5cO7tnBF9CdEetD4wjAZwvEFv/dO56IVkMBwq8nPZE46Ruizfkt
 Z4nVz0zFbKptl5Aa4F3Y0kdJDtbGXFnp1xbx7ILUCyoFT0MwbxDzactX+fLOl+zQuKTG
 ydBoaNphuuV6UOjfj0k2XeXNBqtsnIrMjmdNQ2sxKQQ7d3pFRl6JeMcBSuEy8r+5HXKd
 uASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CTuSMH4A7Ffb6ZlHMh0V3hg0lEYSc6xST4UQtOrkdPg=;
 b=JEQ3EGm/nO4E3LFvUKMSrI2v/Q+al6pMBvAXf6HRcFy7r+m0BMxHy3vHmj4ldzYn36
 22hJf1v0XUG6qo7/KauFT2od5rb9SxsyJsVhGepMtb1lbrwT9kLqng5WtzzfjLtibQPC
 bfzXGPL0F1RaQCKLPd1I/C2/nMzDjy0FMQ1ANDRZe/3srYU3c1yrHcJ+JIWF88wNsp5K
 SkIbgNZGVh/+w8L6pH1E1ciCkFTiL+73aH/hkiea1a/NLUp/bDySM/dSSWTLJDLGZZWt
 g7t/dYy36Z9sLIcfmVSaNe01J0wTMR5YeBa7HV4m1qwRLx3b8BMXKZ3xN3FXKY0woiQH
 3TIA==
X-Gm-Message-State: AOAM531ATH7LA5FAipY1qzOXVzr659rtEzAZ5rgNR56jjO19eOhf5f1R
 SqfjuT/D77z526NjmCXohB8NpCy7XVE=
X-Google-Smtp-Source: ABdhPJwhg8JOIgJgx1O1LOuW4rSayLJgA72Qlw2tltl2ImAglUJNyczSTwL0CnDUqhd49eJOWr3Htg==
X-Received: by 2002:a9d:798f:: with SMTP id h15mr6000781otm.227.1631821337664; 
 Thu, 16 Sep 2021 12:42:17 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id c10sm963359ooi.11.2021.09.16.12.42.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 12:42:17 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: lee.jones@linaro.org, robh+dt@kernel.org, heiko@sntech.de, sre@kernel.org,
 maccraft123mc@gmail.com, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v4 RESEND 4/4] arm64: dts: rockchip: add rk817 charger to
 Odroid Go Advance
Date: Thu, 16 Sep 2021 14:42:08 -0500
Message-Id: <20210916194208.10387-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916194208.10387-1-macroalpha82@gmail.com>
References: <20210916194208.10387-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_124219_145147_4E608A07 
X-CRM114-Status: GOOD (  11.11  )
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
