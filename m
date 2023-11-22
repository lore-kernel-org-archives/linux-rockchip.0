Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1699C072A2
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 08:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WxTZm9rq7eXzEMaTb0soNS8PExxiUXx2SW/tdjdMVqY=; b=pMmikJOfB2LtOFy/hzQ14JAuQO
	wmBfJYdiVK5QjVi+U3TMjNNMil/ARF/6xnK5y7tApERSDGfYWl4wUkEH+hDWbrairdgXJrKwePV1s
	6tEZs6HaOaA/rtq80QNTIOaa1JqUyHr1AwXWT8pZmrLT4PpFE8kzwMdfZBMMRPknK03vZWBdwcivZ
	3yrHiy0IGuLic5rleqiATQTDYi3DM8eBbddHUO2CIYJ6R7LhtbtxT6KfUD4wCgd7Rakksi/X1T1aP
	M7EOvOWdrmQ1cz7njQaxQDrstzrg3M2b3rQCBGzVnnaP/tKfrln/ymN0ZmtoDnxpzOQaL0+txxcry
	ikoRY9vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5icQ-0013lC-35;
	Wed, 22 Nov 2023 08:29:58 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5icL-0013j1-2D;
	Wed, 22 Nov 2023 08:29:55 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1700641789;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=niGgf0XKP2t2Zirpm3py6uN4TsslbCqBZV8swChcUGg=;
	b=luqkiFNbDd6RWusGME8U43GdpWQmVFH6uGh/SeA8mjPpqqWUZjiYyAvcSlh9sV5lce7/vO
	IG7+5LekhVo61e4jR+mBvUp3MnXnsfUTKhsCcRxKG5DNecDwP4vMPtna+pTlfDgoXh6GqZ
	KK4twF/6W9Y41udae9CkgIastHp8o5IeFZxhSkVqr8StItMw0G6CXgxd5HcXuGCCaxFhw+
	K677kgapgPbS0Xm9zEfvJE0UxGKnth8RbWPlO1rCaMoqPP+/0+58Dyf2rVg9Ds6bTl3eQX
	wR8zSKh//XY965zoutJqNqDYel2x3Zt5H0gDg3exzshfTMc1ZsMCJq6l7MBjIg==
Date: Wed, 22 Nov 2023 09:29:49 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: wens@kernel.org, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, Arnd Bergmann
 <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, Konrad Dybcio
 <konrad.dybcio@linaro.org>, Michal Simek <michal.simek@amd.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>, Olof
 Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
In-Reply-To: <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org>
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com>
 <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
 <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
 <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org>
Message-ID: <58a9caacc1226c7c3a2bdfe73ef1791f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_002954_026014_AAE885ED 
X-CRM114-Status: GOOD (  14.60  )
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

