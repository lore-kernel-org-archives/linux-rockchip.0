Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8587EB1060
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 15:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNjnGc4vPDgrC4LxqOHm6B8Uxv23qdp3RqMccc+UHWY=; b=0m31wZN9t8N4KM
	l9vXNqHTucesnlHFgG4rt2MKHx8/jFYI2TWiXHWFTd037b4W6ExCaWqf753Po+wG2hTGXFBFTJ70Y
	3aItyqKXut65ZWqu2Rsy8Nu0qd4jX685DVAoMdWaXKPoyHJR8U3STv1N5tw//zXEVwkvNNpWlLhKl
	MuqBy5pgcCxfTbgeaQcvBxvZ+88QaTeKKi5XL7mNzlcsYpGfvWgnMu1njWhXRbQRyfyyCMVxkYNxU
	PZ2LFtG374dLEDGzoZqk56e6msnC1ZdDoSudAvh3x1AxfN39ryDn90kiYWGWc4DJihINEz0oye4aD
	ustGqfKIIuqdBHhSy9lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzz2y-00000009oSr-3na7;
	Tue, 10 Mar 2026 15:31:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzz2w-00000009oSC-2abM;
	Tue, 10 Mar 2026 15:30:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AC87943B9D;
	Tue, 10 Mar 2026 15:30:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEC00C19423;
	Tue, 10 Mar 2026 15:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773156656;
	bh=b4O0EM+uxFd+g9UdQ2la/JIfIpf7FntL6wm/5Ex5rSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cldBNYhXxNqSMKyUEjACEnnIiGpiLgfRumrIzYfQu904sAMT25Sn5aadisyNtr0+O
	 ddl7aaWmR2LeoRQXQQb3oCv0AYAJDP+u+zCCIHfoQPU8pzhv1/phPWZsUEavMYswRH
	 sOUkeKhxkRbbE4/sutIzwyQ8yHQMPLsX+t9fS5yCHbu8g2hJW/hpYmiEcA9ynM06bo
	 CgZE5JIDswJwFsH05YrGcB8DcxLw97a6lkGosu/SNwXcT+j42JinGzdFREh6VOEIkv
	 Kfw9y82F637atCLv03Up3A2Of+tr91yiWjAl9XIU4te9q2EW1kZKr3YHb3xKYwZ1Ni
	 MzlmkhLOCk8IA==
Date: Tue, 10 Mar 2026 21:00:42 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>, 
	Grimmauld <grimmauld@grimmauld.de>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
Message-ID: <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
 <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_083058_700455_5EB78C01 
X-CRM114-Status: GOOD (  15.24  )
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

