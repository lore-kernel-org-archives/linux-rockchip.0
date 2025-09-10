Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6D1FCAC58C
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 08:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJqIH+IYjlyplYE32gf87IE1WwK++26tI+H1AsJ/kkM=; b=Yv622IXlV4OK/o
	+kxB2ZHXa2YxXPu4z4dVqY/2spuBnDxvkkiBrIS+mWC4boRgwhSphSjKdzicD7fr/xE6minFlFM+f
	zY+HI2zukvxGoTnXbFvj4e1fbHNxg/GuTKLOYZsp6zDSBSwk/rmJN9CacXrpfYAVxQ9Rszqp+hP+D
	DVkzgnYRkq+zjWatUhrR2oEm7+UCHM7ESdpzr+rcC4AwbHcmgWv7cPMw0cIwg8WOlMlL0KpDdw739
	zNnWmgM20oEFg2GBuV8DazWW0pihDakZz+fdccN4CaXXY+70DU3WiXsjnTq1hUQFmR1mzzgh62vBy
	a4clFKpcausUoBOI19xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwFsG-0000000CnSK-3iUR;
	Wed, 10 Sep 2025 08:08:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwFsB-0000000CnHi-1T0s;
	Wed, 10 Sep 2025 08:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OKtae1/MTEFxe7xmafsPAa0wGzFLGfdejPFoPYDGp2U=; b=k9OW7Ic/qBSej1y4jPGXZrPgeX
	oL+IcP7PA+rtbDaMdMDqroOQsPB4DpioOg6ekYmCUmRZ9Wn77nr/UCZl9a5JVsLGEeXPCqp43YuQZ
	xcT/lIUokAjFQGEXdK4apfXuyoZfJTmLHtLS7+4oqVxnatty+LP1YMlnthZKCmPbgljmAfdt8V12Q
	jTD9Njalu5FVDuZEm/XX3kx+pftHkn7uCGQmKcteo2/RiiA6C1b07Ie91eQHh9Ev3P38lzkmK6Him
	NsTCzidqF1M5lG8NTZd8+y7WNo5rDe9zebEvFjynP1BJTw8o8WpJPtoKp156j8bU2fbrKkBhZpwlN
	ryXgTZ5Q==;
