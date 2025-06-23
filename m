Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDD07C77B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 17:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Cp9c7p8sbl/KGy2J6eEMKG7dzU3UdgGuVTPgZRvwvk=; b=arfikeGlCU3nF7
	nMxnEh2iqTVEzXAh0odchq3lYF2DzeAHXUVFqJoOzd18oOrDTrRO+VV4ldbVLceR1CbfuEWrgYzKK
	0918+39/EIxPhylb5KEV+jGjyaGEnUMOWbzKwc1tOvVEnTC4JvYWFYeOwRAsFHQvqegKpSqmoaqLc
	BOuTvOXQInVq+jUWVmF1PsNYqHm8d+To5I2JRbHlQcvBi2OwHwnCwi/7orS/ut+ibMDjmaifGumJB
	X2IY/zeLcz9Clyr8W9iI8+tYFMJxtVh1Aii/TljIpnr4+SOSpixYV4Q/hqFemBc4w/BjYIFCkJAxe
	1KfE2Z/kwFRqCJlDwkHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTlO7-00000003cSE-3TGx;
	Mon, 23 Jun 2025 17:55:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTi7P-000000032cX-04sx;
	Mon, 23 Jun 2025 14:25:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 219736112C;
	Mon, 23 Jun 2025 14:25:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B253C4CEF0;
	Mon, 23 Jun 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750688753;
	bh=wqtKOrmiL3JpO2Y2SIVr4pcAl7mgmV65FohrGrz9zlQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lK4NzZybEtxBPVkPicenXBcv26helZQ76BwcbNs7/TiRjIlFqpssg+NUb2+znt/Kp
	 iwEHq03Cx5TzL7a70itCG+apUDPO2NUA7QK3T39d9JPkgDyV8eNflv+nhQWAS38OgV
	 dn+e1gQmjyYHYW/iEysLsWFDUwyNEAC9iY9hrej0TFWrCgKBREVh+nqoIFmntcMV4M
	 0c8Fn2ryDkUjGUdwY7/2Opq9EHIwJ6XYiHLFTWHVgKKtlelLD5wUc71lYUEFgd5aF3
	 ZVBk8uRBaDDSw13bmc7tIwDdqZhupn1E6Jw09qlxq9qJ9L5b2PEqTUGK6o1RTUsMZP
	 B83q9B3VdIuog==
Date: Mon, 23 Jun 2025 08:25:50 -0600
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Laszlo Fiat <laszlo.fiat@proton.me>, linux-pci@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/6] PCI: rockchip-host: Use macro
 PCIE_RESET_CONFIG_WAIT_MS
Message-ID: <ofgbvui2kvnegpj37yhiabxdkehls5euarmo5wqcjkvscwyyxd@ulf7lr7njd6m>
References: <20250613124839.2197945-8-cassel@kernel.org>
 <20250613124839.2197945-10-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250613124839.2197945-10-cassel@kernel.org>
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