SGkgUm9iaW4sCgpPbiBUdWUsIE1hciAxMCwgMjAyNiBhdCAwMTo0MTo1NlBNICswMDAwLCBSb2Jp
biBNdXJwaHkgd3JvdGU6Cj4gSGkgTWFuaSwKPiAKPiBPbiAyMDI2LTAzLTA0IDY6NDggYW0sIE1h
bml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+IAo+ID4gT24gVGh1LCAyNiBGZWIgMjAyNiAx
NTo0MDoyMyArMDUzMCwgQW5hbmQgTW9vbiB3cm90ZToKPiA+ID4gUm9ja2NoaXAgRFdDIFBDSWUg
ZHJpdmVyIGN1cnJlbnRseSBwZXJmb3JtcyBzeW5jaHJvbm91cyBsaW5rIHRyYWluaW5nIGZvcgo+
ID4gPiBjb21ibyBQSFlzIChQQ0llIDMuMC8yLjAgYW5kIFNBVEEgMy4wKSBkdXJpbmcgYm9vdC4g
VGhpcyBwcm9jZXNzIHdhaXRzIGZvcgo+ID4gPiB0aGUgbGluayB0byBiZSBmdWxseSBlc3RhYmxp
c2hlZCwgYWRkaW5nIHNldmVyYWwgbWlsbGlzZWNvbmRzIHRvIHRoZSBib290Cj4gPiA+IHNlcXVl
bmNlLiBUbyBvcHRpbWl6ZSBib290IHRpbWUsIHRoaXMgY2hhbmdlIGVuYWJsZXMgYXN5bmNocm9u
b3VzIHByb2JpbmcsCj4gPiA+IGFsbG93aW5nIGxpbmsgZXN0YWJsaXNobWVudCB0byBwcm9jZWVk
IGluIHRoZSBiYWNrZ3JvdW5kIHdoaWxlIHRoZSBrZXJuZWwKPiA+ID4gY29udGludWVzIHByb2Jp
bmcgb3RoZXIgZGV2aWNlcy4KPiA+ID4gCj4gPiA+IFsuLi5dCj4gPiAKPiA+IEFwcGxpZWQsIHRo
YW5rcyEKPiA+IAo+ID4gWzEvMV0gUENJOiBkdy1yb2NrY2hpcDogRW5hYmxlIGFzeW5jIHByb2Jl
IGJ5IGRlZmF1bHQKPiA+ICAgICAgICBjb21taXQ6IGVjMzkyYWJjOTU5MzI4MzhiZjdlM2Q2NTlk
MzU4ZjRkZjlmZjVhMGEKPiAKPiBUaGlzIGFwcGVhcnMgdG8gaGF2ZSB0aGUgc2lkZS1lZmZlY3Qg
dGhhdCBjYWxsaW5nIHBjaV9ob3N0X3Byb2JlKCkgZnJvbQo+IGFzeW5jIGNvbnRleHQgY2FuIGVm
ZmVjdGl2ZWx5IGZvcmNlIGFzeW5jIHByb2JlIGZvciB0aGUgZW5kcG9pbnQgZHJpdmVycwo+IGFz
IHdlbGwsIGJ1dCBzb21lIGRyaXZlcnMgYXJlIG5vdCBPSyB3aXRoIHRoYXQsIGFzIG91ciBDSSBo
YXMganVzdAo+IGZsYWdnZWQgdXAuCj4gCgpUaGFua3MgZm9yIHJlcG9ydGluZyEKCj4gKEFuZCBh
cyBmb3IgdGhhdCBwYXJ0aWN1bGFyIHdhcm5pbmcsIElTVFIgbGFzdCB0aW1lIEkgbG9va2VkIGlu
dG8gaXQKPiBhbm90aGVyIGNvbnRleHQsIHRoZSBvcGluaW9uIG9mIHRoZSBNRElPL3BoeSBtYWlu
dGFpbmVycyBzZWVtZWQgdG8gYmUKPiAiZG9uJ3QgZm9yY2UgYXN5bmMgcHJvYmUiLikKPiAKClRo
aXMgd2FzIGRpc2N1c3NlZCBkdXJpbmcgdjIgWzFdIGFuZCBjb25jbHVkZWQgdGhhdCB0aGUgYXN5
bmMgcHJvYmUgYmVuZWZpdHMKb3V0d2VpZ2ggdGhlIHVuaGFybWZ1bCBzcGxhdCBmcm9tIHBoeWxp
Yi4gSSBhbHNvIGFncmVlIHdpdGggdGhlIGFib3ZlIGNvbmNsdXNpb24KdGhhdCB0aGlzIHNwbGF0
IHNob3VsZCBub3QgcHJldmVudCB1cyBmcm9tIGVuYWJsaW5nIGFzeW5jIHByb2JlIGZvciBQQ0kK
Y29udHJvbGxlciBkcml2ZXJzLiBJdCBjYW4gZWFzaWx5IHNhdmUgYSBmZXcgMTAwbXMgZHVyaW5n
IGJvb3QuCgotIE1hbmkKClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kvYVlI
VmxTMW5iQ01NeUYwNEByeXplbgoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
