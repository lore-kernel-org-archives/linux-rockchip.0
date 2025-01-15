Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B23BDC02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 17:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ay1GIGxWszyiwqGI49pFmV1KlgLXwG46HhgfE72vyZU=; b=uO9DFdmQSiPA7u
	s7zyYoit5bKytiDKlYNSHMMvaSjz+4sHtfbEOMDyGXyzGv3F1e35ou//1wAZiL5ZobxZ+MAKpVpm2
	BeXQIZtCBHTCyfxEGFDnhWmjP70OY0bUSdQtTlJGkK/9aWOrRbeHYE7vFDNULzW2pmjbxv4dhpUHM
	EO25kE561Oimr+fsTbNTHZQILy9tWYiHHFCOdDxBaAthAg9UNpf4twPmbm64blby57QQboi5kkApx
	TQSI1KS+VIHP3Dw1/F6Y4MFU0NkPKmm+Wsf1oy2o0+dUEiIH5nF7H6IJ1r5CFBMI3+/3xDI+PYvz1
	0+9iKzFR9vztO7M64t5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY7I0-0000000CcLX-0t3x;
	Wed, 15 Jan 2025 17:34:48 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY7Gc-0000000Cbze-2TeJ;
	Wed, 15 Jan 2025 17:33:23 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-54021daa6cbso51564e87.0;
        Wed, 15 Jan 2025 09:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736962401; x=1737567201; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+tzwEHLf8s85+zyGb/tLCAPn4b62D9uaY7uMidIF++E=;
        b=LfAvVFcs36a+8f8BL7f4u2I8B3BwwrsX0WBWroJhooUm7kVcKOlXJZaKwB3KgEiEp9
         b6DleeGU665IGeA61OuiFNlNEOXd1mVIHY8NyvJK4ofpObfJQrxYqr8xIIlGXwKVXhCi
         uvaWm30EgqgoVWoRs3H040oko0g8+vrGFA63EwUaah5s5o+cj56UQl/TYKEgs91l4rUb
         HH9uYwncMbT86VszzcaviYmpMj/wekMXw7TPD4ESRlF5uvGtChnILDolkF64MyYRsKNg
         UX+Gtd4eg4RxJD8Au+NDfJZEp492DaRdGV9MyqfPHFZ6MZ4jNUnaiSGAys6VjoAnJAtg
         nv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736962401; x=1737567201;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+tzwEHLf8s85+zyGb/tLCAPn4b62D9uaY7uMidIF++E=;
        b=Eo1XOQDQYHpcMJAruENGJ1wloY60wVA1XoVUeT/9qFRZ0nZDZBbY4AMo2dHEJIpk4H
         pID6ml78e+l0tIImwvf+40jeEiWrF1O+SpTCLAOG5jduyvB8E6Pl/Pls0M1imqVS+h1n
         vGObeaqGb16v5xzeNwsX5MJW0QK6hMOMqoWuw7VKzay0IW/OEoGKjI3dVlRhSxEYqGt/
         F4/NHDKV0ifOKHrA+ZjTxqa+CZ1HwN7ENkym8N2t6XUQRI5DdHR2wzvNeO7jj5PIHomn
         wpLc8qQilxvUwcr7M80VKZZ3VT8TuHy8cPS0Ght9dGojoT0fHBHkeQiocf2poRsig1Wz
         eHiw==
X-Forwarded-Encrypted: i=1; AJvYcCVod/r6apidEzlPvO9Mbu97Kp0h6KBRzmbAIxl0lC8UzggGHd6WL+xZUQST349MrayTQPdR8Sonrnqdek6bFH0=@lists.infradead.org, AJvYcCXyXlx879YAm5mUuAWuW0cX8uuZaY+D6HIG32lv3QraFPP3dnUZwRiMmFtgkmLJjn1e8X70S0jSz1RBTId9qwm5@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2fanIuzfrVol4Oh/+TUuavU1vtbe0u0l5GJyZx+P8o+4F/89s
	mJQzCI+zgmwECHXO5D/1ssNY54cFTfImpEYIuQFhbSso1W9ae7xm
