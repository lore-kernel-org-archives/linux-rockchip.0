Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C708606A8AD
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 14:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HQZLkOXD;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=j2QKutIN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=rE/4NZ9y9Dj1rehgDmK3RHyrgmCwvkCeJq1T0gRJNkg=; b=HQZLkOXDbzdlPmWfY5zjru1v+5
	up/3yZvNE9oRoC3fFH+IjVRbmsczFlLDwpehc7krsQh84FYS/cpewMCrGpjHDAxfuRAnDPs8aEWhw
	N8c5byf1ol8ImdmetYti6pJ6fQnuHc/01kTJnFBvGrY0j4qed3rILeJJjhqDxAs0hBX0uWM0Y4CzO
	d+CEWFGFgnpnv19fa9SrJLT/GIG/0RNs/3AsZxchI3rvvfDY0eny72Wgoqk6X2/sBSZQV3riujf2W
	Hg70uGEI8fVkjrNsbhIs8yvGI8ScTfNjRkm+Fw2MZM9Au/06Oq5jK36gOnUgIw2jk/m9e6SZFEVo6
	zXd8tKUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSb9k-000000002kX-0njf;
	Sun, 15 Nov 2026 14:24:32 +0000
Received: from mailgate01.uberspace.is ([95.143.172.20])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSb9h-000000002gb-2jlX
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 14:24:31 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 4439860D6C
	for <linux-rockchip@lists.infradead.org>; Sun, 15 Nov 2026 15:24:19 +0100 (CET)
Received: (qmail 21944 invoked by uid 990); 15 Nov 2026 14:24:19 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Sun, 15 Nov 2026 15:24:18 +0100
From: Leonard Lausen <leonard@lausen.nl>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: leonard@lausen.nl,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-wireless@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] wifi: rtw88: reduce RTL8822CS SDIO request overhead
Date: Sun, 15 Nov 2026 14:23:28 +0000
Message-ID: <20261115142330.359247-2-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Bar: /
X-Rspamd-Report: MID_CONTAINS_FROM(1) BAYES_HAM(-2.300008) MIME_GOOD(-0.1) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -0.900008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=5yIgk9Y/uhq3UEbSFnl5syJel/NO3xp8uQwJn+ydqwE=;
	b=j2QKutINRqmEpmsx1PLb6wOw7lHfv32bvsCfYGYu2XIrDJwyPwRMdUkRcvZ/DAtACnVd9F9Zdn
	JmEkILVqDBxcaNL9adwyWu/rv+q8ZXvJ9/SfIsvlU954sKiISlzNSsihpl6LMFvQYX65lV+9W51E
	EneXvcXLeMFSfQV/hhI+zNzrkdpmamllyaOOHj0qsMQRKEyJLsRy1dSPQ/LNr2H+D5mfV2hvShZ9
	1e8U5jmy+7rc+lfjVwYcXmaURViV4n6u0EOt5jZt4gYvW02/CVP4XbIguruaLedwSRAuEXw9OOoK
	EIMFDeCgwmXPmlIcLBOkOhAAq5UflxilBNjik4A6d2iEC4PYCbfsbBxyFYbrSMARt8lNb/JAnEFx
	ZjRpqe6nuBEshfGOQzgrIk3NBqLaJwCdzDt98t5n/FYHw07yi7rkvKWh+UCYY3dZj0dAsPukI2hf
	X0m/nsDnPEJ8kDj39sf9aKb6tNS1gX/TEB0Asq0yl9dRROfD1H+r5/ePSIw5LGx8Ebx/gb1sv/Yo
	3h67rA+Insvp5tI5uujd1VI1AlSLQz7OEXZWgTb0jI5iGiTyyohoPHW/AFb1gp+md9UBl0MqFZqi
	gQNJzw0ESRLb/5bsvL9S+hCMLz+A59SOyY3i7nf5Y1CT4T4sj0vcWKEzNSm97Jk+K30t4sNMbiBD
	k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_062429_910615_FCCDA7EE 
X-CRM114-Status: UNSURE (   7.16  )
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

Reduce SDIO request overhead by filtering hardware-handled control
frames and combining adjacent TX-capacity reads.

RTL8822CS on NanoPi M5, median TCP Mbit/s:

                              Upload   Download
  Neither patch                170.4      241.2
  Filtering only               258.2      263.3
  Combined register reads only 186.5      261.6
  Both patches                 286.9      273.5

Together the patches improved median upload by 68% and download by 13.4%.
Upload and download were measured in separate sessions, with four
20-second upload samples and four 30-second download samples per
configuration. Testing used a shared Wi-Fi network, so throughput can vary.

Runtime baseline: v7.4-rc2 plus the RX-bounds fix accepted in rtw-next
(83ca360e85280) and the MMC voltage-switch fixes in linux-next
(67a97316a31a3, a3838c21e28e5). All variants use stock MMC host limits,
198 MHz SDR104, performance governors and identical CPU placement:
SDIO IRQ on CPU4, iperf client on CPU6, server on CPU7. Traffic crosses
Wi-Fi/AP/Ethernet between two endpoints on the board.

All 20 configured rtw88 modules built with W=1. Sanitized function models
cover credit-read errors, fallback and buffer ownership. Module IDs,
filter registers, traffic paths and kernel logs were checked. AP/monitor,
suspend/resume and other-chip hardware remain untested.

AI assistance: Codex inspected sources, developed the changes and messages,
and automated validation. Prompts requested small optimizations measured
individually and together, with explicit prerequisite and impact checks.

Leonard Lausen (2):
  wifi: rtw88: 8822c: filter hardware-handled control frames on SDIO
  wifi: rtw88: sdio: combine free TX page register reads

 drivers/net/wireless/realtek/rtw88/reg.h      |  4 ++
 drivers/net/wireless/realtek/rtw88/rtw8822c.c |  9 +++
 drivers/net/wireless/realtek/rtw88/sdio.c     | 58 +++++++++++++++++--
 drivers/net/wireless/realtek/rtw88/sdio.h     |  1 +
 4 files changed, 68 insertions(+), 4 deletions(-)

base-commit: 7475ea8b58616b33c04afb976cf0fbaad9dd63fb

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
