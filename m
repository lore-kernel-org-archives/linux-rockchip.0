Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F0A7C7EE30
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 16:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNS54dQh5qJxJojC4m58D+yOEi9fdxgypvALJIz3CE8=; b=sr2YHBcBmijwhz
	74hgzy5wmL3jbNMfU/CCPUPLEceHuRFwt9ooAdVPNGSk2l9nB8ycdJYPLUeICJlhMVnGsDea1HClx
	93bJdaqKg21e5NmSSETz4kclbYP4Jb4LENucSpY2+MaiG0uhCjth0V8fi//nJaq22mbdHOIRRmSZl
	r/fiwSTTm/SOQq9rMO4vQyUzu7f/sM+vqE5z1284OLn4rsqndZB8zn9jqkzSlmw0Q97LdWAPsY/7u
	/sSvvc/F2Lx9NzzUT0l5K0bIAegV6ZuT7Oqj/+SRpPjNv5qdxVF14fJkZPFopfbbwL2szJmhmi9Bl
	LLwXDMOxfkGzKr1875Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUpID-0000000CEwP-0EkB;
	Thu, 26 Jun 2025 16:17:41 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUoa1-0000000C7kE-15NE;
	Thu, 26 Jun 2025 15:32:02 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750951908; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=FrndBkfH5Yb2hczHdjvZqLHKmGh24t0qRtvSHL54QVLoPvLancdd9ugXgSDXr1yfWFaiA+96D7SNInWSRIKjBaLrLdQcAxuHyJq9MS5VMMa5UgH2p09eOnrl17YZJyo16szJHeWrAAtqomNQ+5ViaIM1hU/hkTXtvrj6Q00z1qY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750951908; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=QzJ+mw1mZ61E4BVBc6eVU0mJdCfS5N8n38LYhvIVPcQ=; 
	b=EnEyuXkYIqKLKBz4gRYejn0GG5+5NQ6QGEYB0o2XKiJKwpHS49P9LskOZViHoDDIIZ5evX2ic6yYL8d5UhZETAE+OTkyM8fpwjcSYHfaFl4MYm9lN+t4cppALW0Rxd/wbR8VMzaf2vRHjzpSjXo3+wb1HDLn98cLTZqDzutbe8M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nfraprado@collabora.com;
	dmarc=pass header.from=<nfraprado@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750951908;
	s=zohomail; d=collabora.com; i=nfraprado@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=QzJ+mw1mZ61E4BVBc6eVU0mJdCfS5N8n38LYhvIVPcQ=;
	b=GPwvi2JERhAm14b28wt6nqJSJUgC5hmNtxTniKoaSYSUD26Dut6Qy7SZDtqXlPC+
	u+c4iDnGone5HN01r5dARbuDDXUm9+qTLPZzTuUjRh2hrZAh0W9XL3Q/3opVM/RKrGC
	fGjtjiwqkyO+q2Wrigk0TmnOpkut8cQUyksJUZmc=
Received: by mx.zohomail.com with SMTPS id 1750951905438943.3169151421496;
	Thu, 26 Jun 2025 08:31:45 -0700 (PDT)
Message-ID: <e6b3c842625d9740da2481f9b5893015ac699db0.camel@collabora.com>
Subject: Re: [PATCH] arm64: defconfig: enable further Rockchip platform
 drivers
From: =?ISO-8859-1?Q?N=EDcolas?= "F. R. A. Prado" <nfraprado@collabora.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Heiko Stuebner
	 <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
	 <will@kernel.org>
Cc: kernel@collabora.com, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Thu, 26 Jun 2025 11:31:38 -0400
In-Reply-To: <20250626-rk3588-defconfig-v1-1-39a19a41c181@collabora.com>
References: <20250626-rk3588-defconfig-v1-1-39a19a41c181@collabora.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_083201_370063_E91AF87C 
X-CRM114-Status: GOOD (  17.14  )
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

