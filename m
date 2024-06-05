Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B5F4C27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 08:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GiTX13jDYp4W0yi8Cmkm2NjHSlwBdMPDSxAVTBOgAHs=; b=Qr0sG0tpem/QaZ
	JtxFSYu75I8JbOowRTgufGRyXiijp4OJjUGm+xAwhe3lseDVg+Cd8uiuO+w3SHnKXijZzrGlAv/YN
	Yy5Rv2NZKgXKFG4sZQf+WRWnPhW7IjNEmwwo02kQ+z7dYOMosxKv/l1Kw4WGvFPZaLTE8kuR+6il8
	IBPHyU5zwiTtlVmyHFGTFDFnNdWSCFpjvq+xHxOU589cW4tFwA26Q6RU1AOsC2l5uOveOC8GGfCRO
	StHdKChFeHPe2568fsLmnhmku8Z+E3tEm5Rc6lFeR9bIVPAuFDYbn//1QLIAY9rXBLCVs14C7x4/N
	uwsZNE28OsQgajofhCGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElt6-00000005Ago-4165;
	Wed, 05 Jun 2024 08:20:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElt3-00000005Aej-3RHi
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 08:20:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1A6B661701;
	Wed,  5 Jun 2024 08:20:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15807C3277B;
	Wed,  5 Jun 2024 08:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717575648;
	bh=tdJCoQUnDHwWGC9phlxd9DGQ1Y6QsRTagKbQFdMO/5c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u4ytbu9l2gNIegcE1N/32b0M1xKHez4npGVzM4y+hRX5+Mwz7cQSeZHQHPe5Tw593
	 Yzb6BdHbKnhLbr9Hp0FqjCaOKczazZ0kqqrRg6dlURY7o0I4WZGj8XVgStdsqGhIzp
	 lgwzwItc+DRMOL180/qhlEXUf1CuJO0NsUaIZBodeW0MUEKH/3HYSqfo5Oy4auDgPr
	 zILutOM0Cs2w4n4iF202e0+uIRCT3jLAHnLtMA9Uz2xXHitqlCtrPLNPvmmnzAjPOA
	 BLCsYRahO7AwVd9jBrSf1nbG3MrIIFRrgAafa13ab2Fh2cGfEA4FmmeNUsV/n6DuTS
	 6evxlCsNGPYKw==
Date: Wed, 5 Jun 2024 13:50:34 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 12/13] arm64: dts: rockchip: Add PCIe endpoint mode
 support
Message-ID: <20240605082034.GL5085@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-12-3dc00fe21a78@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-12-3dc00fe21a78@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_012050_006991_A96C2891 
X-CRM114-Status: GOOD (  16.94  )
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

