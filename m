Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8B0606A335
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 13:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=V+Bmp90P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=0DAg/IL53V40mXfClvuH0krqFsmupOwXCMyZ+tReCxg=; b=V+Bmp90PiwVP8gCnZModu9HhTL
	KmPw3CD1cJg2BG7oP8I/oxj8RgmvqO9z7/vfTd6U/yCX5B13wQ/faBK0QXAt4w2HoqAMmVrt+Ytem
	7xBQG4wgmi7OWrHg8lXq/EuqY86RxfW4t0ZCPy8Rokav5W20bvxPf/wWyQBe/h1LE/UYlAl+gAB4T
	URU91lxVTY8ZXbxe7MJYhdN1jIABFfR5+XqyLtBnVfbMhlZKOgxEDRoLvc7NAfCqGHr+l6gqOjdnC
	zw3tQ4d6Bi6mr3Ya0DAE0PwJ2tlenY92DarcO2h6EVXVfnfUVTiAM6IyDn/EQFVJ5goVy9mdM0ntR
	Nr3VEFsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2Ni-0000000C5DX-0yIH;
	Thu, 19 Nov 2026 13:40:54 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2Nh-0000000C5Cm-1KW5;
	Thu, 19 Nov 2026 13:40:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C30FD41E9A;
	Thu, 19 Nov 2026 13:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93B921F000C6;
	Thu, 19 Nov 2026 13:40:48 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Russell King <linux@armlinux.org.uk>,
	Paul Walmsley <paul@pwsan.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Ulf Hansson <ulfh@kernel.org>
Cc: linux-clk@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-pm@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 0/6] clk: Improve consumer field in debugfs clk_summary
Date: Thu, 19 Nov 2026 14:40:33 +0100
Message-ID: <cover.1795094688.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

	Hi all,

When a driver uses of_clk_get_from_provider() to obtain clocks, the
latter show up as "deviceless" in the consumer column of the clk_summary
file in debugfs.

This patch series aims to improve that, by introducing a new variant
dev_clk_get_from_provider() that also takes a consumer device.
When callers provide it, the consumer's name will be shown in the
clk_summary output.

Sample clk_summary change snippet on R-Car H1 Marzen:
    - sata 1 1 0 62500000 0 0 50000 Y deviceless    of_clk_get_from_provider
    + sata 1 1 0 62500000 0 0 50000 Y fc600000.sata dev_clk_get_from_provider

Overview:
  - The first patch removes the unused "dev" member from struct clk and
    the "dev" parameter from clk_hw_create_clk(): it felt wrong to add
    yet another user of clk_hw_create_clk() passing a useless device
    pointer,
  - The second patch introduces the new dev_clk_get_from_provider()
    function,
  - Patches 3-6 convert users to the new helper:
      - The Renesas clock patch was tested on R-Car H1 and H3, and
	should work fine on other Renesas SoCs,
      - The Rockchip HDMI patch was only compile-tested, but is probably
	fine, too,
      - The OMAP2+ patch definitely needs testing,
      - The Renesas pmdomain patch depends on work in progress.

This series has been tested on R-Car H1, H3, and X5H.

Thanks for your comments!

Geert Uytterhoeven (6):
  clk: Remove unused clk.dev
  clk: Add dev_clk_get_from_provider()
  clk: renesas: Convert to dev_clk_get_from_provider()
  [RFT] drm/rockchip: dw_hdmi: Convert to dev_clk_get_from_provider()
  [RFT] ARM: OMAP2+: Convert to dev_clk_get_from_provider()
  [RFC] pmdomain: renesas: r8a78000: Convert to
    dev_clk_get_from_provider()

 arch/arm/mach-omap2/omap_device.c           |  2 +-
 arch/arm/mach-omap2/omap_hwmod.c            |  3 ++-
 drivers/clk/clk.c                           | 23 ++++++++++-----------
 drivers/clk/clk.h                           | 11 ++++------
 drivers/clk/clkdev.c                        | 14 ++++---------
 drivers/clk/renesas/clk-mstp.c              |  2 +-
 drivers/clk/renesas/r9a06g032-clocks.c      |  2 +-
 drivers/clk/renesas/renesas-cpg-mssr.c      |  2 +-
 drivers/clk/renesas/rzg2l-cpg.c             |  2 +-
 drivers/clk/renesas/rzv2h-cpg.c             |  2 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c |  3 ++-
 drivers/pmdomain/renesas/r8a78000-mdlc.c    |  2 +-
 include/linux/clk.h                         | 10 +++++++--
 13 files changed, 38 insertions(+), 40 deletions(-)

-- 
2.43.0

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
