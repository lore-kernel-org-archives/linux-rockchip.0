Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E195BC982E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M91z5gwGL6URahacKsdvTT0mNi5WLCO9riFUjOMPwJY=; b=QvT6kEMYh2vKRO
	fizfpbiEPuXVg4TyhOZNB9+WWEGppFPLwg4P5m6IilZc7i0dKt4HMTkD6v+y5BUO0ciAM/Uwu9CQr
	6SsJbCFEZpE9eu/TVBdlmN/n9udmriKvNVkqN2IHIIIk2/fYf6NVx0ZXAd3O5B3n7A65wQ8Qj5nGG
	3/tDk1tcAApGEZe9qjA2yWWPc1LqLE4rTm1qgwVsn4C7RrjAsUxXaPgchZTm3JKrVTxRUfz56JYEK
	8OZcSHanh0dqdGC865fwqZea2B2OlKCr55MX9vpQY8FpGaAPJ2DhGEYyaBQA1o641nP6G4nyJu0Sl
	QJH55zCE4t+FBo1bpDZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xbu-000000011n9-1uut;
	Mon, 21 Sep 2026 06:34:42 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xbp-000000011kl-23iN
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 06:34:40 +0000
Received: by mail-pj2-x11.google.com with SMTP id d9443c01a7336-2d747ed6d6eso25424345ad.2
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 23:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789972476; x=1790577276; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fRntsYs4E9fYKlkmoCACm9WTNuzTjissMMGr/xymIOY=;
        b=H+W3UZCkpplKtALmoi9QwsarRoserzEQi2Jx6GhAnkvhtGwGmRdYRuI2Ep9lWku67u
         OK3FTOGUvuRtAJpqX+3QgImydae/JU6ZujM/HF6FZen9COEFqHQmNbE9GCkuGvdI63qV
         VUFkagTEgLidb93hGgOstMoqKrTPSVY+fcdCrGpnkJYSjRo+A9a/2czSUi184hFFqzX7
         JygXEFl1MHUELMqu84fyMnQm6DrfOsf7bjtl6hzj8BV3wkxCL1mOYM5L8y8Qud0rnJHC
         feLIBvp/aiSh4TWGX1Z4LVnJaRUSZqUg7pw+4CdYzSVx7eWhPF9ZqIkRyEieVxphEaox
         B4Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789972476; x=1790577276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fRntsYs4E9fYKlkmoCACm9WTNuzTjissMMGr/xymIOY=;
        b=MAlMhDwCB2QHzRWFby5p2Bn2/7PE08G51hoRmtbGwoQgRLHKC1MLPXRvaS25TczzHv
         EgWJex9wzorCeGumQDwK0Ee9+J8zr+cl49qGA3XwN2mrYPhpvOzS0ogg2W8f4wDvLvVi
         gSM44ndFp7ZERS8U+NnmaYYlnY9IQR2kHB1P90R6PMPW6JSASrhWDDDJto4RJ1mEssl3
         L6Sjos514Jb4zvNh+p0/qFgU+L/he5JVSqPk5wBLnQrXcB878BeM4cbzKtIGyXu6N7An
         lHWjLJJN0b6HTk1T9IawzDpMM3XnMdRPqY5kLWyWvpqq5xy8gedBrJygx5vEPIcpFV0Z
         Q8Og==
X-Gm-Message-State: AFuF++nQmhoAlH2yK8ZnvGna8tlR9EColV0GVevuyqf+m1d+UVSCVH6y
	pIG9nj4uFazJzGTocomjKX+0IZzOnrt2UhXqcifkGWhmFK1RK19Zhi+DWqpmF5SawV4=
X-Gm-Gg: AYBFou2VT2pKAa0ZeI1jcv5kFMGzb0ybwzaG5PjFzblhJn2Jo2LAw+YYPenIi2sJStK
	sRUiGC5FZ4Pf7ivSADwdVPs+9r1diRizabvhLkJ6GKkpKaeq5+kkPpzb2X5G0fKfk26JltKzoFh
	M96WBHpNqZbZI0eUjEEk1XE3IyTi/VLfBS/TOd5dbef3Wrj2XNB0dAG9rjjIDipBxN5Z6EsDPQC
	QjbOJU2o8d8ctoW9OW4Nc26FA/+X5d0JH2WPacnXO4CI673NZt83m+JBc67qk9n849JMbyFdaX6
	Lx2npeAUtBH2A77YxUpT1718YuA98eAZs4Ch0pSAiEjzsmqsK+zGjJsSVllM0JqyyAtEIw2zu/2
	z1T8Vtxm47Xs1Grjn/WOESOewrKxXJlNf6zTLjrZE0OFaZS/sC3ra2CqzHr0/9JV9kZZtKa+V9p
	wDkm1HzMZLxV9dsy9/I59KZ/2o4WOjzoCXIg5SGHqwP0vwkWMwQoAmgOMfFOa7Tul6BJbaY5IFn
	7O0o+1GZT8=
X-Received: by 2002:a17:903:1107:b0:2dd:c100:4b7e with SMTP id d9443c01a7336-2ddc1005f33mr91679605ad.53.1789972476407;
        Sun, 20 Sep 2026 23:34:36 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ddc179dbd5sm28173565ad.39.2026.09.20.23.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 23:34:36 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] arm64: dts: rockchip: fix audio on Firefly-RK3399
Date: Mon, 21 Sep 2026 14:34:27 +0800
Message-ID: <20260921063431.103-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_233438_273035_B5BA7630 
X-CRM114-Status: GOOD (  13.11  )
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

This supersedes my earlier two-patch series [1].

Patch 1/2 there dropped the &i2s0 override outright. That is wrong: the
i2s0 pin groups also list GPIO4_A0, which carries SCLK_I2S_8CH_OUT, the
codec MCLK. Dropping the override unmuxes that pin and leaves analog
audio dead. I have asked for that series to be dropped. The HDMI patch
depended on it, so it is not resent on its own but as 3/3 here.

1/3 is independent of the other two and fixes a separate bug: the GPIO
that gates the headphone output is muxed by the board file but never
claimed or driven, so the jack has never worked with a mainline kernel.

2/3 and 3/3 have to stay in this order; 3/3 needs the pl330 channels
that 2/3 frees.

Changes in v2:
- 1/3 is new: model the headphone output enable GPIO as a
  simple-audio-amplifier aux device, the way rk3399-roc-pc-plus.dts
  does.
- 2/3 replaces the old 1/2. It now splits GPIO4_A0 into its own pinctrl
  group and gives it to i2s1 before disabling i2s0, instead of just
  removing the override.
- 3/3 is the old 2/2, unchanged apart from the commit message.

Tested on a Firefly-RK3399 running 6.18. What was not done: the patched
tree was not built as a full kernel, and the DTS was compiled and the
resulting DTB inspected instead; the changes were exercised on the board
through an equivalent DTB rather than a kernel built from this tree. I
have no schematic for the board, so 1/3 relies on measurement rather
than on knowing what the GPIO switches.

[1] https://lore.kernel.org/all/20260903082713.192-1-yaozhonguwl@gmail.com/

Yaozhong Li (3):
  arm64: dts: rockchip: fix analog headphone output on rk3399-firefly
  arm64: dts: rockchip: disable unused i2s0 on rk3399-firefly
  arm64: dts: rockchip: enable HDMI audio on rk3399-firefly

 .../boot/dts/rockchip/rk3399-firefly.dts      | 36 +++++++++++++------
 1 file changed, 26 insertions(+), 10 deletions(-)

-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
