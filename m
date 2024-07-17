Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25F6CC3DA49
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 03:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6aWvf5c0b/7OqPRBKiOACbFNUIgSv5MJ2mTNkzE1Wkg=; b=af2/pD2KP80tX9sLivSgOvk3/m
	t4v6g3r0u8Yc0mIpFBrMKv4Ud8WAcnWlxRkfRyDgioMFOLcWGmx6hF9BTDONy5Pk6Tv9LUdRWMayx
	iywDxsed1artZUwZetqoIlICOUV58zFuhrw2lnR7EaZI8NZx4pwBVvA7P+TXaoc0JIZPaQaJwJoGq
	1AELbJ5pFWCOhbD6rrSN9ix6mPoqEfoXLTPmPjujdJ2zz/8vgeaCpDbJmrtwAN3rRxvgdmzSF55jb
	iyrK+HSMYTYozioG+2iAOR1YjzlXPlYF6YcTzIYRhUmnhTEA6BPUXmAxlAfyW2oXUDoCst8Wq53IM
	fQa7IERA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTvRc-0000000CWvK-0pqz;
	Wed, 17 Jul 2024 03:35:08 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTvRF-0000000CWrU-48hU;
	Wed, 17 Jul 2024 03:34:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721187282;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=COav+P6D8Thnl7OBoNjZIZeMCNp9srdIVybeCzhIGtw=;
	b=p+uAR7xBEblapW+azWLMXCG+GlZoxItPsx4n3sxBTD9eM28VtYID7izMfpBrQ93U+mSe5g
	AyVN4JdqCDWKTFevB7ghr/0mO0mldYbt1uxNpflIz+sH2j0CgNAzRAxGwisOlkHsh2BT41
	bQu1ZYP9aPsC8D05iVs9m9Iyu/idZ55crhrM5AZJCBQuIU/EQKhk8Zd9l9w3teEncZ4tv+
	bTbujhtjVzgwXpumwXmNj6BoGgO4W41fNiKdLD5lFD2okBhjmtEdIZogiAQ769cURmHoi/
	bZjsEDNFJ0w4g8HENPBdES9LUTvMTwROcAhwrFamJVLRW0fZnXUrn2L65nbpCA==
Date: Wed, 17 Jul 2024 05:34:41 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: wens@kernel.org
Cc: Daniel Golle <daniel@makrotopia.org>, Diederik de Haas
 <didi.debian@cknow.org>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Herbert Xu
 <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>, Sascha
 Hauer <s.hauer@pengutronix.de>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
 devicetree@vger.kernel.org, linux-crypto@vger.kernel.org, Philipp Zabel
 <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko
 Stuebner <heiko@sntech.de>, Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
In-Reply-To: <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <CAGb2v67zxs03xScN8OfWXR1gf8tddJciXrjw3FQZcL7pR3ocxA@mail.gmail.com>
 <3190961.CRkYR5qTbq@bagend> <3220752.Q7WYUMVHaa@bagend>
 <ZpcrdwZBNFu-YlZt@makrotopia.org>
 <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com>
Message-ID: <d5071401e8032af610c01a9d5887f186@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_203446_336112_15B2976F 
X-CRM114-Status: GOOD (  19.44  )
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

