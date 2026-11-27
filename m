Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E205606A337
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 18:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=azUea6dY;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=PQ2Uriou
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Et+yjIniIywgTUhnpzr39FSh+Izq/R+NsT2fZBQdvVQ=; b=azUea6dYkTxj+ttUS/xi/yHco2
	UtV2zBwBLMqUSllE7TRwxk559jAUGpvvQRvwhluwYXNGDQGig+FLF7gSLjj1rAAWF+m0UxZq90Zts
	ycSoQW/I/CuEutLXCK8mBTTHxdZJE1+2clwS1I2RYp2jr7A8yM6DPdTKoeScXbTBQ7ehbIbHo/Qfg
	47ApNCHlM51FRGiTSa3OcP/7efiGvxV21XNjyUqwDPdF+X1PMfyp6VslqdIRscRM2AOIBzq14R5ms
	37Jh4JdsJjb7LKg669FSq7+qmbASsQ2DJtijLncNhAf4+qNfwFPUgEeJO7Vj1wi4WGxjzJAamt/za
	3KB8FwAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX0w9-0000000HTAK-3mtV;
	Fri, 27 Nov 2026 18:44:45 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX0w6-0000000HT9X-34ih;
	Fri, 27 Nov 2026 18:44:43 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1795805070; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UtGoH5zyybqW5YigDWrywq5xysoqrasgDxXL9JEz0ellMRdYBFUsZGwp+pYRVgp/u4zxpa10sl9s839bFJ7aMZn5NVlT3SwltpCh26iMkcYSKRoUmhf98aTgqTlLVY+e06VV6IcJyP4+ImtCbBPlajG/KqPag4cAlSh3fXbw6qM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1795805070; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=lFuWskwWRql2Fhx97LXOZZIB1aolGuDk0+v/5Jmc32Q=; 
	b=mWgaGrSi92+Dnd9S5b6TWvbFQiXEoZkCt63aPbS/vXiGbJmXPPwpi/J+aqJL5n3dX2blKGhVfDAOZeTTYd56HyLW+y1IwS+9Pz2NiyS49GRSKVXEQKjWZhuSr4MFQsE+3tgePe/aMGRXJaxo/LpLHA5Tbjhnl7KP5IlsI3M/Eq4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: a=rsa-sha256; b=PQ2Uriou7khkZGh8nS+1xv5VhQfZJN47Cg9sVWnJe/fmoprMEJpzQk7ivHLNLktg0TauVtssr7qVoTm/LG5Q+Bb9zEWj4gIdc/a28GoijhgFw5NP55dfprxhwJ8kk1QpLXAijYWVC0jt6O1w1h5UlO5pVWpmqLhKVgOYmeI0g8M=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=lFuWskwWRql2Fhx97LXOZZIB1aolGuDk0+v/5Jmc32Q=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1795805068935159.32844594948233;
	Fri, 27 Nov 2026 10:44:28 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil+cisco@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Sven =?UTF-8?B?UMO8c2NoZWw=?= <s.pueschel@pengutronix.de>,
 kernel@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/5] v4l2: export v4l2_m2m_set_max_parallel_jobs
Date: Fri, 27 Nov 2026 13:44:26 -0500
Message-ID: <g30LShJ-QraPMSjey2r1Hg@collabora.com>
In-Reply-To: <d3eccd8c04656a46287a221b3b4f22427b21a74c.camel@collabora.com>
References: <20260810-rkvdec-multicore-v2-0-986f89d22cdc@collabora.com>
 <20260810-rkvdec-multicore-v2-3-986f89d22cdc@collabora.com>
 <d3eccd8c04656a46287a221b3b4f22427b21a74c.camel@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_104442_829331_D843D729 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1cnNkYXksIDE5IE5vdmVtYmVyIDIwMjYgMTI6MzY6MzYgRVNUIE5pY29sYXMgRHVmcmVz
bmUgd3JvdGU6Cj4gTGUgbHVuZGkgMTAgYW/Du3QgMjAyNiDDoCAxMToyMiAtMDQwMCwgRGV0bGV2
IENhc2Fub3ZhIGEgw6ljcml0IDoKPiAKPiBJIGtub3csIGl0cyBzdHJhaWdodGZvcndhcmQsIGJ1
dCBpdHMgbm90IGV2ZW4gc2lnbmVkIG9mZi4KCkkgdm9sdW50YXJpbHkgbGVmdCBpdCBvdXQgYmVj
YXVzZSB0aGlzIGlzIGZpeGVkIGluIHRoZSBsYXRlc3QgUkdBIHBhdGNoIHNldCwgc28gCnRoaXMg
aXMganVzdCB0byBtYWtlIHN1cmUgdGhlIHJlc3QgYnVpbGRzLgpUaGlzIHBhdGNoIHNob3VsZCBu
b3QgYmUgYXBwbGllZC4KCj4gTmljb2xhcwo+IAo+ID4gLS0tCj4gPiAKPiA+ICBkcml2ZXJzL21l
ZGlhL3Y0bDItY29yZS92NGwyLW1lbTJtZW0uYyB8IDEgKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS92NGwyLWNv
cmUvdjRsMi1tZW0ybWVtLmMKPiA+IGIvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1tZW0y
bWVtLmMgaW5kZXggMTRhYzljODU4MDNkLi5mNmY4ODY0ZjIzZDIKPiA+IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1tZW0ybWVtLmMKPiA+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItbWVtMm1lbS5jCj4gPiBAQCAtMTI4LDYgKzEyOCw3IEBA
IHZvaWQgdjRsMl9tMm1fc2V0X21heF9wYXJhbGxlbF9qb2JzKHN0cnVjdAo+ID4gdjRsMl9tMm1f
ZGV2ICptMm1fZGV2LD4gCj4gPiAgewo+ID4gIAo+ID4gIAltMm1fZGV2LT5tYXhfcGFyYWxsZWxf
am9icyA9IG1heF9wYXJhbGxlbF9qb2JzOwo+ID4gIAo+ID4gIH0KPiA+IAo+ID4gK0VYUE9SVF9T
WU1CT0wodjRsMl9tMm1fc2V0X21heF9wYXJhbGxlbF9qb2JzKTsKPiA+IAo+ID4gIHN0cnVjdCB2
YjJfcXVldWUgKnY0bDJfbTJtX2dldF92cShzdHJ1Y3QgdjRsMl9tMm1fY3R4ICptMm1fY3R4LAo+
ID4gIAo+ID4gIAkJCQkgICAgICAgZW51bSB2NGwyX2J1Zl90eXBlIHR5cGUpCgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
