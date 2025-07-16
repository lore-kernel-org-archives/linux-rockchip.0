Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68602C83F27
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jul 2025 15:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEzDHi+pC/nqid0x/C961vgCjpuPiTMXxbfXLFs5w20=; b=I/gfzIJSV2WVUt
	gwhc2WCREPRD8pm6Kld9/aQHrCxI0+x4Usriw+e2vy/IN6A9urc8SOB7UvzV53we2/ClYVyPAKnOi
	w6HC1JQauITyb1zKqJ6sx+KeF8asZ29biW5ZjP7UunuXibT/O85QDwMtj2cOPofR1NxfNAx3sA62h
	qTNNWGYReyHWuGQP4GOrIm4vybif2xByS39XLdpklyD2jXDs+eSeWMJf9WrSpmFNLQRGN1cmjWcAu
	FveZANNU5FZzaOdD57fGmFlNM9WwN8YK6xupndiyzzxZKnEHbFnG9J5BwTFD8utL43mj4mXbikOrA
	A8ozPoD9d5d8EyQ0gmUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uc3pz-0000000813h-2ZWE;
	Wed, 16 Jul 2025 15:14:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uc3bB-00000007yNm-1Kx5;
	Wed, 16 Jul 2025 14:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vU3zIFgy3U7gHHh/kUTJxPxNHd0D81vJde+B7Dlosp4=; b=mHv5BEaQ1qNRqFW3ov30nAEfsD
	Yp0QdrdwqyYz6IDNOKfF8ChyVx8o13MT8Bko12XUwdEdyBVxGcxeFrH/rU4Aqe+JRHDnJcpW4Kzjz
	/ExkCohirnTAW1cB0Picxvlz3xNfIRiiV1EsGSLVOsJyp0LBX+poDwX0TEyfzzi8luXE3b8Rp5t2n
	0sqUnl0A480vSoFgI6Skze2qGvxni/Y5BqVikQgVFAiCLTZtg/CrcRQibBYeFxjEqleyQduCEMFM2
	o3rs3miSHlKuG/GchQMR5/xBUwfpos9B2Tru/VaPCr8hS+crZwM9RijobVAp9ALGRVpaTGdQTNCr/
	sS+cVQSQ==;
