Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADE76C02183
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jan 2025 00:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6DgzcGVKhoBHG79Qj4IJvnnbtVPz1lUcBp8OPAd0ak=; b=UdjhY11BzR1Pa4
	+vlxPp14vE4w7tGHi9PYBOOR7Ht+cEFeefDJRrp7/yT2+Zv/M3olboVCATnmu8W2jQV5udc6GDV8t
	k08ZYIvfWYJ6z6+b+ckKqhdrQmJwgySsIGALD4mxhSF7biAa31CBB+Mltc6/ANcLn4bHzXFGdoXxb
	04irOxKK5hErPFK6HTUSrGhg+SbzKGytc/CS4/XF5xchrxtKBaernWDsxgGOiXtqT4+Ho942SMmWl
	k+dof7bj7O+hXM+bdmo0BOkNk6EIs0iT9gXdGdCH3gWvzla7CWIA/VfeyLGu23Ix6UQYvLaeEqQaz
	Na9kvoGidW5FJNQXLp9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYaU4-0000000Gi7D-447x;
	Fri, 17 Jan 2025 00:45:12 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYaU2-0000000Gi6n-1ReU
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jan 2025 00:45:11 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-4678cd314b6so16101161cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jan 2025 16:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737074708; x=1737679508; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=prgRcWZI00lof24hS0+yC1ocvL9KZCKQO7nRcKh40Z4=;
        b=XP0wW5I4AAs51RnrIHyj6Tj3EH0Q8djjb0YiYVJgprCVVseFP1PA8ZwXhT4NhaA+/n
         PKDQ5VTM3P1Iv9fLkDdKgGGNJWahvEZglYBhahvSmyP7ebrtGkH/rpeATzyds8Z1au11
         ilU0F1xI0eqt4ezS9+4Hv8dUr3lF5xRfoGdeiVyToooRyc+qO5ly9ayGpepJ6AjJ4gmP
         tmD+IWTBTssUKEiTEzAMEG5GCNSpbuiW8L61tVd+BgFN0KmbjudULedPDR8WePNY/etv
         RBe/lt5R1UpzR6OFpuIGd0z5D7Pg0ykp+gEzZ/EcQI/S5pMQABtiMKhmgMz6IhhIVhKc
         +F8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737074708; x=1737679508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=prgRcWZI00lof24hS0+yC1ocvL9KZCKQO7nRcKh40Z4=;
        b=IVdWL/W1Eh51UBNVX2KRMJ0+wfUXRUWSYmC6Vll3fQ5y6QY2laRfiliQSL91k1vd44
         JUeAN+2FZjws1vNC5yQB1iZ+5Hi/tEcIg2+BDpQsg3+QZSONX/dYhjleOF9qcIfNdd/a
         RDY/FbXuXXnJEUusUSfjyi1/+J/w8/+7Pxii/rNCwPB7ObhR1pUDA+Win12Sp+mAlxPB
         iqlUZsQT+bcW4zb+VlPBdo3kvOBQypuYp09/EEkeoG60uFhn/qG0JB/EwoNmUgOeJElu
         isPjh/jkve8qM8Hzy0h2xfXAowyVhV/z6Fc8EoRnDSC5L1/WIiRq+9csdTOnDRyqVDuy
         QBiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxKoUTVyKgoyMzOVOao3SXKWh3MctCb8lPQSEG+I1Vbo5g/qnIdrXbYh1WpCJDOnLn6gxZedUO8dxa93bQ0w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3DhT26Jcys1g7lxX5qjvAVIvhikWy4JsHdNbWftPGLiYe/jyJ
	5u7BEhe4Rh/s/LB7qxX2VOPDp/EjLv0jxezIeQA7ua53KrDZft1/+/PxLf2/VsXA4MpyO/GLl6l
	MFnxA+H0v14UypXTXbT0oF9IG67jFQg==
X-Gm-Gg: ASbGncsh1xoGQQA1S6bmkOHbdO1b/FTh8vA/7Ye0iZnxJUsbILge2sdrFAU4QcHtoeQ
	cH10MOpckB8Hg0zRpJrE+r1uctvuHi7FOIyGwIg==
