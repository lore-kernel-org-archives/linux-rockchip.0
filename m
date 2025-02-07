Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07C9CC02194
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 16:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nu9dYlKASUq3Ie+t1UHhA10kRtt9qzRjxQuOihvi3UI=; b=OKGOAEd+N2yPye
	YJ0JYUyJoAatgRQHmj+t6xMrogehj3yxSrMqeKFK2EkNBa8/30QgWy+uORzb8xExqIU8Ia53B9ub+
	vVocoqLp29957AQHagMQpB/rNG6mUmZZh4n3SJ9CtJQrwF0dev1ENrNTF3lmsVh6I0XOciGrLuFOz
	A0ES4QiqF3Tvy9EiOEx5eGZ7JnA/gCfqnVbS4oOqH4xOJOUBfCtpZqF8Q3WunodeCLp7FqWB8Y1dq
	vimYcSwO6zmmiXucq6s0d3O7ycfINU75R7PkE2cCHe/l2+QKn+saCmQjfG832D80tRxxG12payoQ0
	OQLmXLGIiHhwA/zpXtZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgR93-0000000AGdh-1umJ;
	Fri, 07 Feb 2025 16:23:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgR7h-0000000AGL0-29kj
	for linux-rockchip@bombadil.infradead.org;
	Fri, 07 Feb 2025 16:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=MCn5Dk3vMVo7X1t68AtKlpToAukuif5wkQVCcdE+FHY=; b=KQI39lnvZc0EVWinU3c+KV2r6c
	+pWYENSQs6cXtkUGJIt+GO2bB7ZLvRHSMxyF1/etLMc3qKnDHmisKzsAmxMAEAtek6JllQaW8k8PI
	ybEKp6NcFD6RgjlVvbflbneYNbGbgJGkqh/lNjTobpZmamH296IOpXMvrdYEdXAmda+n9WLknzdw/
	Mg0BczUCPlguJcYjekis0w3Ect8IFRkj0/AQjg9viZ6wr0LKULgTFMYNRb/mF5BvUA8KeEdtUZHnR
	7/PUXEiOV7eYQ5CLwEIOFmKCG/yxyuq4mKTXNQ86bk9tmQykB65QFHrO0imt4LJrnoEp6m/hMnotB
	fXPpzCjA==;
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgR7e-0000000HFeg-17Iv
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Feb 2025 16:22:32 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-aa67ac42819so359052466b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Feb 2025 08:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738945346; x=1739550146; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MCn5Dk3vMVo7X1t68AtKlpToAukuif5wkQVCcdE+FHY=;
        b=WbPQXolqm6ywzNNfVGLhVOYG7dCn5sSrY5lRIw5sFAL38jUkUFst5stjBpo0/tXoww
         ffspgoiq+oeE5IHlh6fKRtota+wuXGkgkvKG8KZVeiweDL7ljwBXGD/cB6wHzYLDVqN9
         dum+1rNBXnlwuVxOvy91SyBitYqxw7N7abcnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738945346; x=1739550146;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MCn5Dk3vMVo7X1t68AtKlpToAukuif5wkQVCcdE+FHY=;
        b=I9rinf5cOScTxxBKj59owSXxO4X7w74MEf0ut1b68O1av5FbDtYts/MoOUR5gqaZse
         JkyzlhPTZBFkDvdviqbFL8BuuknaFRg8ImH7sf32dsNShJlyNwiIINURvYokON8iYOuf
         7DYwdyLcxSfcBh0NZluXnl8YLVLkmU2yofdbAoWx9IPGXykHd7wGSURQX5V3TrBQDGWP
         mdb4XDVfzC4qGyY5zuU64cep1qZRMUOQHFYdSL67c6sQy5DdKq9nCpssE0EIosjlGOEF
         X9MekeU+I7/a/iLS2HEFm783Q+xtDc9TKpuSnZIZ60PigsEW/K/6BrZy0kD5b/vzxsNO
         exdg==
