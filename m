Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D470FCFD364
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 05:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYqbFgHQRzr+4PmB/EFnE/m0G+8UIt9Daj2jbSFlcm4=; b=Hw90Vq3x5LBnHf
	KRwGwRcTlILfnxtVfK47ePsFrPjtrXl+juRydEjL+c3UlO4yUp4gYvvlyCNhm41TobCkbSEFi7C3R
	7L6OnqBTt7zngzptQsSsb2ecqxvWD4LpbAgqYIlmcLqt+M3NlRBTyUlaTlFO1nNatIZQCHlp4i8Go
	1jDk7jviRQZQVyy7f7/PGw6t3ht8XXJUZkN09/N8t7rQ/3EHv0aZB6NxobP6mOOROCAv339inQf6d
	qF0tKyUOMO+JkegS66+dOqj+mOPSpWcM2W3Tg9wGDdsRgqtevnT5dbEBo/grze/lDfQN0HnWOGsym
	gomyY31/U4pXlwTas/6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNlYN-0000000CmUg-2k8x;
	Tue, 25 Nov 2025 05:25:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNlYM-0000000CmUR-0k5T;
	Tue, 25 Nov 2025 05:25:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2316A600CB;
	Tue, 25 Nov 2025 05:25:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16B55C4CEF1;
	Tue, 25 Nov 2025 05:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764048324;
	bh=YHZk6TcZwXmXzYNfBZm7hYEmK00oZ2fzc7kALopA/iw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NCRQKFYe4AGwbOGth+WonBD537brle2qfV23NP/0JbJqlNKIMy34lTEnbNZnsouqP
	 iGDQsNWg34Enf6PU6Mqn3gIs4luGiFY608RjtOWmTLeHgRjYX/OfmjnbRIWhVDBWc5
	 IFja6EOGJpovJUa6QxGzx6czN9OYxf1k99RH/PPAn4Lu8uZB1Zh7bfVxrpVHDJexKh
	 i4KbLJOncMBRudrHnQ8xQNvwjPNRnunAqaLE9WwUAohaSK8zynKgO/rdyYQqY/zMsG
	 DF5OhgOJ9mBs1TlZoj2BM/wJvkhKvT3SpXXKrBrNXkgYmuA73WF0UABBYvuAXaqF0k
	 oDFfjlwCNIDNg==
Date: Tue, 25 Nov 2025 10:55:05 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Niklas Cassel <cassel@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Kever Yang <kever.yang@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <diederik@cknow-tech.com>, 
	Richard Zhu <hongxing.zhu@nxp.com>, Frank Li <Frank.li@nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Conor Dooley <conor@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Hans Zhang <hans.zhang@cixtech.com>, linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kernel@pengutronix.de, 
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v2 1/4] PCI: dwc: Advertise L1 PM Substates only if
 driver requests it
Message-ID: <swchohhrkhyuzukrtonu4f3bzx3h6mha23rt6twqict42we2za@pq5hwfa75fps>
References: <wja7vxtg7bqq2udepl5r3mvgg5swvuqtuzk6cnimgcbw2aegqs@hru6yzg4xx3o>
 <20251124211903.GA2712341@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251124211903.GA2712341@bhelgaas>
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

T24gTW9uLCBOb3YgMjQsIDIwMjUgYXQgMDM6MTk6MDNQTSAtMDYwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBUaHUsIE5vdiAyMCwgMjAyNSBhdCAwMToxMDo1NlBNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBUdWUsIE5vdiAxOCwgMjAyNSBhdCAwMzo0Mjox
NVBNIC0wNjAwLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4gPiBGcm9tOiBCam9ybiBIZWxnYWFz
IDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgo+ID4gPiAKPiA+ID4gTDEgUE0gU3Vic3RhdGVzIHJlcXVp
cmUgdGhlIENMS1JFUSMgc2lnbmFsIGFuZCBtYXkgYWxzbyByZXF1aXJlCj4gPiA+IGRldmljZS1z
cGVjaWZpYyBzdXBwb3J0LiAgSWYgQ0xLUkVRIyBpcyBub3Qgc3VwcG9ydGVkIG9yIGRyaXZlciBz
dXBwb3J0IGlzCj4gPiA+IGxhY2tpbmcsIGVuYWJsaW5nIEwxLjEgb3IgTDEuMiBtYXkgY2F1c2Ug
ZXJyb3JzIHdoZW4gYWNjZXNzaW5nIGRldmljZXMsCj4gPiA+IGUuZy4sCj4gPiA+IAo+ID4gPiAg
IG52bWUgbnZtZTA6IGNvbnRyb2xsZXIgaXMgZG93bjsgd2lsbCByZXNldDogQ1NUUz0weGZmZmZm
ZmZmLCBQQ0lfU1RBVFVTPTB4MTAKPiA+ID4gCj4gPiA+IElmIHRoZSBrZXJuZWwgaXMgYnVpbHQg
d2l0aCBDT05GSUdfUENJRUFTUE1fUE9XRVJfU1VQRVJTQVZFPXkgb3IgdXNlcnMKPiA+ID4gZW5h
YmxlIEwxLnggdmlhIHN5c2ZzLCB1c2VycyBtYXkgdHJpcCBvdmVyIHRoZXNlIGVycm9ycyBldmVu
IGlmIEwxCj4gPiA+IFN1YnN0YXRlcyBoYXZlbid0IGJlZW4gZW5hYmxlZCBieSBmaXJtd2FyZSBv
ciB0aGUgZHJpdmVyLgo+ID4gPiAKPiA+ID4gVG8gcHJldmVudCBzdWNoIGVycm9ycywgZGlzYWJs
ZSBhZHZlcnRpc2luZyB0aGUgTDEgUE0gU3Vic3RhdGVzIHVubGVzcyB0aGUKPiA+ID4gZHJpdmVy
IHNldHMgImR3X3BjaWUubDFzc19zdXBwb3J0IiB0byBpbmRpY2F0ZSB0aGF0IGl0IGtub3dzIENM
S1JFUSMgaXMKPiA+ID4gcHJlc2VudCBhbmQgYW55IGRldmljZS1zcGVjaWZpYyBjb25maWd1cmF0
aW9uIGhhcyBiZWVuIGRvbmUuCj4gPiAKPiA+IEdvaW5nIGJ5IHRoaXMgcmVhc29uaW5nLCB3aHkg
Y2FuJ3Qgd2UgZW5hYmxlIEwxIFBNIFN1YnN0YXRlcyBmb3IKPiA+IHRoZXNlIHBsYXRmb3JtcyBi
eSBkZWZhdWx0Pwo+IAo+IEkgdGhpbmsgd2UgY2FuLCBpbiBhIHNlcGFyYXRlIHNlcmllcy4gIEkg
ZG9uJ3QgaGF2ZSB0aW1lIHRvIGRlYWwgd2l0aAo+IHRoaXMgYmVmb3JlIHRoZSB2Ni4xOSBtZXJn
ZSB3aW5kb3csIGJ1dCB5b3UgY2FuIGNlcnRhaW5seSBkbyB0aGF0Lgo+IAoKSSB3aWxsIHRha2Ug
aXQgdXAuIE5vdCBzdXJlIGlmIEkgY2FuIGRvIGl0IGZvciB2Ni4xOSB0aG91Z2guCgotIE1hbmkK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
