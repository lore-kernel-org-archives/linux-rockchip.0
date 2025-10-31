Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4CDACCF9F8
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 12:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztbird/WXQ9FLniLVHYTo4NudCiP0fWo9K+1q926UXk=; b=kEt3L/vroyRpOx
	BqSRRkCxsQoLrM5MQTL+Mf29pKqxufJqHrZCAa+3qmczuKHXeLA+IeKKiO/03ghiW6rPJXWdkUAE5
	u5Gbqv5oqUZXhaEsjTjxFxbCrHTc6H76/m6KN5KuCWrjixoIzDqwDIVlIu1KKyWP/Kd88FN01hzqE
	/lQN11UzuazoYvgrAg6CnRAVxlPRs8aU6y3MpAjZ57D7u5xAj/3M5nzEOUKHXasGydRvXkiFQXD7C
	h+iTwW/00CyaU1KKSpOHvtD1xyOfZa3NPQ/MGIT5BBEpOOPsUafcTasOsMQA/MWiw7dLWkEpleggP
	LGnn2aAbHM9/mnAhQ7JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEo7q-000000064JD-3z6w;
	Fri, 31 Oct 2025 12:21:02 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEo7o-000000064If-1MBd;
	Fri, 31 Oct 2025 12:21:02 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1761913244; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=NYrVCdrwtfSvlZFvJ04ri1DzX5zX+b3GD79h1D4eMLRK+QMF1d9Gjbk8uTIAj+zGkoAJb4xaZTd/j1SKn6x8IK0jf3mmTSZh9ocQNSkaoj8VVjZyc7G3isqnk3DQmngoLqesqxv0omMYcrVZgkFvc1SYkhP58fLyamktkuJfyOY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1761913244; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=5zTIt+rAoBvPMQKP7EcQfAbiSRLViWy6hR5zucTP3Kg=; 
	b=AgWKks5HGuNLTYPTjTAo5RCmaBhczJXzyVAtAdFgJz8BxzBx+cwzJHjph843CcGQXnWeWPtf7Q8W0SlTY33D8w9KfOJwvB7zcWpzLy6AQXNq1dkKkUCC6zJA7KFpDOgpSvpjaFh7Eomwvdcc05286lfR8CLt+2MNKlx2YyGs6C4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1761913244;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=5zTIt+rAoBvPMQKP7EcQfAbiSRLViWy6hR5zucTP3Kg=;
	b=A4UWeNPA23M7lsIukrsOH7bMGSKligZV1HnaAwV2DdWV6EclFAbHWF/fr7a0+yW4
	pdvNPakawyFW5CNuDHtiQm/hXB/U1P5eEW3+7psTi3EP3NA138ZJQRXZv9sVLSpjS3H
	44DG+udYIh/AlEO1zDtzVvp5ZbKgIWSirRZCQXm8=
Received: by mx.zohomail.com with SMTPS id 1761913243469405.4251213598277;
	Fri, 31 Oct 2025 05:20:43 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Lee Jones <lee@kernel.org>, William Breathitt Gray <wbg@kernel.org>,
 Johan Jonker <jbx6244@yandex.com>
Cc: kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Alexey Charkov <alchark@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
Subject: Re: [PATCH v3 2/5] mfd: Add Rockchip mfpwm driver
Date: Fri, 31 Oct 2025 13:20:37 +0100
Message-ID: <3598089.ElGaqSPkdT@workhorse>
In-Reply-To: <16341fe2-7d2b-45a6-a861-93950c1bbd1f@yandex.com>
References: <20251027-rk3576-pwm-v3-0-654a5cb1e3f8@collabora.com>
 <20251027-rk3576-pwm-v3-2-654a5cb1e3f8@collabora.com>
 <16341fe2-7d2b-45a6-a861-93950c1bbd1f@yandex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_052100_431951_F3D5720B 
X-CRM114-Status: GOOD (  39.62  )
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

