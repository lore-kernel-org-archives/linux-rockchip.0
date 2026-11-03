Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5EE4606A324
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 14:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YjUt2klJ;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=qOnMK50P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5DGspfM7gVNE8PgP2EdBdHMQNOwVDSlEO8Trqpp59/k=; b=YjUt2klJYXYSoS3FaAOGr6yPX2
	Bz6oCC8OMg/SK7ltQSwhDRVFC53Lx0iRop1lic2MrovcuMK5psWyTtzlmrk1bYQfpcmCf+RwdIuKL
	QgFPYnbbkUitazkA0Up6tpM5mHw/ujvP8B1IMSETy+esUr52o/1Fx99MuJSI2x4dP3Kfsxnt2iHxY
	TyOyud3VpjMb1lIW9doGr9r0LDtvw8i6hrcxh6YhJM9HD+USJcZyAX37YPUZHBo5jMNl00taKCsA+
	aIMhRSkUsX495qmF44F6vyzEBRFJ3/AzpyGwFM8MXkonsEvUtxXPAVfLhNg46fJB7EZxTwW8rvxij
	Z5nsCRcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFii-00000002kBw-0MQ9;
	Tue, 03 Nov 2026 14:42:40 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFif-00000002kBR-39CS;
	Tue, 03 Nov 2026 14:42:39 +0000
Received: from [192.168.0.43] (chfd-03-b2-v4wan-176392-cust229.vm15.cable.virginm.net [82.19.20.230])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 03CE9802;
	Tue,  3 Nov 2026 15:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1793716817;
	bh=fM8o4Yo6P86qJeboPptU0LDF1gRn7q7sqG/GOoNdjNs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qOnMK50PBKh6oHOxSSuyvk+004pafcNzaowW/M8IjGltitFSkhnZHRE3Q//JC36s7
	 vOU7Jtx6M2ylrocsMAQ051XYvnXzQ1F05n3sz0tkz/C6okmxjKCoOHfGLDuLgBWilR
	 1cyffsIeejfgae0B2Ip1Xq69vU2f20M8FF6bSqvE=
Message-ID: <d78d7ee3-0c48-484a-a5b0-9ba44ebf9171@ideasonboard.com>
Date: Tue, 3 Nov 2026 14:42:30 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] media: v4l2-device: Add struct v4l2_device.flags
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 "Gjorgji Rosikopulos (Consultant)" <gjorgji.rosikopulos@oss.qualcomm.com>,
 Tomasz Figa <tfiga@chromium.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna@fastmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Heiko Stuebner <heiko@sntech.de>, Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20261103-rkisp1-suspend-and-resume-v1-0-08f863b6fdc5@ideasonboard.com>
 <20261103-rkisp1-suspend-and-resume-v1-2-08f863b6fdc5@ideasonboard.com>
 <25952c4c-36db-4361-9ab6-0ca1b1f960bf@oss.qualcomm.com>
 <3478043661b8d89ba5089f56383926785570b7b3.camel@ndufresne.ca>
