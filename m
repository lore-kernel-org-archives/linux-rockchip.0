Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2E4DC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTOUIRMTOY4z5pJlrTUQFXJYOGRz7kOKzNGoWRrUcTs=; b=akywxezASMBcni
	84RMpnnugT3L9X+ZbvNSAlT+KWbP+zPs5E2vw0OlT8H2gcacQswh8Nfj1zI0wE7PJw/rBWb07d5jB
	lU3L3Nej68bGK8lu227qdiCHUhhoFnTp23GgxkT97ndXbNUcOLAYH4clnfEydAQp094WubGncf/N+
	Fy+PUr9CYOheSYqTJdK0tieL/PdH3ynv9e/kUhsnRVvWjb7hr8fio9NpRD3sU4oapVyKqNHQMoRDR
	tU37ZL45UkLZoJsXyGbFD30PpF9UQHlmMUEuJQblD7dm5ytpzSeCIpNQAbfhNnrlvfmjJcFHlYLLq
	SkHjLR7BgaZaNbdeAK0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLmn0-00HH7Z-2L;
	Fri, 05 Jan 2024 16:11:18 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLmmw-00HH66-2S;
	Fri, 05 Jan 2024 16:11:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1704471069; bh=scRaWWoI9TurorlydzlbrmexlJ5AF4ZUMgBpMJ6yCQ8=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=rjg0gFzndNziXNNA+a0FA5OO8jv9mYpGi8AEo/Dcv9PBAl46InjVt3ZqXfv3ZufAj
	 OznAyeCsh0+RRIlV0VHSNQLhtBk9d4OuNePZeyBsUf7UXLwKWDqASCxGoTIzJfhgDq
	 p/pznipJe/LUAYkOqnc+F9gns4AdpwXQWdPGXZfLzoAAuPCQjfdC5W70v0RtXsiDap
	 vaOb1eE+uEEswJkI/Yy3OFRRA3UDXkj5ueis5S2oFRoSIK9bR/9mzWTOyU7gdP30ZO
	 8O3qH7tfn4XwOUWaEOIaP865Lj+rQCrqRHmMGNLckrCbTyY7RFr7gkoxwE6kX6hR1V
	 uyXkJyfECEnSw==
