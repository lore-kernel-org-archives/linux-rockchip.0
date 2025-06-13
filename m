Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A7CAC71155
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 11:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HgH727xPPR+9/uWNb5sKLAmW+ggohbNNsoQaRh88TO8=; b=fMR87bHtHXIoOG
	eezWqPeIQCwaY06/i6/XQ+lF8CF1+XEefQu2OxBAdLmgzHermAIut44WlFrOC3PdBEtKRdijHcpJ1
	Ky41aYR/IYcKp6SofqO+QdwS5In2L0MbuM5vDE/bTv5qYkqbnv9AxRKzSpb3LoLClY4X/U/eKJ/Ty
	9IpmCMDWuzjCZ76rEEYMO1ItvSBoQnZiO9U8uyswFQIXT8HlK6GzAuYbkuY2DgPYq/fvxWES50m/F
	q94syGxRtrLcFV+oEDhFjd2f7VJfTJQ8gqTBWudNT2XotestVtIPb9GOcg1kQtxJFIb/5th8m1n49
	KFASeuxkT6EWf1nS2YVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2cO-0000000GAdC-40U7;
	Fri, 13 Jun 2025 11:30:44 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ12C-0000000FyRi-261e
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Jun 2025 09:49:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 978D3A4D7A8;
	Fri, 13 Jun 2025 09:49:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF083C4CEE3;
	Fri, 13 Jun 2025 09:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749808155;
	bh=FD3+a0qSWnfO5GoGBElixxKXQCsxJ+r+ACcIJE+ksE4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tISg5FdzAiM8LkPj/G3D3XHzC5+0wKGP5Zbp/S4yJDs1HpYJZub+rCZcy205U2HYL
	 8sfKp3yDD+HR5fL6SsNKJnzR483P1fgGEkuIm3g4CgMlZ+VNe2plowNZerSjiKicOc
	 V6zZdZhrxiGAYpwK215/0ndEBW+F2KgZw7eESvwS8V0P9JHKvKSDSOnvQelLEomnDf
	 lU8vqheLzkwOAdo6pyXBRKxUdI2sdZSju/tO0Z1QoS9QddCJjTAvukJBBl9HqL10zH
	 qfV1+t9/cxJW08fHEyDuRJ1u+b1XLLBTGO5lM7z1RspZ2qziKktyBwKTYviUUHTE3r
	 60ChV+NqxDK6A==
Date: Fri, 13 Jun 2025 15:19:08 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: Re: [PATCH] PCI: dw-rockchip: Delay link training after hot reset in
 EP mode
Message-ID: <wlrcincpfir65cvqbgromy7gc25vtkynxzoqmnebp7r62pce5z@iipm4r7j5aot>
References: <20250522123958.1518205-2-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250522123958.1518205-2-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_024916_682591_0A0F73A4 
X-CRM114-Status: GOOD (  23.99  )
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

