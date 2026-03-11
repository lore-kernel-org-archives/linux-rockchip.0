Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A492B112583B
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 14:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0xlNZkruiHdn3dF9/Tm8ELcDUt0YxsZI7q8To1LhJ0=; b=Bs3aKICAORYSzq
	Vgpo3MomKfm01l7Fpt3w5JDjn8P3utazpxUMn2n/x9rNbTDBaTLcXWldxcn8FhVLIXy/lcBMNcNuq
	jWrvafF6SRPzTcoXriHwR7TcNzZ1IsZhqPtdqLekTwvuPKFyRJKia9mBBo4Tx2b4lYg8JnHGhMeSd
	tsv0xjQG7za4KpUMDry/hhBeo3W9rEJnuJU4TDAi1dHKPusw4l9M+Rx10Nif5C+ttWzOuv70dH+ZL
	nqIS2+X501xRVniskau+CtiaFLF2Om7i87LeLgHdCQ+hEBeV+MLmoBlMsJaOA5XLHq8FsAs2kk+6/
	TPlqyvctWwcIC5RFBPUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KjO-0000000BiwF-0lsx;
	Wed, 11 Mar 2026 14:40:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KjL-0000000Biv1-0FLV;
	Wed, 11 Mar 2026 14:40:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3933C40B2D;
	Wed, 11 Mar 2026 14:40:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30D62C4CEF7;
	Wed, 11 Mar 2026 14:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773240010;
	bh=0zJ0HQFf1lzSS5LA2IFPSO9AkXjfgAxBGWOu+Mzp1PI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h/ZF8l4o6TNAy+i+OxrOe0OLGywhNzKtVbVYp74L2z2TydeYuY3+X/g9L5dEUiYOT
	 yZUoISYDYPAj2StS7DHyURGWki4VbXGthWmYFwecKer1qiK+Ol0DMmRDBsZxDR/G/n
	 Qu14UDrbgrCgI523wcTEndr+Q5bpnKpKxh83hpon0c0fVoqpCfdvwQoWDxe7FDyVwY
	 zTjltTOCK6vw6u6YWicQm9DQ5nd6MOURmGxWLJoswyjTm2KD2SwG896Z8CXS8OWjMj
	 NtsZcxyNo1miOWcKlLG3k8k6jY06SDcow2r5lU+ZxY/1ym2GjQOsIIoxT/DfsFU3b1
	 DPpiGOOUXlNrw==
Date: Wed, 11 Mar 2026 20:09:53 +0530
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
Message-ID: <dp2rem4gj7zhfgykvekmcrhq4ticm6m6ido6tbgflwzfcuuwkl@4wuxgle27eyx>
References: <20260310-pci-port-reset-v7-0-9dd00ccc25ab@oss.qualcomm.com>
 <abFMa6DCGGLUHddA@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abFMa6DCGGLUHddA@fedora>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_074011_119403_C35AC7FD 
X-CRM114-Status: GOOD (  14.32  )
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

T24gV2VkLCBNYXIgMTEsIDIwMjYgYXQgMTI6MDU6MTVQTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBUdWUsIE1hciAxMCwgMjAyNiBhdCAwNzozMTo1OFBNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gdmlhIEI0IFJlbGF5IHdyb3RlOgo+ID4gQ2hhbmdlcyBpbiB2NzoKPiA+
IC0gRHJvcHBlZCBSb2NrY2hpcCBSb290IHBvcnQgcmVzZXQgcGF0Y2ggZHVlIHRvIHJlcG9ydGVk
IGlzc3Vlcy4gQnV0IHRoZSBzZXJpZXMKPiA+ICAgd29ya3Mgb24gb3RoZXIgcGxhdGZvcm1zIGFz
IHRlc3RlZCBieSBvdGhlcnMuCj4gCj4gQXJlIHlvdSByZWZlcnJpbmcgdG8KPiAKPiAjIyBPbiBF
UCBzaWRlOgo+ICMgZWNobyAwID4gL3N5cy9rZXJuZWwvY29uZmlnL3BjaV9lcC9jb250cm9sbGVy
cy9hNDAwMDAwMDAucGNpZS1lcC9zdGFydCAmJiBcCj4gICBzbGVlcCAwLjEgJiYgZWNobyAxID4g
L3N5cy9rZXJuZWwvY29uZmlnL3BjaV9lcC9jb250cm9sbGVycy9hNDAwMDAwMDAucGNpZS1lcC9z
dGFydAo+IAo+IFRoZW4gcnVubmluZyBwY2l0ZXN0IG9ubHkgaGF2aW5nIDcgLyAxNiB0ZXN0cyBw
YXNzZWQgPwo+IAo+IElmIHNvLCBpc24ndCB0aGF0IGEgcHJvYmxlbSBhbHNvIGZvciBxY29tPwo+
IAoKTm8sIHRlc3RzIGFyZSBwYXNzaW5nIG9uIG15IHNldHVwIGFmdGVyIGxpbmsgdXAuCgo+IAo+
IFRoZXJlIGlzIG5vIGNoYW5jZSB0aGF0IHRoZSBwYXRjaDoKPiAibWlzYzogcGNpX2VuZHBvaW50
X3Rlc3Q6IEFkZCBBRVIgZXJyb3IgaGFuZGxlcnMiCj4gaW1wcm92ZXMgdGhpbmdzIGluIHRoaXMg
cmVnYXJkPwo+IAo+IE9yIHdpbGwgaXQgc2ltcGx5IGF2b2lkIHRoZSAiQUVSOiBkZXZpY2UgcmVj
b3ZlcnkgZmFpbGVkIiBwcmludD8KPiAKClllcywgYXMgbWVudGlvbmVkIGluIHRoZSBjb21taXQg
bWVzc2FnZSwgaXQganVzdCBhdm9pZHMgdGhlIEFFUiByZWNvdmVyeSBmYWlsdXJlCm1lc3NhZ2Uu
CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
