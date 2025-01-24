Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C01E9C02181
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 10:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VZ1JlyYtfgd95tY48zFCjEc7+uJ8B0HNWnMRxjUwZ90=; b=jHf84DkLXZY+itJ6Ijce4Jgb9D
	agzg3o2moCWo5YNBSuvhg6GZoYbj+HabBdfkC7FGzDSVtXYJms0mFBkpV6HxXZJRq8OZK/pJkTEyH
	btT5MnFEK+lJL/e3fKnH1A77eyxFJ+SGOrtjVlwGZZekSQGwDhHdfAkw9sIz9+EqzuOCdiAk1Yvue
	1oSmOasCElsBcNEO+Lh9v6q/P298bIXVqC6j9hA3fYpHlEv6pBkkQ77pAqdOnUKJk0Oya0OIcz/H4
	Tk4lrb1+vnqyAteY/QLWQFXKcW4xzaG9MYCpnlIyiLck/MEPwvZ35WvAPWWe0rc3hXm0ZCcu/ysQD
	T1NovWOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbHD3-0000000EUKl-49XX;
	Fri, 24 Jan 2025 10:46:45 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbHBf-0000000EU8x-2A9V;
	Fri, 24 Jan 2025 10:45:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737715517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TjhryoFxs8c1/zbPEqglA2ihRcdYXJLFxUAIwp/GWlA=;
	b=O0C1Z+ukiA/GBNKIKb7QiaebB/oX8/9TyasBTQkie/GY6B9toAGa9YfndGBpKWWdII1qiA
	icN2t8WbhaZuojCcoJ9ExhKI0mgTKghiKcCSQQsx/ExkXBHpQ3VL61Bm5yWsfIoIUdndNX
	JJyIl8dFszNudd4tSOs145pa/rRlkolsdsKKLQDu82A7BsNxiFLdyauIDmF2ZEE6v1R3KJ
	pmcoRnH0ZhB98NrD8gEelGFC2x/WMSX31/Lvw9zHWe1UH+qtmuc3V1kqA2Se/SpUnh7Osn
	ndY9w3S93zbFIdn+kYEnUC02r0D5wDD0vXm/egp4Qcfh5i6j+sycOllEv9faQw==
Date: Fri, 24 Jan 2025 11:45:17 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>, Rob Herring
 <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, devicetree@vger.kernel.org, Sebastian Reichel
 <sebastian.reichel@collabora.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
In-Reply-To: <61b494b209d7360d0f36adbf6d5443a4@manjaro.org>
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
 <a76f315f023a3f8f5435e0681119b4eb@manjaro.org>
 <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
 <61b494b209d7360d0f36adbf6d5443a4@manjaro.org>
Message-ID: <99f5fca6e9778e20287d807d1830b7a2@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_024519_861491_A3E77500 
X-CRM114-Status: GOOD (  30.59  )
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

