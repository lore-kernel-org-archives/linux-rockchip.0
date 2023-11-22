Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7297AC072A2
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 08:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=26udZ4aJBFigj8w3J3oYCmmmvE7gQt/enD9fw7vT1MM=; b=C1uhxooXXjnt67+DgxAbicsETk
	fj1ocur+TuLn2O7vQjH4Q+2Nky7/MV0BscAMV6OGF7FxEgGJMt8yQIHFtKZm3W0ntVA/VwDGSeNGf
	vFFpO7qLDMoDmMchnKu3QhXd/FYIKpK20KuHvO/b3NCyif/U+x+L0T1y2+tOSkV7QgGScpuY4qRGD
	thNO+Rm4qTHffL7A8g47UhYnGLJ953eV74tvP0ur/Qno2tLsMBAjjsjh6OY63v/bN+M572YkvIZtU
	cLB8YU74PYMJxyCBO2GW7gNRLJdUM7yPECUybauYnehG/bhu4UgQXpAJVhqptNELOw9nL6MYYjvoQ
	KEVreySw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5j59-0017ny-2V;
	Wed, 22 Nov 2023 08:59:39 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5j53-0017m5-1m;
	Wed, 22 Nov 2023 08:59:36 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1700643571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wnDXFhBLQlKfT9VPeq9LXcsvxwXZ+3LJM0WRVA0R01o=;
	b=X+/dx7tWETvpV6gVT/ojMQT0+o9PIAThm56C4ZtSXKgZB1dvcAJu9Asl9lzeqFNrolWWA/
	fIfQQeRvQXZQ3PnQbr6r47EdYWVRln1eF6jmC8DPhFCHYnuInvNDEC/EtbQJGqE8LlAI85
	eLWoEaodlQy7XaKwt1NAO47EQVGOeIUf9C7+eahxyoDG5T0AOzxca0MAbLgAonmNfoGGU6
	2zQfmtOdDaA/vx49kVM+Gg+TeMx8MFMkBkWsQzEME2otNiDk9cimPFw6RDCWWxWUd6xxdI
	HWBwUcwJM+c4aSa6N7ASwlI6vVR+x1l9bK2JozzLINjyAXkQOl3FuagPRBXO5A==
Date: Wed, 22 Nov 2023 09:59:29 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Michal Simek <michal.simek@amd.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, wens@kernel.org,
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, Arnd Bergmann
 <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, Konrad Dybcio
 <konrad.dybcio@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
In-Reply-To: <cc4c789c-b595-41eb-b543-9e03549c6e61@amd.com>
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com>
 <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
 <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
 <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org>
 <58a9caacc1226c7c3a2bdfe73ef1791f@manjaro.org>
 <cc4c789c-b595-41eb-b543-9e03549c6e61@amd.com>
