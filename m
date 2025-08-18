Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E31FCA0EE9
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Aug 2025 21:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FunzyAbWq22Xk43aiLuL8s2gyfV/orid8E6h0E7Vfac=; b=IpCX0OW6gBnwCu
	hiqQXFg9l0wTL2Nna6ukv7v9bMYKAw6fPJBYUgP/73ueLt46HBJ3CtNKgyFAvbRrW8YysZYJEZ70T
	pQ9JBET/04loUncLi8tSVHo90NfTgGIuE/vHkDc+V+s0weBa+AVbCcEZMA5UKTDObem0FBQ/KCqNG
	1a4+XphJDZuCQtbcDGuo1VfcDgsd1/eZjsN2/2vWQUPgct++S14VTI2ZwWehOOohxjxfGS+22rq7l
	3ExJ9+SUJJudbj+XYSPPs0NVfcHHF6nU2FROqSlxc7P/kusQwSrIJ3zuX5nqf2PH8KMgo/N1UGvZZ
	E40L64hMfiZLtDfP4hbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo7O5-00000008iFB-3quw;
	Mon, 18 Aug 2025 21:27:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo5pb-00000008Ycx-17Y4;
	Mon, 18 Aug 2025 19:47:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=SxySystUolElsZ8oKWT++LDXpxEDwIiYseF8Su16NVY=; b=cUYjT4gbI1gpOVIT6pOU121qvn
	b8fbNHhgBZLchyPkNK3cCqiRG83om9upg7EDR7oikdkFM4YHZyQR0hzvs3UtJZh0LJyAtb/qLhbwC
	hvgICRpdHczCYEB0xWfy60mkhOqd+AoK5FSy6YWf6132x9cwzR56KWZRqIMDaOhCk76CMIG1eZS4R
	QiUy0PTJ9MPLQl7O5Ii7n1gG2tTTTfnzQNLfnF1EPG175XaoJw2P5Hn8Mi7jtcWllX7lTQuDFIiGA
	hrfqqImWPmywOQgarHM0q4cKzo4jH3a7a3UrPThYDDKTPosGGx/zN0ynts1Vk8VcLy7OJVD/TlSe0
	3GcLbiMw==;
Received: from i53875ad4.versanet.de ([83.135.90.212] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uo5pU-0001Ei-Lz; Mon, 18 Aug 2025 21:47:40 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH] thermal: rockchip: shut up GRF warning
Date: Mon, 18 Aug 2025 21:47:39 +0200
Message-ID: <2890475.6YUMPnJmAY@diego>
In-Reply-To: <b6cqwtj73twqxstslbhuulkgsmpds2hdyfsn7yewllkbtj7jz3@2kk74kgtefvp>
References: <20250818-thermal-rockchip-grf-warning-v1-1-134152c97097@kernel.org>
 <8402789.eFmWaWnqpD@diego>
 <b6cqwtj73twqxstslbhuulkgsmpds2hdyfsn7yewllkbtj7jz3@2kk74kgtefvp>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_124747_326138_B877BB0E 
X-CRM114-Status: GOOD (  21.67  )
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

