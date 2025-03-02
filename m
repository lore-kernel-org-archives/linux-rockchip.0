Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 732EEC19F32
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Mar 2025 11:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nz31yUoRtD2ij7psZjrQ5AvUG5cMm2ZRVawP4ls7BfM=; b=uuQGgE2k56uiHZ
	ewKeNX7JEG3osMx24zcM41kggCKiFHsn1kGQMKCBrESL7z+c9Xlx6MZhFJbdeniMUL1B53NRJ9ugr
	mr6oRBiEqZJKqyANttUsLZtgeLN0d/vyZ/FtaTCTFo9r1uQO9cR91aM23gftrCWKjkBYhGwPuIFLQ
	qhS2qyOtHiUCzbY6raapU8o2jBUUTQWtPI+NRZNMK7vECNg4oA4fHnNjzLXWVMalGLY8kQ5bVC1wc
	FSkThawshJ+xBkf4SzB+D9pt8KqpGbApXixb1GNcNN/eGMyKfGr165ncGN0gMh6SuoDG3D6IScazn
	+Qn3RQnkVsw0Ox7w2G6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tohrz-0000000FwJ3-0rGL;
	Sun, 02 Mar 2025 11:52:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tohrw-0000000FwIb-3W0T;
	Sun, 02 Mar 2025 11:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=p1wO1tJNUWST5/aSO5B+d0Qst9czfwzaKgHwJnlCm8U=; b=jNFLVHYGlFE6ZGeuKX7kSTL6m3
	5TMkL2oYxZW/PF9kfo2/t7Y52OJYoAjimFiuALIFyeHLYGC12FOM+bUmkSUcdqN9UUTYStk3sfM6q
	b3oqJHViq35eiD9g0VW6Fw+LOSBBX4KP/ffom4beXhI7HjykR3uWdLTXtc+BW7sTCrTob9yWo/tAR
	RCRFF4z8ZmEzqN1pjrpqUR1LYCZYklM15XDvRED48m8dlTMsuKhOMeynb/TbkDwqEyU5WVgPo0dV0
	1+rfixyDTntDyfH+0m7LPAmDfduBwJm+BiloqDrdr4DaDfHDwfSo3qjHSpjyslEq9kF/ZhWFhOn0R
	rYzKOOAA==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tohrn-0001yN-P2; Sun, 02 Mar 2025 12:52:19 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Yao Zi <ziyao@disroot.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/7] arm64: dts: rockchip: Add pinctrl and gpio nodes for RK3528
Date: Sun, 02 Mar 2025 12:52:18 +0100
Message-ID: <116104909.nniJfEyVGO@diego>
In-Reply-To: <3f0cd767-1fd8-4c65-b8b4-e948288cd02a@kwiboo.se>
References: <20250228064024.3200000-1-jonas@kwiboo.se> <Z8GT3rUEyXrTUgtJ@pie.lan>
 <3f0cd767-1fd8-4c65-b8b4-e948288cd02a@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250302_035228_896528_A7574CC0 
X-CRM114-Status: GOOD (  26.44  )
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

