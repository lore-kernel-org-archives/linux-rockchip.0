Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 917C4C7115C
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 11:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3XICjnjsTR+9j4mf4sbfokGk3W90NK9Nbv8xT/6r7E=; b=cqoUbk1HwlXu90
	YERgQJeHNfFdAHL1LrGTCEobc7KG+Dc2SAo5yBh95UKP62TVvySuaoaQvaUYw//ZumeRha2rKA0lx
	DK5iLK8Q6DgYRxTk13aWq4EU3hWiapRrbiNY2MZF74YLJEVYvSH9leFf8zfN/FH00GBun3bgRgZt5
	GFRVn1htr3APnepDXKpgGroWMlECwxF0ZC0xQ57gyouuwQj2A8+fTrvcylrbC/0aEy1g3IdCYa9d/
	lORUPv7JPjvp1c65w2mG65eAdngDbggt+mg4xe/IIDPvNLQNN5chtvP+fBcsKmOA8NAjUQ0batihx
	YvsOmt5mp35vMJ2JkkrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSDaW-0000000CufF-33pE;
	Thu, 19 Jun 2025 11:37:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSCoR-0000000CmyT-13J4;
	Thu, 19 Jun 2025 10:48:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=YrYJ8w60yCUBZigSm+JV9lV/nNFVXOxrB9Gm7xPQC6A=; b=BkwmLkYZlnH6bFNcEbVWtwgzGh
	mnQ/CWfvOd8Wx/NaPEYBAB/0x7Jf1o0XPdt3HGj5Pv9zp0l1zoXv8S924e0vUGpfpFBQnjbMS+212
	32yPTUw3+h1V1yCw3PsfIEZJkTNDtiKoPEl6JtWCUCduCwYSYTorUxhmh7TRmqXBUeCsKpWppre0h
	tZYCQdyVl6hYdIdBRq3KwDG1WXmxw2bPl9Op+cu3sfPH8nitJeUYYPVMZpRNziKCQwZrj52m3hSXB
	IBhzl+qOwS/KaoUBNUzJfGPHWah19hgSpMWywTCsCmLIwoyymxNPRzpIs0o5oqbmgtQBvNsOmsqQ0
	0znGK81g==;
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSCoO-00000004Q9O-2N1b;
	Thu, 19 Jun 2025 10:48:06 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id DF5F44396F;
	Thu, 19 Jun 2025 10:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1750330079;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YrYJ8w60yCUBZigSm+JV9lV/nNFVXOxrB9Gm7xPQC6A=;
	b=Fdj0OnyGM/LIKEoR67MIFPtCrbEaBwTFCjHjfXIe2gV/5Q5MdeVZmWL1UAwK+YucK6tESv
	1WPzDuiDlQMae4blgiTIVdGUVGALZJaWeKzzTlv2IaBS0NpVQiMsP7WDy/DlTfCSBX7TWw
	7mXdmJjQ/ER2+q+7oHYIyzoEecykD096ST65HAG6c6lbzw38hVTaNEKKnbRDk6+Xote/rB
	3TzQvUCx+GFM7JZx+sD6k3Nmawn3oHIkyu498nTe1rPNCEv2CI6v5l6sFDlUrro8jtextJ
	jHeePypFVx4xYHK0U7uqG9y3VLi+wk3YVNoMFY4MX2BBz4w97QiKtD998UdXZg==
Message-ID: <c26ce505-343a-4759-90b5-a026c66979c7@bootlin.com>
Date: Thu, 19 Jun 2025 12:47:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix the PinePhone Pro DTS' panel
 description
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250619-dtb_fixes-v2-1-abd711d11b67@bootlin.com>
 <DAQEX04P5320.CQDU7SL7AV4A@cknow.org> <5461462.0VBMTVartN@phil>
