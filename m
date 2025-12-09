Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3E10D1CDC6
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWCF9bE+KRkPoPh9/FEwiEFzhu02r7UlwyfIgDfrYRM=; b=HcQLZCWrSAjZIl
	BP0U+5Pm+EzuwYqt41jwoDM1nYJIp63rvd1fImnrmZGTpAJeJVe9yFKL+EStjWZnzLjypYUKFUwe9
	HRjvJJKay56hH90n2zGp6FSgJ1bT6GXXRsT4XMt79jMFbKYrBETB50TNAX2mhxmvzxlnxuiZ028Ty
	aO5GHcERftBxOlE1smaU9WoGD2cVk+HnHqgsqt1YSOIIaS/504HlesOH2stGLEVipYDTPPBQzx63k
	OJEof8M+odU7c4UheEl2vubEzBOsWTCYlJWmSyalNN0LF7h6kj0FMq1THlKACF8vJH7iUif4JDNO7
	/Cz2M+w9XVv3i5CeOkrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSsPm-0000000Dxbf-0DR8;
	Tue, 09 Dec 2025 07:45:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSsPk-0000000DxbN-1X5Q;
	Tue, 09 Dec 2025 07:45:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 37350600AD;
	Tue,  9 Dec 2025 07:45:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12366C4CEF5;
	Tue,  9 Dec 2025 07:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765266338;
	bh=Yo7QujsU1IxW5dtrMTM5USn8VYa+1A0rsI10H/kNWL8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C+3TeinBB99sw9kcl6aOOCwj9AXTkaD3uxYmB2X125JZh+9UxFJ+0iKHgqosYTK0q
	 2SwmPPPGEgLhYdAJeMgT+RNmmvDG7uZipns26XEpYjh73lZY0kIl2Pj13x0U0GkL3o
	 IVcaQfsJx617QOL/Ev0hrJh2TbZWWNG9sMMpod9LXa30kg9sK/aOFIBWdngrCEdiBr
	 Dpvb2QahO4Q8PhsuL398NuRLSj6+MtcLr3cnukgX4MsaGvgpy+UKLHzzUgQIM4i2at
	 Ok52vwDD9ny7DQcU6DF+DpYcqRssMu+dcIZW5U2R2+bywkHYMfoUQOwt3Cx8NXNBoZ
	 yJPy3MA57uWHQ==
Date: Tue, 9 Dec 2025 08:45:33 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
	Val Packett <val@packett.cool>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dwc: Make Link Up IRQ logic handle already
 powered on PCIe switches
Message-ID: <aTfTnZfLDlt24ZKw@ryzen>
References: <20251201063634.4115762-2-cassel@kernel.org>
 <5cdf685c-5a37-1b65-3e87-9262f3ed7bd4@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5cdf685c-5a37-1b65-3e87-9262f3ed7bd4@linux.intel.com>
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

SGVsbG8gSWxwbywKCk9uIFR1ZSwgRGVjIDA5LCAyMDI1IGF0IDA5OjExOjM3QU0gKzAyMDAsIEls
cG8gSsOkcnZpbmVuIHdyb3RlOgo+IAo+IE5vdyB0aGlzIHBhdGNoIGxvb2tzIGludGVyZXN0aW5n
IChhbmQgbWFuYWdlZCB0byBjYXRjaCBteSBhdHRlbnRpb24gCj4gZGVzcGl0ZSBiZWluZyBhIGNv
bnRyb2xsZXJzLyBwYXRjaCkuCj4gCj4gWW91J3JlIG9ubHkgdGFsa2luZyBhYm91dCBidXMgbnVt
YmVyIGFsbG9jYXRpb25zIGhlcmUgYnV0IHdlIGRpZCBoaXQgYSAKPiBzaW1pbGFyIHByb2JsZW0g
d2l0aCBicmlkZ2Ugd2luZG93IGFsbG9jYXRpb25zIHdoZXJlIG5vdCBlbm91Z2ggCj4gaW5mb3Jt
YXRpb24gaXMgYXZhaWxhYmxlIGF0IHRoZSB0aW1lIG9mIHRoZSBpbml0aWFsIHNjYW4gKyByZXNv
dXJjZSAKPiBhbGxvY2F0aW9uIChjdXJyZW50bHkgaXQgaXMgb25lIG9mIHRoZSBpc3N1ZXMgdGhh
dCBwcmV2ZW50cyBmaXhpbmcgb25lIAo+IHJlc291cmNlIG92ZXJsYXAgYnVnKToKPiAKPiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kvOGY5Yzk5NTAtMTYxMi02ZTJkLTM4OGEtY2U2
OWNmM2FhZTFhQGxpbnV4LmludGVsLmNvbS8KCkknbSBxdWl0ZSBzdXJlIHRoYXQgVmFsJ3MgcHJv
YmxlbSB3aWxsIGJlIHNvbHZlZCBieSBhcHBseWluZzoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtcGNpLzIwMjUxMTI0LXBjaS1wd3JjdHJsLXJld29yay12MS0wLTc4YTcyNjI3NjgzZEBv
c3MucXVhbGNvbW0uY29tLwoKSWYgbm90LCBoZSBjb3VsZCB0cnkgYXBwbHlpbmcgdGhlIGFib3Zl
IHNlcmllcywgYW5kIHRoZW4gdGhpcyBwYXRjaCBvbiB0b3AuCgoKS2luZCByZWdhcmRzLApOaWts
YXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
