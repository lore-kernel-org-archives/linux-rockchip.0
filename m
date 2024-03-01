Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 871A2C5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 06:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GxVQke8Pa0UDZEfj/yFTYKaPYqsEvCKDvoLPzIllDRU=; b=aO4OuT+lYa7zJJBGe4TDT28bzG
	L5DZEgJv+poo8EqXGoYzRmWDMMgCwBTAylzKqs48N+L3JqCUrDFTVf8bVBj1WHP/VKgBS8QVygubQ
	PLGSz291QSqVQId4Xc3oJolOZOn8aUqI883Ba9wDvNr/6Dren3N71gEG1rLDY8azdjIbnppHLSs3/
	vPq45J8AOEJRWu8BOAMJiUK+T3FhlaH+t7bDBO25q13mFpTsIb9SWzXRFui5d2f4qjh+KRjLwIa9F
	yqh1y4XoZicjjghPufiUpcvcWT9MelCll5X6A54sBUrrMhj4PAXgCEsmKQcuWob5kh6Ek88upYhSe
	j7cSBbCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfwDL-0000000GXKw-0o1W;
	Fri, 01 Mar 2024 06:17:47 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfwDH-0000000GXJt-0lzX;
	Fri, 01 Mar 2024 06:17:44 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709273861;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nsTeKM3b8pZiKwqdo+adsEaeHoiS6ettDlA19pqJem4=;
	b=uzREwIOwtJxK3R9slO4dYFrLEHEgUdVJiB/FnCVs9/Ff1+sd7br+LKBWocMPESjrC0s2A2
	jq+THKQYYQIMZMYYEovcr8kxY7tpwkbEHtYppYZdTniBh24k0aguUxvcGcX3uEu2ru811x
	XclzRAslMNARSFa5gWkUxqGWiDQraNtBokuUrmWiA309By/tqkVbdv7s4+wNJ8i5WJCviv
	7R61uhUJ83tGndfYT7mMGpgyyfx3qBCd7dDhsZJnaMD/2PnB4cD9UwhVblwk0cTK0GV91a
	FEjiUJkK1cj2WD5uPjiRdNvP4qcTXnvl+6dhe4kWbWzkuVybNRKfoqDp0llDrg==
Date: Fri, 01 Mar 2024 07:17:41 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/5] arm64: dts: rockchip: enable automatic active
 cooling on Rock 5B
In-Reply-To: <CABjd4YybaQnKm+VpU_xVrCb=pxQ7oQXPHGZzn_u1w_h3yn7gwg@mail.gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-2-6afe8473a631@gmail.com>
 <823379825559bb76088c31f44f998dd3@manjaro.org>
 <CABjd4YybaQnKm+VpU_xVrCb=pxQ7oQXPHGZzn_u1w_h3yn7gwg@mail.gmail.com>
Message-ID: <a8ebe39b28a34c3544481a4e43e61d2b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_221743_404476_3D708D3C 
X-CRM114-Status: GOOD (  13.52  )
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

T24gMjAyNC0wMy0wMSAwNjoyMSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gT24gRnJpLCBNYXIg
MSwgMjAyNCBhdCAxOjI14oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdy
b3RlOgo+PiBPbiAyMDI0LTAyLTI5IDIwOjI2LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPj4gPiBU
aGlzIGxpbmtzIHRoZSBQV00gZmFuIG9uIFJhZHhhIFJvY2sgNUIgYXMgYW4gYWN0aXZlIGNvb2xp
bmcgZGV2aWNlCj4+ID4gbWFuYWdlZCBhdXRvbWF0aWNhbGx5IGJ5IHRoZSB0aGVybWFsIHN1YnN5
c3RlbSwgd2l0aCBhIHRhcmdldCBTb0MKPj4gPiB0ZW1wZXJhdHVyZSBvZiA2NUMgYW5kIGEgbWlu
aW11bS1zcGluIGludGVydmFsIGZyb20gNTVDIHRvIDY1QyB0bwo+PiA+IGVuc3VyZSBhaXJmbG93
IHdoZW4gdGhlIHN5c3RlbSBnZXRzIHdhcm0KPj4gCj4+IEknZCBzdWdnZXN0IHRoYXQgeW91IHJl
cGxhY2UgImF1dG9tYXRpYyBhY3RpdmUgY29vbGluZyIgd2l0aCAiYWN0aXZlCj4+IGNvb2xpbmci
IGluIHRoZSBwYXRjaCBzdWJqZWN0LiAgSSBrbm93LCBpdCBtYXkgc2VlbSBsaWtlIG1vcmUgb2Yg
dGhlCj4+IHVubmVjZXNzYXJ5IG5pdHBpY2tpbmcsIDopIGJ1dCBJIGhvcGUgeW91J2xsIGFncmVl
IHRoYXQgImF1dG9tYXRpYyIKPj4gaXMgYWN0dWFsbHkgcmVkdW5kYW50IHRoZXJlLiAgSXQgd291
bGQgYWxzbyBtYWtlIHRoZSBwYXRjaCBzdWJqZWN0Cj4+IGEgYml0IHNob3J0ZXIuCj4+IAo+PiBB
bm90aGVyIG9wdGlvbiB3b3VsZCBiZSB0byByZXBsYWNlICJhdXRvbWF0aWMgYWN0aXZlIGNvb2xp
bmciIHdpdGgKPj4gImF1dG9tYXRpYyBmYW4gY29udHJvbCIsIHdoaWNoIG1heSBhY3R1YWxseSBi
ZSBhIGJldHRlciBjaG9pY2UuCj4+IEknZCBiZSBoYXBweSB3aXRoIHdoaWNoZXZlciBvbmUgeW91
IHByZWZlci4gOikKPiAKPiBTb3VuZHMgZ29vZCB0byBtZSwgdGhhbmtzIQoKSSdtIGdsYWQgdGhh
dCB5b3UgbGlrZSBpdC4gOikKCj4+IE90aGVyd2lzZSwgcGxlYXNlIGZlZWwgZnJlZSB0byBhZGQ6
Cj4+IAo+PiBSZXZpZXdlZC1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4g
Cj4gVGhhbmsgeW91IERyYWdhbiwgbXVjaCBhcHByZWNpYXRlZCEKClRoYW5rIHlvdSBmb3IgcHV0
dGluZyB1cCB3aXRoIG15IG5pdHBpY2tpbmcuIDopCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