T24gVGh1LCAyMDI1LTA2LTI2IGF0IDE3OjE2ICswMjAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3Jv
dGU6Cj4gVGhlIFJLMzU4OCBTb0MsIGFuZCBpdHMgc2libGluZywgdGhlIFJLMzU4OFMsIGFyZSBz
dXBwb3J0ZWQgYnkKPiBtYWlubGluZQo+IExpbnV4LiBIb3dldmVyLCBzb21lIG9mIGl0cyBTb0Mg
ZHJpdmVycyBhcmUgY3VycmVudGx5IG5vdCBlbmFibGVkIGluCj4gdGhlCj4gYXJtNjQgZGVmY29u
ZmlnLgo+IAo+IEVuYWJsZSByb2NrY2hpcC1kZmksIHJvY2tjaGlwLXJnYSwgYW5kIHRoZSBSb2Nr
Y2hpcCBzcGVjaWZpYwo+IGV4dGVuc2lvbnMKPiB0byBIYW50cm8gYXMgbW9kdWxlcy4KClBlcnNv
bmFsbHkgSSBkb24ndCB0aGluayB0aGUgZmlyc3QgcGFyYWdyYXBoIGFkZHMgbXVjaCwgc28gSSdk
IGRyb3AgaXQuCsKgCkFsc28gSSBmZWVsIGxpa2UgeW91J3JlIG1pc3NpbmcgdGhlIG1vc3QgaW1w
b3J0YW50IGluZm9ybWF0aW9uIGhlcmUsCndoaWNoIGlzIHdoYXQgdGhlc2UgbW9kdWxlcyBhcmUg
dXNlZCBmb3IsIHNvIEknZCBmb2N1cyBvbiB0aGF0IGVnCiJFbmFibGUgY29uZmlncyBmb3Igcm9j
a2NoaXAtZGZpLCByZ2EsIGhhbnRybywgZXRjLiBUaGlzIGVuYWJsZXMKbW9uaXRvcmluZyBvZiBE
RFIgbG9hZCwgdXNhZ2Ugb2YgdGhlIGhhcmR3YXJlIGNvZGVjcywgZXRjIgoKPiAKPiBUaGVzZSBk
cml2ZXJzIGFyZSBhbHNvIHVzZWQgb24gb3RoZXIgUm9ja2NoaXAgU29DcyB0aGF0IG1haW5saW5l
Cj4gc3VwcG9ydHMsIG5vdGFibHkgUkszNTY2L1JLMzU2OCwgYXMgd2VsbCBhcyBSSzMzOTkuCj4g
Cj4gU3VnZ2VzdGVkLWJ5OiBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyA8bmZyYXByYWRvQGNvbGxh
Ym9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZy
YXR0YXJvbGlAY29sbGFib3JhLmNvbT4KPiAtLS0KPiDCoGFyY2gvYXJtNjQvY29uZmlncy9kZWZj
b25maWcgfCAzICsrKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4gYi9hcmNoL2FybTY0L2Nv
bmZpZ3MvZGVmY29uZmlnCj4gaW5kZXgKPiBlMDcxZjhmNDU2MDdkYmZkOGUwMGI5MTViMjc5OTk5
NDllZTBmYzg4Li44YjVlY2IyMGVkNjQ1MGZhYTBkYTE0YTZmZGIKPiA0Y2IyMjdhMWY3MzVmIDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKPiArKysgYi9hcmNoL2Fy
bTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4gQEAgLTE3ODksMyArMTc4OSw2IEBAIENPTkZJR19DT1JF
U0lHSFRfU1RNPW0KPiDCoENPTkZJR19DT1JFU0lHSFRfQ1BVX0RFQlVHPW0KPiDCoENPTkZJR19D
T1JFU0lHSFRfQ1RJPW0KPiDCoENPTkZJR19NRU1URVNUPXkKPiArQ09ORklHX0RFVkZSRVFfRVZF
TlRfUk9DS0NISVBfREZJPW0KPiArQ09ORklHX1ZJREVPX1JPQ0tDSElQX1JHQT1tCj4gK0NPTkZJ
R19WSURFT19IQU5UUk9fUk9DS0NISVA9bQoKWW91IHNob3VsZCBydW4gbWFrZSBzYXZlZGVmY29u
ZmlnIGFuZCBjb21taXQgdGhlIGNvbmZpZ3MgZnJvbSB0aGUKZ2VuZXJhdGVkIGRlZmNvbmZpZyBz
byB0aGV5J3JlIGluIHRoZSByaWdodCBwbGFjZSBpbiB0aGUgZGVmY29uZmlnLApyYXRoZXIgdGhh
biBqdXN0IGFwcGVuZGluZyB0aGVtIHRvIGVuZCBsaWtlIHRoaXMuCgotLSAKVGhhbmtzLAoKTsOt
Y29sYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
