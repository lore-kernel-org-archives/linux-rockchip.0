Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC78DC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 12:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPY0tVWYLPrBjg5PsxUxvLufaZII2wpV2KCvw3WBdTQ=; b=QsnVAk43cblIDI
	Zx/RPiSbnDYCGoJLGb+LelMziB3KYJPbAenBuLZzSHIPFBoH2OzKyerodpdPY16azOFNPzkI5Xr49
	Re3xMJzUPunw9sR7fpNidylC7NeouBTMDYs226Brr2OJ1XmrvB4ZXAESRtFDvvxoIEu40NW76m9La
	WuQ93hl2GU96IR/Yf+WKj3Dpw4geGhCdKvtNgdKmDVWbBkkZhklEH2Mm6jDOrxGg3eK0VkApfrCTo
	L5GBNztxFnhrxGna8giMmgEuDObfBEwWDmUu0h3pJJCHxsIU61y1cjanUt6EPT9/EoAHG9P2Z0dnt
	ZTcF9U0Dh1nTbnTOnO8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAUe3-007OA5-1M;
	Tue, 05 Dec 2023 12:35:23 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAUe1-007O8u-0l;
	Tue, 05 Dec 2023 12:35:22 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-286ceba3f3eso1217087a91.0;
        Tue, 05 Dec 2023 04:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701779720; x=1702384520; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FCPNXIipBFO4e3fU1ItwsDrZJmF1i1S9KCyToMsJuPI=;
        b=QNIwF79UczsyuqwZiHADx9kSnTuZ6gnM9qroSXHINT40vkTKkPO+kNERCgEl5mBvHb
         UzzQiJ3fTYrK3DPQsDo4eCCrTcNx9zgFyWBx88K1bxYBjK3rBmGERdI5aBl5TbWNAoja
         Od99z6eybdDBIqNI+loPJDN6dTlCiEJ1UwzD2crOYO3wNTn1+kKXz6CDBZEEJzppUg8g
         U1x+/tZs0agYrqn22zqcfIRjoTJfk+ce90vCXKWp1g2RTHb6tnjlof6EQwrPhDdi7lLM
         RI0cMmCLGSW/+Kar0YBBnOBkjCEz30/WWOVRKwi/gUIr96CNNIcb5E+tzyH/shpKupMy
         JoKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701779720; x=1702384520;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FCPNXIipBFO4e3fU1ItwsDrZJmF1i1S9KCyToMsJuPI=;
        b=nVQ7DNzvrxm+pn7c2v6HetVmlHHL9zdsY8lbmyYXCiSHscdF8eUlWjDsknoDZxAj2G
         e+0gFE3vL+xVlD1z4XfMPwHeryS4gJcpM9Ulfq16o2I1bECEo6HyOV/jypJIirbfIbRc
         oaHJ9R+3s5h+vQsmKwjcriZxM5M3lla67TEYqcFHJCcD6Ue1K5UiY07SUTewcAAEP+/x
         YNbn7i9tou5E9PrDfOw80LBz7e2aiKkoyTVH6DsZ7q8qx5GaLVB2e/Qu4iik4PB5wLIp
         9KmmTandAXa+h7lIRapawRfIZN+rxWbxCdVa9sLwFjPRHeCd1ZP8WKTuqbum+3FHMCOI
         cttw==
X-Gm-Message-State: AOJu0Yx0Lz8gFt8dPJHgCGlTKMHYE3oCeJGPHKNjAmaS8cnTtuOPuH6o
	3/b2qruKu7rTAhDUzIlHnPPiU9dteDej2fcLEg8=
X-Google-Smtp-Source: AGHT+IFccT82pIRM0QptS9G8/lfCF+MOYdAcHvVMFLnXZwCn/Vr7J72FAJHJKrcIDWm1thma/YCqb9IrWr5PPXfnoWQ=
X-Received: by 2002:a17:90b:3b8b:b0:286:d464:686e with SMTP id
 pc11-20020a17090b3b8b00b00286d464686emr1048259pjb.20.1701779720100; Tue, 05
 Dec 2023 04:35:20 -0800 (PST)
MIME-Version: 1.0
References: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
 <20231205-rkisp-irq-fix-v1-2-f4045c74ba45@ideasonboard.com>
 <CAHCN7xJqw-hSD7rWfxFq5NWnF+=RrpCWR+js9358jAL0_WzVFw@mail.gmail.com> <b61d7adb-5b45-4366-a98c-d0de91d409c8@ideasonboard.com>
