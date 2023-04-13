Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE746C77B6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 19:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5cGStN7J7BDA6Md33p54rtkL3VJ2uHIKeJpLodG0uQ=; b=aRki9vFCe5jmfC
	Qia2bTwMgEWG7Frx6wT3Jq7BNN8uV9+MCrAlUie6wvfl619rnYV8mvoUGSpDjuSQ5zTxPp9nUqQta
	P20lpxpvXkMppKiffk+x7l0lRW6lHZZHLVqr4PrYoDAsDORP9SFVHPVtqGNQHOwoHvQjWduHJmT3M
	vfXZueY7Mg/TYdzwOXQgahtqdgmKXCbmdPZ2Pw+6b2FPQLnsxcsXBAou+jSaqiewW2yy2Itqjwg80
	zuyUdpYunGzLKp3l1qL1jpaKIL3LObjoFWTfu1f6lC0KXXhvFAMeBNhQZZbcvTwmANkSV4LXMoYpI
	4h5ZDfpb2NQLVCAbcmBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pn2ss-0072DW-19;
	Thu, 13 Apr 2023 19:45:30 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pn2sp-0072CA-0K
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 19:45:28 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:199e::580])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E6C14660320A;
	Thu, 13 Apr 2023 20:45:20 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681415121;
	bh=65eXoc0efoBylnM4mEtbMIJR7GoFbIdgHVmQ7dbjtnk=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=I+T08/8nd/vNj+K+Ux+X4WiNDzGuUjSrBMEpbW7k4/3hnYSTxpLeafNIJsGUSDEPe
	 0X/Avei0x9y4S97NGSWvoRGfiUNShH0iz719atXStwoFs4KyzHL8Ll3jkmJWM88sK/
	 Oko4DKNAC7TdjjrMCvOZhQ2YR773HTcMQPcAFrZqZ9Kv+5dD5URTiPKfur462HKmjH
	 /8aRVCF19v064IcuVLchBJGkGljSa1HNhReaq8wm3jj5SrPihJLtWtjcuKCVS6ypxc
	 Du4jatv5B9kteDBrd45WTfrPEPcU9YWgs51Os1jbLbbIfCJRTHD7ZhyyAJLe7LlYFu
	 KEnWgJvqNlPOA==
Message-ID: <e377a31f457e226eaa3d23f712696ddb3578ef6b.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: Fix crash when probing encoder
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	m.szyprowski@samsung.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Thu, 13 Apr 2023 15:45:10 -0400
In-Reply-To: <20230413070344.34803-1-benjamin.gaignard@collabora.com>
References: <20230413070344.34803-1-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_124527_372349_7C7B53E2 
X-CRM114-Status: GOOD (  14.94  )
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

TGUgamV1ZGkgMTMgYXZyaWwgMjAyMyDDoCAwOTowMyArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQg
YSDDqWNyaXTCoDoKPiBjdHgtPnZwdV9kc3RfZm10IGlzIG5vIG1vcmUgaW5pdGlhbGl6ZWQgYmVm
b3JlIGNhbGxpbmcgaGFudHJvX3RyeV9mbXQoKQo+IHNvIGFzc2lnbmUgaXQgdG8gdnB1X2ZtdCBs
ZWQgdG8gY3Jhc2ggdGhlIGtlcm5lbC4KPiBMaWtlIGZvciBkZWNvZGVyIGNhc2UgdXNlICdmbXQn
IGFzIHZwdSBmb3JtYXQgZm9yIGVuY29kZXIgYW5kIGNsZWFuIHVwCj4gdGhlIGNvZGUuCj4gCj4g
U2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxh
Ym9yYS5jb20+Cj4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ft
c3VuZy5jb20+Cj4gRml4ZXM6IGRiNmY2OGI1MWU1YyAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogRG8g
bm90IHNldCBjb250ZXh0IHNyYy9kc3QgZm9ybWF0cyBpbiByZXNldCBmdW5jdGlvbnMiKQoKUmV2
aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNv
bT4KCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0
bDIuYyB8IDggKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fdjRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9fdjRsMi5jCj4gaW5kZXggOGYxNDE0MDg1ZjQ3Li41MWY1MjhmMzYyNDEgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5j
Cj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5j
Cj4gQEAgLTI5MywxMyArMjkzLDExIEBAIHN0YXRpYyBpbnQgaGFudHJvX3RyeV9mbXQoY29uc3Qg
c3RydWN0IGhhbnRyb19jdHggKmN0eCwKPiAgCQlwaXhfbXAtPnBpeGVsZm9ybWF0ID0gZm10LT5m
b3VyY2M7Cj4gIAl9Cj4gIAo+ICsJdnB1X2ZtdCA9IGZtdDsKPiArCj4gIAlpZiAoY29kZWQpIHsK
PiAgCQlwaXhfbXAtPm51bV9wbGFuZXMgPSAxOwo+IC0JCXZwdV9mbXQgPSBmbXQ7Cj4gLQl9IGVs
c2UgaWYgKGN0eC0+aXNfZW5jb2Rlcikgewo+IC0JCXZwdV9mbXQgPSBjdHgtPnZwdV9kc3RfZm10
Owo+IC0JfSBlbHNlIHsKPiAtCQl2cHVfZm10ID0gZm10Owo+ICsJfSBlbHNlIGlmICghY3R4LT5p
c19lbmNvZGVyKSB7Cj4gIAkJLyoKPiAgCQkgKiBXaWR0aC9oZWlnaHQgb24gdGhlIENBUFRVUkUg
ZW5kIG9mIGEgZGVjb2RlciBhcmUgaWdub3JlZCBhbmQKPiAgCQkgKiByZXBsYWNlZCBieSB0aGUg
T1VUUFVUIG9uZXMuCj4gLS0gCj4gMi4zNC4xCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
