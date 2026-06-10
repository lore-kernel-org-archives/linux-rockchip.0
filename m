Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF7C7CD98C6
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 14:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IVRML3pXmeu3wSj8ra+3OKf7/74UWYf6v8+z44Ikqg4=; b=dygpMR1uby2PWc
	YlG4PzU2Blg0D30oLDhFrCeFxhJSmZyl7AriWvt6iTJAiqQEzxE50hkO2pwcQeIjV7wqhVcb+xUGj
	J/TsLLERpTfGq2sVmIcz9ZAzc5eJnGczFVW7ShfjmFo7flU+5WWNm97wQb4S9KVCetDBhN8h+Rty+
	ftRsYIMa7kpmtAEON0nB8DtoMRa/msiYlwqAq1F51bcbhuZQDEY9f7Szgu1ZV1ZtrYUzg/zmkVoDL
	D5E29YXlv284aqddbIdRfGBvKrEGC9FAKGexFoDrdoNwIbJUqSLxN3+bnCQiEDhDF7Gyagb9Cn4p0
	qK2QOGpdcDuzI3tCHIVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKCS-00000007wdU-3vIX;
	Wed, 10 Jun 2026 14:46:36 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKCP-00000007wbT-42h6
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 14:46:35 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-69d7e72b052so4085739eaf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 07:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781102793; x=1781707593; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P4QzymakmUc/p+ikIBv/t3ub0s9V/aIeCfFGF/Aix5c=;
        b=NtOKe+2hjHYDmEa2w5xsN0b83myWNEC01Sp5AqPzf1eEMDwSfhvQ+FVi9DYQ36TLDc
         Mni2syxCRlciNM6i4avL2XDY/3NELpcIEVGGE3/Hrt003B/u9dOJekw7XgXVAt9J0pAx
         AUM/9e/1HuS7oNhJvvx2NFzodZW7wtszekHSZuEL8C8m/wC623LQ9RcdevO7wr3+PzhP
         4m6s8kwXdwW1KDN8yJeeo6OjKccsWwOM1/xxcsEVpI0Z9kfvodIaz09FCx+pGiyoLQ3s
         JE4xZ3a55aszGsZMtTwZKSt5PO6rhiYeJXL6i3gel80fsknheay131qfiwyre4H2+oZ6
         KZbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781102793; x=1781707593;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P4QzymakmUc/p+ikIBv/t3ub0s9V/aIeCfFGF/Aix5c=;
        b=gNyFtOLq+VSA/z2rNmnAhx81giLKXmNkxcxxauzqVllGs5kO4KGvO1FHvbt27WJGx4
         8d1nYYMStOVlmWKKJWUCq+speXbl/i8tilWpFTpR31aV84pWpbX2mRCFveFYnkeg+33Q
         Rs4MSgitAvxydZb36EhwhUG7FkuIPAAJ4cruaBqboSY7P+WDAtCjs+PgJiRyBDFNvAsO
         MqL6Q2OZF/RQpYdCzWGkBmFQBVbATAH/WIWUzaEk8YLCMYeUq5SUzQr4G2scSdqwJame
         N23LbmXyW0u3ZQCZ9NCnBkJtZc7jGjCPZvqw+SSlNxfXB+btWmxQmbLlU5BrOyn9hHNU
         CHAA==
X-Gm-Message-State: AOJu0YyhP1V03Opg18z52cJN5nxhJ7eBsCfftHIqZvQjnDw4YsecsiMi
	boyo4AU9vm+zMHXa8Y7dcDPlIrup9UR6mvNz5Nh/ojLKbn/VUy+ug78gRrBfow==
