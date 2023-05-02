Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 069E4C77B7E
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 10:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgdbtUvS4SvU+SZoAACd5y62ARVfD7ZCoDql4XPFs5s=; b=DdqZB2yN7tKQJV
	wnNxXdLxGuTW5O19IvSAkCpn65kVaprnaXqX/EQygVFWnkee2Nc1qm86imgFqWN4xeUzCZaTFC3JU
	+d6ycxASqF2RYQXfcdSk3rja/mNs/iFybF64U3hg21d8KBxbVQUjuXIhlCq/5cmpI9dEkMGmjSnYJ
	IA50CVd7CEgCH/sudiKbTWfhZSkLCZVSEWJEQwtUzQgG9AhvHsw9ORcS5Azs7DsHAJOyxwbuK5SVI
	wSnKlquNYyMbJnG38U0StsCiIj5gtMI3+lRFNG6p+kw0I/v2TPBybrQBMam3MJkMiluO9sMvGs1Zt
	zCJNfMEjAYxQin4XFslA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmsq-000s1W-0M;
	Tue, 02 May 2023 10:05:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmsn-000rzu-0L;
	Tue, 02 May 2023 10:05:18 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ptmsX-0006v1-8j; Tue, 02 May 2023 12:05:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Peter Geis <pgwipeout@gmail.com>,
 Andy Yan <andyshrk@163.com>, Chris Morgan <macromorgan@hotmail.com>,
 Brian Norris <briannorris@chromium.org>, Andrew Lunn <andrew@lunn.ch>,
 Shawn Guo <shawnguo@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Vasily Khoruzhick <anarsoul@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add Lunzn Fastrhino R66S
Date: Tue, 02 May 2023 12:04:59 +0200
Message-ID: <5045149.1BCLMh4Saa@diego>
In-Reply-To:  <CAOP2_TgrPwvkXayyWkb5H-+X-Nr85G65YoAfs4_+zUfK=_+VHA@mail.gmail.com>
References:  <20230428013738.30735-1-cnsztl@gmail.com> <4763863.6tgchFWduM@diego>
 <CAOP2_TgrPwvkXayyWkb5H-+X-Nr85G65YoAfs4_+zUfK=_+VHA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_030517_146490_D7ADBC6C 
X-CRM114-Status: GOOD (  28.03  )
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

