Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35709606A329
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 19:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1GZjWHp+;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=YkBs96yW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=aQxXxavolF7UXKhqba+ApT5iOJy6KhU7tNgsU0TRyvQ=; b=1GZjWHp+ZYFnVUKf3euYFdp+5e
	TXUWVEf9TsIb/s72i3RC1cpKeiuGzwYOLSk5Z3pHJbYlmrsOM7cQ2qioJa00n4aor+OeyTvNTHhoQ
	9CdY5TVECpv5QLrLDaSR0EHnQNy/c9CDhlLPDf+64IJ+MZ5J+RoUParT9OomE1Sc53spLc+Qk+55a
	tP9gxEGx9JE+LU0DAA/ld7Y3OccgqY/yI6LyMbaTMZ0ULtUEJzUoLYASyfG05PPnzeccpdAtW7kSX
	Q0TqO18gfcDSscl5fQcpC8GBUbVGhBy2nhk8xnZHkREZxQ5TW9+4tUct4aTf/5BFwDRSuuCawGkGp
	dNbKl9zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWeoq-0000000EDyK-3ScG;
	Thu, 26 Nov 2026 19:07:44 +0000
Received: from mailgate01.uberspace.is ([2001:1a50:11:0:c83f:a8ff:fea6:c8da])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWeon-0000000EDxG-37Kk
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 19:07:43 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 1BE9561750
	for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 20:07:40 +0100 (CET)
Received: (qmail 28508 invoked by uid 990); 26 Nov 2026 19:07:40 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Thu, 26 Nov 2026 20:07:39 +0100
From: Leonard Lausen <leonard@lausen.nl>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: leonard@lausen.nl,
	Luka Gejak <luka.gejak@linux.dev>,
	=?utf-8?q?David_H=C3=A4rdeman?= <david@hardeman.nu>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-wireless@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH rtw-next v5 0/2] wifi: rtw88: reduce RTL8822CS SDIO request overhead
Date: Thu, 26 Nov 2026 19:07:31 +0000
Message-ID: <20261126190734.1151883-1-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Bar: -
X-Rspamd-Report: MID_CONTAINS_FROM(1) BAYES_HAM(-2.99994) MIME_GOOD(-0.1) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -1.59994
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=/2lcIvZ1NIRbNOxDMXK1/2IJX+amxIEYS7IAp9bqB+M=;
	b=YkBs96yW7k68faMhStJUgRNcCzEdPADTwX275PbH/hlxsh6NNz/41C5J3oiXpT8u7prxcldjWW
	yLfl1z/hu+FAPStoBaeIUlBBqQxnKIG+JR9YIiDo703sSPHLnWkF1dQ0VOTxOhdr6iB2m9izDDDU
	/lIMf4S4gqrO0pyndPWZA+4Q6XiYKqSl+ARCdpPgYVzz6ZOospVsjVYmkCN2kqLOfx/oenvu2tWN
	uJxexF6BobVOqq0m+dqvlbQ3EMyqaWQ4RPkzvA+HrlhsY7F1PVipqMpv7xpATckkXmIy4EqQHjm4
	mqQRJ8VkVekSFVY9aIxci2dGTZjCx1eb6BNYUMz1Iyabqkn9JSKjYVJHnByOGVW7q5D3cWP8SIi8
	8Ap4e2gltovT6hOItrcbSWIvfWfCwE4b8zOZly4JUcbgEw1J3isxIsRnOINEN1rnxbyIM51vuvTN
	OrrugP2uTd4HC0p3QY5bvtFDgGPA8IjBly1QkBZKf4k4a/I5DbFRQq0GOs63WM4oBNN1GBTktGX8
	hU9Z+pXH3ZLGGRFfmE4lCPbfHOLLyZw/n0d0WItorQrDVsbS/UBK+v/fCldcNDs+XMN+X7umpg3T
	1d//1Zg97t54Z+nqqpWbEfYc5yrSAyGed7VhpJRszV4Xs9lG9NIRmw6ixWQpZflbFdVHroEewgYp
	Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_110741_921470_6FB448F4 
X-CRM114-Status: GOOD (  10.97  )
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

Changes in v5:
- Add Luka Gejak's Reviewed-by to both patches; no code changes.

Changes in v4:
- Add the requested blank line, order RXFLTMAP1 bits from high to low,
  and describe the filter as not forwarding the selected control frames.
- Quantify patch 2's request time and isolated throughput gain, and add
  Ping-Ke Shih's Acked-by with that description.

Full-series testing on RTL8822CS/NanoPi M5 on 16 November with v3
measured these TCP medians in Mbit/s:

                              Upload   Download
  Neither patch (rtw-next)      163.4      247.5
  Both patches                  285.4      277.0

That comparison used three 20-second samples per direction and build:
74.6% higher median upload and 11.9% higher median download.

The follow-up v4 tests on 17 November isolate patch 2, with patch 1
enabled in both builds. Median TCP throughput in Mbit/s:

                              Upload   Download
  Filtering only                254.4      275.4
  Both patches                  284.7      285.5

Upload increased by 11.9% and download by 3.7%. Each configuration used
six 20-second samples per direction in F/FC/FC/F blocks, three samples
per block. The two tables report separate test sessions on a shared
Wi-Fi network; download samples overlap and throughput can vary.

Separate MMC traces timed the reads of available transmit-buffer space.
Without patch 2, the driver reads three registers using three 4-byte SDIO
requests; patch 2 reads the same 12 bytes in one request. The median time
from the first request start to the final completion fell from 51 to
13 us (74.5%). This measures the SDIO request span, excluding waiting to
acquire the host before the first request and processing results after
the last completion.

Two traces per build reproduced the same respective median during
15-second UDP uploads. The sender's requested rate was 600 Mbit/s;
achieved TCP throughput was measured separately above. No MMC errors
or dropped trace events were observed.

AI assistance: Codex developed the changes and messages and automated
builds, hardware checks and measurements. Prompts requested the review
corrections and an isolated, repeated benchmark of the register reads.

Earlier discussion:
https://lore.kernel.org/linux-wireless/20261116100804.425592-2-leonard@lausen.nl/T/#t

Leonard Lausen (2):
  wifi: rtw88: 8822c: filter hardware-handled control frames on SDIO
  wifi: rtw88: sdio: combine free TX page register reads

 drivers/net/wireless/realtek/rtw88/bf.c       |  4 +-
 drivers/net/wireless/realtek/rtw88/mac80211.c | 10 ++-
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
 13 files changed, 100 insertions(+), 18 deletions(-)


base-commit: 61a5eb87b2d9b4d5e353780b781cf691f39ba9e1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