X-Gm-Gg: Acq92OG/vfHsqU3RTbx70gIEbhgnNRiO5GjyR2oF38CFw1FklnSHsypRvCe0aqQQ89Q
	APtiI75AWAVNTjC5PIswByq6DwdSkZV6orzyQpi/UDK56XYDT7vpzgE4kuRNlD6QfCbA3go9kQ7
	WrE98Prh5cS2uVtYR6jXSfIqjc4Unw0TmTLowQ+8Nxxj18wlO5LF3TrO0chIWCncvUrdnwFxdb5
	ctg1vaQsRII8RDDGsGE3jYvoAKRA3mckRc/Ra4txyHEI8i5S81T6I/4NajNCsmbL02HBk72uUkP
	0fgNVlvEV7Pjc5WFF+Ax6s2G+DFMOvCxf3X42zrh+kEdyB89VqF5v2ojOieo5xE+tj+sG6NvKob
	J8eYOruOyR7sr4FsbVn3EW6H5A9H9rbXReBDtb4f94EhSrzoDndkoGMvjgPL3vJ4DNcIyqgQdhS
	1w8+qvKhbJSouSuzCvgEn0/ZBJyS4WVwc=
X-Received: by 2002:a05:6820:212:b0:69e:3a55:a628 with SMTP id 006d021491bc7-69e68c6f45emr14348471eaf.44.1781102792633;
        Wed, 10 Jun 2026 07:46:32 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e4644ddc2sm12069165eaf.12.2026.06.10.07.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 07:46:32 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V7 0/6] Add Anbernic RG Vita-Pro
Date: Wed, 10 Jun 2026 09:44:01 -0500
Message-ID: <20260610144407.438846-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_074634_008940_33D17899 
X-CRM114-Status: GOOD (  13.57  )
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

Add support for the Anbernic RG Vita-Pro, based on the Rockchip RK3576 SoC.

Changes Since V1:
 - Updated documentation filename to matche compatible string.
 - Corrected order of allocating IRQ in charger driver and switched
   to using devm managed function to allocate work queue.
Changes Since V2:
 - Corrected issue with naming of panel binding document and added
   fallback compatible string.
 - Switched to devm helpers in panel driver. Note that
   devm_drm_panel_add() is currently only in the drm-next branch.
 - Optimized setting GPIOs for panel driver.
Changes Since V3:
 - Fixed numerous issues identifed by Sashiko bot, mainly relating
   to unclamped or improperly clamped values from within the
   charger driver.
 - Corrected hard-coded values in the panel driver unprepare routine
   as well as correcting an improperly checked return condition.
Changes Since V4:
 - Fixed errors identified by Sashiko bot on charger driver that could
   result in an improper value being written to the registers.
 - Corrected some error handling in the panel driver.
Changes Since V5:
 - Corrected minor errors in documentation and added default values.
 - Further corrected clamping behavior in charger driver.
Changes Since V6:
 - Additional corrections as suggested by Sashiko bot to fix potential
   edge cases during probe for sgm41542.
 - Corrected an improperly shifted value being written to register for
   sgm41542.
 - Changed a MV value to UV in sgm41542 driver to simplify function.

Chris Morgan (6):
  dt-bindings: power: supply: sgm41542: document sgm41542
  power: supply: sgm41542: Add SG Micro sgm41542 charger
  dt-bindings: display: panel: Add Anbernic TD4310 panel
  drm/panel: anbernic-td4310: Add RG Vita Pro panel
  dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
  arm64: dts: rockchip: Add Anbernic RG Vita-Pro

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../display/panel/anbernic,td4310.yaml        |   66 +
 .../power/supply/sgmicro,sgm41542.yaml        |   96 ++
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 1327 +++++++++++++++++
 drivers/gpu/drm/panel/Kconfig                 |   10 +
 drivers/gpu/drm/panel/Makefile                |    1 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c |  257 ++++
 drivers/power/supply/Kconfig                  |    8 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/sgm41542_charger.c       | 1067 +++++++++++++
 11 files changed, 2840 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
 create mode 100644 drivers/gpu/drm/panel/panel-anbernic-td4310.c
 create mode 100644 drivers/power/supply/sgm41542_charger.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
