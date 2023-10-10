Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6561CD68E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 00:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32uQMNYn0sKJLOoH+p2BvnbGxJGCwK+up7H+D6S//24=; b=mQ+bTJU8SKBPUX
	xzQJ6SK2XMjdOcsCUeC52VtDOJkUtmC23OpNGSEEqSW1wMKQM52qVo6e4eayMohObUBPKWa5lresl
	hvvwJTCYvWjzKbcGCFvAMJFCNAFMGivtxDXDCI32J9Mb8r48w660QORLzsPK2fIlycnITaW+pI9VC
	kMixhoIN8QxkLrcE7OGerl40YEnck+WDhtrR/RzfItK2mTiEJncZe3/d2hLyeyfCD1t+4E1AEp9o3
	oE7mKNE9g8cb7gaHTwSkJsNY9VMrknIqx5xOvaHdO4IJKhbljlPVyfsrXAcgzdz+63ueq7QLjv81l
	WBpl9hpdhR0si9qIX+oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq0Kg-00Bqzv-0o;
	Tue, 10 Oct 2023 00:10:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq0Kc-00BqzS-3B;
	Tue, 10 Oct 2023 00:10:40 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qq0KV-0006dZ-M3; Tue, 10 Oct 2023 02:10:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 0/4] Add support for Orange Pi 5 Plus
Date: Tue, 10 Oct 2023 02:10:30 +0200
Message-Id: <169689659830.206679.15041236943735063930.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231008130515.1155664-1-megi@xff.cz>
References: <20231008130515.1155664-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_171039_046292_03C3C327 
X-CRM114-Status: GOOD (  11.32  )
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

T24gU3VuLCA4IE9jdCAyMDIzIDE1OjA0OjU4ICswMjAwLCBPbmTFmWVqIEppcm1hbiB3cm90ZToK
PiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiAKPiBUaGlzIHNlcmllcyBhZGRz
IGFuIGluaXRpYWwgc3VwcG9ydCBmb3IgT3JhbmdlIFBpIDUgUGx1cy4gVGhlIG9ubHkKPiB0aGlu
ZyBtaXNzaW5nIHRoYXQgY2FuIGJlIHJlYWRpbHkgYWRkZWQgaXMgVVNCIDMuMCBzdXBwb3J0LCBi
ZWNhdXNlCj4gcmVxdWlyZWQgcGF0Y2hlcyB3ZXJlIG5vdCB5ZXQgbWVyZ2VkLiBTdXBwb3J0IGZv
ciBVU0IgMy4wIGlzIGF2YWlsYWJsZQo+IGF0IGh0dHBzOi8veGZmLmN6L2dpdC9saW51eC9sb2cv
P2g9b3BpNS02LjYKPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvNF0gYXJtNjQ6IGR0
czogcm9ja2NoaXA6IHJrMzU4OHMtcGluY3RybDogQWRkIEkyUzIgTTAgcGluIGRlZmluaXRpb25z
CiAgICAgIGNvbW1pdDogYmYwMTIzNjhiYjBhYjY5MTY3ZDQ5NzE1Nzg5ZmFjMzRkZmNkNDU3ZQpb
Mi80XSBhcm02NDogZHRzOiByb2NrY2hpcDogcmszNTg4cy1waW5jdHJsOiBBZGQgVUFSVDkgTTAg
cGluIGRlZmluaXRpb25zCiAgICAgIGNvbW1pdDogM2Q3N2EzZTUxYjBmYWVkODIwYThkYjk4NWRj
ZTVhZjFjYzRlYWUzMgpbMy80XSBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hpcDogQWRkIE9yYW5n
ZSBQaSA1IFBsdXMKICAgICAgY29tbWl0OiAwOTM2MTg4YjdmMmY2ZDMzMjhmNzM3YTAzY2VmNzM4
MWY2ODhhNmNjCls0LzRdIGFybTY0OiBkdHM6IHJrMzU4OC1vcmFuZ2VwaS01LXBsdXM6IEFkZCBi
b2FyZCBkZXZpY2UgdHJlZQogICAgICBjb21taXQ6IDIzNmQyMjVlMWVlNzJhMjhhYTdjMmIxZTM5
ODk0ZTQzOTBiYmY1MWMKCkFsc28gZHJvcHBlZCB0aGUgbWVtLXN1cHBseSBzdHVmZiB0aGF0IGlz
IGZyb20gdGhlIHZlbmRvci1rZXJuZWwgYW5kCnJlb3JkZXJlZCBzb21lIHN0dWZmLgoKCkJlc3Qg
cmVnYXJkcywKLS0gCkhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
