Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73AA3E77180
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 08:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=821rCM4vYalEefaqE7Xoq948SyObp3WdIGzhKvwu2D4=; b=L2Do/67nZKTYGt
	P4S7BksAhlmjNnBtpK8YUoyKUfud4ShOOseLqYKU/IxV9iC67kPiekBmPFSFKEXah4zZKrsMcZMzF
	dVYbddF27i71E7MbqXDxz3XkL5b26FbXfXgW7PtDn+qNf8GgsXikT/kLiUwWoD9oIQq/+CLx14vRN
	zRKCTU2wUAsEW+ZlN54M8NvzuLEZOHdScCeJd9uVxmDI7OktgLwr2BJfd2WOPKZFfQSh713of9jix
	0vZP4hLjDZnBHW6fX/auiqpwa7fONeIkK7B/VAAxE5NGpUsR1UBVB/ri7Evp7r4itiw1KFyQvxWRl
	Z2W1R97PrFQeb6WB8JWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLITF-0000000EI6J-1nyc;
	Wed, 11 Dec 2024 08:53:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLISA-0000000EHsE-2Umj;
	Wed, 11 Dec 2024 08:52:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fAWS/sRlgeB+YbEy/eqhplKSQ984OPXnrFLfa4o96GQ=; b=uNZ1ZfwHa1YAQBxuf/XLDVsosm
	nDJww0n5aeFUeUp9Rc09P1QndQ1+eKRrRp3bAuWA5+r0SijMwzsz2XOUP9lC1sehu8rhLBUOGFG2L
	qtVX314epcUUf80JvFJWZWZBS7sgubO6kS4vdZ7k3ooOTGTHpya4Ep1/B+mVpyS/HVrzc/wtiagUv
	bDO2Fy40GXvIcnckzGKB3Z+lZZAUp5rmK5P8D2N5h5G35F76m63zP3tdLkQRVeS3WG2wsO1bK1es9
	hJfThXSrAK3/LPufn8RC1HmKbzPsLRH8zCq0Ooe7jubaPHp3f11NmxrrPchNRfkGUgQNeuXycRIK7
	eYPGTFOw==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tLIS3-0000HG-JO; Wed, 11 Dec 2024 09:52:11 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, krzk+dt@kernel.org, s.hauer@pengutronix.de,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, derek.foreman@collabora.com,
 detlev.casanova@collabora.com, Andy Yan <andy.yan@rock-chips.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v5 01/18] drm/rockchip: vop2: Add debugfs support
Date: Wed, 11 Dec 2024 09:52:10 +0100
Message-ID: <3527424.cLl3JjQhRp@diego>
In-Reply-To: <121ab3c0.68d0.193b48b32ed.Coremail.andyshrk@163.com>
References: <20241209122943.2781431-1-andyshrk@163.com> <4471861.MSiuQNM8U4@diego>
 <121ab3c0.68d0.193b48b32ed.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_005218_630938_5B69CA18 
X-CRM114-Status: GOOD (  30.72  )
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

