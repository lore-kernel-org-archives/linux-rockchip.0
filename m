Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01E2DC02183
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 17:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=OYDa4GySwx95bOlwZjLwciXrsohsc58cnMWQJ1OTlk8=; b=nCM/K9+keUMtIy
	7EMRxSluKxqOvzJ3iw7bes9wsxxjqHqWqFWskK8pwE+HgDF4fwB1+j5fRTL8MLApSEAY43cSCuqS6
	f+vgKDJ6qFBBnbRWtv8DkzOhtK46XdQtNpD5SVsV6prfIWiDlvGDx9JUa84PiN3puUvm1bvs1fhpJ
	XAKwtqBywea0oqMvnpAdj3j5JtmOZa+AYDyXBztTcq0Fe2DgkH69W68jRM5W9TzOdxoVxCkkqPV1P
	DKHoXanf6gXd/nUTxNY+nkoDyQnnEy6qG4lcWumo1fCOGSIM199Vy8WKclKCmhfG1e5Ap/0bAeJqZ
	NmFFX9EYPwj/TYsTI2ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY7We-0000000Cf0a-37Zy;
	Wed, 15 Jan 2025 17:49:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY7VN-0000000CemJ-0OmV;
	Wed, 15 Jan 2025 17:48:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C4ADF5C5DB3;
	Wed, 15 Jan 2025 17:47:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AF20C4CED1;
	Wed, 15 Jan 2025 17:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736963316;
	bh=nEpsi2Yg2uzElK6pn63lsWLWfMq1/r33gPIr0bj4FDY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=pR6bUyQNjMdTUloG+A+LFhM0r1HPHTFHf18a+LYr7WmvgOV78YR0sCLHzGn+Sfg8e
	 odv4JyCWpMlxio4KNaiDMnuJZqYndCmAOL4ESppJyHiHZc4B+76s9F/crzBA7ecNLi
	 Lx0vqC9+snUKwBdyRQ9/WTd8A6zoQxCWSeHN+4RUzoIRfYLHWUVTlspWT4f0Y5HTXC
	 LfLNxiEqRZU7vJ8qyIhokO5/f77Rzp3nyz2+mnnNvinQ68gPBNvYxMsJc+2/iSPMSQ
	 YAZVGljXNddAPfVsqapDhe41yE9HE4t3AuDzf3jcpq+fUjx1oBKCdInys/cHfjJc2Z
	 sASzwyinBTvVA==
Date: Wed, 15 Jan 2025 11:48:34 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Dan Carpenter <dan.carpenter@linaro.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH linux-next v1] PCI: rockchip: Improve error handling in
 clock return value
Message-ID: <20250115174834.GA538101@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250115174012.bdny6nxxr4tuzyis@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_094837_176235_F78F6D15 
X-CRM114-Status: GOOD (  19.49  )
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

T24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgMTE6MTA6MTJQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIE1vbiwgSmFuIDA2LCAyMDI1IGF0IDA5OjAwOjM4UE0gKzA1MzAs
IEFuYW5kIE1vb24gd3JvdGU6Cj4gCj4gU3ViamVjdCBzaG91bGQgaW5jbHVkZSB0aGUgd29yZCAn
Zml4JyBub3QgJ2ltcHJvdmUnCj4gCj4gPiBVcGRhdGVzIHRoZSBlcnJvciBtZXNzYWdlIHRvIGlu
Y2x1ZGUgdGhlIGFjdHVhbCByZXR1cm4gdmFsdWUgb2YKPiAKPiBzL1VwZGF0ZXMvVXBkYXRlIChp
bXBlcmF0aXZlIGZvcm0pCj4gCj4gPiBkZXZtX2Nsa19idWxrX2dldF9hbGwsIHdoaWNoIHByb3Zp
ZGVzIG1vcmUgY29udGV4dCBmb3IgZGVidWdnaW5nCj4gPiBhbmQgdHJvdWJsZXNob290aW5nIHRo
ZSByb290IGNhdXNlIG9mIGNsb2NrIHJldHJpZXZhbCBmYWlsdXJlcy4KPiAKPiBCdHcsIGl0IGlz
IG5vdCBqdXN0IHVwZGF0aW5nIHRoZSBlcnJvciBtZXNzYWdlLCBpdCBhbHNvIHJldHVybnMgdGhl
Cj4gYWN0dWFsIGVycm9yIGNvZGUuCgpBbHJlYWR5IHNxdWFzaGVkIGludG8KaHR0cHM6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvcGNpL3BjaS5naXQvY29tbWl0Lz9p
ZD1hYmRkNGM4ZWE3ZDcsCnNvcnJ5IEkgZGlkbid0IG1lbnRpb24gdGhhdCBoZXJlLgoKPiA+IFJl
cG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQGxpbmFyby5vcmc+Cj4gPiBD
bG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTAxMDQwNDA5LlNVVjA5UjgwLWxr
cEBpbnRlbC5jb20vCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBn
bWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2No
aXAuYyB8IDMgKystCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+ID4g
aW5kZXggZmVhODY3YzI0Zjc1Li5jYTYxNjNmOWQyZGQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiA+IEBAIC05OSw3ICs5OSw4IEBAIGludCByb2NrY2hp
cF9wY2llX3BhcnNlX2R0KHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiA+ICAKPiA+
ICAJcm9ja2NoaXAtPm51bV9jbGtzID0gZGV2bV9jbGtfYnVsa19nZXRfYWxsKGRldiwgJnJvY2tj
aGlwLT5jbGtzKTsKPiA+ICAJaWYgKHJvY2tjaGlwLT5udW1fY2xrcyA8IDApCj4gPiAtCQlyZXR1
cm4gZGV2X2Vycl9wcm9iZShkZXYsIGVyciwgImZhaWxlZCB0byBnZXQgY2xvY2tzXG4iKTsKPiA+
ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcm9ja2NoaXAtPm51bV9jbGtzLAo+ID4gKwkJ
CQkgICAgICJmYWlsZWQgdG8gZ2V0IGNsb2Nrc1xuIik7Cj4gPiAgCj4gPiAgCXJldHVybiAwOwo+
ID4gIH0KPiA+IC0tIAo+ID4gMi40Ny4xCj4gPiAKPiAKPiAtLSAKPiDgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