In-Reply-To: <b61d7adb-5b45-4366-a98c-d0de91d409c8@ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 5 Dec 2023 06:35:08 -0600
Message-ID: <CAHCN7xJcYACscBHExh6n-kAKofrk=E2VTncm8Y_ZmWjcj_yzPA@mail.gmail.com>
Subject: Re: [PATCH 2/4] media: rkisp1: Fix IRQ handler return values
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Paul Elder <paul.elder@ideasonboard.com>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, kieran.bingham@ideasonboard.com, 
	umang.jain@ideasonboard.com, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_043521_278694_847CDEFA 
X-CRM114-Status: GOOD (  28.49  )
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

T24gVHVlLCBEZWMgNSwgMjAyMyBhdCA2OjAy4oCvQU0gVG9taSBWYWxrZWluZW4KPHRvbWkudmFs
a2VpbmVuQGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gT24gMDUvMTIvMjAyMyAxMzo1Nywg
QWRhbSBGb3JkIHdyb3RlOgo+ID4gT24gVHVlLCBEZWMgNSwgMjAyMyBhdCAyOjEw4oCvQU0gVG9t
aSBWYWxrZWluZW4KPiA+IDx0b21pLnZhbGtlaW5lbkBpZGVhc29uYm9hcmQuY29tPiB3cm90ZToK
PiA+Pgo+ID4+IFRoZSBJUlEgaGFuZGxlciBya2lzcDFfaXNyKCkgY2FsbHMgc3ViLWhhbmRsZXJz
LCBhbGwgb2Ygd2hpY2ggcmV0dXJucyBhbgo+ID4+IGlycXJldHVybl90IHZhbHVlLCBidXQgcmtp
c3AxX2lzcigpIGlnbm9yZXMgdGhvc2UgdmFsdWVzIGFuZCBhbHdheXMKPiA+PiByZXR1cm5zIElS
UV9IQU5ETEVELgo+ID4+Cj4gPj4gRml4IHRoaXMgYnkgY29sbGVjdGluZyB0aGUgcmV0dXJuIHZh
bHVlcywgYW5kIHJldHVybmluZyBJUlFfSEFORExFRCBvcgo+ID4+IElSUV9OT05FIGFzIGFwcHJv
cHJpYXRlLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogVG9taSBWYWxrZWluZW4gPHRvbWkudmFs
a2VpbmVuQGlkZWFzb25ib2FyZC5jb20+Cj4gPj4gLS0tCj4gPj4gICBkcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtZGV2LmMgfCAxOCArKysrKysrKysrKysrKy0t
LS0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmtpc3AxL3JraXNwMS1kZXYuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtp
c3AxL3JraXNwMS1kZXYuYwo+ID4+IGluZGV4IDc2ZjkzNjE0YjRjZi4uMWQ2MGY0YjhiZDA5IDEw
MDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3Jr
aXNwMS1kZXYuYwo+ID4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtp
c3AxL3JraXNwMS1kZXYuYwo+ID4+IEBAIC00NDUsMTcgKzQ0NSwyNyBAQCBzdGF0aWMgaW50IHJr
aXNwMV9lbnRpdGllc19yZWdpc3RlcihzdHJ1Y3Qgcmtpc3AxX2RldmljZSAqcmtpc3AxKQo+ID4+
Cj4gPj4gICBzdGF0aWMgaXJxcmV0dXJuX3Qgcmtpc3AxX2lzcihpbnQgaXJxLCB2b2lkICpjdHgp
Cj4gPj4gICB7Cj4gPj4gKyAgICAgICBpcnFyZXR1cm5fdCByZXQ7Cj4gPj4gKwo+ID4+ICAgICAg
ICAgIC8qCj4gPj4gICAgICAgICAgICogQ2FsbCBya2lzcDFfY2FwdHVyZV9pc3IoKSBmaXJzdCB0
byBoYW5kbGUgdGhlIGZyYW1lIHRoYXQKPiA+PiAgICAgICAgICAgKiBwb3RlbnRpYWxseSBjb21w
bGV0ZWQgdXNpbmcgdGhlIGN1cnJlbnQgZnJhbWVfc2VxdWVuY2UgbnVtYmVyIGJlZm9yZQo+ID4+
ICAgICAgICAgICAqIGl0IGlzIHBvdGVudGlhbGx5IGluY3JlbWVudGVkIGJ5IHJraXNwMV9pc3Bf
aXNyKCkgaW4gdGhlIHZlcnRpY2FsCj4gPj4gICAgICAgICAgICogc3luYy4KPiA+PiAgICAgICAg
ICAgKi8KPiA+PiAtICAgICAgIHJraXNwMV9jYXB0dXJlX2lzcihpcnEsIGN0eCk7Cj4gPj4gLSAg
ICAgICBya2lzcDFfaXNwX2lzcihpcnEsIGN0eCk7Cj4gPj4gLSAgICAgICBya2lzcDFfY3NpX2lz
cihpcnEsIGN0eCk7Cj4gPj4KPiA+PiAtICAgICAgIHJldHVybiBJUlFfSEFORExFRDsKPiA+PiAr
ICAgICAgIHJldCA9IElSUV9OT05FOwo+ID4+ICsKPiA+PiArICAgICAgIGlmIChya2lzcDFfY2Fw
dHVyZV9pc3IoaXJxLCBjdHgpID09IElSUV9IQU5ETEVEKQo+ID4+ICsgICAgICAgICAgICAgICBy
ZXQgPSBJUlFfSEFORExFRDsKPiA+PiArCj4gPj4gKyAgICAgICBpZiAocmtpc3AxX2lzcF9pc3Io
aXJxLCBjdHgpID09IElSUV9IQU5ETEVEKQo+ID4+ICsgICAgICAgICAgICAgICByZXQgPSBJUlFf
SEFORExFRDsKPiA+PiArCj4gPj4gKyAgICAgICBpZiAocmtpc3AxX2NzaV9pc3IoaXJxLCBjdHgp
ID09IElSUV9IQU5ETEVEKQo+ID4+ICsgICAgICAgICAgICAgICByZXQgPSBJUlFfSEFORExFRDsK
PiA+PiArCj4gPgo+ID4gSXQgc2VlbXMgbGlrZSB3ZSdyZSB0aHJvd2luZyBhd2F5IHRoZSB2YWx1
ZSBvZiByZXQgZWFjaCB0aW1lIHRoZQo+ID4gc3Vic2VxdWVudCBpZiBzdGF0ZW1lbnQgaXMgZXZh
bHVhdGVkLiAgV2hldGhlciBvciBub3QgdGhleSByZXR1cm4KPiA+IGRpZG4ndCBtYXR0ZXIgYmVm
b3JlLCBhbmQgdGhlIG9ubHkgb25lIHRoYXQgc2VlbXMgdXNpbmcgdGhlIHJldHVybgo+ID4gY29k
ZSBpcyB0aGUgbGFzdCBvbmUuCj4gPgo+ID4gV291bGRuJ3QgaXQgYmUgc2ltcGxlciB0byB1c2Ug
cmV0ID0gcmtpc3AxX2NhcHR1cmVfaXNyKGlycSwgY3R4KSwgcmV0Cj4gPiA9IHJraXNwMV9pc3Bf
aXNyKGlycSwgY3R4KSBhbmQgcmV0ID0gcmtpc3AxX2NzaV9pc3IoaXJxLCBjdHgpIGlmIHdlCj4g
PiBjYXJlIGFib3V0IHRoZSByZXR1cm4gY29kZT8KPiA+Cj4gPiBIb3cgZG8geW91IGV4cGVjdCB0
aGlzIHRvIHJldHVybiBpZiBvbmUgb2YgdGhlIGZpcnN0IHR3byBkb24ndCByZXR1cm4KPiA+IElS
UV9IQU5ETEVEPwo+Cj4gSSdtIHNvcnJ5LCBJIGRvbid0IHF1aXRlIGZvbGxvdyB3aGF0IHlvdSBt
ZWFuLiBDYW4geW91IGVsYWJvcmF0ZSBhIGJpdD8KPgo+IFdlIHdhbnQgdGhlIHJraXNwMV9pc3Io
KSB0byByZXR1cm4gSVJRX05PTkUgaWYgbm9uZSBvZiB0aGUgc3ViLWhhbmRsZXJzCj4gaGFuZGxl
ZCB0aGUgaW50ZXJydXB0LiBPdGhlcndpc2UsIGlmIGFueSBvZiB0aGUgc3ViLWhhbmRsZXJzIHJl
dHVybgo+IElSUV9IQU5ETEVELCBya2lzcDFfaXNyKCkgcmV0dXJucyBJUlFfSEFORExFRC4KCk9L
LiAgSSB1bmRlcnN0YW5kIHlvdXIgZXhwbGFuYXRpb24uICBJIHJldHJhY3QgbXkgY29tbWVudC4g
IEknbGwgdHJ5CnRvIHRlc3QgdGhpcyBzZXJpZXMgdG9uaWdodCBvbiBteSBpbXg4bXAKCmFkYW0K
Cgo+Cj4gICBUb21pCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
