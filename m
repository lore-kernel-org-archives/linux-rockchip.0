Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3B28CA0EC0
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 20:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7W/VRasEdUndsG6HHykpSxlTE4ZNUNUz0y3LlG4NDGk=; b=SbL/ZjTD6Sxrhg
	5FTvvOieG3FKFp3GqXnAyZeUCAHAeOMdCn0AGZwJ4dRVTKdrqyyOyPqc21sWNJv6fAc695OmGwe26
	I9AUYXVAWuA1BLMgtjOJEQTTkjBMj3/gdFFHalvYodZTBxUNHrDicejGeEyJaKSm1iWx2u8FgTKqM
	iPXEEYmEjnPBhvXL25hachDGDNxjA1fGILaWS6d9VUAlMUETsmUTaYO0+fRgtQ48uQQ7v9IJzo8mC
	oe0Ce1KwFWPGptS+W5Yr2PBzJuHKUN5chveR4IwwQHGe7hzRkryfdZuj3oJVenpYeYXFyo04W1PT2
	c0gJLp0qZFwqgZslPppA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjm3Y-00000003asu-0xvz;
	Thu, 29 Aug 2024 20:47:48 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjm3T-00000003aqc-03wW
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 20:47:44 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-27022a3536dso603590fac.2
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2024 13:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724964461; x=1725569261; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ULyg5DrbE83MLt5D02Opd3Meiyosp7X0ayJMd3uEYO0=;
        b=XsF+PQUQ3GTRi3DcjGMachpqq6qnFPemtCxZwt/tH3HPVL7U+Q9RiMnXR5HayNBQBO
         /SJ7TXZ0B8ruhSQcNBmaZvP5+3aNRXo6kIbmFYQbCnkR198T5Rm2LSULMg2KzHNL5TVt
         qg/hjjwy+zlX/WDYg6v5rGhiXeHv8IVlaMgFJq2TmFikjD92HeYgJQv8Ykyv5WVIo+jg
         YR0YEKGdyMpLzCtzoFGBm4JNnKPORxT+UZpcS8LjzleunV9N0tYBpD/JoRZyc+Xy9nDs
         7xJbAHmpkOI070Zwm/qtQFw+5Yc0u+VH05jtuswfrcM3zszukBpfOTw3txtGEtxOxbRh
         vHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724964461; x=1725569261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ULyg5DrbE83MLt5D02Opd3Meiyosp7X0ayJMd3uEYO0=;
        b=V3184hapXLSaVFuGtc/AxHsBeBZ3uR9Ws9mVodeqw1AHzln7bB+zGIDKub6WnrASEb
         rjB3A9UYguD6ImmeiMP3Z9Szc4RMhdPTM92FRuom6LddajPEgBWEakqhNkgJoZuADszn
         R9Uppzr1aWgEP8g2YDYYCHmU7ydtamUKpT6DA/kPpinIb0Fb6FjQrKu0qmPimUKJQUnU
         awdsq2e//M7KYatpNqStYUsMoc7tvsRxA/QqGTAIGdbx3tnqejWbJ5uL589ojfkNnIkW
         KdN4bfkxhci8+sG/7//UWH+ugsVDjcqBUZkzHS1tG6JCnEhVcMHncPjrNGnsULhsoUXw
         dAew==
X-Gm-Message-State: AOJu0Yx2Wl5Zt+vsI4EY462ofhjlvmYeW0p1SiaP7bDMMZvPSp7B1Ye/
	tazm/s+PNbkP1uL4Wk3BOgJNwptsbehgQHaMFw13OM7Md01hJNXzcdbo4g==
X-Google-Smtp-Source: AGHT+IHmIPH6CKY2gYhk8AMVA3OpKNbjbEebrMb3msVXFjyKdrKA2uQ0ty+cY1oz0fgWBcF+/a0PKw==
X-Received: by 2002:a05:6871:ca0f:b0:260:e2ea:e67f with SMTP id 586e51a60fabf-27790080fbemr4069376fac.10.1724964460941;
        Thu, 29 Aug 2024 13:47:40 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abd13b1esm86639fac.42.2024.08.29.13.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 13:47:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	zzc@rock-chips.com,
	andyshrk@163.com,
	jonas@kwiboo.se,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/3] arm64: dts: rockchip: rk3588s fix sdio pins to pull up
Date: Thu, 29 Aug 2024 15:45:15 -0500
Message-Id: <20240829204517.398669-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240829204517.398669-1-macroalpha82@gmail.com>
References: <20240829204517.398669-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_134743_279922_69D16DAE 
X-CRM114-Status: GOOD (  10.98  )
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

From: Alex Zhao <zzc@rock-chips.com>

The sdio requires the cmd and data pins to pull up by soc.

Signed-off-by: Alex Zhao <zzc@rock-chips.com>
[adapted to pinctrl filename change]
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
index 30db12c4fc82..d1368418502a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
@@ -2449,15 +2449,15 @@ sdiom1_pins: sdiom1-pins {
 				/* sdio_clk_m1 */
 				<3 RK_PA5 2 &pcfg_pull_none>,
 				/* sdio_cmd_m1 */
-				<3 RK_PA4 2 &pcfg_pull_none>,
+				<3 RK_PA4 2 &pcfg_pull_up>,
 				/* sdio_d0_m1 */
-				<3 RK_PA0 2 &pcfg_pull_none>,
+				<3 RK_PA0 2 &pcfg_pull_up>,
 				/* sdio_d1_m1 */
-				<3 RK_PA1 2 &pcfg_pull_none>,
+				<3 RK_PA1 2 &pcfg_pull_up>,
 				/* sdio_d2_m1 */
-				<3 RK_PA2 2 &pcfg_pull_none>,
+				<3 RK_PA2 2 &pcfg_pull_up>,
 				/* sdio_d3_m1 */
-				<3 RK_PA3 2 &pcfg_pull_none>;
+				<3 RK_PA3 2 &pcfg_pull_up>;
 		};
 	};
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
