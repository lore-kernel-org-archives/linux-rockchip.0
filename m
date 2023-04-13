Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52B03C77B61
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 19:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iAu2glWrM2EHeoDClO1XyEmsNboC9rGws6rLZKzhJtk=; b=jmG1XYyjqju9cU
	wzaZ9G5adKDJ2gdHG+BLkCgxJjRLrhEP7S5bv0d0OtB6ZwAOAQvdjKNhhe1FNmj9zM3f8KOnPtVVm
	cW7tbsVA1ZAxrgUeNclO/c35BfcGeu76XKNaZsozuqGfh4mAXbqd8fPu31/TOdRJBCto7I7g1xmhE
	4R8FK/uIChYcY3DXXzKglqaOAlsO9UsgSMo2b9Y8+XMRCapB7lXU4SFZBCXS+H/dWCySGG/+DHTah
	qtf7fZavDzwECXrNGlJF3E7bhbxIZHFjuahJkRfAxkQJYfEn9K66cIH1cqCt62CScmagYKVCrACoO
	g7mQ6hTrKpzah+C6YG2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pn2x3-0072d8-1Q;
	Thu, 13 Apr 2023 19:49:49 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pn2x1-0072cW-0o
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 19:49:48 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:199e::580])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 19413660320A;
	Thu, 13 Apr 2023 20:49:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681415386;
	bh=33ztFNKOpkHxAjMI2GtUpgW6g+FEs/sAItMi5JB2yj4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=DymNRe6sOeOrsjk1oMDLD4c5cnhnTp1ty2+svjZCB2wYXz5rRygi4I4I1NXUAjDZT
	 cEky83h8kJBh0l2dqrvO7/IxMAcQ81im+9tb5Yb+QFKAmIxQI3szMzsjwdT+dY0EHE
	 c16kUP8Rmf9Z+CRxqSJ0hll8taVbpj4vo4d7Fng5pbjH4srCroCdKSuThjjsrGfRrg
	 bolya6Ong11I3FcKkdSBUNZsUaKxDRaMc7HL3ynjnxkX6HT+ZfxeBi3CDP8fgmKq95
	 63qS1reGyYZDfTbmoAkG0VhK/5rfKE68EX9+P6DFb15zmENwVLEiBdcbr1I12eu8FI
	 gnhP5EoiXcYhg==
Message-ID: <c81a218076a40228630ad192efa8d3a9079013e4.camel@collabora.com>
Subject: Re: [PATCH v2] media: verisilicon: Fix crash when probing encoder
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	m.szyprowski@samsung.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Thu, 13 Apr 2023 15:49:36 -0400
In-Reply-To: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
References: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_124947_443598_6F9C40D7 
X-CRM114-Status: GOOD (  16.67  )
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

