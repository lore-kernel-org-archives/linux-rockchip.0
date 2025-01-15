Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EB7FC02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 08:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HsVUqcgQIb8YlRmj7b1Xr9vQnPHWBmHmAx4wS7mCIs=; b=z4kwXEoJyhwNwW
	BGOVjncKlbViiN3T7u7ETTUshEbzeGfpn9NyyERDyz/JhGCsVakisPi860UsWQW/ef6Q1+gK9e8fA
	/NtfPmM2N9PpXhq0rGL2hwCU16WqvYhLTYpJYi5rf+11RwA1WIbR45JxqApRr9XP4oosqQIGF7eV0
	NttRhoAPLFNnA3WLjQ1t+jWaUXyt0fdvg7IQ43AUTIvmCCaeGkKGAnUELDOBmmVRYZR6c+yOw4nyh
	DAtJfW7CZsjKMpVm1n5mG4/eR+V6XzxCsfM8eJh0LHyoMp7zesd/CbipIqdA7TdyzuB+dVOTjrZ6X
	uUXORvzOy5ktJoHbyw2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXyoo-0000000B6Oc-0ZII;
	Wed, 15 Jan 2025 08:32:06 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXyok-0000000B6NW-3Aad
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jan 2025 08:32:04 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-38633b5dbcfso6505482f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2025 00:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736929920; x=1737534720; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e/vmzoS0u/8ccSmr3RVub0XbT2dTO7nfDBGpXZSEEes=;
        b=QD5zqVjbCGo8MXwE1b+GRER+5DBJpEh+i6PqA0T/TekrXJzIa8g541ZuiTkIfvZSH/
         LimjfdYlZcuVQ0kFumA9Pq1ZahGDCQM5odlwBWcoPwqFTCRydGHfsW4HYmkdd78xRjs5
         AUdgliZkj/MY4ZUQy7Cac6fShyWxDuKRvJyYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736929920; x=1737534720;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e/vmzoS0u/8ccSmr3RVub0XbT2dTO7nfDBGpXZSEEes=;
        b=bY3Zz8GlXcuvWJJXymOInQwluA5KGe45zLh9Hw4SnWQ2/ZSmJQl300ZTAgHZzScfOc
         XbLheue1tk+6T4rglhPaRtuV+o5cwVIPiXQmXF3rE0ncuR7sfQil2J0F1e+U20L9fY/h
         hmF9tn2QTcKV60eVljkTlNurRBKUm13pMbnKLzYG6xLWVUBSNIEgBsT2j8uEyzDKd0ZR
         mR6OrtxsONb0Zu5ZhHR78hVTK4iG3rvesQPeU1Zct2fZSTarZCXCW1tvRUCijkxjxvlV
         9YwknrhyD1hRBWABOMeVPrgGyX2fdSN9l2XCeFLr16buQGKxRdJt/KIQaPGFzKuCvrWQ
         EFmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVwWpFHJZrrH/12gojcxSGUBdplkkVglMR3OGuI7OPuNFf76Q43q7Zrysj0YIMQlTzjlzOjnktWP9nMnoIbw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+Wqma511txxoYvHB02axWG+AJAKwgf+CeT64BOyGILv06J2MU
	YcFb0DqpO21EFgnmu6g9EBvE4yGP0CwYRkR43CUT9g0U2F4X9jGIhlHirDKvu0L9FrMhwWjkMkI
	Eji15
X-Gm-Gg: ASbGncuyW2QLh8dPskLtFv1pZ0u7r5AQ5DP+bVBNK198vHCTyhg7aGJ4TEBPXYilXzR
	ngq602HZs+8KrTyWWET7zTaEI75QY7rhp/3JNPlAColtWGicj+B6FaCHP0aKAyL9c8yPTZy+3eT
	g46iTz3vihkVmfiaXgl0p1Cu3WLxjdr/f+JeqEEAaofx3wuvU2qFFIjirOibx7bPDWOsT1KrvYY
	t/yOnjo8dW1/9yyUtN/ZYVZbNrLM+PEm/wMO4Z8VSVLVOapiXhBrrfrn+YxX+LpwrVJNxwE7WuX
	oWLwV7gYjS1B2dKx
X-Google-Smtp-Source: AGHT+IHZBnlKTDdh6tDJysMWWpH2/8vkyK3pRrXVLsW9Edirc7mnoRt+eqP6QeRxTqFDNifgFBhzfg==
X-Received: by 2002:a05:6000:1fa1:b0:385:f062:c2d4 with SMTP id ffacd0b85a97d-38a87338c01mr26052203f8f.37.1736929920409;
        Wed, 15 Jan 2025 00:32:00 -0800 (PST)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c9562e9bsm732817666b.106.2025.01.15.00.31.59
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2025 00:31:59 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d442f9d285so14990a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2025 00:31:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWQ6EGPjYbl+H/mvoayfpDeebvm1HQrID6QZ6XqiK73PbxGFimNarpScSxfXnpyqEeUZliflENluoaBA9/FTQ==@lists.infradead.org
X-Received: by 2002:a05:6402:4c3:b0:5d0:acf3:e3a6 with SMTP id
 4fb4d7f45d1cf-5da0dd676femr51506a12.1.1736929919103; Wed, 15 Jan 2025
 00:31:59 -0800 (PST)