T24gMjAyNS0wMS0yNCAxMTozNywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9uIDIwMjUtMDEtMjQg
MTE6MjUsIEFsZXhleSBDaGFya292IHdyb3RlOgo+PiBPbiBGcmksIEphbiAyNCwgMjAyNSBhdCAy
OjA24oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IAo+PiB3cm90ZToKPj4+
IE9uIDIwMjUtMDEtMjQgMDk6MzMsIEFsZXhleSBDaGFya292IHdyb3RlOgo+Pj4gPiBPbiBGcmks
IEphbiAyNCwgMjAyNSBhdCA5OjI24oCvQU0gQWxleGFuZGVyIFNoaXlhbgo+Pj4gPiA8ZWFnbGUu
YWxleGFuZGVyOTIzQGdtYWlsLmNvbT4gd3JvdGU6Cj4+PiA+Pgo+Pj4gPj4gVGhlcmUgaXMgbm8g
cGluY3RybCAiZ3BpbyIgYW5kICJvdHBvdXQiIChwcm9iYWJseSBkZXNpZ25lZCBhcwo+Pj4gPj4g
Im91dHB1dCIpCj4+PiA+PiBoYW5kbGluZyBpbiB0aGUgdHNhZGMgZHJpdmVyLgo+Pj4gPj4gTGV0
J3MgdXNlIHByb3BlciBiaW5kaW5nICJkZWZhdWx0IiBhbmQgInNsZWVwIi4KPj4+ID4KPj4+ID4g
VGhpcyBsb29rcyByZWFzb25hYmxlLCBob3dldmVyIEkndmUgdHJpZWQgaXQgb24gbXkgUmFkeGEg
Um9jayA1QyBhbmQKPj4+ID4gdGhlIGRyaXZlciBzdGlsbCBkb2Vzbid0IGNsYWltIEdQSU8wIFJL
X1BBMSBldmVuIHdpdGggdGhpcyBjaGFuZ2UuIEFzCj4+PiA+IGEgcmVzdWx0LCBhIHNpbXVsYXRl
ZCB0aGVybWFsIHJ1bmF3YXkgY29uZGl0aW9uIChJJ3ZlIGNoYW5nZWQgdGhlCj4+PiA+IHRzaHV0
IHRlbXBlcmF0dXJlIHRvIDY1MDAwIGFuZCB0c2h1dCBtb2RlIHRvIDEpIGRvZXNuJ3QgdHJpZ2dl
ciBhIFBNSUMKPj4+ID4gcmVzZXQsIGV2ZW4gdGhvdWdoIGEgZGlyZWN0IGBncGlvc2V0IDAgMT0w
YCBkb2VzLgo+Pj4gPgo+Pj4gPiBBcmUgYW55IGFkZGl0aW9uYWwgY2hhbmdlcyBuZWVkZWQgdG8g
dGhlIGRyaXZlciBpdHNlbGY/Cj4+PiAKPj4+IEkndmUgYmVlbiBkaWdnaW5nIHRocm91Z2ggdGhp
cyBwYXRjaCB0aGUgd2hvbGUgVFNBREMvT1RQIHRoaW5nIGluIHRoZQo+Pj4gbGFzdCBjb3VwbGUg
b2YgaG91cnMsIGFuZCBBRkFJSyBzb21lIHBhcnRzIG9mIHRoZSB1cHN0cmVhbSBkcml2ZXIgYXJl
Cj4+PiBzdGlsbCBtaXNzaW5nLCBpbiBjb21wYXJpc29uIHdpdGggdGhlIGRvd25zdHJlYW0gZHJp
dmVyLgo+Pj4gCj4+PiBJJ3ZlIGdvdCBzb21lIHNtYWxsIHN1Z2dlc3Rpb25zIGZvciB0aGUgcGF0
Y2ggaXRzZWxmLCBidXQgdGhlIGlzc3VlCj4+PiB5b3Ugb2JzZXJ2ZWQgaXMgb2J2aW91c2x5IG9m
IGhpZ2hlciBwcmlvcml0eSwgYW5kIEkndmUgc2luZ2xlZCBpdCBvdXQKPj4+IGFzIHdlbGwgd2hp
bGUgZGlnZ2luZyB0aHJvdWdoIHRoZSBjb2RlLgo+Pj4gCj4+PiBDb3VsZCB5b3UsIHBsZWFzZSwg
dHJ5IHRoZSBwYXRjaCBiZWxvdyBxdWlja2x5LCB0byBzZWUgaXMgaXQgZ29pbmcgdG8KPj4+IGZp
eCB0aGUgaXNzdWUgeW91IG9ic2VydmVkPyAgSSd2ZSBnb3Qgc29tZSAiSVJMIHN0dWZmIiB0byB0
YWtlIGNhcmUgCj4+PiBvZgo+Pj4gdG9kYXksIHNvIEkgY2FuJ3QgdGVzdCBpdCBteXNlbGYsIGFu
ZCBpdCB3b3VsZCBiZSBncmVhdCB0byBrbm93IGlzIGl0Cj4+PiB0aGUgcmlnaHQgcGF0aCB0byB0
aGUgcHJvcGVyIGZpeC4KPj4+IAo+Pj4gZGlmZiAtLWdpdCBpL2RyaXZlcnMvdGhlcm1hbC9yb2Nr
Y2hpcF90aGVybWFsLmMKPj4+IHcvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+
Pj4gaW5kZXggZjU1MWRmNDhlZWY5Li42MmYwZTE0YThkOTggMTAwNjQ0Cj4+PiAtLS0gaS9kcml2
ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4+PiArKysgdy9kcml2ZXJzL3RoZXJtYWwv
cm9ja2NoaXBfdGhlcm1hbC5jCj4+PiBAQCAtMTU2OCw2ICsxNTY4LDExIEBAIHN0YXRpYyBpbnQg
cm9ja2NoaXBfdGhlcm1hbF9wcm9iZShzdHJ1Y3QKPj4+IHBsYXRmb3JtX2RldmljZSAqcGRldikK
Pj4+ICAgICAgICAgIHRoZXJtYWwtPmNoaXAtPmluaXRpYWxpemUodGhlcm1hbC0+Z3JmLCB0aGVy
bWFsLT5yZWdzLAo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGVybWFs
LT50c2h1dF9wb2xhcml0eSk7Cj4+PiAKPj4+ICsgICAgICAgaWYgKHRoZXJtYWwtPnRzaHV0X21v
ZGUgPT0gVFNIVVRfTU9ERV9HUElPKQo+Pj4gKyAgICAgICAgICAgICAgIHBpbmN0cmxfc2VsZWN0
X2RlZmF1bHRfc3RhdGUoZGV2KTsKPj4+ICsgICAgICAgZWxzZQo+Pj4gKyAgICAgICAgICAgICAg
IHBpbmN0cmxfc2VsZWN0X3NsZWVwX3N0YXRlKGRldik7Cj4+IAo+PiBJIGJlbGlldmUgbm8gJ2Vs
c2UnIGJsb2NrIGlzIG5lZWRlZCBoZXJlLCBiZWNhdXNlIGlmIHRzaHV0X21vZGUgaXMgbm90Cj4+
IFRTSFVUX01PREVfR1BJTyB0aGVuIHRoZSBUU0FEQyBkb2Vzbid0IHVzZSB0aGlzIHBpbiBhdCBh
bGwsIHNvIHRoZXJlJ3MKPj4gbm8gcmVhc29uIGZvciB0aGUgZHJpdmVyIHRvIG1lc3Mgd2l0aCBp
dHMgcGluY3RybCBzdGF0ZS4gSSdkIHJhdGhlcgo+PiBwdXQgYSBtaXJyb3JpbmcgYmxvY2sgdG8g
cHV0IHRoZSBwaW4gYmFjayB0byBpdHMgJ3NsZWVwJyBzdGF0ZSBpbiB0aGUKPj4gcmVtb3ZhbCBm
dW5jdGlvbiBmb3IgdGhlIFRTSFVUX01PREVfR1BJTyBjYXNlLgo+IAo+IFlvdSdyZSByaWdodCwg
YnV0IHRoZSAiZWxzZSBibG9jayIgaXMgd2hhdCB0aGUgZG93bnN0cmVhbSBkcml2ZXIgZG9lcywK
PiBzbyBJIHRoaW5rIGl0J3MgYmV0dGVyIHRvIHNpbXBseSBzdGF5IG9uIHRoZSBzYWZlIHNpZGUg
YW5kIGZvbGxvdyB0aGF0Cj4gbG9naWMgaW4gdGhlIHVwc3RyZWFtIGRyaXZlci4gIElzIGl0IHJl
YWxseSBuZWVkZWQ/ICBQZXJoYXBzIG5vdCwgYnV0Cj4gaXQgYWxzbyBzaG91bGRuJ3QgaHVydC4K
PiAKPj4gV2lsbCB0cnkgYW5kIHJldmVydC4KPiAKPiBBd2Vzb21lLCB0aGFua3MhCgpBY3R1YWxs
eS4uLiAgUmV2ZXJ0IG9yIHJlcG9ydD8gOikKCj4+IFAuUy4gSnVzdCBsb29rZWQgYXQgdGhlIGRv
d25zdHJlYW0gZHJpdmVyLCBhbmQgaXQgYWN0dWFsbHkgY2FsbHMKPj4gVFNIVVRfTU9ERV9HUElP
IFRTSFVUX01PREVfT1RQIGluc3RlYWQsIHNvIGl0IHNlZW1zIHRoYXQgIm90cG91dCIgd2FzCj4+
IG5vdCBhIHR5cG8gaW4gdGhlIGZpcnN0IHBsYWNlLiBTbyBtYXliZSB0aGUgcmlnaHQgYXBwcm9h
Y2ggaGVyZSBpcyBub3QKPj4gdG8gY2hhbmdlIHRoZSBkZXZpY2UgdHJlZSBidXQgcmF0aGVyIGZp
eCB0aGUgImdwaW8iIC8gIm90cG91dCIgcGluY3RybAo+PiBzdGF0ZSBoYW5kbGluZyBpbiB0aGUg
ZHJpdmVyLgo+IAo+IEluZGVlZCwgIm90cG91dCIgd2Fzbid0IGEgdHlwbywgYW5kIEkndmUgYWxy
ZWFkeSBhZGRyZXNzZWQgdGhhdCBpbiBteQo+IGNvbW1lbnRzIHRvIEFsZXhhbmRlcidzIHBhdGNo
LiAgV2lsbCBzZW5kIHRoYXQgcmVzcG9uc2UgYSBiaXQgbGF0ZXIuCj4gCj4gSSB0aGluayBpdCdz
IGFjdHVhbGx5IGJldHRlciB0byBhY2NlcHQgdGhlIGFwcHJvYWNoIGluIEFsZXhhbmRlcidzCj4g
cGF0Y2gsIGJlY2F1c2UgdGhlIHdob2xlIHRoaW5nIGFwcGxpZXMgdG8gb3RoZXIgUm9ja2NoaXAg
U29DcyBhcyB3ZWxsLAo+IG5vdCBqdXN0IHRvIHRoZSBSSzM1ODgoUykuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