T24gRnJpLCBKdW4gMTMsIDIwMjUgYXQgMDI6NDg6NDFQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBNYWNybyBQQ0lFX1JFU0VUX0NPTkZJR19XQUlUX01TIHdhcyBhZGRlZCB0byBwY2ku
aCBpbiBjb21taXQgZDVjZWI5NDk2YzU2CgpzL1BDSUVfUkVTRVRfQ09ORklHX1dBSVRfTVMvUENJ
RV9SRVNFVF9DT05GSUdfREVWSUNFX1dBSVRfTVMKCj4gKCJQQ0k6IEFkZCBQQ0lFX1JFU0VUX0NP
TkZJR19ERVZJQ0VfV0FJVF9NUyB3YWl0aW5nIHRpbWUgdmFsdWUiKS4KPiAKPiBMYXRlciwgaW4g
Y29tbWl0IDcwYTdiZmIxZTUxNSAoIlBDSTogcm9ja2NoaXAtaG9zdDogV2FpdCAxMDBtcyBhZnRl
ciByZXNldAo+IGJlZm9yZSBzdGFydGluZyBjb25maWd1cmF0aW9uIiksIFBDSUVfVF9SUlNfUkVB
RFlfTVMgd2FzIGFkZGVkIHRvIHBjaS5oLgo+IAo+IFRoZXNlIG1hY3JvcyBhcmUgZHVwbGljYXRl
cywgYW5kIHJlcHJlc2VudCB0aGUgZXhhY3Qgc2FtZSBkZWxheSBpbiB0aGUKPiBQQ0llIHNwZWNp
ZmljYXRpb24uCj4gCj4gU2luY2UgdGhlIGNvbW1lbnQgYWJvdmUgUENJRV9SRVNFVF9DT05GSUdf
V0FJVF9NUyBpcyBzdHJpY3RseSBtb3JlIGNvcnJlY3QKPiB0aGFuIHRoZSBjb21tZW50IGFib3Zl
IFBDSUVfVF9SUlNfUkVBRFlfTVMsIGNoYW5nZSByb2NrY2hpcC1ob3N0IHRvIHVzZQo+IFBDSUVf
UkVTRVRfQ09ORklHX1dBSVRfTVMsIGFuZCByZW1vdmUgUENJRV9UX1JSU19SRUFEWV9NUywgYXMK
PiByb2NrY2hpcC1ob3N0IGlzIHRoZSBvbmx5IHVzZXIgb2YgdGhpcyBtYWNyby4KPiAKPiBSZXZp
ZXdlZC1ieTogV2lsZnJlZCBNYWxsYXdhIDx3aWxmcmVkLm1hbGxhd2FAd2RjLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KCkxHVE0hCgotIE1h
bmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMg
fCAyICstCj4gIGRyaXZlcnMvcGNpL3BjaS5oICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA3
IC0tLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgOCBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlw
LWhvc3QuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMKPiBp
bmRleCBiOWU3YTg3MTBjZjAuLmMxMWVkNDVjMjVmNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYwo+IEBAIC0zMjUsNyArMzI1LDcgQEAgc3RhdGlj
IGludCByb2NrY2hpcF9wY2llX2hvc3RfaW5pdF9wb3J0KHN0cnVjdCByb2NrY2hpcF9wY2llICpy
b2NrY2hpcCkKPiAgCW1zbGVlcChQQ0lFX1RfUFZQRVJMX01TKTsKPiAgCWdwaW9kX3NldF92YWx1
ZV9jYW5zbGVlcChyb2NrY2hpcC0+cGVyc3RfZ3BpbywgMSk7Cj4gIAo+IC0JbXNsZWVwKFBDSUVf
VF9SUlNfUkVBRFlfTVMpOwo+ICsJbXNsZWVwKFBDSUVfUkVTRVRfQ09ORklHX1dBSVRfTVMpOwo+
ICAKPiAgCS8qIDUwMG1zIHRpbWVvdXQgdmFsdWUgc2hvdWxkIGJlIGVub3VnaCBmb3IgR2VuMS8y
IHRyYWluaW5nICovCj4gIAllcnIgPSByZWFkbF9wb2xsX3RpbWVvdXQocm9ja2NoaXAtPmFwYl9i
YXNlICsgUENJRV9DTElFTlRfQkFTSUNfU1RBVFVTMSwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
Y2kvcGNpLmggYi9kcml2ZXJzL3BjaS9wY2kuaAo+IGluZGV4IDk4ZDZmY2NiMzgzZS4uODE5ODMz
ZTU3NTkwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL3BjaS5oCj4gKysrIGIvZHJpdmVycy9w
Y2kvcGNpLmgKPiBAQCAtMzUsMTMgKzM1LDYgQEAgc3RydWN0IHBjaWVfdGxwX2xvZzsKPiAgICov
Cj4gICNkZWZpbmUgUENJRV9UX1BFUlNUX0NMS19VUwkJMTAwCj4gIAo+IC0vKgo+IC0gKiBFbmQg
b2YgY29udmVudGlvbmFsIHJlc2V0IChQRVJTVCMgZGUtYXNzZXJ0ZWQpIHRvIGZpcnN0IGNvbmZp
Z3VyYXRpb24KPiAtICogcmVxdWVzdCAoZGV2aWNlIGFibGUgdG8gcmVzcG9uZCB3aXRoIGEgIlJl
cXVlc3QgUmV0cnkgU3RhdHVzIiBjb21wbGV0aW9uKSwKPiAtICogZnJvbSBQQ0llIHI2LjAsIHNl
YyA2LjYuMS4KPiAtICovCj4gLSNkZWZpbmUgUENJRV9UX1JSU19SRUFEWV9NUwkxMDAKPiAtCj4g
IC8qCj4gICAqIFBDSWUgcjYuMCwgc2VjIDUuMy4zLjIuMSA8UE1FIFN5bmNocm9uaXphdGlvbj4K
PiAgICogUmVjb21tZW5kcyAxbXMgdG8gMTBtcyB0aW1lb3V0IHRvIGNoZWNrIEwyIHJlYWR5Lgo+
IC0tIAo+IDIuNDkuMAo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
