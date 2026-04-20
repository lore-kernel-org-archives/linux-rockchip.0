Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55B64F5580B
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Apr 2026 11:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bvc/qG0sluulwYzIFgt5d59WJpw7l9AQ0MngisI2ws8=; b=fZt9dKIPL79mim
	3B8z09fSZgbeYRHejVBwZxodPorQeRgeIgG049ap6n9OeplLYmgYDOjkRB7k4foO9oGdNjlyIo5xc
	Hsqbn8NHf8Y4TI/It314IaPSFRZ17oWEe83bOdVwJa1nnJ6ZW+NWQumr5WzfGnboSrdd+iQMpHBPV
	Hk3cYhv0NheKurplUPD2yGwdcj7eMlwzRv91jgRtBcPWlcM1iPe7NRvg0o+syOGY4sRuoSCuwPHfn
	LDUHuvDUrGfIS4IMTrEtNg75L9rIcAckHuTPiFtSFKI+9NJa0uCDqVhaq0McxjjN7UN8THHZYYqIA
	uLsfFPjKtQZ0vtWa6ssQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmMj-00000006lBl-3LpV;
	Mon, 20 Apr 2026 11:00:33 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmMg-00000006lB6-2o1o;
	Mon, 20 Apr 2026 11:00:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776682826;
	bh=PLPNmgPAxeK5mYLQnnUXuoPE4aCHhmjsyDeuAgufwss=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=K0CY6tvZ839+ED5+JnvY8glBhKFO790KScWfvsNhZDE9pe4jF7PrB2Kic+moM9ZW3
	 BIMal4m2vnG6ohpyr2fQrSFew483858a5b26SmlEuJbPp8jlIBh/QdXrFNXi3g0oDj
	 kaJVEkPIdbGwNncdTi+RkrpomJ7ry+gwM7tTMx9SXcwFkTkzzH+boQ1JaWTRz0C2W2
	 dnmU7FH1m8muVP55ogcfnrHSzuaqVwNda+qefEMeGqYVIovbCSnv0q5ZFz8qr152qg
	 RXiseB/qzTH0cnFahf7JzeZ5WxXvPCJuXEiQs0d2OiOa7s1ayeC3o0y90v0ZCWapkC
	 4V3yepyJhcRCg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1CAE617E1388;
	Mon, 20 Apr 2026 13:00:26 +0200 (CEST)
Message-ID: <401a020f-ca5d-4c7d-941e-f0288e144357@collabora.com>
Date: Mon, 20 Apr 2026 14:00:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3576-luckfox-core3576
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
 <2000470.6tgchFWduM@phil>
 <62f51359-9d91-4107-917b-cd722c7321c2@collabora.com>
 <2282688.C4sosBPzcN@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2282688.C4sosBPzcN@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_040030_858746_E34BCE81 
X-CRM114-Status: GOOD (  26.33  )
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

