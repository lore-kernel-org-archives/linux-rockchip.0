Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2204E73151
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 09:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YN7bvpNAbPIOmE3Hdrht1vXS9Ha/WQC103cNriVwEdo=; b=kj+iRwjeDarSQ5
	VNv8RbXmf15Xpz1bnEpOTemrm3JYaEU9mIIr61Mic6i/YxMGdGy5rG5HJ3nxcarherGZFQCBQFcNW
	E/l+B3dw1zuaZ0mT1Ph58OPSW2gBw8yfdqWXt7/lhPraMp5TsupI3wN8+/DoVnXMVqH3fwLjSA+XW
	yqVtNCFwv0iR58mK396JvH/cfP4oMDfcEHKaMqowAZC1ELmgcjIgbKIArOYyhOZG5W2RRed92olwK
	mk2V8PBKRwPAC/8YsJ5zTtQFh2lm4nHMtNk9y857pInmgsm6O79Cjko034MJ6yXoEW1NTW720iqSt
	P3es6bokU8eSYE43wy0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqeB-00000004kPN-1Z9T;
	Mon, 02 Feb 2026 09:55:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqe9-00000004kOj-0zUb;
	Mon, 02 Feb 2026 09:55:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DA44A60125;
	Mon,  2 Feb 2026 09:55:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F4ACC116C6;
	Mon,  2 Feb 2026 09:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770026103;
	bh=lsw0eR4c5APt/3xcULKgpWlgBGnITGXccb/xcCY4y9g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XKgtmkwvenC5rUOPJx/d/zVCRcKWIeYzY4mwq7El18fBm9iOqhm30DX3MCOsrO5oX
	 se2xbggP8B2krp/yrQfnJe48CUZ7EC6IerR03YirktkzOFNDsibrgdqhLM+2Ac2UxR
	 o1zC6Mj6FilVouTWnZrQ1+Dae769Kkhsk7FKMIVNcxktW8y8UcAyqCSFpfOi+f8EXt
	 nmE5+PiosYWXFE/oHIuOQD2YLGLoJbIaN7RWeGIAufjdFPKTc9QsqAHzbNkQh3P9O1
	 NQ1s+T1Zw4hbfb4EBWR4ykXyZbCrC5mZoM24rzNjgchmpswb9GAgGD4jxZDFquiFR+
	 GndESMf1gY/cQ==
Date: Mon, 2 Feb 2026 10:54:58 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Grimmauld <grimmauld@grimmauld.de>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
Message-ID: <aYB0ctHF1ZeIIzbq@ryzen>
References: <20240809073610.2517-1-linux.amoon@gmail.com>
 <aXtpg0V_sifQEWHJ@grimm-nixos-ssd-2>
 <aXyHITrZ89Mmn8_J@ryzen>
 <CANAwSgTQ-cdyzd2WjHMYCY33p7um3CpjMeTzRO7vcd0fTF6X9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgTQ-cdyzd2WjHMYCY33p7um3CpjMeTzRO7vcd0fTF6X9Q@mail.gmail.com>
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