X-Forwarded-Encrypted: i=1; AJvYcCVUcVanPoQgCE0WfjBh2+moTuR8co9xLJYvg64LyNDDq5x1Hx+TdrsJ4sBBxYblMJY7A7sr8w5igQMvvGNiqQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzd+6vfk45TAEtmpMCi3gMw/j8OrpPbQQcRn16JSZylyO3g12kI
	M5cw8JnQIjAv1Ft+DB7EpM/H+LVjeb5PYbq+69ErsvA0TLaWtuH7sokHJ+Q20YWEfxT/mSAodYb
	gxSwa
X-Gm-Gg: ASbGncsp642rOMelfzNZxRdeGre7TMnfpaGvQCflDylNOAapXOYOnHiLBes0dPP0v7K
	aGWVRA4AnbZmOqMKpAEuJ91eIlzcMo/JuL1tJNQdQ4gEHCgPV9XNIBb44dUaWmcGhWOqcMMYol5
	AdCM4a/4nSW6Hfr0CunBV5C7ouHrxAzh22CMHwfpEzfuR6tU+QUrD2vqcDDpzKU8lP3H7zelkTh
	zrIHmXynigO8WeEEQvwGOiel3azvF85d06obLiHFw4N7FkbJcBs8wQ373jvaZLvLpZ4SDErzQb8
	EmepPGTVv7X330NXRXpN0WYutV5myLRZcqYELjngach70FrCvN4=
X-Google-Smtp-Source: AGHT+IFn5z31FYS8IcjT4GFk37ykLADOix2rBNxjJsJ5tH6aBb/c7DG1gCVBqjXLTaOsJkudFYmnfA==
X-Received: by 2002:a17:907:3e17:b0:ab6:f4e7:52f9 with SMTP id a640c23a62f3a-ab789aed845mr478540766b.25.1738945346463;
        Fri, 07 Feb 2025 08:22:26 -0800 (PST)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com. [209.85.208.51])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab79792121dsm21052166b.124.2025.02.07.08.22.25
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 08:22:25 -0800 (PST)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d442f9d285so8036a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Feb 2025 08:22:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWUTl+owRpGYP0t6lgvKJCqzChZy6OK4yYWNGfL4iT0/dP36bJiTVULr8WvA/fe6JVQ5mgX3Gfp9/sYXqn8WA==@lists.infradead.org
X-Received: by 2002:a50:ee16:0:b0:5dc:ccb4:cb11 with SMTP id
 4fb4d7f45d1cf-5de46901c8dmr116990a12.4.1738945344498; Fri, 07 Feb 2025
 08:22:24 -0800 (PST)
MIME-Version: 1.0
References: <20250128-b4-rkisp-noncoherent-v3-0-baf39c997d2a@gmail.com> <20250128-b4-rkisp-noncoherent-v3-1-baf39c997d2a@gmail.com>
In-Reply-To: <20250128-b4-rkisp-noncoherent-v3-1-baf39c997d2a@gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 7 Feb 2025 17:22:08 +0100
X-Gmail-Original-Message-ID: <CAAFQd5BkbJz4VJOvj8P5gBtbi=VCgsgebw12PnepLj6Qn6C_AQ@mail.gmail.com>
X-Gm-Features: AWEUYZkLRr1JxCvNI8JDDZBOdbLkP21kufM0wZUw4Akj7bxs1aInWlFMBNe_a0o
Message-ID: <CAAFQd5BkbJz4VJOvj8P5gBtbi=VCgsgebw12PnepLj6Qn6C_AQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] media: videobuf2: Fix dmabuf cache sync/flush in dma-contig
To: Mikhail Rudenko <mike.rudenko@gmail.com>, Christoph Hellwig <hch@lst.de>, 
	Robin Murphy <robin.murphy@arm.com>, Hans Verkuil <hverkuil@xs4all.nl>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sergey Senozhatsky <senozhatsky@chromium.org>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_162230_587586_08442542 
X-CRM114-Status: GOOD (  21.28  )
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

