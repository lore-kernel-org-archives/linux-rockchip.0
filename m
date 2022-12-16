Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A78BDC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Dec 2022 15:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWNzHWsGPPn7xuJrIpgo60S7ewlYZal66baJobRPXV0=; b=gKbb/HTwM3oELc
	zBbIQf4D0TrXcD9qG/KsCHFPPYvven9lQKaTpPBmrVOqEsSxW7yvGq6PBrlugH3YtgMqEJthwpE0N
	EAk1rPyl77sCUserp0yfdWtdQ5n+jLomZUVDkrQSTGQo1+XaL1koET4OaV2os7yw4Y1gGOVYAO5Nj
	tT+2B13MKe4NgwoxCoTxjG18nHl2anil5sv91GnfziZ8eMwVXN+20J+elJgAgguo3VcXJlO/h6IAa
	TqyHoo7oQabhHod17q9wCnr4gW6UhtTJdioRyfgm2bzDfjbqYAetXEhjI0RrzMgKSiUoNHjo5p2IX
	bBdrwqFXXbwwDcs088CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6CwP-00G8Tn-DI; Fri, 16 Dec 2022 15:48:05 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6CwL-00G8QB-Mb
	for linux-rockchip@lists.infradead.org; Fri, 16 Dec 2022 15:48:04 +0000
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E88A16602C94;
	Fri, 16 Dec 2022 15:47:54 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671205676;
	bh=OpeibgDASJdMkvfrIt2wc5RhxgM/1AD0m55P+Z6hsDI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=DheIvro7Qj7OkGFB8YtfY1/OyrDKi9FDrq8eceDFfmnR+6THk1cazJa01O0U4pRom
	 6SmN02ZLRF2HNWSD48DjRkH/gbn9DTPvQ2NpAUTXshn6lxYOvzHZ1aMxJJpsGF2t5g
	 eHEvq6KE2HF57mNz5I90o6cYramUWKjjFibKLrHx6rn6kqpCcM5ck8HZ79bsTMgmVg
	 Rp4l2JD8InGiCqjwOJ79V0JDda+a4u2C0pGpUCJONb3HwmIYmhLECwRMICTiax7quM
	 1yL8q6LL+7R9uciTVjAy8bNtwLrIUICr9rbZ5ageiF8+lSRs2FqnU4M7jhhWxUW1JV
	 Xq9vzEw61wtJg==
Message-ID: <e3c73d1c20e12ab351a74ef1abc949810fc1ba77.camel@collabora.com>
Subject: Re: [PATCHv7 7/7] arm64: dts: rockchip: Add rock-5b board
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner
	 <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, Jagan
 Teki <jagan@edgeble.ai>, Linus Walleij <linus.walleij@linaro.org>,
 Christopher Obbard <chris.obbard@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>,  linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 kernel@collabora.com, Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 16 Dec 2022 10:47:44 -0500
In-Reply-To: <20221215183002.211081-8-sebastian.reichel@collabora.com>
References: <20221215183002.211081-1-sebastian.reichel@collabora.com>
	 <20221215183002.211081-8-sebastian.reichel@collabora.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_074801_986251_FA92D34F 
X-CRM114-Status: GOOD (  20.52  )
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

