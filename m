Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3B7BC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 21:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDA0kkRaiYxC30FPjWkKh6q8R5TDWmY20qcx2cJqdLM=; b=YYK43Kl/eGDvUq
	8zvLAWM6Njyd9OUMnkFVR6hvUHUfwMlBxlBzMRG7W48dhiK20Tei8XyejAYow2U6D7omr62qJtBqO
	lbYaGo42QAXFLBVZNEAoqC7l3IQfRWqniAgc2huHimtb3oTCbWOGyrLHt30+JtXf4PULGqHmWLOY4
	XHUNdaXXIYp+qUFW06smD/6jp2gWnSH0u9ZTPaGwUG6sO+09UncFZGYdQOND2RYWxUJ82GX7PtwUJ
	2ODCVMJxNdSXvHg2LNFcXbkV3e0qYk2yXMJUH0No1ta0D0hLvmOKExYfE11n3YBl4OzG6OOGHSDbL
	KcOz3r2CQEVCDM0EhIKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Tv3-002Syg-1r;
	Tue, 07 Nov 2023 21:47:33 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Tv1-002Sy9-1P
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 21:47:32 +0000
Received: from [100.84.166.245] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 454726607479;
	Tue,  7 Nov 2023 21:47:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699393650;
	bh=Wd+mOYLiwknQrs4ZPLDPT6EpeXqS6AylXK6ib0MoKl0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=N6s+zGIaJQIu+GyjfbOPaXqUulA7JbVvTIvQ0BC4cVN1VwzrHlsV8Owqf1bsBBx4m
	 gI611QH0C+/Lx8UE9Tliq0sH8y8b1bCMEBGArH8vwU8yPvkHerj3cE/n/WvuBsl/Vp
	 gSkTX8Ki+Chix3P+QASp5i3BsaKU8N//8xGxRJKdmVSIMK2VURcTzCxyYQFy8phTpa
	 t+CzbM6ZuDwJClbanRn11huUw82j6juvbIyAKwLBtLTcSNm0TJEQWn3dp7B0OKkZH8
	 VyPzsVBYnI0RiE02VfLSxHdLK2DV21re9bTFVAm/7WbFF7jI2izeaqpv/SYAM9WPo8
	 DCNil1/6BLacw==
Message-ID: <7d4a1662ad9bb3531793c47b6c41dad3215f9162.camel@collabora.com>
Subject: Re: [PATCH v4 04/11] media: rkvdec: h264: Don't hardcode SPS/PPS
 parameters
From: Nicolas  Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Hans Verkuil <hverkuil-cisco@xs4all.nl>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>, Sebastian Fricke
	 <sebastian.fricke@collabora.com>, Christopher Obbard
	 <chris.obbard@collabora.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Tue, 07 Nov 2023 16:47:17 -0500
In-Reply-To: <20231105165521.3592037-5-jonas@kwiboo.se>
References: <20231105165521.3592037-1-jonas@kwiboo.se>
	 <20231105165521.3592037-5-jonas@kwiboo.se>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_134731_600893_A15FE67C 
X-CRM114-Status: GOOD (  12.50  )
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