MIME-Version: 1.0
References: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
 <20250103152326.GP554@pendragon.ideasonboard.com> <87bjw9s4s3.fsf@gmail.com>
In-Reply-To: <87bjw9s4s3.fsf@gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 15 Jan 2025 17:31:42 +0900
X-Gmail-Original-Message-ID: <CAAFQd5ACseSBg4WZnUnbtwh+i63xcKMBFKnfc4_Aqfmnz0s=7A@mail.gmail.com>
X-Gm-Features: AbW1kvaBA4VZ7jIsEwQbxJoMrVzvOgL53cb9RAbkq1doElWIr6HOcvTWYI_kM7k
Message-ID: <CAAFQd5ACseSBg4WZnUnbtwh+i63xcKMBFKnfc4_Aqfmnz0s=7A@mail.gmail.com>
Subject: Re: [PATCH] media: rkisp1: allow non-coherent video capture buffers
To: Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_003202_830329_6E4DD2C7 
X-CRM114-Status: GOOD (  26.19  )
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

SGkgTWlraGFpbCBhbmQgTGF1cmVudCwKCk9uIFdlZCwgSmFuIDE1LCAyMDI1IGF0IDI6MDfigK9B
TSBNaWtoYWlsIFJ1ZGVua28gPG1pa2UucnVkZW5rb0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4KPiBI
aSBMYXVyZW50LAo+Cj4gT24gMjAyNS0wMS0wMyBhdCAxNzoyMyArMDIsIExhdXJlbnQgUGluY2hh
cnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4KPiA+IE9uIFRo
dSwgSmFuIDAyLCAyMDI1IGF0IDA2OjM1OjAwUE0gKzAzMDAsIE1pa2hhaWwgUnVkZW5rbyB3cm90
ZToKPiA+PiBDdXJyZW50bHksIHRoZSBya2lzcDEgZHJpdmVyIGFsd2F5cyB1c2VzIGNvaGVyZW50
IERNQSBhbGxvY2F0aW9ucyBmb3IKPiA+PiB2aWRlbyBjYXB0dXJlIGJ1ZmZlcnMuIEhvd2V2ZXIs
IG9uIHNvbWUgcGxhdGZvcm1zLCB1c2luZyBub24tY29oZXJlbnQKPiA+PiBidWZmZXJzIGNhbiBp
bXByb3ZlIHBlcmZvcm1hbmNlLCBlc3BlY2lhbGx5IHdoZW4gQ1BVIHByb2Nlc3Npbmcgb2YKPiA+
PiBNTUFQJ2VkIHZpZGVvIGJ1ZmZlcnMgaXMgcmVxdWlyZWQuCj4gPj4KPiA+PiBGb3IgZXhhbXBs
ZSwgb24gdGhlIFJvY2tjaGlwIFJLMzM5OSBydW5uaW5nIGF0IG1heGltdW0gQ1BVIGZyZXF1ZW5j
eSwKPiA+PiB0aGUgdGltZSB0byBtZW1jcHkgYSBmcmFtZSBmcm9tIGEgMTI4MHg3MjAgWFJHQjMy
IE1NQVAnZWQgYnVmZmVyIHRvIGEKPiA+PiBtYWxsb2MnZWQgdXNlcnNwYWNlIGJ1ZmZlciBkZWNy
ZWFzZXMgZnJvbSA3LjcgbXMgdG8gMS4xIG1zIHdoZW4gdXNpbmcKPiA+PiBub24tY29oZXJlbnQg
RE1BIGFsbG9jYXRpb24uIENQVSB1c2FnZSBhbHNvIGRlY3JlYXNlcyBhY2NvcmRpbmdseS4KPiA+
Cj4gPiBXaGF0J3MgdGhlIHRpbWUgdGFrZW4gYnkgdGhlIGNhY2hlIG1hbmFnZW1lbnQgb3BlcmF0
aW9ucyA/Cj4KPiBTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHksIHlvdXIgcXVlc3Rpb24gdHVybmVk
IG91dCBhIGxpdHRsZSBtb3JlCj4gaW50ZXJlc3RpbmcgdGhhbiBJIGV4cGVjdGVkIGluaXRpYWxs
eS4gOikKPgo+IFdoZW4gY2FwdHVyaW5nIHVzaW5nIFlhdnRhIHdpdGggTU1BUCBidWZmZXJzIHVu
ZGVyIHRoZSBjb25kaXRpb25zIG1lbnRpb25lZAo+IGluIHRoZSBjb21taXQgbWVzc2FnZSwgZnRy
YWNlIGdpdmVzIDQzNy42ICstIDEuMSB1cyBmb3IKPiBkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUg
YW5kIDQwOSArLSAxNCB1cyBmb3IKPiBkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UuIFRodXMs
IGl0IGxvb2tzIGxpa2UgdXNpbmcgbm9uLWNvaGVyZW50Cj4gYnVmZmVycyBpbiB0aGlzIGNhc2Ug
aXMgbW9yZSBDUFUtZWZmaWNpZW50IGV2ZW4gd2hlbiBjb25zaWRlcmluZyBjYWNoZQo+IG1hbmFn
ZW1lbnQgb3ZlcmhlYWQuCj4KPiBXaGVuIHRyeWluZyB0byBkbyB0aGUgc2FtZSBtZWFzdXJlbWVu
dHMgd2l0aCBsaWJjYW1lcmEsIEkgZmFpbGVkLiBJbiBhCj4gdHlwaWNhbCBsaWJjYW1lcmEgdXNl
IGNhc2Ugd2hlbiBNTUFQIGJ1ZmZlcnMgYXJlIGFsbG9jYXRlZCBmcm9tIGEKPiBkZXZpY2UsIGV4
cG9ydGVkIGFzIGRtYWJ1ZnMgYW5kIHRoZW4gdXNlZCBmb3IgY2FwdHVyZSBvbiB0aGUgc2FtZSBk
ZXZpY2UKPiB3aXRoIERNQUJVRiBtZW1vcnkgdHlwZSwgY2FjaGUgbWFuYWdlbWVudCBpbiBrZXJu
ZWwgaXMgc2tpcHBlZCBbMV0KPiBbMl0uIEFsc28sIHZiMl9kY19kbWFidWZfb3BzX3tiZWdpbixl
bmR9X2NwdV9hY2Nlc3MgYXJlIG5vLW9wcyBbM10sIHNvCj4gRE1BX0JVRl9JT0NUTF9TWU5DIGZy
b20gdXNlcnNwYWNlIGRvZXMgbm90IHdvcmsgZWl0aGVyLgoKT29wcywgc28gSSBiZWxpZXZlIHRo
aXMgaXMgYSBidWcuIFdoZW4gYW4gTU1BUCBidWZmZXIgaXMgYWxsb2NhdGVkIGluCnRoZSBub24t
Y29oZXJlbnQgbW9kZSwgdGhvc2Ugb3BzIHNob3VsZCBwZXJmb3JtIHByb3BlciBjYWNoZQptYWlu
dGVuYW5jZS4KCkxldCBtZSBzZW5kIGEgcGF0Y2ggdG8gZml4IHRoaXMgaW4gYSBjb3VwbGUgb2Yg
ZGF5cyB1bmxlc3Mgc29tZW9uZQpkb2VzIGl0IGVhcmxpZXIuCgpCZXN0IHJlZ2FyZHMsClRvbWFz
egoKPgo+IFNvIGl0IGxvb2tzIGxpa2UgdG8gbWFrZSB0aGlzIGNoYW5nZSByZWFsbHkgdXNlZnVs
LCB0aGUgYWJvdmUgaXNzdWUgb2YKPiBjYWNoZSBtYW5hZ2VtZW50IGZvciBsaWJjYW1lcmEvRE1B
QlVGL3ZpZGVvYnVmMi1kbWEtY29udGlnIGhhcyB0byBiZQo+IHNvbHZlZC4gSSdtIG5vdCBhbiBl
eHBlcnQgaW4gdGhpcyBhcmVhLCBzbyBhbnkgYWR2aWNlIGlzIGtpbmRseSB3ZWxjb21lLiA6KQo+
Cj4gWzFdIGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhLmdpdC90cmVlL2RyaXZlcnMvbWVk
aWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jP2lkPTk0Nzk0YjVjZTRkOTBhYjEz
NGIwYjEwMWEwMmZkZGY2ZTc0YzQzN2QjbjQxMQo+IFsyXSBodHRwczovL2dpdC5saW51eHR2Lm9y
Zy9tZWRpYS5naXQvdHJlZS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYy
LWNvcmUuYz9pZD05NDc5NGI1Y2U0ZDkwYWIxMzRiMGIxMDFhMDJmZGRmNmU3NGM0MzdkI244MjkK
PiBbM10gaHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWEuZ2l0L3RyZWUvZHJpdmVycy9tZWRp
YS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmM/aWQ9OTQ3OTRiNWNlNGQ5
MGFiMTM0YjBiMTAxYTAyZmRkZjZlNzRjNDM3ZCNuNDI2Cj4KPiAtLQo+IEJlc3QgcmVnYXJkcywK
PiBNaWtoYWlsIFJ1ZGVua28KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
