Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA5C1FF8855
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 18:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvzbzOuUFq5BN2sRrx0e2UsnZcw6g5wRfr7/Lc1g7ZQ=; b=T+g5SdF9etkTpn
	skuJCQMkv2e9udvADkRyoL2LlffJrSkZA0BBsz0NWXyIvv7hTpHEBRovjFaPp4J3JQjQONnUIVWtm
	Z6qel5cJF/8t0Jr9/dypmal7U+xYhy/bVxAETwhSaaS7ZMsMUn2Wc91cwgWY4XvXL9feIbOcYmt42
	z4V8k6lYtd34recrnZ4AmCbOL3SV8sIMX93aPQTfFiUIugX5yGX0tHZNWU63zFl537evnhz0HxOjT
	/FCwYyyFn5NzCZDpxxmaZIejF/pbCVRDdltGz0yNkw8iiXBtyYfEMBTX7Joe8aoacQS6pN0SI8SQB
	aprzuow4W49pVgfSIz0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKKPA-0000000H9ed-3Odx;
	Tue, 05 May 2026 18:22:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKKP8-0000000H9dm-1xaa;
	Tue, 05 May 2026 18:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+NayYgMtDF6eMt5wHcIeABn7hW6nMct4NLsdgagcCG4=; b=BPhLWpWMSlCd4dQZCMXdrt+E7g
	U1rDZPA7oP8C9wFmkslYXlBEXjttrLKH2kfJai9yOkEmtTdYNfYKr1rTnDBjABxU1J/bTgrwlzNcL
	f0ZPFAEU/wVkrAGPAK26DUonBOQ/Z6y5ItfE/LIYl3b3IIVz373YiN8xj8dociyLc7KuxMBKSwAK4
	feBoo+ybUh4W6huGMs3Mc5308LZOwntKCM6g+OLEDsM3PMm06N/D7C9mNYQYv269On8iKsQo+we6i
	AXrTS3V6IrgMfMVb0r00TDx2cD60z5diWQYRPvuxHqnrlJKkQvRT2Rumx/oBDpzOKrR7vygkqeqlH
	qWzHyiLQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Gray Huang <gray.huang@wesion.com>, Jimmy Hon <honyuenkwun@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 nick@khadas.com
Subject: Re: [PATCH v2 5/7] arm64: dts: rockchip: Add HDMI and VOP support for Khadas
 Edge 2L
Date: Tue, 05 May 2026 20:21:52 +0200
Message-ID: <4540610.k3LOHGUjKi@phil>
In-Reply-To: <CALWfF7K+g0sYLDQ9ROo1nGR9EADK44kVKQ_x=zonWD9eJLMDng@mail.gmail.com>
References: <20260429063712.2150938-1-gray.huang@wesion.com>
 <20260429063712.2150938-6-gray.huang@wesion.com>
 <CALWfF7K+g0sYLDQ9ROo1nGR9EADK44kVKQ_x=zonWD9eJLMDng@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_112158_502645_3317F4D8 
X-CRM114-Status: GOOD (  12.28  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gU2Ftc3RhZywgMi4gTWFpIDIwMjYsIDE5OjE5OjU4IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgSmltbXkgSG9uOgo+IE9uIFdlZCwgQXByIDI5LCAyMDI2IGF0IDE6Mzji
gK9BTSBHcmF5IEh1YW5nIDxncmF5Lmh1YW5nQHdlc2lvbi5jb20+IHdyb3RlOgo+ID4KPiA+IEVu
YWJsZSB0aGUgVmlkZW8gT3V0cHV0IFByb2Nlc3NvciAoVk9QKSBhbmQgdGhlIEhETUkgVFggY29u
dHJvbGxlcgo+ID4gdG8gc3VwcG9ydCBIRE1JIGRpc3BsYXkgb3V0cHV0IG9uIHRoZSBLaGFkYXMg
RWRnZSAyTC4gQWxzbywgZW5hYmxlCj4gPiB0aGUgYXNzb2NpYXRlZCBIRE1JIFBIWS4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBHcmF5IEh1YW5nIDxncmF5Lmh1YW5nQHdlc2lvbi5jb20+Cj4gCj4g
PCBzbmlwID4KPiAKPiA+ICsKPiA+ICsmaGRtaV9zb3VuZCB7Cj4gPiArICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKPiA+ICt9Owo+IFRvIGhhdmUgaGRtaSBzb3VuZCB3b3JraW5nLCB5b3UnbGwgYWxz
byBuZWVkIHRvIGVuYWJsZSBzYWk2LiBTaW1pbGFyCj4gdG8gdGhlIHVwZGF0ZSBmb3Igcm9jay00
ZAo+IGU2MDY2ZWRjOTQxMzE5MTQ3OWIwNTU5NmJhMDZjNDA5MDhmNDRlMjIKCkkndmUgYWxyZWFk
eSBhcHBsaWVkIHRoZSBoZG1pK3ZvcCBwYXRjaCBmcm9tIHYxLCBzbyBpZiB5b3Ugd2FudCB0bwpk
byB0aGlzLCBwbGVhc2UgZG8gYSBzZXBhcmF0ZSBwYXRjaC4KClRoYW5rcwpIZWlrbwoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