X-Gm-Gg: ASbGnctt0G8hfH/588IcL7p8En3EKKgHYL988UvTJZhsp7F2WxldeYlXf94ZcMuu4qM
	l0/C5rcS7enZBCARzLup3R6HOdRCw90Z28Xhqip8aPAVlkjvsx7y2+DhQLYa3FUCui9yE8vzFMt
	jiQ7KeYIypuTwkcNlakhlDG8E7cNx+6jaQnRI0b9HeSrP0jc7ajwDoXkmQ1HFrCBB5uytMw5gey
	ehjSo50HXiHKULvfGDLHtS8PODZxJWuA7WGgUwVMnW9Wu3zndc/i8gCyaoEv6cB6EWy0WSE3TNA
	zsFffYVzIadI4K9jp1b6zftgDtWvhv8MZB0FBVw8blAI
X-Google-Smtp-Source: AGHT+IHVuITnk6uWqJC7r+dQL/h3YFb1nzsnse5J2mvy5M+/MKpOzVH47aIYncz/G8LBHPMH6ccR4w==
X-Received: by 2002:a05:6512:2246:b0:540:1e7e:ca80 with SMTP id 2adb3069b0e04-542845d35d9mr9465671e87.30.1736962400482;
        Wed, 15 Jan 2025 09:33:20 -0800 (PST)
Received: from razdolb (static.248.157.217.95.clients.your-server.de. [95.217.157.248])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428becbc25sm2051761e87.259.2025.01.15.09.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 09:33:19 -0800 (PST)
References: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
 <20250103152326.GP554@pendragon.ideasonboard.com>
 <87bjw9s4s3.fsf@gmail.com>
 <CAAFQd5ACseSBg4WZnUnbtwh+i63xcKMBFKnfc4_Aqfmnz0s=7A@mail.gmail.com>
 <877c6wryqn.fsf@gmail.com>
 <CAAFQd5C89M1TtpaCoK56Jd2Kq+h6+z552KY6cAqiDjMjDCFdWQ@mail.gmail.com>
User-agent: mu4e 1.10.9; emacs 29.4.50
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Tomasz Figa <tfiga@chromium.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld
 <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rkisp1: allow non-coherent video capture buffers
Date: Wed, 15 Jan 2025 20:29:58 +0300
In-reply-to: <CAAFQd5C89M1TtpaCoK56Jd2Kq+h6+z552KY6cAqiDjMjDCFdWQ@mail.gmail.com>
Message-ID: <87y0zcq8wy.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_093322_629867_383E88B5 
X-CRM114-Status: GOOD (  21.66  )
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

