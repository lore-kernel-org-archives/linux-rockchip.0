Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 838A0C021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 16:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QJhOEBZPGbsFd8ruEzoovrGuDKWKC8eWa+0RB7BoHQ=; b=eRqsZDXEw2VikE
	6jeo0gKvxVVUlv4wB04UIhuYJ++uLY4NdsBmPW1THqa/RqA4MXI5kjEr5Jx0xxJWqgppbMRZgaivr
	QYWSMaJVYg8E5W6u6cC4FrF+kbQsavOgZVEbdC11k1z4NPS/uiOgOJRq9bzxyGI5Gq/7FBwW8hGKF
	Vs9FuNDZmiC5Qd1wVpPARpSBZulTy5UPwQ0V60wJwifyujlRm9+9JolSre9unv0Vl3uAbZUIvqs1X
	bRF4wSh3lvyi4yEuk+zRChfluX3Rk8lTiGy/GTFwKEAsfJxX4yocZzi3iWR+S8mjCOtSl6n4WtTU0
	SaOlC0H2ga1kXd9DLvvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmxxq-00000000H1p-01FH;
	Tue, 25 Feb 2025 16:39:22 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmvZ0-0000000HSxp-0JBH
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 14:05:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740492331;
	bh=SrlaSBpwPqmnPKBwwpLbhryOe+dfDdFe+sPMj9Vemu4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=N1q6kuDK+8ntA0AaElI0VJl2/OzVvACcjDQ/P2V6svRV3s3WHMve5JiVdUTd80Qnr
	 K58KBSM2Qb7dmqKHwGdQaEiK3UWwswphxj1skJWk1RbYRl4Fj7bXE/qs/9fgEg50J1
	 BUP3XOGCQjOG8C/VDC0iKES/YCq/oVsixPwtuRDOfp3wtG2gZxbKZOIkh59FjX7prU
	 k5WwdWnA5MuwVDcYr2pkAGTOoAABa8gLQTvBDrGUiJ4VFzdwQHUOpvoXn2UXoNOzgs
	 47beLJVO33KZ7Qr8qaSaU7DXYtnjHXjT2fRY6GwNfwkZe2dUs3zweivyihBuC63lEM
	 Y9DZpkTydLIRA==
