Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04439CF34CA
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Oct 2024 21:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=LhPuTI70r+0yp7K5v8rGxcUNzyqjREdzB/5YiWIFWOM=; b=KNRtdfFy5sX/FO
	AHbtCT583hQCfTQW9Fr2QYmORO5x/jo7W2SFo44BY8pQkhqwBf+RxF+fOsEsvJv3OJn3kEWdc5C8L
	KT+7eTsGh5KtcVKSeG19mIQ8bcoCDd/4HOvrJTHlzt40uRlSm/edx/lilZKHP0iUSvgoFo837xlnA
	G6VuK1EM4y3Ima3Zn2kFIcEOYqU/juvrSHmfKAOTeUhJSR2ElZvKF8s1tCUBSljEglqRtGfv3/rne
	mHYh6DHN2FkxlcDpq+AEq5yOUCUFr7xZnY242tn1yVFE0jRDYEj5TdCs8WAIdTjatTRJJ4DNqnq9B
	Xd/7hvzj5eajeWbz9LUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swTlS-0000000ARAV-0Muv;
	Thu, 03 Oct 2024 21:53:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swTkC-0000000AQuM-0piX;
	Thu, 03 Oct 2024 21:52:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C43A5A419F5;
	Thu,  3 Oct 2024 21:52:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83B90C4CEC5;
	Thu,  3 Oct 2024 21:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727992338;
	bh=dNBSGplwis3K3/BoL1llvA0r10YCQrzM8dDYNiQKPf0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=OFkJM08rFSi8aZtXHy9IcjrHdWQ0uJl4NGs2vHxEYWcVSCL++MdeTG14/EMMULXR4
	 mAs2LRqTtUB5P3xWP/OEpwzrOVR9zzyPaSejovUAZskqTSnpEXafq0xYTwEbLleb7M
	 /sjXgymA0+ZB9mpjGj5TLbnTRtA85IhP8Id5nb/niURGG98WY/OuS4FqA7YDOW4AWt
	 Ujm2aFbY/oIWFm8Dqgul9AC6K0nXig05mWpjdmGxvDd5z+DYzLyjMBHRKot3Bhc6fW
	 Z8RlyqCJhYwh6gYC+8y4dAiLLDvUqmwD6mNsvsag8gwpaIwTghfa4aJGnjthx96G5p
	 PXoPaAr7aJRmQ==
Date: Thu, 3 Oct 2024 16:52:17 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	linux-pci@vger.kernel.org, vigneshr@ti.com, s-vadapalli@ti.com,
	lpieralisi@kernel.org, kw@linux.com,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	bhelgaas@google.com, jingoohan1@gmail.com, krzk@kernel.org,
	alim.akhtar@samsung.com, shawn.guo@linaro.org,
	songxiaowei@hisilicon.com, marek.vasut+renesas@gmail.com,
	yoshihiro.shimoda.uh@renesas.com, thierry.reding@gmail.com,
	jonathanh@nvidia.com, thomas.petazzoni@bootlin.com, pali@kernel.org,
	florian.fainelli@broadcom.com,
	angelogioacchino.delregno@collabora.com, ryder.lee@mediatek.com,
	heiko@sntech.de, kevin.xie@starfivetech.com, kishon@kernel.org,
	dlemoal@kernel.org, shawn.lin@rock-chips.com,
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: controller: Switch back to struct
 platform_driver::remove()
Message-ID: <20241003215217.GA326383@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tdxrmmqyzcufupnwkdbg7lwgadizm7v3lxjirykijbml7x54ze@upbdzycdsilm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_145220_390422_3C1CECFD 
X-CRM114-Status: GOOD (  20.81  )
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

