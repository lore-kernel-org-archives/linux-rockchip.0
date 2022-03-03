Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F3B7C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 20:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+3qllHXokLTfu85AX93CP1DfzfnB/nFU2ENIRZiorc=; b=lBIUC5+yqT4gRb
	RFSG78Ops4b5hCbt3mdGhKgbYEs40ND1LURFiDFC8xqGO1TjMh+0bcF/JZsgBQ5FmWld5+L1nK9pP
	KkX/wrvuxxJy7v77iYwaX1y5omC8Bm6KOZaMtA9D0CkhCmFKMuYoEtJGqmUD4SZZJgtTJgwol/g6/
	SwsQc/ZbTPvn/0kMlfxPHcux2epzyM5EI3XdwwloK59M076PLwKeiHUTC2HMw44NqzC1hSLwF5+uA
	xxIkNxvBWiDC9PCkAWlMt4csnSuGlDqTkjupe055pj92AaLUHZcRkeb61SCK3V+ThQKc7ZFBG7x0t
	yQIGI5FhFLlKUA3ZEY3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPsF7-007jyE-1B; Thu, 03 Mar 2022 20:40:09 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPsF3-007jw1-Ez
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 20:40:06 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id
 j7-20020a4ad6c7000000b0031c690e4123so7108422oot.11
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 12:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r7cb4wXwgAb+HademO8oitaaEcIq6IRXHXT1fI/1BDs=;
 b=gx1YzsrIcVQpZhgmu1u3ehdKVFuafwrSFuPkP9dZ9Gme+3U5lcti6WXKiGeP53Lh6x
 CycySfHStLNH+Fw9v/qDd+Mabet6ngRTWAOH8RwRe1TRqT3i45wGuNq53PkGJxFxMNsQ
 g17gPj6a6Z0bjSoHiJ3nvjTsIok+HNMFZAAsjWlFLNeXmOq7kQR3OEXi4FlXJkFpCVEB
 7hWf0HxHhUdfO1i221aO8eLlA3T3TNDHPqdKCFMpiKyZpXiSb5kfj1zVB7UW9mBz/DO2
 G9nwbE4qpb2pdsayr7ajQEHgT8mJv7/vNegCp1L5GNp/9hjedednLmpA9gnSBedn8thR
 FvLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r7cb4wXwgAb+HademO8oitaaEcIq6IRXHXT1fI/1BDs=;
 b=FytTwJhzI9wtAZr58K3Jr4ZbuL5QSUHhfAwCW3L0QCRe3+J/cKN06tqlIqZ5gvPPfq
 LJkNAbwiMfV5DY5466F1cawtYmpPWyQxtOc5bJBFBjRGQNGSZeyDroCYgdwoj+nUyTf0
 26olHNblQsIYwUYrfgivrd+D2rjL2FJU1Fao6OMeRpFHjQfoSiCv4/r5mI3nTtLFcBzQ
 8x4fVM4RKVlvBKF/8K/tkVRbzvMPq7yORq0TUZ+6QHRM8zArtxDjh5l8eKooKkXQgaqS
 fkQ3fu68xD0viUYzfNqt9Tah/dWpyI4CJ3u/bHKfyUahBjI7EcK0ESgeO0O/IVqCXhRx
 JXuQ==
X-Gm-Message-State: AOAM531G5F41PeOIAADhsNpRP6qEZWlTDXvcZ6RxJ3kUURo7tFxvUqj2
 a0hHzr9kN+Qyk1ZqfmBax4w=
X-Google-Smtp-Source: ABdhPJweX7avKdv7TQpX8JULbRneigWpI354El1e66GcBIIZ74H4uex6gYBf6JBwkUhKrhKV+Eysdw==
X-Received: by 2002:a4a:db64:0:b0:2ea:37f4:d798 with SMTP id
 o4-20020a4adb64000000b002ea37f4d798mr19461474ood.23.1646340004240; 
 Thu, 03 Mar 2022 12:40:04 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 l84-20020aca3e57000000b002d97bda3872sm1487822oia.55.2022.03.03.12.40.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 12:40:03 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4 v5] dts: rockchip: Update regulator name for PX3
Date: Thu,  3 Mar 2022 14:39:57 -0600
Message-Id: <20220303203958.4904-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220303203958.4904-1-macroalpha82@gmail.com>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_124005_524746_F61898DB 
X-CRM114-Status: GOOD (  11.92  )
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

The regulator name of SWITCH_REG1 does not match any other board
with a rk818 PMIC, nor does it correspond to a regulator in the
rk808-regulator driver. Changing name to SWITCH_REG which is
consistent with other boards and is in the driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm/boot/dts/rk3188-px3-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-px3-evb.dts b/arch/arm/boot/dts/rk3188-px3-evb.dts
index 39c60426c9c9..fc478ac4e781 100644
--- a/arch/arm/boot/dts/rk3188-px3-evb.dts
+++ b/arch/arm/boot/dts/rk3188-px3-evb.dts
@@ -212,7 +212,7 @@ wl_18: LDO_REG8 {
 				regulator-name = "wl_18";
 			};
 
-			lcd_33: SWITCH_REG1 {
+			lcd_33: SWITCH_REG {
 				regulator-name = "lcd_33";
 			};
 		};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
