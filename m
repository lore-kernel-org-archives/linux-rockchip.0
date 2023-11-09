Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E1DEC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIO+ofs59Ak/tSNw2nAYLq0Y2sUJqV7yRVoc7ir6YvQ=; b=zzfhGcT8MFhz9K
	VNIv5jGpJG6Oe7Op4x1tcZy303F/+SuQXJDD4hyXY2bpFaCISpB/0AqP16FixqKfwAA59rHrjJam1
	Hd9Kp+bpmvs9ncX7jeF8iGI03LaZF95fU4YsqSeFoKqIijo+Xc9+kVwtgVqo69OERhiQGmz7bLxuj
	BSS5f+er5WpuWoaBrHg/0P1xF2cm49jZfA2KJLfDUyXL6lzwgijhATu0TKZJLkM8lBcBTq+E9xdd6
	n+YV2IcDbIOf3yogahMSSX6AlBupbd3DyGPyC22A8PfSEShLFnDWOhMLDcT9uaKIHUVT0WT5XMwS5
	HwK1FoMzQKT4f58Y2R4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Bx-00642p-1a;
	Thu, 09 Nov 2023 11:27:21 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Bt-00641W-3A;
	Thu, 09 Nov 2023 11:27:19 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1CC7B6607421;
	Thu,  9 Nov 2023 11:27:15 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699529236;
	bh=elsGLjJBUb0H7SaXpx5HZ3Jp4Gtyrn+yMrEadZP4Gdk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=I3MnaGQem39Sj5xyItDxU2YsUjGm+wnLAEIlocZ+hSVaI6WV4gSFOKN+F2sarwt5g
	 jXyefOGfiPIgs8uclUyUQBpI9xXCAZTLYWdwWFXcso/DoVY1vrnE8Q136E1fENU2BH
	 nOjQO4Pa532J1Vgycgw9M5/Ij6LqSyhrCUhEq0o4mwPIbdsuUyBTl0H5PvKKjt2b8A
	 2LzYxyEn0SBvJ98VhPfowGXefKJeRMAky2a/DnYIe2qh5pbFxqKHZw5hMKrMscRaTp
	 3VZ18Ex7R7CuvfTZbaef+hbJENlSsmBxJSy3eadshVp+bzpnmw1oJISX0UvoRyR5be
	 W3XT0l2d1jXJg==