SGkgU2ViYXN0aWFuIGFuZCBDaHJpc3RvcGhlciwKCkxlIGpldWRpIDE1IGTDqWNlbWJyZSAyMDIy
IMOgIDE5OjMwICswMTAwLCBTZWJhc3RpYW4gUmVpY2hlbCBhIMOpY3JpdMKgOgo+IEZyb206IENo
cmlzdG9waGVyIE9iYmFyZCA8Y2hyaXMub2JiYXJkQGNvbGxhYm9yYS5jb20+Cj4gCj4gQWRkIGJv
YXJkIGZpbGUgZm9yIHRoZSBSSzM1ODggUm9jayA1QiBib2FyZC4gVGhpcyBpcyBhIGJhc2ljCj4g
aW1wbGVtZW50YXRpb24gd2hpY2gganVzdCBicmluZ3MgdXAgdGhlIGVNTUMgYW5kIFVBUlQgd2hp
Y2ggaXMKPiBlbm91Z2ggdG8gc3VjY2Vzc2Z1bGx5IGJvb3QgTGludXguCj4gCj4gVGhlIGV0aGVy
bmV0IGNvbnRyb2xsZXIgaXMgY29ubmVjdGVkIHZpYSBQQ0llIHNvIHN1cHBvcnQgd2lsbAo+IGNv
bWUgaW4gYSBmb2xsb3ctdXAgcGF0Y2guCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoZXIg
T2JiYXJkIDxjaHJpcy5vYmJhcmRAY29sbGFib3JhLmNvbT4KPiBSZXZpZXdlZC1ieTogTWljaGFl
bCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0Pgo+IFNpZ25lZC1vZmYtYnk6
IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0t
LQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgMSAr
Cj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgICAgICB8IDQ0ICsr
KysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1y
b2NrLTViLmR0cwo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L01ha2VmaWxlIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+IGluZGV4
IDg3YTg1MzQzNTE0Mi4uYzViZGQwMTc2Y2UwIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL01ha2VmaWxlCj4gQEAgLTgzLDQgKzgzLDUgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NI
SVApICs9IHJrMzU2OC1ldmIxLXYxMC5kdGIKPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVAp
ICs9IHJrMzU2OC1vZHJvaWQtbTEuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSAr
PSByazM1Njgtcm9jay0zYS5kdGIKPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJr
MzU4OC1ldmIxLXYxMC5kdGIKPiArZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4
OC1yb2NrLTViLmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1y
b2NrLTVhLmR0Ygo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1yb2NrLTViLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJv
Y2stNWIuZHRzCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmJh
ZjQ2YmQzMGIzOAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+IEBAIC0wLDAgKzEsNDQgQEAKPiArLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4gKwo+ICsvZHRzLXYxLzsKPiAr
Cj4gKyNpbmNsdWRlICJyazM1ODguZHRzaSIKPiArCj4gKy8gewo+ICsJbW9kZWwgPSAiUmFkeGEg
Um9jayA1QiBCb2FyZCI7Cj4gKwljb21wYXRpYmxlID0gInJhZHhhLHJvY2stNWIiLCAicm9ja2No
aXAscmszNTg4IjsKPiArCj4gKwlhbGlhc2VzIHsKPiArCQltbWMxID0gJnNkaGNpOwoKSSBoYXZl
IG5vIHVzZWZ1bCBrbm93bGVkZ2UsIGJ1dCBpdCBzZWVtcyB0aGUgbW1jIGFsaWFzIGRvbid0IG1h
dGNoIHRoZSB2ZW5kb3IuCldoZW4gSSBydW4geW91ciBicmFuY2ggb24gUm9jazVCLCB0aGUgRU1N
QyBlbmR1cCBvbiAvZGV2L21tY2JsazEgKGFrYSBtbWMxIGFsaWFzCkkgdGhpbmspIHdoaWxlIHdo
ZW4gSSBib290IHRoZSB2ZW5kb3Iga2VybmVsLCBpdCBpcyBhbHdheXMgbW1jYmxrMCAoYWthIG1t
YzAKYWxpYXM/KS4gUGVyaGFwcyB0aGUgdmVuZG9yIGRpZG4ndCBhZGQgYWxpYXNlcyA/CgpUaGVy
ZSBjb3VsZCBhbHNvIGJlIG1haW5saW5lIHJ1bGVzIHRvIG51bWJlciBiYXNlZCBvbiB0aGUgYm9v
dCBvcmRlci4gSW4gdGhpcwpjYXNlLCB0aGUgZGlmZmVyZW5jZSB3b3VsZCBiZSBhY2NlcHRhYmxl
LCBzaW5jZSBTUEwgYm9vdCBvcmRlciBpcyAodXNiPykgPiBTRApDYXJkID4gRU1NQyA+IFNQSSBO
T1IuIFRob3VnaCwgdGhlIFNQTCBpcyBwaWNrZWQgZnJvbSB0aGUgb3Bwb3NpdGUgb3JkZXIgKHNw
aSwKZW1tYywgc2QgY2FyZCkuIEFueXdheSwgSSdtIGp1c3QgdHJ5aW5nIHRvIGV4cHJlc3MgdGhh
dCBJIG5vdGljZWQgYSBkaWZmZXJlbmNlLAphbmQgaXRzIG5vdCBndWFyYW50aWVkIHRvIGJlIGEg
YnVnLgoKPiArCQlzZXJpYWwyID0gJnVhcnQyOwo+ICsJfTsKPiArCj4gKwljaG9zZW4gewo+ICsJ
CXN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTUwMDAwMG44IjsKPiArCX07Cj4gKwo+ICsJdmNjNXYw
X3N5czogdmNjNXYwLXN5cy1yZWd1bGF0b3Igewo+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9y
LWZpeGVkIjsKPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfc3lzIjsKPiArCQlyZWd1bGF0
b3ItYWx3YXlzLW9uOwo+ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJCXJlZ3VsYXRvci1taW4t
bWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUw
MDAwMDA+Owo+ICsJfTsKPiArfTsKPiArCj4gKyZzZGhjaSB7Cj4gKwlidXMtd2lkdGggPSA8OD47
Cj4gKwluby1zZGlvOwo+ICsJbm8tc2Q7Cj4gKwlub24tcmVtb3ZhYmxlOwo+ICsJbWF4LWZyZXF1
ZW5jeSA9IDwyMDAwMDAwMDA+Owo+ICsJbW1jLWhzNDAwLTFfOHY7Cj4gKwltbWMtaHM0MDAtZW5o
YW5jZWQtc3Ryb2JlOwo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnVhcnQyIHsK
PiArCXBpbmN0cmwtMCA9IDwmdWFydDJtMF94ZmVyPjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiAr
fTsKPiAtLSAKPiAyLjM5LjAKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
