Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E21DC25B78
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 00:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h8gEgHoNeUeptlCtD0GpP9hhZ4p4AeP29dif96rUwpg=; b=aMOzqv0/9YlgN0twrzW7ec0Amw
	zr7pA0EspSEW6vjwZyPQMCiM93PplG43tBeBuhguXIWQqaJiu8XdvHVmy0YnkzMAr7kCtelH3D/N4
	r3h3I/knaTrzoDmD7hqV6R1cAGTiThue/iP5oxzTGkBIjtqbTxQ5BHsu/ufRynJf0AoVr6ajQJCMI
	niRVUaEa6dnjk8C3P1hECr+D6x3Wj3k4YcPFHjz8ln+xCqpI17PtNzbCaLPXq0aawjdD70q66W3TL
	HD+dubEWWfMZDNLBX4pzDOZUkeJntu/aDUJ0IxtIca9TqcaCinK8mKmcQuibixF3Od46C8lHhOAdl
	W62Ukiwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC6nn-00000002NyX-3Mcw;
	Wed, 29 May 2024 00:04:23 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC6nh-00000002Nx0-17fw;
	Wed, 29 May 2024 00:04:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1716941053;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Z3UyPJg9jT2CCb8WYackyvrQqiNArMyehuNffpOyzV0=;
	b=aopIU6H9EgsMSPt5ksrdKvzYWVMSYnAv2ZZsRbRs6kY6ufPI1al1Ybb7H0E4bvwLghJgxE
	2wcZlU+nRH0GPEf7mREx0QwcFM/MCf1lNDzNXytcVFnQlLe6pDiGMak36dMuYLb1y47bE4
	XA63nI2swkNGCCv7RCZDjwK5RuwoQPHgsGWPDpqDB005aYyMIfrQF6la0I6DU1gxrZ49JT
	Nhp6NcZ4iqFxFZzy1eea8Du0PXwgGJYgQxpsvBgb86IYs/rW8eAwOVMKNnDx9lysxk7C56
	ZhZJfxwtP3gLgTRXWXfSytwbEc9aLVrHUlyMrgqWze0/vcqoR8mzwN2UuLoBOg==
Date: Wed, 29 May 2024 02:04:12 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Alexey Charkov <alchark@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Chen-Yu Tsai <wens@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Daniel
 Lezcano <daniel.lezcano@linaro.org>, Diederik de Haas
 <didi.debian@cknow.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 0/6] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
In-Reply-To: <646a33e0-5c1b-471c-8183-2c0df40ea51a@cherry.de>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <5122636.irdbgypaU6@phil> <8727e1c29bd6f562a7fc3de0ddac62cf@manjaro.org>
 <6230150.aeNJFYEL58@phil>
 <CABjd4YyRJS0AGehuBTDn8ys9uRRkGc0Usme3GX1POq3AQiWTBA@mail.gmail.com>
 <646a33e0-5c1b-471c-8183-2c0df40ea51a@cherry.de>
Message-ID: <7b09e18e850ff0832bd7236810b83e64@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_170417_937215_A9E5CB32 
X-CRM114-Status: GOOD (  28.28  )
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

