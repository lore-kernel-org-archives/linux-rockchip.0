Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B0BDC7619A
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 09:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tP67InXbUnust5G9n4GiWe9EGXqvroBDNHRUNVvN4Tg=; b=QxSKQ0sCWlzwOg
	ttHBTpA1DdnTWVbjB0Q2Osdyi7NveEyQaCi3fThqQ+rIEn3dz6EezcQyjFZnHHoYu48PeY15mRiSx
	zV1YblOtyvo+Hx+DfG7aZvfLKlZclcbksSF6bQJKhFUUHCluNUoSpMtSsTIVn1Gp9GL6LVoGLIJW3
	DH6p1Mmh7aH+aeebiFMCcsZ5Sm/biwfKLw8UfaTP688JUeI+ec0AbJ2y+hc6/Kqx4GlVlIgKUBwQA
	cQSft0E0O2yIVn/tsOhbefMpUzFQ9DsP41ikciXQ4u0HDxLmLj0f8a3yAuz/8FYJnr+dhGA6xisnM
	6PgpNeCzO3W8BoImh2pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piuMe-00CBt1-1H;
	Sun, 02 Apr 2023 09:51:08 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piuMa-00CBr0-2S;
	Sun, 02 Apr 2023 09:51:06 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1845E660312B;
	Sun,  2 Apr 2023 10:51:00 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680429060;
	bh=4iustubS8pupGkjSDCTNaKqKkGplmRTO6ySM0U90GhM=;
	h=From:To:Cc:Subject:Date:From;
	b=IDHWm3lsgbJ0ot9q+IypCQKgXstZqCrWRINs/FrLROd2BGWosnpx5pz2i2SKCFUCV
	 a3kEhVjvAe+yVgB5VcWo6comQHUTMSxgeJfzAkT97bbJafLtyIHed42eilHqIDlL2a
	 OZDlswYSAhNM2Dw/qvo5UojRgZpLGDOG3jdhda5dTBDETKkiYudrvHrH00+vh7eIB/
	 OXxz6bXZQzN7/4iKuQOhCnJ88yeuYeTtN20n2m0fBRLF2/TDJdvjmjIp3FpuG7rQBH
	 /aTo8JMsW6q+zQ/n/IO3woqahBR/Dwr4EXX0TupQghppoyXDKaKSN5EVCzXQOa7KTX
	 +KL1rA2xXFizQ==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Kever Yang <kever.yang@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v4 0/5] Enable I2S support for RK3588/RK3588S SoCs
Date: Sun,  2 Apr 2023 12:50:49 +0300
Message-Id: <20230402095054.384739-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_025105_034141_54A6F2B5 
X-CRM114-Status: GOOD (  12.49  )
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

There are five I2S/PCM/TDM controllers and two I2S/PCM controllers embedded in
the RK3588 and RK3588S SoCs. Furthermore, RK3588 provides four additional
I2S/PCM/TDM controllers.

This patch series adds the required device tree nodes to support all the above.

Additionally, it enables analog audio support for the Rock 5B SBC, which has
been used to test both audio playback and recording.

Also note the first two patches are not particularly related to I2S, they handle
a few clock issues identified while attempting to fix a DT binding warning.

Changes in v4:
 - Updated patch v3 1/4 adding a missing clock assignment and adjusting the SCMI
   assigned clock rates
 - Added patch v4 2/5 to address an issue reported by Sebastian

Changes in v3:
 - Rebased onto next-20230331 and dropped patches v2 01-06/10 already applied by Rob
 - Ensured DT nodes are in alphabetical order in patch v3 4/4
 - v2: https://lore.kernel.org/lkml/20230321215624.78383-1-cristian.ciocaltea@collabora.com/

Changes in v2:
 - Rebased onto next-20230321 and drop patches 03-08/11 already applied by Mark
 - Replaced patch 01/11 with v2 07/10
 - Reworked patch 02/11 to v2 01-06/10
 - v1: https://lore.kernel.org/lkml/20230315114806.3819515-1-cristian.ciocaltea@collabora.com/

Cristian Ciocaltea (5):
  arm64: dts: rockchip: rk3588s: Fix SCMI assigned clocks
  arm64: dts: rockchip: rk3588s: Assign PLL_PPLL clock rate to 1.1 GHz
  arm64: dts: rockchip: rk3588s: Add I2S nodes
  arm64: dts: rockchip: rk3588: Add I2S nodes
  arm64: dts: rockchip: rk3588-rock-5b: Add analog audio

 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  62 +++++++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  68 ++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 160 +++++++++++++++++-
 3 files changed, 285 insertions(+), 5 deletions(-)

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
