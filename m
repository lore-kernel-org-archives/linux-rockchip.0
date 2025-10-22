Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C58DCCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 10:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cu3y0a6/ph1zrEEgJHnEiaw69AYOUq3ju4dUrjyxJYE=; b=lbQcPX+cM5heH9
	lUkfl+ePgekR9QLgdRccAQ6yYGogkzbgT6EMJDHE/n8Lpm0aSJNVhUK6AuDCmJ9onhLT6Kt2b4F98
	ZlJ3fCrAYmt/O3/TMveMJDSPfZp86D6E049nGiOQQh4+Z4ROfUW2njfMqBaKEIgFGc/CMlq/V+ZH1
	S9UKC1ygMLFGwBSjKZsTv+N9lM4CmMil07gJREHM1PVxVmkr7p8vI1sgElpTcc5PktoAmw1Uf4e7J
	diCwI3u/9gFJ6N7nrYsCUnXqZlAaJejtNXmo89mo5/juHZYFNKP29Ylo8fAG3bC1xfgcUfTbv1a2k
	uRxbxrvBluEwnAVf2sIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVgQ-00000002NsS-2K0X;
	Wed, 22 Oct 2025 10:03:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVgO-00000002NrN-2SyQ
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 10:03:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F0926603B4;
	Wed, 22 Oct 2025 10:03:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13FD8C4CEE7;
	Wed, 22 Oct 2025 10:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761127383;
	bh=g2eQ/XRl5BAB5W6vH4Oc9qOLoxiOhuVNGppNMd8/IJU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NqgpcHEfGBRKySeZ21h5A8x8ZnywlgP2o7/HIVLL5MWt4WzFKjH8XdxVXPGsfQeyd
	 HXoq99H1HfgbuecSaGzWkaBa/NcMcWeeT1dLRnZ7ecCySB/JnYnUI+j/VXPQuJg5oO
	 J6HKMQUgAR4PgqmTwFo0mfqvSxfdUY5u74J4RVS0WW5U2hThDPrHXmJN7zZfMPHv9a
	 QUiebCCJP+V3lEwJcmarpyEBh8d5uWXRzQdBNZY0JNOecE7c2gZb3jxZAutfb25HbW
	 ZtThhy41S+1Uh22Jj97Xo1huK7+x7X2M+CWJAiZUyB3t8hacWDvbbRsTS7tVsLOzeg
	 MhP82qtL2bH1A==
Date: Wed, 22 Oct 2025 15:32:47 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Bjorn Helgaas <bhelgaas@google.com>, 
	Thierry Reding <thierry.reding@gmail.com>, linux-rockchip@lists.infradead.org, 
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/4] PCI: of: Add of_pci_clkreq_present()
Message-ID: <eorncfyktfdc33md7ogqccy5z2lsye7ew32wdy4sbegvjo2rdl@qp2zy7u75jqg>
References: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
 <1761032907-154829-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1761032907-154829-2-git-send-email-shawn.lin@rock-chips.com>
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

T24gVHVlLCBPY3QgMjEsIDIwMjUgYXQgMDM6NDg6MjRQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IG9mX3BjaV9jbGtyZXFfcHJlc2VudCgpIGlzIHVzZWQgYnkgaG9zdCBkcml2ZXJzIHRvIGRl
Y2lkZSB3aGV0aGVyIHRoZSBjbGtyZXEjCj4gaXMgcHJvcGVybHkgY29ubmVjdGVkIGFuZCBjb3Vs
ZCBlbmFibGUgTDEuMS9MMS4yIHN1cHBvcnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGlu
IDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL29mLmMgIHwg
MTggKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvcGNpL3BjaS5oIHwgIDYgKysrKysrCj4g
IDIgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BjaS9vZi5jIGIvZHJpdmVycy9wY2kvb2YuYwo+IGluZGV4IDM1NzkyNjVmMTE5OC4uNTJj
NmQzNjUwODNiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL29mLmMKPiArKysgYi9kcml2ZXJz
L3BjaS9vZi5jCj4gQEAgLTEwMTAsMyArMTAxMCwyMSBAQCBpbnQgb2ZfcGNpX2dldF9lcXVhbGl6
YXRpb25fcHJlc2V0cyhzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICBF
WFBPUlRfU1lNQk9MX0dQTChvZl9wY2lfZ2V0X2VxdWFsaXphdGlvbl9wcmVzZXRzKTsKPiArCj4g
Ky8qKgo+ICsgKiBvZl9wY2lfY2xrcmVxX3ByZXNlbnQoKSAtIENoZWNrIGlmIHRoZSAic3VwcG9y
dHMtY2xrcmVxIiBpcyBwcmVzZW50CgpJIGRvbid0IHNlZSBhIGJlbmVmaXQgb2YgdGhpcyBBUEks
IHRiaC4gVGhlIEFQSSBuYW1lIGNyZWF0ZXMgYW4gaW1wcmVzc2lvbiB0aGF0CnRoZSBBUEkgd2ls
bCBjaGVjayBmb3IgdGhlIHByZXNlbmNlIG9mIENMS1JFUSMgc2lnbmFsIGluIERULCBidXQgaXQg
Y2hlY2tzCmZvciB0aGUgcHJlc2VuY2Ugb2YgdGhlICdzdXBwb3J0cy1jbGtyZXEnIHByb3BlcnR5
LiBFdmVuIHRob3VnaCB0aGUgcHJlc2VuY2Ugb2YKdGhlIHByb3BlcnR5IGltcGxpZXMgdGhhdCB0
aGUgQ0xLUkVRIyByb3V0aW5nIGlzIGF2YWlsYWJsZSwgSSdkIHByZWZlciB0byBjaGVjawpmb3Ig
dGhlIHByb3BlcnR5IGV4cGxpY2l0bHkgaW5zdGVhZCBvZiBoaWRpbmcgaXQgaW5zaWRlIHRoaXMg
QVBJLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