QW0gRGllbnN0YWcsIDIuIE1haSAyMDIzLCAxMTo1Mzo1OCBDRVNUIHNjaHJpZWIgVGlhbmxpbmcg
U2hlbjoKPiBIaSBIZWlrbywKPiAKPiBPbiBUdWUsIE1heSAyLCAyMDIzIGF0IDU6MzDigK9QTSBI
ZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+Cj4gPiBBbSBEaWVuc3Rh
ZywgMi4gTWFpIDIwMjMsIDExOjI4OjIyIENFU1Qgc2NocmllYiBIZWlrbyBTdMO8Ym5lcjoKPiA+
ID4gSGksCj4gPiA+Cj4gPiA+IEFtIEZyZWl0YWcsIDI4LiBBcHJpbCAyMDIzLCAwMzozNzozNyBD
RVNUIHNjaHJpZWIgVGlhbmxpbmcgU2hlbjoKPiA+ID4gPiBMdW56biBGYXN0cmhpbm8gUjY2UyBp
cyBhIGhpZ2gtcGVyZm9ybWFuY2UgbWluaSByb3V0ZXIuCj4gPiA+ID4KPiA+ID4gPiBTcGVjaWZp
Y2F0aW9uOgo+ID4gPiA+IC0gUm9ja2NoaXAgUkszNTY4Cj4gPiA+ID4gLSAxLzJHQiBMUEREUjQg
UkFNCj4gPiA+ID4gLSBTRCBjYXJkIHNsb3QKPiA+ID4gPiAtIE0uMiBDb25uZWN0b3IKPiA+ID4g
PiAtIDJ4IFVTQiAzLjAgUG9ydAo+ID4gPiA+IC0gMnggMjUwMCBCYXNlLVQgKFBDSWUsIHI4MTI1
YikKPiA+ID4gPiAtIDEydiBEQyBKYWNrCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBU
aWFubGluZyBTaGVuIDxjbnN6dGxAZ21haWwuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwo+ID4gPiA+
ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU2OC1mYXN0cmhpbm8tcjY2cy5kdHMgICAgfCAgMjcgKwo+
ID4gPiA+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU2OC1mYXN0cmhpbm8tcjY2cy5kdHNpICAgfCA1
MDcgKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNTM1IGluc2Vy
dGlvbnMoKykKPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LWZhc3RyaGluby1yNjZzLmR0cwo+ID4gPiA+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZmFzdHJoaW5vLXI2NnMu
ZHRzaQo+ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvTWFrZWZpbGUgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4g
PiA+ID4gaW5kZXggMmQ1ODViYmI4ZjNhLi4xNTA4OWE3ODU1NWEgMTAwNjQ0Cj4gPiA+ID4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4gPiA+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+ID4gPiBAQCAtODUsNiArODUs
NyBAQCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY2LWJveC1kZW1vLmR0Ygo+
ID4gPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY2LWx1YmFuY2F0LTEu
ZHRiCj4gPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1NjgtYnBpLXIy
LXByby5kdGIKPiA+ID4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU2OC1l
dmIxLXYxMC5kdGIKPiA+ID4gPiArZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU2
OC1mYXN0cmhpbm8tcjY2cy5kdGIKPiA+ID4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVAp
ICs9IHJrMzU2OC1sdWJhbmNhdC0yLmR0Ygo+ID4gPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NL
Q0hJUCkgKz0gcmszNTY4LW5hbm9waS1yNWMuZHRiCj4gPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSByazM1NjgtbmFub3BpLXI1cy5kdGIKPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZmFzdHJoaW5vLXI2NnMuZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZmFzdHJoaW5vLXI2NnMuZHRzCj4g
PiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmZj
OWUxYmRhYjEyOAo+ID4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1mYXN0cmhpbm8tcjY2cy5kdHMKPiA+ID4gPiBAQCAt
MCwwICsxLDI3IEBACj4gPiA+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
LW9yLWxhdGVyIE9SIE1JVAo+ID4gPiA+ICsKPiA+ID4gPiArI2luY2x1ZGUgInJrMzU2OC1mYXN0
cmhpbm8tcjY2cy5kdHNpIgo+ID4gPiA+ICsKPiA+ID4gPiArLyB7Cj4gPiA+ID4gKyAgIG1vZGVs
ID0gIkx1bnpuIEZhc3RSaGlubyBSNjZTIjsKPiA+ID4gPiArICAgY29tcGF0aWJsZSA9ICJsdW56
bixmYXN0cmhpbm8tcjY2cyIsICJyb2NrY2hpcCxyazM1NjgiOwo+ID4gPiA+ICsKPiA+ID4gPiAr
ICAgYWxpYXNlcyB7Cj4gPiA+ID4gKyAgICAgICAgICAgbW1jMCA9ICZzZG1tYzA7Cj4gPiA+ID4g
KyAgIH07Cj4gPiA+ID4gK307Cj4gPiA+ID4gKwo+ID4gPiA+ICsmc2RtbWMwIHsKPiA+ID4KPiA+
ID4gdGhhdCB3aG9sZSBlbGVtZW50IHNlZW1zIHRvIGJlIGR1cGxpY2F0ZWQgZnJvbSByazM1Njgt
ZmFzdHJoaW5vLXI2NnMuZHRzaT8KPiA+ID4gSSBkb24ndCB0aGluayB3ZSBuZWVkIHRvIGRlY2xh
cmUgdGhhdCB0d2ljZS4gSWYgc29tZXRoaW5nIHJlYWxseSBjaGFuZ2VzLAo+ID4gPiBwbGVhc2Ug
b25seSBkZWNsYXJlIHRoZSBuZXcgcHJvcGVydGllcyB3aGVuIGdvaW5nIGZyb20gZHRzaSB0byBk
dHMuCj4gPgo+ID4gTG9va2luZyBhdCBwYXRjaDMgSSBzZWUgdGhlIGV4cGxhbmF0aW9uIDotKSAu
Cj4gPgo+ID4gVGhlIGJhc2UgZHRzaSBzaG91bGQgbm90IGNvbnRhaW4gdGhlICZzZG1tYzAgbm9k
ZSwgYW5kIGl0IHNob3VsZAo+ID4gb25seSBiZSBpbmNsdWRlZCBpbiB0aGUgcmszNTY4LWZhc3Ry
aGluby1yNjZzLmR0cywgcmlnaHQ/Cj4gPgo+IAo+IFllcywgbmljZSBjYXRjaCEKPiAKPiBBbmQg
SSBmb3VuZCBhbm90aGVyIGVycm9yIGluIHRoZSBSNjhTIGR0cyBmaWxlIChnbWFjIHBjZmcgcHVs
bCB0eXBlKS4KPiBVbmZvcnR1bmF0ZWx5IEkgZG9uJ3QgaGF2ZSB0aGlzIGJvYXJkIHJpZ2h0IG5v
dywgYW5kIEknbSBzdGlsbCB3YWl0aW5nCj4gZm9yIHRoZSB0ZXN0IHJlc3VsdCBmcm9tIG15IGZy
aWVuZC4gU3VwcG9zZSBzZW5kaW5nIHYyIGluIHRoZSBuZXh0IGZldwo+IGRheXMuCgpubyB3b3Jy
aWVzLCBzZW5kIHdoZW4geW91J3JlIHJlYWR5IDotKQoKSGVpa28KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
