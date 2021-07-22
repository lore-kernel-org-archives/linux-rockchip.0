Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DE9C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:15:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1946E60EB5
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:15:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1946E60EB5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Jkklq31OZw088lBDe34OImdt30jn2YhKnj+quQdERU=; b=0df4g5+PGN65fc
	K5IxSP7141rHHnr/xwv69dQasMwi9NYAmsrY7CyoRrSMtb84nWPBy/qbExPf/rfObgPJ6nej9MydX
	blWjWvQYV674CEdtpKhVzNf4V3e1cxGcNT5PWvMyZVw6D9uVg1TakhtxkunIf764BJIhAmFT7rGQo
	+j+u7ykCy1VnTrkFg8ZNuOJdVjOU1RgNB0ZfRP+kVuOx5J2TSBJBf7NGGooAAGs7R+cCWuRu7VFj/
	6Xb3/CbT0RvYllD+CI3yBDKpjsiQPeOpE1Gz/QySNEJIOE/I4ibz9pKkOI1S37MBt02LaPR22GRtR
	4u4IY99iC6D9/OwjKhBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6eAL-002VNi-0z; Thu, 22 Jul 2021 19:15:29 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6e9c-002V8Q-Jx; Thu, 22 Jul 2021 19:14:46 +0000
Received: by mail-ot1-x331.google.com with SMTP id
 o72-20020a9d224e0000b02904bb9756274cso6309224ota.6; 
 Thu, 22 Jul 2021 12:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C+oR6jnz6zJn9wlv4NnQHPf10GKECSgTuicsJlMVTSs=;
 b=VsmrZMkAU5l9/HJfKqzIIT4h9n1WOczI9OjnSQdAy2S9imnZyDS+RKZdSw1rCVzAPB
 /eCM8DmtqSmriBcicEkHqDRyRFrdHM24EqvG1FC8G92ZOrOluNa99S16DbfRruEnOJIY
 Re76Ln3CgfyKspCidfhTZBfa0UprN0c3EZvKgE1FPX/6sMsfcGW40qT0brlwKD3Oo314
 YGSX6CDXKFUQrH/d0pkiry/kpRm9nJPvDZdXepFWXyFEHV1Nthx2aO/U2jjkOA6+c/eD
 TPsQUTMrVN78Y2mwVhhj/6BpS61tTBf31eHrs05l4JALg9W7BwHzaqTt4ZlEW6YFybYu
 IKWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C+oR6jnz6zJn9wlv4NnQHPf10GKECSgTuicsJlMVTSs=;
 b=gWqBrlKy0OAiNxwToTzFEgWh2gZYFxX/1evc5Qy2jR0QUTSzG6V8NtrQPl8fBPlaoC
 3158WDaWqnn5nTM57Aw+JdCAm+7554leoxIBZRXLJ7EO+jMXnfGTfdj7fK6Sifxe3x5w
 SMjLFFbD/RRVyOj+9nza9YRyESKzwUjuuECV/HPmbZzAqhqdzh7VB/GFTqQSrVCHugdJ
 jMBi/lvMlD2v5WVbYM/39sb0t9BZGKVzUAOCuKwtmcT2vGH2RhGdQN4HlyUiOdPVbypk
 tbOf/kpO+EejLlXQPpM1CEvjzF8Z399fW3VEsRFOqMS/fJFVWW5dTQyFMiUPXerdglq8
 VjaA==
X-Gm-Message-State: AOAM530Etl/K8Wh0IJnjwdeAQFvyIxV2/PVu7ocdYIzpZ2jaa9z1O/VB
 BgfXb2kKpKBlUjgmMW2Hr3pz12+Cfos=
X-Google-Smtp-Source: ABdhPJwcM8nmEZbO6iWa5H/3D5ddw+glMuUYtSKPzc4KvWY82aGNIIZ3WLZIH/PSG3oLTjKvE2JAeg==
X-Received: by 2002:a05:6830:18cd:: with SMTP id
 v13mr880898ote.13.1626981283191; 
 Thu, 22 Jul 2021 12:14:43 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id r26sm3106167ooh.32.2021.07.22.12.14.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jul 2021 12:14:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 4/4] arm64: dts: rockchip: add rk817 charger to Odroid Go Advance
Date: Thu, 22 Jul 2021 14:14:30 -0500
Message-Id: <20210722191430.28203-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210722191430.28203-1-macroalpha82@gmail.com>
References: <20210722191430.28203-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_121444_735614_297E6E46 
X-CRM114-Status: GOOD (  11.27  )
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
---
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 7fc674a99a6c..47bff3f2bd14 100644
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
+			rockchip,resistor-sense = <10000>;
+			rockchip,sleep-enter-current = <300000>;
+			rockchip,sleep-filter-current = <100000>;
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
