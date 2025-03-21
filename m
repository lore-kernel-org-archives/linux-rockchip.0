Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 330F1C28B30
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Mar 2025 03:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=05otT53RD/aAyP+T0NC42EuVK+jIcJUTHvHw/a8Dthw=; b=GGzLAmnVGbr47SXbozX726wxy0
	0Xx0SIkFrSa7ou7uA3A0gMlR0nAeCdjjx6QO/yIzSs/nHy9WJ6fowqTtBcuYCyYcnjs/fXI6ta9Kt
	7xklKcHxUz7JEr5w5W7BD696Xq+/Tfp+6RvPGpP9lrnlJ1wpFVjavzJH39j8ONNQx5k8xIdj5NFro
	xQXpOFyXp/bzDZGqwBm/XA0X6+tVqi4+8Av96wQa7ExxrNFwxP88QxSPreRy5tIZ6Rh5KAzp9CYa2
	+mZ0wuiusr/RPuYzQxMuR53dsdORF+ZHc9vRmQgyKvb8cOUnmeRa9WYciQ5jtKyEVrnwrjke9pGgo
	CT3I5iNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvTDt-0000000DlVi-3vMO;
	Fri, 21 Mar 2025 03:39:05 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvTCA-0000000DlKc-3ZYG;
	Fri, 21 Mar 2025 03:37:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1742528236;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r0RO79xWz5uplYpgJ0aagZslkAQuZeU7KWZBSxdHL84=;
	b=uwFpPbx4k0pVxvvfDCpYP9Lzo0PEsFw0hCtQgOZaLCL2HzQkhNv8Dl5BtayT85WnavzCDg
	oYm392g5GozjLeSKyGuv+x+YJ1O2bRm+jffBPguQDC1GNYy/JeHAlS4tqYQIVyoo8xQ473
	nszaAOusS6l6X+z8GmM/Thqd0f2owCeK3h/zCW0WiM4W1KFeGBMB6LzrhR/NYAXX6AbgpY
	cFpjpnxUwAdHGQlMBQx1DCwV8Nk6Bd2hwSB6RaKGHNH70zGc5kvdqJsGh/2QfKfJ/wNxu4
	K+Ult3oMOtD/ysjULEgMXyYAWf3QHRDVrPPQOyEe9DrhbMCzOHnOoUN8h30B+Q==
Date: Fri, 21 Mar 2025 04:37:16 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Quentin Schulz <quentin.schulz@cherry.de>, Alexey Charkov
 <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Viresh Kumar
 <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas
 <didi.debian@cknow.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 7/8] arm64: dts: rockchip: Add OPP data for CPU cores
 on RK3588j
In-Reply-To: <80c7d9fcdd270df2c61fbd61eec44d70@manjaro.org>
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
 <a56b59a21dc3c21192fe45197eee4865@manjaro.org>
 <2cf3889741f84584d8f23a4407fed08e@manjaro.org> <3271211.5fSG56mABF@phil>
 <80c7d9fcdd270df2c61fbd61eec44d70@manjaro.org>
Message-ID: <4432e7f5dd9cb75584fb36e1f52497aa@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_203719_178753_3E18076C 
X-CRM114-Status: GOOD (  19.19  )
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

