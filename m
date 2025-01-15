Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5212AC02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 14:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/sjqlgmc5lNBVcWiaMWrvDY117rxgyhbzqHHtDBQaQ=; b=DH5IgEOPzr6CUN
	BphH79qr6QYMU1zMbvjVJ4yFHwK8xjTmxVLYPv2oKtSLQmTpaHN77jB109KPExjoTF9SdiOQYmswP
	od/8PIkbge4axxNlVaSCZw3bvXUcmtSyTLEe7tFvOyvjjaEV6YFpD1JG47hFl9DIpvwOewgv6BGMr
	hfHP3OR1zS3PNrrjgMNlryfMywoCfkc3yh15rWBUN4wfIspE9nBCF860WDnUn+yki2LolFQ7o9f2O
	N5x4zvLRR2P/68ql9Mph7LGZjQiM0eKs+S2HAeMyIp99PRt9Q0nSGbyefr9JFIxqvp5wHJd++yqHH
	zo1v2uSI5DCs5QSaoxOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY4gT-0000000CB5n-1RZk;
	Wed, 15 Jan 2025 14:47:53 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY4fA-0000000CAt6-25gG
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jan 2025 14:46:33 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-aaf900cc7fbso1166405666b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2025 06:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736952390; x=1737557190; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MEk1wzatFckv+XFBb9mVlks+BhEPxcZKbCKJsmOb7yQ=;
        b=GD9z24kgC6iyxWum2enN5H3hMGOYqSU8EhgTTAfw6sP2HcqRO9rFiO/yZ22gR/9Et+
         GJhZt9nefanOPEa6hLYQcFaWHCCTfaVXkFCMEP/v8lmNK9PMWoN3lj5Cn/dBcc+QXwkI
         btHeLdsqN457NXoUsTPQxjCe/mqT48EWjDFHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736952390; x=1737557190;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MEk1wzatFckv+XFBb9mVlks+BhEPxcZKbCKJsmOb7yQ=;
        b=YJZ+RtV+osasXO2giKWgyj38rRDuvrNIuHI1tjUwOzInr67xGQSS0zXJqkz0E7Lv03
         sarAX+Ngn+qRj2KvtgU4svn/oWwpv9xb27fXdo/ZX5o5peIfDUES7DvXmSAo+o71d1eW
         0NTDAMxJUH/VjPTQg1AjmhJ+quQ9AUMsBRmzh8YnxxJK4SU3/MF8jd7qj5wSPQ1NF3P0
         kjBt7pD7Y3WxFY7MdoLEYZUpuL8MfQezKC/hqTu50wisZJJgKJcz0t5WK5si+sC8qc1Q
         8NkOMnMjIgkfS6QaCy2Syw23EUAXZm4h/qtDH0kkrOaVnJeW4wHl5agszMaBe3WYsv0i
         PGlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsubOH3r36dJdV5ppw/OQ0/H6ORhiPZlvTWYJEa+JtgZtLKlqyIa7S8yhuC4FE+cS8ecJ9Xrg0DnfEWtRiOQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxIbKbblg98xEWhLZLW+Txe94W9WRgHY51eNej69vv5SJkis6lr
	1jhOXRESzkksMHCoI0MMkBv9urzKXuIX3aK23g1dHPJesYDZP0qgOXnQn2PY2937ql55b37wMXp
	jxuNY
X-Gm-Gg: ASbGncsO2aaq5N2b6Xbz5yaXKzrDd1yy/P9sCbyZEqOR6lPUtfn5xHmR3/C2wGjfj9d
	LaubnnwJ7GksLrLp0mjdFQHZtNsn58sSPQHWT0bO57oH2oCWGglTOwaj7KLu8rD3B1s9Pbvkm0u
	cfO0wmhLClnWdCtmXatbteVUDCZkP4S+89ku4lMkhRSGvZweIAH65HC6T6xBHSLRhnNLmakOTgh
	G1orjMPg3KMZGMz6xldw8ovrxTMQEiOZzecqZ6g5bPenmGMC2ngCVBmr+dMqJcukJSXfbm3bkNv
	GANR/jk8XhQYoBRl
