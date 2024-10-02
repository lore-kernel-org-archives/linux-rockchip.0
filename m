Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67E53CF31B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 11:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64rsv3nRpCLnwWWPaV/v3U2/1BywikUCwP2nlhQjjv4=; b=E+CoI23uKTFHpl
	o89yaaN8Rbp3rCxYMORflJw3bBw3onbmXjSMcCY+tqPoAjMUyNahNY1glYN2xSXrkX3r+3qzs1bMN
	cxGFOxiqVYbcM/xIENUMuZNe2OOMAcXOQiKGnsyGLQD8utxt44Vqco2iGdaUQuJnn0R6sdNWI4MFu
	KQRf0xDMKOZL4E+WGX0eEck5/8iQiZTsC/S6FVPM0ggedDFJ2bzFN9++Eo4ELinTm4RhD0C/4p7UP
	Vu8QNvySX6Fb+VCfFP6AEr0H7kXQ9HdgHWV4AUGw/DmhM5Yd/oAF7fKOLq8vsRgrZctlqOcCED/A3
	43Zs3v7eCSgLv7Y19WlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svxkM-00000005h37-1t5E;
	Wed, 02 Oct 2024 11:42:22 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svxkJ-00000005h1l-2Rc2
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 11:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1727869331;
 bh=ADDOyPeJ5uYbYMgnY7CIyK7ELPh5CSEaTFJAKU5jGE0=;
 b=BtMN8hQWZedmVNQ1kn1FrCiBMhNZF8gVFe+McDaFaXH7cH6vZaLmw1pnjy8o5rQ2l8fMYYjbF
 o+C7g3MIwm21hq1ZEw2JYBaMs1vApUqw4DEYMlv4/JMk92mln/NOV6ewgXj+RBGmXQcRQdBxxua
 7j9B06iBoQ3UbetPoxRBt54dKAQeP3bDrzlDImw/a/kMXUqa0JvvxgHUK2O1yBYZI5f5waRkKqe
 hxNYlkqqr4HJPFPgTZvwLfFpQSaWg38uzOHy7G+RS/Fsd35ASKn1/3x57GaX8HrAVi11/jgQzPU
 AgjoeAAlJUWlZujJ977D/ODrehFvuHhljAzVF1fO1DCQ==
Message-ID: <6c339f52-671b-4afe-ab91-aebe1ee7a724@kwiboo.se>
Date: Wed, 2 Oct 2024 13:42:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: change pinctrl for pcie2x1l2 for
 Radxa ROCK 5A
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org
References: <20241001235046.1710-1-naoki@radxa.com>
 <d33dc43d-ac90-41af-94c0-e4dd1bc0654f@kwiboo.se> <863960074.0ifERbkFSE@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <863960074.0ifERbkFSE@diego>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66fd3192231aa14c07835a0b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_044219_781073_FD2113F0 
X-CRM114-Status: GOOD (  17.30  )
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

