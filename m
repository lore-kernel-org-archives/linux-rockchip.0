Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0591A606A32A
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 21:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jjidGrMd;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=CaxRUBwp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ZD5J+fBarb1Zxkz0XganoWBEPAJByApYhsVI0ah2LbA=; b=jjidGrMd5RMIt9XoOZ5PLqQcOh
	ff6LFKra76YY/mQrtbj88oVWDBgDFtEVnFlqEvKeIULiqyOYfVX0BP19jaDFEUtDn7Ad4Bw+ZJ9GA
	TrlMnGEgFf+LfnT+ueT9XjPPxpN+j1p2X45h2t3RvVeh6FKi5WzPyjRHM8uBo4h+rPWzw96fznipC
	IF4SFBfGTs6787nIqeeLijrMmYXUKeh865syfD1JWdKXSnCWUjIf0kejiEmZygpAko8/ZMNJ5zbv5
	UAicJgkl6ORso5zLJxpyLbry15NYjpbpqz6TuRw10UnIbBFXifuFm1qmHeeWr1ciJ82eYO855971D
	nmMgf1Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT3oN-00000003vDS-125w;
	Mon, 16 Nov 2026 21:00:23 +0000
Received: from mailgate01.uberspace.is ([95.143.172.20])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT3oK-00000003vC5-2ZF9
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 21:00:22 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id B8B5C60E96
	for <linux-rockchip@lists.infradead.org>; Mon, 16 Nov 2026 22:00:09 +0100 (CET)
Received: (qmail 12581 invoked by uid 990); 16 Nov 2026 21:00:09 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Mon, 16 Nov 2026 22:00:08 +0100
From: Leonard Lausen <leonard@lausen.nl>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: leonard@lausen.nl,
	Luka Gejak <luka.gejak@linux.dev>,
	=?UTF-8?q?David=20H=C3=A4rdeman?= <david@hardeman.nu>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-wireless@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH rtw-next v3 0/2] wifi: rtw88: reduce RTL8822CS SDIO request overhead
Date: Mon, 16 Nov 2026 20:57:36 +0000
Message-ID: <20261116205739.462458-2-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Bar: /
X-Rspamd-Report: MID_CONTAINS_FROM(1) BAYES_HAM(-1.566282) MIME_GOOD(-0.1) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -0.166282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=s64AcT1mjvKxzrF8EX7/wEmjN6h23exbF8W+hJmJhI8=;
	b=CaxRUBwpFuQ19gr1cydMzD3WgXht+DOrkY06SFMCFAisd6Hj9zco1HIF3f1P7zpnGkFYXMi0j5
	LCkGGpULAqXCDIip6lRiTuqT4bBQefRnZboOxqxjYy2/7iOQmjprwnyZbqiAZuGaiRgl6vhd874n
	DpFSHKgt4VVmT/bfFlOFumIKPwtYkqxL4OkjVnuIBE7RfGY2kPouefgm01Upwra9jBy0S+2tzCGS
	8t5VZzbgx2N45lEiOZfLRz0NtrWm2C7Gv/d1PU8A7NyFOGMLTHI24wZZyFkazPGGixCyq6Umsw4Y
	y1/CEEp2T4i/cxZeYjtSmgjAFfb56vAQxRV1O8Y7laaHYQUuVLBwqEiAnnNuaxntN4z5FB/Ci+7Y
	rURIwvn1ZaF123FumiB6gLLO9k0xY3KqD7zHTaroxUl48mG1xq5tWqDzfuQXwe7Fy55nNtsbQ9lN
	bUmTTVKjLHzjqvqnyUrFbUaPfvUO3pf0jTgPkPnMD7KzTzY4EGEofHHeSP4dDL9Iy3oul99+ePCY
	C26YHx92sp5t7vPSgTVvli8Uh5i+qWSJso96I7JG1AN2jaBt+t2IipgJ0hfTf902FrIbiJLngYhQ
	REs9jtE24e3JJJQSH+OgJ4xbWQnzvnvb7FR8PtwXFi7SQdSUZJ1rJG60y8iYV0YHPQSQv8dyvU+M
	I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_130020_900259_D634888F 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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

