Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F749CDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 18:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6xGQAuH9w/e9omT4Ibf+z9wszuezmXKByuXYacka1to=; b=Hg6le5FJlxE5Tw
	8a12iGpn4gmYaJqF8tnE2/eaub+UaVXl3qmsY7+f83MC+OOjZROwvxLqBa5JWt8dvHm8sL2KxbVYj
	1sa5kXzpsX0ZbKSsc7sQDQWJ96FP5Mgq5WXpBESYCV2nMTCScAGJMZmyqFKi3Lv5iN3X/StZYGjP2
	tjoi9YhXdIYLPaTSQ2eSS3XqCQhrS1mFvCBK41hf7HWk2TJKrvO8I/jDQnkNUCLgAWpz/4PS3H0iE
	BJaJcH4/+8WEKOmQmYrAf0gtlelFJ46OcJwCcSlrtxeINTUzPqEbv6sK662M8pYSUkf6vP6gZWDgX
	fAq7s0HXLT++dp58l+8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4M-0043wR-0d;
	Fri, 13 Oct 2023 18:39:30 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4K-0043uZ-1H
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 18:39:29 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3b2b1a7874dso522455b6e.2
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Oct 2023 11:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222365; x=1697827165; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B+4iJr3L/oL+sIJn3dRrv8W005oNdqoHpRNAcI3ngyc=;
        b=OlVVUSwwppHvB3Kj5P6Ut+QHfiRpGCzaKJym4JyYSOXtotPj0KsZg1pY/eyowrbotS
         DjoUhOPBedGI3XlLs5oQMbQD/u7DbMdmV29/XjRBa//FOilqFnzyYu56SVSlu8uVSGUe
         TBJAI5VUXWdTd994mtW/T3VNkRF6aRIwD2cHLQySigRpsVIfuAn7njyDTk5+CV85Nl2d
         xr8s72uiBioklwjP3ZlWM0F7EFUFet+AiN4l16LBOr+gPCNxpsVc02SEfUhglnh3Vuxq
         ry2o4C6Ja/1PwQeFPTyK1oQ6wuo4qK+4IESpS6jqGnmghh/giMzsaHtBQPDNM00lnhHD
         4m1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222365; x=1697827165;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B+4iJr3L/oL+sIJn3dRrv8W005oNdqoHpRNAcI3ngyc=;
        b=iMIPqZ9xcDVG2S9R5CvkiAJqhgvVLhWzd/tsUR6nHgWw65IeGBw1pvIs6QdMzipAy/
         ZFY6ODfgHJzLrHe+XTVnud+oHnNSVFBO5jb1OfdwgAaqZDUVa5MhxMspu9RrUZJMD6rM
         4FdTsfipPmILK1aUJUJgc3k7BSILBOvz/egWFgwBvJYKe0du/eQhojvf6D31fFBvIW8T
         Pmn1NcCvLwmpWWrfwZZ1K7kgX6aRn21bIvEp02W4IY+/blB93T0ohg24+G0pi8fhVFXk
         PJWWIeXIiTxr9HikYoFdSCuththHsPH8G31uEWPMzRHz2sE1Ih6aCAhkAO5lRJi8yINK
         X83Q==
X-Gm-Message-State: AOJu0Yy7CsAScFNpGSLA7RTYQ7Y9nMf6d8KK0riHqxWmLG9FtkAmdX6O
	+0ha2+aqU9Jw2Y3fYHyAzD4XT7fPNbE=
X-Google-Smtp-Source: AGHT+IHJC9V7h7MhayXpUhwpuDTdyl0xVlDREHaqLEmdq1p11Ep4ugULWD3Vjs8KZWefYghyrkmQyQ==
X-Received: by 2002:aca:1b13:0:b0:3ae:2b43:dd4a with SMTP id b19-20020aca1b13000000b003ae2b43dd4amr28374791oib.45.1697222364849;
        Fri, 13 Oct 2023 11:39:24 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:24 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/5] Add Support for RK3566 Powkiddy RGB30
Date: Fri, 13 Oct 2023 13:39:13 -0500
Message-Id: <20231013183918.225666-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_113928_431080_02364A1E 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RGB30 handheld gaming console.

Chris Morgan (5):
  dt-bindings: vendor-prefixes: document Powkiddy
  dt-bindings: panel: Add Powkiddy RGB30 panel compatible
  drm/panel: st7703: Add Powkiddy RGB30 Panel Support
  dt-bindings: arm64: rockchip: add Powkiddy RGB30
  arm64: dts: rockchip: add support for Powkiddy RGB30

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../display/panel/rocktech,jh057n00900.yaml   |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 152 ++++++++++++++++++
 drivers/gpu/drm/panel/panel-sitronix-st7703.c |  89 ++++++++++
 6 files changed, 251 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
