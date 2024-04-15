Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4150C00A94
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FE9miXl+2bscz12IiEowg+MJ5vurvS0dCCz/gWT6OJ8=; b=iYfCS6EAW5Kvb7
	DdDZwsleGwWQsThRbIWi1+ms979SEESqvKhOZT7c73CQDcA5NnaEx57m64plQnUGwmo12ndmcrJGi
	wodZkJanCNU2CfBzPd3taLDkuIddevVLvrUgwdXtPYX5t7C64vZqnQIDwdZw0RtdP4QwSHwvKja9U
	Sb+GeI1AFWRb8z4SBFLGpeUJu1cCYdeSMddXFEwbuP/6vM0d+MxzndLGXA55uIhqbwMh8bRG1ns5e
	YE29eyoQgCJdbK+K2UIP+tTJVpakYw5vtSxrYA8pkPj21w4L+dXsK/vX6s5MFVWVsIjjHvA8kDsM2
	7LrlC81MKhPwqQ0i8wqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwMsx-00000008br3-0vxR;
	Mon, 15 Apr 2024 14:00:39 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwMsr-00000008bpx-1338;
	Mon, 15 Apr 2024 14:00:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8EC41CE0C68;
	Mon, 15 Apr 2024 14:00:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EE32C113CC;
	Mon, 15 Apr 2024 14:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713189629;
	bh=vUMXX+OgsKDFjriUPXzBwg0hyHz5um7sSrP3ByWxMtA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FSbVVUT/4O8CWWGyMHoZTZGbTja7KlLC+eTrlDIe7uQpHmiMUwxOMo9nNqqNtBHCM
	 f0Yik9mTfrz/vmnMcHyrxCQ8WhYFMxN3fxIkqRNqPWxu0ZeIfqNcNEdZkkeMeGTOLX
	 jIOWZp/+dDcXG/znc304kX2D2TjXDBJqVy9pI4MMQVSnG+1UX8FTfk96Gq7795b6Kx
	 3EX6QiFGVPh0YCWMK+1VL8vr2s8cVUePkED2SMZYXUSRR/8Dlh3GDq1uk1fWqrdoCl
	 fTSUvxJf/lxnj1lCskcjF47NmnYnbl9ztuqRhAZxknTZhTHnFDz4Qh56YhqQiNh48J
	 7GQtk7v8ri9Ew==
Date: Mon, 15 Apr 2024 19:30:15 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vidya Sagar <vidyas@nvidia.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Minghuan Lian <minghuan.Lian@nxp.com>,
	Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org, Niklas Cassel <cassel@kernel.org>,
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
	Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v12 2/8] PCI: dwc: ep: Add Kernel-doc comments for APIs
Message-ID: <20240415140015.GJ7537@thinkpad>
References: <20240327-pci-dbi-rework-v12-2-082625472414@linaro.org>
 <20240412195836.GA13344@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240412195836.GA13344@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_070033_496626_4EAA384C 
X-CRM114-Status: GOOD (  13.18  )
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

T24gRnJpLCBBcHIgMTIsIDIwMjQgYXQgMDI6NTg6MzZQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBXZWQsIE1hciAyNywgMjAyNCBhdCAwMjo0MzozMVBNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBBbGwgb2YgdGhlIEFQSXMgYXJlIG1pc3NpbmcgdGhl
IEtlcm5lbC1kb2MgY29tbWVudHMuIEhlbmNlLCBhZGQgdGhlbS4KPiAKPiA+ICsgKiBkd19wY2ll
X2VwX3Jlc2V0X2JhciAtIFJlc2V0IGVuZHBvaW50IEJBUgo+IAo+IEFwcGFyZW50bHkgdGhpcyBy
ZXNldHMgQGJhciBmb3IgZXZlcnkgZnVuY3Rpb24gb2YgdGhlIGRldmljZSwgc28gaXQncwo+IG5v
dCBqdXN0IGEgc2luZ2xlIEJBUj8KPiAKClJpZ2h0LiBJdCBzaG91bGQndmUgYmVlbiAnUmVzZXQg
ZW5kcG9pbnQgQkFScycuIEFuZCB0aGUgQVBJIG5hbWUgaXMgYWxzbwptaXNsZWFkaW5nLCBidXQg
dGhhdCBpcyBub3QgdGhlIHNjb3BlIG9mIHRoaXMgc2VyaWVzLgoKPiA+ICsgKiBkd19wY2llX2Vw
X3JhaXNlX2ludHhfaXJxIC0gUmFpc2UgSU5UeCBJUlEgdG8gdGhlIGhvc3QKPiA+ICsgKiBAZXA6
IERXQyBFUCBkZXZpY2UKPiA+ICsgKiBAZnVuY19ubzogRnVuY3Rpb24gbnVtYmVyIG9mIHRoZSBl
bmRwb2ludAo+ID4gKyAqCj4gPiArICogUmV0dXJuOiAwIGlmIHN1Y2Nlc3MsIGVycm9ubyBvdGhl
cndpc2UuCj4gCj4gcy9lcnJvbm8vZXJybm8vIChhbm90aGVyIGluc3RhbmNlIGJlbG93KQo+IAoK
YWgsIHRoYW5rcyBmb3Igc3BvdHRpbmcuIFNpbmNlIHRoaXMgc2VyaWVzIGlzIGFscmVhZHkgbWVy
Z2VkLCBJIGhvcGUgS3J6eXN6dG9mCmNhbiBhbW1lbmQgdGhpcy4KCi0gTWFuaQoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