QW0gU29ubnRhZywgMi4gTcOkcnogMjAyNSwgMTI6MTQ6NDggTUVaIHNjaHJpZWIgSm9uYXMgS2Fy
bG1hbjoKPiBIaSBZYW8gWmksCj4gCj4gT24gMjAyNS0wMi0yOCAxMTo0NiwgWWFvIFppIHdyb3Rl
Ogo+ID4gT24gRnJpLCBGZWIgMjgsIDIwMjUgYXQgMDY6NDA6MTBBTSArMDAwMCwgSm9uYXMgS2Fy
bG1hbiB3cm90ZToKPiA+PiBBZGQgcGluY3RybCBhbmQgZ3BpbyBub2RlcyBmb3IgUkszNTI4IGFu
ZCBpbXBvcnQgcmszNTI4LXBpbmN0cmwuZHRzaQo+ID4+IGZyb20gdmVuZG9yIGxpbnV4LTYuMS1z
dGFuLXJrcjUga2VybmVsIHdpdGggdGhlIGhkbWktcGlucy1pZGxlIG5vZGUKPiA+PiByZW1vdmVk
IGR1ZSB0byBtaXNzaW5nIGxhYmVsIHJlZmVyZW5jZSB0byBwY2ZnX291dHB1dF9sb3dfcHVsbF9k
b3duLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9v
LnNlPgo+ID4+IC0tLQo+ID4+IFRoaXMgd2FzIG1vc3RseSBpbXBvcnRlZCBmcm9tIHZlbmRvciBr
ZXJuZWwsIGhvd2V2ZXIgdGhlIG1haW4gY29tbWl0IFsxXQo+ID4+IGxpc3QgMjggc2lnbmVkLW9m
Zi1ieSB0YWdzLCB1bmNsZWFyIHdobyBJIHNob3VsZCB1c2UgYXMgYXV0aG9yIGFuZCB3aGF0Cj4g
Pj4gc2lnbmVkLW9mZi1ieSB0YWdzIHRvIGluY2x1ZGUuCj4gPj4KPiA+PiBbMV0gaHR0cHM6Ly9n
aXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbC9jb21taXQvYzE3ZDYzMjU5NTlmMGVjMWFm
OTAxZThhMTc5MTkxNjM0NTQxOTBhMgo+ID4+IC0tLQo+ID4+ICAuLi4vYm9vdC9kdHMvcm9ja2No
aXAvcmszNTI4LXBpbmN0cmwuZHRzaSAgICAgfCAxMzk3ICsrKysrKysrKysrKysrKysrCj4gPj4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kgICAgICB8ICAgODIgKwo+
ID4+ICAyIGZpbGVzIGNoYW5nZWQsIDE0NzkgaW5zZXJ0aW9ucygrKQo+ID4+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtcGluY3RybC5kdHNp
Cj4gPj4KPiA+IAo+ID4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzUyOC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjguZHRzaQo+
ID4+IGluZGV4IDBmYjkwZjVjMjkxYy4uZDNlMmE2NGZmMmQ1IDEwMDY0NAo+ID4+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kKPiA+PiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC5kdHNpCj4gPj4gQEAgLTQsOCArNCwxMCBAQAo+
ID4+ICAgKiBDb3B5cmlnaHQgKGMpIDIwMjQgWWFvIFppIDx6aXlhb0BkaXNyb290Lm9yZz4KPiA+
PiAgICovCj4gPj4gIAo+ID4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+Cj4g
Pj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+
Cj4gPj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4K
PiA+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAuaD4KPiA+PiAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzUyOC1jcnUuaD4KPiA+PiAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJrMzUyOC1jcnUuaD4KPiA+PiAgCj4g
Pj4gQEAgLTE3LDYgKzE5LDExIEBAIC8gewo+ID4+ICAJI3NpemUtY2VsbHMgPSA8Mj47Cj4gPj4g
IAo+ID4+ICAJYWxpYXNlcyB7Cj4gPj4gKwkJZ3BpbzAgPSAmZ3BpbzA7Cj4gPj4gKwkJZ3BpbzEg
PSAmZ3BpbzE7Cj4gPj4gKwkJZ3BpbzIgPSAmZ3BpbzI7Cj4gPj4gKwkJZ3BpbzMgPSAmZ3BpbzM7
Cj4gPj4gKwkJZ3BpbzQgPSAmZ3BpbzQ7Cj4gPj4gIAkJc2VyaWFsMCA9ICZ1YXJ0MDsKPiA+PiAg
CQlzZXJpYWwxID0gJnVhcnQxOwo+ID4+ICAJCXNlcmlhbDIgPSAmdWFydDI7Cj4gPj4gQEAgLTE2
Niw2ICsxNzMsMTEgQEAgY3J1OiBjbG9jay1jb250cm9sbGVyQGZmNGEwMDAwIHsKPiA+PiAgCQkJ
I3Jlc2V0LWNlbGxzID0gPDE+Owo+ID4+ICAJCX07Cj4gPj4gIAo+ID4+ICsJCWlvY19ncmY6IHN5
c2NvbkBmZjU0MDAwMCB7Cj4gPj4gKwkJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTI4LWlv
Yy1ncmYiLCAic3lzY29uIjsKPiA+PiArCQkJcmVnID0gPDB4MCAweGZmNTQwMDAwIDB4MCAweDQw
MDAwPjsKPiA+PiArCQl9Owo+ID4+ICsKPiA+PiAgCQl1YXJ0MDogc2VyaWFsQGZmOWYwMDAwIHsK
PiA+PiAgCQkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1MjgtdWFydCIsICJzbnBzLGR3LWFw
Yi11YXJ0IjsKPiA+PiAgCQkJcmVnID0gPDB4MCAweGZmOWYwMDAwIDB4MCAweDEwMD47Cj4gPj4g
QEAgLTI2NCw1ICsyNzYsNzUgQEAgc2FyYWRjOiBhZGNAZmZhZTAwMDAgewo+ID4+ICAJCQkjaW8t
Y2hhbm5lbC1jZWxscyA9IDwxPjsKPiA+PiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+PiAg
CQl9Owo+ID4+ICsKPiA+PiArCQlwaW5jdHJsOiBwaW5jdHJsIHsKPiA+PiArCQkJY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxyazM1MjgtcGluY3RybCI7Cj4gPj4gKwkJCXJvY2tjaGlwLGdyZiA9IDwm
aW9jX2dyZj47Cj4gPj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDI+Owo+ID4+ICsJCQkjc2l6ZS1j
ZWxscyA9IDwyPjsKPiA+PiArCQkJcmFuZ2VzOwo+ID4gCj4gPiBJIGRvdWJ0IHdoZXRoZXIgdGhl
IHBpbmNvbnRyb2xsZXIgc2hvdWxkIGJlIHBsYWNlZCB1bmRlciBzaW1wbGUtYnVzOgo+ID4gd2l0
aG91dCBhIHJlZyBwcm9wZXJ0eSwgaXQgZG9lc24ndCBsb29rIGxpa2UgYSBNTUlPIGRldmljZS4K
PiA+IAo+ID4gQWN0dWFsbHkgaXQgaXMsIGFsdGhvdWdoIGFsbCB0aGUgcmVnaXN0ZXJzIHN0YXkg
aW4gdGhlIGlvYyBncmYuIE1heWJlCj4gPiBpdCBzaG91bGQgYmUgY29uc2lkZXJlZCBhcyBjaGls
ZCBvZiB0aGUgZ3JmLgo+IAo+IFRoaXMgZm9sbG93cyBob3cgcGluY3RybCB3YXMgYWRkZWQgZm9y
IFJLMzU3NiBhbmQgd2hhdCBpcyBwcm9wb3NlZCBmb3IKPiBSSzM1NjIgWzJdLiBJIGhhdmUgdG9v
IGxpdHRsZSBrbm93bGVkZ2UgdG8ga25vdyBpZiB0aGlzIG5lZWRzIHRvIGNoYW5nZQo+IG9yIGlm
IHRoaXMgc2hvdWxkIGZvbGxvdyBzaW1pbGFyIFNvQ3MuCj4gCj4gWzJdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAyNTAyMjcxMTE5MTMuMjM0NDIwNy0xNS1rZXZlci55YW5nQHJvY2stY2hp
cHMuY29tCgpUaGUgcmVnIGFkZHJlc3Mgc2hvdWxkbid0IG1hdHRlciBoZXJlIEkgdGhpbmsuCgpU
aGUgInNvYyItYnVzIGRlc2NyaWJlcyB0aGUgZWxlbWVudHMgY29udGFpbmVkIGluIHRoZSBzb2Mg
KHN1cnJvdW5kaW5nIHRoZQpjcHUgY29yZXMpIGFuZCB0aGUgcGluY3RybCBjb250cm9sbGVyIGRl
ZmluaXRseSBpcyBwYXJ0IG9mIHRoZSBzb2MgaXRzZWxmLgoKU28gd2hlbiBsb29raW5nIGF0IHRo
ZSBzY29wZSwgaXQgZG9lcyBiZWxvbmcgdGhlcmUgYW5kIGFsc28gdGhlCiBncGlvLWNvbnRyb2xs
ZXIgZWxlbWVudHMgZG8gaGF2ZSBtbWlvIGFkZHJlc3NlcyA6LSkKCgpIZWlrbwoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
