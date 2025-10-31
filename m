Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38349CCF9FF
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 08:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlYhBjWmgZFX7RPUhBD2p3aUCUHXFoROSXF190ExxQI=; b=gVfY4vbRhFPXiX
	peVUvZda4Gp5YfLV404DrgS9yGg/Rpv38+ITl49Eynmf2ty4YwWWWOYXIymB1WIeNKX/ApPMy5K+0
	Nk3eGhJCIb2r2SM5ggXSXert1mbQBmCf1V0JOqTBbIebxnOevO+WdKSW2OHgv1yX02Em+vheqYVqf
	/VVXrgojRRWK1DumQgA697YGotRMm6ydxC1AU/b7hA5xu94rJ3odc9HLVF9xPZACW2JFXeNepHMy5
	p0i1y3TMZvFI77QEXpUi3/Y9VFfFsaJ1c4FraHznHCiz/sGHtbdBa2K7QyB02PFC/eu13WlwLYAxl
	sj2k/pf6Mes1cXmjma4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEkfL-00000005feY-0Y08;
	Fri, 31 Oct 2025 08:39:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEkfI-00000005fds-0TjR;
	Fri, 31 Oct 2025 08:39:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B472240787;
	Fri, 31 Oct 2025 08:39:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8112EC4CEE7;
	Fri, 31 Oct 2025 08:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761899959;
	bh=k79R0Hpx74QOJ14uPbnMxmO5AYu0XzyA/jnOzGhcDXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WVthp2o3amxt2TBTbBgyM45rfymEwJoPZwEW9FhdA7296shiaUGS1dax/8mhMdXH7
	 ogY9IlrGVeamaW8vqfi0VaLkm+60ibSG6d1B+ANO+kJi53cf/BOFIi130riPokoKgA
	 qg38nsA5JflgYuxLpSBOpzWbClZVWwVodc0jvx0y1EDuLIpRj2zgH+zRQ5hvMP3yfs
	 Y7eyaTzvuXq4BVseuffgmanbQIwniOfpzthdZGLnGR6wmR/7VJGS/ijIg10UHph/pv
	 /ybpYX75EQuKWzIOn3BVIVpsva8pvLZFEGITebmzL311N0Bci+62OhdiB/Z5lFnhfZ
	 f7p0Tq13gdDlg==
Date: Fri, 31 Oct 2025 14:09:06 +0530
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
Subject: Re: [PATCH v1 2/2] PCI: dw-rockchip: Add runtime PM support to
 Rockchip PCIe driver
Message-ID: <ukgkfetbggzon4ppndl7gpitlsz7hjhzhyx3dgxqhdo52exguy@bqksd7d27lpy>
References: <20251027145602.199154-1-linux.amoon@gmail.com>
 <20251027145602.199154-3-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251027145602.199154-3-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_013920_324051_FB3967FA 
X-CRM114-Status: GOOD (  20.61  )
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