X-Google-Smtp-Source: AGHT+IE9kD71qdm/yaHbVMWXIhw86xkOPktQ3pa27pBhlKd0IJ9hSQM1WiYz+OZZlFUv0jFeb3LQQQ==
X-Received: by 2002:a17:907:3a96:b0:ab2:b5f1:567d with SMTP id a640c23a62f3a-ab2b5f15acbmr1876684366b.32.1736952390189;
        Wed, 15 Jan 2025 06:46:30 -0800 (PST)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c95b0ab6sm759533366b.155.2025.01.15.06.46.29
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2025 06:46:29 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d442f9d285so17915a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2025 06:46:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU2zEcE+VS/fZ51wmZ7EO/D34Nlc2mx+Lfbz5hC6ZOW7PDdRw7nxyhiqRT7VzWCeFQjEiFFVeSxfyr3SZfZaA==@lists.infradead.org
X-Received: by 2002:aa7:da0c:0:b0:5d0:84a6:f1a1 with SMTP id
 4fb4d7f45d1cf-5da0c33b80emr97185a12.6.1736952388478; Wed, 15 Jan 2025
 06:46:28 -0800 (PST)
MIME-Version: 1.0
References: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
 <20250103152326.GP554@pendragon.ideasonboard.com> <87bjw9s4s3.fsf@gmail.com>
 <CAAFQd5ACseSBg4WZnUnbtwh+i63xcKMBFKnfc4_Aqfmnz0s=7A@mail.gmail.com> <877c6wryqn.fsf@gmail.com>
In-Reply-To: <877c6wryqn.fsf@gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 15 Jan 2025 23:46:11 +0900
X-Gmail-Original-Message-ID: <CAAFQd5C89M1TtpaCoK56Jd2Kq+h6+z552KY6cAqiDjMjDCFdWQ@mail.gmail.com>
X-Gm-Features: AbW1kvZL1qQQyr3bOi9vf1QLnv5SEz_sbYFAD3t65ooPIchi1WTeTxOdFsa8n5U
Message-ID: <CAAFQd5C89M1TtpaCoK56Jd2Kq+h6+z552KY6cAqiDjMjDCFdWQ@mail.gmail.com>
Subject: Re: [PATCH] media: rkisp1: allow non-coherent video capture buffers
To: Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_064632_530176_F6CFCAA0 
X-CRM114-Status: GOOD (  32.65  )
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

