Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C836BC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 07:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ec18ymHL14dtru9sDASJVZj1bAJwEimiCxkACdolGE=; b=DUGX3FcLDEGGOd
	KiO2YfCLFMxQl3OC3CeXhefjJDTrCk5sExZG/fA8lZ5vE32G4E5y2IIWbIW+CR+RDalhim18wpqxd
	7VJBTcu3rQo7a2gCh5r11QAlG+qZSkoOdppTECVPSmXtXqyeMmqCwex30jcOWvFZuPdYUPCmrDh9D
	wrVm5Y0ylxfooc2rWtbjF7MMpV+VaJIDUSZse+AmCMS9tA7ZIQaNestYE593N1wUY6PO+bhZkGIR3
	nk/3Rn+L4eV35Nb9eDbcAFrJWnY34ZcTMSq7CmUMJcyaTGEDWh1LbEMjHpyztbbyZT/7XeYGiA5UA
	FDjVQlZlTs/fNVMXHU1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pciG8-00FXeG-2r;
	Thu, 16 Mar 2023 07:42:48 +0000
Received: from wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pciG4-00FXcx-1v
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Mar 2023 07:42:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=ZWwGTHexF6h20HWK4/YZaywEOo9OIk01UmuCZ40Dnr0=;
	b=AC/8Lf21I8hh2e+1LlOiZsfEQJdSnnRFdU+qOunRG0NfscVXCnB0F4IGSuqCV1DHQUAE
	uFwcKBIB5FuyFySW5kIY182bv+W7F1b/EoMCe+1izR4m4NSyzBbS0S5+cCuRRB0Q/reI8A
	n8LLC4QCxjEklcCHCifOeMTWfKKlOCrfeOtbCm/xOzDYqBfa2K/EviXLUc8NiJ2R/NfZAV
	WfqDpP9uBRqWl36Fna/SZVx9dZLmNEXZEy8qUVAgD2qH2VEe0Y63cB09OKlrohqDq33QIe
	/xQn0tNPNGwWiM5YCcv9REagYEgyXc4gSSwj1qLLH2HBfPNflUJfWoRnzhx/aTWg==
Received: by filterdrecv-7946957d94-r22tt with SMTP id filterdrecv-7946957d94-r22tt-1-6412C72D-2B
        2023-03-16 07:37:18.137528517 +0000 UTC m=+1929878.570872038
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-5 (SG) with ESMTP
	id cGqmaXWQSM-1ucf0-jjlAQ
	Thu, 16 Mar 2023 07:37:17.573 +0000 (UTC)
Message-ID: <71b16513-49b1-d9b3-b0b9-4c47e68563ba@kwiboo.se>
Date: Thu, 16 Mar 2023 07:37:18 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: fix gmac support for NanoPi R5S
References: <20230315160228.2362-1-cnsztl@gmail.com>
 <20230315160228.2362-5-cnsztl@gmail.com>
 <CA+E=qVei7T4T0FWhdUFnr5JbCWSgFbGLcmU2OHxx54yvnNR6mw@mail.gmail.com>
 <CAOP2_TiU815F528jVGvDbcg3kSG+ykepU-ZYz7VWMO84GgcwMg@mail.gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CAOP2_TiU815F528jVGvDbcg3kSG+ykepU-ZYz7VWMO84GgcwMg@mail.gmail.com>
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h8fP5Wx2WYJ38D5dU?=
 =?us-ascii?Q?wcR+6Srt3JMfPlR6UGX3NWLrZR0xg25ke7YP8l7?=
 =?us-ascii?Q?a57FER1y1AHZBnD4zO+alVSlLkO7N5CS8jouvNq?=
 =?us-ascii?Q?X4ZPd9hhEFNYblsqd7X6zfUlgWjLEEYY1OvWiTx?=
 =?us-ascii?Q?xvpiizuDFF+MDNprZzdRvnmInh5RcGbJJGy8VuS?=
 =?us-ascii?Q?aHnHqM2ZOUNxrYk0ONG=2Fw=3D=3D?=
To: Tianling Shen <cnsztl@gmail.com>, Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>, Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>, Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>, Sebastian Reichel
	<sebastian.reichel@collabora.com>, Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>, Maya Matuszczyk
	<maccraft123mc@gmail.com>, Andrew Powers-Holmes <aholmes@omnom.net>,
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_004244_766589_FA6670A5 
X-CRM114-Status: GOOD (  23.83  )
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

