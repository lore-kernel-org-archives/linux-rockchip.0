Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14F4CE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 14:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vJi28K2YfK+ZJ8mOYzfVgEb87ZKOowIPfD63zgoitUE=; b=g61l0X5a0pw+h3AKRwe+uIg2Lt
	/GU9FuPz+AOWbysOT0etDdpBsXUQNVMSvvAXdxJruhWtqPX21LDkFUY66LYOQbIGeF0B+8CRwH3ng
	q117GV3BEqyfBelqzwRXDNl+Hw65kmqX36+o333c6acSlm+QdzDt4FWy8bpKYwkBkSDil6fuJidmb
	pj9TNQOtjnjiK8EOEXZTTjomDTbVl/WriEnhS8TAhhr3t1HcU6XdRuapPuAdR6Eaoeg3DXOd0BIPC
	pR46SC0bP6Bk/V5bjVYKEIIOXOnxYSg7bzseAHCIIco6ma1ULaymE5mN79neyBIZ1WGCmADmfDh6N
	RXPYf4bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRB0o-00000000LrV-0FHF;
	Fri, 27 Dec 2024 14:08:22 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAzc-00000000Lnd-3yFj;
	Fri, 27 Dec 2024 14:07:10 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735308427;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T9tP804CKKIc8fPyno90HqS3ih3nV1edUalGMWSC688=;
	b=v+8jVoKVewKz0JKLMRH781Ex5RKwvl0OpdQQ7PAJSh2+dkScAA1ba92TNcBtDA/Mc2Z2mi
	omTvJ6zuFoK6yxZRn6FD05NNKk5GWEqXSRPbdGpiGUOrO1B2gfTc32YpFt47QVWm5lswtH
	L8i3vu3bKBEcs2TsiG0FS9U32QlxwRelvfaiY1MsWVnkErNMGyeg9Mz0C9m6qhhKwugXh4
	2X7pL2QwW+kEQqjCPnR/z2gLYC9garblYugfuY5q0Y+CimMEleztp9LfKLz0A2mSSbPPSU
	4uhNJKktLM/dPLuold80X0uXthO9KehzGJbPTYFDUykNh1uBYUZORFtQW8CC5A==
Date: Fri, 27 Dec 2024 15:07:07 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: Add Rockchip RK3588M
In-Reply-To: <8f40821508fde291aab01674618c0a2c@manjaro.org>
References: <20241227133420.169714-1-jagan@edgeble.ai>
 <8f40821508fde291aab01674618c0a2c@manjaro.org>
Message-ID: <e03da44cd6ae417feeb3de3fbfbff7f9@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_060709_150728_17D61A9E 
X-CRM114-Status: GOOD (  19.61  )
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

T24gMjAyNC0xMi0yNyAxNDo0OCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhlbGxvIEphZ2FuLAo+
IAo+IFBsZWFzZSBzZWUgYSBjb21tZW50IGJlbG93Lgo+IAo+IE9uIDIwMjQtMTItMjcgMTQ6MzQs
IEphZ2FuIFRla2kgd3JvdGU6Cj4+IFJvY2tjaGlwIFJLMzU4OE0gaXMgdGhlIGF1dG9tb3RpdmUt
Z3JhZGUgdmVyc2lvbiBvZiBSSzM1ODggU29DIGFuZAo+PiBpcyBvcGVyYXRlZCB3aXRowqAtNDAg
wrBDIHRvICs4NSDCsEMgdGVtcGFyYXR1cmUuCj4+IAo+PiBBZGQgcmszNTg4bSBzcGVjaWZpYyBk
dHNpIGZvciBhZGRpbmcgcmszNTg4bSBzcGVjaWZpYyBvcGVyYXRpbmcgcG9pbnRzCj4+IGFuZCBv
dGhlciBjaGFuZ2VzIHRvIGJlIGFkZCBpbiBmdXR1cmUuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBK
YWdhbiBUZWtpIDxqYWdhbkBlZGdlYmxlLmFpPgo+PiAtLS0KPj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4bS5kdHNpIHwgNyArKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODhtLmR0c2kKPj4gCj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OG0uZHRzaQo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4bS5kdHNpCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAw
MDAwMDAwMC4uMGJiZWVlMzk5YTYzCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhtLmR0c2kKPj4gQEAgLTAsMCArMSw3IEBACj4+ICsv
LyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPj4gKy8qCj4+ICsg
KiBDb3B5cmlnaHQgKGMpIDIwMjIgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQuCj4+ICsg
Kgo+PiArICovCj4+ICsKPj4gKyNpbmNsdWRlICJyazM1ODgtZXh0cmEuZHRzaSIKPiAKPiBJIGRv
bid0IHRoaW5rIHdlIG5lZWQgb3Igd2FudCBhIHNlcGFyYXRlIHJrMzU4OG0uZHRzaSBmaWxlIGZv
ciB0aGlzCj4gcHVycG9zZSwgdW5sZXNzIHRoZSBSSzM1ODhNIHZhcmlhbnQgYWN0dWFsbHkgZGlm
ZmVycyBmcm9tIHRoZSByZWd1bGFyCj4gUkszNTg4IHZhcmlhbnQgZnJvbSB0aGUgc29mdHdhcmUg
c3RhbmRwb2ludC4gIFRoZSBsYXR0ZXIgaXMgYWxyZWFkeQo+IGRlc2NyaWJlZCBpbiByazM1ODgu
ZHRzaSwgc28gaXQgc2hvdWxkIGp1c3QgYmUgaW5jbHVkZWQgaW4gdGhlIG5ldwo+IGJvYXJkIGR0
cyhpKSBmaWxlLgoKQWN0dWFsbHksIGFmdGVyIGhhdmluZyBhIGxvb2sgYXQgdGhlIGRvd25zdHJl
YW0gY29kZSwgaXQgc2VlbXMgdGhhdAp0aGUgUkszNTg4SiBhbmQgUkszNTg4TSB2YXJpYW50cyBz
aGFyZSB0aGUgc2FtZSBPUFBzLCBzbyBhY3R1YWxseQpyazM1ODhqLmR0c2kgc2hvdWxkIGJlIHVz
ZWQgZm9yIHRoZSBSSzM1ODhNIHZhcmlhbnQuICBDb3VsZCB5b3UsCnBsZWFzZSwgY29uZmlybSB0
aGlzPwoKQWxhcywgaXQgc2VlbXMgd2UndmUgZ290IHNvbWUgc2VyaW91cyBpc3N1ZXMgaW4gdGhl
IE9QUHMgY3VycmVudGx5CmRlZmluZWQgaW4gcmszNTg4ai5kdHNpLCB3aGljaCBJJ2xsIGRvdWJs
ZSBjaGVjayB0byBtYWtlIHN1cmUgSSdtIG5vdApnb2luZyBjcmF6eSwgOikgYW5kIHN1Ym1pdCBh
IHBhdGNoIHRoYXQgZml4ZXMgdGhvc2UgT1BQcy4KCklmIHlvdSBjb3VsZCBjb25maXJtIHRoZSBS
SzM1ODhNID09IFJLMzU4OEogYXNzdW1wdGlvbiBhYm92ZSwgSSBjYW4KYWRkIHNvbWUgYWRkaXRp
b25hbCBjbGFyaWZpY2F0aW9uIHRvIHRoZSByazM1ODhqLmR0c2kgZmlsZSBpbiB0aGUKYWJvdmUt
bWVudGlvbmVkIGZpeGVzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
