Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6255606A31C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 10:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=e4ga0tRB;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=R2L2PtPE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=1/l+WweLNVu90Jndoc+HtcH9w8ZfZDfJczvEwzZE8qM=; b=e4ga0tRBUhiUL1q6/oQ87ZZR99
	btbfuVO4nQYCEs0mB31ahc9IGV9Pk2kT5tOzFIU29Uqucz2D5aJtb/70it0lAlX+heOGvGj93mzeM
	vAv5VEgQ5nrk7KzAVDeyDkSulEREW4z30WT3eL4x/aSt2Ml/QKQzbFzU9ZhP0o8a905G3J3E1d5ro
	RIhrtGq0UBn/te2p8i//tQpVcEtsSwjeO/zhbrwty32AU/TMJz31iT62po1Zj79G0pvlxIKSOsvKj
	FP7GaBbBwW42dDbpXWJGO8KsB4xDEN0XScFOeV0wriCZv5dtP2AzQEMfBKKKnL1bgkwhvvKdD+1YL
	FzPgoKpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStfX-00000001u1Y-0V80;
	Mon, 16 Nov 2026 10:10:35 +0000
Received: from mailgate01.uberspace.is ([95.143.172.20])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStfR-00000001u0l-1a22
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 10:10:33 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 099C260D27
	for <linux-rockchip@lists.infradead.org>; Mon, 16 Nov 2026 11:10:26 +0100 (CET)
Received: (qmail 25443 invoked by uid 990); 16 Nov 2026 10:10:25 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Mon, 16 Nov 2026 11:10:25 +0100
From: Leonard Lausen <leonard@lausen.nl>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: leonard@lausen.nl,
	Luka Gejak <luka.gejak@linux.dev>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-wireless@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH rtw-next v2 0/2] wifi: rtw88: reduce RTL8822CS SDIO request overhead
Date: Mon, 16 Nov 2026 10:08:01 +0000
Message-ID: <20261116100804.425592-2-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Bar: /
X-Rspamd-Report: MID_CONTAINS_FROM(1) BAYES_HAM(-2.326235) MIME_GOOD(-0.1) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -0.926235
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=vlpOviJWp1zkTyLG7AGt9l0GxQUdRlcWr39GIh/K9Kc=;
	b=R2L2PtPEeW6chpgYypugPzYpM2wHxgzlTTbj2pFOjTqk1oPZVXBx3YsgjWf7BCTh+2yv8d0ZdO
	7mAqXlFF7ZfvCcaU4wGqRaCJgD6/sIA71Et9aquFDrzkYxxI7LkzOoIeNag2+XuGoVui3tzA0BHq
	MTRQbZYUTAunrBQNjCSfqZDjie2EFWO3GL13E6mhyDPSR7sD6mXcnABbuvDbIuXRCsa/wgmQ7GyR
	XWAAv8VYwaLOqrxfpaVY+Ow9hupOf5V5C2bVxhhRCGz2Hw9AO9TwGw2NfzC+8f9xoIaEriFiCR4A
	MFa35hFAaD++5s7sXJdQf8WRgEZLhggYERnbBCjVPkyr3rjAWgFXhQra2mXBE/yEZ/Mec7tvbDdu
	COHJ8KOioR1dLfouKqRIXNdhcciGMjxCO31Kq0UAsGFYj8o4xUBmscVcOu/vKCzKrR/cHd8eI6Py
	eWMp4LuvhZQxBG7rmL9bRB+dL8oc1G5J65n6hBshMWNIWpK2liRYzbiBb+4KhahDxhMBYPEccqD1
	KOrBXYfq2hKTg9xpibeGURA/cN7BYfSMvBHJTc47E1lnEqUg5fO9CITtxORts0yeY3qCsu+wT9QK
	UktNbcfawqMkr5EZNX6yFVzSAA7N+VwRdvSgpXQGD4HLCtctgn9QMkc/yrdfiCHDjf0tDh3IVa4u
	g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_021030_701523_00509A51 
X-CRM114-Status: UNSURE (   9.05  )
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

This complete v2 series is based on rtw-next at 61a5eb87b2d9. Changes in v2:
- Rebase both patches onto rtw-next.
- Fix continuation and argument alignment, declaration order, comment
  formatting and long lines throughout the added code.
- Remove the deprecated Assisted-by tag.
- Refresh throughput measurements using the rebased driver.

TCP medians on RTL8822CS/NanoPi M5 with the v2 driver, in Mbit/s:

                              Upload   Download
  rtw-next baseline             165.7      206.7
  Both patches                  296.9      271.2

Together the patches improved median upload by 79.2% and download by 31.2%.
Each configuration used three 20-second TCP samples per direction on a
shared Wi-Fi network, so throughput can vary.

Both driver stacks were built against the running v7.4-rc2 kernel and
hot-loaded. The same test-only adaptation restored the older key-iteration
API and RCU locking in firmware recovery. Both configurations used the
same MMC host stack, 198 MHz SDR104 and performance governors, with SDIO
IRQ on CPU4, iperf client on CPU6 and server on CPU7. Traffic crossed
Wi-Fi/AP/Ethernet between two endpoints on the board.

Independent v1 tests measured a 52% upload and 9% download gain from
filtering alone, and 9% upload and 8% download from combined reads alone.
Adding combined reads after filtering gave another 11% upload and 4%
download. Those tests used v7.4-rc2 with the RX-bounds and MMC voltage-switch
fixes and stock MMC host limits: four 20-second upload samples and four
30-second download samples per configuration on the shared network.

All 20 configured rtw88 module objects compiled and linked as relocatable
objects on ARM64 with W=1 after each patch, without warnings. Runtime
builds passed modpost; loaded module IDs, traffic paths and register
settings were checked. MMC traces confirmed three 4-byte capacity reads
became one 12-byte read, with zero SDIO command errors.
No full rtw-next kernel was booted or installed module files replaced.
AP/monitor, suspend/resume and other-chip hardware remain untested.

AI assistance: Codex helped develop the code, inspect vendor sources,
automate the earlier benchmarks, rebase the series, apply style fixes
and draft the messages.

v1: https://lore.kernel.org/linux-wireless/20261115142330.359247-2-leonard@lausen.nl/

Leonard Lausen (2):
  wifi: rtw88: 8822c: filter hardware-handled control frames on SDIO
  wifi: rtw88: sdio: combine free TX page register reads

 drivers/net/wireless/realtek/rtw88/reg.h      |  4 ++
 drivers/net/wireless/realtek/rtw88/rtw8822c.c | 10 +++
 drivers/net/wireless/realtek/rtw88/sdio.c     | 63 +++++++++++++++++--
 drivers/net/wireless/realtek/rtw88/sdio.h     |  1 +
 4 files changed, 74 insertions(+), 4 deletions(-)


base-commit: 61a5eb87b2d9b4d5e353780b781cf691f39ba9e1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