SGkgVGlhbmxpbmcsCk9uIDIwMjMtMDMtMTYgMDY6MzQsIFRpYW5saW5nIFNoZW4gd3JvdGU6Cj4g
SGkgVmFzaWx5LAo+IAo+IE9uIFRodSwgTWFyIDE2LCAyMDIzIGF0IDg6MTbigK9BTSBWYXNpbHkg
S2hvcnV6aGljayA8YW5hcnNvdWxAZ21haWwuY29tPiB3cm90ZToKPj4KPj4gT24gV2VkLCBNYXIg
MTUsIDIwMjMgYXQgOTowMuKAr0FNIFRpYW5saW5nIFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+IHdy
b3RlOgo+Pj4KPj4+IC0gQ2hhbmdlZCBwaHktbW9kZSB0byByZ21paS4KPj4+Cj4+PiAtIEZpeGVk
IHB1bGwgdHlwZSBpbiBwaW5jdHJsIGZvciBnbWFjMC4KPj4+Cj4+PiAtIFJlbW92ZWQgZHVwbGlj
YXRlIHByb3BlcnRpZXMgaW4gbWRpbyBub2RlLgo+Pj4gICBUaGVzZSBwcm9wZXJ0aWVzIGFyZSBk
ZWZpbmVkIGluIHRoZSBnbWFjMCBub2RlIGFscmVhZHkuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTog
VGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4KPj4+IC0tLQo+Pj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LW5hbm9waS1yNXMuZHRzIHwgNyArKy0tLS0tCj4+PiAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtbmFub3BpLXI1
cy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVzLmR0
cwo+Pj4gaW5kZXggZTlhZGY1ZTY2NTI5Li4yYTExMThmMTVjMjkgMTAwNjQ0Cj4+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVzLmR0cwo+Pj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtbmFub3BpLXI1cy5kdHMKPj4+
IEBAIC01Nyw3ICs1Nyw3IEBACj4+PiAgICAgICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDA+
LCA8MTI1MDAwMDAwPjsKPj4+ICAgICAgICAgY2xvY2tfaW5fb3V0ID0gIm91dHB1dCI7Cj4+PiAg
ICAgICAgIHBoeS1oYW5kbGUgPSA8JnJnbWlpX3BoeTA+Owo+Pj4gLSAgICAgICBwaHktbW9kZSA9
ICJyZ21paS1pZCI7Cj4+PiArICAgICAgIHBoeS1tb2RlID0gInJnbWlpIjsKPj4+ICAgICAgICAg
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+ICAgICAgICAgcGluY3RybC0wID0gPCZnbWFj
MF9taWltCj4+PiAgICAgICAgICAgICAgICAgICAgICAmZ21hYzBfdHhfYnVzMgo+Pj4gQEAgLTc5
LDkgKzc5LDYgQEAKPj4+ICAgICAgICAgICAgICAgICByZWcgPSA8MT47Cj4+PiAgICAgICAgICAg
ICAgICAgcGluY3RybC0wID0gPCZldGhfcGh5MF9yZXNldF9waW4+Owo+Pj4gICAgICAgICAgICAg
ICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+PiAtICAgICAgICAgICAgICAgcmVzZXQt
YXNzZXJ0LXVzID0gPDEwMDAwPjsKPj4+IC0gICAgICAgICAgICAgICByZXNldC1kZWFzc2VydC11
cyA9IDw1MDAwMD47Cj4+PiAtICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW8wIFJL
X1BDNCBHUElPX0FDVElWRV9MT1c+Owo+Pgo+PiBIbW0sIEkgZG9uJ3Qgc2VlIFJLX1BDNCBiZWlu
ZyB1c2VkIGFueXdoZXJlIGVsc2UuIGdtYWMwIGhhcyBSS19QQzUgYXMKPiAKPiBZZXMsIGl0J3Mg
YSB0eXBvLCBpdCBzaG91bGQgYmUgUktfUkM1Lgo+IAo+PiBzbnNwLHJlc2V0LWdwaW8uIFNvIGl0
IGVzc2VudGlhbGx5IGRyb3BzIHJlc2V0IGZvciB0aGUgUEhZLiBJcyBpdAo+PiBleHBlY3RlZD8K
PiAKPiBzbnNwLHJlc2V0LWdwaW8gZGVmaW5lZCByZXNldCBhbHJlYWR5LCBzbyB3ZSBkb24ndCBu
ZWVkIHRvIHNldCBpdCBoZXJlIGFnYWluLgo+IAo+IC0tLQo+IAo+IHNuc3AscmVzZXQtZ3BpbyBp
cyB0aGUgbGVnYWN5IGJpbmRpbmcsIGJ1dCBJIHN0aWxsIGhhdmUgbm8gaWRlYSB3aHkKPiByZXNl
dC1ncGlvcyBkb2Vzbid0IHdvcmssCj4gdGhlIGR3bWFjIGRyaXZlciB3aWxsIGZhaWwgdG8gbG9v
a3VwIHBoeToKPiAKPiBbICAgMTAuMzk4NTE0XSBya19nbWFjLWR3bWFjIGZlMmEwMDAwLmV0aGVy
bmV0IGV0aDA6IG5vIHBoeSBmb3VuZAo+IFsgICAxMC4zOTkwNjFdIHJrX2dtYWMtZHdtYWMgZmUy
YTAwMDAuZXRoZXJuZXQgZXRoMDogX19zdG1tYWNfb3BlbjoKPiBDYW5ub3QgYXR0YWNoIHRvIFBI
WSAoZXJyb3I6IC0xOSkKPiAKPiBBbnkgaWRlYXMgd291bGQgYmUgYXBwcmVjaWF0ZWQuCgpHZW5l
cmljIGV0aGVybmV0IHBoeSBkcml2ZXIgaXMgbm90IHJlc2V0dGluZyB0aGUgcGh5IGluIHRoZSBz
YW1lIHdheQp0aGF0IHNuc3AscmVzZXQtZ3BpbyBkb2VzLCBwbGVhc2Ugc2VlIHRvcCB0d28gY29t
bWl0cyBhdCBbMV0uCgpJIGhhdmUgYmVlbiBtZWFuaW5nIHRvIHNlbmQgdGhhdCBvdXQgYXMgYW4g
UkZDIGJ1dCBJIGdvdCBzdHVjayBpbiBhCnUtYm9vdCByYWJiaXQgaG9sZSwgYW5kIEkgYWxzbyBk
byBub3Qga25vdyB3aGF0IHRoZSBjb3JyZWN0IHdheSB0byBmaXgKdGhpcyB3b3VsZCBiZSwgc28g
SSBwbGF5ZWQgd2l0aCBib3RoIGRldmljZSB0cmVlIGFuZCBjb2RlIGNoYW5nZXMuCldpbGwgcHJp
b3JpdGl6ZSB0aGlzIGFuZCBzZW5kIG91dCBhIFJGQyBsYXRlciB0b2RheS4KClsxXSBodHRwczov
L2dpdGh1Yi5jb20vS3dpYm9vL2xpbnV4LXJvY2tjaGlwL2NvbW1pdHMvcmszNTY4LWV0aC1waHkt
cmVzZXQKClJlZ2FyZHMsCkpvbmFzCgo+IAo+IFRoYW5rcywKPiBUaWFubGluZy4KPiAKPj4KPj4+
ICAgICAgICAgfTsKPj4+ICB9Owo+Pj4KPj4+IEBAIC0xMTUsNyArMTEyLDcgQEAKPj4+ICAmcGlu
Y3RybCB7Cj4+PiAgICAgICAgIGdtYWMwIHsKPj4+ICAgICAgICAgICAgICAgICBldGhfcGh5MF9y
ZXNldF9waW46IGV0aC1waHkwLXJlc2V0LXBpbiB7Cj4+PiAtICAgICAgICAgICAgICAgICAgICAg
ICByb2NrY2hpcCxwaW5zID0gPDAgUktfUEM0IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rvd24+
Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwwIFJLX1BDNCBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Cj4+PiAgICAgICAgICAgICAgICAgfTsKPj4+ICAg
ICAgICAgfTsKPj4+Cj4+PiAtLQo+Pj4gMi4xNy4xCj4+PgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