Received: from mecka.net (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 4ADCF37C331;
	Fri,  5 Jan 2024 17:11:09 +0100 (CET)
Date: Fri, 5 Jan 2024 17:11:03 +0100
From: Manuel Traut <manut@mecka.net>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>,
	Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64
 PineTab2
Message-ID: <ZZgqF5hLO8UThPep@mecka.net>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
 <vj3elmkt6czisvwqouv2hhvut2va5jw6bbj5kjyxawvrnrdfwm@tlpo3dp3qcyb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <vj3elmkt6czisvwqouv2hhvut2va5jw6bbj5kjyxawvrnrdfwm@tlpo3dp3qcyb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_081114_974570_4DEDE70E 
X-CRM114-Status: GOOD (  20.11  )
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

T24gV2VkLCBKYW4gMDMsIDIwMjQgYXQgMTA6NDI6NTRBTSArMDEwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gSGVsbG8gTWFudWVsLAo+IAo+IGEgZmV3IG1vcmUgdGhpbmdzIEkgbm90aWNlZDoK
PiAKPiBPbiBUdWUsIEphbiAwMiwgMjAyNCBhdCAwNToxNTo0N1BNICswMTAwLCBNYW51ZWwgVHJh
dXQgd3JvdGU6Cj4gPiBGcm9tOiBBbGV4YW5kZXIgV2FybmVja2UgPGF3YXJuZWNrZTAwMkBob3Rt
YWlsLmNvbT4KPiA+IAo+ID4gKwlsZWRzIHsKPiA+ICsJCWNvbXBhdGlibGUgPSAiZ3Bpby1sZWRz
IjsKPiA+ICsKPiA+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArCQlwaW5jdHJs
LTAgPSA8JmZsYXNoX2xlZF9lbl9oPjsKPiA+ICsKPiA+ICsJCWxlZC0wIHsKPiA+ICsJCQlncGlv
cyA9IDwmZ3BpbzQgUktfUEE1IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gKwkJCWNvbG9yID0gPExF
RF9DT0xPUl9JRF9XSElURT47Cj4gPiArCQkJZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05fRkxBU0g7
Cj4gPiArCQl9Owo+IAo+IFRoaXMgTEVEIGlzIHN1cHBsaWVkIGJ5IFZDQzVWX01JRFUsIHNvIG1h
eWJlIHRoaXMgc2hvdWxkIGJlIGEgcmVndWxhdG9yLWxlZAo+IHN1cHBsaWVkIGJ5IGdwaW8gKEZM
QVNIX0xFRF9FTl9IKSBjb250cm9sbGVkIHJlZ3VsYXRvci1maXhlZCBuYW1lZCBmX2xlZCB3aGlj
aAo+IGlzIGluIHR1cm4gc3VwcGxpZWQgYnkgVkNDNVZfTUlEVS4KPiAKPiBodHRwczovL21lZ291
cy5jb20vZGwvdG1wLzliZjBkODVkNzg5NDZiNWUucG5nCgpyZWd1bGF0b3ItbGVkcyBhcmUgY29u
dHJvbGxlZCBieSB0dXJuaW5nIG9uIG9yIG9mZiB0aGUgcmVndWxhdG9yLiBIb3dldmVyClZDQzVW
X01JRFUgaXMgYWxzbyB1c2VkIGJ5IG90aGVyIGRldmljZXMgKFVTQiwgSERNSSwgLi4pIHNvIEkg
Z3Vlc3MgdGhpcyBpcwpub3Qgd2hhdCB3ZSB3YW50LiBJIHdvdWxkIGtlZXAgaXQgYXMgaXMuCgo+
ID4gKwl9Owo+ID4gKwo+ID4gWy4uLl0KPiA+Cj4gPiArCj4gPiArCXNwZWFrZXJfYW1wOiBzcGVh
a2VyLWFtcGxpZmllciB7Cj4gPiArCQljb21wYXRpYmxlID0gInNpbXBsZS1hdWRpby1hbXBsaWZp
ZXIiOwo+ID4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICsJCXBpbmN0cmwtMCA9
IDwmc3BrX2N0bD47Cj4gPiArCQllbmFibGUtZ3Bpb3MgPSA8JmdwaW80IFJLX1BDMiBHUElPX0FD
VElWRV9ISUdIPjsKPiA+ICsJCXNvdW5kLW5hbWUtcHJlZml4ID0gIlNwZWFrZXIgQW1wbGlmaWVy
IjsKPiA+ICsJCVZDQy1zdXBwbHkgPSA8JnZjY19iYXQ+Owo+ID4gKwl9Owo+ID4gKwo+ID4gKwl2
Y2NfM3YzOiB2Y2MtM3YzIHsKPiA+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsK
PiA+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjY18zdjMiOwo+ID4gKwkJcmVndWxhdG9yLWFsd2F5
cy1vbjsKPiA+ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+ID4gKwkJcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAw
MDAwPjsKPiA+ICsJCXZpbi1zdXBwbHkgPSA8JnZjYzN2M19zeXM+Owo+ID4gKwl9Owo+ID4gKwo+
ID4gKwl2Y2MzdjNfbWluaXBjaWU6IHZjYzN2My1taW5pcGNpZSB7Cj4gPiArCQljb21wYXRpYmxl
ID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiArCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4gPiArCQln
cGlvID0gPCZncGlvNCBSS19QQzMgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiArCQlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+ID4gKwkJcGluY3RybC0wID0gPCZwY2llX3B3cmVuX2g+Owo+ID4g
KwkJcmVndWxhdG9yLW5hbWUgPSAidmNjM3YzX21pbmlwY2llIjsKPiA+ICsJCXJlZ3VsYXRvci1t
aW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8MzMwMDAwMD47Cj4gPiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKPiAKPiBUaGlzIHJl
Z3VsYXRvciBpcyBzdXBwbGllZCBieSB2Y2NfYmF0OiBodHRwczovL21lZ291cy5jb20vZGwvdG1w
LzRlYzcxYTRhMmFlYTk0OTgucG5nCgpjb3JyZWN0LCBJIHdpbGwgdXBkYXRlIHRoaXMgaW4gdjQu
Cgo+ID4gKwl9Owo+ID4gKwo+ID4gKwl2Y2MzdjNfc2Q6IHZjYzN2My1zZCB7Cj4gPiArCQljb21w
YXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiArCQlncGlvID0gPCZncGlvMCBSS19QQTUg
R1BJT19BQ1RJVkVfSElHSD47Cj4gPiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4g
KwkJcGluY3RybC0wID0gPCZzZG1tY19wd3Jlbl9sPjsKPiA+ICsJCXJlZ3VsYXRvci1uYW1lID0g
InZjYzN2M19zZCI7Cj4gPiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsK
PiA+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4gKwkJdmluLXN1
cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4gPiArCX07Cj4gPiArCj4gPiArCXZjYzV2MF91c2JfaG9z
dDA6IHZjYzV2MC11c2ItaG9zdDAgewo+ID4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4
ZWQiOwo+ID4gKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOwo+ID4gKwkJZ3BpbyA9IDwmZ3BpbzQgUktf
UEM0IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiA+ICsJCXBpbmN0cmwtMCA9IDwmdXNiX2hvc3RfcHdyZW4xX2g+Owo+ID4gKwkJcmVndWxhdG9y
LW5hbWUgPSAidmNjNXYwX3VzYl9ob3N0MCI7Cj4gPiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9s
dCA9IDw1MDAwMDAwPjsKPiA+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+
Owo+ID4gKwkJdmluLXN1cHBseSA9IDwmdmNjNXZfbWlkdT47Cj4gPiArCX07Cj4gPiArCj4gPiAr
CXZjYzV2MF91c2JfaG9zdDI6IHZjYzV2MC11c2ItaG9zdDIgewo+ID4gKwkJY29tcGF0aWJsZSA9
ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOwo+ID4gKwkJZ3Bp
byA9IDwmZ3BpbzQgUktfUEM1IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gKwkJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKPiA+ICsJCXBpbmN0cmwtMCA9IDwmdXNiX2hvc3RfcHdyZW4yX2g+Owo+
ID4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3VzYl9ob3N0MiI7Cj4gPiArCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiA+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92
b2x0ID0gPDUwMDAwMDA+Owo+ID4gKwkJdmluLXN1cHBseSA9IDwmdmNjNXZfbWlkdT47Cj4gPiAr
CX07Cj4gPiArCj4gPiArCXZjY19iYXQ6IHZjYy1iYXQgewo+ID4gKwkJY29tcGF0aWJsZSA9ICJy
ZWd1bGF0b3ItZml4ZWQiOwo+ID4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjX2JhdCI7Cj4gPiAr
CQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gKwkJcmVndWxhdG9yLWJvb3Qtb247Cj4gPiArCX07
Cj4gPiArCj4gPiArCXZjY19zeXM6IHZjYy1zeXMgewo+ID4gKwkJY29tcGF0aWJsZSA9ICJyZWd1
bGF0b3ItZml4ZWQiOwo+ID4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjX3N5cyI7Cj4gPiArCQly
ZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gKwkJcmVndWxhdG9yLWJvb3Qtb247Cj4gPiArCQl2aW4t
c3VwcGx5ID0gPCZ2Y2NfYmF0PjsKPiA+ICsJfTsKPiA+ICsKPiA+ICsJdmRkMXYyX2R2cDogdmRk
MXYyLWR2cCB7Cj4gPiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiArCQly
ZWd1bGF0b3ItbmFtZSA9ICJ2ZGQxdjJfZHZwIjsKPiA+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92
b2x0ID0gPDEyMDAwMDA+Owo+ID4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTIwMDAw
MD47Cj4gPiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2NfM3YzPjsKPiA+ICsJCS8qZW5hYmxlLXN1cHBs
eSA9IDwmdmNjMnY4X2R2cD47Ki8KPiA+ICsJfTsKPiAKPiBUaGVyZSdzIG5vIHZkZDF2Ml9kdnAg
aW4gdGhlIHNjaGVtYXRpYyBvbiB0aGUgY2FtZXJhIHNlbnNvciBjb25uZWN0b3IsIG9yIGVsc2V3
aGVyZToKPgo+ICAgaHR0cHM6Ly9tZWdvdXMuY29tL2RsL3RtcC9mZDk1ZjAwM2Q4ZjNmYmZiLnBu
ZwoKSXQgaXMgb24gcGFnZSA1IGluIHRoZSBwb3dlciBkaWFncmFtIG9uIHRoZSByaWdodCB0b3Au
Cgo+IFNvIEkgZ3Vlc3MsIHlvdSBjYW4gZHJvcCB0aGlzLCBlbnRpcmVseS4gTWF5YmUgaXQncyBW
REQxVjVfRFZQIGJ1dCBJIGRvbid0IHRoaW5rCj4gaXQgbmVlZHMgdG8gYmUgZGVzY3JpYmVkIGlu
IERULCBzaW5jZSBpdCdzIHByZXR0eSBsb2NhbCB0byB0aGlzIGNhbWVyYSBzZW5zb3IsCj4gYW5k
IG5vdGhpbmcgZWxzZSB1c2VzIGl0Lgo+IAo+ICAgaHR0cHM6Ly9tZWdvdXMuY29tL2RsL3RtcC83
ZmMzODRlMTk2YzU0MjhmLnBuZwoKZHZkZC1zdXBwbHkgaXMgYSByZXF1aXJlZCBwcm9wZXJ0eSBv
ZiB0aGUgb3Y1NjQ4IGNhbWVyYSwgc28gSSB3b3VsZCB0ZW5kIHRvIGtlZXAKdGhpcy4gQnV0IHVz
IHZjY19zeXMgZm9yIHZpbi1zdXBwbHkgaW5zdGVhZCBvZiB2Y2NfM3YzLgoKUmVnYXJkcwpNYW51
ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