T24gVHVlLCBKYW4gMjgsIDIwMjUgYXQgOTozNuKAr1BNIE1pa2hhaWwgUnVkZW5rbyA8bWlrZS5y
dWRlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBXaGVuIHN1cHBvcnQgZm9yIFY0TDJfRkxBR19N
RU1PUllfTk9OX0NPTlNJU1RFTlQgd2FzIHJlbW92ZWQgaW4KPiBjb21taXQgMTI5MTM0ZTU0MTVk
ICgibWVkaWE6IG1lZGlhL3Y0bDI6IHJlbW92ZQo+IFY0TDJfRkxBR19NRU1PUllfTk9OX0NPTlNJ
U1RFTlQgZmxhZyIpLAo+IHZiMl9kY19kbWFidWZfb3BzX3tiZWdpbixlbmR9X2NwdV9hY2Nlc3Mo
KSBmdW5jdGlvbnMgd2VyZSBtYWRlCj4gbm8tb3BzLiBMYXRlciwgd2hlbiBzdXBwb3J0IGZvciBW
NEwyX01FTU9SWV9GTEFHX05PTl9DT0hFUkVOVCB3YXMKPiBpbnRyb2R1Y2VkIGluIGNvbW1pdCBj
MGFjZjljZmVlZTAgKCJtZWRpYTogdmlkZW9idWYyOiBoYW5kbGUKPiBWNEwyX01FTU9SWV9GTEFH
X05PTl9DT0hFUkVOVCBmbGFnIiksIHRoZSBhYm92ZSBmdW5jdGlvbnMgcmVtYWluZWQKPiBuby1v
cHMsIG1ha2luZyBjYWNoZSBtYWludGVuYW5jZSBmb3Igbm9uLWNvaGVyZW50IGRtYWJ1ZnMgYWxs
b2NhdGVkIGJ5Cj4gZG1hLWNvbnRpZyBpbXBvc3NpYmxlLgo+Cj4gRml4IHRoaXMgYnkgcmVpbnRy
b2R1Y2luZyBkbWFfc3luY19zZ3RhYmxlX2Zvcl97Y3B1LGRldmljZX0gYW5kCj4ge2ZsdXNoLGlu
dmFsaWRhdGV9X2tlcm5lbF92bWFwX3JhbmdlIGNhbGxzIHRvCj4gdmIyX2RjX2RtYWJ1Zl9vcHNf
e2JlZ2luLGVuZH1fY3B1X2FjY2VzcygpIGZ1bmN0aW9ucyBmb3Igbm9uLWNvaGVyZW50Cj4gYnVm
ZmVycy4KPgo+IEZpeGVzOiBjMGFjZjljZmVlZTAgKCJtZWRpYTogdmlkZW9idWYyOiBoYW5kbGUg
VjRMMl9NRU1PUllfRkxBR19OT05fQ09IRVJFTlQgZmxhZyIpCj4gQ2M6IHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBNaWtoYWlsIFJ1ZGVua28gPG1pa2UucnVkZW5rb0Bn
bWFpbC5jb20+Cj4gLS0tCj4gIC4uLi9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1k
bWEtY29udGlnLmMgIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMjIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9u
L3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jIGIvZHJpdmVycy9tZWRpYS9jb21tb24v
dmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPiBpbmRleCBiYjBiN2ZhNjdiNTM5YWE3
M2FkNWNjZjNjM2JjMzE4ZTI2ZjhhNGNiLi4xNDZkNzk5N2EwZGE1OTg5ZmIwODFhNmYyOGNlMDY0
MWZlNzI2ZTYzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItZG1hLWNvbnRpZy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9i
dWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPiBAQCAtNDI3LDYgKzQyNywxNyBAQCBzdGF0aWMg
aW50Cj4gIHZiMl9kY19kbWFidWZfb3BzX2JlZ2luX2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYg
KmRidWYsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGRtYV9kYXRh
X2RpcmVjdGlvbiBkaXJlY3Rpb24pCj4gIHsKPiArICAgICAgIHN0cnVjdCB2YjJfZGNfYnVmICpi
dWYgPSBkYnVmLT5wcml2Owo+ICsgICAgICAgc3RydWN0IHNnX3RhYmxlICpzZ3QgPSBidWYtPmRt
YV9zZ3Q7Cj4gKwo+ICsgICAgICAgaWYgKCFidWYtPm5vbl9jb2hlcmVudF9tZW0pCj4gKyAgICAg
ICAgICAgICAgIHJldHVybiAwOwo+ICsKPiArICAgICAgIGlmIChidWYtPnZhZGRyKQo+ICsgICAg
ICAgICAgICAgICBpbnZhbGlkYXRlX2tlcm5lbF92bWFwX3JhbmdlKGJ1Zi0+dmFkZHIsIGJ1Zi0+
c2l6ZSk7Cj4gKwo+ICsgICAgICAgZG1hX3N5bmNfc2d0YWJsZV9mb3JfY3B1KGJ1Zi0+ZGV2LCBz
Z3QsIGJ1Zi0+ZG1hX2Rpcik7Cj4gKwo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+IEBAIC00
MzQsNiArNDQ1LDE3IEBAIHN0YXRpYyBpbnQKPiAgdmIyX2RjX2RtYWJ1Zl9vcHNfZW5kX2NwdV9h
Y2Nlc3Moc3RydWN0IGRtYV9idWYgKmRidWYsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQo+ICB7Cj4gKyAgICAgICBz
dHJ1Y3QgdmIyX2RjX2J1ZiAqYnVmID0gZGJ1Zi0+cHJpdjsKPiArICAgICAgIHN0cnVjdCBzZ190
YWJsZSAqc2d0ID0gYnVmLT5kbWFfc2d0Owo+ICsKPiArICAgICAgIGlmICghYnVmLT5ub25fY29o
ZXJlbnRfbWVtKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gMDsKPiArCj4gKyAgICAgICBpZiAo
YnVmLT52YWRkcikKPiArICAgICAgICAgICAgICAgZmx1c2hfa2VybmVsX3ZtYXBfcmFuZ2UoYnVm
LT52YWRkciwgYnVmLT5zaXplKTsKPiArCj4gKyAgICAgICBkbWFfc3luY19zZ3RhYmxlX2Zvcl9k
ZXZpY2UoYnVmLT5kZXYsIHNndCwgYnVmLT5kbWFfZGlyKTsKPiArCj4gICAgICAgICByZXR1cm4g
MDsKPiAgfQoKSSB0b29rIHNvbWUgdGltZSAob3Zlcil0aGlua2luZyB0aGUga2VybmVsIHZtYXAg
cmFuZ2Ugc3luY2hyb25pemF0aW9uLApiZWNhdXNlIHRoZXNlIGZ1bmN0aW9ucyBjYW4gYmUgY2Fs
bGVkIGJvdGggZnJvbSB0aGUga2VybmVsIHNwYWNlIHVzaW5nCnJlc3BlY3RpdmUgZG1hX2J1Zl8q
KCkga0FQSSBhbmQgYWxzbyBmcm9tIHRoZSB1c2VyIHNwYWNlIHVzaW5nIHRoZQpETUFfQlVGX1NZ
TkMgSU9DVExzLCBzbyB3ZSBjb3VsZCBpbiB0aGVvcnkgaGF2ZSB0aGUgbXVsdGlwbGUKaW52b2Nh
dGlvbnMgcmFjaW5nIHdpdGggZWFjaCBvdGhlciwgYnV0IHRoZW4gSSByZWFsaXplZCB0aGF0IHdl
IGRvbid0CnJlYWxseSBwcm92aWRlIGFueSBndWFyYW50ZWVzIGZvciBjb25jdXJyZW50IHdyaXRl
cyBhbmQgcmVhZHMgZnJvbSB0aGUKQ1BVLCBzbyBJIGJlbGlldmUgdGhpcyBzaG91bGQgd29yayBm
aW5lLiBTb3JyeSBmb3IgdGhlIGRlbGF5LgoKQWNrZWQtYnk6IFRvbWFzeiBGaWdhIDx0ZmlnYUBj
aHJvbWl1bS5vcmc+CgpMZXQgbWUgYWRkIEBDaHJpc3RvcGggSGVsbHdpZyBhbmQgQFJvYmluIE11
cnBoeSBqdXN0IGluIGNhc2UgSSdtIHdyb25nCm9uIHRoYXQsIHRob3VnaC4uLiBIYW5zLCBsZXQn
cyBnaXZlIHRoZW0gc29tZSB0aW1lIHRvIHRha2UgYSBsb29rCmJlZm9yZSBhcHBseWluZyB0aGlz
LgoKQmVzdCByZWdhcmRzLApUb21hc3oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