Content-Language: en-US
From: Dan Scally <dan.scally@ideasonboard.com>
In-Reply-To: <3478043661b8d89ba5089f56383926785570b7b3.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_064237_962887_A88792B2 
X-CRM114-Status: GOOD (  18.95  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgYm90aAoKT24gMDMvMTEvMjAyNiAxMzo1MSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBM
ZSBtYXJkaSAwMyBub3ZlbWJyZSAyMDI2IMOgIDEwOjA5ICswMjAwLCBHam9yZ2ppIFJvc2lrb3B1
bG9zIChDb25zdWx0YW50KSBhCj4gw6ljcml0wqA6Cj4+IEhpIERhbmllbCwKPj4KPj4gT24gMTEv
My8yMDI2IDk6NDAgQU0sIERhbmllbCBTY2FsbHkgd3JvdGU6Cj4+PiBBZGQgYSBmbGFncyBmaWVs
ZCB0byBzdHJ1Y3QgdjRsMl9kZXZpY2UsIGFsb25nIHdpdGggYSBzaW5nbGUgZmxhZwo+Pj4gdmFs
dWUgdGhhdCBpcyBkZXNpZ25lZCB0byB0ZWxsIHY0bDItYXN5bmMgaW4gd2hpY2ggZGlyZWN0aW9u
IGRhdGEKPj4+IGZsb3dzIGZvciB0aGlzIHY0bDIgZGV2aWNlIHNvIHRoYXQgaXQga25vd3MgaG93
IHRvIHNldCB1cCBkZXZpY2UKPj4+IGxpbmtzIGJldHdlZW4gc3ViZGV2aWNlcyBjb25uZWN0ZWQg
dXNpbmcgdGhlIGFzeW5jIEFQSXMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFNjYWxs
eSA8ZGFuLnNjYWxseUBpZGVhc29uYm9hcmQuY29tPgo+Pj4gLS0tCj4+PiAgIGluY2x1ZGUvbWVk
aWEvdjRsMi1kZXZpY2UuaCB8IDcgKysrKysrKwo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvdjRsMi1kZXZpY2Uu
aCBiL2luY2x1ZGUvbWVkaWEvdjRsMi1kZXZpY2UuaAo+Pj4gaW5kZXggMjVmNjliMWI4ZGIwM2Qw
NzdmNzU3MDQ3MWQ1YzY5MTBmY2FmZTExMC4uOWIxNzkxNmQ2MzY0MWJhNjM3Y2Y4YzM3YWE5MjU3
NDliZDRlMjEzNCAxMDA2NDQKPj4+IC0tLSBhL2luY2x1ZGUvbWVkaWEvdjRsMi1kZXZpY2UuaAo+
Pj4gKysrIGIvaW5jbHVkZS9tZWRpYS92NGwyLWRldmljZS5oCj4+PiBAQCAtMTUsNiArMTUsOSBA
QAo+Pj4gICAKPj4+ICAgc3RydWN0IHY0bDJfY3RybF9oYW5kbGVyOwo+Pj4gICAKPj4+ICsvKiBT
ZXQgdGhpcyBmbGFnIGlmIHRoaXMgVjRMMiBkZXZpY2UgaXMgYW4gIm91dHB1dCIgcmF0aGVyIHRo
YW4gYW4gImlucHV0Ii4gKi8KPj4+ICsjZGVmaW5lIFY0TDJfREVWSUNFX0ZMX0lTX09VVFBVVAkJ
CUJJVCgwKQo+Pgo+PiBKdXN0IGZvciB0aGUgY2xhcmlmaWNhdGlvbiBkbyB3ZSBjaGFuZ2UgdGhl
IG1lYW5pbmcgb2Ygb3V0cHV0LT5jYXB0dXJlIHRvIGlucHV0LT5vdXRwdXQ/Cj4+IEkga25vdyB0
aGF0IG91dHB1dCBpcyBjb25mdXNpbmcgZm9yIGV2ZXJ5b25lIGluY2x1ZGluZyBtZSBidXQgc29t
ZWhvdyBpIGdldCB1c2VkIHRvIGl0Lgo+PiBIb3dldmVyIHRvIGNsYXJpZnkgd2hhdCB0aGlzIG1l
YW5zIHdpbGwgYmUgaGVscGZ1bCA6LSkKPiAKPiBJIGFncmVlIHRoaXMgaXMgY29uZnVzaW5nLiBU
byBhdm9pZCBhbGwgdGhlIGxlZ2FjeSwgd2UgY291bGQgdXNlIFBST0RVQ0VSIC8KPiBDT05TVU1F
Uiwgb3IgZG9lcyBhbnlvbmUgaGFzIGEgYmV0dGVyIGlkZWE/CgpJIGhhdmUgbm8gYmV0dGVyIGlk
ZWFzIC0gbmFtaW5nIHRoaW5ncyB3YXMgbmV2ZXIgbXkgc3Ryb25nIHN1aXQgLSBzbyBoYXBweSB0
byB1c2UgUFJPRFVDRVIgLyBDT05TVU1FUi4KClRoYW5rcwpEYW4KCj4gCj4gTmljb2xhcwo+IAo+
Pgo+PiB+R2pvcmdqaQo+Pgo+Pj4gKwo+Pj4gICAvKioKPj4+ICAgICogc3RydWN0IHY0bDJfZGV2
aWNlIC0gbWFpbiBzdHJ1Y3QgdG8gZm9yIFY0TDIgZGV2aWNlIGRyaXZlcnMKPj4+ICAgICoKPj4+
IEBAIC0zMCw2ICszMyw5IEBAIHN0cnVjdCB2NGwyX2N0cmxfaGFuZGxlcjsKPj4+ICAgICogQHJl
ZjogS2VlcCB0cmFjayBvZiB0aGUgcmVmZXJlbmNlcyB0byB0aGlzIHN0cnVjdC4KPj4+ICAgICog
QHJlbGVhc2U6IFJlbGVhc2UgZnVuY3Rpb24gdGhhdCBpcyBjYWxsZWQgd2hlbiB0aGUgcmVmIGNv
dW50Cj4+PiAgICAqCWdvZXMgdG8gMC4KPj4+ICsgKiBAZmxhZ3M6IGRldmljZSBmbGFncy4gQ2Fu
IGJlOgo+Pj4gKyAqICAgJVY0TDJfREVWSUNFX0ZMX0lTX09VVFBVVCAtIFNldCB0aGlzIGZsYWcg
aWYgdGhpcyBWNEwyIGRldmljZSBpcyBhbgo+Pj4gKyAqICAgIm91dHB1dCIgcmF0aGVyIHRoYW4g
YW4gImlucHV0Igo+Pj4gICAgKgo+Pj4gICAgKiBFYWNoIGluc3RhbmNlIG9mIGEgVjRMMiBkZXZp
Y2Ugc2hvdWxkIGNyZWF0ZSB0aGUgdjRsMl9kZXZpY2Ugc3RydWN0LAo+Pj4gICAgKiBlaXRoZXIg
c3RhbmQtYWxvbmUgb3IgZW1iZWRkZWQgaW4gYSBsYXJnZXIgc3RydWN0Lgo+Pj4gQEAgLTU0LDYg
KzYwLDcgQEAgc3RydWN0IHY0bDJfZGV2aWNlIHsKPj4+ICAgCXN0cnVjdCB2NGwyX3ByaW9fc3Rh
dGUgcHJpbzsKPj4+ICAgCXN0cnVjdCBrcmVmIHJlZjsKPj4+ICAgCXZvaWQgKCpyZWxlYXNlKShz
dHJ1Y3QgdjRsMl9kZXZpY2UgKnY0bDJfZGV2KTsKPj4+ICsJdTMyIGZsYWdzOwo+Pj4gICB9Owo+
Pj4gICAKPj4+ICAgLyoqCj4+Pgo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPj4gTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
