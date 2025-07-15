Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1F45C83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 09:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5IhVFeIE4TcIIujBs2oGcJqSVUcTKtUh3nrKNi/2NM=; b=T2hQb+Surlw3XC
	CResKTxLlpqtTudCVAoHLiYYmCxWdadfeJ74M+nccnNkgcEbConNOwDZIVI2Zg4KqmT+ClDOd93Jl
	sD46krLVpA3Pzpv8JNXcd96BUlKxKCo5KWXmrZ3+S/m+ExAtHHU+rqzM/uLOyRjh68zEq4iH2tprL
	by7IwM9VzJ7P65YLsbm083m/jTWwKk3flst9bSeA+7tF6BHvowruyIlSzMcjq+n9bYCrU7bb9VTdt
	NgqL03fw4TTF2gm2qkygYgDEW0962ytedkNClHdbqrOXWLlmIe8VOSF8HI020ybsSrYG0spFoSexJ
	Inbcase6Ck9/hd40hGdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubcND-00000004lTH-1Qmi;
	Tue, 15 Jul 2025 09:54:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubbpY-00000004eYH-3cJV;
	Tue, 15 Jul 2025 09:20:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 46FF246316;
	Tue, 15 Jul 2025 09:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DA07C4CEE3;
	Tue, 15 Jul 2025 09:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752571208;
	bh=zMX0HnJ6CCzw8b9lVKy3uhSYJilLYoAhgM5/FrM5H9A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d4e/gA/XYvMMld3wapT7zeY1Gk0uwHEwJggXKWAa4A9zBaFmlJPabx3x1jsbR3yNJ
	 R0GpKskCbOugdis7UiMYxXYnDrOzn/3/1+OUIOLoEdjOIsos0z6JrQcMUjNzQlKcre
	 lz1944BNZHo8Y5XDm7f+ywdeXXcX700tfufNkwNk7XQYX5eOLTKfsLSCzXqjpCFC03
	 HjshEiqu1EwEsrzoU5vhtsQruoimF/UqS2FUcQbB60aU0ppgJ5dVZrk8/XJB8ZaWpR
	 hMimgMsxb0vHBX51jmnVu+jjDPdCVfJnQ9diGWXPuuv61GKkWjTE8KGEJ1K7gGO+Hq
	 zs+q6/TELjheg==
Date: Tue, 15 Jul 2025 14:49:56 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Mahesh J Salgaonkar <mahesh@linux.ibm.com>, 
	Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof Wilczy??ski <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Niklas Cassel <cassel@kernel.org>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: Re: [PATCH v5 1/4] PCI/ERR: Add support for resetting the Root Ports
 in a platform specific way
Message-ID: <tfpszamhfxx62vclkfxqfuuda24ps6e4yti7fgywycznpwfj5l@22nggkft2mph>
References: <20250715-pci-port-reset-v5-0-26a5d278db40@oss.qualcomm.com>
 <20250715-pci-port-reset-v5-1-26a5d278db40@oss.qualcomm.com>
 <aHYOW3P0wvHo5a1j@wunner.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aHYOW3P0wvHo5a1j@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_022008_924114_53C14D33 
X-CRM114-Status: GOOD (  13.56  )
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

T24gVHVlLCBKdWwgMTUsIDIwMjUgYXQgMTA6MTY6MjdBTSBHTVQsIEx1a2FzIFd1bm5lciB3cm90
ZToKPiBPbiBUdWUsIEp1bCAxNSwgMjAyNSBhdCAwMToyOToxOFBNICswNTMwLCBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9wY2kuYwo+ID4gKysrIGIv
ZHJpdmVycy9wY2kvcGNpLmMKPiA+IEBAIC00OTY0LDcgKzQ5NjQsMTkgQEAgdm9pZCBwY2lfcmVz
ZXRfc2Vjb25kYXJ5X2J1cyhzdHJ1Y3QgcGNpX2RldiAqZGV2KQo+ID4gIAo+ID4gIHZvaWQgX193
ZWFrIHBjaWJpb3NfcmVzZXRfc2Vjb25kYXJ5X2J1cyhzdHJ1Y3QgcGNpX2RldiAqZGV2KQo+ID4g
IHsKPiA+ICsJc3RydWN0IHBjaV9ob3N0X2JyaWRnZSAqaG9zdCA9IHBjaV9maW5kX2hvc3RfYnJp
ZGdlKGRldi0+YnVzKTsKPiA+ICsJaW50IHJldDsKPiA+ICsKPiA+ICsJaWYgKGhvc3QtPnJlc2V0
X3Jvb3RfcG9ydCkgewo+ID4gKwkJcmV0ID0gaG9zdC0+cmVzZXRfcm9vdF9wb3J0KGhvc3QsIGRl
dik7Cj4gPiArCQlpZiAocmV0KQo+ID4gKwkJCXBjaV9lcnIoZGV2LCAiRmFpbGVkIHRvIHJlc2V0
IFJvb3QgUG9ydDogJWRcbiIsIHJldCk7Cj4gPiArCj4gPiArCQlyZXR1cm47Cj4gPiArCX0KPiA+
ICsKPiAKPiBUaGVyZSB1c2VkIHRvIGJlIGEgcGNpX2lzX3Jvb3RfYnVzKCkgY2hlY2sgaGVyZToK
PiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNTI0MTg1MzA0LjI2Njk4LTItbWFu
aXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmcvCj4gCgpSaWdodC4gSSBmb3Jnb3QgdG8gaW5j
bHVkZSB0aGF0IHNlcmllcywgYnV0IHNvbWVob3cgbWFuYWdlZCB0byByZW1lbWJlciB0aGUKcy9z
bG90L3Jvb3RfcG9ydCBjaGFuZ2UuCgpXaWxsIGluY29ycG9yYXRlIGluIG5leHQgcmV2aXNpb24s
IHRoYW5rcyEKCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
