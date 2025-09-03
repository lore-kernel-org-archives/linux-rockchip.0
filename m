Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FF60CA100C
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Sep 2025 07:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rg0ZrNmRcrFXb3MqIFHvrlJnod//V+WODh2xaaCDpog=; b=4Dcc7UlY18y84Q
	bR4baLT4vWiG4/RtE/mSzOnssSNp2RjJTp2qXBUsh43eebkjIDTQoWDmsfVW37dlPfP54mPKFfdzz
	nZx25jaKS4LVgoNDxXnm/5BV8tGTbV8ztDoAWp+J6huvTsypXIaU1OE9oGqIeEHYmoc5tLc+fv6yG
	uzwKI7qazRe07CHS0qCdw8zBMDqNxNbps48TfxJZzNnVYkRnuz970DX4lVvJmyZyhqcfxG8U3uB3P
	gEnFnOK7wDjgFGWqlW6TYau3p3dZxM4OHYnuLw9aA0onGJkHv2TCIRu7JXJW7BggD2m24WQo2+a5S
	zn55Xk6aSxJDSvIXrIvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uti1V-000000059Af-3Ggg;
	Wed, 03 Sep 2025 07:35:17 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthvL-000000055SL-3Bba
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Sep 2025 07:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1756884534;
 bh=auDnTh/G9z3Y/t2W15bb+vq1E6EQIAIJTktRaItnI50=;
 b=oe/QRFByZvJLL3zM4AlTBG/NU8utt+Qteq5BXB7ZMw2OfR4HLanLhdCcoz2cyhOnEhSkDz1Mr
 UJ8dEcVJE2mNsc+pRiV0QE83QpiXmqEW6ERGk89BddCXWDNeyTLvaGPPAy5Rbfn0KSOsSliVM2W
 gbJaNcaTYv7ejQPi8KXOoapVeymejsRmY5CM3u5su8b+Cy/xDXA2hQRwAzHhVrr7Z5BLhn0gSqA
 zap5Qw+HQRsfNmkMjvARjkEhU0Wpn8GDGPCxVJdgV2pAiB5d2c11/HRvD7qZ0NcFzSGD8YO9IKG
 RrYNkzh2v7vrWgorh3shtiXE6BoN2WiuUUGPVXaPCebw==
X-Forward-Email-ID: 68b7ee2f3a2f2af95f29221d
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.2.11
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <8394c12a-1e1e-44fc-9bb5-92a464dfe410@kwiboo.se>
Date: Wed, 3 Sep 2025 09:28:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] media: rkvdec: Add HEVC backend
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250810212454.3237486-1-jonas@kwiboo.se>
 <20250810212454.3237486-2-jonas@kwiboo.se>
 <432ab63698b27ca5bce3a7a30d630685aff782b6.camel@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <432ab63698b27ca5bce3a7a30d630685aff782b6.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_002856_203904_C6A28910 
X-CRM114-Status: GOOD (  20.12  )
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

