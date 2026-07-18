Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1A14C44521
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 06:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IF+YRiKvV/BTrSFlS3IGvoWlqbaCWFlkv2p5i3slVHU=; b=NLd6OXWbdII2rQ
	EVew11D/GyY6W419pdA/FE12fKZ5FAEz8jB3ca7xXHORHpX/3UmcgReZ+NcFrmH6hy+v4CWrdg8xz
	qwSbZRrqyEvL9uz/DRukEWDsOqEzi+uJudnRcZgWminnVgfVYEvX0d9rDWXDpftjn4632MeuqM7zY
	ygtwmLLJZUsFf6SjUUp6szjkhcppf2P8+RndrB7gYmaxMkdR70z2xQHoZM4Fd6Q2l5V3+JuSChwEl
	lNapOCFc1xRVEuBtQ2qcf8qTW2JdGvCw2oE/+FYgin21rVKwhhb6OuPyq+4N15DAXIaTkTBp/ekPi
	rRJwpHPyurUTE/6tMogg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkz0z-00000003nVS-04nk;
	Sat, 18 Jul 2026 06:59:13 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkz0w-00000003nUa-2Zox
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 06:59:12 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-38e58e0e2d2so500330a91.3
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jul 2026 23:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784357948; x=1784962748; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=MbNJCbR9fwKlsvB8FKMzu9iZUQ3KKsxGZYdnUhTBU4U=;
        b=hc06km743ZhysuoyxJXQrO2O1GO9D6jo+a2m0Lfi/E5xa7jTh0XuHWlBSQf4fPxQKQ
         79RF0tZ/KbxaDjfFMR3lLSxmrreHgSvDxdugr4k0pEMpxLJuRjnphO7eSVbAm1gdifa+
         BWRqwsIEQTHVDFowfcIbKY6RGlBPJKfZbipu7vXN4YPxNRiqdNIeLZMI+89nC3Eszdvq
         xoLNVKh/5m4PLPMZcABsvSnC4KijHDnVP10ZZZT1bZGQkur2hBfbGiQydNOykFwF8Js4
         8bPHy0PJU0Tq+EE+HRaQySqpIIi7nxk8mE+ZTgxnY/0AdPjF6Ug4E3qwFnFttJug0Xrk
         rKgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784357948; x=1784962748;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MbNJCbR9fwKlsvB8FKMzu9iZUQ3KKsxGZYdnUhTBU4U=;
        b=Vp4mLaVLZJE+/Q3yd2VdREVJTj6riEFY0HLnDo1LFBZA7slQialWwcX9BTrDZAeI1L
         lrGXWwnjPlbA7sX7wFV8TZtvnkXr/Ta2TYfPqhsMGOloJryT4s7CZppA3vwt7PhGCRiy
         crV0wgp4gaFPuA8Q0dTszN+Tct4EwQdddRLUTwbd+dauy0jnrPP4ZeP8mVFNKLOzDjT5
         ZwXcWwe5Xv5LXYZgRQH+7kH00I1OmSOVw3qStTZ/xEr2RFRK6eKWb6PbPiJ8Dy4Bp1ZI
         bh+Xt+W9hHZ1KxVqPOkUzitiXwQc8FP6eAAU9TwCg0iSAuukYrmQI621i5v981m9CUR/
         Ow6Q==
X-Forwarded-Encrypted: i=1; AHgh+RpB88knY+F3LDZzW91vCPquqSj8tcaGkTC3i7MlF/ySZkLzhLb0e87RZNoARgKwJl1F5tbqoIKG+kgiv/UNnQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjcgUBeKzZfQoRy/yfC0FyGpnIBPjl4aRxKAH/8QkGfjVjMgT/
	UPacixVSkKnFOamcW3QqsFj70NPAG/qMo65o2ce+QB6UiysxkCgM5z+J
X-Gm-Gg: AfdE7clnQLjRV1lh0bt7Gm/vtgzUyxmg2Z/E+mFtWAIxYX7lcwEcGrmC/CayxlmaL3t
	2GbFiljuKMZUYBADXZx+h/b5f6wDZHVOEkraa6/ny7YEqLdd77IqDoIiHj9jF+4A1NtSc8+4zbk
	OsMppqOwhM042HNaCP/+ArV4NB43ZuUId48Ie7Ao3dKBYNcJ8nIwmP65sHI0fpIfLC3pJFFirsZ
	FkypwO6XVCyDbu/IwixyMZ5Zr6C8EsYp8jV8+7FhQ2+KgsQo/JbvMwQmWN14Hso0KhkPse1huUv
	BvaR0H884f9o3Zk/BOT8iCUxsFAICS228NcXDLH+EeVQUNFDdDaaJz7tpiwmeD6IG+JfTMps1QR
	IItjzSO6lZXG8DF4WI1CdW6ats2sM/5xnqGpWJ92J4zgP1yJBRsq1fsz81ompFlQiPHYEpKjxD8
	4O+7W1y8RvBjowEY6fZm22
X-Received: by 2002:a05:6a20:734f:b0:3bf:c07b:a9ab with SMTP id adf61e73a8af0-3c3ad9dfdecmr6595081637.55.1784357948230;
        Fri, 17 Jul 2026 23:59:08 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31429f9bb62sm13426133eec.2.2026.07.17.23.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 23:59:07 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v2 0/2] Add support for Vicharak Vaaman board
Date: Sat, 18 Jul 2026 12:28:58 +0530
Message-ID: <20260718065900.755631-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_235910_657567_9A43BD58 
X-CRM114-Status: UNSURE (   9.43  )
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

This series adds initial support for the Vicharak Vaaman, an RK3399-based
single-board computer.

Patch 1 documents the "vicharak,vaaman" compatible string in the Rockchip
arm bindings.

Patch 2 adds the board devicetree, enabling the RK808 PMIC with
SYR827/SYR828 CPU-big/GPU regulators, Mali GPU, Gigabit Ethernet,
eMMC, microSD, SARADC/TSADC, and UART2 console.

The vendor prefix 'vicharak' was previously accepted via:
https://lkml.org/lkml/2026/6/24/929

Changes in v2:
- Fix fixed-regulator node naming to use 'regulator-[voltage]' prefix
  consistently throughout

Hrushiraj Gandhi (2):
  dt-bindings: arm: rockchip: Add Vicharak Vaaman board
  arm64: dts: rockchip: Add Vicharak Vaaman board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399-vicharak-vaaman.dts   | 438 ++++++++++++++++++
 3 files changed, 444 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-vicharak-vaaman.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
