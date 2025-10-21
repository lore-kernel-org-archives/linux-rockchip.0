Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D6F2CCD1A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 02:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=giz6WSEM+dx9zpWeRlDAC3l0isfEcD3C0uOEBY7q5R0=; b=y7wicve8Wc/neb
	mHxu2HSZgDuJ9Ubz7ltwuCPpFRd4DtzpHYAuXFb+o73XoDHKYdJg1bIyv3L7AeGhzcEywPhixxUU0
	CtjitNPhWh5uH1Q4JULEJ4F6mys3Q7hWXBP33BFWntMx9uXSVFgpPJpAjbQu8m1GllW5524y+NS61
	Qtk+gIprHE2/YPiFOvWyXgYkbb7Fos1ANhgxWLj8g4MEwOYWCZhHFehgoiqBxZClGIawI5Zkk0peu
	y2OP8E243V8W8T890IhyO9T3PUa/NoTnb/+aZEgTQ918ixz2/hdUfXObHpCogGJzxskmBWgt/1Xk5
	6gDV6yOcP0TSlDdiU56Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB2Ab-0000000FaAS-27GE;
	Tue, 21 Oct 2025 02:32:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB2AX-0000000Fa7W-3z0g;
	Tue, 21 Oct 2025 02:32:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6B5E440966;
	Tue, 21 Oct 2025 02:32:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E68ABC116C6;
	Tue, 21 Oct 2025 02:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761013933;
	bh=8UAGN1YhXZIbc93snwY/CRtubSt6sDkHXFrJ7cAY2Ms=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BHcnkSfVYUiNs1+laZL/oTzN3Hwxulz3SDXzmd39w+CmT5bYFjNvL3B2LlK9tR2EZ
	 MsV+kFf0G0g34cY2gCGrybn3d+8LVj5mPlzQx65l6HFVpSX90tezuAsndIbl8dwdM/
	 IIKkMsR6N2dMg011uJPL28VumrpkuIW5fMBZPytwtZrLDtraufFed0Xf55NANa26OJ
	 OLhoySAkQjU6VOn+Ojr32RTbf4nUiTFyJ+SUYaQechFw9ycmSg9Iyn1bkx8nlbpYjx
	 7l0l0rKtIRP7EIY2QMIhZwgN9s49EkHms8o4WL/BnTnrMl27ydTB3EENp18Fo/09Ro
	 tIPFNNyq18iiw==
Date: Tue, 21 Oct 2025 08:02:01 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Kever Yang <kever.yang@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <diederik@cknow-tech.com>, 
	stable@vger.kernel.org, Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] PCI: dw-rockchip: Prevent advertising L1 Substates
 support
Message-ID: <aaug44bngs5amid7un4plotcjpbc6ym44cztnhet7z44ybywgc@apzhg6enhxgy>
References: <20251017164558.GA1034609@bhelgaas>
 <54FD6159-AE45-432B-8F0E-4654721D16A6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54FD6159-AE45-432B-8F0E-4654721D16A6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_193214_008697_733FDE0C 
X-CRM114-Status: GOOD (  15.12  )
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

T24gU2F0LCBPY3QgMTgsIDIwMjUgYXQgMDc6MDc6MzVBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiAxNyBPY3RvYmVyIDIwMjUgMTg6NDU6NTggQ0VTVCwgQmpvcm4gSGVsZ2FhcyA8
aGVsZ2Fhc0BrZXJuZWwub3JnPiB3cm90ZToKPiAKPiAoc25pcCkKPiAKPiA+PiAKPiA+PiBUaHVz
LCBwcmV2ZW50IGFkdmVydGlzaW5nIEwxIFN1YnN0YXRlcyBzdXBwb3J0IHVudGlsIHByb3BlciBk
cml2ZXIgc3VwcG9ydAo+ID4+IGlzIGFkZGVkLgo+ID4KPiA+SSB0aGluayBNYW5pIGlzIHBsYW5u
aW5nIGEgY2hhbmdlIHNvIHdlIGRvbid0IHRyeSB0byBlbmFibGUgTDEKPiA+U3Vic3RhdGVzIGJ5
IGRlZmF1bHQsIHdoaWNoIHNob3VsZCBhdm9pZCB0aGUgcmVncmVzc2lvbiBldmVuIHdpdGhvdXQg
YQo+ID5wYXRjaCBsaWtlIHRoaXMuCj4gCj4gU291bmRzIGdvb2QsIEkgc3VnZ2VzdGVkIHRoZSBz
YW1lOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS9hTzl0V2pnSG5rQVRyb05h
QHJ5emVuLwo+IAo+IAo+ID4KPiA+VGhhdCB3aWxsIHN0aWxsIGxlYXZlIHRoZSBleGlzdGluZyBD
T05GSUdfUENJRUFTUE1fUE9XRVJfU1VQRVJTQVZFPXkKPiA+YW5kIHN5c2ZzIGwxXzFfYXNwbSBw
cm9ibGVtcy4KPiAKPiBJbmRlZWQsIHdoaWNoIGlzIHdoeSBJIHRoaW5rIHRoYXQgdGhpcyBwYXRj
aCBpcyB2Ni4xOCBtYXRlcmlhbC4KPiAKCk5vdCBzdHJpY3RseSBhIDYuMTggbWF0ZXJpYWwgYXMg
dGhlIEtjb25maWcvc3lzZnMvY21kbGluZSBpc3N1ZXMgZXhpc3RlZCBldmVuCmJlZm9yZSB3ZSBl
bmFibGVkIHRoZSBBU1BNIHN0YXRlcyBieSBkZWZhdWx0IGluIHY2LjE4LXJjMS4KClRoZSBkZWZh
dWx0IEFTUE0gaXNzdWUgd2lsbCBiZSBmaXhlZCBieSBhIHNlcGFyYXRlIHBhdGNoIHdoaWNoIHdp
bGwgYmUgZ2VuZXJpYwpmb3IgYWxsIHBsYXRmb3Jtcy4gSSdsbCBhcHBseSB0aGlzIHBhdGNoIGZv
ciB2Ni4xOS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