SGkgQW5keSwKCkFtIE1pdHR3b2NoLCAxMS4gRGV6ZW1iZXIgMjAyNCwgMDg6MDc6MjEgQ0VUIHNj
aHJpZWIgQW5keSBZYW46Cj4gQXQgMjAyNC0xMi0xMCAxOTo1Nzo0NCwgIkhlaWtvIFN0w7xibmVy
IiA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+QW0gTW9udGFnLCA5LiBEZXplbWJlciAyMDI0
LCAxMzoyOToxMyBDRVQgc2NocmllYiBBbmR5IFlhbjoKPiA+PiBGcm9tOiBBbmR5IFlhbiA8YW5k
eS55YW5Acm9jay1jaGlwcy5jb20+Cj4gPj4gCj4gPj4gL3N5cy9rZXJuZWwvZGVidWcvZHJpL3Zv
cDIvc3VtbWFyeTogIGR1bXAgdm9wIGRpc3BsYXkgc3RhdGUKPiA+PiAvc3lzL2tlcm5lbC9kZWJ1
Zy9kcmkvdm9wMi9yZWdzOiBkdW1wIHdob2xlIHZvcCByZWdpc3RlcnMKPiA+PiAvc3lzL2tlcm5l
bC9kZWJ1Zy9kcmkvdm9wMi9hY3RpdmVfcmVnczogb25seSBkdW1wIHRoZSByZWdpc3RlcnMgb2YK
PiA+PiBhY3RpdmF0ZWQgbW9kdWxlcwo+ID4+IAo+ID4+IFJldmlld2VkLWJ5OiBTYXNjaGEgSGF1
ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4g
PGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+ID4+IFRlc3RlZC1ieTogTWljaGFlbCBSaWVzY2gg
PG1pY2hhZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0PiAjIG9uIFJLMzU2OAo+ID4+IFRlc3RlZC1i
eTogRGV0bGV2IENhc2Fub3ZhIDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4KPiA+PiAt
LS0KPiA+Cj4gPj4gK3N0YXRpYyB2b2lkIF9fdm9wMl9yZWdzX2R1bXAoc3RydWN0IHNlcV9maWxl
ICpzLCBib29sIGFjdGl2ZV9vbmx5KQo+ID4+ICt7Cj4gPj4gKwlzdHJ1Y3QgZHJtX2luZm9fbm9k
ZSAqbm9kZSA9IHMtPnByaXZhdGU7Cj4gPj4gKwlzdHJ1Y3Qgdm9wMiAqdm9wMiA9IG5vZGUtPmlu
Zm9fZW50LT5kYXRhOwo+ID4+ICsJc3RydWN0IGRybV9taW5vciAqbWlub3IgPSBub2RlLT5taW5v
cjsKPiA+PiArCXN0cnVjdCBkcm1fZGV2aWNlICpkcm1fZGV2ID0gbWlub3ItPmRldjsKPiA+PiAr
CWNvbnN0IHN0cnVjdCB2b3AyX3JlZ3NfZHVtcCAqZHVtcDsKPiA+PiArCXVuc2lnbmVkIGludCBp
Owo+ID4+ICsKPiA+PiArCWRybV9tb2Rlc2V0X2xvY2tfYWxsKGRybV9kZXYpOwo+ID4+ICsKPiA+
PiArCXJlZ2NhY2hlX2Ryb3BfcmVnaW9uKHZvcDItPm1hcCwgMCwgdm9wMl9yZWdtYXBfY29uZmln
Lm1heF9yZWdpc3Rlcik7Cj4gPj4gKwo+ID4+ICsJaWYgKHZvcDItPmVuYWJsZV9jb3VudCkgewo+
ID4+ICsJCWZvciAoaSA9IDA7IGkgPCB2b3AyLT5kYXRhLT5yZWdzX2R1bXBfc2l6ZTsgaSsrKSB7
Cj4gPj4gKwkJCWR1bXAgPSAmdm9wMi0+ZGF0YS0+cmVnc19kdW1wW2ldOwo+ID4+ICsJCQl2b3Ay
X3JlZ3NfcHJpbnQodm9wMiwgcywgZHVtcCwgYWN0aXZlX29ubHkpOwo+ID4+ICsJCX0KPiA+PiAr
CX0gZWxzZSB7Cj4gPj4gKwkJc2VxX3ByaW50ZihzLCAiVk9QIGRpc2FibGVkXG4iKTsKPiA+PiAr
CX0KPiA+PiArCWRybV9tb2Rlc2V0X3VubG9ja19hbGwoZHJtX2Rldik7Cj4gPj4gKwo+ID4KPiA+
bml0OiBub3QgbmVlZGVkIGVtcHR5IGxpbmUgYXQgdGhlIGVuZCBvZiB0aGUgZnVuY3Rpb24KPiAK
PiBXaWxsIGZpeGVkIGluIFY2Lgo+IAo+ID4KPiA+PiArfQo+ID4+ICsKPiA+Cj4gPj4gK3N0YXRp
YyB2b2lkIHZvcDJfZGVidWdmc19pbml0KHN0cnVjdCB2b3AyICp2b3AyLCBzdHJ1Y3QgZHJtX21p
bm9yICptaW5vcikKPiA+PiArewo+ID4+ICsJc3RydWN0IGRlbnRyeSAqcm9vdDsKPiA+PiArCXVu
c2lnbmVkIGludCBpOwo+ID4+ICsKPiA+PiArCXJvb3QgPSBkZWJ1Z2ZzX2NyZWF0ZV9kaXIoInZv
cDIiLCBtaW5vci0+ZGVidWdmc19yb290KTsKPiA+PiArCWlmICghSVNfRVJSKHJvb3QpKSB7Cj4g
Pj4gKwkJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUodm9wMl9kZWJ1Z2ZzX2xpc3QpOyBpKysp
Cj4gPj4gKwkJCXZvcDJfZGVidWdmc19saXN0W2ldLmRhdGEgPSB2b3AyOwo+ID4+ICsKPiA+PiAr
CQlkcm1fZGVidWdmc19jcmVhdGVfZmlsZXModm9wMl9kZWJ1Z2ZzX2xpc3QsCj4gPj4gKwkJCQkJ
IEFSUkFZX1NJWkUodm9wMl9kZWJ1Z2ZzX2xpc3QpLAo+ID4+ICsJCQkJCSByb290LCBtaW5vcik7
Cj4gPj4gKwl9Cj4gPj4gK30KPiA+PiArCj4gPj4gK3N0YXRpYyBpbnQgdm9wMl9jcnRjX2xhdGVf
cmVnaXN0ZXIoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+ID4+ICt7Cj4gPj4gKwlzdHJ1Y3Qgdm9w
Ml92aWRlb19wb3J0ICp2cCA9IHRvX3ZvcDJfdmlkZW9fcG9ydChjcnRjKTsKPiA+PiArCXN0cnVj
dCB2b3AyICp2b3AyID0gdnAtPnZvcDI7Cj4gPj4gKwo+ID4+ICsJaWYgKGRybV9jcnRjX2luZGV4
KGNydGMpID09IDApCj4gPj4gKwkJdm9wMl9kZWJ1Z2ZzX2luaXQodm9wMiwgY3J0Yy0+ZGV2LT5w
cmltYXJ5KTsKPiA+PiArCj4gPj4gKwlyZXR1cm4gMDsKPiA+PiArfQo+ID4KPiA+SSdtIHdvbmRl
cmluZyBhYm91dCwgc2hvdWRsbid0IHRoZXJlIGJlIGFuIHVucmVnaXN0ZXIgc3RlcCB0b28/Cj4g
PkkuZS4gdGhlIGxhdGVfcmVnaXN0ZXIgY2FsbGJhY2sgc2F5czoKPiA+InNob3VsZCBiZSB1bnJl
Z2lzdGVyZWQgaW4gdGhlIGVhcmx5X3VucmVnaXN0ZXIgY2FsbGJhY2siIFswXS4KPiA+Cj4gPkFu
ZCB0aGVyZSBleGlzdHMgZHJtX2RlYnVnZnNfcmVtb3ZlX2ZpbGVzKCksIHRob3VnaCBpdCBkb2Vz
bid0Cj4gPnNlZW0gdCBiZSB1c2VkIG11Y2ggLSBqdXN0IGJ5IHRlZ3JhLgo+ID4KPiA+SSBoYXZl
bid0IG1hbmFnZWQgdG8gZmluZCBkcm0gY29kZSBoYW5kbGluZyB0aGF0IGF1dG9tYXRpY2FsbHkg
dGhvdWdoPwo+IAo+IERpZCBhIGxpdHRsZSBkaWdnaW5n77yaCj4gIHJvY2tjaGlwX2RybV91bmJp
bmQgLS3jgItkcm1fZGV2X3VucmVnaXN0ZXIoZHJtX2RldiktLeOAi2RybV9kZWJ1Z2ZzX2Rldl9m
aW5pCj4gLS3jgItkZWJ1Z2ZzX3JlbW92ZV9yZWN1cnNpdmUoZGV2LT5kZWJ1Z2ZzX3Jvb3QpOwo+
IFRoaXMgd2lsbCByZW1vdmUgYWxsIHRoZSBkZWJ1Z2ZzIGZpbGUgdW5kZXIgL2RyaS8wLS0+ZGlz
cGxheS1zdWJzeXN0ZW0gIHdoZW4gd2UKPiByZW1vdmUgcm9ja2NoaXBkcm0gd2hlbiBpdCBidWls
ZCBhcyBtb2R1bGUuCgp0aGFua3MgYSBsb3QgZm9yIGZpbmRpbmcgdGhpcy4gQW5kIHllcywgdGhh
dCBjb3ZlcnMgYWxsIHBvc3NpYmxlIGNhc2VzLgoKPiBJZiBpdCBpcyBidWlsdGluLCB3aGV0aGVy
IHdlIHJlbW92ZSB0aGVtIHNlZW1zIHRvIG1ha2Ugbm8gZGlmZmVyZW5jZSB3aGVuIHdlCj4gcmVi
b290IG9yIHRodXRkb3duIHRoZSBzeXN0ZW0gPwo+IEkgYWxzbyBzZWFyY2hlZCBmb3Igb3RoZXIg
cGxhdGZvcm1zIHVzaW5nIHNpbWlsYXIgbGF0ZSByZWdpc3RlciBob29rLCBhbmQgaXQgc2VlbXMg
dGhleSBoYXZlbid0IHJlbW92ZSBkZWJ1Z2ZzICBlaXRoZXIuCgp1bmJpbmQgY2FuIGJlIGNhbGxl
ZCBldmVuIGlmIHRoZSBkcml2ZXIgaXMgYnVpbHRpbiAtIGkuZS4gYSBkcml2ZXIKZG9lcyBub3Qg
bmVlZCB0byBiZSBhIG1vZHVsZSB0byBiZSB1bmJvdW50L3JlYm91bmQgYWdhaW4uCgpCdXQgdGhl
IGRybV9kZWJ1Z2ZzX2Rldl9maW5pKCkgZnVuY3Rpb24geW91IGZvdW5kLCBzb2x2ZXMgdGhhdApp
biBhbGwgY2FzZXMsIHNvIHRoaXMgcGF0Y2ggY2FuIHN0YXkgYXMgaXQgaXMgLSBtaW51cyB0aGUg
ZW1wdHkgbGluZS4KClRoYW5rcyBhIGxvdApIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
