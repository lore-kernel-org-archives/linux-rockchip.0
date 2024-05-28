Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D265DC25B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 14:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ut4jonCedNm6jNVwcFfID50f4miCfWYi17ZuE+O1Q1U=; b=R7nDSSFPAkTlQx0PZqY0sL/2Ec
	RCGdy0AAtPeFohy+pcsDzp/heb+9XN1g4JQV/Y3l3oHxO7HKta1F2TZ0VGgvUguacetLyIFPd2jxa
	YC2CbAllbyIjcKuz1s8RUqvXgETwjCiDANNsVfyvxpF/V/6pNUYwxSQILIJuRW8q0jZeFMbHA2LeV
	2yZL0sZubmhQ/QVFGQAb9bb5lHNk5hRTUBxj1WImvdnr+IH3w1obLz/x2wxs13HvFD09T70Z0cqON
	b52iF37cWQT6kXCiyPD9Q0ZVbU1rpRJpXiVq034zWDTddMJ8IeCFLgI1RFy1q+6fbSSpA+qIYyXYS
	qvO7+QQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxRy-00000000vU6-2quQ;
	Tue, 28 May 2024 14:05:14 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxRu-00000000vSU-2WpJ;
	Tue, 28 May 2024 14:05:12 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1716905104;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nR6PGtpqWBgYYKVijGtKvPaDw/ijTAXs71XPwiba6AE=;
	b=Qpa544JQMDRkOoJe07nQK4xF57CXLvIAu1zNfexR5ACS74dObK/J6x0QvxowEYvSoHexfG
	njg4A9zygVo2Bi5T9/8djj1eKPiTFEXsDChECQBHjrc/YksEDoncs6ijzENIdJ952Ya1nM
	jxv2xfXH1y0PBlg4rGHT82kTA7qMUKgUlmFcnnM+yiiZ/WUMUtyIUzjc9+hbfD9l0ilKqZ
	Figaw1QH6Bt52xZx2R4VY+lhNS32Q9RIxGaenr8Fnq9DbF3dN4RiSKYGcEN1eII19wU5Z0
	hTcflr4ivNsNUph387Ff4L4ZEa3f+ZcQJqgDXNSthuL6uMS3jjhtVc4bTcg+9A==
Date: Tue, 28 May 2024 16:05:04 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/6] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
In-Reply-To: <CABjd4YyuDsWGbSfNyqcW3s=59p8adVf5Js79PYyKFqfyM71dxA@mail.gmail.com>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <CABjd4YyuDsWGbSfNyqcW3s=59p8adVf5Js79PYyKFqfyM71dxA@mail.gmail.com>
Message-ID: <ea2311d7a41162a847d37ce05d0fc441@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_070511_279242_99036F00 
X-CRM114-Status: GOOD (  27.99  )
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

