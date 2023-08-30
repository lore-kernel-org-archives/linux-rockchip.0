Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49E0DC83F01
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Aug 2023 03:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3rx4qI1cH1T8BV7iY6b2Ll9BzzaZ4uQMfykxCK8p8RQ=; b=o5kY/dbAz+2C4M
	mNy5+/KMVBpLx+i/o0mhPGYTTDkp0ois1tlCi+eF2okNnEAW5RxJ1Whn1wjWOE0fq0/tuHg33hdta
	BTVrIlRbQlRlO6jk1g1faesyb+Ak718QnTmMqb2zcm7KzmJD3RlTtn8QCoZAZyIrOp7CGD57vtXUx
	i5HRxJ1FaT8HcJM2tpprtz6u0zWIK7KcYFeLKb37TuK3SADiy7jh91h4zwCSC483+wlQ4sESU97CM
	NualT2VYiTIGdvtd/hXTzCduLVhniWNZd9BARbvckTq80FvC+u9hoOZJzsZ+SyfFplP0+ATFP8wJM
	y+um9WspeAxkzeMEiy6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbC2d-00ClSY-2W;
	Wed, 30 Aug 2023 03:38:51 +0000
Received: from mail-vs1-xe33.google.com ([2607:f8b0:4864:20::e33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbC2b-00ClSD-0z
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Aug 2023 03:38:50 +0000
Received: by mail-vs1-xe33.google.com with SMTP id ada2fe7eead31-44e84fbaab9so2312644137.1
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Aug 2023 20:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1693366727; x=1693971527; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HdgZcvMXHkxZjnyYrS3QkK4MDpO+xXqtU6pz/g9B33Y=;
        b=c2bPx/J3k6nwWfqND40pOXgJY+LxwuFLgVKrnutnq22m6K6Nhw6ZrMJD0AV9UrM9Ae
         EmwT5HWO/juddZTNL2qem7lHfw16fc2ubJ4ZuuOgE6Gx2UyLkhsBP5nzQOfPsU5oAzMl
         oUmXmrHPgzG/4Qp6DpqqUywTsup0OTiTVV8ww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693366727; x=1693971527;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HdgZcvMXHkxZjnyYrS3QkK4MDpO+xXqtU6pz/g9B33Y=;
        b=AGmrHQn+YqZ5wdVfCqq/5UsspfGUUfJ+7dykmgt8FOXQwAnB1xBvGC6jICcRM8VPAg
         DNiqBvdYcvFLKLaas10XulkZYb3qGTyDFcZ8Zp9/RzMa7LlXiz6hgC+bb9Q1gSwq5FJU
         Pc09J4k+r4rih0horccOSfQ8cjAqLP7vb8oItBRhtp6UyAojgx5sajFaPgmNXdYyfcYQ
         mcN5grii9RHUDRmVOMJJ/Fy6YcIvw6hJFo9j4ELP+YQhPqMgskd1UwcSJvUV+vKjE9TY
         1bVywz0t0EjT3hj3JZRcWvoKKgdiKkN3KoU1xE9Xq2ktUxOP7EJQIX5rn/XLW1Qv+Ucm
         UZ4A==
X-Gm-Message-State: AOJu0YygG548oe9u2XgeK9/8vpAV3Cf2B5PSFAdi0qrMdugnITlCwqD9
	uFDryUexyAJ+f1jXj2fFFDbBLFDEHEr6eY0eTTCaiw==
X-Google-Smtp-Source: AGHT+IFs9NFnbcKWUGXFHV1qRYAJK+3xA2eONKYJjzTOUIe/hu4vxA8oibx1FVVt5NrDQLWElf7+zWCIwTamKrWjXnM=
X-Received: by 2002:a67:ec05:0:b0:44e:92dc:7f12 with SMTP id
 d5-20020a67ec05000000b0044e92dc7f12mr972109vso.30.1693366727227; Tue, 29 Aug
 2023 20:38:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230824013858.303105-1-marex@denx.de> <CAHCN7xLDmMv7T_fT7vY3iq+KMWuPM9tBP_2AJ-X04L7ZTRWPOw@mail.gmail.com>
 <80d9a66f-c703-6057-e084-1a6d2214d775@denx.de> <CAGXv+5GQFtCAYbfSbEJeHA4Os0O6WuD64V-xcZ9uDD33HbuhhQ@mail.gmail.com>
 <f6f55f46-bd6e-4dde-4484-86d1c385c8fe@denx.de> <CAGXv+5EJ1asWymfjNcyLANSgQdJPcjT6MXUVwTYOEQ3PtVtXBQ@mail.gmail.com>
 <a445f1fc-6b38-e58b-a3ca-81c05e19f66e@denx.de>
In-Reply-To: <a445f1fc-6b38-e58b-a3ca-81c05e19f66e@denx.de>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 30 Aug 2023 11:38:36 +0800
Message-ID: <CAGXv+5ESeqzzGAooMUFLiwJEzLneTRDbLggyzTFeq32NzDDUiw@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Check whether reset op is defined before use
To: Marek Vasut <marex@denx.de>
Cc: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_203849_394544_652C50A2 
X-CRM114-Status: GOOD (  33.80  )
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

T24gU3VuLCBBdWcgMjcsIDIwMjMgYXQgNTo0NOKAr0FNIE1hcmVrIFZhc3V0IDxtYXJleEBkZW54
LmRlPiB3cm90ZToKPgo+IE9uIDgvMjUvMjMgMTA6NTIsIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+
IE9uIEZyaSwgQXVnIDI1LCAyMDIzIGF0IDQ6MzPigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVu
eC5kZT4gd3JvdGU6Cj4gPj4KPiA+PiBPbiA4LzI1LzIzIDA5OjA5LCBDaGVuLVl1IFRzYWkgd3Jv
dGU6Cj4gPj4+IE9uIFRodSwgQXVnIDI0LCAyMDIzIGF0IDk6MDjigK9QTSBNYXJlayBWYXN1dCA8
bWFyZXhAZGVueC5kZT4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4gT24gOC8yNC8yMyAxMjozOSwgQWRh
bSBGb3JkIHdyb3RlOgo+ID4+Pj4+IE9uIFdlZCwgQXVnIDIzLCAyMDIzIGF0IDg6MznigK9QTSBN
YXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4gd3JvdGU6Cj4gPj4+Pj4+Cj4gPj4+Pj4+IFRoZSBp
Lk1YOE1NL04vUCBkb2VzIG5vdCBkZWZpbmUgdGhlIC5yZXNldCBvcCBzaW5jZSByZXNldCBvZiB0
aGUgVlBVIGlzCj4gPj4+Pj4+IGRvbmUgYnkgZ2VucGQuIENoZWNrIHdoZXRoZXIgdGhlIC5yZXNl
dCBvcCBpcyBkZWZpbmVkIGJlZm9yZSBjYWxsaW5nIGl0Cj4gPj4+Pj4+IHRvIGF2b2lkIE5VTEwg
cG9pbnRlciBkZXJlZmVyZW5jZS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gTm90ZSB0aGF0IHRoZSBGaXhl
cyB0YWcgaXMgc2V0IHRvIHRoZSBjb21taXQgd2hpY2ggcmVtb3ZlZCB0aGUgcmVzZXQgb3AKPiA+
Pj4+Pj4gZnJvbSBpLk1YOE0gSGFudHJvIEcyIGltcGxlbWVudGF0aW9uLCB0aGlzIGlzIGJlY2F1
c2UgYmVmb3JlIHRoaXMgY29tbWl0Cj4gPj4+Pj4+IGFsbCB0aGUgaW1wbGVtZW50YXRpb25zIGRp
ZCBkZWZpbmUgdGhlIC5yZXNldCBvcC4KPiA+Pj4+Pgo+ID4+Pj4+IEkgYW0gc3VycHJpc2VkIEkg
ZGlkbid0IGhhdmUgaXNzdWVzIHdoZW4gSSB3YXMgdGVzdGluZyB0aGUgOE1RIGFuZAo+ID4+Pj4+
IDhNTSwgYnV0IHRoaXMgbWFrZXMgc2Vuc2UuCj4gPj4+Pgo+ID4+Pj4gWW91IG5lZWQgdG8gdHJp
Z2dlciB0aGUgVlBVIHdhdGNoZG9nIHRvIHRyaWdnZXIgdGhlIGNyYXNoLCB0aGF0IG1lYW5zCj4g
Pj4+PiB5b3UgaGF2ZSB0byBnZXQgdGhlIFZQVSBpbnRvIHNvbWUgd2VpcmQgc3RhdGUgd2hlcmUg
aXQgZmFpbHMgdG8gZGVjb2RlCj4gPj4+PiBmcmFtZS4gVGhlbiBpdCB0cmlnZ2VycyB0aGUgcmVz
ZXQgYW5kIC4uLiBib29tLgo+ID4+Pj4KPiA+Pj4+IFNlZSB0aGlzIHBhdGNoLCB0aGF0IGNvbnRh
aW5zIGEgZ3N0cmVhbWVyIGludm9jYXRpb24gdG8gZ2VuZXJhdGUgc3VjaAo+ID4+Pj4gdHJpZ2dl
ciBjb25kaXRpb24gaW5wdXQgZGF0YToKPiA+Pj4+Cj4gPj4+PiBbUEFUQ0hdIG1lZGlhOiB2ZXJp
c2lsaWNvbjogRG8gbm90IGVuYWJsZSBHMiBwb3N0cHJvYyBkb3duc2NhbGUgaWYKPiA+Pj4+IHNv
dXJjZSBpcyBuYXJyb3dlciB0aGFuIGRlc3RpbmF0aW9uCj4gPj4+Pgo+ID4+Pj4gIgo+ID4+Pj4g
VG8gZ2VuZXJhdGUgaW5wdXQgdGVzdCBkYXRhIHRvIHRyaWdnZXIgdGhpcyBidWcsIHVzZSBlLmcu
Ogo+ID4+Pj4gJCBnc3QtbGF1bmNoLTEuMCB2aWRlb3Rlc3RzcmMgIQo+ID4+Pj4gdmlkZW8veC1y
YXcsd2lkdGg9MjcyLGhlaWdodD0yNTYsZm9ybWF0PUk0MjAgISBcCj4gPj4+PiAgICAgICAgICAg
ICAgICAgICAgIHZwOWVuYyAhIG1hdHJvc2thbXV4ICEgZmlsZXNpbmsgbG9jYXRpb249L3RtcC90
ZXN0LnZwOQo+ID4+Pj4gVG8gdHJpZ2dlciB0aGUgYnVnIHVwb24gZGVjb2RpbmcgKG5vdGUgdGhh
dCB0aGUgTlYxMiBtdXN0IGJlIGZvcmNlZCwgYXMKPiA+Pj4+IHRoYXQgYXNzdXJlcyB0aGUgb3V0
cHV0IGRhdGEgd291bGQgcGFzcyB0aGUgRzIgcG9zdHByb2MpOgo+ID4+Pj4gJCBnc3QtbGF1bmNo
LTEuMCBmaWxlc3JjIGxvY2F0aW9uPS90bXAvdGVzdC52cDkgISBtYXRyb3NrYWRlbXV4ICEKPiA+
Pj4+IHZwOXBhcnNlICEgXAo+ID4+Pj4gICAgICAgICAgICAgICAgICAgICB2NGwyc2x2cDlkZWMg
ISB2aWRlby94LXJhdyxmb3JtYXQ9TlYxMiAhIHZpZGVvY29udmVydAo+ID4+Pj4gISBmYmRldnNp
bmsKPiA+Pj4+ICIKPiA+Pj4KPiA+Pj4gRG9lcyBpdCBjb21wbGV0ZWx5IHJlY292ZXIgYWZ0ZXJ3
YXJkcz8gSW4gbXkgcHJldmlvdXMgdHJpYWxzIHRoZSBoYXJkd2FyZQo+ID4+PiBlbmRlZCB1cCBp
biBzb21lIGJpenphcmUgc3RhdGU6IHdoaWxlIGRlY29kaW5nIHN1Y2NlZWRzLCB0aGUgb3V0cHV0
J3MgbWQ1c3VtCj4gPj4+IGRpZG4ndCBtYXRjaCB1cC4KPiA+Pgo+ID4+IEhhdmUgeW91IGdvdCBh
IHRlc3RjYXNlIHRoYXQgdHJpZ2dlcnMgdGhpcywgb25lIEkgY2FuIHRyeSA/Cj4gPj4KPiA+PiBJ
IGFtIG5vdCBlbnRpcmVseSBzdXJlIHdoZXRoZXIgdGhpcyBpcyBoYXBwZW5pbmcgaGVyZSBhcyB3
ZWxsIG9yIG5vdCwKPiA+PiBidXQgSSBjYW4gaW1hZ2luZSB0aGF0IHRoZSBwb3dlciBkb21haW4g
d2VudCBkb3duIGFuZCBiYWNrIHVwIGJldHdlZW4KPiA+PiB0ZXN0cywgc28gdGhlIFZQVSB3b3Vs
ZCBiZSBwb3dlciBjeWNsZWQgKGFuZCB0aGVyZWZvcmUgcmVzZXQpIHRoYXQgd2F5Lgo+ID4+IFNv
LCBJIHRoaW5rIGl0IGlzIHdvcnRoIHRlc3RpbmcgdGhhdC4KPiA+Cj4gPiBUaGlzIHdhcyBsYXN0
IHllYXIgd2hpbGUgSSB3YXMgd3JpdGluZyBIRVZDIGRlY29kaW5nIGNvZGUgZm9yIENocm9taXVt
Lgo+ID4gSUlSQyB0aGUgU0FPREJMS19BX01haW5Db25jZXB0XzQgdGVzdCB2ZWN0b3IgZnJvbSB0
aGUgb2ZmaWNpYWwgSEVWQyB0ZXN0Cj4gPiBzdWl0ZSBkb2VzIGNhdXNlIG91ciBzdGFjayB0byBj
cmFzaCwgYnV0IEdzdHJlYW1lciBzZWVtZWQgdG8gaGFuZGxlIGl0Cj4gPiBPSy4gSXQgY291bGQg
YmUgdGhhdCB0aGUgQ2hyb21pdW0gZGVjb2RlciBzdGFjayBpcyBwYXNzaW5nIGJhZCB2YWx1ZXMg
dG8KPiA+IHRoZSBkZWNvZGVyLgo+Cj4gVGhhdCBjYW4gYmUgZWFzaWx5IHRlc3RlZCB3aXRoIGZ0
cmFjZSBlbmFibGVkLiBJIHdhcyBqdXN0IHRyYWNraW5nIGRvd24KPiBhbiBpc3N1ZSB3aXRoIGdz
dHJlYW1lciBhbmQgYWRkZWQgdGhlIGZvbGxvd2luZyBwYXRjaCB0byB0aGUgaGFudHJvCj4gZHJp
dmVyLiBUaGVuOgo+Cj4gZWNobyA+IC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2UKPiA8
cnVuIGZhaWwgdGVzdD4KPiBjYXQgL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy90cmFjZSA+IC90
bXAvZmFpbC50cmFjZQo+IGVjaG8gPiAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlCj4g
PHJ1biBwYXNzIHRlc3Q+Cj4gY2F0IC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2UgPiAv
dG1wL3Bhc3MudHJhY2UKPiAjIHJlbW92ZSB0aW1lIHN0YW1wcyBldGMuCj4gZGlmZiAvdG1wL3tm
YWlsLHBhc3N9LnRyYWNlCj4KPiBZb3Ugc2hvdWxkIHNlZSB3aGV0aGVyIHNvbWUgcmVnaXN0ZXIg
cHJvZ3JhbW1pbmcgZGlmZmVycyBiZXR3ZWVuCj4gZ3N0cmVhbWVyIGFuZCBjaHJvbWl1bS4KCkkg
ZW5kZWQgdXAgdXNpbmcgVklTTCB0byBjb21wYXJlIHRoZSBjb250cm9scyBzZXQuIEkgZGlkIGZp
bmQgYSBidWcuCkl0IHN0aWxsIGhhcmQgaGFuZ3MgYWZ0ZXIgYSBjb3VwbGUgZnJhbWVzLCBzbyBJ
IGd1ZXNzIEknZCBuZWVkIHRvIHVzZQp5b3VyIG1ldGhvZCwgYnV0IGRvIHByaW50ayBpbnN0ZWFk
LgoKQlRXLCBJIHdvbmRlciBpZiB3ZSBzaG91bGRuJ3QgYWRkIGEgcmVzZXQgb3AsIGlmIG9ubHkg
anVzdCB0byBzdG9wIHRoZQpoYXJkd2FyZT8gVGhhdCBpcywgZG8gdGhlIHNhbWUgdHdvIHJlZ2lz
dGVyIHdyaXRlcyBhcyBpbiB0aGUgSGFudHJvIEcyCmludGVycnVwdCBoYW5kbGVyLgoKQ2hlbll1
CgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm8uaAo+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaAo+IGlu
ZGV4IGRlYTM1YTUwMWJhMzAuLjUyOWYxYWI0NzhlYzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaAo+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvLmgKPiBAQCAtMzUzLDggKzM1Myw3IEBAIGV4dGVy
biBpbnQgaGFudHJvX2RlYnVnOwo+Cj4gICAjZGVmaW5lIHZwdV9kZWJ1ZyhsZXZlbCwgZm10LCBh
cmdzLi4uKSAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gICAgICAgICAgZG8geyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gLSAgICAgICAg
ICAgICAgIGlmIChoYW50cm9fZGVidWcgJiBCSVQobGV2ZWwpKSAgICAgICAgICBcCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgcHJfaW5mbygiJXM6JWQ6ICIgZm10LCAgICAgICAgICAgICAgICAg
IFwKPiArICAgICAgICAgICAgICAgdHJhY2VfcHJpbnRrKCIlczolZDogIiBmbXQsICAgICAgICAg
ICAgICAgICAgICAgXAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2Z1bmNf
XywgX19MSU5FX18sICMjYXJncyk7ICAgXAo+ICAgICAgICAgIH0gd2hpbGUgKDApCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