T24gVGh1LCBPY3QgMDMsIDIwMjQgYXQgMTI6MTc6MDhQTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gSGVsbG8sCj4gCj4gSSBmb3VuZCB0aGlzIHBhdGNoIGluIG5leHQgYXMgNzEy
MzU5Y2I1ZTlkOTU1M2MxMzgzZmM1MDA1NTkzYWExOTg4ZWZjNC4KPiAKPiBXaGlsZSByZWJhc2lu
ZyBteSBwYXRjaGVzIHdpdGggdGhlIHNhbWUgcHVycG9zZSBJIGZvdW5kIHRoYXQgdGhpcyBwYXRj
aAo+IGhhbmRsZWQgdGhlIGluZGVudGlvbiBkaWZmZXJlbnRseSB0aGFuIEkgZGlkIGZvciB0d28g
ZmlsZXM6CgpVcGRhdGVkIDcxMjM1OWNiNWU5ZCAoIlBDSTogY29udHJvbGxlcjogU3dpdGNoIGJh
Y2sgdG8gc3RydWN0CnBsYXRmb3JtX2RyaXZlcjo6cmVtb3ZlKCkiKSB0byBhZG9wdCB5b3VyIGlu
ZGVudGF0aW9uIGNoYW5nZXMgYW5kIGFsc28KY29udmVydCBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUteGlsaW54LW53bC5jLCB0aGFuayB5b3UgdmVyeSBtdWNoCmZvciBub3RpY2luZyB0aGlz
IQoKPiBPbiBNb24sIFNlcCAyMywgMjAyNCBhdCAwODo1NzowNkFNICswMjAwLCBTZXJnaW8gUGFy
YWN1ZWxsb3Mgd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2llLWFsdGVyYS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLWFsdGVyYS5jCj4gPiBp
bmRleCBlZjczYmFlZmFlYjkuLmI5MjFiYmI0ZGU4MCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvcGNpZS1hbHRlcmEuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9wY2llLWFsdGVyYS5jCj4gPiBAQCAtODE3LDcgKzgxNyw3IEBAIHN0YXRpYyB2b2lkIGFs
dGVyYV9wY2llX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gIAo+ID4g
IHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGFsdGVyYV9wY2llX2RyaXZlciA9IHsKPiA+
ICAJLnByb2JlCQk9IGFsdGVyYV9wY2llX3Byb2JlLAo+ID4gLQkucmVtb3ZlX25ldwk9IGFsdGVy
YV9wY2llX3JlbW92ZSwKPiA+ICsJLnJlbW92ZQk9IGFsdGVyYV9wY2llX3JlbW92ZSwKPiA+ICAJ
LmRyaXZlciA9IHsKPiA+ICAJCS5uYW1lCT0gImFsdGVyYS1wY2llIiwKPiA+ICAJCS5vZl9tYXRj
aF90YWJsZSA9IGFsdGVyYV9wY2llX29mX21hdGNoLAo+IAo+IGhlcmUgaW5kZW50aW9uIGlzIGlu
Y29uc2lzdGVudCBhbHJlYWR5IGJlZm9yZSwgSSByZXBsYWNlZCB0aGUgdGFicyBhZnRlcgo+ICIu
cHJvYmUiIGJ5IGEgc2luZ2xlIHNwYWNlIChhbmQgYWZ0ZXIgLnJlbW92ZSwgdG9vKS4KPiAKPiA+
IFsuLi5dCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLWhpc2kt
ZXJyb3IuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1oaXNpLWVycm9yLmMKPiA+IGlu
ZGV4IGFkOWQ1ZmZjZDllMy4uY2I1ZmNmZTAzMmQxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLWhpc2ktZXJyb3IuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLWhpc2ktZXJyb3IuYwo+ID4gQEAgLTMxNyw3ICszMTcsNyBAQCBzdGF0aWMg
c3RydWN0IHBsYXRmb3JtX2RyaXZlciBoaXNpX3BjaWVfZXJyb3JfaGFuZGxlcl9kcml2ZXIgPSB7
Cj4gPiAgCQkuYWNwaV9tYXRjaF90YWJsZSA9IGhpc2lfcGNpZV9hY3BpX21hdGNoLAo+ID4gIAl9
LAo+ID4gIAkucHJvYmUJCT0gaGlzaV9wY2llX2Vycm9yX2hhbmRsZXJfcHJvYmUsCj4gPiAtCS5y
ZW1vdmVfbmV3CT0gaGlzaV9wY2llX2Vycm9yX2hhbmRsZXJfcmVtb3ZlLAo+ID4gKwkucmVtb3Zl
CT0gaGlzaV9wY2llX2Vycm9yX2hhbmRsZXJfcmVtb3ZlLAo+ID4gIH07Cj4gPiAgbW9kdWxlX3Bs
YXRmb3JtX2RyaXZlcihoaXNpX3BjaWVfZXJyb3JfaGFuZGxlcl9kcml2ZXIpOwo+ID4gIAo+IAo+
IEhlcmUgSSBhZGRlZCBhbm90aGVyIHRhYiBhZnRlciAiLnJlbW92ZSIuCj4gCj4gPiBbLi4uXQo+
IAo+IEFsc28gdGhlIHBhdGNoIG1pc3NlZCB0byBhZGFwdCBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUteGlsaW54LW53bC5jLgo+IAo+IEJlc3QgcmVnYXJkcwo+IFV3ZQoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
