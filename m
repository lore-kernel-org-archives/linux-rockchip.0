Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44A83C76196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 03:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/KVBNmfoayV38jOi5C9oLKWqn/PAq1+T4+U4LAf8Tk=; b=0Dc2N6k+BsvbzO
	ztmEa6IeANFQRxD78BzA/4fM7VJlodG8/u4SmlqEuoLcX6F/eRmu0LfmK6kFzOIQp8VUnHbZ6MimM
	M7IoJpIDvsTwRGXNfnmwA2jsGCmoWTtnM8km3ympnc+p8C/+sNYADF2LYphD3tYYUZtadFxHHtVZo
	zSK4/NTLU5G8xJbbzK9NfunII80EdGRQou5iYyzCDHJW/3nm2doufSxbRZ43u0bhpj7tcxrQZEmJt
	fgR6jZWHk6kYhamiqKnspiQbkWebidjw2d6EYPHcVouRVqVq5WKUk70uHK8hvrXmXtqw3mmwnrRoq
	KpmDS0vosZX2bp9mRJnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjB7Z-00E3zY-39;
	Mon, 03 Apr 2023 03:44:41 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjB7W-00E3yz-2K
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Apr 2023 03:44:40 +0000
Received: by mail-pf1-x432.google.com with SMTP id u20so18142737pfk.12
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Apr 2023 20:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680493476;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ABIEor5TUeJHEYPxHRe9G0HA55UHNeIWMnGb6d3/ufo=;
        b=f0TkVixjbShwJwnR/hrlNRRc9BwBH0b435kvRm7U9rP7IKq5Ia1oZXCXK7uEGvQ18d
         0QRO+414ydA1cOGQgSodGoIGMG0CaO7Iq3oRJvwTV+X3ZZPF0GGMKlaBn+Pi/WXM/31M
         akn+QLbs+rcWP9z5OlnllAVIyu0u1EkVsTwxRCyq55UHkRbDVqDppMLdld4z+dXfBw7v
         opyJ/PoHzEYcgpA/00VuHvryvq4ljWoj0cTodmeNWfIrcq8nPBc25HYGNIj1tsauCoJz
         Ylcqvd2SWYYZrO0GDP6rAE6yn+3bQhdee1JwbKYczl8W5wrD0++tE/OPfhVV6O+p29x/
         osxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680493476;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ABIEor5TUeJHEYPxHRe9G0HA55UHNeIWMnGb6d3/ufo=;
        b=w0L2iVKINcclAIuiSv142uMGehbvyfob3AwzQBO38pk+c0bepiroPkIdjYi3IFsfzM
         /FlDQZ5RHd0ma2vac6QVaJVU9Q2xqrvEbXvbaDnmDe0YId3v7zlVq1PFaszwLPzhaEj9
         Op/9hKofb2UirOzxxr+u9aHIIL9i2OEWOX82+Vonz7hT4YrW9gHP8mR5LXx8CKq1VUMH
         YcuVBBY5CzrA8cqagGt+/fPkXUKbFBJMzPd4mjNt5IRK0DmynLryNfac9KVcLSWstv6F
         laJeJjjwSncYUD8PG8j5mGlX+GsdVqi9mGdIAfh2OCnJLR832RXccb0I58ntGAP+uwuu
         AeAA==
X-Gm-Message-State: AAQBX9f+B/dbprXXQLiZ0onSH0CmbEWvhF2pToDm1ygss/Vvi6pX8us3
	q9TP0IqIGCumRKTs9o2/V2ESj6wFgNPIv3DWvwo=
X-Google-Smtp-Source: AKy350bWZfPX2SN3YYi/hFG3M2gCBUBYb4wgj6bMZme/ir4hqykgeRQrFyjod1786jAdXSyrywhtwreTcmY1+T2ZsB0=
X-Received: by 2002:a05:6a00:881:b0:62d:dd8d:56ac with SMTP id
 q1-20020a056a00088100b0062ddd8d56acmr5249726pfj.0.1680493476386; Sun, 02 Apr
 2023 20:44:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230313154132.3684181-1-zyytlz.wz@163.com> <CAAEAJfAjND_Bj9HRBae22eO7cG_Xm=AX93bL+CPEb24-sitWTg@mail.gmail.com>
