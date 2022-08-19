Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7068FC32792
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 22:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J87DzfcIY9Ntay3CwHuDsa5tcc/OHL/4Igf1CmmwVX8=; b=PcKLA1ozNKBN3M
	/tHDefWO8ft/p7C89ELtxpu4HVtRVTb/l6BLV1g0y18c6EpyVZz1T/fxCxkWNd72z7Fz70e3V9YrW
	sjS76BdYc9OT1liHFuNhcTjo5KeSkpH7j0UnVzgM2QvBWuk+udDF3dq5N8z65huy5wC+TL1D4arNU
	h5cTYtMGB28jM/z/ewhQgo0BrpahqT15G0HweF5eRvSyTRV8jieWTaQXfOr+bRAA5dK+gsZwVmtgU
	y7PhStBIdZVSCi1fb+E2YwF3nMFy6AZeSpvZP78UWvE+mo0TeC3ZWYXmovF4B+M75uA42dEzSrjPu
	ehcwVM5/aXWyIE47ontw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPAQp-00CqqU-FP; Fri, 19 Aug 2022 22:25:35 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPAQl-00Cqn8-ID
	for linux-rockchip@lists.infradead.org; Fri, 19 Aug 2022 22:25:32 +0000
Received: by mail-oo1-xc34.google.com with SMTP id q6-20020a4aa886000000b0044b06d0c453so430845oom.11
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Aug 2022 15:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=aqX1Kf5mOz/AgiqyqYLrtepxSO5VXZtwIuw2ur3HsRw=;
        b=c5/NlGmKSgUFpmbWYxUkvaIhiLm2d4ag8iu+ff5rjfEMof4Lq1J4A0YJP/M34iuICZ
         geT6yLFNlQWryQt46bwYcin1bYMLQaaZa4DEuGhl7u4RAZP8zUaU/lwTWhMGGMydGYxM
         tpTKRJ8QOtzyy4vh6c/k1DySH1BYOJMilvmOip/TGyqwDUBTgIBx0oADO1LsgC2DY5my
         YinSejgr0FhONKT9i2wk+ssHrbpoq+Wa0fy0QZhicz5V8oFT+umum8V2JRhgRQuvYeyl
         X/o0V5wIYt3C9phuCqsc3myhpNt32qZvwLuu138INy5XqeZnfDzC2JQhvjwWOSo2MDDI
         FmiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=aqX1Kf5mOz/AgiqyqYLrtepxSO5VXZtwIuw2ur3HsRw=;
        b=v6BOw99IarHOpAQRXbleOaCXxZ/iLmJNs5qCavJ8YbPd32K25zxCfK9K8sk+MmvjuZ
         8MhaqAyVTVUTfZE+FN3YimgBG1Yg3aBRNiK4kI7d1E7YM1EjNicbV4EM1Bu3eBXYurl+
         Kx0BFRB1PeXD4QKvj3UTyNh0CZjv60ZccxLgi+bT3mQwTjyuNZkfi6DHTxsJgDlw0VZW
         UTMJNswQpJ89a3FdvbgkCi7FjONJKY/kkND1QQlJSar+NLv6Z3qFQqAphiIan9CyyraL
         A233/sixwnkHTkjQ//bMeRj2jjCyUMWTPSYKumRkMFSQupIAIloOWW05xMAvhAfHnXyf
         Sasw==
X-Gm-Message-State: ACgBeo3jWU6pHwFeCWgUAMmzKJHf3R3Nuy8w5vobdZeir1b6DnLr1uUY
	OhK/SYiEg24UbnDyemaiHsw=
X-Google-Smtp-Source: AA6agR6wvLFT8O/6DOkvOKGVlOBv0/Xc0DI9m7AwcgrMJncMcrGpvUcl9DoDX3gmPZmYcURqFyppIQ==
X-Received: by 2002:a4a:c61a:0:b0:444:debb:320e with SMTP id l26-20020a4ac61a000000b00444debb320emr3211407ooq.12.1660947928294;
        Fri, 19 Aug 2022 15:25:28 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id ca15-20020a056830610f00b0061d31170573sm1470497otb.20.2022.08.19.15.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 15:25:26 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	cphealy@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 0/3] Add Anbernic RG353P and RG503
Date: Fri, 19 Aug 2022 17:25:17 -0500
Message-Id: <20220819222520.3069-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_152531_682503_07FCAEA3 
X-CRM114-Status: GOOD (  12.45  )
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

Add the devicetrees for the Anbernic RG353P and RG503. This enables
all the hardware that is currently supported via mainline Linux.
The remaining hardware (for both devices) includes the display panel
and the battery. The RG353P also requires drivers to be written and
mainlined for the touchscreen.

Changes since V1:
 - Corrected node names to always have only dashes (no underscores),
   except for ones that require hard-coded names (the rk817 PMIC).
 - Corrected all node aliases to always have only underscores (no
   dashes).
 - Appended "regulator" to all the regulator node names, except ones
   that require hard-coded names (the rk817 PMIC).
 - Corrected name of RG353P. Previously was called RG353.
 - Changed name of sound node from rk817-sound to just sound.
 - Changed name of gpio-keys to gpio-keys-control and removed volume
   buttons.
 - Added new node of gpio-keys-vol and added volume buttons. This
   is so we can do autorepeat on these two buttons. Note that buttons
   under gpio-keys-control remain labelled in ascending order for the
   GPIO in use.
 - Added note to adc-keys node that we deviate from the BSP kernel to
   comply with Linux input guidelines regarding gamepad menu buttons.
 - Added note to sound node that audio is reversed for both speakers
   and headphones.
 - Added additional hardware details to commit message for devicetrees.

Chris Morgan (3):
  dt-bindings: vendor-prefixes: add Anbernic
  dt-bindings: arm: rockchip: Add Anbernic RG353P and RG503
  arm64: dts: rockchip: add Anbernic RG353P and RG503

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 103 +++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 821 ++++++++++++++++++
 6 files changed, 1031 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