SGVsbG8gUXVlbnRpbiwKCk9uIDIwMjQtMDUtMjggMTg6MDgsIFF1ZW50aW4gU2NodWx6IHdyb3Rl
Ogo+IE9uIDUvMjgvMjQgNTo0MiBQTSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+IE9uIFR1ZSwg
MjggTWF5IDIwMjQgYXQgMTk6MTYsIEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdy
b3RlOgo+Pj4gQW0gRGllbnN0YWcsIDI4LiBNYWkgMjAyNCwgMTc6MDE6NDggQ0VTVCBzY2hyaWVi
IERyYWdhbiBTaW1pYzoKPj4+PiBPbiAyMDI0LTA1LTI4IDE2OjM0LCBIZWlrbyBTdHVlYm5lciB3
cm90ZToKPj4+Pj4gQW0gRGllbnN0YWcsIDI4LiBNYWkgMjAyNCwgMTY6MDU6MDQgQ0VTVCBzY2hy
aWViIERyYWdhbiBTaW1pYzoKPj4+Pj4+IE9uIDIwMjQtMDUtMjggMTE6NDksIEFsZXhleSBDaGFy
a292IHdyb3RlOgo+Pj4+Pj4+IERvIHlvdSB0aGluayB0aGlzIGNhbiBiZSBtZXJnZWQgZm9yIDYu
MTE/IExvb2tzIGxpa2UgdGhlcmUgaGFzbid0Cj4+PiBiZWVuCj4+Pj4+Pj4gYW55IG5ldyBmZWVk
YmFjayBpbiBhIHdoaWxlLCBhbmQgaXQgd291bGQgYmUgZ29vZCB0byBoYXZlIAo+Pj4+Pj4+IGZy
ZXF1ZW5jeQo+Pj4+Pj4+IHNjYWxpbmcgaW4gcGxhY2UgZm9yIFJLMzU4OC4KPj4+Pj4+PiAKPj4+
Pj4+PiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IGhhdmUgYW55IHJlc2VydmF0aW9ucyBvciBp
ZiB3ZSBuZWVkIGFueQo+Pj4+Pj4+IGJyb2FkZXIgZGlzY3Vzc2lvbi4KPj4+Pj4gCj4+Pj4+IG5v
dCByZWFsbHkgcmVzZXJ2YXRpb25zLCBtb3JlIGxpa2UgdGhlcmUgd2FzIHN0aWxsIGRpc2N1c3Np
b24gZ29pbmcgCj4+Pj4+IG9uCj4+Pj4+IGFyb3VuZCB0aGUgT1BQcy4gTWVhbndoaWxlIHdlIGhh
ZCBtb3JlIGRpc2N1c3Npb25zIHJlZ2FyZGluZyB0aGUgCj4+Pj4+IHdob2xlCj4+Pj4+IHNwZWVk
IGJpbm5pbmcgUm9ja2NoaXAgc2VlbXMgdG8gZG8gZm9yIHJrMzU4OCB2YXJpYW50cy4KPj4+Pj4g
Cj4+Pj4+IEFuZCB3YWl0aW5nIGZvciB0aGUgdGVzdGluZyBEcmFnYW4gd2FudGVkIHRvIGRvIDst
KSAuCj4+Pj4gCj4+Pj4gSSdtIHNvcnJ5IGZvciB0aGUgZGVsYXlzLgo+Pj4gCj4+PiBXYXMgZGVm
aW5pdGx5IF9ub3RfIG1lYW50IGFzIGJsYW1lIDstKSAuCj4+PiAKPj4+IFRoZSBzZXJpZXMgaGFz
IGp1c3QgdG9vIG1hbnkgZGlzY3Vzc2lvbnMgdGhyZWFkcyB0byB1bnJhdmVsIG9uIGhhbGYKPj4+
IGFuIGFmdGVybm9vbi4KPj4gCj4+IEZXSVcsIEkgdGhpbmsgdGhlIGxhdGVzdCBleGNoYW5nZSB3
ZSBoYWQgd2l0aCBRdWVudGluIHJlZ2FyZGluZyB0aGUgCj4+IE9QUHMKPj4gY29uY2x1ZGVkIGlu
IOKAnGZhbHNlIGFsYXJt4oCdLCBnaXZlbiB0aGF0IHRoaXMgdmVyc2lvbiBvZiB0aGUgc2VyaWVz
IG9ubHkKPj4gaW50cm9kdWNlcyBhIHN1YnNldCBvZiB0aGVtIHdoaWNoIHNob3VsZCBhcHBseSB0
byBhbGwgUkszNTg4KHMpCj4gCj4gQ29ycmVjdC4KPiAKPiBIb3dldmVyLi4uIEknbSB3b25kZXJp
bmcgaWYgd2Ugc2hvdWxkbid0IHNvbWVob3cgZm9sbG93IHRoZSBzYW1lCj4gcGF0dGVybiB3ZSBo
YXZlIHVzZWQgZm9yIHRoZSByazMzOTkgT1BQcz8gV2UgaGF2ZSBhIGZpbGUgZm9yIHRoZQo+ICJ0
cnVlIiBSSzMzOTkgT1BQcywgdGhlbiB0aGUgT1AxIHZhcmlhbnQgYW5kIHRoZSBSSzMzOTlULgoK
SWYgSSdtIG5vdCBtaXN0YWtlbiwgdGhlIHNlcGFyYXRlIHJrMzM5OS0qb3BwKi5kdHNpIGZpbGVz
IHdlcmUKYWRkZWQgd2hlbiB0aGUgbmVlZCBhcm9zZS4KCj4gV2UgYWxyZWFkeSBrbm93IHRoZXJl
IGFyZSBhIGZldyB2YXJpYW50cyBvZiBSSzM1ODggd2l0aCBkaWZmZXJlbnQKPiBPUFBzOiBSSzM1
ODgoUy9TMj8pLCBSSzM1ODhKIGFuZCBSSzM1ODhNLiBJIHdvdWxkbid0IGJlIHN1cnByaXNlZCBp
Zgo+IHRoZSBSSzM1ODIgKHRob3VnaCB0aGlzIG9uZSBoYXMgYWxyZWFkeSBvbmUgYmlnIGNsdXN0
ZXIgKG9yIHR3byBiaWcKPiBjb3JlcykgZmV3ZXIgdGhhbiBSSzM1ODgpIGhhcyBkaWZmZXJlbnQg
T1BQcyBhcyB3ZWxsPwoKRG8gd2UgYWxyZWFkeSBoYXZlIHN1cHBvcnRlZCBib2FyZHMgdGhhdCB1
c2UgdGhlIFJLMzU4OEogYW5kClJLMzU4OE0gdmFyaWFudHMgb2YgdGhlIFJLMzU4OCBTb0M/ICBJ
ZiB5ZXMsIHdlIHNob3VsZCBzZXBhcmF0ZQp0aGUgcmVsZXZhbnQgT1BQcyBpbnRvIHRoZSBzZXBh
cmF0ZSAuZHRzaSBmaWxlcywgYnV0IGlmIG5vdCwgd2UKc2hvdWxkIHdhaXQgdW50aWwgdGhlIG5l
ZWQgYXJpc2VzLgoKPiBTby4gV2UgaGF2ZSBhbHJlYWR5IGRpc2N1c3NlZCB0aGF0IHRoZSBPUFBz
IGluIHRoYXQgcGF0Y2ggYXJlIHZhbGlkCj4gZm9yIFJLMzU4OChTKSBidXQgdGhleSBhcmVuJ3Qg
Zm9yIHRoZSBvdGhlciB2YXJpYW50cy4KCi4uLiB3aGljaCBhcHBsaWVzIGN1cnJlbnRseSBpZiB0
aGVyZSBhcmUgYWxyZWFkeSBvdGhlciBSSzM1ODgKdmFyaWFudHMgaW4gdXNlIG9uIHRoZSBzdXBw
b3J0ZWQgYm9hcmRzLgoKPiBJbiB0aGUgZG93bnN0cmVhbSBrZXJuZWwsIGFueSBPUFAgd2hvc2Ug
b3BwLXN1cHBvcnRlZC1odyBoYXMgYSBmaXJzdAo+IHZhbHVlIG1hc2tlZCBieSBCSVQoMSkgcmV0
dXJuIG5vbi0wIGlzIHN1cHBvcnRlZCBieSBSSzM1ODhNLiBJbiB0aGUKPiBkb3duc3RyZWFtIGtl
cm5lbCwgYW55IE9QUCB3aG9zZSBvcHAtc3VwcG9ydGVkLWh3IGhhcyBhIGZpcnN0IHZhbHVlCj4g
bWFza2VkIGJ5IEJJVCgyKSByZXR1cm4gbm9uLTAgaXMgc3VwcG9ydGVkIGJ5IFJLMzU4OEouCj4g
Cj4gVGhpcyBtZWFucyB0aGF0LCBmb3IgTElUVExFIGNsdXN0ZXJzOgo+IC0gb3BwLTE2MDgwMDAw
MDAgbm90IHN1cHBvcnRlZCBvbiBSSzM1ODhKCj4gLSBvcHAtMTcwNDAwMDAwMCBvbmx5IHN1cHBv
cnRlZCBvbiBSSzM1ODhNIChidXQgYWxyZWFkeSBhYnNlbnQgaW4gdGhpcwo+IHBhdGNoIHNlcmll
cykKPiAtIG9wcC0xODAwMDAwMDAwIG9ubHkgc3VwcG9ydGVkIG9uIFJLMzU4OChTKSwgbm90IFJL
MzU4OEogbm9yIFJLMzU4OE0KPiAKPiBGb3IgYmlnIGNsdXN0ZXJzOgo+IC0gb3BwLTE4MDAwMDAw
MDAgbm90IHN1cHBvcnRlZCBvbiBSSzM1ODhKCj4gLSBvcHAtMjAxNjAwMDAwMCBub3Qgc3VwcG9y
dGVkIG9uIFJLMzU4OEoKPiAtIG9wcC0yMjA4MDAwMDAwIG9ubHkgc3VwcG9ydGVkIG9uIFJLMzU4
OChTKSwgbm90IFJLMzU4OEogbm9yIFJLMzU4OE0KPiAtIG9wcC0yMjU2MDAwMDAwIG9ubHkgc3Vw
cG9ydGVkIG9uIFJLMzU4OChTKSwgbm90IFJLMzU4OEogbm9yIFJLMzU4OE0KPiAtIG9wcC0yMzA0
MDAwMDAwIG9ubHkgc3VwcG9ydGVkIG9uIFJLMzU4OChTKSwgbm90IFJLMzU4OEogbm9yIFJLMzU4
OE0KPiAtIG9wcC0yMzUyMDAwMDAwIG9ubHkgc3VwcG9ydGVkIG9uIFJLMzU4OChTKSwgbm90IFJL
MzU4OEogbm9yIFJLMzU4OE0KPiAtIG9wcC0yNDAwMDAwMDAwIG9ubHkgc3VwcG9ydGVkIG9uIFJL
MzU4OChTKSwgbm90IFJLMzU4OEogbm9yIFJLMzU4OE0KPiAKPiBUaGlzIGlzIHNvbWVob3cgYWxz
byBlbmZvcmNlZCBpbiBkb3duc3RyZWFtIGtlcm5lbCBieSByZW1vdmluZyB0aGUgT1BQCj4gbm9k
ZXMgZGlyZWN0bHkgKGhlbmNlLCBub3QgZXZlbiByZXF1aXJpbmcgdGhlIGNoZWNrIG9mCj4gb3Bw
LXN1cHBvcnRlZC1odyB2YWx1ZSksIGMuZi46Cj4gaHR0cHM6Ly9naXQudGhlb2Jyb21hLXN5c3Rl
bXMuY29tL3RpZ2VyLWxpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4ai5kdHNpCj4gaHR0cHM6Ly9naXQudGhlb2Jyb21hLXN5c3RlbXMuY29tL3RpZ2VyLWxp
bnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4bS5kdHNpCj4g
Cj4gWW91J2xsIG5vdCB0aGF0IHRoZSBSSzM1ODhKIGFsc28gaGFzIGxlc3MgT1BQcyBmb3IgdGhl
IEdQVSBhbmQgTlBVCj4gKGJ1dCB0aG9zZSBzaG91bGQgYWxzbyBiZSBtYXNrZWQgYnkgdGhlIG9w
cC1zdXBwb3J0ZWQtaHcgdmFsdWUpLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
