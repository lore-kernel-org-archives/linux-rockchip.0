Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE303C5478C
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 09:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O7Fvgf6YFEc5TmcrYcoD+9PXyen2HrvEbRiuGpGoFEk=; b=UODfai/H+SQPvmVOS+YKiFF4Tt
	ytZiEAGAE1gjLRLQzmDS3jBa63v70L48kwzl3CzT3Fnu8xk1hsh8epK/GQF4f8768kIs0geO+aGLW
	xPnyhODp3E9ak2GTujHlmyAdLQTFWGO13ZHqIaBuce6biMAHi9V32DZUTPIW5cAsI0Jqseeq4A45F
	xENCDnb+qfO42ScH4vboNsSgwfIy0dxUp0yOWAt487wguy3wHB+vrLX0VBUjTY6QgR7DfOEwWYzf4
	aVKjL58+YH/UBNDwlQjwwViVU52laxNdV1bk4ABzYRDo7b9kINohU5XQAPPQN8JXNTxAaKrJlM6a6
	tEbm7XbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfzG5-0000000HBai-0EAN;
	Fri, 01 Mar 2024 09:32:49 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfzG2-0000000HBZK-1D3j;
	Fri, 01 Mar 2024 09:32:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709285564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xWnCAqlRky59uzjgS2pvvw8UDh0s4NIkuKC9sP6iSjQ=;
	b=fZoVZco/LUMLOlBuONfLUCRLh+wagOo3Ww6wG7ahhpmduuxyVjk/j2fYLtIT1XAhZ/U9BM
	9+lw44/haRw7Dqzn7MWn7C/KPCbTq0rPOjdXN+S9B3LbxTVMtochpLyxjKUS9cFIDkaUvI
	FUvhkZpgD1UhcavQoSbJon8jUFYmVscsqWZXAqgi25iSnf87TB0ncW89L4BigG3MFsvzDA
	mXFNOSBNJbAuakQCMrB0sKM9tzOd5jDV/Wpm4IA7amOtF4T2xH4lvdbEPEjn4ykjoUoYDS
	e1Z2vwOY3R55GgvhU7WROc2N5hBd4X2Uf7XDty6+LQO7vePZq/qBgszUDuh4RQ==
Date: Fri, 01 Mar 2024 10:32:43 +0100
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
In-Reply-To: <CABjd4YwAq28C6gKTJKJdZQ_Fw1oEjR475oTS96xEXRj=XQ5_pg@mail.gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-2-6afe8473a631@gmail.com>
 <823379825559bb76088c31f44f998dd3@manjaro.org>
 <CABjd4YybaQnKm+VpU_xVrCb=pxQ7oQXPHGZzn_u1w_h3yn7gwg@mail.gmail.com>
 <a8ebe39b28a34c3544481a4e43e61d2b@manjaro.org>
 <b16f1d40549554598a3658679ceba9bf@manjaro.org>
 <CABjd4YwAq28C6gKTJKJdZQ_Fw1oEjR475oTS96xEXRj=XQ5_pg@mail.gmail.com>
Message-ID: <45f5c18094d9e2f8861c5d9ff37ad124@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_013246_498600_65971230 
X-CRM114-Status: GOOD (  16.07  )
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

