Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCCEAC3601A
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 07:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLK5XvWGmrbjLOmNrQnOx9Hp7wdlXHrBLjoLHkTZxIY=; b=F+Eg6gmHhdUB0A
	1+I+gEijFaQ0A+YasT9WAxpXL93Lr4x5w20TCbxX2oM1KKOGYc3UId/ctB8j7eJEx21fnnGhtt2cn
	hsxRSkUODVeTvYuPYXG2fr7WgujTVbS2BKX/rqpja+DYVJHboUBbtUC0iCpMKyuNHRVpRL+KMRrX/
	utI92E8mmVDnFT8P158TuvFWcDUIfdYfrh7LeXfVwCXk57mA9wPxgzpnqYxYgTnp/+fPit1AF/6MH
	giJoyhu6vICyY4i3Ii67hBamDAzIXWK+4khExoTfXg712uCcJ/VqIbB667Cz7aT1KH0Itp65BemzJ
	Z9qjYIS11m0iW2lVCSuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1h3h-0000000GoGZ-0Jwv;
	Mon, 07 Apr 2025 07:38:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gk8-0000000GiTY-0b1X;
	Mon, 07 Apr 2025 07:18:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4PrlT27m9EP8rauA//gYPo/7ZjcRwVCAYzD7lAeAzf8=; b=BKNm6qKL5YDNJ4RtcOlsTx3pmz
	q0Y87boZY7QNW/XctkHIjm2fywnulpwanlL3Fm8OeAgMdvkSmhq9XcCgV+s75GVyGHCCzjIIjjbcS
	g1t8lcboGl+ssRG9HG3Mex79tnMgk8TCg37CyO69hoWzlx0JSwekOpC8aXwR4qiFVdbQcNTVze3bV
	IanHrqCgmGv45szjSRPRKGRoH/pdiludTsU+/EYs/WB7Fzcylzy7MjJPmBbe7G9oNFltlQwGKPQq2
	NKsOtvho71+nVnAdFAqMtc65jmobpTQ/Z0DzWYsueNoLhNmyyVavyDqw480NCdmbcheFO1cSnp+7C
	WS7VBGKQ==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u1gjx-0000tP-Se; Mon, 07 Apr 2025 09:17:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: ts433: Add pinmuxing for eMMC
Date: Mon,  7 Apr 2025 09:17:45 +0200
Message-ID: <174401024397.372530.6675456820651613380.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250319113138.125192-2-uwe@kleine-koenig.org>
References: <20250319113138.125192-2-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_001804_199830_D8E9F84E 
X-CRM114-Status: UNSURE (   9.82  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIFdlZCwgMTkgTWFyIDIwMjUgMTI6MzE6MzggKzAxMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdy
b3RlOgo+IFdpdGggdGhpcyBhZGRlZCBiYXJlYm94IGlzIGFibGUgdG8gYWNjZXNzIHRoZSBlTU1D
IGV2ZW4gd2hlbiBib290ZWQgdmlhCj4gVVNCLgo+IAo+IAoKQXBwbGllZCwgdGhhbmtzIQoKWzEv
MV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IHRzNDMzOiBBZGQgcGlubXV4aW5nIGZvciBlTU1DCiAg
ICAgIGNvbW1pdDogN2ZjMDI3ZTg5NGZhZTdjODY2MWI1MmIxZmRlMjIzMDA0YjJhOGUwYwoKQmVz
dCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
