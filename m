Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 554ADC3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 05:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RFmhueVP7YcXFEq0XIRboi+SKvM2LoPIkSieUoioEpc=; b=dfkyCda1rOP2CD6yBQanK29RVM
	xVh8mtBTglcU3jNxDTAJ0GlOd8xGdJbUk+QBHvYyHMJSK9HRpDWAkWObOQ9sM1p6Hmcx6PIi2AF6m
	UKTPvpKOrWuzaF4nuKoi0J1Cdek7OzZYGpaNldfl5LnuglvBFzXpgr9cGkeP9JvbcYM2Q1NoBbAyJ
	UW4rJYfDxaH3CaZ8FQlqjN226ZQNDZncY/8ezbcI3LExYX/TT4NTzcaylI946YCgWPnhaXru0PQq5
	lh6d07tSjKqu1rjy77wAnpTqtzYi64fvqI/rEXTqpy0ESIsflcfTxYhzmeMCUH6LM5kTQI4tb+aEq
	zpfiCNLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTx41-0000000CgVf-3b8y;
	Wed, 17 Jul 2024 05:18:53 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTx3f-0000000CgMX-29he;
	Wed, 17 Jul 2024 05:18:33 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721193509;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Js8sqWzBerizJJcE4j5H4vl9+Y+2wmbUBag2iVhUq3E=;
	b=C7VUIFMQIuP+oVILPDwvq0+0o+4rFBFzNG/TZyExlB4EAu+uoePvGMgjCORFe24tfQjLAk
	qkDlcHlbZ3yTY+pm18hs4GzOWpxi4qolVdJdrbvi90CjMz8fF98iV7H2uL3KNblXnyOKPw
	ES/kNCcIVrBZkBURazqPobqH5auKN41ZwnPKlF0f6+uotziIN0miKbwYieklGE2kiErhU3
	bYrbC7Gg9VoMqz/botOtjjhGylvBuDjeRBpPLlO9pRFxUyQDgtcUnDRFx8Ef1wFES0wI5X
	Z+dq6FXa/f8elR74+CSNIlxp7d08lXtb3bTdEGmzWp70PEX1v9Btwc6F7PI78g==
Date: Wed, 17 Jul 2024 07:18:25 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: wens@kernel.org, Daniel Golle <daniel@makrotopia.org>, Diederik de Haas
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
 Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
In-Reply-To: <CANAwSgSYMkUKeAR7=zcDLDVo7vJMwemRxP-iba-ByDtRq75yyw@mail.gmail.com>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <CAGb2v67zxs03xScN8OfWXR1gf8tddJciXrjw3FQZcL7pR3ocxA@mail.gmail.com>
 <3190961.CRkYR5qTbq@bagend> <3220752.Q7WYUMVHaa@bagend>
 <ZpcrdwZBNFu-YlZt@makrotopia.org>
 <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com>
 <CANAwSgSYMkUKeAR7=zcDLDVo7vJMwemRxP-iba-ByDtRq75yyw@mail.gmail.com>
Message-ID: <51011274265ab684763287e4c02b6cd4@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_221832_124077_8935B6B5 
X-CRM114-Status: GOOD (  27.67  )
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

