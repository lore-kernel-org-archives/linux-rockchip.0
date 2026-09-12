Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2227C88E53
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2026 12:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdzLbgMmNB7Pn6dj+3CbXccBRVqCRAOow9cq7ETk648=; b=2WO/dWya7yiFrp
	qlAmVpLXE67uaZInIGwzYceSGqrV1/XYhvCtrFa36PBQfF2dygNDkXYS6mnyCw2ka7aD50N6vIgk2
	NBjAb4XC8J4o/OrQtofa2toRucM1nmwqn1nvmbWSAuLUHCEs4xlESubpv92lMQLP6xmgQ1u5WM7Gd
	Anfepr669cf1mHlgoClgxT2txN/uA/8NbHg6c36n1s2QeT1FG9silHYL8YpsDRRXMoBRPT1DMZsnT
	QpqYlepUb2S9/rNbeVt8+6vzeS93PzVUR8MqqNkBV2uZYd9bSXjWTciiCRWjaWKYb4MxVvW1GXtDj
	w8HUKX2odG2vF+nhkP7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5N58-00000000sYm-2GZp;
	Sat, 12 Sep 2026 12:43:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5N56-00000000sY1-2A6d;
	Sat, 12 Sep 2026 12:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Qx+fUKVt2xcgM4AXqeWo30ZvJHZ5oUe4mgCMZs2Ib4I=; b=xs/Q4DQsfVQAYnSajVZ9VPl5M/
	CO8s9jx0rE3iJiDwjN4CSU4eNZTQ5nWtNV5y6UynVokfabqNdfHdPb+YFFGuNDkmj12KY6kxC0nBD
	S8rkU+0f0LxMVAKcOnMjA6J6truz5dYt2ROSz/+ezYIPvXglplaIzEmcvi3pdgQyclzycHv9/ftaa
	tBd3de4pBPecLX34DTgaCYyTqh0c97URXySXHV9piVTcY1RHtpbNsWUXs8O023ynHxYzvru0nk6d1
	iJpsP0jJtjACtGNtxtqQ7u1lPpGZ8YnCFEsS4HIEFrSLLmbvea0bongXyNdVnlxmIG5bYEtROfayp
	EDc4CK9A==;
From: Heiko Stuebner <heiko@sntech.de>
To: Heiner Kallweit <hkallweit1@gmail.com>, nic_swsd@realtek.com,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 ricardo@pardini.net
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Ricardo Pardini <ricardo@pardini.net>
Subject: Re: [PATCH v5 1/7] dt-bindings: net: add Realtek RTL8125 PCIe Ethernet
Date: Sat, 12 Sep 2026 14:43:28 +0200
Message-ID: <1971659.CQOukoFCf9@phil>
In-Reply-To: <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-1-c1b9e5f10cd6@pardini.net>
References: <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-0-c1b9e5f10cd6@pardini.net>
 <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-1-c1b9e5f10cd6@pardini.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_054344_554638_EE8D90DB 
X-CRM114-Status: GOOD (  11.15  )
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

QW0gRG9ubmVyc3RhZywgMTAuIFNlcHRlbWJlciAyMDI2LCAyMjowNzo1MSBNaXR0ZWxldXJvcMOk
aXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFJpY2FyZG8gUGFyZGluaSB2aWEgQjQgUmVsYXk6Cj4g
RnJvbTogUmljYXJkbyBQYXJkaW5pIDxyaWNhcmRvQHBhcmRpbmkubmV0Pgo+IAo+IEFkZCBhIGJp
bmRpbmcgZm9yIGZpeGVkL3NvbGRlcmVkIFJlYWx0ZWsgUlRMODEyNSBQQ0llIEV0aGVybmV0Cj4g
Y29udHJvbGxlci4gQXMgYSBQQ0llIGRldmljZSwgaXRzICJwY2kxMGVjLDgxMjUiIGNvbXBhdGli
bGUgaXMgdGhlCj4gT3BlbiBGaXJtd2FyZSBzcGVsbGluZyBhdXRvLWRlcml2ZWQgZnJvbSBpdHMg
UENJLVNJRyB2ZW5kb3IvZGV2aWNlIElEcwo+IGFuZCBpcyBhbHJlYWR5IGNvdmVyZWQgYnkgdGhl
IGdlbmVyaWMgZHRzY2hlbWEgcGNpLWRldmljZS55YW1sLiBUaGUKPiBjb21wYXRpYmxlIGl0c2Vs
ZiB0aGVyZWZvcmUgbmVlZHMgbm8gYmluZGluZyB0byBiZSB2YWxpZC4KPiAKPiBBIGRlZGljYXRl
ZCBiaW5kaW5nIGlzIG5lZWRlZCBiZWNhdXNlIGJvYXJkIERUcyBkZXNjcmliZSB0aGVzZQo+IHNv
bGRlcmVkIGZ1bmN0aW9uIG5vZGVzIGluIG9yZGVyIHRvIGF0dGFjaCBldGhlcm5ldC1jb250cm9s
bGVyCj4gcHJvcGVydGllcyB0byB0aGVtOiBhIHBsYWNlaG9sZGVyIGxvY2FsLW1hYy1hZGRyZXNz
IHRoYXQgdGhlIGJvb3Rsb2FkZXIKPiBmaWxscyBpbiB0b2RheSwgYW5kIHBvdGVudGlhbGx5IG52
bWVtLWNlbGxzLCBwaHktaGFuZGxlLCBldGMuIGluIHRoZQo+IGZ1dHVyZS4gVGhpcyBiaW5kaW5n
IHJlZmVyZW5jZXMgZXRoZXJuZXQtY29udHJvbGxlci55YW1sIHNvIHRob3NlCj4gcHJvcGVydGll
cyBhcmUgdmFsaWRhdGVkIG9uIHRoZSBSVEw4MTI1IFBDSSBmdW5jdGlvbiBub2Rlcy4KPiAKPiBT
dWdnZXN0ZWQtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJv
cmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFJpY2FyZG8gUGFyZGluaSA8cmljYXJkb0BwYXJkaW5p
Lm5ldD4KCnRoaXMgbmVlZHMgdG8gZ28gdGhyb3VnaCB0aGUgbmV0d29yayB0cmVlIEkgdGhpbmsg
YW5kIHRoZWlyIHByb2Nlc3NlcwphcmUgaGVhdmlseSBhdXRvbWF0ZWQsIHNvIHRoaXMgc2hvdWxk
IGJlIHNlbnQgc2VwYXJhdGVseS4KCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