Message-ID: <083e43d9-452a-4b11-b7f1-f75992bc795e@collabora.com>
Date: Thu, 9 Nov 2023 12:27:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 35/56] media: cedrus: Stop direct calls to queue
 num_buffers field
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Maxime Ripard <mripard@kernel.org>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-36-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-36-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_032718_173579_6C7BFE1B 
X-CRM114-Status: GOOD (  16.25  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUGF1bCwKClcgZG5pdSAzMS4xMC4yMDIzIG/CoDE3OjMwLCBCZW5qYW1pbiBHYWlnbmFyZCBw
aXN6ZToKPiBVc2UgdmIyX2dldF9udW1fYnVmZmVycygpIHRvIGF2b2lkIHVzaW5nIHF1ZXVlIG51
bV9idWZmZXJzIGZpZWxkIGRpcmVjdGx5Lgo+IFRoaXMgYWxsb3dzIHVzIHRvIGNoYW5nZSBob3cg
dGhlIG51bWJlciBvZiBidWZmZXJzIGlzIGNvbXB1dGVkIGluIHRoZQo+IGZ1dHVyZS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFi
b3JhLmNvbT4KPiBBY2tlZC1ieTogUGF1bCBLb2NpYWxrb3dza2kgPHBhdWwua29jaWFsa293c2tp
QGJvb3RsaW4uY29tPgoKR2l2ZW4geW91J3ZlIGFsYXJlZHkgQS1iLCB3b3VsZCB5b3UgYmUgb2sg
d2l0aCBhZGRpbmcgdGhpcyBzZW50ZW5jZToKCiJXaGlsZSBhdCBpdCwgY2hlY2sgdGhlIHJldHVy
biB2YWx1ZSBvZiB2YjJfZ2V0X2J1ZmZlcigpLiIKCnRvIHRoZSBjb21taXQgbWVzc2FnZSBib2R5
PwoKQEJlbmphbWluOgoKV2l0aCB0aGlzIGNoYW5nZSwgeW91IGNhbiBhZGQgbXkKClJldmlld2Vk
LWJ5OiBBbmRyemVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgoKPiBD
QzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+IC0tLQo+ICAgZHJpdmVycy9z
dGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NC5jIHwgOSArKysrKysrLS0KPiAg
IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYyB8IDkgKysr
KysrKy0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMv
Y2VkcnVzX2gyNjQuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVz
X2gyNjQuYwo+IGluZGV4IGRmYjQwMWRmMTM4YS4uM2UyODQzZWY2Y2NlIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+ICsrKyBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+IEBAIC02
NTMsOCArNjUzLDEzIEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19oMjY0X3N0b3Aoc3RydWN0IGNlZHJ1
c19jdHggKmN0eCkKPiAgIAo+ICAgCXZxID0gdjRsMl9tMm1fZ2V0X3ZxKGN0eC0+ZmgubTJtX2N0
eCwgVjRMMl9CVUZfVFlQRV9WSURFT19DQVBUVVJFKTsKPiAgIAo+IC0JZm9yIChpID0gMDsgaSA8
IHZxLT5udW1fYnVmZmVyczsgaSsrKSB7Cj4gLQkJYnVmID0gdmIyX3RvX2NlZHJ1c19idWZmZXIo
dmIyX2dldF9idWZmZXIodnEsIGkpKTsKPiArCWZvciAoaSA9IDA7IGkgPCB2YjJfZ2V0X251bV9i
dWZmZXJzKHZxKTsgaSsrKSB7Cj4gKwkJc3RydWN0IHZiMl9idWZmZXIgKnZiID0gdmIyX2dldF9i
dWZmZXIodnEsIGkpOwo+ICsKPiArCQlpZiAoIXZiKQo+ICsJCQljb250aW51ZTsKPiArCj4gKwkJ
YnVmID0gdmIyX3RvX2NlZHJ1c19idWZmZXIodmIpOwo+ICAgCj4gICAJCWlmIChidWYtPmNvZGVj
LmgyNjQubXZfY29sX2J1Zl9zaXplID4gMCkgewo+ICAgCQkJZG1hX2ZyZWVfYXR0cnMoZGV2LT5k
ZXYsCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2Vk
cnVzX2gyNjUuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gy
NjUuYwo+IGluZGV4IGZjOTI5NzIzMjQ1Ni4uNTJlOTRjOGYyZjAxIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYwo+ICsrKyBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYwo+IEBAIC04Njks
OCArODY5LDEzIEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19oMjY1X3N0b3Aoc3RydWN0IGNlZHJ1c19j
dHggKmN0eCkKPiAgIAo+ICAgCXZxID0gdjRsMl9tMm1fZ2V0X3ZxKGN0eC0+ZmgubTJtX2N0eCwg
VjRMMl9CVUZfVFlQRV9WSURFT19DQVBUVVJFKTsKPiAgIAo+IC0JZm9yIChpID0gMDsgaSA8IHZx
LT5udW1fYnVmZmVyczsgaSsrKSB7Cj4gLQkJYnVmID0gdmIyX3RvX2NlZHJ1c19idWZmZXIodmIy
X2dldF9idWZmZXIodnEsIGkpKTsKPiArCWZvciAoaSA9IDA7IGkgPCB2YjJfZ2V0X251bV9idWZm
ZXJzKHZxKTsgaSsrKSB7Cj4gKwkJc3RydWN0IHZiMl9idWZmZXIgKnZiID0gdmIyX2dldF9idWZm
ZXIodnEsIGkpOwo+ICsKPiArCQlpZiAoIXZiKQo+ICsJCQljb250aW51ZTsKPiArCj4gKwkJYnVm
ID0gdmIyX3RvX2NlZHJ1c19idWZmZXIodmIpOwo+ICAgCj4gICAJCWlmIChidWYtPmNvZGVjLmgy
NjUubXZfY29sX2J1Zl9zaXplID4gMCkgewo+ICAgCQkJZG1hX2ZyZWVfYXR0cnMoZGV2LT5kZXYs
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
