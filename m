Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40E6FC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 21:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+13Ljd3hvhmpyTw4WI7Q4eEAUq5zCgcZWDPP138lB0=; b=ZYQ0Z6qAlFxadW
	HMAYLcDWXbwVJovJ8cQX/M9Ixwxxv/LMtbrRh7TyvmRP2yhFwvfqxl5tAuiRyVZ+AlO7J/pW5dO4o
	n798gwWGdprXREowICGA11wRQjETD5Q/qOIDyi7PdpTqyID/NEA3v/ez8R/rlKJHNcpWp4j1NI0ct
	57SfxvJLixAGpd2/arsj5YYXEY3zex4dAn6we60fmXY+5GxmK4REzS6cT6jNXqDU6GKP1ldDnvM5w
	PjuOv28cv84rMiCvOf759zY3PjzGZaIE1vKPsFTymdU5MtUAEvrFSse+frf9Rrstp2GvH6WVJljOb
	kszys2iUQc5SDWw8TayA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncw2z-001Iho-Ba; Fri, 08 Apr 2022 21:21:37 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncw2v-001IeV-KI
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 21:21:35 +0000
Received: by mail-oi1-x229.google.com with SMTP id j83so10118442oih.6
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Apr 2022 14:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vAncHnLBpOlRUc0OOfu8cfX5QtgUJCxxL9tQZFajpgg=;
 b=eBrJh77ttbk7uak8/KwhrN0FgVTJhtQBH37Uvro0w1QPQSCdWGUFWk+Hoy5kAmN6/3
 9D14l10vBYL6DzGyxJinf5N8HJMfvNtO2Y4M8uz7g+pbFoezv3fwOhYR0v0o0cBOUKEk
 iaMMMQF2Vh0CRsh673U2cCcXjczsQocMyeU6pn6zL23yRM/iFmcQeFSGMVWf8uvsMuZ3
 q1LDicFiQB3VudXZnnuFQ7ylqWuC3dEMLOvyZvHISPz8E9Ckx3+JdoG0wOuexBcA4RXD
 FJhMR7FLx8lNc1VSXjLpEmeKRS09eE5uTOhwB6cEmgk+ruLSIkONrYtMJvA61kKf/S4e
 f6jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vAncHnLBpOlRUc0OOfu8cfX5QtgUJCxxL9tQZFajpgg=;
 b=NTYMnnoRI/A0IKAnDSu8JjoJnlTtq+on5ZZcJesLLWIvlHwUWPz1kiyQimR/v+FB/c
 NDPO2DuvGYyHehi0Q1goBTBJLmYqOF3z0uuNpOzFYOn8zvkupYRUyVUaTr0Ez8/mBIb/
 hqhEV0pcm91vlulkraVPUjboyox6lC4G5rGfldSVw4/VAx7+2Ms1VnCNLZaTKuFlKPK5
 NFNw5JyEEEaO4osSs3SDIsx4qvZKMsmq+mPiEGONyCk7lSkA5aEYGGFuQkW6HO+P2C/7
 GJ8lUuVLiKEa7rMSs06goQiZoo/9LJf1PrH8k2GW2GfyEHKW7pZHLVHO6IoQKCisTXp9
 2JyA==
X-Gm-Message-State: AOAM531z0s0oLYbo2gHhR+WYzbDfv2Ew5ofPHbgrNtpvBWHt535PpasM
 nvZbRTLdWGA0wJhSF461LxM=
X-Google-Smtp-Source: ABdhPJwaBfTYmCbKEOtZhUm8UpxJ14O2ovNkTUdcFOP4pDItDbSIOkT/gs/Pww3s+6KRvrqny58tnA==
X-Received: by 2002:a05:6808:23cd:b0:2ec:f109:689a with SMTP id
 bq13-20020a05680823cd00b002ecf109689amr785881oib.280.1649452891755; 
 Fri, 08 Apr 2022 14:21:31 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 ep36-20020a056870a9a400b000de98fe4869sm9950375oab.35.2022.04.08.14.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 14:21:31 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, maccraft123mc@gmail.com,
 jon.lin@rock-chips.com, sre@kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4 v6] arm64: dts: rockchip: add rk817 chg to Odroid Go
 Advance
Date: Fri,  8 Apr 2022 16:21:21 -0500
Message-Id: <20220408212121.9368-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408212121.9368-1-macroalpha82@gmail.com>
References: <20220408212121.9368-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_142133_721743_FA7669EA 
X-CRM114-Status: GOOD (  10.49  )
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
index ea0695b51ecd..ba72e6716e8c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -52,6 +52,25 @@ backlight: backlight {
 		pwms = <&pwm1 0 25000 0>;
 	};
 
+	battery: battery {
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
+		ocv-capacity-table-0 =	<4046950 100>, <4001920 95>, <3967900 90>, <3919950 85>,
+					<3888450 80>, <3861850 75>, <3831540 70>, <3799130 65>,
+					<3768190 60>, <3745650 55>, <3726610 50>, <3711630 45>,
+					<3696720 40>, <3685660 35>, <3674950 30>, <3663050 25>,
+					<3649470 20>, <3635260 15>, <3616920 10>, <3592440 5>,
+					<3574170 0>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -472,6 +491,13 @@ usb_midu: BOOST {
 			};
 		};
 
+		rk817_charger: charger {
+			monitored-battery = <&battery>;
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
