Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB034CF11C0
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 09:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Prfyh4AUVNyPr8CWxCNXBotAczhSmGoj3+pmFIY04To=; b=WjzOkrvAZtz/7Y
	3suIB8FB1MBOo0p3mEAhufvlfk+XmohG+p8H5ql6poJxuGL8PoCBdkL5l70Sn/rO2RGaK14G5fwfs
	oV7SahGxWrpPAfRZ/jQ8RmIGnD554oq104bKBEQ9bSgAXjo5r1AQSnxA+I2uOZoUEIDcJZWlv6bmt
	5/hc44DLO5ubCB0btlCjKWBtAAfHFONYNsBGXk6qQ7/qfNu6omKe1TLWMrWjtmEKVUl9qkA6DvJ74
	qyRtgJDk6leZq8rzSn3tUgLvmm5B+hpFsztuMbOluJ/uA/hQMDfVhZSJFQv9RVkNkpMJWBrmW+NPA
	MIwkNUZcua1Y3CoIC4Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sypkF-0000000CHg7-057D;
	Thu, 10 Oct 2024 09:46:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syogW-0000000C2h6-3dF1
	for linux-rockchip@bombadil.infradead.org;
	Thu, 10 Oct 2024 08:38:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=nBoZybuo5DlzMtmBmZN/2+hx/Wa3DYpfhpWZj58D+uA=; b=XtscvtqlzO6H2nFZXbvysL2HBR
	PNeKj70pS1+e8hOCr2qLp5egZgbOT/SBlwKG+2cPeQT8erGWqzW5PwiYskZaWq9UVNDwuN4fE2F/a
	5BA5+qR9oCZt25Oc2PosHKWeZ29aLFBX4IA8wjtaxF6wa7VsdHWTnsqabO7SFyeKk4cZuI2hN3ZXy
	eYYSpPqWB6h3SgnjlFyXXfmbTeft2HOo5zLg4IQAW161HoEouLGSuxiNdvWGO3EQeA9tFgVPlHBlB
	y38Fg4+TQvM69Y6DTyhh1zQaD7lcU19g0Ab8q2AEh/6Jv8I+bYTxWV86M8ujRbAZUULie/+nOIbGy
	IZvWe4RA==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syogT-00000005G5o-1q2Q
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 08:38:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 90FE5A4368E;
	Thu, 10 Oct 2024 08:37:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14E55C4CEC5;
	Thu, 10 Oct 2024 08:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728549484;
	bh=93ri6kXjS04NlSJhVAtV+oc8pPS/l8+cSGguv6Oe0iQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=R8SkyaUac/+DdD9Fz8FlFbr4ogKpWYvEmil2TC/fGkkWhTdhVbFl9Ju/ImbGCHQ7I
	 PJEte9XrXEZb4i1Yi4agDZBNlkRbV3l5sA6jGw4rEiO/qrAaG2nMHGtQ3xQzkFB+Ob
	 ZLmaRqMk13BVhdpr8Yx/k2tMjQ5aCaeCWoxyA2NRbd9pHBwyTX3YFh91qxg+/1SPNJ
	 ZySiqfc52f9s8+1HVFMWTgfFIlTRrzZtRjoPHwKoT/s4NG9O/T4pfs2GBLCUZjKJfn
	 asjCyqt5Yf+6Q0NvJuXA9MvzItshHH0Y5JM11UoICZxs1ZQlOVx77M4Kg9QPPSIFhu
	 q9cJsVUnkGTaw==
Message-ID: <35339817-a768-49e8-9b64-c52edbeb4d13@kernel.org>
Date: Thu, 10 Oct 2024 17:37:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/12] PCI: rockchip-ep: Refactor
 rockchip_pcie_ep_probe() MSI-X hiding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, Niklas Cassel <cassel@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-8-dlemoal@kernel.org>
 <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
 <20241010080956.z3cw2mxxlgrjafhs@thinkpad>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20241010080956.z3cw2mxxlgrjafhs@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_093810_040807_15262B68 
X-CRM114-Status: GOOD (  21.93  )
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

