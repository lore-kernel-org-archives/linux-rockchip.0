Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63645FB5E9F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 00:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ts3IuiOW0CVHC0gZs3hp59qJ9lzPAc+o/0MMiv2V4y8=; b=NkFIxF/25jWmolM1f0uxNa4Y5b
	H6/QOEdlfTNNiJxwAdVTHZnkKQk6v8CJSa38wx2env4mjCG5/RUbOrmP2EcDjYslA68bN7bc0K2NF
	WSrdx0qWl4Q1Zd4T19i8obaSzud4PueI6EmdtGltoUP7xZcbrXUDFDBwu9k5JTLwJ2vnDRnfv2i7n
	mrh1/uOpnFHypzrbREqGa+SrBDDtJr7stFdlb2IFodkTXwOp3GRPeawSKdLhuim0PsIVgU+YOoxHt
	a2B5Dh70V0iqWzdjjY1hsqn0O9YGyFWnanXaI8HxlM9glyCuC5YpPVKr2KYwSIW/nltUx3yFhh5DA
	0QpO3EQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Iaf-000000059Ud-45dR;
	Tue, 17 Mar 2026 00:47:21 +0000
Received: from mail-m8394.xmail.ntesmail.com ([156.224.83.94])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Iac-000000059UE-2PKs;
	Tue, 17 Mar 2026 00:47:20 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 372d756a9;
	Tue, 17 Mar 2026 08:47:12 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH RFC v5 8/8] PCI: dw-rockchip: port some suspend code from
 vendor kernel
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
References: <20260316-rockchip-pcie-system-suspend-v5-0-5bb5ad37d643@collabora.com>
 <20260316-rockchip-pcie-system-suspend-v5-8-5bb5ad37d643@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <924c1f61-ec19-0585-f9a4-0cab302b7755@rock-chips.com>
Date: Tue, 17 Mar 2026 08:47:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20260316-rockchip-pcie-system-suspend-v5-8-5bb5ad37d643@collabora.com>
X-HM-Tid: 0a9cf942d5d009cckunm6be285ec4098d2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhgfH1ZOSB8fTx8fGkhPHh5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TwGyGPzme76z7TYhyXkptwUBxigW7rLjR+/rKAcwAQjXOkiLW9ws+3aFaSGHPddviEbcuuRkmsNZSF8BaqzVuycuKLENizCISGOMPlUr2bPwB4EcWR0bn6h22Y/9+w+I/3MJddSWpFw9bVa4neQKaHk7QvbtOeyYd8U9gcUnjcQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=DY0ZdZOWN3ERO3L5dX403mCw02rI92FKq9Fe2IdNFik=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_174719_196183_8FFBC611 
X-CRM114-Status: GOOD (  21.77  )
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