SGVsbG8gQW5hbmQsCgpPbiAyMDI0LTA3LTE3IDA3OjA2LCBBbmFuZCBNb29uIHdyb3RlOgo+IE9u
IFdlZCwgMTcgSnVsIDIwMjQgYXQgMDg6MjksIENoZW4tWXUgVHNhaSA8d2Vuc0BrZXJuZWwub3Jn
PiB3cm90ZToKPj4gCj4+IE9uIFdlZCwgSnVsIDE3LCAyMDI0IGF0IDEwOjI14oCvQU0gRGFuaWVs
IEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+IAo+PiB3cm90ZToKPj4gPgo+PiA+IE9uIFR1
ZSwgSnVsIDE2LCAyMDI0IGF0IDA3OjE5OjM1UE0gKzAyMDAsIERpZWRlcmlrIGRlIEhhYXMgd3Jv
dGU6Cj4+ID4gPiBPbiBUdWVzZGF5LCAxNiBKdWx5IDIwMjQgMTg6NTM6NDMgQ0VTVCBEaWVkZXJp
ayBkZSBIYWFzIHdyb3RlOgo+PiA+ID4gPiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTAp
IExvbmcgcnVuOiAwCj4+ID4gPgo+PiA+ID4gSSBkb24ndCBrbm93IGlmIGl0IG1lYW5zIHNvbWV0
aGluZywgYnV0IEkgbm90aWNlZCB0aGF0IEkgaGF2ZQo+PiA+ID4gYGBMb25nIHJ1bjogMGBgIHdp
dGggYWxsIG15IHBvb3IgcmVzdWx0cywKPj4gPiA+IHdoaWxlIENoZW4tWXUgaGFkIGBgTG9uZyBy
dW46IDFgYC4KPj4gPiA+Cj4+ID4gPiBEaWZmZXJlbnQgU29DIChSSzMzOTkpLCBidXQgQW5hbmQg
aGFkIGBgTG9uZyBydW46IDBgYCB0b28gb24gdGhlaXIKPj4gPiA+IHZlcnkgcG9vciByZXN1bHQg
KDEwMCUgZmFpbHVyZSk6Cj4+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2Nr
Y2hpcC9DQU5Bd1NnVFR6Wk93QmFSOXpqSjVWTXB4bTVCeWR0VzZyQjJTN2pnK2Rub1g4aEFvV2dA
bWFpbC5nbWFpbC5jb20vCj4+ID4KPj4gPiBUaGUgY29uY2x1c2lvbnMgSSBkcmF3IGZyb20gdGhh
dCByYXRoZXIgdWdseSBzaXR1YXRpb24gYXJlOgo+PiA+ICAtIFRoZSBod3JuZyBzaG91bGQgbm90
IGJlIGVuYWJsZWQgYnkgZGVmYXVsdCwgYnV0IGl0IHNob3VsZCBieSBkb25lCj4+ID4gICAgZm9y
IGVhY2ggYm9hcmQgb24gd2hpY2ggaXQgaXMga25vd24gdG8gd29yayB3ZWxsLgo+PiA+ICAtIFJL
X1JOR19TQU1QTEVfQ05UIGFzIHdlbGwgYXMgdGhlIGFzc3VtZWQgcm5nIHF1YWxpdHkgc2hvdWxk
IGJlCj4+ID4gICAgZGVmaW5lZCBpbiBEVCBmb3IgZWFjaCBib2FyZDoKPj4gPiAgICAqIGludHJv
ZHVjZSBuZXcgJ3JvY2hjaGlwLHJuZy1zYW1wbGUtY291bnQnIHByb3BlcnR5Cj4+ID4gICAgKiBy
ZWFkICdxdWFsaXR5JyBwcm9wZXJ0eSBhbHJlYWR5IHVzZWQgZm9yIHRpbWVyaW9tZW1fcm5nCj4+
ID4KPj4gPiBJIHdpbGwgcHJlcGFyZSBhIGZvbGxvdy11cCBwYXRjaCB0YWtpbmcgdGhvc2UgY29u
Y2x1c2lvbnMgaW50byBhY2NvdW50Lgo+PiA+Cj4+ID4gSnVzdCBmb3IgY29tcGxldGVuZXNzLCBo
ZXJlIG15IHRlc3QgcmVzdWx0IG9uIHRoZSBOYW5vUGkgUjVDOgo+PiA+IHJvb3RAT3BlbldydDp+
IyBjYXQgL2Rldi9od3JuZyB8IHJuZ3Rlc3QgLWMgMTAwMAo+PiA+IHJuZ3Rlc3QgNi4xNQo+PiA+
IENvcHlyaWdodCAoYykgMjAwNCBieSBIZW5yaXF1ZSBkZSBNb3JhZXMgSG9sc2NodWgKPj4gPiBU
aGlzIGlzIGZyZWUgc29mdHdhcmU7IHNlZSB0aGUgc291cmNlIGZvciBjb3B5aW5nIGNvbmRpdGlv
bnMuICBUaGVyZSBpcyBOTyB3YXJyYW50eTsgbm90IGV2ZW4gZm9yIE1FUkNIQU5UQUJJTElUWSBv
ciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4KPj4gPgo+PiA+IHJuZ3Rlc3Q6IHN0
YXJ0aW5nIEZJUFMgdGVzdHMuLi4KPj4gPiBybmd0ZXN0OiBiaXRzIHJlY2VpdmVkIGZyb20gaW5w
dXQ6IDIwMDAwMDMyCj4+ID4gcm5ndGVzdDogRklQUyAxNDAtMiBzdWNjZXNzZXM6IDg3NQo+PiA+
IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIgZmFpbHVyZXM6IDEyNQo+PiA+IHJuZ3Rlc3Q6IEZJUFMgMTQw
LTIoMjAwMS0xMC0xMCkgTW9ub2JpdDogMTIzCj4+ID4gcm5ndGVzdDogRklQUyAxNDAtMigyMDAx
LTEwLTEwKSBQb2tlcjogNQo+PiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgUnVu
czogNAo+PiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgTG9uZyBydW46IDAKPj4g
PiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIENvbnRpbnVvdXMgcnVuOiAwCj4+ID4g
cm5ndGVzdDogaW5wdXQgY2hhbm5lbCBzcGVlZDogKG1pbj04NS4xNzE7IGF2Zz0xNDEuMTAyOyBt
YXg9NDg4MjgxMi41MDApS2liaXRzL3MKPj4gPiBybmd0ZXN0OiBGSVBTIHRlc3RzIHNwZWVkOiAo
bWluPTE3LjgwOTsgYXZnPTE5LjQ5NDsgbWF4PTYwLjE2OSlNaWJpdHMvcwo+PiA+IHJuZ3Rlc3Q6
IFByb2dyYW0gcnVuIHRpbWU6IDEzOTYyODYwNSBtaWNyb3NlY29uZHMKPj4gCj4+IEkgZG91YnQg
dGhpcyBpcyBwZXItYm9hcmQuIFRoZSBSTkcgaXMgaW5zaWRlIHRoZSBTb0MsIHNvIGl0IGNvdWxk
IGJlIGEgCj4+IGNoaXAKPj4gcXVhbGl0eSB0aGluZy4gT24gdGhlIFJLMzM5OSB3ZSBhbHNvIHNh
dyB3aWxkbHkgdmFyeWluZyByZXN1bHRzLgo+PiAKPiBJIGZlZWwgdGhlIGxhdGVzdCBybmctdG9v
bCBvbmx5IHN1cHBvcnRzIEludGVsIHBsYXRmb3JtIHg4Nl82NCBhbmQgCj4gaTM4Ni4KPiBJdCBo
YXMgbm8gcHJvcGVyIHN1cHBvcnQgZm9yIEFybTY0IGFuZCBBcm12Nwo+IEl0IGlzIGhlYXZpbHkg
bW9kaWZpZWQgZm9yIHRoZSBYODYgcGxhdGZvcm0KPiBzbyBpdCdzIG5vdCBzdWl0YWJsZSBmb3Ig
dGVzdGluZyBvbiBvdGhlciBwbGF0Zm9ybXMuCj4gCj4gSWYgd2UgZW5hYmxlIEhXUk5HIG9uIGFs
bCB0aGUgUm9ja2NoaXAgcGxhdGZvcm1zIGl0IHdpbGwgYmUgYmV0dGVyLgo+IAo+IFsxXSBodHRw
czovL2dpdGh1Yi5jb20vbmhvcm1hbi9ybmctdG9vbHMKCkkgZG9uJ3Qgc2VlIHdoYXQgY291bGQg
YmUgdHdlYWtlZCBpbiBybmd0ZXN0KDEpIHRvIHN1cHBvcnQgYW55IHBsYXRmb3JtCmJldHRlciB0
aGFuIHRoZSBvdGhlciwgYW5kIHN0aWxsIHJlbWFpbiBhIHZhbGlkIHRlc3QuICBJdCBqdXN0IGFw
cGxpZXMKY2VydGFpbiBGSVBTIHRlc3QocykgdG8gdGhlIHJhbmRvbSBkYXRhIG9idGFpbmVkIGZy
b20gL2Rldi9od3JuZyBvciBzb21lCm90aGVyIHNvdXJjZSwgYW5kIGlmIHRoYXQgdGVzdGluZyBp
cyB0d2Vha2VkIGluIGFueSB3YXksIHRoZW4gdGhlIHRlc3QKcmVzdWx0cyBhcmVuJ3QgdmFsaWQg
b24gYW55IHBsYXRmb3JtLgoKSW4gb3RoZXIgd29yZHMsIHBlcmhhcHMgdGhlIG90aGVyIGNvbXBv
bmVudHMgb2Ygcm5nLXRvb2xzIGFyZSB0d2Vha2VkIHRvCnN1cHBvcnQgIm1haW5zdHJlYW0iIHBs
YXRmb3JtcyBiZXR0ZXIsIGJ1dCBybmd0ZXN0KDEpIHNpbXBseSBtdXN0IG5vdCBiZQp0d2Vha2Vk
IGluIGFueSB3YXkuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