X-Google-Smtp-Source: AGHT+IG34IznB+ZX1aXKAN+w0hO7J6j4L+/pEBVpXW8JCfouLk2QBLnjn0MaTHBNQ4P9MejhpeWOt8hzWYY1fGps0xE=
X-Received: by 2002:a05:622a:154:b0:466:886f:3773 with SMTP id
 d75a77b69052e-46e12ad601dmr13293451cf.1.1737074708388; Thu, 16 Jan 2025
 16:45:08 -0800 (PST)
MIME-Version: 1.0
References: <CAAMcf8A3Ehi=krZirpuFVpVuQ4T_wwQ5Ss29_o4-BiTaQqsoFw@mail.gmail.com>
 <20250116143631.3650469-1-heiko@sntech.de>
In-Reply-To: <20250116143631.3650469-1-heiko@sntech.de>
From: Vicente Bergas <vicencb@gmail.com>
Date: Fri, 17 Jan 2025 01:44:55 +0100
X-Gm-Features: AbW1kvZBDTT-hI2SFGAKVoAQL5Y2rDHwcI76wpt1Wv9_cdovanezZzconiRCGDE
Message-ID: <CAAMcf8CpUyu7kC3X1Roc+3HdWyJdqwCRCZDezyi6UZMv-28bWA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix fixed-regulator renames on
 rk3399-gru devices
To: Heiko Stuebner <heiko@sntech.de>
Cc: jbx6244@gmail.com, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_164510_389379_9EA05D0F 
X-CRM114-Status: GOOD (  20.37  )
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