T24gVGh1LCBNYXkgMjIsIDIwMjUgYXQgMDI6Mzk6NTlQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBGcm9tOiBXaWxmcmVkIE1hbGxhd2EgPHdpbGZyZWQubWFsbGF3YUB3ZGMuY29tPgo+
IAo+IFJLMzU4OCBUUk0sIHNlY3Rpb24gIjExLjYuMS4zLjMgSG90IFJlc2V0IGFuZCBMaW5rLURv
d24gUmVzZXQiIHN0YXRlcyB0aGF0Ogo+ICIiIgo+IElmIHlvdSB3YW50IHRvIGRlbGF5IGxpbmsg
cmUtZXN0YWJsaXNobWVudCAoYWZ0ZXIgcmVzZXQpIHNvIHRoYXQgeW91IGNhbgo+IHJlcHJvZ3Jh
bSBzb21lIHJlZ2lzdGVycyB0aHJvdWdoIERCSSwgeW91IG11c3Qgc2V0IGFwcF9sdHNzbV9lbmFi
bGUgPTAKPiBpbW1lZGlhdGVseSBhZnRlciBjb3JlX3JzdF9uIGFzIHNob3duIGluIGFib3ZlLiBU
aGlzIGNhbiBiZSBhY2hpZXZlZCBieQo+IGVuYWJsZSB0aGUgYXBwX2RseTJfZW4sIGFuZCBlbmQt
dXAgdGhlIGRlbGF5IGJ5IGFzc2VydCBhcHBfZGx5Ml9kb25lLgo+ICIiIgo+IAo+IEkuZS4gc2V0
dGluZyBhcHBfZGx5Ml9lbiB3aWxsIGF1dG9tYXRpY2FsbHkgZGVhc3NlcnQgYXBwX2x0c3NtX2Vu
YWJsZSBvbgo+IGEgaG90IHJlc2V0LCBhbmQgc2V0dGluZyBhcHBfZGx5Ml9kb25lIHdpbGwgcmUt
YXNzZXJ0IGFwcF9sdHNzbV9lbmFibGUsCj4gcmUtZW5hYmxpbmcgbGluayB0cmFpbmluZy4KPiAK
PiBXaGVuIHJlY2VpdmluZyBhIGhvdCByZXNldC9saW5rLWRvd24gSVJRIHdoZW4gcnVubmluZyBp
biBFUCBtb2RlLCB3ZSB3aWxsCj4gY2FsbCBkd19wY2llX2VwX2xpbmtkb3duKCksIHdoaWNoIHdp
bGwgY2FsbCB0aGUgLmxpbmtfZG93bigpIGNhbGxiYWNrIGluCj4gdGhlIGN1cnJlbnRseSBib3Vu
ZCBlbmRwb2ludCBmdW5jdGlvbiAoRVBGKSBkcml2ZXJzLgo+IAo+IFRoZSBjYWxsYmFjayBpbiBh
biBFUEYgZHJpdmVyIGNhbiB0aGVvcmV0aWNhbGx5IHRha2UgYSBsb25nIHRpbWUgdG8KPiBjb21w
bGV0ZSwgc28gbWFrZSBzdXJlIHRoYXQgdGhlIGxpbmsgaXMgbm90IHJlLWVzdGFibGlzaGVkIHVu
dGlsIGFmdGVyCj4gZHdfcGNpZV9lcF9saW5rZG93bigpICh3aGljaCBjYWxscyB0aGUgLmxpbmtf
ZG93bigpIGNhbGxiYWNrKHMpCj4gc3luY2hyb25vdXNseSkuCj4gCj4gU2lnbmVkLW9mZi1ieTog
V2lsZnJlZCBNYWxsYXdhIDx3aWxmcmVkLm1hbGxhd2FAd2RjLmNvbT4KPiBDby1kZXZlbG9wZWQt
Ynk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IE5p
a2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgoKVGhpcyBwYXRjaCBpcyBub3QgYXBwbHlp
bmcgb24gdG9wIG9mIHY2LjE2LXJjMS4gUGxlYXNlIHBvc3QgaXQgYWZ0ZXIgcmViYXNpbmcuCgot
IE1hbmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2No
aXAuYyB8IDE1ICsrKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggYzRiZDdlMGFiZGYwLi4wNWI4ZTRjYmQzMGIgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5j
Cj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4g
QEAgLTYxLDYgKzYxLDggQEAKPiAgCj4gIC8qIEhvdCBSZXNldCBDb250cm9sIFJlZ2lzdGVyICov
Cj4gICNkZWZpbmUgUENJRV9DTElFTlRfSE9UX1JFU0VUX0NUUkwJMHgxODAKPiArI2RlZmluZSAg
UENJRV9MVFNTTV9BUFBfRExZMl9FTgkJQklUKDEpCj4gKyNkZWZpbmUgIFBDSUVfTFRTU01fQVBQ
X0RMWTJfRE9ORQlCSVQoMykKPiAgI2RlZmluZSAgUENJRV9MVFNTTV9FTkFCTEVfRU5IQU5DRQlC
SVQoNCkKPiAgCj4gIC8qIExUU1NNIFN0YXR1cyBSZWdpc3RlciAqLwo+IEBAIC00ODcsNyArNDg5
LDcgQEAgc3RhdGljIGlycXJldHVybl90IHJvY2tjaGlwX3BjaWVfZXBfc3lzX2lycV90aHJlYWQo
aW50IGlycSwgdm9pZCAqYXJnKQo+ICAJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0g
YXJnOwo+ICAJc3RydWN0IGR3X3BjaWUgKnBjaSA9ICZyb2NrY2hpcC0+cGNpOwo+ICAJc3RydWN0
IGRldmljZSAqZGV2ID0gcGNpLT5kZXY7Cj4gLQl1MzIgcmVnOwo+ICsJdTMyIHJlZywgdmFsOwo+
ICAKPiAgCXJlZyA9IHJvY2tjaGlwX3BjaWVfcmVhZGxfYXBiKHJvY2tjaGlwLCBQQ0lFX0NMSUVO
VF9JTlRSX1NUQVRVU19NSVNDKTsKPiAgCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hp
cCwgcmVnLCBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19NSVNDKTsKPiBAQCAtNDk4LDYgKzUwMCwx
MCBAQCBzdGF0aWMgaXJxcmV0dXJuX3Qgcm9ja2NoaXBfcGNpZV9lcF9zeXNfaXJxX3RocmVhZChp
bnQgaXJxLCB2b2lkICphcmcpCj4gIAlpZiAocmVnICYgUENJRV9MSU5LX1JFUV9SU1RfTk9UX0lO
VCkgewo+ICAJCWRldl9kYmcoZGV2LCAiaG90IHJlc2V0IG9yIGxpbmstZG93biByZXNldFxuIik7
Cj4gIAkJZHdfcGNpZV9lcF9saW5rZG93bigmcGNpLT5lcCk7Cj4gKwkJLyogU3RvcCBkZWxheWlu
ZyBsaW5rIHRyYWluaW5nLiAqLwo+ICsJCXZhbCA9IEhJV09SRF9VUERBVEVfQklUKFBDSUVfTFRT
U01fQVBQX0RMWTJfRE9ORSk7Cj4gKwkJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlw
LCB2YWwsCj4gKwkJCQkJIFBDSUVfQ0xJRU5UX0hPVF9SRVNFVF9DVFJMKTsKPiAgCX0KPiAgCj4g
IAlpZiAocmVnICYgUENJRV9SRExIX0xJTktfVVBfQ0hHRUQpIHsKPiBAQCAtNTg1LDggKzU5MSwx
MSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfY29uZmlndXJlX2VwKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYsCj4gIAkJcmV0dXJuIHJldDsKPiAgCX0KPiAgCj4gLQkvKiBMVFNTTSBl
bmFibGUgY29udHJvbCBtb2RlICovCj4gLQl2YWwgPSBISVdPUkRfVVBEQVRFX0JJVChQQ0lFX0xU
U1NNX0VOQUJMRV9FTkhBTkNFKTsKPiArCS8qCj4gKwkgKiBMVFNTTSBlbmFibGUgY29udHJvbCBt
b2RlLCBhbmQgYXV0b21hdGljYWxseSBkZWxheSBsaW5rIHRyYWluaW5nIG9uCj4gKwkgKiBob3Qg
cmVzZXQvbGluay1kb3duIHJlc2V0Lgo+ICsJICovCj4gKwl2YWwgPSBISVdPUkRfVVBEQVRFX0JJ
VChQQ0lFX0xUU1NNX0VOQUJMRV9FTkhBTkNFIHwgUENJRV9MVFNTTV9BUFBfRExZMl9FTik7Cj4g
IAlyb2NrY2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIHZhbCwgUENJRV9DTElFTlRfSE9U
X1JFU0VUX0NUUkwpOwo+ICAKPiAgCS8qCj4gLS0gCj4gMi40OS4wCj4gCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
