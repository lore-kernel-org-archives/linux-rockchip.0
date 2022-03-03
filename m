Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5253C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 20:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hYf8aZobhdNJJy5JEpMcG1CKGjaL7a6Zvj1bmgHpr8=; b=3VUWeY94f81NeM
	AI7LTiEbYdsgQDm+6poPtkxnozc+HjbbtnFAzG4AyPN9JVCWHlaPZe6M1jSwlY645jZu048WW856u
	ci4ibCjycGkKi1R6Nd5sqsW5rPhkznvraOBPE6gVh66+7kqbIXXiwqTbDALT2vcHuFw4jENivahX6
	z5cXh7+KBuGrXP7aUswoGNyljzlVouDNHylw/j8sMmP/Ik2JWfiQG6YR3aoB2oPZZD0C/p3xq93tH
	U3U8tdZJ4i4qJkUewexdpH/13jQqGjiW6sS2hmRPIAuv47lc46d3iril3F5GRbY2Kt5pCkd1stDwS
	9yHoLhxd8TRzHgwLy1Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPsF3-007jwi-Re; Thu, 03 Mar 2022 20:40:05 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPsF1-007jup-IG
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 20:40:04 +0000
Received: by mail-oi1-x234.google.com with SMTP id k2so5929562oia.2
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 12:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W6ivzEST0/0RmfsLaCOCltq4DgvWGRxDFP541B1VCs8=;
 b=Z1LcOYQlEowy0QyeZxrUoMDteE4xtibDZsUdPTgwGAwZaAcvNkom9Z9tDJRRbMtoUk
 qewA1z6Mvtzir5svwwzzoNIlGeoLwmez44AVqp+983gm7OwxWj5AaUKg/H8GlcPAPKSx
 nX2zlGvcx1KTnv+3S0tQg3H0s1RIXEKUYnk5A9aWx64yhvWJ/2o3JvBlissJJ5BnJluH
 rAGaFTRO0smP1tuA5aI/RSp/2sotfshBY2qjXU96IuxL53U9LzKlcsskxtJ3LC75lSNE
 xvIgdpbRDqatJBCxgdd/wOi7SFeEWCfC9yyjp2jo4truf/MxiTgRa/1GBnt5plYjFVkB
 qmFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W6ivzEST0/0RmfsLaCOCltq4DgvWGRxDFP541B1VCs8=;
 b=nfbX8V2NgiImk1/6rcO8ifzltgrtVXBpD3XVbZQFvwS/Q6pnFOHCP6F7lN1Odbrelt
 Q+6P0znD32G/u/95aULPM9MpfzWXH4c+KcqdGhRwGCxymdq89WpYmhh3rOK2T37AQxjz
 FRRnxQ747yOW1y29vfCt2LbLOp/7lRFBjLzqAlGvWZJ40DtboMQAsLMjf9j0LHVa2+CU
 gZ6NViwGpIOT3U0LcQ6/brVkGUzDWyPAsYYadTMkxQjy50XCGCD/kGBsRDWNu72BWKQ8
 FHcS/Ck/TCKCAMjUO+Ft6/pZim4Icuettj2G7/TCJ0OIS5x6NNbL83V6WOpcLav2Vidy
 FRhw==
X-Gm-Message-State: AOAM533CNTvrfkdCsu6ZOJRRpdcKRJZw/8XzdI/41dh/UrzHR8qzl5+r
 CEbKhdRQdzIuPhsT6kVYK30=
X-Google-Smtp-Source: ABdhPJy+mTCSe/mHq4ifhK65etOUA2QVyk4U43+F1NvlrHbpFv6MKaOfV5N4Xitc4ZKfVgEeixgOPw==
X-Received: by 2002:a05:6808:30a3:b0:2d5:2019:97ac with SMTP id
 bl35-20020a05680830a300b002d5201997acmr6310842oib.40.1646340001821; 
 Thu, 03 Mar 2022 12:40:01 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 l84-20020aca3e57000000b002d97bda3872sm1487822oia.55.2022.03.03.12.40.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 12:40:01 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 1/4 v5] arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
Date: Thu,  3 Mar 2022 14:39:55 -0600
Message-Id: <20220303203958.4904-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220303203958.4904-1-macroalpha82@gmail.com>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_124003_628131_B04BC18E 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
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

The Rockchip rk808 Power Management IC does not have a vcc13 or a
vcc14. The schematics for at least the Pinebook Pro suggest this is
actually vcc1 and vcc2, and may be an artifact from the reference
design schematic).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 --
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi      | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index c2f021a1a18f..20f71317d7ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -472,8 +472,6 @@ rk808: pmic@1b {
 		vcc10-supply = <&vcc_sysin>;
 		vcc11-supply = <&vcc_sysin>;
 		vcc12-supply = <&vcc3v3_sys>;
-		vcc13-supply = <&vcc_sysin>;
-		vcc14-supply = <&vcc_sysin>;
 
 		regulators {
 			/* rk3399 center logic supply */
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index d1aaf8e83391..0e45cc2d195b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -310,8 +310,6 @@ rk808: pmic@1b {
 		vcc10-supply = <&vcc3v3_sys>;
 		vcc11-supply = <&vcc3v3_sys>;
 		vcc12-supply = <&vcc3v3_sys>;
-		vcc13-supply = <&vcc3v3_sys>;
-		vcc14-supply = <&vcc3v3_sys>;
 		vddio-supply = <&vcc_3v0>;
 
 		regulators {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
