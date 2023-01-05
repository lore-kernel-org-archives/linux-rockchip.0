Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B45BC3DA7D
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 20:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q+ROlVDQ0QehF0W+OD3jtMyzFlmWGTs9PJNtHjHdPdg=; b=ad5q0cGwVkYzCI
	KTA6w3kG5yxrXtP8Rfx5/FijGZhQx8zXF7OsVrYTDmLnhL4rU6LxYP4PKwmwD2cjoJNKYcVnQrhdM
	/K5tqKo1KxUEx/1QNA2OaCddCIST5Eyg+TigoUrbbMNB96VICVbJyJAn8U4U4NZ78TbaQD/gw8cDl
	EvKIxsV5ZyHLDB17lPgC2E1dEH74fxjfd4nTM4L/blRVQS4Jhd3UYkATgq1xD8AENYQgpifVtvw7j
	vvUpqy71FZtobJoqtR0BzHtkQwaxaMICFyBCCmUV3Z26y0jh+2zy27jMjgYQ41/QSxzT/bcF/esSK
	jsS0JBR1JcIbyGDqyqzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDX8b-00EjKR-Qa; Thu, 05 Jan 2023 20:46:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDUan-00DJ1O-7C
	for linux-rockchip@lists.infradead.org; Thu, 05 Jan 2023 18:03:58 +0000
Received: from jupiter.universe (dyndsl-085-016-198-020.ewe-ip-backbone.de [85.16.198.20])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 63AF46602D30;
	Thu,  5 Jan 2023 18:03:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672941825;
	bh=AjVkCvwd25Eqi7gunh0LzeJ3T0+2xIcK9Yge17EECto=;
	h=From:To:Cc:Subject:Date:From;
	b=k7KvuEVUCQtkqfAG0xuCFEC3PeX7vNU5bpGhKoYkQ99j186WwTVMrPgUPAQXdTCZf
	 1zNGnMUa7ArMRvuF3mXKKMosiAA3d5rr4H3J7nsL0LifQT7IT9Nqw1TdUkvUcEbGtp
	 7WhqYp5ShPNKZO3ipEj4ZDeh0eYAYFC+aCGxoJGvGqREoMtmt+7emgWST+6B396cOs
	 2gqCKN+ZLPtj4IEhWpkiWNo+FaXxpX1jqiH64JTBKlyNUZ39Ew3yUnpOWoIVzF/BcH
	 EeEjHFZDgjVdfDm3PgzavyQLUtsfoRQ+TAxUUCvRXitdo5oKSzDhp8zPQtRpumXDpL
	 P83Xl722q7kyw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id A1E21480117; Thu,  5 Jan 2023 19:03:42 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv3 0/7] RK3588 Thermal Support
Date: Thu,  5 Jan 2023 19:03:33 +0100
Message-Id: <20230105180340.29140-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_100353_505652_DDC057B1 
X-CRM114-Status: UNSURE (   9.47  )
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

Hi,

This adds thermal support for the new RK3588(s) SoC series. The
series has been tested on the RK3588 EVB1 board.

Changes since PATCHv2:
 * https://lore.kernel.org/all/20221031175058.175698-1-sebastian.reichel@collabora.com/
 * rebased against v6.2-rc1
 * drop useless cast from patch 1
 * add Heiko's reviewed-by to patches 1-3 & 5
 * The discussion around patch 4 died, so I kept it unchanged

Changes since PATCHv1:
 * https://lore.kernel.org/all/20221021174721.92468-1-sebastian.reichel@collabora.com/
 * Collect Reviewed-by/Acked-by
 * Use TRM channel info in commit message (Daniel Lezcano)
 * Add patch removing channel id lookup table (Daniel Lezcano)
 * Add patch allocating sensors array dynamiccaly (Daniel Lezcano)
 * I also added patches simplifying up the probe routine a bit

-- Sebastian

Finley Xiao (1):
  thermal: rockchip: Support RK3588 SoC in the thermal driver

Sebastian Reichel (6):
  thermal: rockchip: Simplify getting match data
  thermal: rockchip: Simplify clock logic
  thermal: rockchip: Use dev_err_probe
  thermal: rockchip: Simplify channel id logic
  thermal: rockchip: Support dynamic sized sensor array
  dt-bindings: rockchip-thermal: Support the RK3588 SoC compatible

 .../bindings/thermal/rockchip-thermal.yaml    |   1 +
 drivers/thermal/rockchip_thermal.c            | 322 ++++++++++++------
 2 files changed, 226 insertions(+), 97 deletions(-)

-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