T24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgMTA6MzDigK9QTSBNaWtoYWlsIFJ1ZGVua28gPG1pa2Uu
cnVkZW5rb0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgVG9tYXN6LAo+Cj4gT24gMjAyNS0wMS0x
NSBhdCAxNzozMSArMDksIFRvbWFzeiBGaWdhIDx0ZmlnYUBjaHJvbWl1bS5vcmc+IHdyb3RlOgo+
Cj4gPiBIaSBNaWtoYWlsIGFuZCBMYXVyZW50LAo+ID4KPiA+IE9uIFdlZCwgSmFuIDE1LCAyMDI1
IGF0IDI6MDfigK9BTSBNaWtoYWlsIFJ1ZGVua28gPG1pa2UucnVkZW5rb0BnbWFpbC5jb20+IHdy
b3RlOgo+ID4+Cj4gPj4KPiA+PiBIaSBMYXVyZW50LAo+ID4+Cj4gPj4gT24gMjAyNS0wMS0wMyBh
dCAxNzoyMyArMDIsIExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJv
YXJkLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiA+IE9uIFRodSwgSmFuIDAyLCAyMDI1IGF0IDA2OjM1
OjAwUE0gKzAzMDAsIE1pa2hhaWwgUnVkZW5rbyB3cm90ZToKPiA+PiA+PiBDdXJyZW50bHksIHRo
ZSBya2lzcDEgZHJpdmVyIGFsd2F5cyB1c2VzIGNvaGVyZW50IERNQSBhbGxvY2F0aW9ucyBmb3IK
PiA+PiA+PiB2aWRlbyBjYXB0dXJlIGJ1ZmZlcnMuIEhvd2V2ZXIsIG9uIHNvbWUgcGxhdGZvcm1z
LCB1c2luZyBub24tY29oZXJlbnQKPiA+PiA+PiBidWZmZXJzIGNhbiBpbXByb3ZlIHBlcmZvcm1h
bmNlLCBlc3BlY2lhbGx5IHdoZW4gQ1BVIHByb2Nlc3Npbmcgb2YKPiA+PiA+PiBNTUFQJ2VkIHZp
ZGVvIGJ1ZmZlcnMgaXMgcmVxdWlyZWQuCj4gPj4gPj4KPiA+PiA+PiBGb3IgZXhhbXBsZSwgb24g
dGhlIFJvY2tjaGlwIFJLMzM5OSBydW5uaW5nIGF0IG1heGltdW0gQ1BVIGZyZXF1ZW5jeSwKPiA+
PiA+PiB0aGUgdGltZSB0byBtZW1jcHkgYSBmcmFtZSBmcm9tIGEgMTI4MHg3MjAgWFJHQjMyIE1N
QVAnZWQgYnVmZmVyIHRvIGEKPiA+PiA+PiBtYWxsb2MnZWQgdXNlcnNwYWNlIGJ1ZmZlciBkZWNy
ZWFzZXMgZnJvbSA3LjcgbXMgdG8gMS4xIG1zIHdoZW4gdXNpbmcKPiA+PiA+PiBub24tY29oZXJl
bnQgRE1BIGFsbG9jYXRpb24uIENQVSB1c2FnZSBhbHNvIGRlY3JlYXNlcyBhY2NvcmRpbmdseS4K
PiA+PiA+Cj4gPj4gPiBXaGF0J3MgdGhlIHRpbWUgdGFrZW4gYnkgdGhlIGNhY2hlIG1hbmFnZW1l
bnQgb3BlcmF0aW9ucyA/Cj4gPj4KPiA+PiBTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHksIHlvdXIg
cXVlc3Rpb24gdHVybmVkIG91dCBhIGxpdHRsZSBtb3JlCj4gPj4gaW50ZXJlc3RpbmcgdGhhbiBJ
IGV4cGVjdGVkIGluaXRpYWxseS4gOikKPiA+Pgo+ID4+IFdoZW4gY2FwdHVyaW5nIHVzaW5nIFlh
dnRhIHdpdGggTU1BUCBidWZmZXJzIHVuZGVyIHRoZSBjb25kaXRpb25zIG1lbnRpb25lZAo+ID4+
IGluIHRoZSBjb21taXQgbWVzc2FnZSwgZnRyYWNlIGdpdmVzIDQzNy42ICstIDEuMSB1cyBmb3IK
PiA+PiBkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUgYW5kIDQwOSArLSAxNCB1cyBmb3IKPiA+PiBk
bWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UuIFRodXMsIGl0IGxvb2tzIGxpa2UgdXNpbmcgbm9u
LWNvaGVyZW50Cj4gPj4gYnVmZmVycyBpbiB0aGlzIGNhc2UgaXMgbW9yZSBDUFUtZWZmaWNpZW50
IGV2ZW4gd2hlbiBjb25zaWRlcmluZyBjYWNoZQo+ID4+IG1hbmFnZW1lbnQgb3ZlcmhlYWQuCj4g
Pj4KPiA+PiBXaGVuIHRyeWluZyB0byBkbyB0aGUgc2FtZSBtZWFzdXJlbWVudHMgd2l0aCBsaWJj
YW1lcmEsIEkgZmFpbGVkLiBJbiBhCj4gPj4gdHlwaWNhbCBsaWJjYW1lcmEgdXNlIGNhc2Ugd2hl
biBNTUFQIGJ1ZmZlcnMgYXJlIGFsbG9jYXRlZCBmcm9tIGEKPiA+PiBkZXZpY2UsIGV4cG9ydGVk
IGFzIGRtYWJ1ZnMgYW5kIHRoZW4gdXNlZCBmb3IgY2FwdHVyZSBvbiB0aGUgc2FtZSBkZXZpY2UK
PiA+PiB3aXRoIERNQUJVRiBtZW1vcnkgdHlwZSwgY2FjaGUgbWFuYWdlbWVudCBpbiBrZXJuZWwg
aXMgc2tpcHBlZCBbMV0KPiA+PiBbMl0uIEFsc28sIHZiMl9kY19kbWFidWZfb3BzX3tiZWdpbixl
bmR9X2NwdV9hY2Nlc3MgYXJlIG5vLW9wcyBbM10sIHNvCj4gPj4gRE1BX0JVRl9JT0NUTF9TWU5D
IGZyb20gdXNlcnNwYWNlIGRvZXMgbm90IHdvcmsgZWl0aGVyLgo+ID4KPiA+IE9vcHMsIHNvIEkg
YmVsaWV2ZSB0aGlzIGlzIGEgYnVnLiBXaGVuIGFuIE1NQVAgYnVmZmVyIGlzIGFsbG9jYXRlZCBp
bgo+ID4gdGhlIG5vbi1jb2hlcmVudCBtb2RlLCB0aG9zZSBvcHMgc2hvdWxkIHBlcmZvcm0gcHJv
cGVyIGNhY2hlCj4gPiBtYWludGVuYW5jZS4KPgo+IFRoYW5rcyBmb3IgcG9pbnRpbmcgdGhpcyBv
dXQhCj4KPiA+IExldCBtZSBzZW5kIGEgcGF0Y2ggdG8gZml4IHRoaXMgaW4gYSBjb3VwbGUgb2Yg
ZGF5cyB1bmxlc3Mgc29tZW9uZQo+ID4gZG9lcyBpdCBlYXJsaWVyLgo+Cj4gTm93IHRoYXQgd2Ug
a25vdyB0aGF0IHRoaXMgaXMgYSBidWcsIG5vdCBhbiBBUEkgbWlzdXNlIGZyb20gbXkgc2lkZSwg
SQo+IGNhbiBmaXggdGhpcyBteXNlbGYgYW5kIHNlbmQgYSB2Mi4gV291bGQgdGhpcyBiZSBva2F5
IGZvciB5b3U/CgpJJ2QgYmUgbW9yZSB0aGFuIGhhcHB5IDopCgo+Cj4gPiBCZXN0IHJlZ2FyZHMs
Cj4gPiBUb21hc3oKPiA+Cj4gPj4KPiA+PiBTbyBpdCBsb29rcyBsaWtlIHRvIG1ha2UgdGhpcyBj
aGFuZ2UgcmVhbGx5IHVzZWZ1bCwgdGhlIGFib3ZlIGlzc3VlIG9mCj4gPj4gY2FjaGUgbWFuYWdl
bWVudCBmb3IgbGliY2FtZXJhL0RNQUJVRi92aWRlb2J1ZjItZG1hLWNvbnRpZyBoYXMgdG8gYmUK
PiA+PiBzb2x2ZWQuIEknbSBub3QgYW4gZXhwZXJ0IGluIHRoaXMgYXJlYSwgc28gYW55IGFkdmlj
ZSBpcyBraW5kbHkgd2VsY29tZS4gOikKPiA+Pgo+ID4+IFsxXSBodHRwczovL2dpdC5saW51eHR2
Lm9yZy9tZWRpYS5naXQvdHJlZS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9i
dWYyLWNvcmUuYz9pZD05NDc5NGI1Y2U0ZDkwYWIxMzRiMGIxMDFhMDJmZGRmNmU3NGM0MzdkI240
MTEKPiA+PiBbMl0gaHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWEuZ2l0L3RyZWUvZHJpdmVy
cy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmM/aWQ9OTQ3OTRiNWNlNGQ5
MGFiMTM0YjBiMTAxYTAyZmRkZjZlNzRjNDM3ZCNuODI5Cj4gPj4gWzNdIGh0dHBzOi8vZ2l0Lmxp
bnV4dHYub3JnL21lZGlhLmdpdC90cmVlL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItZG1hLWNvbnRpZy5jP2lkPTk0Nzk0YjVjZTRkOTBhYjEzNGIwYjEwMWEwMmZkZGY2
ZTc0YzQzN2QjbjQyNgo+ID4+Cj4gPj4gLS0KPiA+PiBCZXN0IHJlZ2FyZHMsCj4gPj4gTWlraGFp
bCBSdWRlbmtvCj4gPj4KPgo+Cj4gLS0KPiBCZXN0IHJlZ2FyZHMsCj4gTWlraGFpbCBSdWRlbmtv
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
