Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F31AC19774
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 18:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=40uACtK2JtFzXZaDrF7v5gC0N9YoSWMqwrm9FOXabWg=; b=FTdCTUY7xkEyy7
	x3+T/cKVVJy1Y191rxlwnGFCDa/srx6xhv7VUGNMmuls46gCjX9wNCTYiGiMK/lc32VGCtIOh7rlX
	JhBxjlir3cGe9CsrnDtF4cfJZLwX0ZAQtYdVJdF07Dt1w3FQ9gCFFrkHcQz9orKSwamyGNRHV2jPc
	Axuog0vrT15FXk6SLES6zU6olAV6J95HUoFKwibnNON/YsScSFipSplVI4pske7z9qMvd1b0QY83P
	ibJvOOK4IHBGtSL0wmB1rPuengE0nLzOEDHbiUDMqzCIiod1ohu7uvXbNbc6ovSToUfqmV4rw8+pW
	lZiwNEB5URXaF0zWu61Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDUKM-00FlLn-1F;
	Wed, 13 Dec 2023 18:51:26 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDUKG-00FlIU-0t
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Dec 2023 18:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702493476;
	bh=Qqj7VpGSeV2Wlo88nLvyTvvJ8JpXr4kVLj1TvLAJGDI=;
	h=From:To:Cc:Subject:Date:From;
	b=16TInb5mDZeVwP0vwLXn1heYC86GUQ8TGTZ6p8e+Yj2YhJ5fKOHaH4NWeOCmEf/PM
	 EIMxItG7PXnEkS3q3dIfUVBEzW7dlDPzYdm0xr0IPBSv7ZJO2rpPEzgbKNiXWdPD58
	 AKq58I69L71rpTYUJ3yqpmFogTPjq8DYNbFdKGOP/IPaDCb5D9StfGjpSvmAfdgcrh
	 H2fdhXkUMG3yUyRNqZjGktjOnppj3ktM5imawcmbQhyyppT2HJQ+zffncMUJdAWQFD
	 wpYHxun7q8RaxvCFOZssaqahaEQlawDEZYhfdBlTAF33p8lqXruBCC48iXu1ku6K7E
	 E9NyR5rPsHRfg==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 9C54F378149A;
	Wed, 13 Dec 2023 18:51:16 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 33B234800CB; Wed, 13 Dec 2023 19:51:16 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Elaine Zhang <zhangqing@rock-chips.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Kever Yang <kever.yang@rock-chips.com>,
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
Subject: [PATCH v7 0/7] rockchip: clk: improve GATE_LINK support
Date: Wed, 13 Dec 2023 19:46:45 +0100
Message-ID: <20231213185114.47565-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_105120_450514_EA50D7D8 
X-CRM114-Status: GOOD (  12.40  )
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

I've send this as v7 for the series from Elaine [0], since it kinds of is. These
patches are written from scratch, though. There are two parts:

part 1:
Elaine's series used to contain patches for the VO1GRF handling, but they were
dropped at some point because of the CLK_NR_CLKS feedback from the DT
maintainers. I added some code, that should hopefully fix everyones concerns by
figuring out the right number at runtime. I also moved the correct handling of
pclk_vo0grf/pclk_vo1grf before proper handling of GATE_LINK clocks, so that it
can be merged ASAP. These patches are needed for HDMI RX/TX support on RK3588
and should not be blocked by the GATE_LINK discussion.

part 2:
For proper GATE_LINK support I tried implementing the suggestion from Stephen
Boyd to use clk PM operations by creating MFD dynamically. This required some
restructuring, since CLK_OF_DECLARE() is called before devices are available.
All of this can be found in the last patch of this series.

[0] https://lore.kernel.org/linux-clk/20231110020358.12840-1-zhangqing@rock-chips.com/

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
 drivers/clk/rockchip/clk.c                    |  85 ++++++++-
 drivers/clk/rockchip/clk.h                    |  18 ++
 .../dt-bindings/clock/rockchip,rk3588-cru.h   |   3 +-
 4 files changed, 178 insertions(+), 91 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
