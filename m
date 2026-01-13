Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49B05D2F34B
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 17:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mETt58rPoavQMDd6iRdsKa5g5ss+gpvb3kYuE5m7tk=; b=yrBgRR8IC/Qk2N
	wTv2b+ZUPBMm144GMiYaja3j+4x1ftNq0Pca2yYJerFaeFVxrTx+vpF094RGk8BZCE18ub/mzpimj
	l7hZjGc8VWqNkoAx7dqupzFP79ZFINVUVmM3jyHlKRv4qRtlw7ZI47b1KFW5CMmT4wLta48quwEpO
	gX8A+pfhQ+JhQGD1+SEWuFOjrgShLqgaeumj1YlzfmJNS80SMGtKy/n6hKwPn9Zfcn0c2rboZL1hX
	EYB1ZiKSqSu04Jz+/gsnqHtppu0FFz/p5xlSKYoDrDuZAfQemG+lNasY6rXjp3i6UXCOA3cV2TYbn
	atiiD1XpjWH7I0++S3mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfiQY-00000007Y2C-3rBK;
	Tue, 13 Jan 2026 17:43:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfiQW-00000007Y1h-2CMM
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 17:43:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=kERDgTlZwEI8Z2uNkyJk/3htfhljWR3RUEeqFlNQCek=; b=J3SKXSstDC/Z/7l9Y2WHu8sKM3
	fEv+8hlRmqWShI0vJ1TTBFu5CP4bCMBE4HLZy8oOvSBo2Ba/yWFy9fRNm6HU0G7juuXCW9mLm870h
	hStVDsd0TgpXxYKq6orRt8W1WdkUhfD8Rv1b1jhtrtLOpQ/X3B2SDaz+LqGnPNfJuR/vQjUpe/uzU
	hcIM71lQIVPf7bxD6AkWmWX7ICso2gjIVYdpvc52o6z5lwD/8Q6hxoOyRLfeRY0KvZOfgw4oocmdA
	0zm0m6mNIk5WvvYdEsdp2o5W4WLUxa5LtLP15k6H3tMOrktV4wo5gXxx35MkXvK/NirgTb9dLiCKB
	vQMOZMvA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfiQB-0029ih-Iu; Tue, 13 Jan 2026 18:43:12 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 2/3] soc: rockchip: grf: Support multiple grf to be handled
Date: Tue, 13 Jan 2026 18:43:11 +0100
Message-ID: <1906413.BzM5BlMlMQ@diego>
In-Reply-To: <1768267105-127385-3-git-send-email-shawn.lin@rock-chips.com>
References: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
 <1768267105-127385-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_094332_625506_75BDB4DD 
X-CRM114-Status: GOOD (  23.19  )
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