In-Reply-To: <CAAEAJfAjND_Bj9HRBae22eO7cG_Xm=AX93bL+CPEb24-sitWTg@mail.gmail.com>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Mon, 3 Apr 2023 11:44:24 +0800
Message-ID: <CAJedcCyr2DEux=bSU+4Ksgz69ouEHebhmcmoCa2ysYB1YiOaNQ@mail.gmail.com>
Subject: Re: [PATCH v3] media: hantro: fix use after free bug in hantro_remove
 due to race condition
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Zheng Wang <zyytlz.wz@163.com>, p.zabel@pengutronix.de, mchehab@kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 1395428693sheep@gmail.com, 
	alex000young@gmail.com, hverkuil@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_204438_762597_F6D8036C 
X-CRM114-Status: GOOD (  31.38  )
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

RXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEB2YW5ndWFyZGlhc3VyLmNvbS5hcj4g5LqOMjAyM+W5
tDPmnIgzMeaXpeWRqOS6lCAxMDozOOWGmemBk++8mgo+Cj4gSGkgWmhlbmcsCj4KPiBPbiBNb24s
IE1hciAxMywgMjAyMyBhdCAxMjo0MuKAr1BNIFpoZW5nIFdhbmcgPHp5eXRsei53ekAxNjMuY29t
PiB3cm90ZToKPiA+Cj4gPiBJbiBoYW50cm9fcHJvYmUsIHZwdS0+d2F0Y2hkb2dfd29yayBpcyBi
b3VuZCB3aXRoCj4gPiBoYW50cm9fd2F0Y2hkb2cuIFRoZW4gaGFudHJvX2VuZF9wcmVwYXJlX3J1
biBtYXkKPiA+IGJlIGNhbGxlZCB0byBzdGFydCB0aGUgd29yay4KPiA+Cj4gPiBJZiB3ZSBjbG9z
ZSB0aGUgZmlsZSBvciByZW1vdmUgdGhlIG1vZHVsZSB3aGljaCB3aWxsCj4gPiBjYWxsIGhhbnRy
b19yZWxlYXNlIGFuZCBoYW50cm9fcmVtb3ZlIHRvIG1ha2UgY2xlYW51cCwKPgo+IEl0J3Mgbm90
IHBvc3NpYmxlIHRvIGNsb3NlIHRoZSBmaWxlIG9yIHJlbW92ZSB0aGUgbW9kdWxlIHdoaWxlIGEg
d2F0Y2hkb2cgaXMKPiBzY2hlZHVsZWQuCj4KPiBUaGF0J3MgYmVjYXVzZSB0aGUgd2F0Y2hkb2cg
aXMgYWN0aXZlIG9ubHkgZHVyaW5nIGEgbWVtMm1lbSBqb2IsCj4gYW5kIHRoZSBmaWxlIHdvbid0
IGJlIGNsb3NlZCB1bnRpbCB0aGUgam9iIGlzIGRvbmUuCj4KPiB2NGwyX20ybV9jdHhfcmVsZWFz
ZSBjYWxscyB2NGwyX20ybV9jYW5jZWxfam9idwo+IHdoaWNoIHdhaXRzIHVudGlsIHRoZSBqb2Ig
aXMgZG9uZS4KPgo+IElmIHlvdSBjYW4gY29uZmlybSBpdCdzIHBvc3NpYmxlIHRvIHJlbW92ZSBv
ciBjbG9zZSB0aGUgZmlsZQo+IHdoaWxlIGEgam9iIGlzIHJ1bm5pbmcsIHRoYXQgd291bGQgYmUg
YSBkcml2ZXIgYnVnLgo+Cj4gVGhhbmtzIGZvciB0aGUgcGF0Y2gsIGJ1dCBpdCdzIG5vdCBuZWVk
ZWQuCj4KCkhpIEV6ZXF1aWVsLAoKVGhhbmtzIGZvciB5b3VyIGRldGFpbGVkIGFuYWx5c2lzLiBH
b3QgaXQgOikKCkJlc3QgcmVnYXJkcywKWmhlbmcKCj4gUmVnYXJkcywKPiBFemVxdWllbAo+Cj4g
PiB0aGVyZSBtYXkgYmUgYW4gdW5maW5pc2hlZCB3b3JrLiBUaGUgcG9zc2libGUgc2VxdWVuY2UK
PiA+IGlzIGFzIGZvbGxvd3MsIHdoaWNoIHdpbGwgY2F1c2UgYSB0eXBpY2FsIFVBRiBidWcuCj4g
Pgo+ID4gVGhlIHNhbWUgdGhpbmcgd2lsbCBoYXBwZW4gaW4gaGFudHJvX3JlbGVhc2UsIGFuZCB1
c2UKPiA+IGN0eCBhZnRlciBmcmVlaW5nIGl0Lgo+ID4KPiA+IEZpeCBpdCBieSBjYW5jZWxpbmcg
dGhlIHdvcmsgYmVmb3JlIGNsZWFudXAgaW4gaGFudHJvX3JlbGVhc2UuCj4gPgo+ID4gQ1BVMCAg
ICAgICAgICAgICAgICAgIENQVTEKPiA+Cj4gPiAgICAgICAgICAgICAgICAgICAgIHxoYW50cm9f
d2F0Y2hkb2cKPiA+IGhhbnRyb19yZW1vdmUgICAgIHwKPiA+ICAgdjRsMl9tMm1fcmVsZWFzZSAg
fAo+ID4gICAgIGtmcmVlKG0ybV9kZXYpOyB8Cj4gPiAgICAgICAgICAgICAgICAgICAgIHwKPiA+
ICAgICAgICAgICAgICAgICAgICAgfCB2NGwyX20ybV9nZXRfY3Vycl9wcml2Cj4gPiAgICAgICAg
ICAgICAgICAgICAgIHwgICBtMm1fZGV2LT5jdXJyX2N0eCAvL3VzZQo+ID4KPiA+IFNpZ25lZC1v
ZmYtYnk6IFpoZW5nIFdhbmcgPHp5eXRsei53ekAxNjMuY29tPgo+ID4gLS0tCj4gPiB2MzoKPiA+
IC0gdXNlIGNhbmNlbF9kZWxheWVkX3dvcmtfc3luYyBpbnN0ZWFkIG9mIGNhbmNlbF9kZWxheWVk
X3dvcmsgYW5kIGFkZCBpdCB0bwo+ID4gaGFudHJvX3JlbGVhc2Ugc3VnZ2VzdGVkIGJ5IEhhbnMg
VmVya3VpbAo+ID4KPiA+IHYyOgo+ID4gLSBtb3ZlIHRoZSBjYW5jZWwtd29yay1yZWxhdGVkIGNv
ZGUgdG8gaGFudHJvX3JlbW92ZSBzdWdnZXN0ZWQgYnkgSGFucyBWZXJrdWlsCj4gPiAtLS0KPiA+
ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyB8IDIgKysK
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiA+IGluZGV4IGIwYWVl
ZGFlN2I2NS4uODZhNGMwZmE4YzdkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gPiBAQCAtNTk3LDYgKzU5Nyw3IEBAIHN0
YXRpYyBpbnQgaGFudHJvX3JlbGVhc2Uoc3RydWN0IGZpbGUgKmZpbHApCj4gPiAgICAgICAgIHN0
cnVjdCBoYW50cm9fY3R4ICpjdHggPQo+ID4gICAgICAgICAgICAgICAgIGNvbnRhaW5lcl9vZihm
aWxwLT5wcml2YXRlX2RhdGEsIHN0cnVjdCBoYW50cm9fY3R4LCBmaCk7Cj4gPgo+ID4gKyAgICAg
ICBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmN0eC0+ZGV2LT53YXRjaGRvZ193b3JrKTsKPiA+
ICAgICAgICAgLyoKPiA+ICAgICAgICAgICogTm8gbmVlZCBmb3IgZXh0cmEgbG9ja2luZyBiZWNh
dXNlIHRoaXMgd2FzIHRoZSBsYXN0IHJlZmVyZW5jZQo+ID4gICAgICAgICAgKiB0byB0aGlzIGZp
bGUuCj4gPiBAQCAtMTA5OSw2ICsxMTAwLDcgQEAgc3RhdGljIGludCBoYW50cm9fcmVtb3ZlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPgo+ID4gICAgICAgICB2NGwyX2luZm8oJnZw
dS0+djRsMl9kZXYsICJSZW1vdmluZyAlc1xuIiwgcGRldi0+bmFtZSk7Cj4gPgo+ID4gKyAgICAg
ICBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJnZwdS0+d2F0Y2hkb2dfd29yayk7Cj4gPiAgICAg
ICAgIG1lZGlhX2RldmljZV91bnJlZ2lzdGVyKCZ2cHUtPm1kZXYpOwo+ID4gICAgICAgICBoYW50
cm9fcmVtb3ZlX2RlY19mdW5jKHZwdSk7Cj4gPiAgICAgICAgIGhhbnRyb19yZW1vdmVfZW5jX2Z1
bmModnB1KTsKPiA+IC0tCj4gPiAyLjI1LjEKPiA+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
