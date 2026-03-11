Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FD0F112583E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 15:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRCXB9TxBMEjs5XnN2dZvdF9mAsO6v8+QQO2ALIz/fg=; b=q3FjgfmPVzQxXl
	R/KT+nYgYYW++NQObfpvXyk4yEyLRmxcu3mawDG2h2i7HKslU9qSSovrL+4TJ3ibw0KJIUkERUsyw
	X29lh7+4xndN1S4Gf6ucL2b0mKSYAX2p05018PXAUMCFrt147r+umOL/8G/39Ecvrdv8cPLsPEaZo
	IhgyEAYq1ZkLBK+fgJ/C1Pe4iHna9LWCuP7RjVh4bPurTAhtXuq5mC0BHKq4KCdBDJSDM00kTo4cO
	KXtaOaDn3RHoxh28Kayux0szcHkwevE5w704qiVCwTikWuoHfDWGgrrMEqbi6OU/jqMMYNwQiMx32
	va0+IVs69ApmXsKGxNWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0LGd-0000000BmD6-3tNS;
	Wed, 11 Mar 2026 15:14:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0LGa-0000000BmBY-400S;
	Wed, 11 Mar 2026 15:14:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1833F40631;
	Wed, 11 Mar 2026 15:14:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 545D8C4CEF7;
	Wed, 11 Mar 2026 15:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773242072;
	bh=6G03Vmq9qwAjWyaMz8DPlElYYLptRloaQTWWkg09UaE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NzduROdM4NtDkaC97uFQCxBxcQk2+/sdIAEDxDo46Sa1HI+QkJr/W69c2Ir2IcqT8
	 yDFVqxVG6Uoy2C1u7z8hbctT5e6H4204OSpR7P4iULIE+LNSCndBNOIlZ0dDXL8MlQ
	 l4WIr8beXU+M/Luz551S9xo13BT7i3wJ96J0SEPoSvzwaHCkwyUbIDiq2XIy4jfYuz
	 6lmGZwceMWkMXv51jWNVTUZo9r1cbbfyd0lp6Nu0cpBU+Bp0/EqnBMeyriu5GpJ1GK
	 ZQDhBsPe9f31JSjasOZkllQzRP2VjuZ7cfXP+Wwfto/f9PR5NPTFQ2Q6BSl5Ll9Fqa
	 0LqOaXelYUCfA==
Date: Wed, 11 Mar 2026 20:44:15 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: manivannan.sadhasivam@oss.qualcomm.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Mahesh J Salgaonkar <mahesh@linux.ibm.com>, 
	Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Lukas Wunner <lukas@wunner.de>, Richard Zhu <hongxing.zhu@nxp.com>, 
	Brian Norris <briannorris@chromium.org>, Wilson Ding <dingwei@marvell.com>, Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v7 0/4] PCI: Add support for resetting the Root Ports in
 a platform specific way
Message-ID: <srdn3bspgwff7f7tnst7wzg4us4buifrv7o3ylo527hmuciyl3@6ioyrl6rfhaz>
References: <20260310-pci-port-reset-v7-0-9dd00ccc25ab@oss.qualcomm.com>
 <abFMa6DCGGLUHddA@fedora>
 <dp2rem4gj7zhfgykvekmcrhq4ticm6m6ido6tbgflwzfcuuwkl@4wuxgle27eyx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dp2rem4gj7zhfgykvekmcrhq4ticm6m6ido6tbgflwzfcuuwkl@4wuxgle27eyx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_081433_013449_422409FB 
X-CRM114-Status: GOOD (  19.76  )
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

