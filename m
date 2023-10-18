Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80F1BCDB484
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 16:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X2wy/CPqEXIutkTB4Xa14tFLyoYy8LpFmfYP8DUYn+I=; b=LC9PQh3IkMUYdO
	WSLPDLyo47Crq4KBB2UHIN4eWbvbxNpSWpwkThjHxwnL0kWFuUDfJiK9Pi+vZ83Qm6O0R+t6CM2bd
	DXfwLbcdDpdR4s8IFW3PPXx9Wd1b2ZvBtVa6UoJ8azBoILq21q4kWORGfEjB8I59Zp05yVBAdKukY
	o6VHi9yWSVJHeC+7pWbVkjWVjZ4ZxueLeQ6/NUZoWaf+cyprame7Pb+YVYO3eBfiPG5H7wnZknxlJ
	rl1RgYpbVJX6sbF8YnhBNvepUiAniRNxYmvZToaDavw07qyJAUXLrcldZPpynqiiwyPs+1F4EazZk
	AfQy0RDW/Tm5CA/+dNKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt9G7-00FAAG-2C;
	Wed, 18 Oct 2023 16:18:59 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt9G4-00FA9B-36
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 16:18:58 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3af609c5736so3844962b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Oct 2023 09:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697645935; x=1698250735; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uiAac1jZIi3qZdHU8sW2jL0PSFVOdaZae73ENz4eTLc=;
        b=TdL+aDgUbLv8eVYTYgmSaso6UeAoq1r9ZR4fQrJMP3F004qZtUXoV+2fxsJ+UnhZxg
         BnYstzYGH0xF37wHdplJELKWKlPS6c1Vwq9XaqZ6bGkAYh6it+wgFjn44CL+qk8dAlC+
         basyXLxGB6tm3crmkeXrW87garGs6ocLokYo+aT33Rl4WFQYNAma4gi9uhauEvtjIXsx
         VOiCByCPybEKs6W5Uy6sq7uc7m8A3cRnhndSO8Qgj/4IC68iQN5LxTgIq5kho5ldnHOJ
         KlHLVMLi4OtKOyia45olf9tVKGuXwipjfsWZu3yWkMZtqRxKsuaCFl/UaLS9yGorTwWW
         ik6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697645935; x=1698250735;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uiAac1jZIi3qZdHU8sW2jL0PSFVOdaZae73ENz4eTLc=;
        b=v/NqpYbG6KT6WFJC1l33FkHlKmqQCTmD4UIvqhmPfQKpItB02eN0VQV9e06dlnG37W
         EUwC3N5nct1XhEas8q+gSzWo7zL6RILpmWjV59VzWIlKNPKSVGREQIrK6i4FcO+ZL+NZ
         r16uXLoOMqkR94nu0i0aO/uMKqOex5CDWYM1w8isfI+IiKFS0KT0UXHHw8dHNieErCjv
         yPRYf0EjeXUyJ9kGMBeby8S3AVsKPJbmI4a6vBz971JG/g4QluHHlta1g7zZiTzTwYBa
         f7Z+JjZqTt/gW/jB94mjjyBxLuC90ZmOK+LqWEeS4bpDH5DKiw5DTjb6MVg//AUwY9DI
         4qNw==
X-Gm-Message-State: AOJu0Yw0UXCn0Wba1LHtKZVP4Sc5wHk7pKdNs9s+q15dlvgr0jbjdQdX
	JpunwjPY/VeBfcuB0/V587iSAORra1U=
X-Google-Smtp-Source: AGHT+IGbqKyxK8GbZ0wAIqZGZTIkMSeTM0jxfnYCf7QtFaDT8lcGzIBN50xecjZC+J4OyJ5S8XoyVw==
X-Received: by 2002:a54:4406:0:b0:3ab:8956:ada4 with SMTP id k6-20020a544406000000b003ab8956ada4mr5220353oiw.10.1697645934869;
        Wed, 18 Oct 2023 09:18:54 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id db14-20020a056808408e00b003afe584ed4fsm697390oib.42.2023.10.18.09.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 09:18:54 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/5] rockchip: Add Powkiddy RK2023
Date: Wed, 18 Oct 2023 11:18:43 -0500
Message-Id: <20231018161848.346947-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_091857_017087_E988B9EB 
X-CRM114-Status: UNSURE (   9.07  )
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

Add support for the Powkiddy RK2023, which is extremely similar to
existing devices from Anbernic.

Chris Morgan (5):
  dt-bindings: display: panel: Update NewVision NV3051D compatibles
  drm/panel: nv3051d: Add Powkiddy RK2023 Panel Support
  clk: rockchip: rk3568: Add PLL rate for 115.2MHz
  dt-bindings: arm: rockchip: Add Powkiddy RK2023
  arm64: dts: rockchip: add Powkiddy RK2023

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../display/panel/newvision,nv3051d.yaml      |   2 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   | 161 ++++++++++++++++++
 drivers/clk/rockchip/clk-rk3568.c             |   1 +
 .../gpu/drm/panel/panel-newvision-nv3051d.c   |  56 ++++--
 6 files changed, 214 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
