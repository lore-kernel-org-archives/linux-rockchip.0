Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8A97C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 12:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2jKk3C9nrrsdELDunoI7Ppxj4J+bra81XasMLOAQMo=; b=2tkmaWEjZwh8AL
	tQ5FlO/i5tTQ8HwPe0XdHWraVyFvopXLu7ntqrvVZD33eLNC4f183deaMuDgmpulXrQLPDFe5c/1p
	YSp5J54/nadsT0AaXWCR8iGVkbZE7TDtn7aPagCPHexpd3TZa7l3CsO454ShWeiW6IU9wzM2ic6nD
	EJ6HZa9T8iIte9eur0E+HXvPnVCGzlSKIdoo0NxeW0ZUOn6+pl8kZQwOTZO0+iV2itFt1dHLISy/W
	68VQMpgOxbtXRjfbtgK3wmIDXcCLkTHooh+OJk+JaQdRo3iu8HZ5iLukLLLMIT2ErSps1CFjwC3VX
	ohDEJouwqdeZFATzbCLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7b6o-002UVE-32;
	Mon, 27 Nov 2023 12:53:06 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7b6k-002UTo-2x;
	Mon, 27 Nov 2023 12:53:05 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id BDB365C012D;
	Mon, 27 Nov 2023 07:52:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 27 Nov 2023 07:52:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1701089577; x=1701175977; bh=E8dZwrRdtI6b2vaPBCtmzjKkK
	CP5jN5XPRuZ7pI3GUE=; b=Q6h8OsYVuTWogoWxvr8F8TGcBShzooRTfR9sjn/37
	5zGMzJMiCKkBOBaHwTI7P49DxJt4Q3I3xqnSCYCETSiWr4omHdvwJi41KW9g7hHS
	gKKwd+V+V9ZbnhAtQ3amIdzNT84nabkAyCHqULZziPmdXmKVm/fZr8NNsDOuHJil
	sk5zobASaZPxiYfdsYqWT8lnInsSLYVCVuBGCCk2fVWsdtRaMwl9f3OLhYlHJBAG
	3BQtnjuIzPXLsmLC+56KCMgQhTRf2wVOSxdXxdz94oBqE4GbfSctfzmPDtTt0Y5Z
	7zK+Xt5eNvnzR4znGXI/CMDIKMJMcAteWbnXqaNLoxJ2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1701089577; x=1701175977; bh=E8dZwrRdtI6b2vaPBCtmzjKkKCP5jN5XPRu
	Z7pI3GUE=; b=shZAk4sD/QvZfN6GS2RoR50wA6UFPVnHxhyY/gYgqsooek/OARl
	9FMmFdOlLKTOhystC2/6Nq6/7N6VNzhgfto29qC5U2kHPR3UpEFPeWGyr9JzmL/5
	eKLtueas/fyv9TIMbMhpatcRcq9wsCYvNE6ugG3CbdkSHXotS4Ze0JXgYZYoK74T
	WGEoC8Ic11eDTKCWgmDnvxmLM8d70Xtm6xECIea6o3eo5xxwYBdO+a7mLpuO0ZYT
	yuFDwTPzxK1lkMUjIAqx39RHnKCRjcDjZSngplPczHNh1anoKfxLSKcWj1DJ44Em
	eyy1H3Kk3/GZgEXXY6UGyu9aA55DDH5WG7g==
X-ME-Sender: <xms:KZFkZSkb_O8K04yGoMglHIbkn1Ynhip4VHgJF0CYNu4dxBbFmBkLsA>
    <xme:KZFkZZ2CgI4O71Xp2CgslsWP7zDNPPH1d-nC_lVrrnStPN-WZRHDxX5NhZsb4VWYe
    7Hvx6EyvA>
X-ME-Received: <xmr:KZFkZQoDLai8UUiGNBePUN_jdvGXDqQrKq5wb2zXBqG2MwlJJzRFXIp_NWK3zZoJJwegsOUdo2kpbfV2K_V0rrxWrTm3Lqn1SAbs4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddggeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepteejteffudfggfeifeevhedvfeekhfejhfdtteejueetieehueduleetjeeuueet
    necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:KZFkZWmzAMqxFzsHHKiP-9CCHofcTAzarBZ9Cv01H-P1PB9-7_QDjQ>
    <xmx:KZFkZQ1-jFLFTsfH5-ZujNcV4nGmbxlPLYlDWwTF2bJAoCQXoaWGaw>
    <xmx:KZFkZdv181mrLkMkKzdIPDMsb8H-xGvLDyWti9H6HrMyTJRalQWITg>
    <xmx:KZFkZRnuMzEFhXGh-oahr06futMfbQEIoC3t7U46v48RqhCZuYpq1A>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 07:52:53 -0500 (EST)