SGkgTmljb2xhcywKCk9uIDgvMjkvMjAyNSAxMDoyMiBQTSwgTmljb2xhcyBEdWZyZXNuZSB3cm90
ZToKPiBMZSBkaW1hbmNoZSAxMCBhb8O7dCAyMDI1IMOgIDIxOjI0ICswMDAwLCBKb25hcyBLYXJs
bWFuIGEgw6ljcml0wqA6Cj4+IFRoZSBSb2NrY2hpcCBWREVDIHN1cHBvcnRzIHRoZSBIRVZDIGNv
ZGVjIHdpdGggdGhlIE1haW4gYW5kIE1haW4xMAo+PiBQcm9maWxlIHVwIHRvIExldmVsIDUuMSBI
aWdoIHRpZXI6IDQwOTZ4MjMwNEA2MCBmcHMuCj4+Cj4+IEFkZCB0aGUgYmFja2VuZCBmb3IgSEVW
QyBmb3JtYXQgdG8gdGhlIGRlY29kZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEFsZXggQmVlIDxr
bmFlcnpjaGVAZ21haWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxu
aWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlh
biBGcmlja2UgPHNlYmFzdGlhbi5mcmlja2VAY29sbGFib3JhLmNvbT4KPj4gU2lnbmVkLW9mZi1i
eTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgo+IAo+IFJlLXJlYWRpbmcgbXlzZWxm
LCBtb3N0IG9mIG15IGNvbW1lbnRzIHdlcmUgb2ZmIG9yIHJlYWxseSAibml0dHkiLiBTbyBsZXQn
cyBtb3ZlCj4gZm9yd2FyZCBhbmQgc3BhcmUgeW91IHRoZSB2My4gRGV0bGV2IGlzIGhhcHB5IHRv
IHJlYmFzZSBhbmQgd29yayBvbiB0b3Agb2YgeW91cgo+IHNlcmllcywgc28gbGV0J3MgaGVscCBl
dmVyeW9uZSBnZXR0aW5nIGJldHRlciBSSyBjb2RlYyBzdXBwb3J0Lgo+IAo+IFRlc3RlZC1ieTog
Tmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+IFJldmll
d2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+
Cj4gCj4gSnVzdCB0byBiZSB0cmFuc3BhcmVudCwgZHVyaW5nIHRlc3RpbmcsIGl0IHdhcyBub3Rp
Y2UgdGhhdCBzb21lIGNvbmN1cnJlbnQKPiBkZWNvZGluZyByZXN1bHRlZCBpbnRvIGZhaWx1cmVz
LiBJIHRlc3RlZCBEZXRsZXYgcG9ydCB0byBzdHJ1Y3R1cmUgcmVnaXN0ZXJzLAo+IGFuZCBpdCBk
aWRuJ3QgY2hhbmdlIGFueXRoaW5nIChzbyBwcm9iYWJseSBub3QgYSBzdGFsbGVkIHN0YXRlLCBv
ciBvbmUgdGhhdCB3ZQo+IGNvbnRyb2wpLiBUaGlzIGNvdWxkIGVhc2lseSBiZSBhIEhXIGlzc3Vl
IHdpdGggb2xkZXIgY2hpcC4gU2luY2UgeW91IGhhdmUgdXNlZAo+IHRoaXMgZm9yIHllYXJzIHdp
dGhvdXQgbWFqb3IgaXNzdWUgcmVwb3J0ZWQsIEkgaGFwcHkgdG8gbW92ZSBvbi4KClRoYW5rcywg
SSBmb3VuZCBzb21lIG1pbm9yIGNoYW5nZXMgY29tcGFyZWQgdG8gdGhlIExpYnJlRUxFQyB2ZXJz
aW9uCnRoYXQgSSBhbSBydW5uaW5nIHNvbWUgbmV3IHRlc3RzIG9uLCBwbGFuIHRvIHNlbmQgb3V0
IGEgdjMgYXMgc29vbiBhcwp0ZXN0aW5nIGNvbXBsZXRlcyBsYXRlciB0b2RheS4KCkluIExpYnJl
RUxFQyB2ZXJzaW9uIHdlIGVuYWJsZSBzb21lIGVycm9yIGRldGVjdGlvbiwKCgkvLyBzd19jYWJh
Y19lcnJvcl9lIC0gY2FiYWMgZXJyb3IgZW5hYmxlCgl3cml0ZWwoMHhmZGZmZmZmZCwgcmt2ZGVj
LT5yZWdzICsgUktWREVDX1JFR19TVFJNRF9FUlJfRU4pOwoJLy8gc2xpY2UgZW5kIGVycm9yIGVu
YWJsZSA9IEJJVCgyOCkKCS8vIGZyYW1lIGVuZCBlcnJvciBlbmFibGUgPSBCSVQoMjkpCgl3cml0
ZWwoMHgzMDAwMDAwMCwgcmt2ZGVjLT5yZWdzICsgUktWREVDX1JFR19IMjY0X0VSUl9FKTsKCmFu
ZCBpbiB0aGlzIHNlcmllcyBpdCB3YXMgZnVsbHkgZGlzYWJsZWQgdG8gY2xvc2VyIG1hdGNoIEgy
NjQvVlA5OgoKCXdyaXRlbCgwLCBya3ZkZWMtPnJlZ3MgKyBSS1ZERUNfUkVHX1NUUk1EX0VSUl9F
Tik7Cgl3cml0ZWwoMCwgcmt2ZGVjLT5yZWdzICsgUktWREVDX1JFR19IMjY0X0VSUl9FKTsKClRo
ZXJlIGlzIGFsc28gYW4gZXh0cmEgbWVtc2V0KDAsIC4uLikgaW4gcmt2ZGVjX2hldmNfc3RhcnQ6
CgoJbWVtc2V0KHByaXZfdGJsLCAwLCBzaXplb2YoKnByaXZfdGJsKSk7CgpUaGlzIHNob3VsZCBu
b3QgcmVhbGx5IGJlIG5lZWRlZCBhbmQgd2FzIHJlbW92ZWQgaW4gdGhpcyBzZXJpZXMuCgpTdGls
bCB1bmNsZWFyIGlmIGFueSBvZiB0aGVzZSB3aWxsIHJlc3VsdCBpbiBhIGNoYW5nZWQgYmVoYXZp
b3IuIEVuYWJsZQpvZiBjYWJhYy9zbGljZSBlbmQvZnJhbWUgZW5kIGVycm9yIGNvdWxkIHBvc3Np
YmxlIGFjdGl2YXRlIHNvbWUgbW9yZQpzdGF0ZXMgd2hlbiBibG9jayBpc3N1ZSBhIHNlbGYtcmVz
ZXQsIGJ1dCBJIGFtIG9ubHkgZ3Vlc3NpbmcuCgpPbmUgdGhpbmcgdG8gbm90ZSBmb3IgdGhlIGZs
YWt5IHRlc3RzIGlzIHRoYXQgd2hlbiB0aGV5IGZhaWwsIHRoZXkKdHlwaWNhbGx5IGp1c3QgZW5k
IHVwIHdpdGggYSBkaWZmZXJlbnQgY29uc2lzdGVudCBjaGVja3N1bS4gSSBoYXZlIG5vdApkb25l
IGFueSB2aXN1YWwgaW5zcGVjdGlvbiBvZiB0aG9zZSBmcmFtZXMsIGJ1dCB3aWxsIGV4dHJhY3Qg
ZWFjaCBmcmFtZQphbmQgY29tcGFyZSB0aGVtIGJvdGggYml0d2lzZSBhbmQgdmlzdWFsbHkuCgpS
ZWdhcmRzLApKb25hcwoKPiAKPiByZWdhcmRzLAo+IE5pY29sYXMKPiAKPj4gLS0tCj4+IENoYW5n
ZXMgaW4gdjI6Cj4+IC0gVXNlIG5ld192YWx1ZSBpbiB0cmFuc3Bvc2VfYW5kX2ZsYXR0ZW5fbWF0
cmljZXMoKQo+PiAtIEFkZCBOVUxMIGNoZWNrIGZvciBjdHJsLT5uZXdfZWxlbXMgaW4gcmt2ZGVj
X2hldmNfcnVuX3ByZWFtYmxlKCkKPj4gLSBTZXQgUktWREVDX1dSX0REUl9BTElHTl9FTiBmb3Ig
UkszMzI4Cj4+IC0tLQo+PiDCoC4uLi9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya3ZkZWMvTWFr
ZWZpbGXCoMKgIHzCoMKgwqAgMiArLQo+PiDCoC4uLi9yb2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLWhl
dmMtZGF0YS5jwqDCoMKgwqDCoMKgwqAgfCAxODQ4ICsrKysrKysrKysrKysrKysrCj4+IMKgLi4u
L3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMtaGV2Yy5jwqDCoMKgIHzCoCA4MTcgKysr
KysrKysKPj4gwqAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy1yZWdzLmjCoMKg
wqAgfMKgwqDCoCAyICsKPj4gwqAuLi4vbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3Jr
dmRlYy5jwqDCoCB8wqDCoCA3NiArCj4+IMKgLi4uL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jr
dmRlYy9ya3ZkZWMuaMKgwqAgfMKgwqDCoCAxICsKPj4gwqA2IGZpbGVzIGNoYW5nZWQsIDI3NDUg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+PiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMtaGV2Yy1kYXRhLmMKPj4g
wqBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya3Zk
ZWMvcmt2ZGVjLWhldmMuYwoKW3NuaXBdCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