T24gMjAyNC8xMC8xMCAxNzowOSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+IE9uIFRo
dSwgT2N0IDEwLCAyMDI0IGF0IDEyOjU1OjEyUE0gKzA1MzAsIE1hbml2YW5uYW4gU2FkaGFzaXZh
bSB3cm90ZToKPj4gT24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MTNQTSArMDkwMCwgRGFt
aWVuIExlIE1vYWwgd3JvdGU6Cj4+PiBNb3ZlIHRoZSBjb2RlIGluIHJvY2tjaGlwX3BjaWVfZXBf
cHJvYmUoKSB0byBoaWRlIHRoZSBNU0ktWCBjYXBhYmlsaXR5Cj4+PiB0byBpdHMgb3duIGZ1bmN0
aW9uLCByb2NrY2hpcF9wY2llX2VwX2hpZGVfbXNpeF9jYXAoKS4gTm8gZnVuY3Rpb25hbAo+Pj4g
Y2hhbmdlcy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBr
ZXJuZWwub3JnPgo+Pgo+PiBSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5p
dmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPj4KPj4gQnR3LCBjYW4gc29tZW9uZSBmcm9t
IFJvY2tjaGlwIGNvbmZpcm0gaWYgdGhpcyBoaWRpbmcgaXMgbmVjZXNzYXJ5IGZvciBhbGwgdGhl
Cj4+IFNvQ3M/IEl0IGxvb2tzIHRvIG1lIGxpa2UgYW4gU29DIHF1aXJrLgo+Pgo+PiAtIE1hbmkK
Pj4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5j
IHwgNTQgKysrKysrKysrKysrKy0tLS0tLS0tLS0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgMzAgaW5z
ZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9wY2llLXJvY2tjaGlwLWVwLmMKPj4+IGluZGV4IDUyM2U5Y2RmZDI0MS4uN2ExNzk4ZmNjMmFk
IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVw
LmMKPj4+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4+
PiBAQCAtNTgxLDYgKzU4MSwzNCBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2VwX3JlbGVh
c2VfcmVzb3VyY2VzKHN0cnVjdCByb2NrY2hpcF9wY2llX2VwICplcCkKPj4+ICAJcGNpX2VwY19t
ZW1fZXhpdChlcC0+ZXBjKTsKPj4+ICB9Cj4+PiAgCj4+PiArc3RhdGljIHZvaWQgcm9ja2NoaXBf
cGNpZV9lcF9oaWRlX21zaXhfY2FwKHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAK
PiBQZXJoYXBzIGEgYmV0dGVyIG5hbWUgd291bGQgYmUgcm9ja2NoaXBfcGNpZV9kaXNhYmxlX2Jy
b2tlbl9tc2l4KCk/IEFzIHRoZQo+IGZ1bmN0aW9uIGVzc2VudGlhbGx5IGRpc2FibGVzIE1TSXgg
d2hpY2ggaXMgYnJva2VuLiBBZ2FpbiwgaXQnZCBiZSBnb29kIHRvIGtub3cKPiBpZiB0aGlzIGFw
cGxpZXMgdG8gYWxsIFNvQ3Mgb3IganVzdCBhIGZldy4KClRoaXMgaXMgZm9yIHRoZSByazMzOTku
Li4gSSBhbSBub3QgYXdhcmUgb2YgbXVsdGlwbGUgdmVyc2lvbnMgb2YgdGhhdCBTb0MuClRoZSBw
Y2llX3JvY2tjaGlwIGRyaXZlciBpcyBmb3IgdGhhdCBTb0Mgb25seSBhcyBmYXIgYXMgSSBrbm93
LiBUaGlzIGlzIHVubGlrZQp0aGUgRGVzaWdud2FyZSBJUCBibG9jayB3aGljaCBpcyB1c2VkIGlu
IG11bHRpcGxlIFNvQ3MuCgo+IAo+IC0gTWFuaQo+IAo+Pj4gK3sKPj4+ICsJdTMyIGNmZ19tc2ks
IGNmZ19tc2l4X2NwOwo+Pj4gKwo+Pj4gKwkvKgo+Pj4gKwkgKiBNU0ktWCBpcyBub3Qgc3VwcG9y
dGVkIGJ1dCB0aGUgY29udHJvbGxlciBzdGlsbCBhZHZlcnRpc2VzIHRoZSBNU0ktWAo+Pj4gKwkg
KiBjYXBhYmlsaXR5IGJ5IGRlZmF1bHQsIHdoaWNoIGNhbiBsZWFkIHRvIHRoZSBSb290IENvbXBs
ZXggc2lkZQo+Pj4gKwkgKiBhbGxvY2F0aW5nIE1TSS1YIHZlY3RvcnMgd2hpY2ggY2Fubm90IGJl
IHVzZWQuIEF2b2lkIHRoaXMgYnkgc2tpcHBpbmcKPj4+ICsJICogdGhlIE1TSS1YIGNhcGFiaWxp
dHkgZW50cnkgaW4gdGhlIFBDSWUgY2FwYWJpbGl0aWVzIGxpbmtlZC1saXN0OiBnZXQKPj4+ICsJ
ICogdGhlIG5leHQgcG9pbnRlciBmcm9tIHRoZSBNU0ktWCBlbnRyeSBhbmQgc2V0IHRoYXQgaW4g
dGhlIE1TSQo+Pj4gKwkgKiBjYXBhYmlsaXR5IGVudHJ5ICh3aGljaCBpcyB0aGUgcHJldmlvdXMg
ZW50cnkpLiBUaGlzIHdheSB0aGUgTVNJLVgKPj4+ICsJICogZW50cnkgaXMgc2tpcHBlZCAobGVm
dCBvdXQgb2YgdGhlIGxpbmtlZC1saXN0KSBhbmQgbm90IGFkdmVydGlzZWQuCj4+PiArCSAqLwo+
Pj4gKwljZmdfbXNpID0gcm9ja2NoaXBfcGNpZV9yZWFkKHJvY2tjaGlwLCBQQ0lFX0VQX0NPTkZJ
R19CQVNFICsKPj4+ICsJCQkJICAgICBST0NLQ0hJUF9QQ0lFX0VQX01TSV9DVFJMX1JFRyk7Cj4+
PiArCj4+PiArCWNmZ19tc2kgJj0gflJPQ0tDSElQX1BDSUVfRVBfTVNJX0NQMV9NQVNLOwo+Pj4g
Kwo+Pj4gKwljZmdfbXNpeF9jcCA9IHJvY2tjaGlwX3BjaWVfcmVhZChyb2NrY2hpcCwgUENJRV9F
UF9DT05GSUdfQkFTRSArCj4+PiArCQkJCQkgUk9DS0NISVBfUENJRV9FUF9NU0lYX0NBUF9SRUcp
ICYKPj4+ICsJCQkJCSBST0NLQ0hJUF9QQ0lFX0VQX01TSVhfQ0FQX0NQX01BU0s7Cj4+PiArCj4+
PiArCWNmZ19tc2kgfD0gY2ZnX21zaXhfY3A7Cj4+PiArCj4+PiArCXJvY2tjaGlwX3BjaWVfd3Jp
dGUocm9ja2NoaXAsIGNmZ19tc2ksCj4+PiArCQkJICAgIFBDSUVfRVBfQ09ORklHX0JBU0UgKyBS
T0NLQ0hJUF9QQ0lFX0VQX01TSV9DVFJMX1JFRyk7Cj4+PiArfQo+Pj4gKwo+Pj4gIHN0YXRpYyBp
bnQgcm9ja2NoaXBfcGNpZV9lcF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
Pj4gIHsKPj4+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPj4+IEBAIC01ODgs
NyArNjE2LDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4+PiAgCXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcDsK
Pj4+ICAJc3RydWN0IHBjaV9lcGMgKmVwYzsKPj4+ICAJaW50IGVycjsKPj4+IC0JdTMyIGNmZ19t
c2ksIGNmZ19tc2l4X2NwOwo+Pj4gIAo+Pj4gIAllcCA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVv
ZigqZXApLCBHRlBfS0VSTkVMKTsKPj4+ICAJaWYgKCFlcCkKPj4+IEBAIC02MTksNiArNjQ2LDgg
QEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4+PiAgCWlmIChlcnIpCj4+PiAgCQlnb3RvIGVycl9kaXNhYmxlX2Nsb2NrczsK
Pj4+ICAKPj4+ICsJcm9ja2NoaXBfcGNpZV9lcF9oaWRlX21zaXhfY2FwKHJvY2tjaGlwKTsKPj4+
ICsKPj4+ICAJLyogRXN0YWJsaXNoIHRoZSBsaW5rIGF1dG9tYXRpY2FsbHkgKi8KPj4+ICAJcm9j
a2NoaXBfcGNpZV93cml0ZShyb2NrY2hpcCwgUENJRV9DTElFTlRfTElOS19UUkFJTl9FTkFCTEUs
Cj4+PiAgCQkJICAgIFBDSUVfQ0xJRU5UX0NPTkZJRyk7Cj4+PiBAQCAtNjI2LDI5ICs2NTUsNiBA
QCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPj4+ICAJLyogT25seSBlbmFibGUgZnVuY3Rpb24gMCBieSBkZWZhdWx0ICovCj4+
PiAgCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIEJJVCgwKSwgUENJRV9DT1JFX1BIWV9G
VU5DX0NGRyk7Cj4+PiAgCj4+PiAtCS8qCj4+PiAtCSAqIE1TSS1YIGlzIG5vdCBzdXBwb3J0ZWQg
YnV0IHRoZSBjb250cm9sbGVyIHN0aWxsIGFkdmVydGlzZXMgdGhlIE1TSS1YCj4+PiAtCSAqIGNh
cGFiaWxpdHkgYnkgZGVmYXVsdCwgd2hpY2ggY2FuIGxlYWQgdG8gdGhlIFJvb3QgQ29tcGxleCBz
aWRlCj4+PiAtCSAqIGFsbG9jYXRpbmcgTVNJLVggdmVjdG9ycyB3aGljaCBjYW5ub3QgYmUgdXNl
ZC4gQXZvaWQgdGhpcyBieSBza2lwcGluZwo+Pj4gLQkgKiB0aGUgTVNJLVggY2FwYWJpbGl0eSBl
bnRyeSBpbiB0aGUgUENJZSBjYXBhYmlsaXRpZXMgbGlua2VkLWxpc3Q6IGdldAo+Pj4gLQkgKiB0
aGUgbmV4dCBwb2ludGVyIGZyb20gdGhlIE1TSS1YIGVudHJ5IGFuZCBzZXQgdGhhdCBpbiB0aGUg
TVNJCj4+PiAtCSAqIGNhcGFiaWxpdHkgZW50cnkgKHdoaWNoIGlzIHRoZSBwcmV2aW91cyBlbnRy
eSkuIFRoaXMgd2F5IHRoZSBNU0ktWAo+Pj4gLQkgKiBlbnRyeSBpcyBza2lwcGVkIChsZWZ0IG91
dCBvZiB0aGUgbGlua2VkLWxpc3QpIGFuZCBub3QgYWR2ZXJ0aXNlZC4KPj4+IC0JICovCj4+PiAt
CWNmZ19tc2kgPSByb2NrY2hpcF9wY2llX3JlYWQocm9ja2NoaXAsIFBDSUVfRVBfQ09ORklHX0JB
U0UgKwo+Pj4gLQkJCQkgICAgIFJPQ0tDSElQX1BDSUVfRVBfTVNJX0NUUkxfUkVHKTsKPj4+IC0K
Pj4+IC0JY2ZnX21zaSAmPSB+Uk9DS0NISVBfUENJRV9FUF9NU0lfQ1AxX01BU0s7Cj4+PiAtCj4+
PiAtCWNmZ19tc2l4X2NwID0gcm9ja2NoaXBfcGNpZV9yZWFkKHJvY2tjaGlwLCBQQ0lFX0VQX0NP
TkZJR19CQVNFICsKPj4+IC0JCQkJCSBST0NLQ0hJUF9QQ0lFX0VQX01TSVhfQ0FQX1JFRykgJgo+
Pj4gLQkJCQkJIFJPQ0tDSElQX1BDSUVfRVBfTVNJWF9DQVBfQ1BfTUFTSzsKPj4+IC0KPj4+IC0J
Y2ZnX21zaSB8PSBjZmdfbXNpeF9jcDsKPj4+IC0KPj4+IC0Jcm9ja2NoaXBfcGNpZV93cml0ZShy
b2NrY2hpcCwgY2ZnX21zaSwKPj4+IC0JCQkgICAgUENJRV9FUF9DT05GSUdfQkFTRSArIFJPQ0tD
SElQX1BDSUVfRVBfTVNJX0NUUkxfUkVHKTsKPj4+IC0KPj4+ICAJcm9ja2NoaXBfcGNpZV93cml0
ZShyb2NrY2hpcCwgUENJRV9DTElFTlRfQ09ORl9FTkFCTEUsCj4+PiAgCQkJICAgIFBDSUVfQ0xJ
RU5UX0NPTkZJRyk7Cj4+PiAgCj4+PiAtLSAKPj4+IDIuNDYuMgo+Pj4KPj4KPj4gLS0gCj4+IOCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KPiAKCgot
LSAKRGFtaWVuIExlIE1vYWwKV2VzdGVybiBEaWdpdGFsIFJlc2VhcmNoCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
