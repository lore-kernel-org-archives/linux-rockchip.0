Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A785C6FA83
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Sep 2022 20:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yiHZAlCK9YmIoAuhVjXbjCGHOGkKRh2/OucMF7jfVQo=; b=o6oKUEz/wjrbNf
	DLOzViFXENu4YqCv5iK9ot8FqxAeTQVS0buXjVGMWMeRZAn4csFDnT6TWjkO6rnISfzVaoweMwrnC
	vaY7gDqZVOcUVuuQxPdTWy7DTJpDpU3eBE6G1KlohNRMqmYzNKdx8hmSALS7CebffeFAOjmqC0aue
	WyQ4OzzdNhlQ98T1KMExF81xAp/AtGg2DMq8Ey4YhWRnscLWo6rITYCulrU+HGMHDW3LJ+2Zg0m/b
	hZj+b004B9HPYJ1n8wDDN6wDbmbNYAcROStwXvvdLu5x1RjPHihYIad+8I6n2xjX9Ghi2Z845/3dF
	GEVxViN/r0WcSOexyTbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXqTZ-00DrBR-OO; Mon, 12 Sep 2022 20:56:17 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXqTV-00Dr6w-DK; Mon, 12 Sep 2022 20:56:15 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-127dca21a7dso26651391fac.12;
        Mon, 12 Sep 2022 13:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=3lZi4SDRtUkwdUacRohNSWHiGSF0fs1fzyFC2461Edc=;
        b=WkXY3zxpNM4pZy+Rn+RzVt43wK6J5gqw6BMBNvqgrZUjxGYJmbxmJRFlo0nCbdhmkn
         iy6Q8dnjftuV+6UFEKWFOcACpdeuyaYIT02j940idIOJaKGmzM9TLauJ9N1iFlYQZWv0
         g+OMbEm/b8vSobE1Av2DJl+6G9RuGOuXFLpYALCwJjtRTuBEL/CHz2iF/DEj1P/Pq4/S
         2WXzxjcXKknl7Wut1+bajlf2XpOpdb/32iJEnGPPUHrUcI6YQ2IeDjlk9OmBgqbZUVze
         2ya979RP2ZiBsqrWo0I54aKQuQwRyj/0N4zl1/fNBZP84z20KPxc2YrB5313MPiuQKvt
         5rLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=3lZi4SDRtUkwdUacRohNSWHiGSF0fs1fzyFC2461Edc=;
        b=waxnIeCwqrX7q8pw/ygseUQGaAnyG8BXRRO48SvX+Z5ae7I8Wi9JqNcdgVsyYodM1v
         VydeqRuTogSqEHR37PsPWEtHQF8fMdeUdP+UXVylgqV6R8nDKWN4ZZ7GAdToqIbRB4yX
         adG8Utb/3ME0WRRfbI3daaazxhM2mBmXSiSBH5GHJxEpr4xM1JTkiZhsKaiOhphenOOg
         TseF0gpgcCMoPX1pJN+DiNqNQyTQXy6Mu9ntLCm80GHfuNCcx1sE9QUDojBHq8CsTXDK
         /Vzx0YzIEohn+pyIZklZv2EAD+nlDGTDkRTv35y+wbFSBLd53gPkk6Aj/Olm8cwxn2VK
         sOdw==
X-Gm-Message-State: ACgBeo1ZmHD6lgeAj6GMV8/3Hua/nwqbU9cKhyzUiVCJ/7QeRqRiQamd
	GEZp/fIlI9FjI/RQp3Ck5+51pPk4+iA=
X-Google-Smtp-Source: AA6agR4bY4/Q+A/1klG5YdpGl9FPofNYsOkRWsxrCOPpa+0xLycNpXAH9Bs6WkOmFJcsQZBAl52tmA==
X-Received: by 2002:a05:6870:c68a:b0:127:a3f9:2c16 with SMTP id cv10-20020a056870c68a00b00127a3f92c16mr119149oab.246.1663016171472;
        Mon, 12 Sep 2022 13:56:11 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i21-20020a9d68d5000000b00639749ef262sm3385355oto.9.2022.09.12.13.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 13:56:11 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	cl@rock-chips.com,
	s.hauer@pengutronix.de,
	frattaroli.nicolas@gmail.com,
	michael.riesch@wolfvision.net,
	pgwipeout@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v3 0/3] rockchip-dsi for rk3568
Date: Mon, 12 Sep 2022 15:56:04 -0500
Message-Id: <20220912205607.5969-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_135613_554396_82CD3A33 
X-CRM114-Status: GOOD (  12.19  )
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

This series adds support for the dsi and dphy controllers on the
Rockchip RK3568.

Tested on an Anbernic RG503, Anbernic RG353P, and Odroid Go Advance.

Changes since V2:
 - Removed dsi controller patches, as those have been merged upstream.
 - Removed notes about rolling back clock drivers. If I set the parent
   clock of the VOP port I'm using to VPLL and set the clock rate of
   PLL_VPLL to 500MHz this series works correctly for my panels without
   rolling anything back (per Heiko this is the correct way).
 - Added additional details about refactoring DPHY driver to add
   2.5GHz for rk356x. All other devices still have a max speed of 1GHz.
 - Notified Heiko that the BIT(5) for both PLL_POST_DIV_ENABLE and
   PLL_POST_DIV_ENABLE_MASK is deliberate, because of how the
   phy_update_bits() works.

Changes since RFCv1:
 - Identified cause of image shift (clock changes).
 - Noted that driver works now.
 - Added devicetree nodes for rk356x.dtsi.

Chris Morgan (3):
  dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
  phy/rockchip: inno-dsidphy: Add support for rk3568
  arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x

 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  72 +++++++
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
 3 files changed, 231 insertions(+), 46 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