SGkgU2hhd24sCgpBbSBEaWVuc3RhZywgMTMuIEphbnVhciAyMDI2LCAwMjoxODoyNCBNaXR0ZWxl
dXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPiBDdXJyZW50bHksIG9u
bHkgdGhlIGZpcnN0IG1hdGNoZWQgbm9kZSB3aWxsIGJlIGhhbmRsZWQuIFRoaXMgbGVhZHMKPiB0
byBqdGFnIHN3aXRjaGluZyBicm9rZW4gZm9yIFJLMzU3NiwgYXMgcmszNTc2LXN5cy1ncmYgaXMg
Zm91bmQgYmVmb3JlCj4gcmszNTc2LWlvYy1ncmYuIENoYW5nZSB0aGUgY29kZSB0byBzY2FuIGFs
bCB0aGUgcG9zc2libGUgbm9kZXMgdG8gZml4Cj4gdGhlIHByb2JsZW0uCj4gCj4gRml4ZXM6IGUx
YWFlY2FjZmExMyAoInNvYzogcm9ja2NoaXA6IGdyZjogQWRkIHJrMzU3NiBkZWZhdWx0IEdSRiB2
YWx1ZXMiKQo+IENjOiBEZXRsZXYgQ2FzYW5vdmEgPGRldGxldi5jYXNhbm92YUBjb2xsYWJvcmEu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29t
Pgo+IC0tLQo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSB1c2UgZm9yX2VhY2hfbWF0Y2hpbmdfbm9k
ZV9hbmRfbWF0Y2goSGVpa28pCj4gCj4gIGRyaXZlcnMvc29jL3JvY2tjaGlwL2dyZi5jIHwgNTQg
KysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc29jL3JvY2tjaGlwL2dyZi5jIGIvZHJpdmVycy9zb2Mvcm9ja2NoaXAvZ3Jm
LmMKPiBpbmRleCA4OTc0ZDFjLi45YjM2MzkwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc29jL3Jv
Y2tjaGlwL2dyZi5jCj4gKysrIGIvZHJpdmVycy9zb2Mvcm9ja2NoaXAvZ3JmLmMKPiBAQCAtMjE3
LDM0ICsyMTcsMzQgQEAgc3RhdGljIGludCBfX2luaXQgcm9ja2NoaXBfZ3JmX2luaXQodm9pZCkK
PiAgCXN0cnVjdCByZWdtYXAgKmdyZjsKPiAgCWludCByZXQsIGk7Cj4gIAo+IC0JbnAgPSBvZl9m
aW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5VTEwsIHJvY2tjaGlwX2dyZl9kdF9tYXRjaCwK
PiAtCQkJCQkgICAgICZtYXRjaCk7Cj4gLQlpZiAoIW5wKQo+IC0JCXJldHVybiAtRU5PREVWOwo+
IC0JaWYgKCFtYXRjaCB8fCAhbWF0Y2gtPmRhdGEpIHsKPiAtCQlwcl9lcnIoIiVzOiBtaXNzaW5n
IGdyZiBkYXRhXG4iLCBfX2Z1bmNfXyk7Cj4gKwlmb3JfZWFjaF9tYXRjaGluZ19ub2RlX2FuZF9t
YXRjaChucCwgcm9ja2NoaXBfZ3JmX2R0X21hdGNoLCAmbWF0Y2gpIHsKPiArCQlpZiAoIW9mX2Rl
dmljZV9pc19hdmFpbGFibGUobnApKQo+ICsJCQljb250aW51ZTsKPiArCQlpZiAoIW1hdGNoIHx8
ICFtYXRjaC0+ZGF0YSkgewo+ICsJCQlwcl9lcnIoIiVzOiBtaXNzaW5nIGdyZiBkYXRhXG4iLCBf
X2Z1bmNfXyk7Cj4gKwkJCW9mX25vZGVfcHV0KG5wKTsKPiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4g
KwkJfQo+ICsKPiArCQlncmZfaW5mbyA9IG1hdGNoLT5kYXRhOwo+ICsKPiArCQlncmYgPSBzeXNj
b25fbm9kZV90b19yZWdtYXAobnApOwo+ICAJCW9mX25vZGVfcHV0KG5wKTsKClRoaXMgb2Zfbm9k
ZV9wdXQgY2FuIGdvIGF3YXkgSSB0aGluay4KCmZvcl9lYWNoX21hdGNoaW5nX25vZGVfYW5kX21h
dGNoIGl0ZXJhdGVzIG92ZXIgdGhlIG5vZGVzIHZpYSAKCW9mX2ZpbmRfbWF0Y2hpbmdfbm9kZV9h
bmRfbWF0Y2goZG4sIG1hdGNoZXMsIG1hdGNoKSAgIFswXQoKYW5kIG9mX2ZpbmRfbWF0Y2hpbmdf
bm9kZV9hbmRfbWF0Y2goKSB3aWxsIG9mX25vZGVfcHV0KCkgdGhlIGZyb20gbm9kZSBbMV0KCgpI
ZWlrbwoKWzBdIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE4LjQvc291cmNl
L2luY2x1ZGUvbGludXgvb2YuaCNMMTQ2OQpbMV0gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20v
bGludXgvdjYuMTguNC9zb3VyY2UvZHJpdmVycy9vZi9iYXNlLmMjTDExNDcKCj4gLQkJcmV0dXJu
IC1FSU5WQUw7Cj4gLQl9Cj4gLQo+IC0JZ3JmX2luZm8gPSBtYXRjaC0+ZGF0YTsKPiAtCj4gLQln
cmYgPSBzeXNjb25fbm9kZV90b19yZWdtYXAobnApOwo+IC0Jb2Zfbm9kZV9wdXQobnApOwo+IC0J
aWYgKElTX0VSUihncmYpKSB7Cj4gLQkJcHJfZXJyKCIlczogY291bGQgbm90IGdldCBncmYgc3lz
Y29uXG4iLCBfX2Z1bmNfXyk7Cj4gLQkJcmV0dXJuIFBUUl9FUlIoZ3JmKTsKPiAtCX0KPiAtCj4g
LQlmb3IgKGkgPSAwOyBpIDwgZ3JmX2luZm8tPm51bV92YWx1ZXM7IGkrKykgewo+IC0JCWNvbnN0
IHN0cnVjdCByb2NrY2hpcF9ncmZfdmFsdWUgKnZhbCA9ICZncmZfaW5mby0+dmFsdWVzW2ldOwo+
IC0KPiAtCQlwcl9kZWJ1ZygiJXM6IGFkanVzdGluZyAlcyBpbiAlIzZ4IHRvICUjMTB4XG4iLCBf
X2Z1bmNfXywKPiAtCQkJdmFsLT5kZXNjLCB2YWwtPnJlZywgdmFsLT52YWwpOwo+IC0JCXJldCA9
IHJlZ21hcF93cml0ZShncmYsIHZhbC0+cmVnLCB2YWwtPnZhbCk7Cj4gLQkJaWYgKHJldCA8IDAp
Cj4gLQkJCXByX2VycigiJXM6IHdyaXRlIHRvICUjNnggZmFpbGVkIHdpdGggJWRcbiIsCj4gLQkJ
CSAgICAgICBfX2Z1bmNfXywgdmFsLT5yZWcsIHJldCk7Cj4gKwkJaWYgKElTX0VSUihncmYpKSB7
Cj4gKwkJCXByX2VycigiJXM6IGNvdWxkIG5vdCBnZXQgZ3JmIHN5c2NvblxuIiwgX19mdW5jX18p
Owo+ICsJCQlyZXR1cm4gUFRSX0VSUihncmYpOwo+ICsJCX0KPiArCj4gKwkJZm9yIChpID0gMDsg
aSA8IGdyZl9pbmZvLT5udW1fdmFsdWVzOyBpKyspIHsKPiArCQkJY29uc3Qgc3RydWN0IHJvY2tj
aGlwX2dyZl92YWx1ZSAqdmFsID0gJmdyZl9pbmZvLT52YWx1ZXNbaV07Cj4gKwo+ICsJCQlwcl9k
ZWJ1ZygiJXM6IGFkanVzdGluZyAlcyBpbiAlIzZ4IHRvICUjMTB4XG4iLCBfX2Z1bmNfXywKPiAr
CQkJCXZhbC0+ZGVzYywgdmFsLT5yZWcsIHZhbC0+dmFsKTsKPiArCQkJcmV0ID0gcmVnbWFwX3dy
aXRlKGdyZiwgdmFsLT5yZWcsIHZhbC0+dmFsKTsKPiArCQkJaWYgKHJldCA8IDApCj4gKwkJCQlw
cl9lcnIoIiVzOiB3cml0ZSB0byAlIzZ4IGZhaWxlZCB3aXRoICVkXG4iLAo+ICsJCQkJCV9fZnVu
Y19fLCB2YWwtPnJlZywgcmV0KTsKPiArCQl9Cj4gIAl9Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gCgoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