T24gV2VkLCBNYXIgMTEsIDIwMjYgYXQgMDg6MDk6NTNQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFdlZCwgTWFyIDExLCAyMDI2IGF0IDEyOjA1OjE1UE0gKzAxMDAs
IE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4gPiBPbiBUdWUsIE1hciAxMCwgMjAyNiBhdCAwNzozMTo1
OFBNICswNTMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gdmlhIEI0IFJlbGF5IHdyb3RlOgo+ID4g
PiBDaGFuZ2VzIGluIHY3Ogo+ID4gPiAtIERyb3BwZWQgUm9ja2NoaXAgUm9vdCBwb3J0IHJlc2V0
IHBhdGNoIGR1ZSB0byByZXBvcnRlZCBpc3N1ZXMuIEJ1dCB0aGUgc2VyaWVzCj4gPiA+ICAgd29y
a3Mgb24gb3RoZXIgcGxhdGZvcm1zIGFzIHRlc3RlZCBieSBvdGhlcnMuCj4gPiAKPiA+IEFyZSB5
b3UgcmVmZXJyaW5nIHRvCj4gPiAKPiA+ICMjIE9uIEVQIHNpZGU6Cj4gPiAjIGVjaG8gMCA+IC9z
eXMva2VybmVsL2NvbmZpZy9wY2lfZXAvY29udHJvbGxlcnMvYTQwMDAwMDAwLnBjaWUtZXAvc3Rh
cnQgJiYgXAo+ID4gICBzbGVlcCAwLjEgJiYgZWNobyAxID4gL3N5cy9rZXJuZWwvY29uZmlnL3Bj
aV9lcC9jb250cm9sbGVycy9hNDAwMDAwMDAucGNpZS1lcC9zdGFydAo+ID4gCj4gPiBUaGVuIHJ1
bm5pbmcgcGNpdGVzdCBvbmx5IGhhdmluZyA3IC8gMTYgdGVzdHMgcGFzc2VkID8KPiA+IAo+ID4g
SWYgc28sIGlzbid0IHRoYXQgYSBwcm9ibGVtIGFsc28gZm9yIHFjb20/Cj4gPiAKPiAKPiBObywg
dGVzdHMgYXJlIHBhc3Npbmcgb24gbXkgc2V0dXAgYWZ0ZXIgbGluayB1cC4KPiAKPiA+IAo+ID4g
VGhlcmUgaXMgbm8gY2hhbmNlIHRoYXQgdGhlIHBhdGNoOgo+ID4gIm1pc2M6IHBjaV9lbmRwb2lu
dF90ZXN0OiBBZGQgQUVSIGVycm9yIGhhbmRsZXJzIgo+ID4gaW1wcm92ZXMgdGhpbmdzIGluIHRo
aXMgcmVnYXJkPwo+ID4gCj4gPiBPciB3aWxsIGl0IHNpbXBseSBhdm9pZCB0aGUgIkFFUjogZGV2
aWNlIHJlY292ZXJ5IGZhaWxlZCIgcHJpbnQ/Cj4gPiAKPiAKPiBZZXMsIGFzIG1lbnRpb25lZCBp
biB0aGUgY29tbWl0IG1lc3NhZ2UsIGl0IGp1c3QgYXZvaWRzIHRoZSBBRVIgcmVjb3ZlcnkgZmFp
bHVyZQo+IG1lc3NhZ2UuCj4gCgpJIGFsc28gcmVhbGl6ZWQgdGhhdCBFbmRwb2ludCBzdGF0ZSBp
cyBub3Qgc2F2ZWQgaW4gYWxsIHRoZSBjb2RlIHBhdGhzLiBTbyB0aGUKcGNpX2VuZHBvaW50X3Rl
c3QgZHJpdmVyIGhhcyB0byBzYXZlL3Jlc3RvcmUgdGhlIHN0YXRlIGFsc28uIEJ1dCBpdCBpcyBz
dGlsbCBub3QKY2xlYXIgd2h5IHRoYXQgZGlkbid0IGhlbHAgeW91LgoKQ2FuIHlvdSBzaGFyZSB0
aGUgc25hcHNob3Qgb2YgdGhlIGVudGlyZSBjb25maWcgc3BhY2UgYmVmb3JlIGFuZCBhZnRlciBy
ZXNldAp1c2luZyAnbHNwY2kgLXh4eHggLXMgIjAwMDA6MDE6MDAiJz8KCi0gTWFuaQoKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