T24gV2VkLCBNYXkgMjksIDIwMjQgYXQgMTA6Mjk6MDZBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBBZGQgYSBkZXZpY2UgdHJlZSBub2RlIHJlcHJlc2VudGluZyBQQ0llIGVuZHBvaW50
IG1vZGUuCj4gCj4gVGhlIGNvbnRyb2xsZXIgY2FuIGVpdGhlciBiZSBjb25maWd1cmVkIHRvIHJ1
biBpbiBSb290IENvbXBsZXggb3IgRW5kcG9pbnQKPiBub2RlLgo+IAo+IElmIGEgdXNlciB3YW50
cyB0byBydW4gdGhlIGNvbnRyb2xsZXIgaW4gZW5kcG9pbnQgbW9kZSwgdGhlIHVzZXIgaGFzIHRv
Cj4gZGlzYWJsZSB0aGUgcGNpZTN4NCBub2RlIGFuZCBlbmFibGUgdGhlIHBjaWUzeDRfZXAgbm9k
ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4K
ClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZh
bUBsaW5hcm8ub3JnPgoKT25lIG5pdHBpY2sgYmVsb3cuCgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC5kdHNpIHwgMzUgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODguZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LmR0c2kKPiBpbmRleCA1OTg0MDE2YjVmOTYuLjZi
NWJmMTA1NTE0MyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODguZHRz
aQo+IEBAIC0xODYsNiArMTg2LDQxIEBAIHBjaWUzeDRfaW50YzogbGVnYWN5LWludGVycnVwdC1j
b250cm9sbGVyIHsKPiAgCQl9Owo+ICAJfTsKPiAgCj4gKwlwY2llM3g0X2VwOiBwY2llLWVwQGZl
MTUwMDAwIHsKPiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1wY2llLWVwIjsKPiAr
CQljbG9ja3MgPSA8JmNydSBBQ0xLX1BDSUVfNExfTVNUUj4sIDwmY3J1IEFDTEtfUENJRV80TF9T
TFY+LAo+ICsJCQkgPCZjcnUgQUNMS19QQ0lFXzRMX0RCST4sIDwmY3J1IFBDTEtfUENJRV80TD4s
Cj4gKwkJCSA8JmNydSBDTEtfUENJRV9BVVgwPiwgPCZjcnUgQ0xLX1BDSUU0TF9QSVBFPjsKPiAr
CQljbG9jay1uYW1lcyA9ICJhY2xrX21zdCIsICJhY2xrX3NsdiIsCj4gKwkJCSAgICAgICJhY2xr
X2RiaSIsICJwY2xrIiwKPiArCQkJICAgICAgImF1eCIsICJwaXBlIjsKPiArCQlpbnRlcnJ1cHRz
ID0gPEdJQ19TUEkgMjYzIElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gKwkJCSAgICAgPEdJQ19T
UEkgMjYyIElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gKwkJCSAgICAgPEdJQ19TUEkgMjYxIElS
UV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gKwkJCSAgICAgPEdJQ19TUEkgMjYwIElSUV9UWVBFX0xF
VkVMX0hJR0ggMD4sCj4gKwkJCSAgICAgPEdJQ19TUEkgMjU5IElSUV9UWVBFX0xFVkVMX0hJR0gg
MD4sCj4gKwkJCSAgICAgPEdJQ19TUEkgMjcxIElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gKwkJ
CSAgICAgPEdJQ19TUEkgMjcyIElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gKwkJCSAgICAgPEdJ
Q19TUEkgMjY5IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gKwkJCSAgICAgPEdJQ19TUEkgMjcw
IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4gKwkJaW50ZXJydXB0LW5hbWVzID0gInN5cyIsICJw
bWMiLCAibXNnIiwgImxlZ2FjeSIsICJlcnIiLAo+ICsJCQkJICAiZG1hMCIsICJkbWExIiwgImRt
YTIiLCAiZG1hMyI7Cj4gKwkJbWF4LWxpbmstc3BlZWQgPSA8Mz47Cj4gKwkJbnVtLWxhbmVzID0g
PDQ+Owo+ICsJCXBoeXMgPSA8JnBjaWUzMHBoeT47Cj4gKwkJcGh5LW5hbWVzID0gInBjaWUtcGh5
IjsKPiArCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhfUERfUENJRT47Cj4gKwkJcmVn
ID0gPDB4YSAweDQwMDAwMDAwIDB4MCAweDAwMTAwMDAwPiwKPiArCQkgICAgICA8MHhhIDB4NDAx
MDAwMDAgMHgwIDB4MDAxMDAwMDA+LAo+ICsJCSAgICAgIDwweDAgMHhmZTE1MDAwMCAweDAgMHgw
MDAxMDAwMD4sCj4gKwkJICAgICAgPDB4OSAweDAwMDAwMDAwIDB4MCAweDQwMDAwMDAwPiwKPiAr
CQkgICAgICA8MHhhIDB4NDAzMDAwMDAgMHgwIDB4MDAxMDAwMDA+Owo+ICsJCXJlZy1uYW1lcyA9
ICJkYmkiLCAiZGJpMiIsICJhcGIiLCAiYWRkcl9zcGFjZSIsICJhdHUiOwoKQXMgc3VnZ2VzdGVk
IGluIHRoZSBiaW5kaW5ncyBwYXRjaCwgcGxlYXNlIG1vdmUgdGhlc2UgcmVnIHByb3BlcnRpZXMg
YmVsb3cKY29tcGF0aWJsZS4KCi0gTWFuaQoKPiArCQlyZXNldHMgPSA8JmNydSBTUlNUX1BDSUUw
X1BPV0VSX1VQPiwgPCZjcnUgU1JTVF9QX1BDSUUwPjsKPiArCQlyZXNldC1uYW1lcyA9ICJwd3Ii
LCAicGlwZSI7Cj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCX07Cj4gKwo+ICAJcGNpZTN4
MjogcGNpZUBmZTE2MDAwMCB7Cj4gIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtcGNp
ZSIsICJyb2NrY2hpcCxyazM1NjgtcGNpZSI7Cj4gIAkJI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4g
Cj4gLS0gCj4gMi40NS4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCu
pOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