T24gMjAyMy0xMS0yMiAwOToyMSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAyMi8x
MS8yMDIzIDA5OjA5LCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4+IE9uIFdlZCwgTm92IDIyLCAyMDIz
IGF0IDQ6MDXigK9QTSBLcnp5c3p0b2YgS296bG93c2tpCj4+IDxrcnp5c3p0b2Yua296bG93c2tp
QGxpbmFyby5vcmc+IHdyb3RlOgo+Pj4gCj4+PiBPbiAyMS8xMS8yMDIzIDE0OjUwLCBSYWZhxYIg
TWnFgmVja2kgd3JvdGU6Cj4+Pj4+ICtPcmRlciBvZiBQcm9wZXJ0aWVzIGluIERldmljZSBOb2Rl
Cj4+Pj4+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4+ICsKPj4+Pj4g
K0ZvbGxvd2luZyBvcmRlciBvZiBwcm9wZXJ0aWVzIGluIGRldmljZSBub2RlcyBpcyBwcmVmZXJy
ZWQ6Cj4+Pj4+ICsKPj4+Pj4gKzEuIGNvbXBhdGlibGUKPj4+Pj4gKzIuIHJlZwo+Pj4+PiArMy4g
cmFuZ2VzCj4+Pj4+ICs0LiBTdGFuZGFyZC9jb21tb24gcHJvcGVydGllcyAoZGVmaW5lZCBieSBj
b21tb24gYmluZGluZ3MsIGUuZy4gCj4+Pj4+IHdpdGhvdXQKPj4+Pj4gKyAgIHZlbmRvci1wcmVm
aXhlcykKPj4+Pj4gKzUuIFZlbmRvci1zcGVjaWZpYyBwcm9wZXJ0aWVzCj4+Pj4+ICs2LiBzdGF0
dXMgKGlmIGFwcGxpY2FibGUpCj4+Pj4+ICs3LiBDaGlsZCBub2Rlcywgd2hlcmUgZWFjaCBub2Rl
IGlzIHByZWNlZGVkIHdpdGggYSBibGFuayBsaW5lCj4+Pj4+ICsKPj4+Pj4gK1RoZSAic3RhdHVz
IiBwcm9wZXJ0eSBpcyBieSBkZWZhdWx0ICJva2F5IiwgdGh1cyBpdCBjYW4gYmUgCj4+Pj4+IG9t
aXR0ZWQuCj4+Pj4gCj4+Pj4gSSB0aGluayBpdCB3b3VsZCByZWFsbHkgaGVscCB0byBpbmNsdWRl
IHBvc2l0aW9uIG9mICNhZGRyZXNzLWNlbGxzIAo+Pj4+IGFuZAo+Pj4+ICNzaXplLWNlbGxzIGhl
cmUuIEluIHNvbWUgZmlsZXMgSSBzYXcgdGhlbSBhYm92ZSAiY29tcGF0aWJsZSIgdGhhdCAKPj4+
PiBzZWVtcwo+Pj4+IHVuaW50dWl0aXZlLiBTb21lIHByZWZlciBwdXR0aW5nIHRoZW0gYXQgZW5k
IHdoaWNoIEkgdGhpbmsgbWFrZXMgCj4+Pj4gc2Vuc2UKPj4+PiBhcyB0aGV5IGFmZmVjdCBjaGls
ZHJlbiBub2Rlcy4KPj4+PiAKPj4+PiBXaGF0ZXZlciB5b3UgY2hvb3NlIGl0J2QgYmUganVzdCBu
aWNlIHRvIGhhdmUgdGhpbmdzIGNvbnNpc3RlbnQuCj4+PiAKPj4+IFRoaXMgaXMgYSBzdGFuZGFy
ZC9jb21tb24gcHJvcGVydHksIHRodXMgaXQgZ29lcyB0byAoNCkgYWJvdmUuCj4+IAo+PiBJdCdz
IHByb2JhYmx5IGEgbWl4LCBidXQgQUZBSUsgYSBsb3Qgb2YgdGhlIGRldmljZSB0cmVlcyBpbiB0
cmVlIGhhdmUKPj4gIyotY2VsbHMgYWZ0ZXIgInN0YXR1cyIuIEluIHNvbWUgY2FzZXMgdGhleSBh
cmUgYWRkZWQgaW4gdGhlIGJvYXJkCj4+IC5kdHMgZmlsZXMsIG5vdCB0aGUgY2hpcC9tb2R1bGUg
LmR0c2kgZmlsZXMuCj4gCj4gRXhpc3RpbmcgRFRTIGlzIG5vdCBhIGdvb2QgZXhhbXBsZSA6KQo+
IAo+PiAKPj4gKzEgdGhhdCBpdCBtYWtlcyBzZW5zZSBhdCB0aGUgZW5kIGFzIHRoZXkgYWZmZWN0
IGNoaWxkIG5vZGVzLgo+IAo+IEkgc3RpbGwgaW5zaXN0IHRoYXQgc3RhdHVzIG11c3QgYmUgdGhl
IGxhc3QsIGJlY2F1c2U6Cj4gMS4gTWFueSBTb0Mgbm9kZXMgaGF2ZSBhZGRyZXNzL3NpemUgY2Vs
bHMgYnV0IGRvIG5vdCBoYXZlIGFueSBjaGlsZHJlbgo+IChJMkMsIFNQSSksIHNvIHdlIHB1dCB1
c2VsZXNzIGluZm9ybWF0aW9uIGF0IHRoZSBlbmQuCj4gMi4gU3RhdHVzIHNob3VsZCBiZSB0aGUg
ZmluYWwgaW5mb3JtYXRpb24gdG8gc2F5IHdoZXRoZXIgdGhlIG5vZGUgaXMKPiByZWFkeSBvciBp
cyBub3QuIEkgcmVhZCB0aGUgbm9kZSwgY2hlY2sgcHJvcGVydGllcyBhbmQgdGhlbiBsb29rIGF0
IHRoZSAKPiBlbmQ6Cj4gYS4gTGFjayBvZiBzdGF0dXMgbWVhbnMgaXQgaXMgcmVhZHkuCj4gYi4g
c3RhdHVzPWRpc2FibGVkIG1lYW5zIGRldmljZSBzdGlsbCBuZWVkcyBib2FyZCAKPiByZXNvdXJj
ZXMvY3VzdG9taXphdGlvbgoKSSBhZ3JlZSB3aXRoIHRoZSAic3RhdHVzIiBiZWxvbmdpbmcgdG8g
dGhlIHZlcnkgZW5kLCBiZWNhdXNlIGl0J3MgYm90aCAKbG9naWNhbCBhbmQgbXVjaCBtb3JlIHJl
YWRhYmxlLiAgQWxzbywgInN0YXR1cyIgaXMgZXhwZWN0ZWQgdG8gYmUgCm1vZGlmaWVkIGluIHRo
ZSBkZXBlbmRlbnQgRFQgZmlsZXMsIHdoaWNoIG1ha2VzIGl0IGtpbmQgb2Ygdm9sYXRpbGUgYW5k
IApldmVuIG1vcmUgZGVzZXJ2aW5nIHRvIGJlIHBsYWNlZCBsYXN0LgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