Ck9uIDIwMjUtMDEtMTUgYXQgMjM6NDYgKzA5LCBUb21hc3ogRmlnYSA8dGZpZ2FAY2hyb21pdW0u
b3JnPiB3cm90ZToKCj4gT24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgMTA6MzDigK9QTSBNaWtoYWls
IFJ1ZGVua28gPG1pa2UucnVkZW5rb0BnbWFpbC5jb20+IHdyb3RlOgo+Pgo+PiBIaSBUb21hc3os
Cj4+Cj4+IE9uIDIwMjUtMDEtMTUgYXQgMTc6MzEgKzA5LCBUb21hc3ogRmlnYSA8dGZpZ2FAY2hy
b21pdW0ub3JnPiB3cm90ZToKPj4KPj4gPiBIaSBNaWtoYWlsIGFuZCBMYXVyZW50LAo+PiA+Cj4+
ID4gT24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgMjowN+KAr0FNIE1pa2hhaWwgUnVkZW5rbyA8bWlr
ZS5ydWRlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4+ID4+Cj4+ID4+Cj4+ID4+IEhpIExhdXJlbnQs
Cj4+ID4+Cj4+ID4+IE9uIDIwMjUtMDEtMDMgYXQgMTc6MjMgKzAyLCBMYXVyZW50IFBpbmNoYXJ0
IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+PiA+Pgo+PiA+PiA+
IE9uIFRodSwgSmFuIDAyLCAyMDI1IGF0IDA2OjM1OjAwUE0gKzAzMDAsIE1pa2hhaWwgUnVkZW5r
byB3cm90ZToKPj4gPj4gPj4gQ3VycmVudGx5LCB0aGUgcmtpc3AxIGRyaXZlciBhbHdheXMgdXNl
cyBjb2hlcmVudCBETUEgYWxsb2NhdGlvbnMgZm9yCj4+ID4+ID4+IHZpZGVvIGNhcHR1cmUgYnVm
ZmVycy4gSG93ZXZlciwgb24gc29tZSBwbGF0Zm9ybXMsIHVzaW5nIG5vbi1jb2hlcmVudAo+PiA+
PiA+PiBidWZmZXJzIGNhbiBpbXByb3ZlIHBlcmZvcm1hbmNlLCBlc3BlY2lhbGx5IHdoZW4gQ1BV
IHByb2Nlc3Npbmcgb2YKPj4gPj4gPj4gTU1BUCdlZCB2aWRlbyBidWZmZXJzIGlzIHJlcXVpcmVk
Lgo+PiA+PiA+Pgo+PiA+PiA+PiBGb3IgZXhhbXBsZSwgb24gdGhlIFJvY2tjaGlwIFJLMzM5OSBy
dW5uaW5nIGF0IG1heGltdW0gQ1BVIGZyZXF1ZW5jeSwKPj4gPj4gPj4gdGhlIHRpbWUgdG8gbWVt
Y3B5IGEgZnJhbWUgZnJvbSBhIDEyODB4NzIwIFhSR0IzMiBNTUFQJ2VkIGJ1ZmZlciB0byBhCj4+
ID4+ID4+IG1hbGxvYydlZCB1c2Vyc3BhY2UgYnVmZmVyIGRlY3JlYXNlcyBmcm9tIDcuNyBtcyB0
byAxLjEgbXMgd2hlbiB1c2luZwo+PiA+PiA+PiBub24tY29oZXJlbnQgRE1BIGFsbG9jYXRpb24u
IENQVSB1c2FnZSBhbHNvIGRlY3JlYXNlcyBhY2NvcmRpbmdseS4KPj4gPj4gPgo+PiA+PiA+IFdo
YXQncyB0aGUgdGltZSB0YWtlbiBieSB0aGUgY2FjaGUgbWFuYWdlbWVudCBvcGVyYXRpb25zID8K
Pj4gPj4KPj4gPj4gU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5LCB5b3VyIHF1ZXN0aW9uIHR1cm5l
ZCBvdXQgYSBsaXR0bGUgbW9yZQo+PiA+PiBpbnRlcmVzdGluZyB0aGFuIEkgZXhwZWN0ZWQgaW5p
dGlhbGx5LiA6KQo+PiA+Pgo+PiA+PiBXaGVuIGNhcHR1cmluZyB1c2luZyBZYXZ0YSB3aXRoIE1N
QVAgYnVmZmVycyB1bmRlciB0aGUgY29uZGl0aW9ucyBtZW50aW9uZWQKPj4gPj4gaW4gdGhlIGNv
bW1pdCBtZXNzYWdlLCBmdHJhY2UgZ2l2ZXMgNDM3LjYgKy0gMS4xIHVzIGZvcgo+PiA+PiBkbWFf
c3luY19zZ3RhYmxlX2Zvcl9jcHUgYW5kIDQwOSArLSAxNCB1cyBmb3IKPj4gPj4gZG1hX3N5bmNf
c2d0YWJsZV9mb3JfZGV2aWNlLiBUaHVzLCBpdCBsb29rcyBsaWtlIHVzaW5nIG5vbi1jb2hlcmVu
dAo+PiA+PiBidWZmZXJzIGluIHRoaXMgY2FzZSBpcyBtb3JlIENQVS1lZmZpY2llbnQgZXZlbiB3
aGVuIGNvbnNpZGVyaW5nIGNhY2hlCj4+ID4+IG1hbmFnZW1lbnQgb3ZlcmhlYWQuCj4+ID4+Cj4+
ID4+IFdoZW4gdHJ5aW5nIHRvIGRvIHRoZSBzYW1lIG1lYXN1cmVtZW50cyB3aXRoIGxpYmNhbWVy
YSwgSSBmYWlsZWQuIEluIGEKPj4gPj4gdHlwaWNhbCBsaWJjYW1lcmEgdXNlIGNhc2Ugd2hlbiBN
TUFQIGJ1ZmZlcnMgYXJlIGFsbG9jYXRlZCBmcm9tIGEKPj4gPj4gZGV2aWNlLCBleHBvcnRlZCBh
cyBkbWFidWZzIGFuZCB0aGVuIHVzZWQgZm9yIGNhcHR1cmUgb24gdGhlIHNhbWUgZGV2aWNlCj4+
ID4+IHdpdGggRE1BQlVGIG1lbW9yeSB0eXBlLCBjYWNoZSBtYW5hZ2VtZW50IGluIGtlcm5lbCBp
cyBza2lwcGVkIFsxXQo+PiA+PiBbMl0uIEFsc28sIHZiMl9kY19kbWFidWZfb3BzX3tiZWdpbixl
bmR9X2NwdV9hY2Nlc3MgYXJlIG5vLW9wcyBbM10sIHNvCj4+ID4+IERNQV9CVUZfSU9DVExfU1lO
QyBmcm9tIHVzZXJzcGFjZSBkb2VzIG5vdCB3b3JrIGVpdGhlci4KPj4gPgo+PiA+IE9vcHMsIHNv
IEkgYmVsaWV2ZSB0aGlzIGlzIGEgYnVnLiBXaGVuIGFuIE1NQVAgYnVmZmVyIGlzIGFsbG9jYXRl
ZCBpbgo+PiA+IHRoZSBub24tY29oZXJlbnQgbW9kZSwgdGhvc2Ugb3BzIHNob3VsZCBwZXJmb3Jt
IHByb3BlciBjYWNoZQo+PiA+IG1haW50ZW5hbmNlLgo+Pgo+PiBUaGFua3MgZm9yIHBvaW50aW5n
IHRoaXMgb3V0IQo+Pgo+PiA+IExldCBtZSBzZW5kIGEgcGF0Y2ggdG8gZml4IHRoaXMgaW4gYSBj
b3VwbGUgb2YgZGF5cyB1bmxlc3Mgc29tZW9uZQo+PiA+IGRvZXMgaXQgZWFybGllci4KPj4KPj4g
Tm93IHRoYXQgd2Uga25vdyB0aGF0IHRoaXMgaXMgYSBidWcsIG5vdCBhbiBBUEkgbWlzdXNlIGZy
b20gbXkgc2lkZSwgSQo+PiBjYW4gZml4IHRoaXMgbXlzZWxmIGFuZCBzZW5kIGEgdjIuIFdvdWxk
IHRoaXMgYmUgb2theSBmb3IgeW91Pwo+Cj4gSSdkIGJlIG1vcmUgdGhhbiBoYXBweSA6KQoKRG9u
ZSwgc2VlIFsxXS4gQSByZXZpZXcgd291bGQgYmUgYXBwcmVjaWF0ZWQuIDopCgpbMV0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwMTE1LWI0LXJraXNwLW5vbmNvaGVyZW50LXYyLTAt
MDg1M2UxYTI0MDEyQGdtYWlsLmNvbS8KCgotLQpCZXN0IHJlZ2FyZHMsCk1pa2hhaWwgUnVkZW5r
bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