QW0gTW9udGFnLCAxOC4gQXVndXN0IDIwMjUsIDIxOjIzOjU0IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgU2ViYXN0aWFuIFJlaWNoZWw6Cj4gT24gTW9uLCBBdWcgMTgsIDIw
MjUgYXQgMDg6NDQ6MTVQTSArMDIwMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiBBbSBNb250
YWcsIDE4LiBBdWd1c3QgMjAyNSwgMTk6MjY6MTUgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnpl
aXQgc2NocmllYiBTZWJhc3RpYW4gUmVpY2hlbDoKPiA+ID4gQEAgLTE2MjEsMTIgKzE2NTYsMTYg
QEAgc3RhdGljIGludCByb2NrY2hpcF9jb25maWd1cmVfZnJvbV9kdChzdHJ1Y3QgZGV2aWNlICpk
ZXYsCj4gPiA+ICAJCXJldHVybiAtRUlOVkFMOwo+ID4gPiAgCX0KPiA+ID4gIAo+ID4gPiAtCS8q
IFRoZSB0c2FkYyB3b250IHRvIGhhbmRsZSB0aGUgZXJyb3IgaW4gaGVyZSBzaW5jZSBzb21lIFNv
Q3MgZGlkbid0Cj4gPiA+IC0JICogbmVlZCB0aGlzIHByb3BlcnR5Lgo+ID4gPiAtCSAqLwo+ID4g
PiAtCXRoZXJtYWwtPmdyZiA9IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUobnAsICJy
b2NrY2hpcCxncmYiKTsKPiA+ID4gLQlpZiAoSVNfRVJSKHRoZXJtYWwtPmdyZikpCj4gPiA+IC0J
CWRldl93YXJuKGRldiwgIk1pc3Npbmcgcm9ja2NoaXAsZ3JmIHByb3BlcnR5XG4iKTsKPiA+ID4g
KwlpZiAodGhlcm1hbC0+Y2hpcC0+Z3JmX21vZGUgIT0gR1JGX05PTkUpIHsKPiA+ID4gKwkJdGhl
cm1hbC0+Z3JmID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZShucCwgInJvY2tjaGlw
LGdyZiIpOwo+ID4gPiArCQlpZiAoSVNfRVJSKHRoZXJtYWwtPmdyZikpIHsKPiA+ID4gKwkJCXJl
dCA9IFBUUl9FUlIodGhlcm1hbC0+Z3JmKTsKPiA+ID4gKwkJCWlmICh0aGVybWFsLT5jaGlwLT5n
cmZfbW9kZSA9PSBHUkZfT1BUSU9OQUwpCj4gPiA+ICsJCQkJZGV2X3dhcm4oZGV2LCAiTWlzc2lu
ZyByb2NrY2hpcCxncmYgcHJvcGVydHlcbiIpOwo+ID4gCj4gPiBJIGd1ZXNzIGl0IG1pZ2h0IG1h
a2UgaXQgZWFzaWVyIGZvciBwZW9wbGUgc2VlaW5nIHRoZSBsb2csIGlmIHdlIGNvdWxkCj4gPiBp
bnNlcnQgYW4gIm9wdGlvbmFsIiBpbnRvIHRoYXQgbWVzc2FnZSBmb3IgdGhlIG9wdGlvbmFsIHRp
ZXIuCj4gCj4gU3VyZSwgSSBjYW4gYWRkIGFuICJvcHRpb25hbCIuIEknbSBub3Qgc3VyZSBob3cg
Im9wdGlvbmFsIiB0aGV5Cj4gcmVhbGx5IGFyZSwgdGhvdWdoLiBDb2RlIGxpa2UgdGhpcyBsb29r
cyBxdWl0ZSBmaXNoeSB0byBtZToKPiAKPiBpZiAoZ3JmKQo+ICAgICByZWdtYXBfd3JpdGUoZ3Jm
LCAuLi4sIFJLMzU2OF9HUkZfVFNBRENfVFNFTik7Cj4gCj4gSSBtYXJrZWQgdGhlc2UgYXMgb3B0
aW9uYWwsIGFzIHRoZSBkcml2ZXIgc2hvdWxkIHByb2JlIHdpdGhvdXQgdGhlCj4gR1JGLiBCdXQg
dG8gbWUgaXQgbG9va3MgbGlrZSBtb3N0IHBsYXRmb3JtcyB3aXRoIG9wdGlvbmFsIEdSRgo+IHN1
cHBvcnQgc2hvdWxkIGhhdmUgYmVlbiBtYWRlIG1hbmRhdG9yeSBpbiB0aGUgZmlyc3QgcGxhY2Uu
Cgpva2F5IC4uLiB0aGVuIEkgdGFrZSBpdCBiYWNrLCBhbmQgd2Ugc2hvdWxkIGxlYXZlIG91dCB0
aGUgb3B0aW9uYWwuCgpUaGF0IHdheSBwZW9wbGUgbWF5IHdvbmRlciBhbmQgcG9zc2libHkgdmVy
aWZ5IHRoZWlyIHNvYyB2YXJpYW50Cm9yIGJ1aWxkIHNldHVwLgoKCkhlaWtvCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