TGUgZGltYW5jaGUgMDUgbm92ZW1icmUgMjAyMyDDoCAxNjo1NSArMDAwMCwgSm9uYXMgS2FybG1h
biBhIMOpY3JpdMKgOgo+IEZyb206IEFsZXggQmVlIDxrbmFlcnpjaGVAZ21haWwuY29tPgo+IAo+
IFNvbWUgU1BTL1BQUyBwYXJhbWV0ZXJzIGFyZSBjdXJyZW50bHkgaGFyZGNvZGVkIGluIHRoZSBk
cml2ZXIgZXZlbgo+IHRob3VnaCB0aGV5IGV4aXN0IGluIHRoZSBzdGFibGUgdWFwaSBjb250cm9s
cy4KPiAKPiBVc2UgdmFsdWVzIGZyb20gU1BTL1BQUyBjb250cm9scyBpbnN0ZWFkIG9mIGhhcmRj
b2RpbmcgdGhlbS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWls
LmNvbT4KPiBbam9uYXNAa3dpYm9vLnNlOiBjb25zdHJhaW50X3NldF9mbGFncyBjb25kaXRpb24s
IGNvbW1pdCBtZXNzYWdlXQo+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3
aWJvby5zZT4KClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25l
QGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+IHY0Ogo+IC0gTm8gY2hhbmdlCj4gCj4gdjM6Cj4gLSBO
ZXcgcGF0Y2gKPiAKPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5j
IHwgMTMgKysrKysrKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2
ZGVjL3JrdmRlYy1oMjY0LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1o
MjY0LmMKPiBpbmRleCA3YTFlNzZkNDIzZGYuLjhiY2U4OTAyYjhkZCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMKPiArKysgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMKPiBAQCAtNjU1LDEzICs2NTUsMTQg
QEAgc3RhdGljIHZvaWQgYXNzZW1ibGVfaHdfcHBzKHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsCj4g
IAo+ICAjZGVmaW5lIFdSSVRFX1BQUyh2YWx1ZSwgZmllbGQpIHNldF9wc19maWVsZChod19wcy0+
aW5mbywgZmllbGQsIHZhbHVlKQo+ICAJLyogd3JpdGUgc3BzICovCj4gLQlXUklURV9QUFMoMHhm
LCBTRVFfUEFSQU1FVEVSX1NFVF9JRCk7Cj4gLQlXUklURV9QUFMoMHhmZiwgUFJPRklMRV9JREMp
Owo+IC0JV1JJVEVfUFBTKDEsIENPTlNUUkFJTlRfU0VUM19GTEFHKTsKPiArCVdSSVRFX1BQUyhz
cHMtPnNlcV9wYXJhbWV0ZXJfc2V0X2lkLCBTRVFfUEFSQU1FVEVSX1NFVF9JRCk7Cj4gKwlXUklU
RV9QUFMoc3BzLT5wcm9maWxlX2lkYywgUFJPRklMRV9JREMpOwo+ICsJV1JJVEVfUFBTKCEhKHNw
cy0+Y29uc3RyYWludF9zZXRfZmxhZ3MgJiAoMSA8PCAzKSksIENPTlNUUkFJTlRfU0VUM19GTEFH
KTsKPiAgCVdSSVRFX1BQUyhzcHMtPmNocm9tYV9mb3JtYXRfaWRjLCBDSFJPTUFfRk9STUFUX0lE
Qyk7Cj4gIAlXUklURV9QUFMoc3BzLT5iaXRfZGVwdGhfbHVtYV9taW51czgsIEJJVF9ERVBUSF9M
VU1BKTsKPiAgCVdSSVRFX1BQUyhzcHMtPmJpdF9kZXB0aF9jaHJvbWFfbWludXM4LCBCSVRfREVQ
VEhfQ0hST01BKTsKPiAtCVdSSVRFX1BQUygwLCBRUFBSSU1FX1lfWkVST19UUkFOU0ZPUk1fQllQ
QVNTX0ZMQUcpOwo+ICsJV1JJVEVfUFBTKCEhKHNwcy0+ZmxhZ3MgJiBWNEwyX0gyNjRfU1BTX0ZM
QUdfUVBQUklNRV9ZX1pFUk9fVFJBTlNGT1JNX0JZUEFTUyksCj4gKwkJICBRUFBSSU1FX1lfWkVS
T19UUkFOU0ZPUk1fQllQQVNTX0ZMQUcpOwo+ICAJV1JJVEVfUFBTKHNwcy0+bG9nMl9tYXhfZnJh
bWVfbnVtX21pbnVzNCwgTE9HMl9NQVhfRlJBTUVfTlVNX01JTlVTNCk7Cj4gIAlXUklURV9QUFMo
c3BzLT5tYXhfbnVtX3JlZl9mcmFtZXMsIE1BWF9OVU1fUkVGX0ZSQU1FUyk7Cj4gIAlXUklURV9Q
UFMoc3BzLT5waWNfb3JkZXJfY250X3R5cGUsIFBJQ19PUkRFUl9DTlRfVFlQRSk7Cj4gQEAgLTY4
OCw4ICs2ODksOCBAQCBzdGF0aWMgdm9pZCBhc3NlbWJsZV9od19wcHMoc3RydWN0IHJrdmRlY19j
dHggKmN0eCwKPiAgCQkgIERJUkVDVF84WDhfSU5GRVJFTkNFX0ZMQUcpOwo+ICAKPiAgCS8qIHdy
aXRlIHBwcyAqLwo+IC0JV1JJVEVfUFBTKDB4ZmYsIFBJQ19QQVJBTUVURVJfU0VUX0lEKTsKPiAt
CVdSSVRFX1BQUygweDFmLCBQUFNfU0VRX1BBUkFNRVRFUl9TRVRfSUQpOwo+ICsJV1JJVEVfUFBT
KHBwcy0+cGljX3BhcmFtZXRlcl9zZXRfaWQsIFBJQ19QQVJBTUVURVJfU0VUX0lEKTsKPiArCVdS
SVRFX1BQUyhwcHMtPnNlcV9wYXJhbWV0ZXJfc2V0X2lkLCBQUFNfU0VRX1BBUkFNRVRFUl9TRVRf
SUQpOwo+ICAJV1JJVEVfUFBTKCEhKHBwcy0+ZmxhZ3MgJiBWNEwyX0gyNjRfUFBTX0ZMQUdfRU5U
Uk9QWV9DT0RJTkdfTU9ERSksCj4gIAkJICBFTlRST1BZX0NPRElOR19NT0RFX0ZMQUcpOwo+ICAJ
V1JJVEVfUFBTKCEhKHBwcy0+ZmxhZ3MgJiBWNEwyX0gyNjRfUFBTX0ZMQUdfQk9UVE9NX0ZJRUxE
X1BJQ19PUkRFUl9JTl9GUkFNRV9QUkVTRU5UKSwKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
