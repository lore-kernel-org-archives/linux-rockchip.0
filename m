Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3089FC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 16:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JHPYquqqDIjycifaTJNQrYQs0yB8xSB6p5eKlX+pcA=; b=0xDCDHggCRYve0
	bnmMTYAxwJ16HIZIOn5rXiucPXoJdwjaKuEKSm2opfv9TOGseXBq38tw2vK0v6Y3qre4PNGDSY1kJ
	KH0qTx0R6B2DJFQDip+Y1iPnwc4lSXXMYinq3xq3Gz8RfFCGearxfizwa8K259o03q8rvclhdMnPM
	yrBioY0t+QAmtlm9wmVlFKSL8a1/NuOkLF+M23k0C+vucviceHd3xHp/pAKcmyMjPLtPU/dZEvXxI
	i8v4HLLfUVai/O6Bpa6Cyi4Z0Sa22a2BVLEJCB8yn0KUnIG+4khWC5tjoLuz4vvjUfVGO9hpH29Q6
	rQcf5kd0phJsFjSTt9qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLnNV-00HMJh-0x;
	Fri, 05 Jan 2024 16:49:01 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLnNR-00HMHs-2E;
	Fri, 05 Jan 2024 16:48:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1704473327; bh=oo3jPHfQQbPi8LrBuaocSKYLMQM9huUgqwSe+AhwAGw=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=xao9KpgyLXysZVA2SJl1CSqyJpVmtX3oToZY/o8VzAujGyow+xSdbf7we5Oag7Kz3
	 XqCmirM6wZT8YSmi2PxcGhQW1L5xIlCaCdq0UJznaGi+2WPXdfbK1YJVbveBfye3i/
	 bgU9I8m3boxWeyjxhlO95oRZEc5KjA/FIv5hzQhI=
Date: Fri, 5 Jan 2024 17:48:46 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Manuel Traut <manut@mecka.net>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Mark Yao <markyao0591@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, 
	Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>, 
	Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64
 PineTab2
Message-ID: <elumjkchw5m6rcb73l4ouemjgk7nsgkeu576ybbkc5nbvcpiyi@txkepy7wqops>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Manuel Traut <manut@mecka.net>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Mark Yao <markyao0591@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, 
	Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>, 
	Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
 <vj3elmkt6czisvwqouv2hhvut2va5jw6bbj5kjyxawvrnrdfwm@tlpo3dp3qcyb>
 <ZZgqF5hLO8UThPep@mecka.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZZgqF5hLO8UThPep@mecka.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_084857_897091_A20809EE 
X-CRM114-Status: GOOD (  25.83  )
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