T24gTW9uLCBPY3QgMjcsIDIwMjUgYXQgMDg6MjU6MzBQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBBZGQgcnVudGltZSBwb3dlciBtYW5hZ2VtZW50IHN1cHBvcnQgdG8gdGhlIFJvY2tjaGlw
IERlc2lnbldhcmUgUENJZQo+IGNvbnRyb2xsZXIgZHJpdmVyIGJ5IGVuYWJsaW5nIGRldm1fcG1f
cnVudGltZSgpIGluIHRoZSBwcm9iZSBmdW5jdGlvbi4KPiBUaGVzZSBjaGFuZ2VzIGFsbG93IHRo
ZSBQQ0llIGNvbnRyb2xsZXIgdG8gc3VzcGVuZCBhbmQgcmVzdW1lIGR5bmFtaWNhbGx5LAo+IGlt
cHJvdmluZyBwb3dlciBlZmZpY2llbmN5IG9uIHN1cHBvcnRlZCBwbGF0Zm9ybXMuCj4gCgpTZXJp
b3VzbHk/IEhvdyBjYW4gdGhpcyBwYXRjaCBpbXByb3ZlIHRoZSBwb3dlciBlZmZpY2llbmN5IGlm
IGl0IGlzIG5vdCBkb2luZwphbnkgUE0gb3BlcmF0aW9uIG9uIGl0cyBvd24/CgpBZ2FpbiBhIHBv
aW50bGVzcyBwYXRjaC4KCi0gTWFuaQoKPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51
eC5hbW9vbkBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZHctcm9ja2NoaXAuYyB8IDIxICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDIxIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggYjg3OGFlOGUyYjNlLi41MDI2NTk4ZDA5ZjggMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5j
Cj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4g
QEAgLTIwLDYgKzIwLDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L29mX2lycS5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvcGh5L3BoeS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+
Cj4gKyNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9yZWdt
YXAuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+Cj4gIAo+IEBAIC02OTAsNiArNjkxLDIw
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIGRlaW5pdF9waHk7Cj4gIAo+ICsJcmV0ID0g
cG1fcnVudGltZV9zZXRfc3VzcGVuZGVkKGRldik7Cj4gKwlpZiAocmV0KQo+ICsJCWdvdG8gZGlz
YWJsZV9wbV9ydW50aW1lOwo+ICsKPiArCXJldCA9IGRldm1fcG1fcnVudGltZV9lbmFibGUoZGV2
KTsKPiArCWlmIChyZXQpIHsKPiArCQlyZXQgPSBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiRmFp
bGVkIHRvIGVuYWJsZSBydW50aW1lIFBNXG4iKTsKPiArCQlnb3RvIGRlaW5pdF9jbGs7Cj4gKwl9
Cj4gKwo+ICsJcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChkZXYpOwo+ICsJaWYgKHJl
dCkKPiArCQlnb3RvIGRpc2FibGVfcG1fcnVudGltZTsKPiArCj4gIAlzd2l0Y2ggKGRhdGEtPm1v
ZGUpIHsKPiAgCWNhc2UgRFdfUENJRV9SQ19UWVBFOgo+ICAJCXJldCA9IHJvY2tjaGlwX3BjaWVf
Y29uZmlndXJlX3JjKHBkZXYsIHJvY2tjaGlwKTsKPiBAQCAtNzA5LDcgKzcyNCwxMCBAQCBzdGF0
aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiAgCj4gIAlyZXR1cm4gMDsKPiAgCj4gK2Rpc2FibGVfcG1fcnVudGltZToKPiArCXBtX3J1bnRp
bWVfZGlzYWJsZShkZXYpOwo+ICBkZWluaXRfY2xrOgo+ICsJcG1fcnVudGltZV9ub19jYWxsYmFj
a3MoZGV2KTsKPiAgCWNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKHJvY2tjaGlwLT5jbGtfY250
LCByb2NrY2hpcC0+Y2xrcyk7Cj4gIGRlaW5pdF9waHk6Cj4gIAlyb2NrY2hpcF9wY2llX3BoeV9k
ZWluaXQocm9ja2NoaXApOwo+IEBAIC03MjUsNiArNzQzLDkgQEAgc3RhdGljIHZvaWQgcm9ja2No
aXBfcGNpZV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCS8qIFBlcmZv
cm0gb3RoZXIgY2xlYW51cHMgYXMgbmVjZXNzYXJ5ICovCj4gIAljbGtfYnVsa19kaXNhYmxlX3Vu
cHJlcGFyZShyb2NrY2hpcC0+Y2xrX2NudCwgcm9ja2NoaXAtPmNsa3MpOwo+ICAJcm9ja2NoaXBf
cGNpZV9waHlfZGVpbml0KHJvY2tjaGlwKTsKPiArCXBtX3J1bnRpbWVfcHV0X3N5bmMoZGV2KTsK
PiArCXBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwo+ICsJcG1fcnVudGltZV9ub19jYWxsYmFja3Mo
ZGV2KTsKPiAgfQo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hpcF9wY2llX29mX2Rh
dGEgcm9ja2NoaXBfcGNpZV9yY19vZl9kYXRhX3JrMzU2OCA9IHsKPiAtLSAKPiAyLjUwLjEKPiAK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
