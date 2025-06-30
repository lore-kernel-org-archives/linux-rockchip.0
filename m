Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE35C7EE39
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 09:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoOSo62ma4+v9WRPRUmbNXeg6rI3vXVtQV1mPU/INQo=; b=rY+BjiJShv1X7I
	NHTf2ddPi/i+jLbK+DfDQYJ7YBq8j5S0PiraRnOGF9Yg6vHFIufglXldM0eVrz9JDRl0ylSfqr0Zt
	AN1GWuxpIiDog47AiCyAlmmxqRJdYU+ChyKR8nuDpVpDrfEMaQF6hzMtnZkInmgBO5XhfeA5AFcZR
	zhwYdUwYVZgaVJZE47/ipgzQWB+2TO/eTqbXt/2W3SnoD7GuQutUhD2jTah91c6on9fZ7Ctxsa4h6
	6zGkmUB7uGyxRQmNbAODhkFHx8CEEGKzVdSVFPxiVmE3bOSdacs/E7ADOjDQUBCEcqPYKIarHmJMn
	1Vo4/hlmNaITiyXTsJ7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWBAP-00000001neS-3rEB;
	Mon, 30 Jun 2025 09:51:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWB5N-00000001miZ-2LD8;
	Mon, 30 Jun 2025 09:46:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Cn8BMki2iNN1P/r7R/LxfdYCZZ1q8hREXMj3I0Sa8ZE=; b=Iy+lnfhedJb8ntN9LrDCbgPqG8
	S/rRq668VaAryVBv5dvtasNvt5dUT4AvN3LaIe8wc0KhtQHG0lK66c+Np1yNMnpyk0Fq0XSyxX8Y7
	0HM73wMZnS3fclioohKbi5VwYne6rfP2KBRETPcPs3KdlltdMcuNJ0u5JtH+Fac9XUV2Uc6W+qD1s
	I2P4w14BQU/4OQP1ZRoJ7bxg1JVY5GJI4KEIsSuIaUSExaxaEN86DrfGNH+i1rfCe1ggUoqjtt0Fr
	NmsD7VTBdcyZXGUAfDCfkiLdA1pf1MXKDljzGcwrd5Z1Z5AIGS+cnj5cq4JTlHdrbmGGIO8CwFkOq
	RMcDd1NQ==;
Received: from i53875bfd.versanet.de ([83.135.91.253] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uWB5L-0006Zc-EA; Mon, 30 Jun 2025 11:45:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Valentin=20H=C4=83loiu?= <valentin.haloiu@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI receiver on CM3588
Date: Mon, 30 Jun 2025 11:45:47 +0200
Message-ID: <175127673171.138768.10885736294525239875.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250622185814.35031-1-valentin.haloiu@gmail.com>
References: <20250622185814.35031-1-valentin.haloiu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_024601_594665_9BEE20D0 
X-CRM114-Status: GOOD (  10.62  )
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

Ck9uIFN1biwgMjIgSnVuIDIwMjUgMTk6NTg6MTIgKzAxMDAsIFZhbGVudGluIEjEg2xvaXUgd3Jv
dGU6Cj4gRW5hYmxlIHN1cHBvcnQgZm9yIHRoZSBIRE1JIGlucHV0IHBvcnQgZm91bmQgb24gRnJp
ZW5kbHlFbGVjIENNMzU4OCBhbmQKPiBDTTM1ODggUGx1cy4KPiAKPiAKCkFwcGxpZWQsIHRoYW5r
cyEKClsxLzFdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgSERNSSByZWNlaXZlciBvbiBD
TTM1ODgKICAgICAgY29tbWl0OiBmOWY0NTI5M2YwZDhiZGM1ZTJkMGQyNTVjYWZhMGFjZGIyYzk0
NjE2CgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
