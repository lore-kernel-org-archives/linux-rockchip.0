Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D303D1062889
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 12:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1twUXGq8+l82fWg4yc0oKW/gJa2GCdON6HA789H0FA=; b=IuPB9nWVOYRyuR
	3VwG37un3L7IGB9SZ3Qk4Yz+qlVXBU3QJX18Q9NNfqdw4K87DVMOw7SnbA8gGDjN5BjbII7PDbafD
	fNT+VXwkJT4LQwfXi3/08YD8Ef7Wn+LtBOMr3Dd7Htec6gpooUoZd8rYAR/AaZ7srKzSslesxPMJF
	mXuzv5D376MCkihJFifBAg6xsNB031Xef1u0+U7Baef90atOS0mKY8TYyyP1fcLB200vPKjVRZFW5
	Ne0chpi1ChlLxqLKs5jSrtW2ZpQerPP0NAC/t2iDe9TKrGAUbNochYP34blzMz0jxQWTSfx1ZqIG6
	91+wB/CHiflNF2yrxSMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0Il0-0000000BZ7u-226J;
	Wed, 11 Mar 2026 12:33:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0Iky-0000000BZ6i-217X;
	Wed, 11 Mar 2026 12:33:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AEB4E444A6;
	Wed, 11 Mar 2026 12:33:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8A80C4CEF7;
	Wed, 11 Mar 2026 12:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773232423;
	bh=+J1EgSs3yVorF0G+jb94JiobSJNb8UX0YbEzR1remQE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pJvRthEmWqz76nsAf972JnvXxTWFbzxueKgKXgL7xDkHyW36BBSCIQBATnuxbCAoK
	 SeqYc3bhQbkREYqkHDivdLSaYwVM4egN56Yi+5kg/wQ/KHMMzwJiz7Pcj2NVl0MyZ2
	 YFfJfEZXb0Q2YM+vGnhARKXtYTMs/21KFX1C6uzstcfz+yQzFjWlY2DNTr2xKhkCTb
	 aLGPXXb38lVwC1kGY0L7o2/DYp2fEeATbHcr51XRe1l+J6Md51ncGhQmJZY/VMX5vf
	 yqgVLSB6dG9tNkwD4ghuSmm/PENZBdFaBOGP8rq8RNTIRPkGALY18ptSLZssx+asCP
	 H5AuroHcT7P3w==
Date: Wed, 11 Mar 2026 18:02:51 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>, 
	Grimmauld <grimmauld@grimmauld.de>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
Message-ID: <pvef2ck2xpmq6amueka25odt6wjd3usmkjspf3mvlmfzsd7lyz@5eraltok22tq>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
 <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_053344_574739_4338752E 
X-CRM114-Status: GOOD (  10.31  )
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

T24gV2VkLCBNYXIgMDQsIDIwMjYgYXQgMTI6MTg6NTlQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IAo+IE9uIFRodSwgMjYgRmViIDIwMjYgMTU6NDA6MjMgKzA1MzAsIEFu
YW5kIE1vb24gd3JvdGU6Cj4gPiBSb2NrY2hpcCBEV0MgUENJZSBkcml2ZXIgY3VycmVudGx5IHBl
cmZvcm1zIHN5bmNocm9ub3VzIGxpbmsgdHJhaW5pbmcgZm9yCj4gPiBjb21ibyBQSFlzIChQQ0ll
IDMuMC8yLjAgYW5kIFNBVEEgMy4wKSBkdXJpbmcgYm9vdC4gVGhpcyBwcm9jZXNzIHdhaXRzIGZv
cgo+ID4gdGhlIGxpbmsgdG8gYmUgZnVsbHkgZXN0YWJsaXNoZWQsIGFkZGluZyBzZXZlcmFsIG1p
bGxpc2Vjb25kcyB0byB0aGUgYm9vdAo+ID4gc2VxdWVuY2UuIFRvIG9wdGltaXplIGJvb3QgdGlt
ZSwgdGhpcyBjaGFuZ2UgZW5hYmxlcyBhc3luY2hyb25vdXMgcHJvYmluZywKPiA+IGFsbG93aW5n
IGxpbmsgZXN0YWJsaXNobWVudCB0byBwcm9jZWVkIGluIHRoZSBiYWNrZ3JvdW5kIHdoaWxlIHRo
ZSBrZXJuZWwKPiA+IGNvbnRpbnVlcyBwcm9iaW5nIG90aGVyIGRldmljZXMuCj4gPiAKPiA+IFsu
Li5dCj4gCj4gQXBwbGllZCwgdGhhbmtzIQo+IAo+IFsxLzFdIFBDSTogZHctcm9ja2NoaXA6IEVu
YWJsZSBhc3luYyBwcm9iZSBieSBkZWZhdWx0Cj4gICAgICAgY29tbWl0OiBlYzM5MmFiYzk1OTMy
ODM4YmY3ZTNkNjU5ZDM1OGY0ZGY5ZmY1YTBhCj4gCgpEcm9wcGVkIHRoZSBwYXRjaCBmcm9tIGNv
bnRyb2xsZXIvZHdjLXJvY2tjaGlwIGJyYW5jaCBkdWUgdG8gY29uY2VybnMgd2l0aCB0aGUKcG90
ZW50aWFsIGRlYWRsb2NrIGluIHRoZSBwaHlsaWIuIFdoZW4gQmpvcm4gdXBkYXRlcyB0aGUgcGNp
L25leHQgYnJhbmNoLCB0aGlzCndpbGwgZ2V0IGRyb3BwZWQgZnJvbSBsaW51eC1uZXh0IGFzIHdl
bGwuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