SGVsbG8gQ2hlbi1ZdSwKCk9uIDIwMjQtMDctMTcgMDQ6NTgsIENoZW4tWXUgVHNhaSB3cm90ZToK
PiBPbiBXZWQsIEp1bCAxNywgMjAyNCBhdCAxMDoyNeKAr0FNIERhbmllbCBHb2xsZSA8ZGFuaWVs
QG1ha3JvdG9waWEub3JnPiAKPiB3cm90ZToKPj4gCj4+IE9uIFR1ZSwgSnVsIDE2LCAyMDI0IGF0
IDA3OjE5OjM1UE0gKzAyMDAsIERpZWRlcmlrIGRlIEhhYXMgd3JvdGU6Cj4+ID4gT24gVHVlc2Rh
eSwgMTYgSnVseSAyMDI0IDE4OjUzOjQzIENFU1QgRGllZGVyaWsgZGUgSGFhcyB3cm90ZToKPj4g
PiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgTG9uZyBydW46IDAKPj4gPgo+PiA+
IEkgZG9uJ3Qga25vdyBpZiBpdCBtZWFucyBzb21ldGhpbmcsIGJ1dCBJIG5vdGljZWQgdGhhdCBJ
IGhhdmUKPj4gPiBgYExvbmcgcnVuOiAwYGAgd2l0aCBhbGwgbXkgcG9vciByZXN1bHRzLAo+PiA+
IHdoaWxlIENoZW4tWXUgaGFkIGBgTG9uZyBydW46IDFgYC4KPj4gPgo+PiA+IERpZmZlcmVudCBT
b0MgKFJLMzM5OSksIGJ1dCBBbmFuZCBoYWQgYGBMb25nIHJ1bjogMGBgIHRvbyBvbiB0aGVpcgo+
PiA+IHZlcnkgcG9vciByZXN1bHQgKDEwMCUgZmFpbHVyZSk6Cj4+ID4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtcm9ja2NoaXAvQ0FOQXdTZ1RUelpPd0JhUjl6ako1Vk1weG01QnlkdFc2
ckIyUzdqZytkbm9YOGhBb1dnQG1haWwuZ21haWwuY29tLwo+PiAKPj4gVGhlIGNvbmNsdXNpb25z
IEkgZHJhdyBmcm9tIHRoYXQgcmF0aGVyIHVnbHkgc2l0dWF0aW9uIGFyZToKPj4gIC0gVGhlIGh3
cm5nIHNob3VsZCBub3QgYmUgZW5hYmxlZCBieSBkZWZhdWx0LCBidXQgaXQgc2hvdWxkIGJ5IGRv
bmUKPj4gICAgZm9yIGVhY2ggYm9hcmQgb24gd2hpY2ggaXQgaXMga25vd24gdG8gd29yayB3ZWxs
Lgo+PiAgLSBSS19STkdfU0FNUExFX0NOVCBhcyB3ZWxsIGFzIHRoZSBhc3N1bWVkIHJuZyBxdWFs
aXR5IHNob3VsZCBiZQo+PiAgICBkZWZpbmVkIGluIERUIGZvciBlYWNoIGJvYXJkOgo+PiAgICAq
IGludHJvZHVjZSBuZXcgJ3JvY2hjaGlwLHJuZy1zYW1wbGUtY291bnQnIHByb3BlcnR5Cj4+ICAg
ICogcmVhZCAncXVhbGl0eScgcHJvcGVydHkgYWxyZWFkeSB1c2VkIGZvciB0aW1lcmlvbWVtX3Ju
Zwo+PiAKPj4gSSB3aWxsIHByZXBhcmUgYSBmb2xsb3ctdXAgcGF0Y2ggdGFraW5nIHRob3NlIGNv
bmNsdXNpb25zIGludG8gCj4+IGFjY291bnQuCj4+IAo+PiBKdXN0IGZvciBjb21wbGV0ZW5lc3Ms
IGhlcmUgbXkgdGVzdCByZXN1bHQgb24gdGhlIE5hbm9QaSBSNUM6Cj4+IHJvb3RAT3BlbldydDp+
IyBjYXQgL2Rldi9od3JuZyB8IHJuZ3Rlc3QgLWMgMTAwMAo+PiBybmd0ZXN0IDYuMTUKPj4gQ29w
eXJpZ2h0IChjKSAyMDA0IGJ5IEhlbnJpcXVlIGRlIE1vcmFlcyBIb2xzY2h1aAo+PiBUaGlzIGlz
IGZyZWUgc29mdHdhcmU7IHNlZSB0aGUgc291cmNlIGZvciBjb3B5aW5nIGNvbmRpdGlvbnMuICBU
aGVyZSAKPj4gaXMgTk8gd2FycmFudHk7IG5vdCBldmVuIGZvciBNRVJDSEFOVEFCSUxJVFkgb3Ig
RklUTkVTUyBGT1IgQSAKPj4gUEFSVElDVUxBUiBQVVJQT1NFLgo+PiAKPj4gcm5ndGVzdDogc3Rh
cnRpbmcgRklQUyB0ZXN0cy4uLgo+PiBybmd0ZXN0OiBiaXRzIHJlY2VpdmVkIGZyb20gaW5wdXQ6
IDIwMDAwMDMyCj4+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIgc3VjY2Vzc2VzOiA4NzUKPj4gcm5ndGVz
dDogRklQUyAxNDAtMiBmYWlsdXJlczogMTI1Cj4+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0x
MC0xMCkgTW9ub2JpdDogMTIzCj4+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgUG9r
ZXI6IDUKPj4gcm5ndGVzdDogRklQUyAxNDAtMigyMDAxLTEwLTEwKSBSdW5zOiA0Cj4+IHJuZ3Rl
c3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgTG9uZyBydW46IDAKPj4gcm5ndGVzdDogRklQUyAx
NDAtMigyMDAxLTEwLTEwKSBDb250aW51b3VzIHJ1bjogMAo+PiBybmd0ZXN0OiBpbnB1dCBjaGFu
bmVsIHNwZWVkOiAobWluPTg1LjE3MTsgYXZnPTE0MS4xMDI7IAo+PiBtYXg9NDg4MjgxMi41MDAp
S2liaXRzL3MKPj4gcm5ndGVzdDogRklQUyB0ZXN0cyBzcGVlZDogKG1pbj0xNy44MDk7IGF2Zz0x
OS40OTQ7IAo+PiBtYXg9NjAuMTY5KU1pYml0cy9zCj4+IHJuZ3Rlc3Q6IFByb2dyYW0gcnVuIHRp
bWU6IDEzOTYyODYwNSBtaWNyb3NlY29uZHMKPiAKPiBJIGRvdWJ0IHRoaXMgaXMgcGVyLWJvYXJk
LiBUaGUgUk5HIGlzIGluc2lkZSB0aGUgU29DLCBzbyBpdAo+IGNvdWxkIGJlIGEgY2hpcCBxdWFs
aXR5IHRoaW5nLgoKVG90YWxseSBhZ3JlZWQuICBJIHNlZSBubyB3YXkgaG93IGEgYm9hcmQgZGVz
aWduIGNvdWxkIGFmZmVjdCB0aGUKSFdSTkdzIGJ1aWx0IGludG8gUm9ja2NoaXAgU29Dcy4gIEkg
ZXZlbiBjaGVja2VkIHRoZSBSSzMzOTkgYW5kClJLMzU2NiBIYXJkd2FyZSBEZXNpZ24gR3VpZGVz
IHRvIGJlIGV4dHJhIHN1cmUuCgo+IE9uIHRoZSBSSzMzOTkgd2UgYWxzbyBzYXcgd2lsZGx5IHZh
cnlpbmcgcmVzdWx0cy4KCkluIG15IG9waW5pb24sIHRoYXQgcXVhbGlmaWVzIHRoZSBSSzMzOTkn
cyBIV1JORyBhcyB1bnN1aXRhYmxlIGZvcgpnZW5lcmFsIHVzZS4gIEhhdmluZyBhIEhXUk5HIHRo
YXQgZmFpbHMgdG8gcGFzcyB0aGUgdGVzdHMgb24gX3NvbWVfCnVuaXRzIGlzIHNpbXBseSBub3Qg
YWNjZXB0YWJsZSBmcm9tIHRoZSBzZWN1cml0eSBzdGFuZHBvaW50LgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