SGkgSGVpa28sCgpPbiA0LzE4LzI2IDI6MTIgQU0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEhp
IENyaXN0aWFuLAo+IAo+IEFtIEZyZWl0YWcsIDE3LiBBcHJpbCAyMDI2LCAxODozNDoxNyBNaXR0
ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPj4g
T24gNC8xNy8yNiAyOjMyIFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4+IHRoZSBjb21tZW50
cyBiZWxvdyBhcHBseSBzb3J0IG9mIHRvIGFsbCBwYXRjaGVzIGluIHRoYXQgc2VyaWVzLgo+Pj4K
Pj4+IEFtIEZyZWl0YWcsIDE3LiBBcHJpbCAyMDI2LCAxMToyNDozOSBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPj4+PiBUaGUgYm9hcmQg
ZXhwb3NlcyB0aGUgR1BJTzRfQzYgbGluZSB0byBjb250cm9sIHRoZSB2b2x0YWdlIGJpYXMgb24g
dGhlCj4+Pj4gSERNSSBkYXRhIGxpbmVzLiAgSXQgbXVzdCBiZSBhc3NlcnRlZCB3aGVuIG9wZXJh
dGluZyBpbiBIRE1JIDIuMSBGUkwKPj4+PiBtb2RlIGFuZCBkZWFzc2VydGVkIGZvciBIRE1JIDEu
NC8yLjAgVE1EUyBtb2RlLgo+Pj4+Cj4+Pj4gV2lyZSB1cCB0aGUgSERNSSBub2RlIHRvIHRoZSBH
UElPIGxpbmUgdXNpbmcgdGhlIGZybC1lbmFibGUtZ3Bpb3MKPj4+PiBwcm9wZXJ0eSBhbmQgZHJv
cCB0aGUgbGluZSBmcm9tIHRoZSB2Y2NfNXYwX2hkbWkgcmVndWxhdG9yIHRvIGFsbG93Cj4+Pj4g
YWRqdXN0aW5nIHRoZSBiaWFzIHdoZW4gdHJhbnNpdGlvbmluZyBiZXR3ZWVuIFRNRFMgYW5kIEZS
TCBvcGVyYXRpbmcKPj4+PiBtb2Rlcy4KClsuLi5dCgo+Pj4KPj4+Cj4+Pj4gQEAgLTIzMSw2ICsy
MjgsOCBAQCAmZ3B1IHsKPj4+PiAgfTsKPj4+PiAgCj4+Pj4gICZoZG1pIHsKPj4+PiArCXBpbmN0
cmwtMCA9IDwmaGRtaV90eG0wX3BpbnMgJmhkbWlfdHhfc2NsICZoZG1pX3R4X3NkYSAmaGRtaV9m
cmxfZW4+Owo+Pj4+ICsJZnJsLWVuYWJsZS1ncGlvcyA9IDwmZ3BpbzQgUktfUEM2IEdQSU9fQUNU
SVZFX0xPVz47Cj4+Pgo+Pj4gdGhpcyBzaG91bGQgYmUgc29ydGVkIHRoZSBvdGhlciB3YXkgYXJv
dW5kIEkgdGhpbmsuCj4+Pgo+Pj4gQWxzbyBwbGVhc2UgcHJvdmlkZSBhIHBpbmN0cmwtbmFtZXMg
cHJvcGVydHkgdG9vLiBJZiBmb3Igd2hhdGV2ZXIgcmVhc29uCj4+PiB0aGUgZHctaGRtaSBhcXVp
cmVzIGEgMm5kIHBpbmN0cmwgc3RhdGUgaW4gdGhlIGZ1dHVyZSwgdGhpcyBtYWtlcyBzdXJlCj4+
PiBib2FyZCBEVHMgYXJlIHN0YXlpbmcgaW4gdGhlICJvbGQiIGNvbXBhdGlibGUgbW9kZSB1bnRp
bCB0aGV5IGFyZSBhZGFwdGVkLgo+Pgo+PiBKdXN0IHRvIG1ha2Ugc3VyZSBJIGZ1bGx5IHVuZGVy
c3RhbmQsIHRoZSBjb252ZW50aW9uIGlzIHRoYXQgCj4+Cj4+ICAgcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKPj4KPj4gc2hvdWxkIGJlIGFsd2F5cyBwcm92aWRlZCwgZXZlbiB3aGVuIHRoZSBu
b2RlIG92ZXJyaWRlcyBhbiBleGlzdGluZyBwaW5jdHJsLTAKPj4gcHJvcGVydHk/Cj4+Cj4+IEUu
Zy4gaW4gcmszNTc2LmR0c2kgd2UgaGF2ZToKPj4KPj4gICBoZG1pOiBoZG1pQDI3ZGEwMDAwIHsK
Pj4gICAgIC4uLgo+PiAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gICAgIHBpbmN0
cmwtMCA9IDwmaGRtaV90eG0wX3BpbnMgJmhkbWlfdHhfc2NsICZoZG1pX3R4X3NkYT47Cj4+ICAg
ICAuLi4KPj4gICB9Cj4+Cj4+IEhlbmNlIEkgb21pdHRlZCBwaW5jdHJsLW5hbWVzIHdoaWNoIGRv
ZXNuJ3QgY2hhbmdlIGFuZCBqdXN0IGFwcGVuZGVkCj4+ICZoZG1pX2ZybF9lbiB0byBwaW5jdHJs
LTAncyBvcmlnaW5hbCB2YWx1ZS4KPiAKPiBjb3JyZWN0LCBwbGVhc2UgYWx3YXlzIHByb3ZpZGUg
YSBwaW5jdHJsLW5hbWVzIGVudHJ5IHdoZW4gc2V0dGluZyBhIG5ldwo+IHBpbmN0cmwtMCAuCj4g
Cj4gVGhlIGJhY2tncm91bmQgaXMsIGltYWdpbmUgeW91IGhhdmUgYSBiYXNlOgo+IAo+IHBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gcGluc3RybC0wID0gPC4uLi4+Owo+IAo+IGFuZCBvdmVy
cmlkZSBwaW5jdHJsLTAgaW4gYSBib2FyZC4KPiAKPiBOb3cgYSBuZXdlciBiaW5kaW5nIGludHJv
ZHVjZXMgYSAybmQgcGluY3RybCBzdGF0ZSAiZm9vIi4gT2YgY291cnNlCj4gd2UncmUgYmFja3dh
cmRzIGNvbXBhdGlibGUsIGFuZCBib3RoIGFyZSB2YWxpZCBhbmQgdGhlIGRyaXZlciBjaGVja3MK
PiB3aGF0IHN0YXRlcyBhcmUgZGVmaW5lZC4KPiAKPiBTbyB0aGUgYmFzZSBzZXRzOgo+IHBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCIsICJmb28iOwo+IHBpbmN0cmwtMCA9IDwuLi4+Owo+IHBpbmN0
cmwtMSA9IDwuLi4+Owo+IAo+IGluIHlvdXIgKG9sZCkgYm9hcmQgeW91IG92ZXJyaWRlIHBpbmN0
cmwtMCwgYnV0IHRoZSBkcml2ZXIgc3RpbGwgc2Vlcwo+IHRoZSBuZXcgdmFyaWFudCB3aXRoIDIg
cGluY3RybCBzdGF0ZXMsIHdoZXJlIGl0IHNob3VsZCd2ZSBzdGF5ZWQgd2l0aAo+IHRoZSBsZWdh
Y3kgMS1zdGF0ZSwgdW50aWwgdGhlIGJvYXJkLWR0cyBtaWdodCBnZXQgYWRhcHRlZCBpbiB0aGUg
ZnV0dXJlLgo+IAo+IAo+IEFuZCBJIGtub3csIHdlJ3JlIGxpa2VseSBub3QgZG9pbmcgdGhhdCBl
dmVyeXdoZXJlLCBhbmQgYWxzbyBpbiBtb3N0Cj4gY2FzZXMgaXQgd29uJ3QgcmVhbGx5IG1hdHRl
ciwgYnV0IHN0aWxsIGl0IGlzIHNhZmVyIGFuZCBzZXRzIHRoZSBiZXR0ZXIKPiBwcmVjZWRlbnQg
Oi0pIC4KClRoYW5rcyBmb3IgdGhlIGRldGFpbGVkIGV4cGxhbmF0aW9uLCB0aGF0IGNsZWFycyB0
aGluZ3MgdXAhCgpUaGVyZSBhcmUgc2V2ZXJhbCBvdGhlciBub2RlcyAoZS5nLiBpMmMsIHB3bSwg
dWFydCkgdGhhdCBhbHNvIGxhY2sKcGluY3RybC1uYW1lcyBkZXNwaXRlIHByb3ZpZGluZyBwaW5j
dHJsLTAgLSBJIGNhbiBhZGRyZXNzIHRob3NlIGluIGEKc2VwYXJhdGUgcGF0Y2guCgpJIGFsc28g
bm90aWNlZCBhbiBpbmNvbnNpc3RlbmN5IGluIHByb3BlcnR5IG9yZGVyaW5nOiBzb21lIG5vZGVz
IHBsYWNlCnBpbmN0cmwtbmFtZXMgYmVmb3JlIHBpbmN0cmwtPG4+IGFuZCBvdGhlcnMgYWZ0ZXIu
ICBJIGhhdmUgYWx3YXlzIHVzZWQKdGhlIGZvcm1lciwgYnV0IHdlIHNob3VsZCBwcm9iYWJseSBw
cmVmZXIgdGhlIGxhdHRlciB0byBzdGF5IGNvbnNpc3RlbnQKd2l0aCBob3cgY2xvY2tzLCByZXNl
dHMsIHBoeXMsIGV0Yy4gYXJlIG9yZGVyZWQuCgpUaG91Z2h0cz8KCj4gCj4+Pj4gIAlzdGF0dXMg
PSAib2theSI7Cj4+Pj4gIH07Cj4+Pj4gIAo+Pj4+IEBAIC02NTUsNyArNjU0LDcgQEAgJnBjaWUw
IHsKPj4+PiAgCj4+Pj4gICZwaW5jdHJsIHsKPj4+PiAgCWhkbWkgewo+Pj4+IC0JCWhkbWlfY29u
X2VuOiBoZG1pLWNvbi1lbiB7Cj4+Pj4gKwkJaGRtaV9mcmxfZW46IGhkbWktZnJsLWVuIHsKPj4+
Cj4+PiBwaW5jdHJsIG5hbWVzIHNob3VsZCBpZGVhbGx5IG1hdGNoIHRoZSBuYW1pbmcgaW4gc2No
ZW1hdGljcywgZm9yIGV4YW1wbGUgdGhlCj4+PiAiSERNSTBfVFhfT05fSCIgZm9yIGphZ3VhciBh
bmQgdGlnZXIuIFRoaXMgbWFrZXMgaXQgd2F5IGVhc2llciB0bz4gZ28gZnJvbSBEVAo+Pj4gdG8g
c2NoZW1hdGljcyBhbmQgYmFjay4KPj4KPj4gSSBvcHRlZCBmb3IgYSBtb3JlIGRlc2NyaXB0aXZl
IG5hbWUgdGhhdCBjb3VsZCBiZSB1c2VkIGNvbnNpc3RlbnRseSBhY3Jvc3MgYWxsCj4+IGJvYXJk
cywgZ2l2ZW4gdGhhdCBub3QgYWxsIHNjaGVtYXRpY3MgYXJlIHB1YmxpY2x5IGF2YWlsYWJsZS4K
Pj4KPj4gWW91IG1ha2UgYSBmYWlyIHBvaW50IHRob3VnaCwgd2Ugc2hvdWxkIHByb2JhYmx5IHN0
aWNrIHdpdGggdGhlIHByZXR0eSB0ZXJyaWJsZQo+PiBoZG1pW05dX3R4X29uX2ggbmFtaW5nIGlu
c3RlYWQuCj4gCj4geWVwLCB3ZSdyZSBkb2luZyB0aGF0IGV2ZXJ5d2hlcmUgZWxzZSBhbHJlYWR5
IHRvbywgYW5kIHN0aWNraW5nIHRvIHRoZQo+IHNjaGVtYXRpY3MgbmFtaW5nLCBhbHNvIHByZXZl
bnRzIGFueSBkaXNjdXNzaW9ucyBhYm91dCBob3cgc29tZXRoaW5nCj4gc2hvdWxkIGJlIG5hbWVk
IDstKSAuCgpJbmRlZWQuIDopCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
