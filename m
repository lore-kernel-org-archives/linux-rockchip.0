Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29CE606A31E
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 18:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Q2GNYkLs;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256 header.s=key1 header.b=xWqq6Ytz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+L01tH8Zc3cxsY3qoT0N+uuT5tB+DkxCFSn6YvTEiXQ=; b=Q2GNYkLsSzuy2S6llwTIks0qP8
	eXfhFYLoY1LB4f1q9BmD8Sh1FK5DjJ1GjdjkfxIOFkRN5AqS9mOR+sdRmU6/hUf2Pyt8AvO5QhZsr
	LQBYLUm0OFythIADey7NaYkQyaQAyU2oeB5qv1teH3F4QPSLNr105YntXXGMJU9lh1rdhETgh7Vh5
	lTlVarB/M2kVJiPxTjzVTNtRCuNEZpNTYPLXFX4agq3LLsJU1gtT7QSixyLl22NeaZ0E+jnIhXn14
	+T5kvOiP4/VR6AzbFmA/ZmV5gXtWWuC838+BNB3vmwBrLaOc7Nw3CqXiqk3o4MREczVTZvJCD+1o9
	bjPxvQFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSew1-00000000KRq-2A08;
	Sun, 15 Nov 2026 18:26:37 +0000
Received: from out-95.mta1.migadu.com ([2001:41d0:203:375::5f] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSevy-00000000KRO-2Ygs
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 18:26:36 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=ya6B7gVo7+tq2SFNtrJ1DU++OTmw3FzfOanRib/ggkk=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1794767190; v=1; x=1795371990;
 b=xWqq6Ytz+wVRlDOrMYXwYvevrkjMQ2eN1dUy6pZtXSnaZwi1oN2q7riacxrRWNYLVN9E0Ehv
 LYZUz6bsXFqz3tNvFFgx659Ciizs7knUMWW4XHi42RLNgHAoqRrbk2p9il0MFPhlZAzmkhgFbVd
 hI0DjERIL3eV02eMIHU2N/9I=
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 0dbe625ad8b95c5b;
	Sun, 15 Nov 2026 18:26:30 +0000
X-Mizu-Trace-ID: 0dbe625ad8b95c5b
X-Migadu-Flow: FLOW_OUT
Date: Sun, 15 Nov 2026 19:26:25 +0100
From: Luka Gejak <luka.gejak@linux.dev>
To: linux-wireless@vger.kernel.org, Leonard Lausen <leonard@lausen.nl>,
 Ping-Ke Shih <pkshih@realtek.com>
CC: leonard@lausen.nl, Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] wifi: rtw88: reduce RTL8822CS SDIO request overhead
In-Reply-To: <20261115142330.359247-2-leonard@lausen.nl>
References: <20261115142330.359247-2-leonard@lausen.nl>
Message-ID: <27B2AC6E-6293-4287-B966-986AF8C0CABE@linux.dev>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_102634_856030_15635A5C 
X-CRM114-Status: GOOD (  10.64  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Leonard,

On November 15, 2026 3:23:28 PM GMT+01:00, Leonard Lausen
<leonard@lausen.nl> wrote:
>Reduce SDIO request overhead by filtering hardware-handled control
>frames and combining adjacent TX-capacity reads.
>
>RTL8822CS on NanoPi M5, median TCP Mbit/s:
>
>                              Upload   Download
>  Neither patch                170.4      241.2
>  Filtering only               258.2      263.3
>  Combined register reads only 186.5      261.6
>  Both patches                 286.9      273.5
>
>Together the patches improved median upload by 68% and download by 13.4%.
>Upload and download were measured in separate sessions, with four
>20-second upload samples and four 30-second download samples per
>configuration. Testing used a shared Wi-Fi network, so throughput can
>vary.
>
>Runtime baseline: v7.4-rc2 plus the RX-bounds fix accepted in rtw-next
>(83ca360e85280) and the MMC voltage-switch fixes in linux-next

Series targeted for rtw-next should be based on rtw-next, unless there is
a good reason for doing otherwise.

>(67a97316a31a3, a3838c21e28e5). All variants use stock MMC host limits,
>198 MHz SDR104, performance governors and identical CPU placement:
>SDIO IRQ on CPU4, iperf client on CPU6, server on CPU7. Traffic crosses
>Wi-Fi/AP/Ethernet between two endpoints on the board.
>
>All 20 configured rtw88 modules built with W=1. Sanitized function models
>cover credit-read errors, fallback and buffer ownership. Module IDs,
>filter registers, traffic paths and kernel logs were checked. AP/monitor,
>suspend/resume and other-chip hardware remain untested.
>
>AI assistance: Codex inspected sources, developed the changes and
>messages,
>and automated validation. Prompts requested small optimizations measured
>individually and together, with explicit prerequisite and impact checks.
>
>Leonard Lausen (2):
>  wifi: rtw88: 8822c: filter hardware-handled control frames on SDIO
>  wifi: rtw88: sdio: combine free TX page register reads
>
> drivers/net/wireless/realtek/rtw88/reg.h      |  4 ++
> drivers/net/wireless/realtek/rtw88/rtw8822c.c |  9 +++
> drivers/net/wireless/realtek/rtw88/sdio.c     | 58 +++++++++++++++++--
> drivers/net/wireless/realtek/rtw88/sdio.h     |  1 +
> 4 files changed, 68 insertions(+), 4 deletions(-)
>
>base-commit: 7475ea8b58616b33c04afb976cf0fbaad9dd63fb

Can you resend this properly, as v2, as resending singular patches is not
encouraged?

For the actual patches:

Read Documentation/process/coding-style.rst and
apply what you learn in there to all patches. Furthermore Assisted-by tag
is deprecated and should be removed, which you would have seen if you had
ran checkpatch on your patches. Address these and other style issues and I
will review v2, as I don't have time right now.

Best regards,
Luka Gejak

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