Reduce RTL8822CS SDIO request overhead by filtering hardware-handled
control frames and combining adjacent TX-capacity reads.

Changes in v3:
- Include monitor-filter correction in patch 1 as suggested by Luka Gejak.
- Cache the current FIF_CONTROL request even when changed_flags omits it.
- Use a shared filter writer in every chip initializer and both
  beamforming paths, preserving the monitor override and normal default.
- Keep the TX-capacity read optimization unchanged from v2.

On RTL8822CS/NanoPi M5, v2 lost the monitor override after IPS wake and
managed association: REG_RXFLTMAP1 was 0xc5ff instead of 0xffff. V3 kept
0xffff in both cases and restored 0xc5ff after monitor removal. Function
tracing confirmed filter configuration preceded MAC initialization on
IPS wake and both MU beamforming functions ran during association.

TCP medians on the same board with v3, in Mbit/s:

                              Upload   Download
  rtw-next baseline             163.4      247.5
  Both patches                  285.4      277.0

Median upload improved by 74.6% and download by 11.9%. Each configuration used
three 20-second TCP samples per direction on a shared Wi-Fi network,
so throughput can vary. Drivers were built against the running v7.4-rc2
kernel and hot-loaded with the same test-only key-iteration API adaptation
in firmware recovery. The MMC stack stayed unchanged, at 198 MHz SDR104,
with performance governors, SDIO IRQ on CPU4, client on CPU6 and server
on CPU7. Traffic crossed Wi-Fi/AP/Ethernet between endpoints on the board.

Independent v1 tests measured 52% upload and 9% download gains from
filtering alone, and 9% upload and 8% download from combined reads alone.
Adding reads after filtering gave another 11% upload and 4% download.
V1 used v7.4-rc2 plus the RX-bounds and MMC voltage-switch fixes, stock
MMC host limits, four 20-second upload and four 30-second download samples.

All 20 configured rtw88 module objects built on ARM64 with W=1 without
warnings; the runtime build passed modpost. Source-extracted filter tests
with mocked I/O reproduced failures before the correction; all 198 checks
passed with address/undefined-behavior sanitizers after it, including MAC
reset, unchanged flags and beamforming sequences. Actual full-system
restart, suspend/resume, AP operation and other-chip hardware remain
untested.

AI assistance: Codex traced the filter writers, developed the state
correction and regression tests, prepared the messages, and automated
builds and hardware validation. Prompts requested preserving FIF_CONTROL
across initialization, flag replay and beamforming, then retesting.

v2: https://lore.kernel.org/linux-wireless/20261116100804.425592-2-leonard@lausen.nl/T/#t


Leonard Lausen (2):
  wifi: rtw88: 8822c: filter hardware-handled control frames on SDIO
  wifi: rtw88: sdio: combine free TX page register reads

 drivers/net/wireless/realtek/rtw88/bf.c       |  4 +-
 drivers/net/wireless/realtek/rtw88/mac80211.c |  9 +--
 drivers/net/wireless/realtek/rtw88/main.c     | 11 ++++
 drivers/net/wireless/realtek/rtw88/main.h     |  2 +
 drivers/net/wireless/realtek/rtw88/reg.h      |  4 ++
 drivers/net/wireless/realtek/rtw88/rtw8723x.c |  2 +-
 drivers/net/wireless/realtek/rtw88/rtw8814a.c |  2 +-
 drivers/net/wireless/realtek/rtw88/rtw8821c.c |  2 +-
 drivers/net/wireless/realtek/rtw88/rtw8822b.c |  2 +-
 drivers/net/wireless/realtek/rtw88/rtw8822c.c | 12 +++-
 drivers/net/wireless/realtek/rtw88/rtw88xxa.c |  2 +-
 drivers/net/wireless/realtek/rtw88/sdio.c     | 64 +++++++++++++++++--
 drivers/net/wireless/realtek/rtw88/sdio.h     |  1 +
 13 files changed, 99 insertions(+), 18 deletions(-)


base-commit: 61a5eb87b2d9b4d5e353780b781cf691f39ba9e1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