SGVsbG8gQWxleGV5IGFuZCBIZWlrbywKCk9uIDIwMjQtMDUtMjggMTE6NDksIEFsZXhleSBDaGFy
a292IHdyb3RlOgo+IE9uIE1vbiwgTWF5IDYsIDIwMjQgYXQgMTozN+KAr1BNIEFsZXhleSBDaGFy
a292IDxhbGNoYXJrQGdtYWlsLmNvbT4gCj4gd3JvdGU6Cj4+IAo+PiBUaGlzIGVuYWJsZXMgdGhl
cm1hbCBtb25pdG9yaW5nIGFuZCBDUFUgRFZGUyBvbiBSSzM1ODgocyksIGFzIHdlbGwgYXMKPj4g
YWN0aXZlIGNvb2xpbmcgb24gUmFkeGEgUm9jayA1QiB2aWEgdGhlIHByb3ZpZGVkIFBXTSBmYW4u
Cj4+IAo+PiBTb21lIFJLMzU4OCBib2FyZHMgdXNlIHNlcGFyYXRlIHJlZ3VsYXRvcnMgdG8gc3Vw
cGx5IENQVXMgYW5kIHRoZWlyCj4+IHJlc3BlY3RpdmUgbWVtb3J5IGludGVyZmFjZXMsIHNvIHRo
aXMgaXMgaGFuZGxlZCBieSBjb3VwbGluZyB0aG9zZQo+PiByZWd1bGF0b3JzIGluIGFmZmVjdGVk
IGJvYXJkcycgZGV2aWNlIHRyZWVzIHRvIGVuc3VyZSB0aGF0IHRoZWlyCj4+IHZvbHRhZ2UgaXMg
YWRqdXN0ZWQgaW4gc3RlcC4KPj4gCj4+IFRoaXMgYWxzbyBlbmFibGVzIHRoZSBidWlsdC1pbiB0
aGVybWFsIHNlbnNvciAoVFNBREMpIGZvciBhbGwgYm9hcmRzCj4+IHRoYXQgZG9uJ3QgY3VycmVu
dGx5IGhhdmUgaXQgZW5hYmxlZCwgdXNpbmcgdGhlIGRlZmF1bHQgQ1JVIGJhc2VkCj4+IGVtZXJn
ZW5jeSB0aGVybWFsIHJlc2V0LiBUaGlzIGRlZmF1bHQgY29uZmlndXJhdGlvbiBvbmx5IHVzZXMg
b24tU29DCj4+IGRldmljZXMgYW5kIGRvZXNuJ3QgcmVseSBvbiBhbnkgZXh0ZXJuYWwgd2lyaW5n
LCB0aHVzIGl0IHNob3VsZCB3b3JrCj4+IGZvciBhbGwgZGV2aWNlcyAodGVzdGVkIG9ubHkgb24g
Um9jayA1QiB0aG91Z2gpLgo+PiAKPj4gVGhlIGJvYXJkcyB0aGF0IGhhdmUgVFNBRENfU0hVVCBz
aWduYWwgd2lyZWQgdG8gdGhlIFBNSUMgcmVzZXQgbGluZQo+PiBjYW4gY2hvb3NlIHRvIG92ZXJy
aWRlIHRoZSBkZWZhdWx0IHJlc2V0IGxvZ2ljIGluIGZhdm91ciBvZiBHUElPCj4+IGRyaXZlbiAo
UE1JQyBhc3Npc3RlZCkgcmVzZXQsIGJ1dCBpbiBteSB0ZXN0aW5nIGl0IGRpZG4ndCB3b3JrIG9u
Cj4+IFJhZHhhIFJvY2sgNUIgLSBtYXliZSBJJ20gcmVhZGluZyB0aGUgc2NoZW1hdGljIHdyb25n
IGFuZCBpdCBkb2Vzbid0Cj4+IHN1cHBvcnQgUE1JQyBhc3Npc3RlZCByZXNldCBhZnRlciBhbGwu
Cj4+IAo+PiBGYW4gY29udHJvbCBvbiBSb2NrIDVCIGhhcyBiZWVuIHNwbGl0IGludG8gdHdvIGlu
dGVydmFsczogbGV0IGl0IHNwaW4KPj4gYXQgdGhlIG1pbmltdW0gY29vbGluZyBzdGF0ZSBiZXR3
ZWVuIDU1QyBhbmQgNjVDLCBhbmQgdGhlbiBhY2NlbGVyYXRlCj4+IGlmIHRoZSBzeXN0ZW0gY3Jv
c3NlcyB0aGUgNjVDIG1hcmsgLSB0aGFua3MgdG8gRHJhZ2FuIGZvciBzdWdnZXN0aW5nLgo+PiBU
aGlzIGxldHMgc29tZSBjb29saW5nIHNldHVwcyB3aXRoIGJlZWZpZXIgaGVhdHNpbmtzIGFuZC9v
ciBsYXJnZXIKPj4gZmFuIGZpbnMgdG8gc3RheSBpbiB0aGUgcXVpZXRlc3Qgbm9uLXplcm8gZmFu
IHN0YXRlIHdoaWxlIHN0aWxsCj4+IGdhaW5pbmcgcG90ZW50aWFsIGJlbmVmaXRzIGZyb20gdGhl
IGFpcmZsb3cgaXQgZ2VuZXJhdGVzLCBhbmQKPj4gcG9zc2libHkgYXZvaWRpbmcgbm9pc3kgc3Bl
ZWRzIGFsdG9nZXRoZXIgZm9yIHNvbWUgd29ya2xvYWRzLgo+PiAKPj4gT1BQcyBoZWxwIGFjdHVh
bGx5IHNjYWxlIENQVSBmcmVxdWVuY2llcyB1cCBhbmQgZG93biBmb3IgYm90aCBjb29saW5nCj4+
IGFuZCBwZXJmb3JtYW5jZSAtIHRlc3RlZCBvbiBSb2NrIDVCIHVuZGVyIHZhcmllZCBsb2Fkcy4g
SSd2ZSBkcm9wcGVkCj4+IHRob3NlIE9QUHMgdGhhdCBjYXVzZSBmcmVxdWVuY3kgcmVkdWN0aW9u
cyB3aXRob3V0IGFjY29tcGFueWluZyAKPj4gZGVjcmVhc2UKPj4gaW4gQ1BVIHZvbHRhZ2UsIGFz
IHRoZXkgZG9uJ3Qgc2VlbSB0byBiZSBhZGRpbmcgbXVjaCBiZW5lZml0IGluIGRheSB0bwo+PiBk
YXkgdXNlLCB3aGlsZSB0aGUga2VybmVsIGxvZyBnZXRzIGEgbnVtYmVyIG9mICJPUFAgaXMgaW5l
ZmZpY2llbnQiIAo+PiBsaW5lcy4KPj4gCj4+IE5vdGUgdGhhdCB0aGlzIHN1Ym1pc3Npb24gZG9l
c24ndCB0b3VjaCB0aGUgU1JBTSByZWFkIG1hcmdpbiB1cGRhdGVzIAo+PiBvcgo+PiB0aGUgT1BQ
IGNhbGlicmF0aW9uIGJhc2VkIG9uIHNpbGljb24gcXVhbGl0eSB3aGljaCB0aGUgZG93bnN0cmVh
bSAKPj4gZHJpdmVyCj4+IGRvZXMgYW5kIHdoaWNoIHdlcmUgbWVudGlvbmVkIGluIFsxXS4gSXQg
d29ya3MgYXMgaXQgaXMgKGFsc28gCj4+IGNvbmZpcm1lZCBieQo+PiBTZWJhc3RpYW4gaW4gaGlz
IGZvbGxvdy11cCBtZXNzYWdlIFsyXSksIGFuZCBpdCBpcyBzdGFibGUgaW4gbXkgCj4+IHRlc3Rp
bmcgb24KPj4gUm9jayA1Qiwgc28gaXQgc291bmRzIGJldHRlciB0byBtZXJnZSBhIHNpbXBsZSB2
ZXJzaW9uIGZpcnN0IGFuZCB0aGVuCj4+IGV4dGVuZCB3aGVuL2lmIHJlcXVpcmVkLgo+PiAKPj4g
WzFdIAo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC9DQUJqZDRZelRM
PTVTN2NTOEFDTkFZVmE3MzBXQTNpR2Q1TF93UDFWbjk9ZjgzUkNPUkFAbWFpbC5nbWFpbC5jb20v
Cj4+IFsyXSAKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvcGt5bmU0
ZzJjbG4yN2RjZHUzam03YnFkcXBtZDJrd2tiZ3Vpb2xtb3pudGp1aWFqcmJAZ3ZxNG51cHpuYTRv
Lwo+PiAKPj4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29t
Pgo+PiAtLS0KPiAKPiBIaSBIZWlrbywKPiAKPiBEbyB5b3UgdGhpbmsgdGhpcyBjYW4gYmUgbWVy
Z2VkIGZvciA2LjExPyBMb29rcyBsaWtlIHRoZXJlIGhhc24ndCBiZWVuCj4gYW55IG5ldyBmZWVk
YmFjayBpbiBhIHdoaWxlLCBhbmQgaXQgd291bGQgYmUgZ29vZCB0byBoYXZlIGZyZXF1ZW5jeQo+
IHNjYWxpbmcgaW4gcGxhY2UgZm9yIFJLMzU4OC4KPiAKPiBQbGVhc2UgbGV0IG1lIGtub3cgaWYg
eW91IGhhdmUgYW55IHJlc2VydmF0aW9ucyBvciBpZiB3ZSBuZWVkIGFueQo+IGJyb2FkZXIgZGlz
Y3Vzc2lvbi4KCkFzIEkgcHJvbWlzZWQgZWFybGllciwgSSB3YXMgZ29pbmcgdG8gdGVzdCB0aGlz
IHBhdGNoIHNlcmllcyBpbiBkZXRhaWwuCkFsYXMsIEkgaGF2ZW4ndCBtYW5hZ2VkIHRvIGRvIHRo
YXQgeWV0LCA6LyBkdWUgdG8gbWFueSByZWFzb25zLCBidXQKSSBzdGlsbCByZW1haW4gZmlybWx5
IGNvbW1pdHRlZCB0byBkb2luZyB0aGF0LgoKSXMgLXJjNCB0aGUgY3V0b2ZmIGZvciA2LjExPyAg
SWYgc28sIHRoZXJlJ3Mgc3RpbGwgdGltZSBhbmQgSSdsbCBkbyBteQpiZXN0IHRvIHRlc3QgYW5k
IHJldmlldyB0aGVzZSBwYXRjaGVzIGFzIHNvb24gYXMgcG9zc2libGUuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
