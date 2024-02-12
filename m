Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5140CC4829E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 18:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TRRoVhnjUjlCeZ8FeD3+aubjaA86fmdL28yq8/W/ryA=; b=oPk63h1uUNpJTk
	prwoqQ7kvgiElCI49ph5xESYRDHXlbjI8s0vzf/IzOtbKXd51+3kQbtNfpyb0kCMsZyJ2OzPuHzG5
	2GDml2hwP22NkdDJixpsLlbmryrj5p2vMre6kkV5IvH/vVQC12VeNX+cHKZHSpZXoDAlHKXWV6Jsu
	vmkmHWYh/8JJ6Aec5JZKCyksMIMsutz168BWT1FycngBqMk4sQZj0UBoZLTNI8U4TigLu3MUaTSdP
	wJk1ik0rk/vJfXTwGbFNh5Fieh63nfIjQ1EtMjYM+Pp7f1vMcjM8pNIgYQShAXFGo3bQpqRRrKa5z
	XoE50F8Fle8VfESQ5XAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNT-00000006g55-2ayb;
	Mon, 12 Feb 2024 18:50:03 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNP-00000006g1x-2E4I
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Feb 2024 18:50:01 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6e2ee49ebaaso354988a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Feb 2024 10:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763798; x=1708368598; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BLzcSEHbNUSeOFrNtcrpXIPfOMtCBqOUofoVjSWgQKU=;
        b=b5OrwIRvqP5RH0axpEO4v83jed1GWB93iexjgtKYPT2F6x0P2LvZVwFecEIczzJOPP
         5lP+TQfXg2OOHWP7vjDDyXfv7Gt6mDU9peodpXdkNpZyCYgiuXaG/olW/Ls6lL7GMA1U
         rHHYj3vhbNcXeT8DGFlglP965aRa4mVjJFN5+Fvgz6WW7XmTKqDwMthV+hW0szy9g5t7
         VVeJLEh1Ji+0czPK9DyJHzRBR62fcDuGGS/2D+9hWYNqV0VruI5tJJseEZ0U9aGKIrvp
         TV0ULLAG3hzWJYcHXqms/bgMH/Hd2sv2ptIxA2wNmFPUaArb1KTuhHdRZIhUYDSAD2BU
         jmYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763798; x=1708368598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BLzcSEHbNUSeOFrNtcrpXIPfOMtCBqOUofoVjSWgQKU=;
        b=wYkgQj2uRUrXChHW+LbkJMASkUTEmS7UKBf4C1eeI9LuTShtQa1mVcBGYMPYdPKbpF
         BvtjMC98ndbYVoBDS6DXmPjvLtBtWI1/MWhEOnsv42OJmXzBtKUNLmZgtCZzcKpvtaiC
         k/wT16e7E4i9fs3l7BDh020lgC9fY9t9VMEpyzkuI+mw/JCJHwHy8AGp94mf0Mp1nQXi
         B7ZXnnRL4GObeEw8IqEluUcm22vlZgspUrLYwPWTgOA72aoZiEmM1rI7vjseS9sl+L0O
         2fXrMIka+1Wt3knwuoXqERt23KAUZmkUHNw49zCv8GELfJSNreVY0EwJUsPBblZKJOLx
         DAaA==
X-Gm-Message-State: AOJu0YzX6tDL5FszlnbPk6bq8KFnmEsXk6Houhely2JzrJVvs0KTmJbk
	HSOXkWq1s20W8xhMJ73pMezs6sJKtPjAUdw65fExE1Ao2RIVTPtlPVmy2BMn
X-Google-Smtp-Source: AGHT+IHneg5XD8S4MizRHRt/A1l7Ent/MUBvmmK/9w/tsrBI3iKx6+jgmxqd49TSSEHch/JK9vCwvg==
X-Received: by 2002:a05:6820:d87:b0:59d:3ada:e3dd with SMTP id ek7-20020a0568200d8700b0059d3adae3ddmr5725639oob.0.1707763797902;
        Mon, 12 Feb 2024 10:49:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWHcL7AtxWani3dggaoRAzrQC/P6uqNHc1JJtDf2wpBkcvKsUYL+Mn7PrL8YZRQLocnfPPeQz5C8DGAVmTrTxLhbWYbJ11eaV+hYG9IL/cO9tA16yA0uDP+/2gSK8rz72DBbrhUcGk3PAW97VdpdNpOii0/MEDbA+hxZH0hQPYv+f57lSrrSgGWdWSGbzx5Trf4o0l/kv7wOGz9pd7VbzC9pQSgtieEQC40NKGVdK8IrtWCIVpZVbBAfo691Y81XhkcF8skiqKeEvhDVeQiygVDaueAyf9COSoxBEgrRl8LwAhgPY8Rukz9sY1MdJnD6VeDL/n4SPFoNYyo8ljXUGxrDs+dsZWfndr5+Ds1ygJfq5hG440zQ5EYbCyo5rTfOGSdMO427pycf2/FurDo68VZ/AapVtlqsSnAlq/Kuwr2WxJXoVYFn+9OC8aJ0VNNZtuazEq2Kcx+wTwK/hEAUY1PsBhQEjP/w/9vEp7SaFsGDjWfvLnKgTuOnzWnNlV5EThGVUyiGxQdKgVtPkAmj3B/MgAc/wK9p1hxG5tBXZP5Hjl09nEhD4ONTIZy
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:49:57 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/7] Add Support for RK3566 Powkiddy RGB10MAX3
Date: Mon, 12 Feb 2024 12:49:43 -0600
Message-Id: <20240212184950.52210-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_104959_613581_4CD30026 
X-CRM114-Status: UNSURE (   8.16  )
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

Add support for the Powkiddy RGB10MAX3 handheld gaming console.

[1] https://powkiddy.com/products/pre-sale-powkiddy-rgb10max3-handheld-game-console

Chris Morgan (7):
  dt-bindings: display: st7703: Add Powkiddy RGB10MAX3 panel
  drm/panel: st7703: Add Powkiddy RGB10MAX3 Panel Support
  dt-bindings: display: Document ST7703 panel rotation
  drm/panel: st7703: Add Panel Rotation Support
  arm64: dts: rockchip: Update powkiddy rk2023 dtsi for RGB10MAX3
  dt-bindings: arm: rockchip: Add Powkiddy RGB10MAX3
  arm64: dts: rockchip: Add Powkiddy RGB10MAX3

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 .../display/panel/rocktech,jh057n00900.yaml   |   4 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3566-powkiddy-rgb10max3.dts    |  87 +++++++++++++++
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    |  18 +++
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  18 +++
 .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |  18 +--
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 104 ++++++++++++++++++
 8 files changed, 234 insertions(+), 17 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
