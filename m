Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E2E9C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 15:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Spu1B2P8SjDWdsV6QiJ/VMNVRuBBCIA0lpCc7Uvpo9M=; b=sTSdEu96pOt27x
	j7cYqeB7u+zbLs6qflHkNbbhfgkq6vyb1VTAVO/NuJtme9eJWzZv3+evAvEAeK4ntm8aBU/uQxbEX
	mLKNMwf0FPOKd1u5ZZy3lCpzeq8TmLrcmDyESxcMtXhkjDWFU6uYt5gnoUCyymnpGcWZGend/6otD
	fZh2hgVc+kCe4OkGdJZiDZijBsty1MG5DGu7rknP+GpN/8EMzal9CUtPhVZUy1w24B50HkzyKX83u
	GScztXVV6CSxXAb4KbdUBUngWP7f/MNFLxnM6IHVJTfD7hSP5LiHwl/No0c1yaUYyl4m8nt9pP5Bi
	7ZuUoWo5ptODeaG48MsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqczY-00Atpu-JN; Fri, 26 Nov 2021 15:18:24 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqcyt-00AtZd-OM; Fri, 26 Nov 2021 15:17:45 +0000
Received: by mail-wm1-x32b.google.com with SMTP id
 77-20020a1c0450000000b0033123de3425so10998561wme.0; 
 Fri, 26 Nov 2021 07:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OLdg7HwQbvAV+brizYiBW+l2eqA2RggMeGyT4QmZCLk=;
 b=CDwmcHb2iG2QOeb1CvlOm9RbdSKzrqFe7BekiXZt4K+vmADjoAvzYV0+4c3zNnx2/7
 uKerd3PNgCDQzuOvqVkyOTOEvXhzD8N4Sk1JDfZ0zdnB1tMhWNNpj1XB/3SePak6Muus
 aBpjWtiYja+nVVEE3XLRhBx9M6EJFvtDafchSTr43ajNdrssGZ6DQMNJYAftwqaReYVX
 lXNcQ+0mh3mXLzEGiGZxJ7YH70jp/OEprOb7+74pXNNgVqLVNr/Lr/iigSUy1gYsYe5J
 BaL6+/s9T/cTpXzWjgSgz3oO62EwdmcTGGalhguiFWs5nERNBQ4YSBDw14Qn8LyXoz2q
 S2oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OLdg7HwQbvAV+brizYiBW+l2eqA2RggMeGyT4QmZCLk=;
 b=cx1aHhX8WPsqfRcglJN8ySjMihTCJkYW4Y83w0mHO+P0eOIhG3iYorE8R2cRYX124X
 BI11Fknke2QyRQw/dfvswZ0GKxMEAeSWu5hoQj/o6uRVQfophPKFLocdHqfH6EgYXJWz
 Stqfgbixg9XEzWFpOr6Fkc4NToMDvdlNfPliJdGeoqezrK4SU7/RYybT6GgwE+CBDK3v
 CW5E5Ukc0AVqcRu+oKFeAT1zDTP/SUe2D4U4e8CMURRCPzetVN8szsa39btRx0f8YHY9
 1TSwZwXawLx4axDBsUU5wkEyvM1IuuH8GZLJLEzLJtZGoVTmlZP3gbt0wwYJuJrfWahv
 eDTg==
X-Gm-Message-State: AOAM533kmyXUhQX4NT61yQV4iizKI05thNZq0MMopdFTQEvHTMgsxYQT
 HIK1L6CrKmhYElyTQSgVHw==
X-Google-Smtp-Source: ABdhPJwU44ffPVjwrN172U8Rre7Cpin6zr+0rXftU1O55iV/+oAQIjFNWHd9iv8RRByAGuzvl1GFTQ==
X-Received: by 2002:a1c:4d8:: with SMTP id 207mr16246637wme.23.1637939861901; 
 Fri, 26 Nov 2021 07:17:41 -0800 (PST)
Received: from alex-ThinkPad-E480.. (ip5b435a69.dynamic.kabel-deutschland.de.
 [91.67.90.105])
 by smtp.googlemail.com with ESMTPSA id k187sm12323496wme.0.2021.11.26.07.17.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 07:17:41 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ezequiel Garcia <ezequiel@collabora.com>, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Enable the GPU on Quartz64 Model A
Date: Fri, 26 Nov 2021 16:17:29 +0100
Message-Id: <20211126151729.1026566-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211126151729.1026566-1-knaerzche@gmail.com>
References: <20211126151729.1026566-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_071743_831562_60BDF3E0 
X-CRM114-Status: GOOD (  10.46  )
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

From: Ezequiel Garcia <ezequiel@collabora.com>

Enable the GPU core on the Pine64 Quartz64 Model A.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 4d4b2a301b1a..625489c60622 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -205,6 +205,11 @@ &gmac1m0_clkinout
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
