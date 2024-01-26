Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DBB1C48285
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 18:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HQocYtQWjqyMiSqNRDJVUBnPnTkgz8NEbLfEPNqmTwU=; b=BRtaIY7i8NsfFg
	mkGGBVT6X+HEi7Tb53zMYs0u8rHAXhxJss7UJMO8S6V64L6i4yERgkAICvLPva+Hgb+Y5QBTVbsgS
	XsuyQzE9WOTVD8iuBJGyUegKEfXf327TKefhQzRYvZgdYWwavvZH7KWBqLnDg3B9N4zoYtMomAY4j
	WNEFL4XQoxKXZwQrwRToVHh2dJQEKHJtouqBMwDbsHNC/10eAVGDzMLnVo8RvBMHHNIGlgSbdwtpc
	vo9dRqJpafziaCmrcfa2cxyIsXGq5snVBksQ6oxIRd6WYGaSkrfMjuzbjTVC58lVeX+Ek2cRerm0e
	hXvwf6PnQt71Y94MDsLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQxG-000000054ST-2lcb;
	Fri, 26 Jan 2024 18:29:31 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQxC-000000054OU-2PBB
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 18:29:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706293762;
	bh=qH4wgxYS/QxVVd4rAM7HJxckxSO0Woynsp+9EbTo41o=;
	h=From:To:Cc:Subject:Date:From;
	b=S3YJS3mBMQAO4i0ykGCkUQhuItHdFnun27O5imvtyTUezAfxaS/zTJgRoFqNBFDGE
	 ajlYOsvZCOR1p1XW0LLnq1ZFTOR0nL00sNjfl+uOAeYCByx62W9M2qX4JRVZAgG0vn
	 CEPqJh6LjiEDfh93Tz849QX/BYUgCEsSZ4uXDmtcgIUj3rrKBriohN0suIOX4fdoPl
	 7wNZf5Mu+ukjK3bnWRQ0lUu4tPNLGqojZGK8i9N69US6c8yyM0dyEXvnQ4UK9fN8HB
	 xxRaQoV5esBb9ksb9VY/JhtLTe1Gf7yS3VgDz/abkWByYQQTcWXGhWIm50xbl10/T2
	 ffuX+Z2cgpcww==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E7CAC37811D4;
	Fri, 26 Jan 2024 18:29:21 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 915EC480C4D; Fri, 26 Jan 2024 19:29:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v8 0/7] rockchip: clk: improve GATE_LINK support
Date: Fri, 26 Jan 2024 19:18:21 +0100
Message-ID: <20240126182919.48402-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_102926_887935_122D903B 
X-CRM114-Status: GOOD (  12.46  )
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

Hi,

This is a follow-up for Elaine's series. These patches are written from
scratch, though. There are two parts:

part 1:
Elaine's series used to contain patches for the VO1GRF handling, but they were
dropped at some point because of the CLK_NR_CLKS feedback from the DT
maintainers. I added some code, that should hopefully fix everyones concerns by
figuring out the right number at runtime. I also moved the correct handling of
pclk_vo0grf/pclk_vo1grf before proper handling of GATE_LINK clocks, so that it
can be merged ASAP. These patches are needed for HDMI RX/TX support on RK3588.

part 2:
For proper GATE_LINK support I tried implementing the suggestion from Stephen
Boyd to use clk PM operations by creating MFD dynamically. This required some
restructuring, since CLK_OF_DECLARE() is called before devices are available.
All of this can be found in the last patch of this series.

Changes since PATCHv7:
 * https://lore.kernel.org/all/20231213185114.47565-1-sebastian.reichel@collabora.com/
 * rebased to v6.8-rc1
 * Collected Reviewed-by/Acked-by from Krzysztof Kozlowski for DT binding patches
 * support nr_clk=0 in rockchip_clk_find_max_clk_id() for smatch

Greetings,

-- Sebstian

Sebastian Reichel (7):
  clk: rockchip: rk3588: fix CLK_NR_CLKS usage
  dt-bindings: clock: rk3588: drop CLK_NR_CLKS
  dt-bindings: clock: rk3588: add missing PCLK_VO1GRF
  clk: rockchip: rk3588: fix pclk_vo0grf and pclk_vo1grf
  clk: rockchip: rk3588: fix indent
  clk: rockchip: rk3588: use linked clock ID for GATE_LINK
  clk: rockchip: implement proper GATE_LINK support

 drivers/clk/rockchip/clk-rk3588.c             | 163 ++++++++----------
 drivers/clk/rockchip/clk.c                    |  86 ++++++++-
 drivers/clk/rockchip/clk.h                    |  18 ++
 .../dt-bindings/clock/rockchip,rk3588-cru.h   |   3 +-
 4 files changed, 179 insertions(+), 91 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
