Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D03FC369DC
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 12:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4n3opCIQrCIbnNMyaW5DZn3HyvMiIov8eAw7ijz/3Zw=; b=F0WHaPNbnOyzR8
	fB9i/VOX4OYZrx0zrSX2mHo6rXsXV7fjI7n+ZDL8w/GV1VesX3CVEqBEGYuKE6kuS2DpcPrLXvjnl
	XIZ1zYb6qinRpr6Pe1k3tkJku8LO7Mkv1lvOzX9WJBPooHYAH0w2z9xcc5tvpixyWxPwPmOoVlGh7
	Kk/ts74skcfD3eSUuUPl6xR66x6m0zUUlm7uBK42okVhWLG5iCuSOhHUqWK3JQ1FhTN1VzK33nocL
	8eSwLF7XwvwLhyZLouRoqrd84I4lNmq7E95hQAbbZmzS7wif7G09qN0UkhPcSjKvg6FNjq2kv/JR2
	+ZrojXO8p+z5zKpX5WRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uATIT-0000000Fj0Y-0gNh;
	Thu, 01 May 2025 12:45:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAT2O-0000000FeYo-2jUd;
	Thu, 01 May 2025 12:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=qY7jMh2s1Q1/dxv6yXIZWQpJJC7k3Ol85coLC/4oDNs=; b=DP6jfear58qpqLih8qEWeAKnQQ
	Am4/8PcoygDS5o6wPyNNnUy0zvYj8bbVtlYNpg61LXGX1j5zZiBO6wRVUpDJo4xruDni7GlGyBNwh
	LHIErPoNjgMhjuckkR12zUAxifgvdKGpG+iSS5oJ1V6jDs8j0BlWxt4a95QJESN7zVWCHoQXS4AH5
	2FQ30Io/ZM48p3VvhJI13Y4JuD8QHc8/a6c/S82IuzkqnasGqhW6pJAcgCQSLPQIMNs1zsu7gzF+2
	4vsbA3V8ZZUmEvUz6AKIjH/yiTq1mC0Vav2HgilyjKGiCzv2GUYC76ElZZOiR9XB89XTHXIdF4fRW
	WuOP+l+g==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uAT2A-000129-Qn; Thu, 01 May 2025 14:28:58 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>, Alex Bee <knaerzche@gmail.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 hjc@rock-chips.com, mripard@kernel.org, neil.armstrong@linaro.org,
 dmitry.baryshkov@oss.qualcomm.com, knaerzche@gmail.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v4 0/7] Convert inno hdmi to drm bridge
Date: Thu, 01 May 2025 14:28:57 +0200
Message-ID: <3554727.QJadu78ljV@diego>
In-Reply-To: <20250422070455.432666-1-andyshrk@163.com>
References: <20250422070455.432666-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_052912_706299_946A5C5A 
X-CRM114-Status: GOOD (  16.35  )
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

SGkgQWxleCwKCkFtIERpZW5zdGFnLCAyMi4gQXByaWwgMjAyNSwgMDk6MDQ6MzkgTWl0dGVsZXVy
b3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBBbmR5IFlhbjoKPiBGcm9tOiBBbmR5IFlhbiA8
YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gV2hlbiBwcmVwYXJpbmcgdG8gY29udmVydCB0
aGUgY3VycmVudCBpbm5vIGhkbWkgZHJpdmVyIGludG8gYQo+IGJyaWRnZSBkcml2ZXIsIEkgZm91
bmQgdGhhdCB0aGVyZSBhcmUgc2V2ZXJhbCBpc3N1ZXMgY3VycmVudGx5Cj4gZXhpc3Rpbmcgd2l0
aCBpdDoKPiAKPiAxLiBXaGVuIHRoZSBzeXN0ZW0gc3RhcnRzIHVwLCB0aGUgZmlyc3QgdGltZSBp
dCByZWFkcyB0aGUgRURJRCwgaXQKPiAgICB3aWxsIGZhaWwuIFRoaXMgaXMgYmVjYXVzZSBSSzMw
MzYgSERNSSBEREMgYnVzIHJlcXVpcmVzIGl0J3MgUEhZJ3MKPiAgICByZWZlcmVuY2UgY2xvY2sg
dG8gYmUgZW5hYmxlZCBmaXJzdCBiZWZvcmUgbm9ybWFsIEREQyBjb21tdW5pY2F0aW9uCj4gICAg
Y2FuIGJlIGNhcnJpZWQgb3V0Lgo+IAo+IDIuIFRoZSBzaWduYWwgaXMgdW5zdGFibGUuIFdoZW4g
cnVubmluZyB0aGUgZ2xtYXJrMiB0ZXN0IG9uIHRoZSBzY3JlZW4sCj4gICAgdGhlcmUgaXMgYSBz
bWFsbCBwcm9iYWJpbGl0eSBvZiBzZWVpbmcgc29tZSBzY3JlZW4gZmxpY2tlcmluZy4KPiAgICBU
aGlzIGlzIGJlY2F1c2UgVGhlIEhTWU5DL1ZTWU5DIHBvbGFyaXR5IG9mIHJrMzAzNiBIRE1JIGFy
ZSBjb250cm9sbGVkCj4gICAgYnkgR1JGLiBUaGlzIHBhcnQgaXMgbWlzc2luZyBpbiB0aGUgY3Vy
cmVudCBkcml2ZXIuCj4gCj4gUEFUQ0ggMX42IGFyZSB0cnkgdG8gRml4IERvY3VtZW50IGluIHRo
ZSBkdC1iaW5kaW5nLCB0aGVuIGFkZCB0aGUKPiBtaXNzaW5nIHBhcnQgaW4gZHJpdmVyIGFuZCBk
dHMuCj4gUEFUQ0ggNyBjb252ZXJ0cyB0aGUgY3VycmVuIGRyaXZlciB0byBkcm0gYnJpZGdlIG1v
ZGUuCgp0aGlzIGxvb2tzIGFsbCBwcmV0dHkgb2theSB0byBtZSwgYnV0IGNvdWxkIHlvdSBjaGVj
ayB0aGF0IHlvdXIgcmszMTI4CmtlZXBzIHdvcmtpbmcgYW5kIG1heWJlIHByb3ZpZGUgYSBUZXN0
ZWQtYnk/CgpUaGFua3MgYSBsb3QKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
