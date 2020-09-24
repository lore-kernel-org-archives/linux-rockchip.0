Return-Path: <SRS0=jnQU=DB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96230C4346E
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2020 06:08:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7435235FD
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2020 06:08:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="iYEqLPzL";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=endlessos-org.20150623.gappssmtp.com header.i=@endlessos-org.20150623.gappssmtp.com header.b="ClueS1ym"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C7435235FD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=endlessos.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9QgiJaQrjTLvsrORUqgPBMkt1pJ1z1VVicg1rdzITKo=; b=iYEqLPzLeSoPOJVIFyeWbPKbe
	s7/ph4wAGOOGwxrSbW5jguAWRLZq8/edJSlJboVihFo0HzcWEZh9qa42Xwk6pdBqi8deFyUd0HXP8
	3FVEUnY7kYzQ/AWaysWw/UC1IKWIqG8yRcZRMBbPyAhGSu5Y5Pw1UJnR8Lv7QqerSkbqYMrTmiyVk
	b64okCirenCPMJm61Bi4pLTYMA4/UeRS04e2jQVvkp2B5VaApCX968z+YiKUKC2+uWO1qhIQy7HNs
	l2/Bk43jVaroiso43AivrMXhWDcZO/Hu/f1H6lSZnO7tiu+Jg8dn/AK14JS0ZWWT0wmqMh8xLoEMn
	lmuU6mSDQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLKQw-0008KF-4W; Thu, 24 Sep 2020 06:08:46 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLKQt-0008JJ-CA
 for linux-rockchip@lists.infradead.org; Thu, 24 Sep 2020 06:08:44 +0000
Received: by mail-ot1-x343.google.com with SMTP id o8so2114216otl.4
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 23:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessos-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lXB9dmAirmi4v7GPBCGSMea4z8h+BAFIgAuNXXHOb2Y=;
 b=ClueS1ymp1lS1bXGw323101aciaXB9Sy2hZzOZiXvnx89GOnngJVSqAJVDrbWf9jDd
 tZn9SE2Pf9bofHHPqwvtvpToCD9PqPhRbd9L1rxg8LqPL1ijL8ZkTURSRDA0dvRpFrWo
 kYnJ4uAcoc0wrDadvw8GMIN/4UjBCIiucM+me+sdVXT3LnrLfFQvyVjKVsabsVv2mbuB
 /OLoYlljvBMZS+KLcR10JpAyeuMCMd23GSDukYvejF+5U6rD70/fiP4q5pT89FN4Lp7I
 tcDUSD8//IKRUi1b4kZEdJVdQZ4ws6V7lhXdElNdjiig1qbzSjH6MbtGbOspHyAc71Hv
 yD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lXB9dmAirmi4v7GPBCGSMea4z8h+BAFIgAuNXXHOb2Y=;
 b=NzdfWIDbUq9OfIF5fPn7BuyNLDJV6Gvywyui05I1YzsBL4N81BWmiq+irG8TcKcfkd
 9iPNjTM17Fj/rQi7NyScnGtUOdmthYmhBDonSr0tF1BlvmR/jQuTZmpD39ubCg1P1Udq
 n4Lm3Jtc7ipkMNioqn8eSMwbUaSc/SjQ8xv0Uwl8sOwRaQwNU2MvJJ1RD1reXr0XFQCz
 MAREljRmGuWR4Fp6YN6l1Bi2GKSyUmNMOchYncF6HW9LojrDeXP93vJt38JS77g5DBeP
 hKHmS1atX1o+Opqrgzi8EKUMJfwqZlNp56dRmjyngfwwUhkK5Sdi+4sLuWMFJl6oPM2N
 oYPg==
X-Gm-Message-State: AOAM532ETbWydMocLYVxGRuBPhMj0Up65sR0GVJ+mT/W5RxZyLdJoXqE
 SwsRDZxzT+qc0a/nfrYZpsmTqYO08Lmf0kehfVov8g==