Content-Language: en-US
From: Olivier Benjamin <olivier.benjamin@bootlin.com>
In-Reply-To: <5461462.0VBMTVartN@phil>
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdehfedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefkffggfgfuvfevfhfhjggtgfesthekredttddvjeenucfhrhhomhepqfhlihhvihgvrhcuuegvnhhjrghmihhnuceoohhlihhvihgvrhdrsggvnhhjrghmihhnsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeeuieffteevudettdejleejheekkeeftefggedttefhheeikeejgeehveefjeejheenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdgsohhothhlihhnrdgtohhmnecukfhppedvrgdtudemvgefgeemvggtfeekmedvgegvtdemfhehtggvmehffeegvdemieehkeejmehfieehieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtudemvgefgeemvggtfeekmedvgegvtdemfhehtggvmehffeegvdemieehkeejmehfieehiedphhgvlhhopeglkffrggeimedvrgdtudemvgefgeemvggtfeekmedvgegvtdemfhehtggvmehffeegvdemieehkeejmehfieehiegnpdhmrghilhhfrhhomhepohhlihhvihgvrhdrsggvnhhjrghmihhnsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedutddprhgtphhtthhopehhvghikhhosehsnhhtvggthhdruggvpdhrt
 ghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepughiughirdguvggsihgrnhestghknhhofidrohhrghdprhgtphhtthhopehthhhomhgrshdrphgvthgriiiiohhnihessghoohhtlhhinhdrtghomhdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrgh
X-GND-Sasl: olivier.benjamin@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_114804_873859_918DA396 
X-CRM114-Status: GOOD (  20.52  )
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