SGVsbG8gYWxsLAoKT24gMjAyNS0wMy0xMyAyMDo0MywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9u
IDIwMjUtMDMtMTMgMjA6MDAsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+PiBBbSBEb25uZXJzdGFn
LCAxMy4gTcOkcnogMjAyNSwgMTE6NDI6MTcgTUVaIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+Pj4g
T24gMjAyNS0wMy0xMiAxMTozNCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj4gSnVzdCBhcyBhIG5v
dGUsIGV2ZXJ5dGhpbmcgYWJvdmUgKGFuZCBldmVuIGEgYml0IG1vcmUpIGlzIGNvbmZpcm1lZAo+
Pj4gYW5kIGNsZWFybHkgZGVzY3JpYmVkIGluIHRoZSBwdWJsaWNseSBhdmFpbGFibGUgUkszNTg4
SiBkYXRhc2hlZXQsCj4+PiB3aGljaCBJJ2xsIHByb3ZpZGUgYXMgYSByZWZlcmVuY2UgaW4gbXkg
dXBjb21pbmcgcGF0Y2guCj4+IAo+PiBzbyBqdXN0IHRvIHJlaXRlcmF0ZSBteSBzdGFuY2UsIGlu
IG1haW5saW5lIEkgcmVhbGx5IG9ubHkgd2FudCAKPj4gZnJlcXVlbmNpZXMKPj4gdGhhdCBhcmUg
bm90IHBvc3NpYmx5IGluZmx1ZW5jaW5nIHRoZSBsaWZldGltZSBvZiB0aGUgY2hpcC4KPj4gCj4+
IEl0IGRvZXNuJ3QgZXZlbiBtYXR0ZXIgYWJvdXQgdGhlIHZhcmlhbnQgd2UncmUgdGFsa2luZyBh
Ym91dCBiZWluZwo+PiBpbmR1c3RyaWFsIDotKSAuIFdoZW4gc29tZW9uZSBpcyB1c2luZyBtYWlu
bGluZSBJIHdhbnQgdGhlbSB0byBiZQo+PiByZWFzb25hYmxlIGFzc3VyZWQgdGhhdCB3ZSBkb24n
dCBoYXZlIHN0dWZmIGluIGhlcmUgdGhhdCBtYXkgYWZmZWN0Cj4+IHRoZSBsaWZldGltZSBvZiB0
aGVpciBib2FyZC4KPj4gCj4+IEFsbCBnYW1ibGluZyBvbiBwZXJmb3JtYW5jZSBmb3IgcG9zc2li
bGUgbGlmZXRpbWUgcmVkdWN0aW9uIHBlb3BsZQo+PiBjYW4gZG8gb24gdGhlaXIgb3duIC4uLiBm
b3IgZXhhbXBsZSB3aXRoIGEgZHQtb3ZlcmxheSA7LSkgLgo+PiAKPj4gU28gVEw7RFIsIEkgYWdy
ZWUgdG8gYm90aCBRdWVudGluIGFuZCBEcmFnYW4KPiAKPiBUaGFua3MhICBJbmRlZWQsIHdlIG11
c3QgcHJvdmlkZSBvbmx5IHRoZSBPUFBzIHRoYXQgYXJlIGRlY2xhcmVkCj4gYnkgdGhlIG1hbnVm
YWN0dXJlciB0byBiZSBhbHdheXMgc2FmZSBmb3IgdGhlIHBhcnRpY3VsYXIgU29DCj4gdmFyaWFu
dC4gIFRoZSBSSzM1ODhKIGlzIGFjdHVhbGx5IGEgZ29vZCBleGFtcGxlLCBiZWNhdXNlIGl0LCBp
bgo+IHRoZW9yeSwgY2FuIHJ1biBzYWZlbHkgYXQgaGlnaGVyIE9QUHMgYXMgd2VsbCwgYnV0IG9u
bHkgd2hlbiBub3QKPiBlbmpveWluZyB0aGUgZXh0ZW5kZWQgdGVtcGVyYXR1cmUgcmFuZ2UgdGhh
dCB0aGUgUkszNTg4SiwgYXMgYW4KPiBTb0MgdmFyaWFudCB0YXJnZXRlZCBhdCBpbmR1c3RyaWFs
IGFwcGxpY2F0aW9ucywgaXMgc3BlY2lmaWNhbGx5Cj4gbWFkZSAob3IgYmlubmVkKSBmb3IuCj4g
Cj4gVGh1cywgd2UgbXVzdCBzdXBwb3J0IG9ubHkgdGhlIFJLMzU4OEogT1BQcyB0aGF0IGFyZSBk
ZWNsYXJlZCB0bwo+IGJlIHNhZmUgdGhyb3VnaG91dCB0aGUgZW50aXJlIGV4dGVuZGVkIHRlbXBl
cmF0dXJlIHJhbmdlLCB3aGlsZQo+IGFueW9uZSB3aG8gYWN0dWFsbHkgY2FuIGFzc3VyZSB0aGF0
IHRoZWlyIFJLMzU4OEotYmFzZWQgYm9hcmQgaXMKPiBuZXZlciBnb2luZyB0byBydW4gd2l0aGlu
IHRoZSBleHRlbmRlZCB0ZW1wZXJhdHVyZSByYW5nZSwgcHJvYmFibHkKPiBtYXkgc2FmZWx5IGFw
cGx5IGFuIG92ZXJsYXkgdGhhdCBhZGRzIHRoZSBoaWdoZXIgT1BQcy4gIEFzIHdlCj4gb2J2aW91
c2x5IGNhbid0IGtub3cgd2hhdCB3aWxsIGJlIHRoZSB0ZW1wZXJhdHVyZSBjb25kaXRpb25zLCB3
ZQo+IG1heSBwcm92aWRlIG9ubHkgdGhlIGxvd2VyIE9QUHMgdGhhdCBhcmUgYWx3YXlzIHNhZmUu
Cj4gCj4gSSdsbCBmaW5pc2ggdGhlIHBhdGNoIGFuZCBzZW5kIGl0IG92ZXIgdG9tb3Jyb3cgb3Ig
c28uLi4gIEkgc3RpbGwKPiBuZWVkIHRvIGdvIHRocm91Z2ggdGhlIGNoYW5nZXMgb25jZSBhZ2Fp
biwgdG8gbWFrZSAxMDAlIHN1cmUgSSd2ZQo+IG1pc3NlZCBub3RoaW5nLCBhbmQgdGhhdCBJIGhh
dmVuJ3QgaW5jbHVkZWQgYW55dGhpbmcgZXh0cmFuZW91cy4gOikKCkZvciBmdXR1cmUgcmVmZXJl
bmNlIGFuZCBmb3IgYW55b25lIGludGVyZXN0ZWQsIGJlbG93IGlzIHRoZSBsaW5rCnRvIHRoZSBh
Ym92ZS1tZW50aW9uZWQgcGF0Y2guCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2Nr
Y2hpcC9mOTI5ZGEwNjFkZTM1OTI1ZWE1OTFjOTY5Zjk4NTQzMGUyM2M0YTdlLjE3NDI1MjY4MTEu
Z2l0LmRzaW1pY0BtYW5qYXJvLm9yZy9ULyN1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