T24gRnJpLCBKYW4gMDUsIDIwMjQgYXQgMDU6MTE6MDNQTSArMDEwMCwgTWFudWVsIFRyYXV0IHdy
b3RlOgo+IE9uIFdlZCwgSmFuIDAzLCAyMDI0IGF0IDEwOjQyOjU0QU0gKzAxMDAsIE9uZMWZZWog
SmlybWFuIHdyb3RlOgo+ID4gSGVsbG8gTWFudWVsLAo+ID4gCj4gPiBhIGZldyBtb3JlIHRoaW5n
cyBJIG5vdGljZWQ6Cj4gPiAKPiA+IE9uIFR1ZSwgSmFuIDAyLCAyMDI0IGF0IDA1OjE1OjQ3UE0g
KzAxMDAsIE1hbnVlbCBUcmF1dCB3cm90ZToKPiA+ID4gRnJvbTogQWxleGFuZGVyIFdhcm5lY2tl
IDxhd2FybmVja2UwMDJAaG90bWFpbC5jb20+Cj4gPiA+IAo+ID4gPiArCWxlZHMgewo+ID4gPiAr
CQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7Cj4gPiA+ICsKPiA+ID4gKwkJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKPiA+ID4gKwkJcGluY3RybC0wID0gPCZmbGFzaF9sZWRfZW5faD47Cj4g
PiA+ICsKPiA+ID4gKwkJbGVkLTAgewo+ID4gPiArCQkJZ3Bpb3MgPSA8JmdwaW80IFJLX1BBNSBH
UElPX0FDVElWRV9ISUdIPjsKPiA+ID4gKwkJCWNvbG9yID0gPExFRF9DT0xPUl9JRF9XSElURT47
Cj4gPiA+ICsJCQlmdW5jdGlvbiA9IExFRF9GVU5DVElPTl9GTEFTSDsKPiA+ID4gKwkJfTsKPiA+
IAo+ID4gVGhpcyBMRUQgaXMgc3VwcGxpZWQgYnkgVkNDNVZfTUlEVSwgc28gbWF5YmUgdGhpcyBz
aG91bGQgYmUgYSByZWd1bGF0b3ItbGVkCj4gPiBzdXBwbGllZCBieSBncGlvIChGTEFTSF9MRURf
RU5fSCkgY29udHJvbGxlZCByZWd1bGF0b3ItZml4ZWQgbmFtZWQgZl9sZWQgd2hpY2gKPiA+IGlz
IGluIHR1cm4gc3VwcGxpZWQgYnkgVkNDNVZfTUlEVS4KPiA+IAo+ID4gaHR0cHM6Ly9tZWdvdXMu
Y29tL2RsL3RtcC85YmYwZDg1ZDc4OTQ2YjVlLnBuZwo+IAo+IHJlZ3VsYXRvci1sZWRzIGFyZSBj
b250cm9sbGVkIGJ5IHR1cm5pbmcgb24gb3Igb2ZmIHRoZSByZWd1bGF0b3IuIEhvd2V2ZXIKPiBW
Q0M1Vl9NSURVIGlzIGFsc28gdXNlZCBieSBvdGhlciBkZXZpY2VzIChVU0IsIEhETUksIC4uKSBz
byBJIGd1ZXNzIHRoaXMgaXMKPiBub3Qgd2hhdCB3ZSB3YW50LiBJIHdvdWxkIGtlZXAgaXQgYXMg
aXMuCgpJdCdzIHVzZWQgYnkgdGhlIExFRC4gZ3Bpby1sZWRzIHdpbGwgbm90IGVuc3VyZSBpdCdz
IG9uIHdoZW4geW91IGVuYWJsZSB0aGUgTEVELgoKSW4gcHJhY3RpY2UgdGhpcyBtYXkgb25seSBj
b21lIHVwIGlmIHNvbWVvbmUgdHJpZXMgdG8gc2F2ZSBwb3dlciBieSB1bmxvYWRpbmcKZHdjMyBV
U0IgZHJpdmVyLCB3aGVuIHVzaW5nIFBUMiBvdXRzaWRlIG9mIHRoZSBrZXlib2FyZCBjYXNlLiBP
dGhlcndpc2UKVkNDNVZfTUlEVSB3aWxsIGJlIGVuYWJsZWQgYnkgRFdDMyBkcml2ZXIncyB1c2Ug
b2YgUEhZIEFQSS4KCkluIGFueSBjYXNlLCBJJ20gbm90IHNheWluZyB5b3Ugc2hvdWxkIHVzZSBW
Q0M1Vl9NSURVIGRpcmVjdGx5IGluIHJlZ3VsYXRvci1sZWQsCmJ1dCBhcyBhIHZpbi1zdXBwbHkg
dG8gYSBuZXcgcmVndWxhdG9yLWZpeGVkIG5vZGUgKHdoaWNoIHdvdWxkIGJlIGRlc2NyaWJpbmcK
dGhpcyAiZml4ZWQgdm9sdGFnZSByZWd1bGF0b3IiIGh0dHBzOi8vbWVnb3VzLmNvbS9kbC90bXAv
Y2M2NWVjODFhYjlhZjE2My5wbmcgKS4KCj4gPiA+ICsJfTsKPiA+ID4gKwo+ID4gPiBbLi4uXQo+
ID4gPgo+ID4gPiArCj4gPiA+ICsJc3BlYWtlcl9hbXA6IHNwZWFrZXItYW1wbGlmaWVyIHsKPiA+
ID4gKwkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYXVkaW8tYW1wbGlmaWVyIjsKPiA+ID4gKwkJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ID4gKwkJcGluY3RybC0wID0gPCZzcGtfY3RsPjsK
PiA+ID4gKwkJZW5hYmxlLWdwaW9zID0gPCZncGlvNCBSS19QQzIgR1BJT19BQ1RJVkVfSElHSD47
Cj4gPiA+ICsJCXNvdW5kLW5hbWUtcHJlZml4ID0gIlNwZWFrZXIgQW1wbGlmaWVyIjsKPiA+ID4g
KwkJVkNDLXN1cHBseSA9IDwmdmNjX2JhdD47Cj4gPiA+ICsJfTsKPiA+ID4gKwo+ID4gPiArCXZj
Y18zdjM6IHZjYy0zdjMgewo+ID4gPiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7
Cj4gPiA+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjY18zdjMiOwo+ID4gPiArCQlyZWd1bGF0b3It
YWx3YXlzLW9uOwo+ID4gPiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiA+ID4gKwkJcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiA+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92
b2x0ID0gPDMzMDAwMDA+Owo+ID4gPiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPiA+
ID4gKwl9Owo+ID4gPiArCj4gPiA+ICsJdmNjM3YzX21pbmlwY2llOiB2Y2MzdjMtbWluaXBjaWUg
ewo+ID4gPiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiA+ICsJCWVuYWJs
ZS1hY3RpdmUtaGlnaDsKPiA+ID4gKwkJZ3BpbyA9IDwmZ3BpbzQgUktfUEMzIEdQSU9fQUNUSVZF
X0hJR0g+Owo+ID4gPiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiArCQlwaW5j
dHJsLTAgPSA8JnBjaWVfcHdyZW5faD47Cj4gPiA+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2
M19taW5pcGNpZSI7Cj4gPiA+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+
Owo+ID4gPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiA+ID4gKwkJ
dmluLXN1cHBseSA9IDwmdmNjX3N5cz47Cj4gPiAKPiA+IFRoaXMgcmVndWxhdG9yIGlzIHN1cHBs
aWVkIGJ5IHZjY19iYXQ6IGh0dHBzOi8vbWVnb3VzLmNvbS9kbC90bXAvNGVjNzFhNGEyYWVhOTQ5
OC5wbmcKPiAKPiBjb3JyZWN0LCBJIHdpbGwgdXBkYXRlIHRoaXMgaW4gdjQuCj4gCj4gPiA+ICsJ
fTsKPiA+ID4gKwo+ID4gPiArCXZjYzN2M19zZDogdmNjM3YzLXNkIHsKPiA+ID4gKwkJY29tcGF0
aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gPiArCQlncGlvID0gPCZncGlvMCBSS19QQTUg
R1BJT19BQ1RJVkVfSElHSD47Cj4gPiA+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4g
PiA+ICsJCXBpbmN0cmwtMCA9IDwmc2RtbWNfcHdyZW5fbD47Cj4gPiA+ICsJCXJlZ3VsYXRvci1u
YW1lID0gInZjYzN2M19zZCI7Cj4gPiA+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMz
MDAwMDA+Owo+ID4gPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiA+
ID4gKwkJdmluLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4gPiA+ICsJfTsKPiA+ID4gKwo+ID4g
PiArCXZjYzV2MF91c2JfaG9zdDA6IHZjYzV2MC11c2ItaG9zdDAgewo+ID4gPiArCQljb21wYXRp
YmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiA+ICsJCWVuYWJsZS1hY3RpdmUtaGlnaDsKPiA+
ID4gKwkJZ3BpbyA9IDwmZ3BpbzQgUktfUEM0IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPiArCQlw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiArCQlwaW5jdHJsLTAgPSA8JnVzYl9ob3N0
X3B3cmVuMV9oPjsKPiA+ID4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3VzYl9ob3N0MCI7
Cj4gPiA+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gPiArCQly
ZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiA+ID4gKwkJdmluLXN1cHBseSA9
IDwmdmNjNXZfbWlkdT47Cj4gPiA+ICsJfTsKPiA+ID4gKwo+ID4gPiArCXZjYzV2MF91c2JfaG9z
dDI6IHZjYzV2MC11c2ItaG9zdDIgewo+ID4gPiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1m
aXhlZCI7Cj4gPiA+ICsJCWVuYWJsZS1hY3RpdmUtaGlnaDsKPiA+ID4gKwkJZ3BpbyA9IDwmZ3Bp
bzQgUktfUEM1IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPiArCQlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+ID4gPiArCQlwaW5jdHJsLTAgPSA8JnVzYl9ob3N0X3B3cmVuMl9oPjsKPiA+ID4g
KwkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3VzYl9ob3N0MiI7Cj4gPiA+ICsJCXJlZ3VsYXRv
ci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jv
dm9sdCA9IDw1MDAwMDAwPjsKPiA+ID4gKwkJdmluLXN1cHBseSA9IDwmdmNjNXZfbWlkdT47Cj4g
PiA+ICsJfTsKPiA+ID4gKwo+ID4gPiArCXZjY19iYXQ6IHZjYy1iYXQgewo+ID4gPiArCQljb21w
YXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiA+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZj
Y19iYXQiOwo+ID4gPiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gPiArCQlyZWd1bGF0b3It
Ym9vdC1vbjsKPiA+ID4gKwl9Owo+ID4gPiArCj4gPiA+ICsJdmNjX3N5czogdmNjLXN5cyB7Cj4g
PiA+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4gKwkJcmVndWxhdG9y
LW5hbWUgPSAidmNjX3N5cyI7Cj4gPiA+ICsJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiA+ICsJ
CXJlZ3VsYXRvci1ib290LW9uOwo+ID4gPiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2NfYmF0PjsKPiA+
ID4gKwl9Owo+ID4gPiArCj4gPiA+ICsJdmRkMXYyX2R2cDogdmRkMXYyLWR2cCB7Cj4gPiA+ICsJ
CWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4gKwkJcmVndWxhdG9yLW5hbWUg
PSAidmRkMXYyX2R2cCI7Cj4gPiA+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDEyMDAw
MDA+Owo+ID4gPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAwPjsKPiA+ID4g
KwkJdmluLXN1cHBseSA9IDwmdmNjXzN2Mz47Cj4gPiA+ICsJCS8qZW5hYmxlLXN1cHBseSA9IDwm
dmNjMnY4X2R2cD47Ki8KPiA+ID4gKwl9Owo+ID4gCj4gPiBUaGVyZSdzIG5vIHZkZDF2Ml9kdnAg
aW4gdGhlIHNjaGVtYXRpYyBvbiB0aGUgY2FtZXJhIHNlbnNvciBjb25uZWN0b3IsIG9yIGVsc2V3
aGVyZToKPiA+Cj4gPiAgIGh0dHBzOi8vbWVnb3VzLmNvbS9kbC90bXAvZmQ5NWYwMDNkOGYzZmJm
Yi5wbmcKPiAKPiBJdCBpcyBvbiBwYWdlIDUgaW4gdGhlIHBvd2VyIGRpYWdyYW0gb24gdGhlIHJp
Z2h0IHRvcC4KClRoYXQgKFBvd2VyIGRpYWdyYW0gb3ZlcnZpZXcpIGlzIGlycmVsZXZhbnQgcGFy
dCBvZiB0aGUgc2NoZW1hdGljLiBDYW4gYmUgYW5kCm9mdGVuIGlzIHdyb25nLiBZb3UgbmVlZCB0
byB1c2UgYWN0dWFsIGRldGFpbGVkIHBhcnRzIG9mIHRoZSBzY2hlbWF0aWMsIHdoaWNoCmlzIHdo
YXQgaXMgYWN0dWFsbHkgdXNlZCB0byByb3V0ZSB0aGUgUENCIHRyYWNlcy4KCmtpbmQgcmVnYXJk
cywKCW8uCgo+ID4gU28gSSBndWVzcywgeW91IGNhbiBkcm9wIHRoaXMsIGVudGlyZWx5LiBNYXli
ZSBpdCdzIFZERDFWNV9EVlAgYnV0IEkgZG9uJ3QgdGhpbmsKPiA+IGl0IG5lZWRzIHRvIGJlIGRl
c2NyaWJlZCBpbiBEVCwgc2luY2UgaXQncyBwcmV0dHkgbG9jYWwgdG8gdGhpcyBjYW1lcmEgc2Vu
c29yLAo+ID4gYW5kIG5vdGhpbmcgZWxzZSB1c2VzIGl0Lgo+ID4gCj4gPiAgIGh0dHBzOi8vbWVn
b3VzLmNvbS9kbC90bXAvN2ZjMzg0ZTE5NmM1NDI4Zi5wbmcKPiAKPiBkdmRkLXN1cHBseSBpcyBh
IHJlcXVpcmVkIHByb3BlcnR5IG9mIHRoZSBvdjU2NDggY2FtZXJhLCBzbyBJIHdvdWxkIHRlbmQg
dG8ga2VlcAo+IHRoaXMuIEJ1dCB1cyB2Y2Nfc3lzIGZvciB2aW4tc3VwcGx5IGluc3RlYWQgb2Yg
dmNjXzN2My4KPiAKPiBSZWdhcmRzCj4gTWFudWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