Received: from i53875a74.versanet.de ([83.135.90.116] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uc3ae-0002tO-SX; Wed, 16 Jul 2025 16:58:36 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>,
 Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
Subject: Re: [PATCH v8 08/10] arm64: dts: rockchip: Add nodes for NPU and its MMU to
 rk3588-base
Date: Wed, 16 Jul 2025 16:58:38 +0200
Message-ID: <4525998.iIbC2pHGDl@diego>
In-Reply-To: <20250713-6-10-rocket-v8-8-64fa3115e910@tomeuvizoso.net>
References: <20250713-6-10-rocket-v8-0-64fa3115e910@tomeuvizoso.net>
 <20250713-6-10-rocket-v8-8-64fa3115e910@tomeuvizoso.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250716_075909_378654_FAD15559 
X-CRM114-Status: GOOD (  19.59  )
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

QW0gU29ubnRhZywgMTMuIEp1bGkgMjAyNSwgMTA6Mzg6NTggTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBUb21ldSBWaXpvc286Cj4gU2VlIENoYXB0ZXIgMzYgIlJLTk4iIGZy
b20gdGhlIFJLMzU4OCBUUk0gKFBhcnQgMSkuCj4gCj4gVGhlIElQIGlzIGRpdmlkZWQgaW4gdGhy
ZWUgY29yZXMsIHByb2dyYW1tZWQgaW5kZXBlbmRlbnRseS4gVGhlIGZpcnN0Cj4gY29yZSB0aG91
Z2ggaXMgc3BlY2lhbCwgYmVpbmcgYWJsZSB0byBkZWxlZ2F0ZSB3b3JrIHRvIHRoZSBvdGhlciBj
b3Jlcy4KPiAKPiBUaGUgSU9NTVUgb2YgdGhlIGZpcnN0IGNvcmUgaXMgYWxzbyBzcGVjaWFsIGlu
IHRoYXQgaXQgaGFzIHR3byBzdWJ1bml0cwo+IChyZWFkL3dyaXRlPykgdGhhdCBuZWVkIHRvIGJl
IHByb2dyYW1tZWQgaW4gc3luYy4KPiAKPiB2MjoKPiAtIEhhdmUgb25lIGRldmljZSBmb3IgZWFj
aCBOUFUgY29yZSAoU2ViYXN0aWFuIFJlaWNoZWwpCj4gLSBIYXZlIG9uZSBkZXZpY2UgZm9yIGVh
Y2ggSU9NTVUgKFNlYmFzdGlhbiBSZWljaGVsKQo+IC0gQ29ycmVjdGx5IHNvcnQgbm9kZXMgKERp
ZWRlcmlrIGRlIEhhYXMpCj4gLSBBZGQgcm9ja2NoaXAsaW9tbXUgY29tcGF0aWJsZSB0byBJT01N
VSBub2RlcyAoU2ViYXN0aWFuIFJlaWNoZWwpCj4gCj4gdjM6Cj4gLSBBZGFwdCB0byBhIHNwbGl0
IG9mIHRoZSByZWdpc3RlciBibG9jayBpbiB0aGUgRFQgYmluZGluZ3MgKE5pY29sYXMKPiAgIEZy
YXR0YXJvbGkpCj4gCj4gdjQ6Cj4gLSBBZGFwdCB0byBjaGFuZ2VzIGluIGJpbmRpbmdzCj4gCj4g
djY6Cj4gLSBwY2xrIGFuZCBucHUgY2xvY2tzIGFyZSBuZWVkZWQgYnkgYWxsIGNsb2NrcyAoUm9i
IEhlcnJpbmcpCj4gCj4gdjg6Cj4gLSBSZW1vdmUgbm90aW9uIG9mIHRvcCBjb3JlIChSb2JpbiBN
dXJwaHkpCj4gCj4gVGVzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+
IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0Pgo+IC0t
LQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kgfCA5MSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDkxIGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtYmFzZS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5k
dHNpCj4gaW5kZXggMWVkZGM2OWZkOWM5ZWQ5NWNkYzgxMGJhNDhkOTY4M2UzZjgyNDg5YS4uZGJk
NDcyZmVhYThiM2Y4YzE0NTk3YTQ4YTRmNWFmYmUzY2I0NWI2YSAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKPiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKPiBAQCAtMTE0MCw2ICsxMTQw
LDk3IEBAIHBvd2VyLWRvbWFpbkBSSzM1ODhfUERfU0RNTUMgewo+ICAJCX07Cj4gIAl9Owo+ICAK
PiArCXJrbm5fY29yZV8wOiBucHVAZmRhYjAwMDAgewo+ICsJCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszNTg4LXJrbm4tY29yZSI7Cj4gKwkJcmVnID0gPDB4MCAweGZkYWIwMDAwIDB4MCAweDEw
MDA+LAo+ICsJCSAgICAgIDwweDAgMHhmZGFiMTAwMCAweDAgMHgxMDAwPiwKPiArCQkgICAgICA8
MHgwIDB4ZmRhYjMwMDAgMHgwIDB4MTAwMD47Cj4gKwkJcmVnLW5hbWVzID0gInBjIiwgImNuYSIs
ICJjb3JlIjsKPiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTEwIElSUV9UWVBFX0xFVkVMX0hJ
R0ggMD47Cj4gKwkJY2xvY2tzID0gPCZjcnUgQUNMS19OUFUwPiwgPCZjcnUgSENMS19OUFUwPiwK
PiArCQkJIDwmc2NtaV9jbGsgU0NNSV9DTEtfTlBVPiwgPCZjcnUgUENMS19OUFVfUk9PVD47Cj4g
KwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJoY2xrIiwgIm5wdSIsICJwY2xrIjsKPiArCQlhc3Np
Z25lZC1jbG9ja3MgPSA8JnNjbWlfY2xrIFNDTUlfQ0xLX05QVT47Cj4gKwkJYXNzaWduZWQtY2xv
Y2stcmF0ZXMgPSA8MjAwMDAwMDAwPjsKPiArCQlyZXNldHMgPSA8JmNydSBTUlNUX0FfUktOTjA+
LCA8JmNydSBTUlNUX0hfUktOTjA+Owo+ICsJCXJlc2V0LW5hbWVzID0gInNyc3RfYSIsICJzcnN0
X2giOwo+ICsJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9OUFVUT1A+Owo+ICsJ
CWlvbW11cyA9IDwmcmtubl9tbXVfdG9wPjsKPiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJ
fTsKPiArCj4gKwlya25uX21tdV90b3A6IGlvbW11QGZkYWI5MDAwIHsKCm5pdDogcGhhbmRsZSBm
b3IgdGhlIG1tdSBzaG91bGQgcHJvYmFibHkgYWxzbyBmb2xsb3cgdGhlIG5hbWluZyBjaGFuZ2U/
CkkuZS4gYmVjb21lIHJrbm5fbW11XzAgPwoKPiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJr
MzU4OC1pb21tdSIsICJyb2NrY2hpcCxyazM1NjgtaW9tbXUiOwo+ICsJCXJlZyA9IDwweDAgMHhm
ZGFiOTAwMCAweDAgMHgxMDA+LAo+ICsJCSAgICAgIDwweDAgMHhmZGFiYTAwMCAweDAgMHgxMDA+
Owo+ICsJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTAgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsK
PiArCQljbG9ja3MgPSA8JmNydSBBQ0xLX05QVTA+LCA8JmNydSBIQ0xLX05QVTA+Owo+ICsJCWNs
b2NrLW5hbWVzID0gImFjbGsiLCAiaWZhY2UiOwo+ICsJCSNpb21tdS1jZWxscyA9IDwwPjsKPiAr
CQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhfUERfTlBVVE9QPjsKPiArCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ICsJfTsKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
