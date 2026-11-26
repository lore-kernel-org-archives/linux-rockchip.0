Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903FE606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 13:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vuIu8axl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=Z/fjWoYP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:From:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2AD/3TJGo3CahF96KbcM76z8h9xpgkHgdY3zNcqadG8=; b=vuIu8axl8uoIBkYnCH6WTklx1z
	OJbkKpm6HtxeYuYXh3T5BjpN7im0n3Mq2JByJGgJDLuRAkE6VeZEjI0LCPXVpGnJdgumF3F3mL3r5
	2TYpxiesOmdlh6R2B7eRq5+YqsC0yPxRyGSb9o51x1/SdO1qYBPEg+Y/pUCey8LiDOlZ8qV4B5Hj2
	KafNKiNPmE0zEGoGfI55d+CJUBYLDAfPzvW5vIzokZ+DOOQb5N7TJRjlbgkJA4pWZ6sb01Va97Jcr
	dTuphXpjr7s9iePBT2/2Wo7GkFzOGVxUyn7uuL1TskGzjnK1zxGuPuXixb2fx9PhR+I2TE2hv6BkI
	jGt4h3ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWZeU-0000000DOST-1g3r;
	Thu, 26 Nov 2026 13:36:42 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWZeO-0000000DORQ-2SJp
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 13:36:38 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 54AAB1A1814;
	Thu, 26 Nov 2026 13:36:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 28BAF604ED;
	Thu, 26 Nov 2026 13:36:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B2CF111E68014;
	Thu, 26 Nov 2026 14:36:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1795700188; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=H7KUPIMQTQxlieuvSYIhpe8VSF9yrzbbI9C5IKtg8XE=;
	b=Z/fjWoYP2LAGa6bLi7P4Z6A4oK6uLAlsKjy48jTevgNt+gcBdaiS/FKo+vhiGy+hKVEc7P
	hsoWpo8RFP+x+WsvWrwlEAcZmGZJ2Nu0iy3cdui/YjiibfHWSVQpVaws1OB/jgY/0OPcU6
	wm2/OajYv86qWJIRnX0A8+9k9ToLwDtnSUVXQBigX3zX/Jv6NmiRhvCPn1e0/5OJ1JmONI
	GEHs51lEiQJDhUA9RsvuY2YXr/OTwCdzIt3v3CUwy4SZ+BEGLiwGUOYHZBP8mTXDVcdiZT
	u8TpQSKG38lCq1gopF2sTB71m3HQFLu6lYP8Vqmzrn7Qqsf2NewQu6a/xRxpOg==
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Thu, 26 Nov 2026 14:36:23 +0100
Message-Id: <DN56L7R8OJ70.3FZ8Y1LD57SO@bootlin.com>
Cc: "Ulf Hansson" <ulfh@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>,
 "Sebastian Reichel" <sebastian.reichel@collabora.com>, "Shawn Lin"
 <shawn.lin@rock-chips.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, <linux-pm@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
From: =?utf-8?q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: "Ulf Hansson" <ulf.hansson@oss.qualcomm.com>,
 =?utf-8?q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Subject: Re: [PATCH] pmdomain: rockchip: fix warning when deferring probe
X-Mailer: aerc 0.22.0-0-gc2f86b7abde3
References: <20261122-rockchip-pm-defer-v1-1-5b41635e3410@bootlin.com>
 <CAPx+jO8+WAK+W8BVOSJVHoLEvQUUr0-d7gEEK+yNwhJH5skYUw@mail.gmail.com>