Received: from [IPv6:2606:6d00:11:e976::5ac] (unknown [IPv6:2606:6d00:11:e976::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4453317E09B5;
	Tue, 25 Feb 2025 15:05:29 +0100 (CET)
Message-ID: <808a9d14be9c8de25e2ba5232ee01f874acb66b6.camel@collabora.com>
Subject: Re: [PATCH] fixup! media: v4l2-common: Add helpers to calculate
 bytesperline and sizeimage
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Fricke
	 <sebastian.fricke@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Ezequiel Garcia	
 <ezequiel@vanguardiasur.com.ar>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  Boris Brezillon
 <boris.brezillon@collabora.com>, linux-media <linux-media@vger.kernel.org>,
 linux-kernel	 <linux-kernel@vger.kernel.org>, linux-rockchip	
 <linux-rockchip@lists.infradead.org>, linux-staging	
 <linux-staging@lists.linux.dev>, Mauro Carvalho Chehab	
 <mchehab+huawei@kernel.org>, Alex Bee <knaerzche@gmail.com>, Benjamin
 Gaignard	 <benjamin.gaignard@collabora.com>, Detlev Casanova	
 <detlev.casanova@collabora.com>, Dan Carpenter <dan.carpenter@linaro.org>, 
 Jonas Karlman <jonas@kwiboo.se>
Date: Tue, 25 Feb 2025 09:05:27 -0500
In-Reply-To: <795082c4-499f-4935-b580-72b01d82fe1b@xs4all.nl>
References: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
	 <20250225124008.195405-1-sebastian.fricke@collabora.com>
	 <1953d249c3c.d1d6678f34821.5333341344528638254@collabora.com>
	 <795082c4-499f-4935-b580-72b01d82fe1b@xs4all.nl>
Organization: Collabora Canada
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_060534_291899_32DDE2E7 
X-CRM114-Status: GOOD (  22.51  )
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

TGUgbWFyZGkgMjUgZsOpdnJpZXIgMjAyNSDDoCAxMzo1MCArMDEwMCwgSGFucyBWZXJrdWlsIGEg
w6ljcml0wqA6Cj4gT24gMi8yNS8yNSAxMzo0NiwgU2ViYXN0aWFuIEZyaWNrZSB3cm90ZToKPiA+
IEhleSwKPiA+IAo+ID4gc29ycnkgYWJvdXQgbWlzc2luZyB0aGlzIGluIHRoZSBwYXRjaCBzZXJp
ZXMsIGlmIHlvdSBkb24ndCBsaWtlIHRoZQo+ID4gZml4dXAgcGF0aCwgdGhlbiBJIGNhbiBzZW5k
IGEgbmV3IHBhdGNoIHNlcmllcyBhcyB3ZWxsLgo+ID4gSSBqdXN0IHRob3VnaHQgdGhlIGNoYW5n
ZSB3YXMgbWlub3IgZW5vdWdoIGFuZCBhZGRyZXNzZWQgdGhlIGZpbmFsCj4gPiBjb21tZW50cy4K
PiAKPiBBaCwgdGhpcyByZWxhdGVzIHRvIHBhdGNoIDAxLzEyIG9mIHRoaXMgcGF0Y2ggc2VyaWVz
Ogo+IAo+IGh0dHBzOi8vcGF0Y2h3b3JrLmxpbnV4dHYub3JnL3Byb2plY3QvbGludXgtbWVkaWEv
bGlzdC8/c2VyaWVzPTE0NTc3Cj4gCj4gTmV4dCB0aW1lIGl0IG1pZ2h0IGJlIGJldHRlciB0byBq
dXN0IHJlcGx5IHRvIHRoZSBvZmZlbmRpbmcgcGF0Y2gKPiB3aXRoIHRoZSBmaXh1cC4KPiAKPiBU
aGF0IHdheSBpdCBpcyBjbGVhciBmb3IgdGhlIG1haW50YWluZXIgd2hhdCB0aGUgZml4dXAgaXMg
Zm9yLgoKSSBiZWxpZXZlIHlvdSBjb3VsZCBoYXZlIHVzZWQ6CgogIGdpdCBzZW5kLWVtYWlsIC1p
bi1yZXBseS10bz05ZGIzNTZiZC00ZDcxLTQ5NzUtOTFjNi03NDM1YmVlOGFlZjNAeHM0YWxsLm5s
IDxzb21lcGF0Y2g+CgpUbyBtYWtlIHRoYXQgYSByZXBseS4KCmNoZWVycywKTmljb2xhcwo+IAo+
IFJlZ2FyZHMsCj4gCj4gCUhhbnMKPiAKPiA+IAo+ID4gUmVnYXJkcywKPiA+IFNlYmFzdGlhbgo+
ID4gCj4gPiDCoC0tLS0gT24gVHVlLCAyNSBGZWIgMjAyNSAxMzo0MDowOCArMDEwMMKgIFNlYmFz
dGlhbiBGcmlja2UKPiA+IDxzZWJhc3RpYW4uZnJpY2tlQGNvbGxhYm9yYS5jb20+IHdyb3RlIC0t
LSAKPiA+IMKgPiAtLS0KPiA+IMKgPsKgIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY29t
bW9uLmMgfCAyICstCj4gPiDCoD7CoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPiA+IMKgPiAKPiA+IMKgPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS92
NGwyLWNvcmUvdjRsMi1jb21tb24uYwo+ID4gYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwy
LWNvbW1vbi5jCj4gPiDCoD4gaW5kZXggMDdhOTk5Zjc1NzU1Li5hYTg2YjhjNmFhNzUgMTAwNjQ0
Cj4gPiDCoD4gLS0tIGEvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jb21tb24uYwo+ID4g
wqA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY29tbW9uLmMKPiA+IMKgPiBA
QCAtMzYwLDcgKzM2MCw3IEBAIHN0YXRpYyBpbmxpbmUgdW5zaWduZWQgaW50Cj4gPiB2NGwyX2Zv
cm1hdF9ibG9ja19oZWlnaHQoY29uc3Qgc3RydWN0IHY0bDJfZm9ybWF0X2luZgo+ID4gwqA+wqAg
fQo+ID4gwqA+wqAgCj4gPiDCoD7CoCBzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCB2NGwyX2Zv
cm1hdF9wbGFuZV9zdHJpZGUoY29uc3QKPiA+IHN0cnVjdCB2NGwyX2Zvcm1hdF9pbmZvICppbmZv
LCBpbnQgcGxhbmUsCj4gPiDCoD4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IHdpZHRoKQo+ID4gwqA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50
IHdpZHRoKQo+ID4gwqA+wqAgewo+ID4gwqA+wqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgaGRpdiA9
IHBsYW5lID8gaW5mby0+aGRpdiA6IDE7Cj4gPiDCoD7CoMKgwqDCoMKgIHVuc2lnbmVkIGludCBh
bGlnbmVkX3dpZHRoID0KPiA+IMKgPiAtLSAKPiA+IMKgPiAyLjI1LjEKPiA+IMKgPiAKPiA+IMKg
PiAKPiA+IAo+IAoKLS0gCk5pY29sYXMgRHVmcmVzbmUKUHJpbmNpcGFsIEVuZ2luZWVyIGF0IENv
bGxhYm9yYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
