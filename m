Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4191AC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 17:18:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3C22613D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 17:18:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D3C22613D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TSX+eUcFUtSVqb2xQKU4Q7onr0HnzhOmdHkbqfoqEO4=; b=XqfsAAlLJfEnGlzSn4IRzKOgV
	8z56TqhQwUcLcdf+Sys+gViz9oVXasDtR9OaXPxQlP2mhNq6lLK337ADU/LAx3nino+5dCnFsHZ9x
	RcA2vZGOr5KAHUt1UT5J6mTNg+SBMjtB9dHmcFrPsunsugZQZRIQm5Bl2vReApxNAcCD6zpfLyBF7
	l+OgAHtj+tflHFMy5xDEZj9K6kvm2cAdA3EIAtilh545ZfNdGa9k/IGM281bA3LZMoL8pg7TUs67L
	Xb7OziRvYocxSkI1YT/Mgssa93VFaEUn0YIL+yA4Hkhy3pX4Gk1uUbvqbkZQBk7bxN5nZMYckvvCY
	sOEeZWC7g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbnp7-003zYk-Vh; Wed, 28 Apr 2021 17:18:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbnp4-003zYW-OG
 for linux-rockchip@desiato.infradead.org; Wed, 28 Apr 2021 17:18:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=03hGvBOk6klURWnmv6y3JK2ghVR/IQbR9KYARGZLF+I=; b=bBBIKGmMUan6X4igsZ5fctVsrd
 5NLynBbxNWcAPcdG49E+pxlnYNnvKt62P/yVNbgJHGf48OQpjusUv2k8aNOrNJUqyBJ0ceygOIPeO
 Sx+UYJsBzuznDBSi/sK22LO+DXjYTQrqnLz3YwVV+R3S8+Dxjnt9+Ovl4t25F8lH/yVbhnvyuASiR
 iXQTMvHS9TP/68yE55iHFnIYNOo06XXKLJNz4i0AeUlAjFcyJXupie7zXnF8krxH+ssuKU77QZmey
 NN0fDXnQqIRNiA46LbOYRcM+1KD9KAxXn4AB4/qieCEMxUBvLnq1ydIc7kw/ypAet9OE6I3Uhp0/J
 /WXXxOQQ==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbnp2-0003az-7o
 for linux-rockchip@lists.infradead.org; Wed, 28 Apr 2021 17:18:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id BE1851F42B88
Message-ID: <e5eeffbbad6ee90204cb3928cfd6774efb6174f3.camel@collabora.com>
Subject: Re: [PATCH v4 79/79] media: hantro: do a PM resume earlier
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Wed, 28 Apr 2021 14:17:50 -0300
In-Reply-To: <569838d406dde80dcc64989a663882817a54cbb2.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <569838d406dde80dcc64989a663882817a54cbb2.1619621413.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_101800_430746_9D346819 
X-CRM114-Status: GOOD (  20.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgTWF1cm8sCgpUaGFua3MgYSBsb3QgZm9yIHRha2luZyBjYXJlIG9mIHRoaXMuCgpPbiBXZWQs
IDIwMjEtMDQtMjggYXQgMTY6NTIgKzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToK
PiBUaGUgZGV2aWNlX3J1bigpIGZpcnN0IGVuYWJsZXMgdGhlIGNsb2NrIGFuZCB0aGVuCj4gdHJp
ZXMgdG8gcmVzdW1lIFBNIHJ1bnRpbWUsIGNoZWNraW5nIGZvciBlcnJvcnMuCj4gCj4gV2VsbCwg
aWYgZm9yIHNvbWUgcmVhc29uIHRoZSBwbV9ydW50aW1lIGNhbiBub3QgcmVzdW1lLAo+IGl0IHdv
dWxkIGJlIGJldHRlciB0byBkZXRlY3QgaXQgYmVmb3JlaGFuZC4KPiAKPiBTbywgY2hhbmdlIHRo
ZSBvcmRlciBpbnNpZGUgZGV2aWNlX3J1bigpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENh
cnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4KCkNsb2NrcyBjb3VsZCBi
ZSBiZWhpbmQgcG93ZXItZG9tYWlucywgSUlSQywgc28gdGhpcyBjaGFuZ2UKaXMgZml4aW5nIHRo
YXQuCgpIb3dldmVyLCB0aGlzIGhhcyBldmVyIGJlZW4gYSBwcm9ibGVtIGZvciB0aGlzIGRyaXZl
ciwKc28gSSBkb24ndCB0aGluayBpdCBtYWtlcyBzZW5zZSB0byBib3RoZXIgd2l0aCBGaXhlcyB0
YWcuCgpSZXZpZXdlZC1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29t
PgoKVGhhbmtzLApFemVxdWllbAoKPiAtLS0KPiDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2Rydi5jIHwgOCArKysrLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19kcnYuYwo+IGluZGV4IDI1ZmEzNmU3ZTc3My4uNjdkZTZiMTUyMzZkIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiBAQCAtMTYwLDE0ICsx
NjAsMTQgQEAgc3RhdGljIHZvaWQgZGV2aWNlX3J1bih2b2lkICpwcml2KQo+IMKgwqDCoMKgwqDC
oMKgwqBzcmMgPSBoYW50cm9fZ2V0X3NyY19idWYoY3R4KTsKPiDCoMKgwqDCoMKgwqDCoMKgZHN0
ID0gaGFudHJvX2dldF9kc3RfYnVmKGN0eCk7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqByZXQgPSBj
bGtfYnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3MsIGN0eC0+ZGV2LT5j
bG9ja3MpOwo+IC3CoMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7Cj4gLQo+IMKgwqDCoMKgwqDCoMKgwqByZXQg
PSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGN0eC0+ZGV2LT5kZXYpOwo+IMKgwqDCoMKgwqDC
oMKgwqBpZiAocmV0IDwgMCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8g
ZXJyX2NhbmNlbF9qb2I7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqByZXQgPSBjbGtfYnVsa19lbmFi
bGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3MsIGN0eC0+ZGV2LT5jbG9ja3MpOwo+ICvC
oMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdv
dG8gZXJyX2NhbmNlbF9qb2I7Cj4gKwo+IMKgwqDCoMKgwqDCoMKgwqB2NGwyX20ybV9idWZfY29w
eV9tZXRhZGF0YShzcmMsIGRzdCwgdHJ1ZSk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgY3R4LT5j
b2RlY19vcHMtPnJ1bihjdHgpOwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
