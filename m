Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84E12CDC19F
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 13:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xalQ9Y/zBZRUGw4zQg4kh9T9yDnjrviLiC0oSCNWZk=; b=fUAcXjhkHpAqi1
	7XPKIebNyY1OAg+bRN/P/Ag4Kv12Hez9My37tHIn+6fVc66uQ9VYvdPLS60utfEt9OYcD93m5M2GK
	H7Ghv3DVlfNO+ijP9mPMx5jTa8RO6qkTR+hcZM7pv16Tifc9OAkKNqHtelGw3PkKEjeTSEf+fPDfg
	XAiH+43wwSMFdcJVVET4YksjP5K+pATtN7mdnfxbUBginKqNPGz9u+uoisHBuku58sozFbQ5BUMuE
	+3hCQ+B3+cwHzt58Op/HiehO8CEJTwZXXviwFDxSmLe3shqr6tlM3ev0IZCH5Rxd/H0Mn41jFqtii
	/4GsTab3B/eke8zT7Dtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Eh-0000000D6rJ-0uDB;
	Tue, 06 Jan 2026 13:36:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Ef-0000000D6r2-0SyK;
	Tue, 06 Jan 2026 13:36:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 23D086011E;
	Tue,  6 Jan 2026 13:36:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C11FC116C6;
	Tue,  6 Jan 2026 13:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767706591;
	bh=nHXV1LgeY+ybeHMb4BYaUT8tHK4MVM5/lrtO7MTBwbk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cUU36bGsPCyB1zwaKXyEiDn53MGc9yjEYD31Zip37sFZB+brbZTX3m7w0iwNuq7IH
	 72DGfxFCWXCqiLsY8+XmppJV3vMyl9utdvjSkRq4eYLLSYIxHwaePttTnNwgJVlV9S
	 yo4OGgL8HqK5QEzBbTHIUQC4kFeLA0b8Ol0AtOWXs0KtFEoU3Kjbr7zzDHj1vEEqOA
	 ov6owVdvvRQ5jTCgEpuO01wIavR0tftMBH+dag9ZJibe6vjy4rKacjtHL2kj3xUkrs
	 g9d2b3AVkqj0I5VyiGRhfDCra2bWPRZaB1lLEZUpFGWN2tyIU4i+LW4259Dd9oCvO7
	 fpddhn/lQs+Kg==
Date: Tue, 6 Jan 2026 19:06:23 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add runtime PM support to Rockchip
 PCIe
Message-ID: <ald3sxdzggbhqvpc7ra7x5nkf36xoamgwfumz5r4jwgirdzyes@nwvka2h256f6>
References: <20260102131819.123745-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260102131819.123745-1-linux.amoon@gmail.com>
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

T24gRnJpLCBKYW4gMDIsIDIwMjYgYXQgMDY6NDc6NTBQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBBZGQgcnVudGltZSBwb3d3ZSBtYW5hZ2VlbWVudCBmdW5jdGlvbmFsaXR5IGludG8gdGhl
IFJvY2tjaGlwIERlc2lnbldhcmUKPiBQQ0llIGNvbnRyb2xsZXIgZHJpdmVyLiBDYWxsaW5nIGRl
dm1fcG1fcnVudGltZV9lbmFibGUoKSBkdXJpbmcgZGV2aWNlCj4gcHJvYmluZyBhbGxvd3MgdGhl
IGNvbnRyb2xsZXIgdG8gcmVwb3J0IGl0cyBydW50aW1lIFBNIHN0YXR1cywgZW5hYmxpbmcKPiBw
b3dlciBtYW5hZ2VtZW50IGNvbnRyb2xzIHRvIGJlIGFwcGxpZWQgY29uc2lzdGVudGx5IGFjcm9z
cyB0aGUgZW50aXJlCj4gY29ubmVjdGVkIFBDSWUgaGllcmFyY2h5Lgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEFuYW5kIE1vb24gPGxpbnV4LmFtb29uQGdtYWlsLmNvbT4KPiAtLS0KPiB2MjoKPiAgICBp
bXByb3ZlIHRoZSBjb21taXQgbWVzc2FnZQo+ICAgIERyb3AgdGhlIC5yZW1vdmUgcGF0Y2gKPiAg
ICBEcm9wIHRoZSBkaXNhYmxlX3BtX3J1bnRpbWUKPiB2MToKPiAgaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjUxMDI3MTQ1NjAyLjE5OTE1NC0zLWxpbnV4LmFtb29uQGdtYWlsLmNvbS8K
PiAtLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwg
MTcgKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2Nr
Y2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4g
aW5kZXggZjg2MDVmZTYxYTQxNS4uMjQ5OGZmNTE0NmE1YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAtMjAsNiArMjAsNyBAQAo+
ICAjaW5jbHVkZSA8bGludXgvb2ZfaXJxLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+
Cj4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L3BtX3J1bnRpbWUuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ICAjaW5jbHVkZSA8
bGludXgvcmVzZXQuaD4KPiAgCj4gQEAgLTcwOSw2ICs3MTAsMjAgQEAgc3RhdGljIGludCByb2Nr
Y2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAocmV0
KQo+ICAJCWdvdG8gZGVpbml0X3BoeTsKPiAgCj4gKwlyZXQgPSBwbV9ydW50aW1lX3NldF9zdXNw
ZW5kZWQoZGV2KTsKPiArCWlmIChyZXQpCj4gKwkJZ290byBkZWluaXRfY2xrOwoKU2VyaW91c2x5
PyBXaHkgZG8geW91IG5lZWQgdGhpcz8gRGVmYXVsdCBQTSBzdGF0dXMgaXMgJ3N1c3BlbmRlZCcu
Cgo+ICsKPiArCXJldCA9IGRldm1fcG1fcnVudGltZV9lbmFibGUoZGV2KTsKPiArCWlmIChyZXQp
IHsKPiArCQlyZXQgPSBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiRmFpbGVkIHRvIGVuYWJsZSBy
dW50aW1lIFBNXG4iKTsKPiArCQlnb3RvIGRlaW5pdF9jbGs7Cj4gKwl9Cj4gKwo+ICsJcmV0ID0g
cG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChkZXYpOwo+ICsJaWYgKHJldCkKPiArCQlnb3RvIGRl
aW5pdF9jbGs7Cj4gKwo+ICAJc3dpdGNoIChkYXRhLT5tb2RlKSB7Cj4gIAljYXNlIERXX1BDSUVf
UkNfVFlQRToKPiAgCQlyZXQgPSByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9yYyhwZGV2LCByb2Nr
Y2hpcCk7Cj4gQEAgLTczMCw2ICs3NDUsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCj4gIGRlaW5pdF9jbGs6Cj4gIAlj
bGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShyb2NrY2hpcC0+Y2xrX2NudCwgcm9ja2NoaXAtPmNs
a3MpOwo+ICsJcG1fcnVudGltZV9kaXNhYmxlKGRldik7CgpZb3UgdXNlZCBkZXZtXyBmb3IgZW5h
YmxlLgoKPiArCXBtX3J1bnRpbWVfbm9fY2FsbGJhY2tzKGRldik7CgpXaHk/IFdoZXJlIGlzIHBt
X3J1bnRpbWVfcHV0KCk/IFBsZWFzZSByZWFkIERvY3VtZW50YXRpb24vcG93ZXIvcnVudGltZV9w
bS5yc3QuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