In-Reply-To: <CAPx+jO8+WAK+W8BVOSJVHoLEvQUUr0-d7gEEK+yNwhJH5skYUw@mail.gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_053636_768327_38CA501D 
X-CRM114-Status: GOOD (  11.86  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgVWxmLAoKT24gVGh1IE5vdiAyNiwgMjAyNiBhdCAxOjQzIFBNIENFVCwgVWxmIEhhbnNzb24g
d3JvdGU6Cj4gT24gU3VuLCBOb3YgMjIsIDIwMjYgYXQgMjozOOKAr1BNIEFsZXhpcyBMb3Rob3LD
qQo+IDxhbGV4aXMubG90aG9yZUBib290bGluLmNvbT4gd3JvdGU6CgpbLi4uXQoKPj4gRml4ZXM6
IGQ4YjM4NDc3NzA2NiAoInBtZG9tYWluOiByb2NrY2hpcDogZml4IGNsb2NrIGxlYWsgb24gZG9t
YWluIHByb2JlIGZhaWx1cmUiKQo+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4aXMgTG90aG9yw6kgPGFs
ZXhpcy5sb3Rob3JlQGJvb3RsaW4uY29tPgo+Cj4gSSBoYXZlIGFscmVhZHkgcXVldWVkIGEgcGF0
Y2ggZm9yIHRoaXMgYXQgbXkgZml4ZXMgYnJhbmNoOgo+IGM2NzE2NjBlYTBhZiBwbWRvbWFpbjog
cm9ja2NoaXA6IE9ubHkgcHV0IGNsb2NrcyB0aGF0IGhhdmUgYmVlbgo+IHN1Y2Nlc3NmdWxseSBv
YnRhaW5lZAo+Cj4gSWYgdGhhdCBpc24ndCBzdWZmaWNpZW50LCBwbGVhc2UgcmUtc3BpbiB0aGUg
JHN1YmplY3QgcGF0Y2guCgpJJ3ZlIHNlYXJjaGVkIGxvcmUgYmVmb3JlIHBvc3RpbmcgbXkgcGF0
Y2gsIGJ1dCBub3Qgd2VsbCBlbm91Z2gKYXBwYXJlbnRseSA7KSBTb3JyeSBmb3IgdGhlIG5vaXNl
IHRoZW4uCgpBbGV4aXMKCgo+Cj4gS2luZCByZWdhcmRzCj4gVWZmZQo+Cj4+IC0tLQo+PiAgZHJp
dmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgfCAxICsKPj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbWRvbWFpbi9y
b2NrY2hpcC9wbS1kb21haW5zLmMgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFp
bnMuYwo+PiBpbmRleCBlMTkzZjk3OGQ1ZjMuLmFkYzNiZWJjZDkyOCAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPj4gKysrIGIvZHJpdmVycy9w
bWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPj4gQEAgLTg1NCw2ICs4NTQsNyBAQCBzdGF0
aWMgaW50IHJvY2tjaGlwX3BtX2FkZF9vbmVfZG9tYWluKHN0cnVjdCByb2NrY2hpcF9wbXUgKnBt
dSwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgZGV2X2VycihwbXUtPmRldiwKPj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAiJXBPRm46IGZhaWxlZCB0byBnZXQgY2xrIGF0IGlu
ZGV4ICVkOiAlZFxuIiwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBub2RlLCBp
LCBlcnJvcik7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHBkLT5udW1fY2xrcyA9IGk7Cj4+
ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX3B1dF9jbG9ja3M7Cj4+ICAgICAgICAg
ICAgICAgICB9Cj4+ICAgICAgICAgfQo+Pgo+PiAtLS0KPj4gYmFzZS1jb21taXQ6IDk4ODExN2Nj
MWJiMTczMzhjNTg2YTRlMjFhZGU4OGI1Mzk3ZWFjMzMKPj4gY2hhbmdlLWlkOiAyMDI2MTEyMi1y
b2NrY2hpcC1wbS1kZWZlci1hZGIzMzMxM2YxMTAKPj4KPj4gQmVzdCByZWdhcmRzLAo+PiAtLQo+
PiBBbGV4aXMgTG90aG9yw6kgPGFsZXhpcy5sb3Rob3JlQGJvb3RsaW4uY29tPgo+PgoKCgoKCi0t
IApBbGV4aXMgTG90aG9yw6ksIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdp
bmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