CgpPbiA2LzE5LzI1IDEyOjMxLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBBbSBEb25uZXJzdGFn
LCAxOS4gSnVuaSAyMDI1LCAxMTo0NjoxNSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBz
Y2hyaWViIERpZWRlcmlrIGRlIEhhYXM6Cj4+IEhpLAo+Pgo+PiBUaGFua3MgZm9yIHdvcmtpbmcg
b24gdXBzdHJlYW1pbmcgUFBQIHRoaW5ncyA6LSkKPj4KTXkgcGxlYXN1cmUuIEkgYWxzbyBoYXZl
IApodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI1MDUwOS1jYW1lcmEt
djMtMC1kYWIyNzcyZDIyOWFAYm9vdGxpbi5jb20vIApwZW5kaW5nID0gKQo+PiBPbiBUaHUgSnVu
IDE5LCAyMDI1IGF0IDc6MjEgQU0gQ0VTVCwgT2xpdmllciBCZW5qYW1pbiB3cm90ZToKPj4+IEZp
eCBhIGZldyBpc3N1ZXMgaW4gdGhlIHBhbmVsIHNlY3Rpb24gb2YgdGhlIFBpbmVQaG9uZSBQcm8g
RFRTOgo+Pj4gICAgLSBhZGQgdGhlIHNlY29uZCBwYXJ0IG9mIHRoZSBIaW1heCBIWDgzOTQgTENE
IHBhbmVsIGNvbnRyb2xsZXIKPj4+ICAgICAgY29tcGF0aWJsZQo+Pj4gICAgLSBhcyBwcm9wb3Nl
ZCBieSBEaWVkZXJpayBkZSBIYWFzLCByZXVzZSB0aGUgbWlwaV9vdXQgYW5kIHBvcnRzCj4+PiAg
ICAgIGRlZmluaXRpb25zIGZyb20gcmszMzk5LWJhc2UuZHRzaSBpbnN0ZWFkIG9mIHJlZGVmaW5p
bmcgdGhlbQo+Pj4gICAgLSBhZGQgYSBwaW5jdHJsIGZvciB0aGUgTENEX1JTVCBzaWduYWwgZm9y
IExDRDEsIGRlcml2ZWQgZnJvbQo+Pj4gICAgICBMQ0QxX1JTVCwgd2hpY2ggaXMgb24gR1BJTzRf
RDEsIGFzIGRvY3VtZW50ZWQgb24gcGFnZXMgMTEKPj4+ICAgICAgYW5kIDE2IG9mIHRoZSBQaW5l
UGhvbmUgUHJvIHNjaGVtYXRpYwo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IE9saXZpZXIgQmVuamFt
aW4gPG9saXZpZXIuYmVuamFtaW5AYm9vdGxpbi5jb20+Cj4gCj4+PiArCWxjZCB7Cj4+PiArCQls
Y2RfcmVzZXRfcGluOiByZXNldC1waW4gewo+Pgo+PiBJIGRvbid0IGtub3cgaWYgdGhlcmUncyBh
ICdoYXJkIHJ1bGUnIGZvciBpdCwgYnV0IEknZCByZWNvbW1lbmQgdG8gdXNlCj4+IGBgbGNkMV9y
c3RfcGluOiBsY2QxLXJzdC1waW4ge2BgIGFzIHRoYXQgd291bGQgbWF0Y2ggdGhlIG5hbWluZyBm
cm9tCj4+IHRoZSBzY2hlbWF0aWNzLiBJIHJlYWxpemUgdGhhdCBzb21lIGJ1dCBub3QgYWxsIChv
dGhlcikgcGluY3RybCBub2Rlcwo+PiBmb2xsb3cgdGhhdCAncnVsZScsIGJ1dCBpdCBoZWxwcyB3
aXRoIHRyYWNlYWJpbGl0eS4KPiAKPiBub3QgYSAiaGFyZCIgcnVsZSwgYnV0IGEgc3Ryb25nIHBy
ZWZlcmVuY2UuCj4gSS5lLiB3ZSB3YW50IHBlb3BsZSB0byBpZGVhbGx5IGJlIGFibGUgdG8ganVz
dCBoaXQgc2VhcmNoIGluIHRoZQo+IHNjaGVtYXRpY3MgUERGcyBmb3IgdGhlIG5hbWUgdGhleSBz
YXcgaW4gdGhlIGRldmljZXRyZWUuCj4gCj4gU29tZXRpbWVzIHRoYXQgaXMgbm90IHBvc3NpYmxl
LCBiZWNhdXNlIG9mIG5hbWluZyBjb252ZW50aW9ucyBvcgo+IG92ZXJseSBzdHJhbmdlIHNjaGVt
YXRpYy1uYW1lcyAuLi4gYW5kIHNvbWV0aW1lcyB0aGluZ3Mgc2xpcCB0aHJvdWdoCj4gYXMgd2Vs
bC4KPiAKPiBCdXQgZm9sbG93aW5nIHRoZSBzY2hlbWF0aWMgbmFtZXMsIGlzIHRoZSBnZW5lcmFs
IGdvYWwuCj4gClZlcnkgZmFpci4gSSB1c2VkICJsY2RfcmVzZXQiIGJlY2F1c2UgZXZlbiB0aGUg
c2NoZW1hdGljIGlzIG5vdCBzdXBlciAKY2xlYXI6IGl0IHVzZXMgIkxDRF9SU1QiIG9uIHBhZ2Ug
MTYgYW5kIExDRDFfUlNUIG9uIHBhZ2VzIDExIGFuZCAxNi4KCj4gCj4gSWYgdGhpcyBzdGF5cyB0
aGUgb25seSBzdWdnZXN0aW9uIHRob3VnaCwgSSBjYW4gZml4IHRoYXQgd2hlbgo+IGFwcGx5aW5n
LiBPciB5b3UgY2FuIHNlbmQgYSB2MyAtIHVwIHRvIHlvdSA6LSkKPiAKSSdsbCBjb3JyZWN0IHRv
IGxjZDFfcnN0X3BpbiBhbmQgc2VuZCBhIHYzIChtb3N0IGxpa2VseSBsYXRlciB0b2RheSkKPiAK
PiBIZWlrbwo+IAo+IAo+Pgo+Pj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QRDEgUktfRlVO
Q19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+PiArCQl9Owo+Pj4gKwl9Owo+Pj4gKwo+Pj4gICAJ
bGVkcyB7Cj4+PiAgIAkJcmVkX2xlZF9waW46IHJlZC1sZWQtcGluIHsKPj4+ICAgCQkJcm9ja2No
aXAscGlucyA9IDw0IFJLX1BEMiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPj4KPj4g
T3RoZXJ3aXNlLAo+Pgo+PiBSZXZpZXdlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGlkaS5kZWJp
YW5AY2tub3cub3JnPgo+Pgo+PiBDaGVlcnMsCj4+ICAgIERpZWRlcmlrCj4+Cj4gCj4gCj4gCj4g
CgotLSAKT2xpdmllciBCZW5qYW1pbiwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVs
IGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