T24gVGh1LCBKYW4gMTYsIDIwMjUgYXQgMzozNuKAr1BNIEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gcmszMzk5LWdydSBjaHJvbWVib29rcyBoYXZlIGEgcmVndWxh
dG9yIGNoYWlucyB3aGVyZSBvbmUgbmFtZWQgcmVndWxhdG9yCj4gc3VwcGxpZXMgbXVsdGlwbGUg
cmVndWxhdG9ycyBwcDkwMC11c2IgcHA5MDBfcGNpZSB0aGF0IHN1cHBseQo+IHRoZSBuYW1lZCBw
ZXJpcGhlcmFscy4KPgo+IFRoZSBkdHNpIHVzZWQgc29tZXdoYXQgY3JlYXRpdmUgc3RydWN0dXJl
IHRvIGRlc2NyaWJlIHRoYXQgaW4gY3JlYXRpbmcKPiB0aGUgYmFzZSBub2RlIDMgdGltZXMgd2l0
aCBkaWZmZXJlbnQgcGhhbmRsZXMgYW5kIGRlc2NyaWJpbmcgdGhlIEVDCj4gZGVwZW5kZW5jeSBp
biBhIGNvbW1lbnQuCj4KPiBUaGlzIGRpZG4ndCByZWdpc3RlciBpbiB0aGUgcmVjZW50IHJlZ3Vs
YXRvci1ub2RlIHJlbmFtaW5nLCBhcyB0aGUKPiBhZGRpdGlvbmFsIG5vZGVzIHdlcmUgZW1wdHks
IHNvIGFkYXB0IHRoZSBtaXNzaW5nIG5vZGUgbmFtZXMgZm9yIG5vdy4KPgo+IEZpeGVzOiA1Yzk2
ZTYzMzAxOTcgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRhcHQgcmVndWxhdG9yIG5vZGVuYW1l
cyB0byBwcmVmZXJyZWQgZm9ybSIpCj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhl
aWtvQHNudGVjaC5kZT4KPiAtLS0KPiBIaSBWaWNlbnRlLAo+Cj4gaW4gdGhlb3J5LCB0aGlzIHNo
b3VsZCBmaXggeW91ciBpc3N1ZT8KPgo+IFdoaWxlIHdlIG1heSB3YW50IHRvIHJlc3RydWN0dXJl
IHRob3NlIHJlZ3VsYXRvcnMgaW4gc29tZSB3YXksCj4gdGhpcyBiZWxvdyBzaG91bGQgYmUgdGhl
IHNtYWxsZXIgY2hhbmdlIHRvIGluY2x1ZGUgYXMgYSBmaXguCj4KPgo+IEhlaWtvCgpUaGFua3Mg
SGVpa28hCgpKdXN0IG5vdyBpIGFtIHRlc3RpbmcgaXQgb24gZ3J1LWtldmluIGFuZCBpdCB3b3Jr
cywgc286ClRlc3RlZC1ieTogVmljZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPgoKUmVn
YXJkcywKICBWaWNlbnRlLgoKCj4gIC4uLi9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS1jaHJvbWVi
b29rLmR0c2kgICB8ICA4ICsrKy0tLS0KPiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1n
cnUtc2NhcmxldC5kdHNpIHwgIDYgKystLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktZ3J1LmR0c2kgIHwgMjIgKysrKysrKysrLS0tLS0tLS0tLQo+ICAzIGZpbGVzIGNo
YW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS1jaHJvbWVib29rLmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUtY2hyb21lYm9vay5kdHNp
Cj4gaW5kZXggOTg4ZTZjYTMyZmFjLi5hOWVhNGIwZGFhMDQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LWNocm9tZWJvb2suZHRzaQo+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS1jaHJvbWVib29rLmR0c2kK
PiBAQCAtMjIsMTEgKzIyLDExIEBAIHBwOTAwX2FwOiByZWd1bGF0b3ItcHA5MDAtYXAgewo+ICAg
ICAgICAgfTsKPgo+ICAgICAgICAgLyogRUMgdHVybnMgb24gdy8gcHA5MDBfdXNiX2VuICovCj4g
LSAgICAgICBwcDkwMF91c2I6IHBwOTAwLWFwIHsKPiArICAgICAgIHBwOTAwX3VzYjogcmVndWxh
dG9yLXBwOTAwLWFwIHsKPiAgICAgICAgIH07Cj4KPiAgICAgICAgIC8qIEVDIHR1cm5zIG9uIHcv
IHBwOTAwX3BjaWVfZW4gKi8KPiAtICAgICAgIHBwOTAwX3BjaWU6IHBwOTAwLWFwIHsKPiArICAg
ICAgIHBwOTAwX3BjaWU6IHJlZ3VsYXRvci1wcDkwMC1hcCB7Cj4gICAgICAgICB9Owo+Cj4gICAg
ICAgICBwcDMwMDA6IHJlZ3VsYXRvci1wcDMwMDAgewo+IEBAIC0xMjYsNyArMTI2LDcgQEAgcHAx
ODAwX3BjaWU6IHJlZ3VsYXRvci1wcDE4MDAtcGNpZSB7Cj4gICAgICAgICB9Owo+Cj4gICAgICAg
ICAvKiBBbHdheXMgb247IHBsYWluIGFuZCBzaW1wbGUgKi8KPiAtICAgICAgIHBwMzAwMF9hcDog
cHAzMDAwX2VtbWM6IHBwMzAwMCB7Cj4gKyAgICAgICBwcDMwMDBfYXA6IHBwMzAwMF9lbW1jOiBy
ZWd1bGF0b3ItcHAzMDAwIHsKPiAgICAgICAgIH07Cj4KPiAgICAgICAgIHBwMTUwMF9hcF9pbzog
cmVndWxhdG9yLXBwMTUwMC1hcC1pbyB7Cj4gQEAgLTE2MCw3ICsxNjAsNyBAQCBwcDMzMDBfZGlz
cDogcmVndWxhdG9yLXBwMzMwMC1kaXNwIHsKPiAgICAgICAgIH07Cj4KPiAgICAgICAgIC8qIEVD
IHR1cm5zIG9uIHcvIHBwMzMwMF91c2JfZW5fbCAqLwo+IC0gICAgICAgcHAzMzAwX3VzYjogcHAz
MzAwIHsKPiArICAgICAgIHBwMzMwMF91c2I6IHJlZ3VsYXRvci1wcDMzMDAgewo+ICAgICAgICAg
fTsKPgo+ICAgICAgICAgLyogZ3BpbyBpcyBzaGFyZWQgd2l0aCBwcDE4MDBfcGNpZSBhbmQgcGlu
Y3RybCBpcyBzZXQgdGhlcmUgKi8KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktZ3J1LXNjYXJsZXQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LWdydS1zY2FybGV0LmR0c2kKPiBpbmRleCAxOWIyM2I0Mzg5NjUuLjVlMDY4
Mzc3YTBhMiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1ncnUtc2NhcmxldC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktZ3J1LXNjYXJsZXQuZHRzaQo+IEBAIC05Miw3ICs5Miw3IEBAIHBwOTAwX3MzOiByZWd1
bGF0b3ItcHA5MDAtczMgewo+ICAgICAgICAgfTsKPgo+ICAgICAgICAgLyogRUMgdHVybnMgb24g
cHAxODAwX3MzX2VuICovCj4gLSAgICAgICBwcDE4MDBfczM6IHBwMTgwMCB7Cj4gKyAgICAgICBw
cDE4MDBfczM6IHJlZ3VsYXRvci1wcDE4MDAgewo+ICAgICAgICAgfTsKPgo+ICAgICAgICAgLyog
cHAzMzAwIGNoaWxkcmVuLCBzb3J0ZWQgYnkgbmFtZSAqLwo+IEBAIC0xMDksMTEgKzEwOSwxMSBA
QCBwcDI4MDBfY2FtOiByZWd1bGF0b3ItcHAyODAwLWF2ZGQgewo+ICAgICAgICAgfTsKPgo+ICAg
ICAgICAgLyogRUMgdHVybnMgb24gcHAzMzAwX3MwX2VuICovCj4gLSAgICAgICBwcDMzMDBfczA6
IHBwMzMwMCB7Cj4gKyAgICAgICBwcDMzMDBfczA6IHJlZ3VsYXRvci1wcDMzMDAgewo+ICAgICAg
ICAgfTsKPgo+ICAgICAgICAgLyogRUMgdHVybnMgb24gcHAzMzAwX3MzX2VuICovCj4gLSAgICAg
ICBwcDMzMDBfczM6IHBwMzMwMCB7Cj4gKyAgICAgICBwcDMzMDBfczM6IHJlZ3VsYXRvci1wcDMz
MDAgewo+ICAgICAgICAgfTsKPgo+ICAgICAgICAgLyoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1ncnUuZHRzaQo+IGluZGV4IDZkOWU2MGIwMTIyNS4uN2VjYTFkYTc4
Y2ZmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdy
dS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LmR0
c2kKPiBAQCAtMTg5LDM5ICsxODksMzkgQEAgcHB2YXJfZ3B1OiBwcHZhci1ncHUgewo+ICAgICAg
ICAgfTsKPgo+ICAgICAgICAgLyogRUMgdHVybnMgb24gdy8gcHA5MDBfZGRycGxsX2VuICovCj4g
LSAgICAgICBwcDkwMF9kZHJwbGw6IHBwOTAwLWFwIHsKPiArICAgICAgIHBwOTAwX2RkcnBsbDog
cmVndWxhdG9yLXBwOTAwLWFwIHsKPiAgICAgICAgIH07Cj4KPiAgICAgICAgIC8qIEVDIHR1cm5z
IG9uIHcvIHBwOTAwX3BsbF9lbiAqLwo+IC0gICAgICAgcHA5MDBfcGxsOiBwcDkwMC1hcCB7Cj4g
KyAgICAgICBwcDkwMF9wbGw6IHJlZ3VsYXRvci1wcDkwMC1hcCB7Cj4gICAgICAgICB9Owo+Cj4g
ICAgICAgICAvKiBFQyB0dXJucyBvbiB3LyBwcDkwMF9wbXVfZW4gKi8KPiAtICAgICAgIHBwOTAw
X3BtdTogcHA5MDAtYXAgewo+ICsgICAgICAgcHA5MDBfcG11OiByZWd1bGF0b3ItcHA5MDAtYXAg
ewo+ICAgICAgICAgfTsKPgo+ICAgICAgICAgLyogRUMgdHVybnMgb24gdy8gcHAxODAwX3MwX2Vu
X2wgKi8KPiAtICAgICAgIHBwMTgwMF9hcF9pbzogcHAxODAwX2VtbWM6IHBwMTgwMF9uZmM6IHBw
MTgwMF9zMDogcHAxODAwIHsKPiArICAgICAgIHBwMTgwMF9hcF9pbzogcHAxODAwX2VtbWM6IHBw
MTgwMF9uZmM6IHBwMTgwMF9zMDogcmVndWxhdG9yLXBwMTgwMCB7Cj4gICAgICAgICB9Owo+Cj4g
ICAgICAgICAvKiBFQyB0dXJucyBvbiB3LyBwcDE4MDBfYXZkZF9lbl9sICovCj4gLSAgICAgICBw
cDE4MDBfYXZkZDogcHAxODAwIHsKPiArICAgICAgIHBwMTgwMF9hdmRkOiByZWd1bGF0b3ItcHAx
ODAwIHsKPiAgICAgICAgIH07Cj4KPiAgICAgICAgIC8qIEVDIHR1cm5zIG9uIHcvIHBwMTgwMF9s
aWRfZW5fbCAqLwo+IC0gICAgICAgcHAxODAwX2xpZDogcHAxODAwX21pYzogcHAxODAwIHsKPiAr
ICAgICAgIHBwMTgwMF9saWQ6IHBwMTgwMF9taWM6IHJlZ3VsYXRvci1wcDE4MDAgewo+ICAgICAg
ICAgfTsKPgo+ICAgICAgICAgLyogRUMgdHVybnMgb24gdy8gbHBkZHJfcHdyX2VuICovCj4gLSAg
ICAgICBwcDE4MDBfbHBkZHI6IHBwMTgwMCB7Cj4gKyAgICAgICBwcDE4MDBfbHBkZHI6IHJlZ3Vs
YXRvci1wcDE4MDAgewo+ICAgICAgICAgfTsKPgo+ICAgICAgICAgLyogRUMgdHVybnMgb24gdy8g
cHAxODAwX3BtdV9lbl9sICovCj4gLSAgICAgICBwcDE4MDBfcG11OiBwcDE4MDAgewo+ICsgICAg
ICAgcHAxODAwX3BtdTogcmVndWxhdG9yLXBwMTgwMCB7Cj4gICAgICAgICB9Owo+Cj4gICAgICAg
ICAvKiBFQyB0dXJucyBvbiB3LyBwcDE4MDBfdXNiX2VuX2wgKi8KPiAtICAgICAgIHBwMTgwMF91
c2I6IHBwMTgwMCB7Cj4gKyAgICAgICBwcDE4MDBfdXNiOiByZWd1bGF0b3ItcHAxODAwIHsKPiAg
ICAgICAgIH07Cj4KPiAgICAgICAgIHBwMzAwMF9zZF9zbG90OiByZWd1bGF0b3ItcHAzMDAwLXNk
LXNsb3Qgewo+IEBAIC0yNTksMTEgKzI1OSwxMSBAQCBwcHZhcl9zZF9jYXJkX2lvOiBwcHZhci1z
ZC1jYXJkLWlvIHsKPiAgICAgICAgIH07Cj4KPiAgICAgICAgIC8qIEVDIHR1cm5zIG9uIHcvIHBw
MzMwMF90cmFja3BhZF9lbl9sICovCj4gLSAgICAgICBwcDMzMDBfdHJhY2twYWQ6IHBwMzMwMC10
cmFja3BhZCB7Cj4gKyAgICAgICBwcDMzMDBfdHJhY2twYWQ6IHJlZ3VsYXRvci1wcDMzMDAtdHJh
Y2twYWQgewo+ICAgICAgICAgfTsKPgo+ICAgICAgICAgLyogRUMgdHVybnMgb24gdy8gdXNiX2Ff
ZW4gKi8KPiAtICAgICAgIHBwNTAwMF91c2JfYV92YnVzOiBwcDUwMDAgewo+ICsgICAgICAgcHA1
MDAwX3VzYl9hX3ZidXM6IHJlZ3VsYXRvci1wcDUwMDAgewo+ICAgICAgICAgfTsKPgo+ICAgICAg
ICAgYXBfcnRjX2NsazogYXAtcnRjLWNsayB7Cj4gLS0KPiAyLjQ1LjIKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