T24gVHVlc2RheSwgMjggT2N0b2JlciAyMDI1IDE5OjUyOjUzIENlbnRyYWwgRXVyb3BlYW4gU3Rh
bmRhcmQgVGltZSBKb2hhbiBKb25rZXIgd3JvdGU6Cj4gCj4gT24gMTAvMjcvMjUgMTg6MTEsIE5p
Y29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+IFdpdGggdGhlIFJvY2tjaGlwIFJLMzU3NiwgdGhl
IFBXTSBJUCB1c2VkIGJ5IFJvY2tjaGlwIGhhcyBjaGFuZ2VkCj4gPiBzdWJzdGFudGlhbGx5LiBM
b29raW5nIGF0IGJvdGggdGhlIGRvd25zdHJlYW0gcHdtLXJvY2tjaGlwIGRyaXZlciBhcwo+ID4g
d2VsbCBhcyB0aGUgbWFpbmxpbmUgcHdtLXJvY2tjaGlwIGRyaXZlciBtYWRlIGl0IGNsZWFyIHRo
YXQgd2l0aCBhbGwgaXRzCj4gPiBhZGRpdGlvbmFsIGZlYXR1cmVzIGFuZCBpdHMgZGlmZmVyZW5j
ZXMgZnJvbSBwcmV2aW91cyBJUCByZXZpc2lvbnMsIGl0Cj4gPiBpcyBiZXN0IHN1cHBvcnRlZCBp
biBhIG5ldyBkcml2ZXIuCj4gPiAKPiA+IFRoaXMgYnJpbmdzIHVzIHRvIHRoZSBxdWVzdGlvbiBh
cyB0byB3aGF0IHN1Y2ggYSBuZXcgZHJpdmVyIHNob3VsZCBiZS4KPiA+IFRvIG1lLCBpdCBzb29u
IGJlY2FtZSBjbGVhciB0aGF0IGl0IHNob3VsZCBhY3R1YWxseSBiZSBzZXZlcmFsIG5ldwo+ID4g
ZHJpdmVycywgbW9zdCBwcm9taW5lbnRseSB3aGVuIFV3ZSBLbGVpbmUtS8O2bmlnIGxldCBtZSBr
bm93IHRoYXQgSQo+ID4gc2hvdWxkIG5vdCBpbXBsZW1lbnQgdGhlIHB3bSBzdWJzeXN0ZW0ncyBj
YXB0dXJlIGNhbGxiYWNrLCBidXQgaW5zdGVhZAo+ID4gd3JpdGUgYSBjb3VudGVyIGRyaXZlciBm
b3IgdGhpcyBmdW5jdGlvbmFsaXR5Lgo+ID4gCj4gPiBDb21iaW5lZCB3aXRoIHRoZSBvdGhlciBh
cy1vZi15ZXQgdW5pbXBsZW1lbnRlZCBmdW5jdGlvbmFsaXR5IG9mIHRoaXMKPiA+IG5ldyBJUCwg
aXQgYmVjYW1lIGFwcGFyZW50IHRoYXQgaXQgbmVlZHMgdG8gYmUgc3ByZWFkIGFjcm9zcyBzZXZl
cmFsCj4gPiBzdWJzeXN0ZW1zLgo+ID4gCj4gPiBGb3IgdGhpcyByZWFzb24sIHdlIGFkZCBhIG5l
dyBNRkQgY29yZSBkcml2ZXIsIGNhbGxlZCBtZnB3bSAoc2hvcnQgZm9yCj4gPiAiTXVsdGktZnVu
Y3Rpb24gUFdNIikuIFRoaXMgInBhcmVudCIgZHJpdmVyIG1ha2VzIHN1cmUgdGhhdCBvbmx5IG9u
ZQo+ID4gZGV2aWNlIGZ1bmN0aW9uIGRyaXZlciBpcyB1c2luZyB0aGUgZGV2aWNlIGF0IGEgdGlt
ZSwgYW5kIGlzIGluIGNoYXJnZQo+ID4gb2YgcmVnaXN0ZXJpbmcgdGhlIE1GRCBjZWxsIGRldmlj
ZXMgZm9yIHRoZSBpbmRpdmlkdWFsIGRldmljZSBmdW5jdGlvbnMKPiA+IG9mZmVyZWQgYnkgdGhl
IGRldmljZS4KPiA+IAo+ID4gQW4gYWNxdWlyZS9yZWxlYXNlIHBhdHRlcm4gaXMgdXNlZCB0byBn
dWFyYW50ZWUgdGhhdCBkZXZpY2UgZnVuY3Rpb24KPiA+IGRyaXZlcnMgZG9uJ3Qgc3RlcCBvbiBl
YWNoIG90aGVyJ3MgdG9lcy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBGcmF0dGFy
b2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gIE1BSU5U
QUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKwo+ID4gIGRyaXZlcnMvbWZkL0tj
b25maWcgICAgICAgICAgICAgICAgfCAgMTUgKysKPiA+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAg
ICAgICAgICAgICAgIHwgICAxICsKPiA+ICBkcml2ZXJzL21mZC9yb2NrY2hpcC1tZnB3bS5jICAg
ICAgIHwgMzQwICsrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIGluY2x1ZGUvbGludXgv
bWZkL3JvY2tjaGlwLW1mcHdtLmggfCA0NTQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ID4gIDUgZmlsZXMgY2hhbmdlZCwgODEyIGluc2VydGlvbnMoKykKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKPiA+IGluZGV4IGJhZWNhYmFi
MzVhMi4uOGYzMjM1YmE4MjVlIDEwMDY0NAo+ID4gLS0tIGEvTUFJTlRBSU5FUlMKPiA+ICsrKyBi
L01BSU5UQUlORVJTCj4gPiBAQCAtMjIzNzIsNiArMjIzNzIsOCBAQCBMOglsaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiAgTDoJbGludXgtcHdtQHZnZXIua2VybmVsLm9yZwo+
ID4gIFM6CU1haW50YWluZWQKPiAKPiA+ICBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcHdtL3JvY2tjaGlwLHJrMzU3Ni1wd20ueWFtbAo+IAo+IEEgcXVlc3Rpb24gbm90IHNv
IG11Y2ggZm9yIE5pY29sYXMgc3BlY2lmaWM6Cj4gVGhlIHlhbWwgZG9jdW1lbnRzIGFscmVhZHkg
aGF2ZSBhICdtYWludGFpbmVycycgZW50cnkuCj4gSG93ZXZlciBNQUlOVEFJTkVSUyBpcyBmdWxs
IHlhbWwgZW50cmllcy4KPiBDb3VsZCBzb21lb25lIGV4cGxhaW4gd2h5IHdlIHN0aWxsIG5lZWQg
ZHVhbCByZWdpc3RyYXRpb24/Cj4gCj4gbWFpbnRhaW5lcnM6Cj4gICAtIE5pY29sYXMgRnJhdHRh
cm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+Cj4gCj4gPiArRjoJZHJpdmVy
cy9zb2Mvcm9ja2NoaXAvbWZwd20uYwo+ID4gK0Y6CWluY2x1ZGUvc29jL3JvY2tjaGlwL21mcHdt
LmgKPiAKPiBkaWZmZXJlbnQgZmlsZSBuYW1lIGFuZCBsb2NhdGlvbj8KPiAKPiAgIGRyaXZlcnMv
bWZkL3JvY2tjaGlwLW1mcHdtLmMgICAgICAgfCAzNDAgKysrKysrKysrKysrKysrKysrKysrKysr
KysrCj4gICBpbmNsdWRlL2xpbnV4L21mZC9yb2NrY2hpcC1tZnB3bS5oIHwgNDU0ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAKPiAKClllYWgsIEkgZm9yZ290IHRvIGFk
anVzdCB0aGlzIHdoZW4gbW92aW5nIHRoaXMgdG8gYmVpbmcgYW4gTUZELgpJJ2xsIGZpeCBpdCBp
biB2NC4KCj4gPiBbLi4uIHNuaXAgLi4uXQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL3Jv
Y2tjaGlwLW1mcHdtLmMgYi9kcml2ZXJzL21mZC9yb2NrY2hpcC1tZnB3bS5jCj4gPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4wOGMyZDhkYTQxYjcKPiA+IC0t
LSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZlcnMvbWZkL3JvY2tjaGlwLW1mcHdtLmMKPiA+IFsu
Li4gc25pcCAuLi5dCj4gPiArCj4gPiArc3RhdGljIGludCBtZnB3bV9yZWdpc3Rlcl9zdWJkZXZz
KHN0cnVjdCByb2NrY2hpcF9tZnB3bSAqbWZwd20pCj4gPiArewo+ID4gKwlpbnQgcmV0Owo+ID4g
Kwo+IAo+ID4gKwlyZXQgPSBtZnB3bV9yZWdpc3Rlcl9zdWJkZXYobWZwd20sICJwd20tcm9ja2No
aXAtdjQiKTsKPiAKPiBOb3Qgc3VyZSB3aG8gY2FtZSB1cCB3aXRoIHRoaXMgbmFtZT8KCkkgZGlk
LgoKPiBJbiBjYXNlIHdlIG5lZWQgdG8gZmlsdGVyIHdvdWxkbid0IGJlIGVhc2llciB0byBvcmRl
ciBpdCBqdXN0IGxpa2UgdGhlIGJpbmRpbmdzOiBtYW51ZmFjdHVyZSAnLScgZnVuY3Rpb24KCkl0
J3MgYmFzZWQgb24gdGhlIGZpbGVuYW1lIG9mIHRoZSBwd20gb3V0cHV0IGRyaXZlci4gcHdtLXJv
Y2tjaGlwLmMKaXMgYWxyZWFkeSB0YWtlbiBieSB2MSB0byB2MyBoYXJkd2FyZS4gQXBwYXJlbnRs
eSBob3dldmVyLCBwd20Kc3Vic3lzdGVtIGRyaXZlcnMgdGhlbiByZXZlcnNlIHRoZSBvcmRlciBp
biB0aGUgZHJpdmVyIG5hbWUsIHNvCmBwd20tcm9ja2NoaXAuY2AgcmVnaXN0ZXJzIGEgZHJpdmVy
IHdpdGggdGhlIG5hbWUgYHJvY2tjaGlwLXB3bWAuCgpTbyBJJ2xsIHJlbmFtZSBteSBQV00gb3V0
cHV0IGRyaXZlciB0byBgcm9ja2NoaXAtcHdtLXY0YC4gVGhlIHY0CnN0YXlzLCBpdCByZWZlcnMg
dG8gdGhlIGhhcmR3YXJlIElQIHJldmlzaW9uLgoKPiA+ICsJaWYgKHJldCkKPiA+ICsJCXJldHVy
biByZXQ7Cj4gPiArCj4gPiArCXJldCA9IG1mcHdtX3JlZ2lzdGVyX3N1YmRldihtZnB3bSwgInJv
Y2tjaGlwLXB3bS1jYXB0dXJlIik7Cj4gPiArCWlmIChyZXQpCj4gPiArCQlyZXR1cm4gcmV0Owo+
ID4gKwo+ID4gKwlyZXR1cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiBbLi4uIHNuaXAgLi4uXQoKS2lu
ZCByZWdhcmRzLApOaWNvbGFzIEZyYXR0YXJvbGkKCgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