Message-ID: <27c96f0b-0eaf-4f96-b4eb-bea34dd3cab0@feathertop.org>
Date: Mon, 27 Nov 2023 23:52:51 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <50694679.MN2xkq1pzW@diego>
 <99db2b8a-631b-40df-a33a-c2baeb44c940@feathertop.org>
 <4065853.CrzyxZ31qj@diego>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <4065853.CrzyxZ31qj@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_045303_558220_8B6C933F 
X-CRM114-Status: GOOD (  18.93  )
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

SGkgSGVpa28sCgpPbiAxMS8yNy8yMyAyMToyOSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0g
TW9udGFnLCAyNy4gTm92ZW1iZXIgMjAyMywgMTA6NTg6NDMgQ0VUIHNjaHJpZWIgVGltIEx1bm46
Cj4+IE9uIDExLzI3LzIzIDIwOjQ1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+IEFtIE1vbnRh
ZywgMjcuIE5vdmVtYmVyIDIwMjMsIDEwOjI3OjQxIENFVCBzY2hyaWViIEtyenlzenRvZiBLb3ps
b3dza2k6Cj4+Pj4gT24gMjcvMTEvMjAyMyAxMDoyMywgVGltIEx1bm4gd3JvdGU6Cj4+Pj4+IEhp
Cj4+Pj4+Cj4+Pj4+IE9uIDExLzI3LzIzIDE3OjUyLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3Rl
Ogo+Pj4+Pj4gT24gMjcvMTEvMjAyMyAwMDowNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+Pj4+
Pj4gSGkgS3J6eXN6dG9mLAo+Pj4+Pj4+Cj4+Pj4+Pj4gQW0gTWl0dHdvY2gsIDIyLiBOb3ZlbWJl
ciAyMDIzLCAxMzoyOTo0NyBDRVQgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tpOgo+Pj4+Pj4+
PiBPbiAyMi8xMS8yMDIzIDEzOjIyLCBUaW0gTHVubiB3cm90ZToKPj4+Pj4+Pj4+IEFkZCBpMmMy
IG5vZGUgYW5kIGkyYzJfeGZlciBwaW5jdHJsIGZvciBSb2NrY2hpcCBSVjExMjYKPj4+Pj4+Pj4+
Cj4+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaW0gTHVubiA8dGltQGZlYXRoZXJ0b3Aub3JnPgo+
Pj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gKG5vIGNoYW5nZXMgc2luY2UgdjEpCj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gICAgIGFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi1w
aW5jdHJsLmR0c2kgfCAxMCArKysrKysrKysrCj4+Pj4+Pj4+PiAgICAgYXJjaC9hcm0vYm9vdC9k
dHMvcm9ja2NoaXAvcnYxMTI2LmR0c2kgICAgICAgICB8IDE1ICsrKysrKysrKysrKysrKwo+Pj4+
Pj4+Pj4gICAgIDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQo+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYtcGlu
Y3RybC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2LXBpbmN0cmwuZHRz
aQo+Pj4+Pj4+Pj4gaW5kZXggNGY4NWI3YjNmYzRjLi4xNjdhNDhhZmEzYTQgMTAwNjQ0Cj4+Pj4+
Pj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYtcGluY3RybC5kdHNp
Cj4+Pj4+Pj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYtcGluY3Ry
bC5kdHNpCj4+Pj4+Pj4+PiBAQCAtODcsNiArODcsMTYgQEAgaTJjMF94ZmVyOiBpMmMwLXhmZXIg
ewo+Pj4+Pj4+Pj4gICAgIAkJCQk8MCBSS19QQjUgMSAmcGNmZ19wdWxsX25vbmVfZHJ2X2xldmVs
XzBfc210PjsKPj4+Pj4+Pj4+ICAgICAJCX07Cj4+Pj4+Pj4+PiAgICAgCX07Cj4+Pj4+Pj4+PiAr
CWkyYzIgewo+Pj4+Pj4+Pj4gKwkJL29taXQtaWYtbm8tcmVmLwo+Pj4+Pj4+Pj4gKwkJaTJjMl94
ZmVyOiBpMmMyLXhmZXIgewo+Pj4+Pj4+Pj4gKwkJCXJvY2tjaGlwLHBpbnMgPQo+Pj4+Pj4+Pj4g
KwkJCQkvKiBpMmMyX3NjbCAqLwo+Pj4+Pj4+Pj4gKwkJCQk8MCBSS19QQzIgMSAmcGNmZ19wdWxs
X25vbmVfZHJ2X2xldmVsXzBfc210PiwKPj4+Pj4+Pj4+ICsJCQkJLyogaTJjMl9zZGEgKi8KPj4+
Pj4+Pj4+ICsJCQkJPDAgUktfUEMzIDEgJnBjZmdfcHVsbF9ub25lX2Rydl9sZXZlbF8wX3NtdD47
Cj4+Pj4+Pj4+PiArCQl9Owo+Pj4+Pj4+Pj4gKwl9Owo+Pj4+Pj4+Pj4gICAgIAlwd20yIHsKPj4+
Pj4+Pj4+ICAgICAJCS9vbWl0LWlmLW5vLXJlZi8KPj4+Pj4+Pj4+ICAgICAJCXB3bTJtMF9waW5z
OiBwd20ybTAtcGlucyB7Cj4+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcnYxMTI2LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYu
ZHRzaQo+Pj4+Pj4+Pj4gaW5kZXggNmM1YzkyOGYwNmM3Li5jZjFkZjc1ZGY0MTggMTAwNjQ0Cj4+
Pj4+Pj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYuZHRzaQo+Pj4+
Pj4+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2LmR0c2kKPj4+Pj4+
Pj4+IEBAIC0yMSw2ICsyMSw3IEBAIC8gewo+Pj4+Pj4+Pj4gICAgIAo+Pj4+Pj4+Pj4gICAgIAlh
bGlhc2VzIHsKPj4+Pj4+Pj4+ICAgICAJCWkyYzAgPSAmaTJjMDsKPj4+Pj4+Pj4+ICsJCWkyYzIg
PSAmaTJjMjsKPj4+Pj4+Pj4gTm8sIHRoaXMgc2hvdWxkIGJlIHBlci1ib2FyZCB0byBtYXRjaCBi
b2FyZCBsYWJlbGluZy9zY2hlbWF0aWNzLgo+Pj4+Pj4+IEF0IGxlYXN0IGZvciBpMmMsIHVhcnRz
IGFuZCBpLmUuIHNwaSAuLi4gUm9ja2NoaXAgbWFudWFscywgcGluIG5hbWluZ3MKPj4+Pj4+PiBh
bmQgYWxzbyBhbGwgYm9hcmQgc2NoZW1hdGljcyBJJ3ZlIHNlZW4gc28gZmFyIGFyZSB2ZXJ5IGNv
bnNpc3RlbnQgZm9yCj4+Pj4+Pj4gdGhlc2UgLi4uIGkyYzIgZm9yIGV4YW1wbGUgaXMgbGFibGVk
IGkyYzIgYm90aCBpbiB0aGUgcGlucyBpbiB0aGUgc29jcwo+Pj4+Pj4+IGFuZCBhbHNvIGluIHRo
ZSBib2FyZC1zY2hlbWF0aWNzIHVzaW5nIHRoZW0uCj4+Pj4+Pj4KPj4+Pj4+PiBTbyB3aGlsZSBJ
IGNhbiBhZ3JlZSB0aGF0IHRoaW5ncyBsaWtlIG1tYy1hbGlhc2VzIG1pZ2h0IGJlIGJvYXJkLXNw
ZWNpZmljLAo+Pj4+Pj4+IEkgZG8gdGhpbmsgYWxpYXNlcyBmb3IgdGhlIGNvcmUgYnVzc2VzIHNo
b3VsZCBiZSBhYmxlIHRvIGxpdmUgaW4gdGhlIHNvYyBkdHNpCj4+Pj4+Pj4gYXMgZm9yIGFsbCBS
b2NrY2hpcCBTb0NzIHNvIGZhcj8KPj4+Pj4+IElmIHlvdSBkbyBub3QgbGlzdCBoZXJlIGFsbCBh
bGlhc2VzLCBpdCBpcyBhbHJlYWR5IGJvYXJkLXNwZWNpZmljLCBpc24ndCBpdD8KPj4+Pj4+Cj4+
Pj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC9DQUs4UDNhMjVpWWtz
dWJDblFiMS1lNXlqPWNyRXNLMzdSQjlIbjRaR1pNd2NWVnJHN2dAbWFpbC5nbWFpbC5jb20vCj4+
Pj4+IEkgaGFkIG9ubHkgYWRkZWQgYWxpYXNlcyBmb3Igbm9kZXMgdGhhdCBhcmUgaW1wbGVtZW50
ZWQuIFJWMTEyNiBoYXMgNgo+Pj4+PiBpMmMgYnVzc2VzIGJ1dCBzbyBmYXIgbm90IGFsbCB0aGVz
ZSBleGlzdCBpbiB0aGUgc29jLmR0c2kuCj4+Pj4+Cj4+Pj4gT0ssIHRoYXQgd291bGQgZXhwbGFp
biB3aHkgeW91IGhhdmUgb25seSB0d28uIEFueXdheSwgaXQgaXMganVzdCBnZW5lcmljCj4+Pj4g
Z3VpZGVsaW5lLCBzbyB1cCB0byBIZWlrbyB3aGF0IHRvIGRvIHdpdGggaXQuCj4+PiBQZW9wbGUg
c2VlICJ1YXJ0Mi10eCIgb24gdGhlaXIgcGluLWhlYWRlciBkZXNjcmlwdGlvbiBhbmQgdGhlbiBv
ZiBjb3Vyc2UKPj4+IHdhbnQgdG8gdXNlIHR0eVMyIC4uLiBzYW1lIHdpdGggcmVhZGluZyBpMmMy
LXNkYSBvbiB0aGUgcGluLWhlYWRlciBhbmQgdGhlbgo+Pj4gcnVubmluZyBpMmNkZXRlY3Qgb24g
c2FpZCBpMmMyIGRldiBub2RlLgo+Pj4KPj4+IEFuZCBldmVuIGlmIGkyYzEgaXMgbm90IHBvcHVs
YXRlZCAod291bGQgZXZlbiBiZSB2ZXJ5IHJhcmUpLCB0aGVuIHBlb3BsZQo+Pj4gd291bGQgc3Rp
bGwgZXhwZWN0IGkyYzIgdG8gYmUgbmFtZWQgdGhhdCB3YXkuCj4+Pgo+Pj4gQXMgdGhpcyBpcyB0
aGUgc2FtZSBmb3IgX2V2ZXJ5XyBib2FyZCwgaXQgZG9lc24ndCByZWFsbHkgbWFrZSBzZW5zZSB0
bwo+Pj4gZHVwbGljYXRlIGl0IGV2ZXJ5IHRpbWUuIFdoaWNoIEkgZ3Vlc3MgaXMgc2ltaWxhciB0
byB3aGF0IEkgd3JvdGUgaW4gcmVwbHkKPj4+IHRvIHRoZSBtYWlsIHlvdSBsaW5rZWQgYWJvdmUg
Oi0pIC4KPj4gU28gSSB3aWxsIGxlYXZlIHRoZSBpMmMgYW5kIHNlcmlhbCBhbGlhc2VzIGFzIHRo
ZXkgYXJlIGluIHJ2MTEyNi5kdHNpIHRoZW4/Cj4gY29ycmVjdAo+Cj4KPj4+IEl0J3MgZGlmZmVy
ZW50IGZvciBtbWMsIHdoZXJlIHRoaXMgbmFtaW5nIHNjaGVtZSBpc24ndCBub3JtYWxseSB1c2Vk
LAo+Pj4gc28gd2UgKG1vc3RseT8pIG1pZ3JhdGVkIHRvIHRoZW0gYmVpbmcgaW4gdGhlIGJvYXJk
LXNwZWNpZmljIGFsaWFzIHNlY3Rpb24uCj4+IFdoYXQgYWJvdXQgdGhlIGV0aGVybmV0IGFsaWFz
LCAgIHRoZSBNQUMgaXMgcGFydCBvZiB0aGUgU29DLCBzaG91bGQgdGhpcwo+PiBzdGF5IGFzIGl0
IGlzCj4+IGluIHBhdGNoIDYgZnJvbSB0aGlzIHNlcmllcywgb3IgbW92ZSB0byBib2FyZCBkdHNp
Pwo+IEkgdGhpbmsganVkZ2luZyBmcm9tIGV2ZXJ5dGhpbmcgYWJvdmUgKGFuZCB0aGUgb3RoZXIg
bW9kZXJuIGJvYXJkcwo+IGxpa2UgYWxsIHJrMzU4OCBvbmVzKSB0aGUgZXRoZXJuZXQwIGFsaWFz
IHNob3VsZCBtb3ZlIHRvIHRoZSBib2FyZCBkdHMoaSkuCj4KPiBUaGUgZ21hYyBnZW5lcmFsbHkg
ZG9lcyBub3QgaGF2ZSB0aGlzIG51bWJlcmluZyBzY2hlbWUgbGlrZSBpMmMgb3IgdWFydHMuCk5v
dGVkLCBJIHdpbGwgcHJlcGFyZSB0aGVzZSBjaGFuZ2VzIGluIGEgdjMgc2VyaWVzCgpSZWdhcmRz
CiDCoMKgIFRpbS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