Message-ID: <c377c23a3c1c58ce16035cb995ef0209@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_005934_532532_D38D19B6 
X-CRM114-Status: GOOD (  20.60  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMy0xMS0yMiAwOTo0OSwgTWljaGFsIFNpbWVrIHdyb3RlOgo+IE9uIDExLzIyLzIzIDA5
OjI5LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+IE9uIDIwMjMtMTEtMjIgMDk6MjEsIEtyenlzenRv
ZiBLb3psb3dza2kgd3JvdGU6Cj4+PiBPbiAyMi8xMS8yMDIzIDA5OjA5LCBDaGVuLVl1IFRzYWkg
d3JvdGU6Cj4+Pj4gT24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgNDowNeKAr1BNIEtyenlzenRvZiBL
b3psb3dza2kKPj4+PiA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPj4+
Pj4gCj4+Pj4+IE9uIDIxLzExLzIwMjMgMTQ6NTAsIFJhZmHFgiBNacWCZWNraSB3cm90ZToKPj4+
Pj4+PiArT3JkZXIgb2YgUHJvcGVydGllcyBpbiBEZXZpY2UgTm9kZQo+Pj4+Pj4+ICstLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4+Pj4gKwo+Pj4+Pj4+ICtGb2xsb3dpbmcg
b3JkZXIgb2YgcHJvcGVydGllcyBpbiBkZXZpY2Ugbm9kZXMgaXMgcHJlZmVycmVkOgo+Pj4+Pj4+
ICsKPj4+Pj4+PiArMS4gY29tcGF0aWJsZQo+Pj4+Pj4+ICsyLiByZWcKPj4+Pj4+PiArMy4gcmFu
Z2VzCj4+Pj4+Pj4gKzQuIFN0YW5kYXJkL2NvbW1vbiBwcm9wZXJ0aWVzIChkZWZpbmVkIGJ5IGNv
bW1vbiBiaW5kaW5ncywgZS5nLiAKPj4+Pj4+PiB3aXRob3V0Cj4+Pj4+Pj4gK8KgwqAgdmVuZG9y
LXByZWZpeGVzKQo+Pj4+Pj4+ICs1LiBWZW5kb3Itc3BlY2lmaWMgcHJvcGVydGllcwo+Pj4+Pj4+
ICs2LiBzdGF0dXMgKGlmIGFwcGxpY2FibGUpCj4+Pj4+Pj4gKzcuIENoaWxkIG5vZGVzLCB3aGVy
ZSBlYWNoIG5vZGUgaXMgcHJlY2VkZWQgd2l0aCBhIGJsYW5rIGxpbmUKPj4+Pj4+PiArCj4+Pj4+
Pj4gK1RoZSAic3RhdHVzIiBwcm9wZXJ0eSBpcyBieSBkZWZhdWx0ICJva2F5IiwgdGh1cyBpdCBj
YW4gYmUgCj4+Pj4+Pj4gb21pdHRlZC4KPj4+Pj4+IAo+Pj4+Pj4gSSB0aGluayBpdCB3b3VsZCBy
ZWFsbHkgaGVscCB0byBpbmNsdWRlIHBvc2l0aW9uIG9mICNhZGRyZXNzLWNlbGxzIAo+Pj4+Pj4g
YW5kCj4+Pj4+PiAjc2l6ZS1jZWxscyBoZXJlLiBJbiBzb21lIGZpbGVzIEkgc2F3IHRoZW0gYWJv
dmUgImNvbXBhdGlibGUiIHRoYXQgCj4+Pj4+PiBzZWVtcwo+Pj4+Pj4gdW5pbnR1aXRpdmUuIFNv
bWUgcHJlZmVyIHB1dHRpbmcgdGhlbSBhdCBlbmQgd2hpY2ggSSB0aGluayBtYWtlcyAKPj4+Pj4+
IHNlbnNlCj4+Pj4+PiBhcyB0aGV5IGFmZmVjdCBjaGlsZHJlbiBub2Rlcy4KPj4+Pj4+IAo+Pj4+
Pj4gV2hhdGV2ZXIgeW91IGNob29zZSBpdCdkIGJlIGp1c3QgbmljZSB0byBoYXZlIHRoaW5ncyBj
b25zaXN0ZW50Lgo+Pj4+PiAKPj4+Pj4gVGhpcyBpcyBhIHN0YW5kYXJkL2NvbW1vbiBwcm9wZXJ0
eSwgdGh1cyBpdCBnb2VzIHRvICg0KSBhYm92ZS4KPj4+PiAKPj4+PiBJdCdzIHByb2JhYmx5IGEg
bWl4LCBidXQgQUZBSUsgYSBsb3Qgb2YgdGhlIGRldmljZSB0cmVlcyBpbiB0cmVlIAo+Pj4+IGhh
dmUKPj4+PiAjKi1jZWxscyBhZnRlciAic3RhdHVzIi4gSW4gc29tZSBjYXNlcyB0aGV5IGFyZSBh
ZGRlZCBpbiB0aGUgYm9hcmQKPj4+PiAuZHRzIGZpbGVzLCBub3QgdGhlIGNoaXAvbW9kdWxlIC5k
dHNpIGZpbGVzLgo+Pj4gCj4+PiBFeGlzdGluZyBEVFMgaXMgbm90IGEgZ29vZCBleGFtcGxlIDop
Cj4+PiAKPj4+PiAKPj4+PiArMSB0aGF0IGl0IG1ha2VzIHNlbnNlIGF0IHRoZSBlbmQgYXMgdGhl
eSBhZmZlY3QgY2hpbGQgbm9kZXMuCj4+PiAKPj4+IEkgc3RpbGwgaW5zaXN0IHRoYXQgc3RhdHVz
IG11c3QgYmUgdGhlIGxhc3QsIGJlY2F1c2U6Cj4+PiAxLiBNYW55IFNvQyBub2RlcyBoYXZlIGFk
ZHJlc3Mvc2l6ZSBjZWxscyBidXQgZG8gbm90IGhhdmUgYW55IAo+Pj4gY2hpbGRyZW4KPj4+IChJ
MkMsIFNQSSksIHNvIHdlIHB1dCB1c2VsZXNzIGluZm9ybWF0aW9uIGF0IHRoZSBlbmQuCj4+PiAy
LiBTdGF0dXMgc2hvdWxkIGJlIHRoZSBmaW5hbCBpbmZvcm1hdGlvbiB0byBzYXkgd2hldGhlciB0
aGUgbm9kZSBpcwo+Pj4gcmVhZHkgb3IgaXMgbm90LiBJIHJlYWQgdGhlIG5vZGUsIGNoZWNrIHBy
b3BlcnRpZXMgYW5kIHRoZW4gbG9vayBhdCAKPj4+IHRoZSBlbmQ6Cj4+PiBhLiBMYWNrIG9mIHN0
YXR1cyBtZWFucyBpdCBpcyByZWFkeS4KPj4+IGIuIHN0YXR1cz1kaXNhYmxlZCBtZWFucyBkZXZp
Y2Ugc3RpbGwgbmVlZHMgYm9hcmQgCj4+PiByZXNvdXJjZXMvY3VzdG9taXphdGlvbgo+PiAKPj4g
SSBhZ3JlZSB3aXRoIHRoZSAic3RhdHVzIiBiZWxvbmdpbmcgdG8gdGhlIHZlcnkgZW5kLCBiZWNh
dXNlIGl0J3MgYm90aCAKPj4gbG9naWNhbCBhbmQgbXVjaCBtb3JlIHJlYWRhYmxlLsKgIEFsc28s
ICJzdGF0dXMiIGlzIGV4cGVjdGVkIHRvIGJlIAo+PiBtb2RpZmllZCBpbiB0aGUgZGVwZW5kZW50
IERUIGZpbGVzLCB3aGljaCBtYWtlcyBpdCBraW5kIG9mIHZvbGF0aWxlIAo+PiBhbmQgZXZlbiBt
b3JlIGRlc2VydmluZyB0byBiZSBwbGFjZWQgbGFzdC4KPiAKPiBJIGFtIGp1c3QgY3VyaW91cyBp
ZiBoYXZpbmcgc3RhdHVzIHByb3BlcnR5IGF0IHRoZSBlbmQgd29uJ3QgYWZmZWN0Cj4gZXhlY3V0
aW9uL2Jvb3QgdXAgdGltZS4gTm90IHN1cmUgaG93IGl0IGlzIGRvbmUgaW4gTGludXggYnV0IGlu
IFUtQm9vdAo+IGF0IGxlYXN0ICh3ZSB3YW50IHRvIGhhdmUgRFRzIGluIHN5bmMgYmV0d2VlbiBM
aW51eCBhbmQgVS1Cb290KQo+IG9mX2ZpbmRfcHJvcGVydHkgaXMgcHJldHR5IG11Y2ggYmlnIGxv
b3Agb3ZlciBhbGwgcHJvcGVydGllcy4gQW5kCj4gc3RhdHVzIHByb3BlcnR5IGRlZmluZWQgYXQg
dGhlIGVuZCBtZWFucyBnb2luZyBvdmVyIGFsbCBvZiB0aGVtIHRvCj4gZmluZCBpdCBvdXQgdG8g
aWYgZGV2aWNlIGlzIHByZXNlbnQuCj4gTm90IHN1cmUgaWYgTGludXggd29ya3MgaW4gdGhlIHNh
bWUgd2F5IGJ1dCBhdCBsZWFzdCBvZl9nZXRfcHJvcGVydHkKPiBpcyBkb25lIGluIHRoZSBzYW1l
IHdheS4KPiAKPiBJdCBpcyBub3QgYmlnIGRlYWwgb24gaGlnaCBzcGVlZCBjcHVzIGJ1dCB3YW50
ZWQgdG8gcG9pbnQgaXQgb3V0LgoKVGhhdCdzIGEgZ29vZCBwb2ludCwgc2F2aW5nIGV2ZXJ5IHBv
c3NpYmxlIENQVSBjeWNsZSBjb3VudHMsIHNvIGlmIHdlIApjYW4gZXhpdCBlYXJseSwgd2h5IG5v
dC4gIEhvd2V2ZXIsIHRoYXQncyBwZXJoYXBzIHNvbWV0aGluZyB0byBiZSAKaGFuZGxlZCB3aXRo
aW4gdGhlIGR0YyB1dGlsaXR5LCBieSBoYXZpbmcgaXQgcmVhcnJhbmdlIHRoZSBwcm9wZXJ0aWVz
LiAgCkknbGwgaW52ZXN0aWdhdGUgdGhhdCBpbiBkZXRhaWwuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