Received: from i53875b8a.versanet.de ([83.135.91.138] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uwFrr-0008H8-RD; Wed, 10 Sep 2025 10:07:51 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>, FUKAUMI Naoki <naoki@radxa.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E24C
Date: Wed, 10 Sep 2025 10:07:49 +0200
Message-ID: <3331537.aV6nBDHxoP@diego>
In-Reply-To: <AF1546E3BE23C6D5+08234a44-4321-45da-9c74-5690f3437e03@radxa.com>
References: <20250727144409.327740-1-jonas@kwiboo.se>
 <a443fca9-e660-4a7a-b637-ec840ac8ed1e@kwiboo.se>
 <AF1546E3BE23C6D5+08234a44-4321-45da-9c74-5690f3437e03@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_010811_514533_963230D1 
X-CRM114-Status: GOOD (  29.75  )
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

QW0gTWl0dHdvY2gsIDEwLiBTZXB0ZW1iZXIgMjAyNSwgMDQ6NDM6MzAgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBGVUtBVU1JIE5hb2tpOgo+IEhpIEpvbmFzLCBIZWlrbywK
PiAKPiBPbiA5LzEwLzI1IDA0OjM2LCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+ID4gT24gOS85LzIw
MjUgNTozOSBQTSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPj4gQW0gRGllbnN0YWcsIDkuIFNl
cHRlbWJlciAyMDI1LCAxNjo0ODoyNSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hy
aWViIEpvbmFzIEthcmxtYW46Cj4gPj4+IE9uIDkvOS8yMDI1IDI6MjggUE0sIEZVS0FVTUkgTmFv
a2kgd3JvdGU6Cj4gPj4+PiBIaSBKb25hcywKPiA+Pj4+Cj4gPj4+PiBPbiA3LzI3LzI1IDIzOjQ0
LCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+ID4+Pj4+IFRoZSBSYWR4YSBFMjRDIGlzIGEgY29tcGFj
dCwgaGlnaC1wZXJmb3JtYW5jZSBuZXR3b3JrIGNvbXB1dGVyCj4gPj4+Pj4gZGV2ZWxvcGVkIGJ5
IFJhZHhhLCBiYXNlZCBvbiB0aGUgUm9ja2NoaXAgUkszNTI4QSBTb0MuCj4gPj4+Pj4KPiA+Pj4+
PiBBZGQgaW5pdGlhbCBkZXZpY2UgdHJlZSBmb3IgdGhlIFJhZHhhIEUyNEMuCj4gPj4+Pj4KPiA+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gPj4+
Pj4gUmV2aWV3ZWQtYnk6IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KPiA+Pj4+PiAtLS0K
PiA+Pj4+PiBTY2hlbWF0aWNzOiBodHRwczovL2RsLnJhZHhhLmNvbS9lL2UyNGMvZG9jcy9yYWR4
YV9lMjRjX3YxMjAwX3NjaGVtYXRpYy5wZGYKPiA+Pj4+PiAtLS0KPiA+Pj4+PiAgICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwo+ID4+Pj4+ICAg
IC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtcmFkeGEtZTI0Yy5kdHMgICB8IDUxOSArKysr
KysrKysrKysrKysrKysKPiA+Pj4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDUyMCBpbnNlcnRpb25z
KCspCj4gPj4+Pj4gICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTI4LXJhZHhhLWUyNGMuZHRzCj4gPj4+Pj4KPiA+Pj4+PiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+Pj4+PiBpbmRleCAwNjYyZmNmMDA2MjguLmRjNjJmZDUz
MDViZSAxMDA2NDQKPiA+Pj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01h
a2VmaWxlCj4gPj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmls
ZQo+ID4+Pj4+IEBAIC05Miw2ICs5Miw3IEBAIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSAr
PSByazMzOTlwcm8tcm9jay1waS1uMTAuZHRiCj4gPj4+Pj4gICAgZHRiLSQoQ09ORklHX0FSQ0hf
Uk9DS0NISVApICs9IHJrMzUyOC1hcm1zb20tc2lnZTEuZHRiCj4gPj4+Pj4gICAgZHRiLSQoQ09O
RklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzUyOC1uYW5vcGktemVybzIuZHRiCj4gPj4+Pj4gICAg
ZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzUyOC1yYWR4YS1lMjBjLmR0Ygo+ID4+
Pj4+ICtkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTI4LXJhZHhhLWUyNGMuZHRi
Cj4gPj4+Pj4gICAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzUyOC1yb2NrLTJh
LmR0Ygo+ID4+Pj4+ICAgIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1Mjgtcm9j
ay0yZi5kdGIKPiA+Pj4+PiAgICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTYy
LWV2YjItdjEwLmR0Ygo+ID4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzUyOC1yYWR4YS1lMjRjLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTI4LXJhZHhhLWUyNGMuZHRzCj4gPj4+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+
Pj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjIyNWYyYjBjNTMzOQo+ID4+Pj4+IC0tLSAvZGV2L251
bGwKPiA+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1yYWR4
YS1lMjRjLmR0cwo+ID4+Pj4+IEBAIC0wLDAgKzEsNTE5IEBACj4gPj4+Pj4gKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ID4+Pj4+ICsKPiA+Pj4+PiArL2R0
cy12MS87Cj4gPj4+Pj4gKwo+ID4+Pj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvaW5w
dXQuaD4KPiA+Pj4+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2xlZHMvY29tbW9uLmg+Cj4gPj4+
Pj4gKyNpbmNsdWRlICJyazM1MjguZHRzaSIKPiA+Pj4+PiArCj4gPj4+Pj4gKy8gewo+ID4+Pj4+
ICsJbW9kZWwgPSAiUmFkeGEgRTI0QyI7Cj4gPj4+Pj4gKwljb21wYXRpYmxlID0gInJhZHhhLGUy
NGMiLCAicm9ja2NoaXAscmszNTI4IjsKPiA+Pj4+PiArCj4gPj4+Pj4gKwlhbGlhc2VzIHsKPiA+
Pj4+PiArCQlldGhlcm5ldDAgPSAmZ21hYzE7Cj4gPj4+Pj4gKwkJaTJjMCA9ICZpMmMwOwo+ID4+
Pj4+ICsJCWkyYzEgPSAmaTJjMTsKPiA+Pj4+PiArCQlpMmM1ID0gJmkyYzU7Cj4gPj4+Pj4gKwkJ
bW1jMCA9ICZzZGhjaTsKPiA+Pj4+PiArCQltbWMxID0gJnNkbW1jOwo+ID4+Pj4+ICsJCXJ0YzAg
PSAmaHltODU2MzsKPiA+Pj4+PiArCQlydGMxID0gJnJrODA1Owo+ID4+Pj4+ICsJCXNlcmlhbDAg
PSAmdWFydDA7Cj4gPj4+Pj4gKwl9Owo+ID4+Pj4+ICsKPiA+Pj4+PiArCWNob3NlbiB7Cj4gPj4+
Pj4gKwkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMDoxNTAwMDAwbjgiOwo+ID4+Pj4+ICsJfTsKPiA+
Pj4+PiArCj4gPj4+Pj4gKwlhZGMta2V5cyB7Cj4gPj4+Pj4gKwkJY29tcGF0aWJsZSA9ICJhZGMt
a2V5cyI7Cj4gPj4+Pj4gKwkJaW8tY2hhbm5lbHMgPSA8JnNhcmFkYyAwPjsKPiA+Pj4+PiArCQlp
by1jaGFubmVsLW5hbWVzID0gImJ1dHRvbnMiOwo+ID4+Pj4+ICsJCWtleXVwLXRocmVzaG9sZC1t
aWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gPj4+Pj4gKwkJcG9sbC1pbnRlcnZhbCA9IDwxMDA+Owo+
ID4+Pj4+ICsKPiA+Pj4+PiArCQlidXR0b24tbWFza3JvbSB7Cj4gPj4+Pj4gKwkJCWxhYmVsID0g
Ik1BU0tST00iOwo+ID4+Pj4+ICsJCQlsaW51eCxjb2RlID0gPEtFWV9TRVRVUD47Cj4gPj4+Pj4g
KwkJCXByZXNzLXRocmVzaG9sZC1taWNyb3ZvbHQgPSA8MD47Cj4gPj4+Pj4gKwkJfTsKPiA+Pj4+
PiArCX07Cj4gPj4+Pj4gKwo+ID4+Pj4+ICsJZ3Bpby1rZXlzIHsKPiA+Pj4+PiArCQljb21wYXRp
YmxlID0gImdwaW8ta2V5cyI7Cj4gPj4+Pj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiA+Pj4+PiArCQlwaW5jdHJsLTAgPSA8JmdwaW8wX2EwX3VzZXI+Owo+ID4+Pj4+ICsKPiA+Pj4+
PiArCQlidXR0b24tdXNlciB7Cj4gPj4+Pj4gKwkJCWdwaW9zID0gPCZncGlvMCBSS19QQTAgR1BJ
T19BQ1RJVkVfTE9XPjsKPiA+Pj4+PiArCQkJbGFiZWwgPSAiVVNFUiI7Cj4gPj4+Pj4gKwkJCWxp
bnV4LGNvZGUgPSA8QlROXzE+Owo+ID4+Pj4KPiA+Pj4+IEkgcHJlZmVyIHRvIGFzc2lnbiBCVE5f
MCB0byB0aGUgMXN0IGJ1dHRvbiA6KQo+ID4+Pgo+ID4+PiBUaGUgRTIwQyAoYW5kIG90aGVyIFJL
IGJvYXJkcykgYWxyZWFkeSB1c2UgQlROXzEgZm9yIHVzZXIgYnV0dG9uLCBpdAo+ID4+PiBvbmx5
IHNlZW0gdG8gYmUgdGhlIHJlY2VudGx5IGFkZGVkIEU1NEMgdGhhdCBpcyB1c2luZyBCVE5fMC4K
PiA+Pj4KPiA+Pj4gRm9yIGNvbnNpc3RlbmN5IEkgc3VnZ2VzdCB3ZSBrZWVwIHVzaW5nIEJUTl8x
IGZvciB0aGlzIHVzZXIgYnV0dG9uIGFuZAo+ID4+PiBwb3NzaWJsZSBmaXh1cCBFNTRDLCBpZiB5
b3Ugd2FudCB0byB1c2Ugc2FtZSBidXR0b24gZm9yIGFsbCB2YXJpYW50cy4KPiA+Pgo+ID4+IFll
cCwgdGhhdCB3b3VsZCBhbHNvIGtlZXAgdGhlIGFtb3VudCBvZiB1c2Vyc3BhY2UtZmFjaW5nIGNo
YW5nZXMKPiA+PiBtaW5pbWFsLgo+ID4gCj4gPiBJIG1peGVkIHVwIGU1NGMgYW5kIGU1MmMgc28g
bXkgc3RhdGVtZW50IHdhcyBub3QgZnVsbHkgY29ycmVjdCBhYm92ZSwKPiA+IGhvd2V2ZXIgdGhl
cmUgaXMgYSBtaXhlZCB1c2Ugb2YgQlROXzEgYW5kIEJUTl8wIGZvciB1c2VyIGJ1dHRvbjoKPiA+
IAo+ID4gLSByazM1ODhzLW5hbm9waS1yNmMvcjZzIHVzZXMgQlROXzEsIGFkZGVkIGluIHY2Ljkt
cmMxCj4gPiAtIHJrMzU4OC1mcmllbmRseWVsZWMtY20zNTg4LW5hcyB1c2VzIEJUTl8xLCBhZGRl
ZCBpbiB2Ni4xMS1yYzEKPiA+IC0gcmszNTgyLXJhZHhhLWU1MmMgdXNlcyBCVE5fMCwgYWRkZWQg
aW4gdjYuMTQtcmMxCj4gPiAtIHJrMzUyOC1yYWR4YS1lMjBjIHVzZXMgQlROXzEsIGFkZGVkIGlu
IHY2LjE1LXJjMQo+ID4gLSByazM1NzYtbmFub3BpLW01IHVzZXMgQlROXzEsIGFkZGVkIGluIHY2
LjE3LXJjMQo+ID4gCj4gPiBNYWpvcml0eSBzZWVtIHRvIGJlIHVzaW5nIEJUTl8xIGZvciBhIHVz
ZXIgYnV0dG9uLgo+IAo+IElmIHdlIGNhbiB1bmlmeSB0byBCVE5fMSBldmVuIGlmIGl0IGJyZWFr
cyBiYWNrd2FyZCBjb21wYXRpYmlsaXR5LCBJIAo+IHdvdWxkbid0IGJlIG9wcG9zZWQgdG8gaXQu
Cj4gCj4gKEkgcmVtZW1iZXIgYSAic3luYyB3aXRoIG90aGVycyIgcGF0Y2ggYmVpbmcgcmVqZWN0
ZWQgaW4gdGhlIHBhc3QsIGJ1dCBJIAo+IG1pZ2h0IGJlIHJlbWVtYmVyaW5nIGl0IHdyb25nLikK
CnlvdSByZW1lbWJlciBjb3JyZWN0bHkgOi0pIC4KCkNoYW5naW5nIHRoZSByZXBvcnRlZCBrZXkg
anVzdCBmb3IgInN5bmNpbmciIGlzIGdlbmVyYWxseSBub3QgZGVzaXJlZC4KSXQnZCBiZSBsaWtl
IHlvdXIgImEiIGtleSByZXBvcnRpbmcgInoiIHdpdGggYSBuZXcga2VybmVsIHZlcnNpb24sIGV2
ZW4KaWYgdGhlIGxhYmVsIG9uIHRoZSBrZXkgc3RhdGVzICJ6IiBzaW5jZSB0aGUgYmVnaW5uaW5n
IFswXQoKU28gYW55IGFkYXB0YXRpb24gYWx3YXlzIGlzIG9uIGEgY2FzZS1ieS1jYXNlIGJhc2lz
LgoKTXkgaHVuY2ggcmlnaHQgbm93IGlzIHRoYXQgd2UgbWlnaHQgYmUgYWJsZSB0byBhZGFwdCB0
aGUgYnV0dG9uCm9uIHRoYXQgcmszNTgyIGJvYXJkLCBiZWNhdXNlIEkgYXNzdW1lIGR1ZSB0byB0
aGUgbG90dGVyeSBzb2MKKGRpc2FibGVkIGNvcmVzIGFuZC9vciBkaXNhYmxlZCBncHUvLi4uKSBp
dCBtaWdodCBub3QgYmUgb3Zlcmx5CnNwcmVhZCBvdXQgaW4gdGhlIHdpbGQ/CgoKWzBdIGh0dHBz
Oi8veGtjZC5jb20vMTE3Mi8gOy0pCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