T24gMjAyNC0wMy0wMSAwOTozMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gT24gRnJpLCBNYXIg
MSwgMjAyNCBhdCAxMjoyNeKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiAK
PiB3cm90ZToKPj4gT24gMjAyNC0wMy0wMSAwNzoxNywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiA+
IE9uIDIwMjQtMDMtMDEgMDY6MjEsIEFsZXhleSBDaGFya292IHdyb3RlOgo+PiA+PiBPbiBGcmks
IE1hciAxLCAyMDI0IGF0IDE6MjXigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9y
Zz4KPj4gPj4gd3JvdGU6Cj4+ID4+PiBPbiAyMDI0LTAyLTI5IDIwOjI2LCBBbGV4ZXkgQ2hhcmtv
diB3cm90ZToKPj4gPj4+ID4gVGhpcyBsaW5rcyB0aGUgUFdNIGZhbiBvbiBSYWR4YSBSb2NrIDVC
IGFzIGFuIGFjdGl2ZSBjb29saW5nIGRldmljZQo+PiA+Pj4gPiBtYW5hZ2VkIGF1dG9tYXRpY2Fs
bHkgYnkgdGhlIHRoZXJtYWwgc3Vic3lzdGVtLCB3aXRoIGEgdGFyZ2V0IFNvQwo+PiA+Pj4gPiB0
ZW1wZXJhdHVyZSBvZiA2NUMgYW5kIGEgbWluaW11bS1zcGluIGludGVydmFsIGZyb20gNTVDIHRv
IDY1QyB0bwo+PiA+Pj4gPiBlbnN1cmUgYWlyZmxvdyB3aGVuIHRoZSBzeXN0ZW0gZ2V0cyB3YXJt
Cj4+ID4+Pgo+PiA+Pj4gSSdkIHN1Z2dlc3QgdGhhdCB5b3UgcmVwbGFjZSAiYXV0b21hdGljIGFj
dGl2ZSBjb29saW5nIiB3aXRoICJhY3RpdmUKPj4gPj4+IGNvb2xpbmciIGluIHRoZSBwYXRjaCBz
dWJqZWN0LiAgSSBrbm93LCBpdCBtYXkgc2VlbSBsaWtlIG1vcmUgb2YgdGhlCj4+ID4+PiB1bm5l
Y2Vzc2FyeSBuaXRwaWNraW5nLCA6KSBidXQgSSBob3BlIHlvdSdsbCBhZ3JlZSB0aGF0ICJhdXRv
bWF0aWMiCj4+ID4+PiBpcyBhY3R1YWxseSByZWR1bmRhbnQgdGhlcmUuICBJdCB3b3VsZCBhbHNv
IG1ha2UgdGhlIHBhdGNoIHN1YmplY3QKPj4gPj4+IGEgYml0IHNob3J0ZXIuCj4+ID4+Pgo+PiA+
Pj4gQW5vdGhlciBvcHRpb24gd291bGQgYmUgdG8gcmVwbGFjZSAiYXV0b21hdGljIGFjdGl2ZSBj
b29saW5nIiB3aXRoCj4+ID4+PiAiYXV0b21hdGljIGZhbiBjb250cm9sIiwgd2hpY2ggbWF5IGFj
dHVhbGx5IGJlIGEgYmV0dGVyIGNob2ljZS4KPj4gPj4+IEknZCBiZSBoYXBweSB3aXRoIHdoaWNo
ZXZlciBvbmUgeW91IHByZWZlci4gOikKPj4gPj4KPj4gPj4gU291bmRzIGdvb2QgdG8gbWUsIHRo
YW5rcyEKPj4gPgo+PiA+IEknbSBnbGFkIHRoYXQgeW91IGxpa2UgaXQuIDopCj4+ID4KPj4gPj4+
IE90aGVyd2lzZSwgcGxlYXNlIGZlZWwgZnJlZSB0byBhZGQ6Cj4+ID4+Pgo+PiA+Pj4gUmV2aWV3
ZWQtYnk6IERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+PiA+Pgo+PiA+PiBUaGFu
ayB5b3UgRHJhZ2FuLCBtdWNoIGFwcHJlY2lhdGVkIQo+PiA+Cj4+ID4gVGhhbmsgeW91IGZvciBw
dXR0aW5nIHVwIHdpdGggbXkgbml0cGlja2luZy4gOikKPj4gCj4+IFBlcmhhcHMgdGhlIGZvbGxv
d2luZyB0YWcgd291bGQgYWxzbyBiZSBkZXNlcnZlZCBmb3IgdGhpcyBwYXRjaDoKPj4gCj4+IEhl
bHBlZC1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4+IAo+PiBJIGhvcGUg
eW91IGFncmVlLiA6KQo+IAo+IERlZmluaXRlbHkhIFRoYW5rcyBhZ2FpbiBmb3IgeW91ciBmZWVk
YmFjayBhbmQgY29udHJpYnV0aW9uIQoKSSdtIGdsYWQgdG8gaGVscC4gOikKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
