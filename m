Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A81C9C25B08
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 03:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95XhIKe2FbeAxwLAJrBPrjXZHCwmIJx4DAPtdB++GHA=; b=01+I/nOOkuYmfb
	/3UdGvOk0kDGvkMXrCiTBNShDi3k6Eb0+RbZEgkrL+uhXE6LktwLNym5FxTol6kk6UsUl96BIrbZJ
	yTF7ebzQ6qptaVG+7UglyhPMUx+adF1+n6O+fpahgjEBcpZ1gGhp9aOMWmJPlpHm2g2EjOysjYvhu
	Hb/jKt6Nu+uLVH+QkQniogtYqXRTsv/HLoRaoErMBWXwybn4LqmNeKOV9uQxA4HkSfG/tnIiQ1WEX
	363hl3i6ML6InKYwac53Hubadp3ZK5hx7JSH/oTJEpYIyVqQwFZ8AnVwwdV9mpCHHTilABM0fV2Jp
	6Th5cE8UulmaT6OLuA1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOVrJ-00CUz3-MX; Thu, 18 Aug 2022 03:06:13 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOVr7-00CUXH-Fi; Thu, 18 Aug 2022 03:06:03 +0000
Received: (Authenticated sender: n@nfraprado.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 52B6E60003;
	Thu, 18 Aug 2022 03:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nfraprado.net;
	s=gm1; t=1660791954;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mporQ/LMRdbnsbYtlIILmMxfCBfZDzlTdMBUAjIPcsg=;
	b=IcpIcdUTRD7DmskU8pFPNOkmZ5xlc8f7kqV4rN/V1AfHwYOK6Kmdg3vDzbkHwnSwg/Tz1J
	KE9DNgMmdTC9zwE0w4Y3d4bLoliajolZ/VmkQrl9LugMmSTrHpVHBjHznYTIigPc1k0cSI
	BeEJwtG/gooZsFCQphqv7gfwxQ1+BCJTtdcmrRoXufkm5ATwApPIl9G81XTZgujG9S3MVw
	DDFBvVNI16MqHQzZFHF2MkkNnvUfW9m7uqHWKOR++VZK2ndaWtIAFf51ICm4P6DcwYBbER
	Uuaa1zEmLu669G3kTT1pKg+T/0cyCnMvWF1CsDufk3OWPVbXmq0C3wNQ7T2jig==
Date: Wed, 17 Aug 2022 23:05:47 -0400
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <n@nfraprado.net>
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
	martijn@brixit.nl, ayufan@ayufan.eu, megi@xff.cz,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Message-ID: <20220818030547.eblbmchutmnn6jih@notapiano>
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
 <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_200601_854199_4AF6850F 
X-CRM114-Status: GOOD (  23.78  )
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

SGkgVG9tLAoKdGhhbmtzIGZvciBnZXR0aW5nIHRoZSB1cHN0cmVhbWluZyBvZiB0aGlzIERUIGdv
aW5nLiBTb21lIGNvbW1lbnRzIGJlbG93LgoKT24gTW9uLCBBdWcgMTUsIDIwMjIgYXQgMTA6MzA6
MDRQTSArMTAwMCwgVG9tIEZpdHpoZW5yeSB3cm90ZToKPiBGcm9tOiBNYXJ0aWpuIEJyYWFtIDxt
YXJ0aWpuQGJyaXhpdC5ubD4KPiAKPiBUaGlzIGlzIGEgYmFzaWMgRFQgY29udGFpbmluZyByZWd1
bGF0b3JzIGFuZCBVQVJULCBpbnRlbmRlZCB0byBiZSBhCj4gYmFzZSB0aGF0IG15c2VsZiBhbmQg
b3RoZXJzIGNhbiBhZGQgYWRkaXRpb25hbCBub2RlcyBpbiBmdXR1cmUgcGF0Y2hlcy4KPiAKPiBU
ZXN0ZWQgdG8gd29yazogYm9vdGluZyBmcm9tIGVNTUMsIG91dHB1dCBvdmVyIFVBUlQuCgpZb3Un
cmUgYWxzbyBhZGRpbmcgdGhlIFNEIGNvbnRyb2xsZXIgaGVyZS4gRG9lcyBpdCB3b3JrIGFzIGlz
PyBJZiBzbyBhZGQgaXQgdG8KdGhlIGNvbW1pdCBkZXNjcmlwdGlvbiBhcyB3ZWxsLgoKPiAKWy4u
XQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1waW5lcGhvbmUtcHJvLmR0cwo+IEBAIC0wLDAgKzEsMzk0IEBACj4gKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ICsvKgo+ICsgKiBDb3B5cmlnaHQg
KGMpIDIwMjAgTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+Cj4gKyAqIENvcHlyaWdo
dCAoYykgMjAyMSBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1Pgo+ICsgKi8KPiAr
Cj4gKy8qIFBpbmVQaG9uZSBQcm8gZGF0YXNoZWV0OgoKRmlyc3QgY29tbWVudCBsaW5lIHNob3Vs
ZCBiZSBlbXB0eSBmb2xsb3dpbmcgdGhlIGNvZGluZyBzdHlsZSBbMV0uIExpa2UgeW91IGRpZApm
b3IgdGhlIGNvcHlyaWdodHMgYWJvdmUuCgpbMV0gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2Mv
aHRtbC9sYXRlc3QvcHJvY2Vzcy9jb2Rpbmctc3R5bGUuaHRtbCNjb21tZW50aW5nCgo+ICsgKiBo
dHRwczovL2ZpbGVzLnBpbmU2NC5vcmcvZG9jL1BpbmVQaG9uZVByby9QaW5lcGhvbmVQcm8tU2No
ZW1hdGljLVYxLjAtMjAyMTExMjcucGRmCj4gKyAqLwpbLi5dCj4gKwl2Y2Nfc3lzaW46IHZjYy1z
eXNpbi1yZWd1bGF0b3Igewo+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiAr
CQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2Nfc3lzaW4iOwoKVGhpcyBzaWduYWwgaXMgY2FsbGVkIHZj
Y19zeXMgaW4gdGhlIGRhdGFzaGVldCwgc28gSSBzdWdnZXN0IHdlIGtlZXAgdGhhdCBuYW1lCmhl
cmUuIEl0J3Mgbm90IGV2ZXJ5ZGF5IHRoYXQgd2UgZ2V0IGEgZGV2aWNlIHdpdGggYSBwdWJsaWNs
eSBhdmFpbGFibGUgZGF0YXNoZWV0CjpeKS4KCj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiAr
CQlyZWd1bGF0b3ItYm9vdC1vbjsKPiArCX07ClsuLl0KPiArCXJrODE4OiBwbWljQDFjIHsKPiAr
CQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrODE4IjsKPiArCQlyZWcgPSA8MHgxYz47Cj4gKwkJ
aW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzE+Owo+ICsJCWludGVycnVwdHMgPSA8UktfUEM1IElS
UV9UWVBFX0xFVkVMX0xPVz47Cj4gKwkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+ICsJCWNsb2NrLW91
dHB1dC1uYW1lcyA9ICJ4aW4zMmsiLCAicms4MDgtY2xrb3V0MiI7CgpXaGF0IGFib3V0IGtlZXBp
bmcgdGhlIGRhdGFzaGVldCBuYW1lcyBoZXJlIHRvbz8gY2xrMzJrb3V0MSwgY2xrMzJrb3V0MgoK
PiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwpbLi5dCj4gKwkJCXZjY18xdjg6IHZjY193
bDogRENEQ19SRUc0IHsKCkZyb20gdGhlIGRhdGFzaGVldCwgdmNjX3dsIGlzIGFjdHVhbGx5IHdp
cmVkIHRvIHZjYzN2M19zeXMuIEJ1dCBsb29rcyBsaWtlCnZjY193bCBpcyBvbmx5IHVzZWQgZm9y
IGJsdWV0b290aCBhbmQgeW91J3JlIG5vdCBlbmFibGluZyBpdCB5ZXQgYW55d2F5LCBzbyBqdXN0
CmRyb3AgdGhpcyBleHRyYSBsYWJlbCwgYW5kIGl0IGNhbiBiZSBhZGRlZCB3aGVuIGJsdWV0b290
aCBpcyBhZGRlZCAob3Igbm90LCBhbmQKdGhlbiB0aGUgYmx1ZXRvb3RoIHN1cHBseSBqdXN0IHBv
aW50cyBkaXJlY3RseSB0byB2Y2MzdjNfc3lzKS4KCj4gKwkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2
Y2NfMXY4IjsKWy4uXQo+ICsJCQl2Y2NfcG93ZXJfb246IExET19SRUc0IHsKPiArCQkJCXJlZ3Vs
YXRvci1uYW1lID0gInZjY19wb3dlcl9vbiI7CgpUaGUgbmFtZSBvbiB0aGUgZGF0YXNoZWV0IGZv
ciB0aGlzIG9uZSBpcyByazgxOF9wd3Jfb24uCgo+ICsJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsK
Wy4uXQo+ICsmY2x1c3RlcjBfb3BwIHsKPiArCW9wcDA0IHsKPiArCQlzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+ICsJfTsKPiArCj4gKwlvcHAwNSB7Cj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAr
CX07Cj4gK307CgpJIHNhdyB0aGUgZGlzY3Vzc2lvbiBvbiB0aGUgcHJldmlvdXMgdmVyc2lvbiBh
Ym91dCB1c2luZyB0aGUgcmszMzk5LW9wcC5kdHNpCmhlcmUsIGJ1dCB0aGUgdGhpbmcgaXMsIHRo
aXMgT1BQIGhhcyBncmVhdGVyIHZhbHVlcyBmb3IgdGhlIG1heCB2b2x0YWdlIHRoYW4gdGhlCm1h
eGltdW0gYWxsb3dlZCBvbiB0aGUgT1BQIHRhYmxlIHlvdSBwb3N0ZWQgcHJldmlvdXNseSAoZm9y
IFJLMzM5OS1UKS4uLgoKU2FtZSB0aGluZyBmb3IgdGhlIEdQVSBPUFAuCgo+ICsKPiArJmNsdXN0
ZXIxX29wcCB7Cj4gKwlvcHAwNiB7Cj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCX07CgpU
aGVyZSdzIGFjdHVhbGx5IGFuIG9wcDA2IG5vZGUgaW4gdGhlIE9QUCBmb3IgUkszMzk5LVQsIG9u
bHkgdGhhdCB0aGUgZnJlcXVlbmN5CmlzIHNsaWdodGx5IGxvd2VyLiBNYXliZSB5b3UgY291bGQg
a2VlcCBpdCBlbmFibGVkIGJ1dCBvdmVycmlkZSB0aGUgZnJlcXVlbmN5PwoKT3IgZ2l2ZW4gdGhl
IGFib3ZlIHBvaW50IGFib3V0IHRoZSBtYXggdm9sdGFnZXMsIG1heWJlIGl0IHdvdWxkIGJlIGJl
c3QgdG8gaGF2ZQphIHNlcGFyYXRlIE9QUCB0YWJsZSBhZnRlciBhbGw/Cgo+ICsKPiArCW9wcDA3
IHsKPiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJfTsKPiArfTsKPiArCj4gKyZpb19kb21h
aW5zIHsKPiArCXN0YXR1cyA9ICJva2F5IjsKCkxldCdzIGtlZXAgdGhlIHN0YXR1cyBhdCB0aGUg
ZW5kIG9mIHRoZSBub2RlIGZvciBjb25zaXN0ZW5jeSB3aXRoIHRoZSByZXN0LgoKV2l0aCB0aGVz
ZSBwb2ludHMgYWRkcmVzc2VkOgoKUmV2aWV3ZWQtYnk6IE7DrWNvbGFzIEYuIFIuIEEuIFByYWRv
IDxuQG5mcmFwcmFkby5uZXQ+CgpJJ2xsIGFsc28gdHJ5IHRvIGdpdmUgdGhpcyBhIHRlc3Qgc2hv
cnRseS4KClRoYW5rcywKTsOtY29sYXMKCj4gKwo+ICsJYnQ2NTYtc3VwcGx5ID0gPCZ2Y2Mxdjhf
ZHZwPjsKPiArCWF1ZGlvLXN1cHBseSA9IDwmdmNjYTF2OF9jb2RlYz47Cj4gKwlzZG1tYy1zdXBw
bHkgPSA8JnZjY2lvX3NkPjsKPiArCWdwaW8xODMwLXN1cHBseSA9IDwmdmNjXzN2MD47Cj4gK307
ClsuLl0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