T24gU2F0LCBKYW4gMzEsIDIwMjYgYXQgMDM6MDg6NDJQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiA+Cj4gSeKAmXZlIGF0dGVtcHRlZCB0byByZXByb2R1Y2UgdGhlIHdhcm5pbmcgYnV0IHdh
cyB1bmFibGUgdG8gdHJpZ2dlciBpdCBsb2NhbGx5Lgo+IAo+IEkgaGF2ZSB0ZXN0ZWQgd2l0aCB0
aGUgYnVpbHQtaW4gbW9kdWxlCj4gQ09ORklHX1I4MTY5PXkKPiBDT05GSUdfUjgxNjlfTEVEUz15
Cj4gCj4gQXMgd2VsbCBhcyB0aGUgbW9kdWxlCj4gQ09ORklHX1I4MTY5PW0KPiBDT05GSUdfUjgx
NjlfTEVEUz15Cj4gCgpJJ20gcnVubmluZyB3aXRoOgpDT05GSUdfUjgxNjk9eQpDT05GSUdfUEhZ
TElCPXkKQ09ORklHX1JFQUxURUtfUEhZPXkKQ09ORklHX1JFQUxURUtfUEhZX0hXTU9OPXkKCkNP
TkZJR19QQ0lFX1JPQ0tDSElQX0RXPXkKQ09ORklHX1BDSUVfUk9DS0NISVBfRFdfSE9TVD15CkNP
TkZJR19QSFlfUk9DS0NISVBfTkFORU5HX0NPTUJPX1BIWT15CihQSFkgZm9yIHRoZSBQQ0llIDJ4
KQoKJCBjYXQgL3Byb2MvY21kbGluZQpyb290PS9kZXYvbmZzIG5mc3Jvb3Q9MTkyLjE2OC4xLjEw
Oi9zcnYvbmZzL3Jvb3Rmc19yYyxuZnN2ZXJzPTQgaXA9ZGhjcCBlYXJseWNvbiByb290d2FpdCBs
b2dsZXZlbD04CgpDb25zaWRlcmluZyB0aGF0IGFsbCBQSFkgZHJpdmVycyAoZm9yIGJvdGggRXRo
ZXJuZXQgYW5kIFBDSWUpLAphbmQgZHJpdmVycyAoZm9yIGJvdGggRXRoZXJuZXQgYW5kIFBDSWUp
IGFyZSBidWlsdCBhcyBidWlsdC1pbiwKaGF2aW5nIG5mc3Jvb3Q9IG9uIHRoZSBrZXJuZWwgY29t
bWFuZCBsaW5lIHNob3VsZCBiZSBubyBpc3N1ZS4KCkJ1dCwgcGVyaGFwcyB0aGF0IGlzIHRoZSBy
ZWFzb24gd2h5IHlvdSBjYW5ub3QgcmVwcm9kdWNlIGl0PwoKCj4gPgo+ID4gSGF2aW5nIGFzeW5j
IHByb2JpbmcgZm9yIHRoZSBSb2NrY2hpcCBQQ0llIGNvbnRyb2xsZXIgZHJpdmVyLCB3aGljaCBp
cwo+ID4gdXNlZCBhIExPVCBvZiByb2NrY2hpcCBiYXNlZCBTb0NzLCBpcyBhIGdvb2QgdGhpbmcs
IHNvIEkgZG9uJ3QgdGhpbmsgaXQKPiA+IGlzIHJpZ2h0IHRvIGF2b2lkIGVuYWJsaW5nIGFzeW5j
IHByb2JpbmcganVzdCBiZWNhdXNlIGl0IHJlc3VsdHMgaW4gYQo+ID4gc3BsYXQgb24gYSBzaW5n
bGUgcm9ja2NoaXAgYmFzZWQgYm9hcmQgKHJvY2s1YikuCj4gPgo+IFllcywgdGhpcyBjb3VsZCBo
ZWxwIGluIHRoZSBtb2R1bGUgcHJvYmUgcGNpIG1vZHVsZS4KPiAKPiBFYXJsaWVyLCBJIHRob3Vn
aHQgZ21hYyB3aWxsIGNvbnRyb2wgdGhlIHI4MTY5IG1vZHVsZSwgYnV0IEkgd2FzIHdyb25nLgo+
IENvdWxkIHlvdSBwbGVhc2UgdHJ5IHRoZXNlIGNoYW5nZXMgYXQgeW91ciBlbmQ/IFRoZXNlIGNo
YW5nZXMgYXJlCj4gcmVsYXRlZCB0byBNSU1PLi4KPiAKPiAkIGdpdCBkaWZmIC4vYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi01YnAtNXQuZHRzaQo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLTVicC01dC5k
dHNpCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLTVicC01
dC5kdHNpCj4gaW5kZXggYjNlNzZhZDJkODY5Li5mYjNhOGJhNDA4NWEgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi01YnAtNXQuZHRzaQo+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0
LmR0c2kKPiBAQCAtNDc3LDcgKzQ3Nyw2IEBAICZwY2llMngxbDAgewo+ICAmcGNpZTJ4MWwyIHsK
PiAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gICAgICAgICBwaW5jdHJsLTAg
PSA8JnBjaWUyXzJfcnN0PjsKPiAtICAgICAgIHJlc2V0LWdwaW9zID0gPCZncGlvMyBSS19QQjAg
R1BJT19BQ1RJVkVfSElHSD47Cj4gICAgICAgICB2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19w
Y2llMngxbDI+Owo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+IEBAIC01MzUsNiAr
NTM0LDEyIEBAIHBjaWUzX3ZjYzN2M19lbjogcGNpZTMtdmNjM3YzLWVuIHsKPiAgICAgICAgICAg
ICAgICAgfTsKPiAgICAgICAgIH07Cj4gCj4gKyAgICAgICBydGw4MjExZiB7Cj4gKyAgICAgICAg
ICAgICAgIHJ0bDgyMTFmXzBfcnN0OiBydGw4MjExZi0wLXJzdCB7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwzIFJLX1BCMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVs
bF9ub25lPjsKPiArICAgICAgICAgICAgICAgfTsKPiArICAgICAgIH07Cj4gKwo+ICAgICAgICAg
dXNiIHsKPiAgICAgICAgICAgICAgICAgdXNiYzBfaW50OiB1c2JjMC1pbnQgewo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMgPSA8MyBSS19QQjQgUktfRlVOQ19HUElPICZw
Y2ZnX3B1bGxfbm9uZT47Cj4gQEAgLTU1MCw2ICs1NTUsMTkgQEAgJnB3bTEgewo+ICAgICAgICAg
c3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+IAo+ICsmbWRpbzAgewo+ICsgICAgICAgcmdtaWlfcGh5
MDogZXRoZXJuZXQtcGh5QDEgewo+ICsgICAgICAgICAgICAgICAvKiBSVEw4MjExRiAqLwo+ICsg
ICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImV0aGVybmV0LXBoeS1pZDAwMWMuYzkxNiI7Cj4g
KyAgICAgICAgICAgICAgIHJlZyA9IDwweDE+Owo+ICsgICAgICAgICAgICAgICBwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+ICsgICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnJ0bDgyMTFm
XzBfcnN0PjsKPiArICAgICAgICAgICAgICAgcmVzZXQtYXNzZXJ0LXVzID0gPDIwMDAwPjsKPiAr
ICAgICAgICAgICAgICAgcmVzZXQtZGVhc3NlcnQtdXMgPSA8MTAwMDAwPjsKPiArICAgICAgICAg
ICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW8zIFJLX1BCMCBHUElPX0FDVElWRV9MT1c+Owo+ICsg
ICAgICAgfTsKPiArfTsKPiArCj4gICZya25uX2NvcmVfMCB7Cj4gICAgICAgICBucHUtc3VwcGx5
ID0gPCZ2ZGRfbnB1X3MwPjsKPiAgICAgICAgIHNyYW0tc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsK
PiAKCkkgdHJpZWQgeW91ciBwYXRjaCBhYm92ZSwgYnV0IEkgc3RpbGwgc2VlIHRoZSBzcGxhdC4K
CkJ1dCBhcyBJIHNhaWQsIEkgZG9uJ3QgdGhpbmsgdGhlIHNwbGF0IHNob3VsZCBiZSBhIHNob3dz
dG9wcGVyLgoKCktpbmQgcmVnYXJkcywKTmlrbGFzCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