SGksCgpjYXVzZSBJIHNlbnQgYSBSYiBvbiBvbGQgb25lIGFmdGVyIHYyIHdhcyBzZW50LCB0aGUg
ZXh0cmEgY2xlYW51cCBtYWtlIHNlbnNlIHRvCm1lLgoKTGUgamV1ZGkgMTMgYXZyaWwgMjAyMyDD
oCAxMjo0NyArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgYSDDqWNyaXTCoDoKPiBjdHgtPnZwdV9k
c3RfZm10IGlzIG5vIG1vcmUgaW5pdGlhbGl6ZWQgYmVmb3JlIGNhbGxpbmcgaGFudHJvX3RyeV9m
bXQoKQo+IHNvIGFzc2lnbmUgaXQgdG8gdnB1X2ZtdCBsZWQgdG8gY3Jhc2ggdGhlIGtlcm5lbC4K
PiBMaWtlIGZvciBkZWNvZGVyIGNhc2UgdXNlICdmbXQnIGFzIGZvcm1hdCBmb3IgZW5jb2RlciBh
bmQgY2xlYW4gdXAKPiB0aGUgY29kZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWln
bmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiBUZXN0ZWQtYnk6IE1hcmVr
IFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPiBGaXhlczogZGI2ZjY4YjUx
ZTVjICgibWVkaWE6IHZlcmlzaWxpY29uOiBEbyBub3Qgc2V0IGNvbnRleHQgc3JjL2RzdCBmb3Jt
YXRzIGluIHJlc2V0IGZ1bmN0aW9ucyIpCgoKUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUg
PG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gdmVyc2lvbiAyOgo+IC0g
UmVtb3ZlIHVzZWxlc3MgdnB1X2ZtdC4KPiAKPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fdjRsMi5jIHwgMTAgKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiBpbmRleCA4ZjE0MTQwODVmNDcu
LmQ3MWY3OTQ3MTM5NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb192NGwyLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb192NGwyLmMKPiBAQCAtMjc1LDcgKzI3NSw3IEBAIHN0YXRpYyBpbnQgaGFu
dHJvX3RyeV9mbXQoY29uc3Qgc3RydWN0IGhhbnRyb19jdHggKmN0eCwKPiAgCQkJICBzdHJ1Y3Qg
djRsMl9waXhfZm9ybWF0X21wbGFuZSAqcGl4X21wLAo+ICAJCQkgIGVudW0gdjRsMl9idWZfdHlw
ZSB0eXBlKQo+ICB7Cj4gLQljb25zdCBzdHJ1Y3QgaGFudHJvX2ZtdCAqZm10LCAqdnB1X2ZtdDsK
PiArCWNvbnN0IHN0cnVjdCBoYW50cm9fZm10ICpmbXQ7Cj4gIAlib29sIGNhcHR1cmUgPSBWNEwy
X1RZUEVfSVNfQ0FQVFVSRSh0eXBlKTsKPiAgCWJvb2wgY29kZWQ7Cj4gIAo+IEBAIC0yOTUsMTEg
KzI5NSw3IEBAIHN0YXRpYyBpbnQgaGFudHJvX3RyeV9mbXQoY29uc3Qgc3RydWN0IGhhbnRyb19j
dHggKmN0eCwKPiAgCj4gIAlpZiAoY29kZWQpIHsKPiAgCQlwaXhfbXAtPm51bV9wbGFuZXMgPSAx
Owo+IC0JCXZwdV9mbXQgPSBmbXQ7Cj4gLQl9IGVsc2UgaWYgKGN0eC0+aXNfZW5jb2Rlcikgewo+
IC0JCXZwdV9mbXQgPSBjdHgtPnZwdV9kc3RfZm10Owo+IC0JfSBlbHNlIHsKPiAtCQl2cHVfZm10
ID0gZm10Owo+ICsJfSBlbHNlIGlmICghY3R4LT5pc19lbmNvZGVyKSB7Cj4gIAkJLyoKPiAgCQkg
KiBXaWR0aC9oZWlnaHQgb24gdGhlIENBUFRVUkUgZW5kIG9mIGEgZGVjb2RlciBhcmUgaWdub3Jl
ZCBhbmQKPiAgCQkgKiByZXBsYWNlZCBieSB0aGUgT1VUUFVUIG9uZXMuCj4gQEAgLTMxMSw3ICsz
MDcsNyBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4
ICpjdHgsCj4gIAlwaXhfbXAtPmZpZWxkID0gVjRMMl9GSUVMRF9OT05FOwo+ICAKPiAgCXY0bDJf
YXBwbHlfZnJtc2l6ZV9jb25zdHJhaW50cygmcGl4X21wLT53aWR0aCwgJnBpeF9tcC0+aGVpZ2h0
LAo+IC0JCQkJICAgICAgICZ2cHVfZm10LT5mcm1zaXplKTsKPiArCQkJCSAgICAgICAmZm10LT5m
cm1zaXplKTsKPiAgCj4gIAlpZiAoIWNvZGVkKSB7Cj4gIAkJLyogRmlsbCByZW1haW5pbmcgZmll
bGRzICovCj4gLS0gCj4gMi4zNC4xCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