SGkgU2ViYXN0aWFuLAoK5ZyoIDIwMjYvMDMvMTcg5pif5pyf5LqMIDM6MTAsIFNlYmFzdGlhbiBS
ZWljaGVsIOWGmemBkzoKPiBSb2NrY2hpcCdzIHZlbmRvciBrZXJuZWwgZG9lcyB0aGVzZSBjYWxs
cyBiZWZvcmUgc3RhcnRpbmcgdGhlIGFjdHVhbAo+IHByb2Nlc3Mgb2YgZ29pbmcgaW50byBMMiBz
dGF0ZS4gSSdtIG5vdCBzdXJlIGFib3V0IHRoZSByYXRpb25hbGUsCj4gaG9wZWZ1bGx5IFNoYXdu
IGNhbiBoZWxwIG91dCB3aXRoIHRoYXQuCj4gCj4gQ2M6IFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgMTMgKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNo
YW5nZWQsIDEzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggM2JlODNmZWNjZWNiLi5mYmRkZTgyYzk1YjYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hp
cC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5j
Cj4gQEAgLTc0LDYgKzc0LDkgQEAKPiAgICNkZWZpbmUgIFBDSUVfQ0xLUkVRX05PVF9SRUFEWQkJ
RklFTERfUFJFUF9XTTE2KEJJVCgwKSwgMCkKPiAgICNkZWZpbmUgIFBDSUVfQ0xLUkVRX1BVTExf
RE9XTgkJRklFTERfUFJFUF9XTTE2KEdFTk1BU0soMTMsIDEyKSwgMSkKPiAgIAo+ICsvKiBHZW5l
cmFsIERlYnVnIFJlZ2lzdGVyICovCj4gKyNkZWZpbmUgUENJRV9DTElFTlRfR0VORVJBTF9ERUJV
RwkweDEwNAo+ICsKPiAgIC8qIFJBU0RFUyBUQkEgaW5mb3JtYXRpb24gKi8KPiAgICNkZWZpbmUg
UENJRV9DTElFTlRfQ0RNX1JBU0RFU19UQkFfSU5GT19DTU4JMHgxNTQKPiAgICNkZWZpbmUgIFBD
SUVfQ0xJRU5UX0NETV9SQVNERVNfVEJBX0wxXzEJQklUKDQpCj4gQEAgLTc3Niw2ICs3NzksMTEg
QEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4gICAJcmV0dXJuIHJldDsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgaW5saW5lIHZvaWQg
cm9ja2NoaXBfcGNpZV9saW5rX3N0YXR1c19jbGVhcihzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9j
a2NoaXApCj4gK3sKPiArCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgUENJRV9D
TElFTlRfR0VORVJBTF9ERUJVRywgMHgwKTsKPiArfQo+ICsKCgpUaGFua3MgZm9yIHRoZSBwYXRj
aGVzLgoKSXQgaXMgaW50ZW5kZWQgdG8gY2xlYXIgdGhlIGRlYnVnIGJ1ZmZlciBiZWZvcmUgZW50
ZXJpbmcgdGhlIEwyIHN0YXRlLgpUaGlzIGVuc3VyZXMgdGhhdCB3aGVuIHRoZSBsaW5rIHJlLWVz
dGFibGlzaGVzIGFmdGVyIHJlc3VtZSwgdGhlIGRlYnVnCnJlZ2lzdGVycyBjb250YWluIGNsZWFu
ZXIgaW5mb3JtYXRpb24sIG1ha2luZyBpdCBlYXNpZXIgdG8gZGlhZ25vc2UgYW55CmxpbmsgdHJh
aW5pbmcgaXNzdWVzIHRoYXQgbWF5IG9jY3VyIGR1cmluZyB0aGUgcmVjb25uZWN0aW9uIHByb2Nl
c3MuCgpUaGF0IHNhaWQsIHRoaXMgb3BlcmF0aW9uIGlzIG5vdCBzdHJpY3RseSBuZWNlc3Nhcnkg
ZnJvbSBhIGZ1bmN0aW9uYWwKc3RhbmRwb2ludC4gVGhlIFBDSWUgY29udHJvbGxlciB3aWxsIHdv
cmsgY29ycmVjdGx5IHdpdGhvdXQgaXQuIFRoaXMgd2FzCnByaW1hcmlseSBhIHJlcXVlc3QgZnJv
bSBkb3duc3RyZWFtIGZvbGtzIHRvIGhhdmUgY2xlYW5lciBkZWJ1ZwppbmZvcm1hdGlvbiBkdXJp
bmcgYnJpbmctdXAgYW5kIHRyb3VibGVzaG9vdGluZyBwaGFzZXMuCgo+ICAgc3RhdGljIGludCBy
b2NrY2hpcF9wY2llX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICAgewo+ICAgCXN0cnVj
dCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+IEBAIC03
ODksNiArNzk3LDExIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9zdXNwZW5kKHN0cnVjdCBk
ZXZpY2UgKmRldikKPiAgIAo+ICAgCXJvY2tjaGlwLT5pbnR4ID0gcm9ja2NoaXBfcGNpZV9yZWFk
bF9hcGIocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0lOVFJfTUFTS19MRUdBQ1kpOwo+ICAgCj4gKwkv
KiBBbGwgc3ViLWRldmljZXMgYXJlIGluIEQzaG90IGJ5IFBDSWUgc3RhY2sgKi8KPiArCWR3X3Bj
aWVfZGJpX3JvX3dyX2RpcyhwY2kpOwo+ICsKPiArCXJvY2tjaGlwX3BjaWVfbGlua19zdGF0dXNf
Y2xlYXIocm9ja2NoaXApOwo+ICsKPiAgIAlyZXQgPSBkd19wY2llX3N1c3BlbmRfbm9pcnEocGNp
KTsKPiAgIAlpZiAocmV0KQo+ICAgCQlyZXR1cm4gcmV0Owo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
