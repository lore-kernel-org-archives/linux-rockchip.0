Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5F95C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 17:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9jAGS1smSQwiKXwL0xFxC3i3+TIbsJ5w7q8nOGjnkXQ=; b=iJWi7NiD9wAfkp
	724mPLkUHWGhi3q6ZJfOlDyWzTAYnK3SJoJSF6Hh6c0UXM+snxiRQBc8AIGzK9MNpRZWqeGoBPWpN
	LprG6NxrP8LXnpjEckpLViqVzGCFhnj4HWUphTK6u2Sn5wExscJXf5K3cNDhP3YYGKyFalX7p/YPX
	0fieU1Jp4vcO8dyiyPKjrvwKToTyW/EyxTquIo0H+9U7nQ0KIoaFmjaadbwk89TqKm8YsuXLax5mR
	9d8rU4WjC07OacfhvlgSAvxR6Gd6ds7xs259+euGTsrJgFCMCGZeMeGAX0E3cI5Zc5+jVDS54KXke
	hUUTFR/VJprledHWD1Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p04QC-00AWP0-BW; Tue, 29 Nov 2022 17:29:28 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p04Q6-00AWLa-Jr
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 17:29:25 +0000
Received: by mail-oi1-x22a.google.com with SMTP id r76so15965218oie.13
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Nov 2022 09:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f2fUUZn0aoFEsmYmJGpqswKr9XlltrM/1Tq7myxFbEo=;
        b=pMTFKCWeddhphuFu+2lium0VJo1My+WfoNoG1c3WaRjvANnb1qwB8gUo6mmUVxtgN4
         nmuTLphHOcxXRWY2rFQlQLk8oSQji9BxR3EQt+/LmDQyVvBahxyS8P/AsRkwAgD2xYTc
         QCmD8owzu5TI9PG0JAVaFFbbOpMoEFLqTZLCu9LqMgHxjWo24TrSFxGcw7s2Ze2tToZ0
         /F+K7zScalVtV7e3nVdqxhqJp+OETdKtyeBgnnd8yHdBrO6zGDJN8oyE4WRJW0QFIapN
         IB3KwNwZnVCFcEb4HB/ZdwHwiN+d6UwPcmDy1WlT27+PlXgmJM1c6/DKvKck026YMCer
         rLrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f2fUUZn0aoFEsmYmJGpqswKr9XlltrM/1Tq7myxFbEo=;
        b=nZIRqkdwbHFnFmWaa1pqn82GwufoNeGmwFdIRwLeJm4Vn6rgidbdbN+FPR24eOTayQ
         AC0Kv+JDUY0dq2Lsd8l00g6YQZSmnYy9Hty3nIy99X5wvoXPKVVACSP7Yj6XQQ9FQyeC
         bOYGlIE/vNob0od5rF3tRaQFrCzWnq+uHXubiLFi9xJrfvhQF86m4hegobtqp7KuX7i6
         uvGsqD/2r0/azjkhOHUCP8GEhiZNMO+ZZUQb6lwbp2J3V28RapP5isEdfr8hglyggMZr
         Sw5NUDgPAuPQE5W5XTpj7iEPNjcZ5dEI3rPSmgmZO+KF/XNE6oXkiOHlYrwDN1F06s9P
         k7bg==
X-Gm-Message-State: ANoB5pkLnDX/bXRA71QXxIfb/d7fWIf/yCw12rOteam7Kqm58fkCw4DV
	6WNEmoL1hKpQC0iA9Po8b6Or2KMIg0w=
X-Google-Smtp-Source: AA0mqf74Qj2PRqoyEpMHvimi1mm2R46hlahU4dfBqeInpE4pUhmN0O/bAhzHiHGjLB2Vt8C2X9WomA==
X-Received: by 2002:a05:6808:7:b0:35b:758e:1cda with SMTP id u7-20020a056808000700b0035b758e1cdamr15320949oic.148.1669742958926;
        Tue, 29 Nov 2022 09:29:18 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id l26-20020a9d709a000000b00661b46cc26bsm6224546otj.9.2022.11.29.09.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 09:29:18 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 0/3] drm/panel: Add Samsung AMS495QA01 Panel
Date: Tue, 29 Nov 2022 11:29:09 -0600
Message-Id: <20221129172912.9576-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221129_092922_697009_3E0ED7C4 
X-CRM114-Status: GOOD (  12.24  )
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

Add the Samsung AMS495QA01 panel as found on the Anbernic RG503. This
panel uses DSI to receive video signals, but 3-wire SPI to receive
command signals.

Changes since V3:
 - Updated documentation to add spi-peripheral-props.yaml per updates
   made for similar devices. Note that I removed a "Reviewed-by" tag
   from Rob Herring since this change probably needs to be confirmed.
 - Added binding for RG503, since this device is now accepted with this
   request: https://lore.kernel.org/linux-rockchip/166274831283.21181.6861718157177507544.b4-ty@sntech.de/

Changes since V2:
 - Added 50hz mode at request of userspace devs.
 - Renamed "dupa" to panel name. Good catch Maya.
 - Added Maya's Signed-off-by.
 - Removed check for max backlight, since it is already done by
   backlight_device_set_brightness.
 - Fixed minor formatting issues on devicetree binding documentation
   and added port to provided example.

Changes since V1:
 - Removed errant reference to backlight in documentation. This is an
   OLED panel.
 - Made elvss regulator optional. In my case its hard wired and not
   controllable.
 - Added "prepared" enum to track panel status to prevent unbalanced
   regulator enable/disable.

Chris Morgan (3):
  dt-bindings: display: panel: Add Samsung AMS495QA01
  drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD panel
  arm64: dts: rockchip: add display to RG503

 .../display/panel/samsung,ams495qa01.yaml     |  57 ++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  61 ++
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-samsung-ams495qa01.c  | 547 ++++++++++++++++++
 5 files changed, 676 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ams495qa01.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