T24gMjAyNC0xMC0wMiAxMzoyMSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTWl0dHdvY2gs
IDIuIE9rdG9iZXIgMjAyNCwgMTI6NTA6MjkgQ0VTVCBzY2hyaWViIEpvbmFzIEthcmxtYW46Cj4+
IEhpLAo+Pgo+PiBPbiAyMDI0LTEwLTAyIDAxOjUwLCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+Pj4g
Zm9yIHBjaWUyeDFsMiwgb25seSBwY2llMjB4MV8yX3BlcnN0bl9tMCBpcyByZXF1aXJlZCwgYW5k
IGl0cyBmdW5jdGlvbgo+Pj4gbmVlZHMgdG8gYmUgR1BJTyB0byBhdm9pZCBmcmVlemUgYXQgInBj
aSBlbnVtIiB3aXRob3V0IFBDSWUgZGV2aWNlIG9uCj4+PiB1LWJvb3QuCj4+Pgo+Pj4gY2hhbmdl
IHBpbmN0cmwgZGVmaW5pdGlvbnMgZm9yIHBjaWUyeDFsMi4gbm8gZnVuY3Rpb25hbCBjaGFuZ2Ug
aXMKPj4+IGludGVuZGVkIG9uIExpbnV4IGtlcm5lbC4KPj4KPj4gQWZ0ZXIgdGhlIHNwbGl0IGFu
ZCBhZGRpdGlvbiBvZiBwY2llMl9yZXNldCBJIHRoaW5rIHRoaXMgcGF0Y2ggaXMgbm8KPj4gbG9u
Z2VyIG5lZWRlZD8gVGhlIGlzc3VlIHRoaXMgcGF0Y2ggdHJpZWQgdG8gZml4IHdhcyBhbHJlYWR5
Cj4+IGZpeGVkL2NoYW5nZWQgaW4gImFybTY0OiBkdHM6IHJvY2tjaGlwOiBTcGxpdCB1cCBSSzM1
ODgncyBQQ0llIHBpbmN0cmxzIi4KPj4KPj4gTG9va3MgbGlrZSB0aGlzIG5vdyBqdXN0IHJlbmFt
ZSBwY2llMl9yZXNldCB0byBwY2llMjB4MV8yX3BlcnN0bl9tMD8KPiAKPiBhbmQgcmVtb3ZlcyB0
aGUgb3RoZXIgcGluY3RybCBzdGF0ZXMgY2xrcmVxbiBhbmQgd2FrZW4gLgoKVGhpcyBpcyBub3Qg
c29tZXRoaW5nIHRoYXQgSSB0aGluayBzaG91bGQgaGF2ZSBiZWVuIGRvbmUgaW4gdGhlIGZpcnN0
CnBsYWNlLCB0aGUgcGlucy9zaWduYWxzIGV4aXN0cyBpbiBodyBhbmQgc2NoZW1hdGljcywgaG93
ZXZlciBzb2Z0d2FyZQppcyBub3QgdXNpbmcgdGhlc2Ugc2lnbmFscy4KCj4gCj4gSW4gYSBwcmV2
aW91cyB2ZXJzaW9uIHRoZXkgbWVudGlvbmVkIHRoYXQgdGhpcyBzb21laG93IGFmZmVjdHMgdS1i
b290LgoKVGhlIGlzc3VlIHdpdGggVS1Cb290IGlzIHRoYXQgZm9yIHBjaWUgdGhlIHBpbiB1c2Vk
IGZvciByZXNldC1ncGlvcyBtdXN0CnVzZSBncGlvIGZ1bmMgcGluY29uZiwgb3IgcGNpIGVudW1l
cmF0aW5nIGluIFUtQm9vdCB3aWxsIGZyZWV6ZSB0aGUKYm9hcmQuCgoiYXJtNjQ6IGR0czogcm9j
a2NoaXA6IFNwbGl0IHVwIFJLMzU4OCdzIFBDSWUgcGluY3RybHMiIGFscmVhZHkgY2hhbmdlZAp0
byB1c2UgdGhlIGdwaW8gZnVuYyBmb3IgdGhlIHBlcnN0biBwaW4sIHNvIHRoZSBVLUJvb3QgaXNz
dWUgc2hvdWxkCmFscmVhZHkgaGF2ZSBiZWVuIHJlc29sdmVkIHdpdGggdGhhdCBwYXRjaC4KCkZv
ciBMaW51eCB0aGUgcGlucyBncGlvIGZ1bmMgaXMgaW1wbGljaXRseSBjb25maWd1cmVkIHdoZW4g
dGhlIHBjaWUKZHJpdmVyIHJlcXVlc3QgdGhlIHJlc2V0LWdwaW9zIHBpbi4gSW4gVS1Cb290IHRo
ZXJlIGV4aXN0cyBzb21lIHBpbmN0cmwKb3ZlcnJpZGVzIHRvIHNvbHZlIGZyZWV6ZSBpc3N1ZXMs
IHRob3NlIHNob3VsZCBhbHNvIGJlIHNlbnQgdXBzdHJlYW0gOy0pCgpSZWdhcmRzLApKb25hcwoK
PiAKPiBCdXQgeW91J3JlIHJpZ2h0LCB0aGF0IHJlbmFtaW5nIG9mIHRoZSBwaW5jdHJsIHJlc2V0
IGVudHJ5IHNob3VsZAo+IGRlZmluaXRseSBub3QgYmUgaW4gdGhlcmUuCj4gCj4gCj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+Cj4+PiAtLS0KPj4+IENo
YW5nZWQgaW4gdjM6Cj4+PiAtIHJlYmFzZSBvbiBuZXh0L21hc3Rlcgo+Pj4gQ2hhbmdlZCBpbiB2
MjoKPj4+IC0gcmV3b3JkIGNvbW1pdCBtZXNzYWdlCj4+PiAtLS0KPj4+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMgfCAxMCArKysrKy0tLS0tCj4+PiAg
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWEu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWEuZHRzCj4+
PiBpbmRleCA4N2ZjZThkOWE5NjQuLjg0MWFjOWEzMDYyOCAxMDA2NDQKPj4+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yb2NrLTVhLmR0cwo+Pj4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWEuZHRzCj4+PiBAQCAtMzEw
LDcgKzMxMCw3IEBAIHJnbWlpX3BoeTE6IGV0aGVybmV0LXBoeUAxIHsKPj4+ICB9Owo+Pj4gIAo+
Pj4gICZwY2llMngxbDIgewo+Pj4gLQlwaW5jdHJsLTAgPSA8JnBjaWUyX3Jlc2V0PiwgPCZwY2ll
MjB4MW0wX2Nsa3JlcW4+LCA8JnBjaWUyMHgxbTBfd2FrZW4+Owo+Pj4gKwlwaW5jdHJsLTAgPSA8
JnBjaWUyMHgxXzJfcGVyc3RuX20wPjsKPj4+ICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
Pj4+ICAJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8zIFJLX1BEMSBHUElPX0FDVElWRV9ISUdIPjsKPj4+
ICAJdnBjaWUzdjMtc3VwcGx5ID0gPCZ2Y2MzdjNfd2Y+Owo+Pj4gQEAgLTMyNSwxMiArMzI1LDEy
IEBAIGlvX2xlZDogaW8tbGVkIHsKPj4+ICAJfTsKPj4+ICAKPj4+ICAJcGNpZSB7Cj4+PiAtCQlw
b3dfZW46IHBvdy1lbiB7Cj4+PiAtCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BDNSBSS19GVU5D
X0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPj4+ICsJCXBjaWUyMHgxXzJfcGVyc3RuX20wOiBwY2ll
MjB4MS0yLXBlcnN0bi1tMCB7Cj4+PiArCQkJcm9ja2NoaXAscGlucyA9IDwzIFJLX1BEMSBSS19G
VU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPj4+ICAJCX07Cj4+PiAgCj4+PiAtCQlwY2llMl9y
ZXNldDogcGNpZTItcmVzZXQgewo+Pj4gLQkJCXJvY2tjaGlwLHBpbnMgPSA8MyBSS19QRDEgUktf
RlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+PiArCQlwb3dfZW46IHBvdy1lbiB7Cj4+PiAr
CQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BDNSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25l
PjsKPj4+ICAJCX07Cj4+PiAgCX07Cj4+PiAgCj4+Cj4+Cj4gCj4gCj4gCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