X-Google-Smtp-Source: ABdhPJxubDtbjxJFVherYQTEFtOHUjR1TTTplL/wr/L2yXlHF76XKLGA0cLfr+PpH2sR1GKWN2mntDi5katKmLkzutY=
X-Received: by 2002:a05:6830:1e22:: with SMTP id
 t2mr2242455otr.100.1600927721055; 
 Wed, 23 Sep 2020 23:08:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAPpJ_efHX70Ej0uzRi-iRf7N0n6ZO5sMN-wK_YpszvVD-Un9RQ@mail.gmail.com>
 <20200923065900.658666-1-jhp@endlessos.org>
 <439c4b59-b1e6-88bb-568e-1c2a0feceed4@arm.com>
 <4641984.dSft4sXKFs@diego>
In-Reply-To: <4641984.dSft4sXKFs@diego>
From: Jian-Hong Pan <jhp@endlessos.org>
Date: Thu, 24 Sep 2020 14:07:04 +0800
Message-ID: <CAPpJ_efjVXq6BNQDfiwmEYPyjJyBH5xP2hBdGdNjT7E7=fkMXw@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: skip probed failed device
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200924_020843_425470_C0472BAA 
X-CRM114-Status: GOOD (  24.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: David Airlie <airlied@linux.ie>,
 Linux Upstreaming Team <linux@endlessm.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4g5pa8IDIwMjDlubQ55pyIMjPml6Ug6YCx
5LiJIOS4i+WNiDc6MTblr6vpgZPvvJoKPgo+IEFtIE1pdHR3b2NoLCAyMy4gU2VwdGVtYmVyIDIw
MjAsIDEzOjA1OjI2IENFU1Qgc2NocmllYiBSb2JpbiBNdXJwaHk6Cj4gPiBPbiAyMDIwLTA5LTIz
IDA3OjU5LCBKaWFuLUhvbmcgUGFuIHdyb3RlOgo+ID4gPiBUaGUgY2RuLWRwIHN1YiBkcml2ZXIg
cHJvYmVzIHRoZSBkZXZpY2UgZmFpbGVkIG9uIFBJTkVCT09LIFByby4KPiA+ID4KPiA+ID4ga2Vy
bmVsOiBjZG4tZHAgZmVjMDAwMDAuZHA6IFtkcm06Y2RuX2RwX3Byb2JlIFtyb2NrY2hpcGRybV1d
ICpFUlJPUiogbWlzc2luZyBleHRjb24gb3IgcGh5Cj4gPiA+IGtlcm5lbDogY2RuLWRwOiBwcm9i
ZSBvZiBmZWMwMDAwMC5kcCBmYWlsZWQgd2l0aCBlcnJvciAtMjIKPiA+Cj4gPiBXb3VsZG4ndCBp
dCBtYWtlIG1vcmUgc2Vuc2UgdG8gc2ltcGx5IG5vdCBlbmFibGUgdGhlIERpc3BsYXlQb3J0IG5v
ZGUgaW4KPiA+IHRoZSB1cHN0cmVhbSBEVCwgdW50aWwgdGhlIHR5cGUtQyBwaHkgd29yayBoYXMg
YmVlbiBkb25lIHRvIG1ha2UgaXQKPiA+IHVzYWJsZSBhdCBhbGw/Cj4KPiBPciBhbHRlcm5hdGl2
ZWx5IGp1c3QgZGlzYWJsZSB0aGUgY2RuLWRwIFJvY2tjaGlwIGRyaXZlciBpbiB0aGUga2VybmVs
IGNvbmZpZywKPiB3aGljaCByZXN1bHRzIGluIGl0IGFsc28gbm90IGdldHRpbmcgcHJvYmVkLgoK
VGhpcyBtYXkgYmUgdGhlIHNpbXBsZXN0IHdheS4KSG93ZXZlciwgY29uc2lkZXJpbmcgZ2VuZXJp
YyBkaXN0cm8ga2VybmVscyBoYXZlIGEgcG9saWN5IHRvIGVuYWJsZQphbGwgZHJpdmVycywgZGlz
YWJsaW5nIHRoZSBEaXNwbGF5UG9ydCBub2RlIGluIHRoZSB1cHN0cmVhbSBEVCwgdW50aWwKdGhl
IHR5cGUtQyBwaHkgd29yayBoYXMgYmVlbiBkb25lIG1heSBiZSBhIGJldHRlciBzb2x1dGlvbiBm
b3Igbm93LgpJIGNhbiBwcmVwYXJlIGEgcGF0Y2ggZm9yIHRoaXMuCgpKaWFuLUhvbmcgUGFuCgo+
ID4gQUlVSSB0aGUgIm9mZmljaWFsIiBNYW5qYXJvIGtlcm5lbCBpcyBjYXJyeWluZyBhIGJ1bmNo
IG9mCj4gPiBoYWNrcyB0byBtYWtlIHR5cGUtQyB3b3JrIHZpYSBleHRjb24sIGJ1dCB0aGV5IGtu
b3cgdGhhdCBpc24ndCBhbgo+ID4gdXBzdHJlYW1hYmxlIHNvbHV0aW9uLgo+ID4KPiA+IFJvYmlu
Lgo+ID4KPiA+ID4gVGhlbiwgdGhlIGRldmljZSBoYWx0cyBhbGwgb2YgdGhlIERSTSByZWxhdGVk
IGRldmljZSBqb2JzLiBGb3IgZXhhbXBsZSwKPiA+ID4gdGhlIG9wZXJhdGlvbnM6IHZvcF9jb21w
b25lbnRfb3BzLCB2b3BfY29tcG9uZW50X29wcyBhbmQKPiA+ID4gcm9ja2NoaXBfZHBfY29tcG9u
ZW50X29wcyBjYW5ub3QgYmUgYm91bmQgdG8gY29ycmVzcG9uZGluZyBkZXZpY2VzLiBTbywKPiA+
ID4gWG9yZyBjYW5ub3QgZmluZCB0aGUgY29ycmVjdCBEUk0gZGV2aWNlLgo+ID4gPgo+ID4gPiBU
aGlzIHBhdGNoIHNraXBzIHRoZSBwcm9iaW5nIGZhaWxlZCBkZXZpY2VzIHRvIGZpeCB0aGlzIGlz
c3VlLgo+ID4gPgo+ID4gPiBMaW5rOiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1h
aWwvbGludXgtcm9ja2NoaXAvMjAyMC1TZXB0ZW1iZXIvMDIyMzUyLmh0bWwKPiA+ID4gU2lnbmVk
LW9mZi1ieTogSmlhbi1Ib25nIFBhbiA8amhwQGVuZGxlc3Nvcy5vcmc+Cj4gPiA+IC0tLQo+ID4g
PiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCA2ICsrKysr
Kwo+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+ID4KPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gPiA+IGluZGV4IDBm
M2ViMzkyZmUzOS4uZGUxMzU4ODYwMmI0IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKPiA+ID4gQEAgLTMzMSw2ICszMzEsMTIgQEAg
c3RhdGljIHN0cnVjdCBjb21wb25lbnRfbWF0Y2ggKnJvY2tjaGlwX2RybV9tYXRjaF9hZGQoc3Ry
dWN0IGRldmljZSAqZGV2KQo+ID4gPgo+ID4gPiAgICAgICAgICAgICAgICAgICAgIGlmICghZCkK
PiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gPiArICAgICAgICAg
ICAgICAgICAgIGlmICghZC0+ZHJpdmVyKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICBEUk1fREVWX0VSUk9SKGQsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICIlcyBkaWQgbm90IHByb2JlIHN1Y2Nlc3NmdWxseSIsCj4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRydi0+ZHJpdmVyLm5hbWUpOwo+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgfQo+ID4gPgo+ID4gPiAgICAgICAgICAgICAgICAgICAgIGRldmljZV9saW5r
X2FkZChkZXYsIGQsIERMX0ZMQUdfU1RBVEVMRVNTKTsKPiA+ID4gICAgICAgICAgICAgICAgICAg
ICBjb21wb25lbnRfbWF0Y2hfYWRkKGRldiwgJm1hdGNoLCBjb21wYXJlX2RldiwgZCk7CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
