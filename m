Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58F51C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 10:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EH7FvqOZx+cemDpm9Jl6wIzORl1exnhGqeaBAMtsBXY=; b=WCRMcWllphyEDt
	vYzCgR+16vzIw9raIUtlLX7LAFqWOsC2fV8q/DVKutfgAY86A9TVicvxsyWbT99tpRp7qRb4mj6vI
	yYXQBru0aAdWUsI4KdaFlSM2Hkl0YGDAZ8K7r1HLinV6Ko+Vqs67d37rUQwZdHWARwr44kXmiHdsO
	HMT5bl8pi9ck9oEvFT90g7ssZnOThvkCXrrSQka7Yrk7Rh8tNdaluYIwkaPdHhob2/mWlAUX/518I
	Gj/Gwa0KbxaGJEqj6jS1okVZ9/pzKPOkmpe8iu2OFVkkfi6GLwI7qCfRZnA2mr7lUp8bvaX8ky408
	IUKyw7kcpJEZBEcu91dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGxR9-00000008k33-1I2k;
	Mon, 19 May 2025 10:09:35 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGxOB-00000008jUf-2S8H
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 10:06:32 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-e7ba2583e10so612567276.0
        for <linux-rockchip@lists.infradead.org>; Mon, 19 May 2025 03:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1747649190; x=1748253990; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LXJkgQZKayvXnZ1xyIN8JI1rxZodq0P8Qo6H5Ts8U1A=;
        b=ibQtn0bP1AGoqZ7xec9oBD5IR3GtLJP4TbFRvVQg4h6w/EPLyAlmstn6rEohindzUa
         X400EJ4kfi9OBvVnEOTrKzZbq0DmKRR3qY4zBZ6MOyOxSlHpKnG/Rq1URnrsnP8kuO7M
         jK0za0Hh/3DHxq9PPxdDp7G9m+yIO7sosLeDCO23OEHUIJqzmYU61SrIEUZuEuLUPmOx
         CCrVGBNzhkCc4hXPAYe6GKXHVYb+0EbsmdNMKEGRZ5gkCpW4Mgi09Q03BcRfb3BVEkeR
         zKtVvLXgXmVYxG9CdntQDdikomscApFKkuw1PWTef3TXJ2j+PVUs1kePI7rYgA9YGXV2
         S1XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747649190; x=1748253990;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LXJkgQZKayvXnZ1xyIN8JI1rxZodq0P8Qo6H5Ts8U1A=;
        b=k/CB742p3wvBefBa4iprfAhJxtY2+lnoogE9yfSU42cB1WYUSwoYXEq8+xJL7GCU3H
         n+DtBlHC/T1Zc96Ur0ggUw3ypMjfxp24XO9kU7H2hQpOarhx8c800deCRHZogBj4/QWr
         qvUAD2obaqJauqoGubcWFMFXdtQ4+bGJAj+7KDkaHvy4IiQ9sdhkE/e/cifvQnAq1BO5
         EgLghqvq08jpVIa6+/oOahxWL1JNEeRD/pwGe6pId4DewxYT4pcWg0TolYqobj5ccJlH
         bOhemgZYc1ra+dd479E9T25FRZTDZ8coMUJSmK/UjaWyUxcimww1JWQv9A3UuTmG8PKr
         CN+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVt+T9iJey/JMvTFmFo4ZCXRR1AVrbKlt4Qp4MWcoa0PXd1hXtHOnRjRez4ujgOV8anyUwYvM6wQXO9ktBziw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxbQVXMmMLuTcpG4BeWDOgwWGDLQKkDuL6hX9zo+607LwnLts1R
	caxqhFzEkf5MPczfF3JJNMuri3ycDwUCb27q/kh4Lj1EIMZEGLUnxCa/5uv3zPpDmpk=
X-Gm-Gg: ASbGncukGfvqoo2Z4R7ZVq2W0f27lEQQe335PwFUkBUu9mxJdB0ZPV6dUe8TEXOfr5Z
	wiLYeyofLPc0JmhndY8pk3ZYrZduu/gJ5BWtfyb2CWj8tM7xt0rC11fssLlL9MkFUfBgUEWrga3
	lZFr4Kpr6ucEZgjnHslF5lzyBY5iiMIioAf/KZqEUBlA9eCwpcRmD/2ELl48Pmh+eQGGj6RWHHJ
	twGL9Lykp0+6lLSndoAqBN1PfY0R2z+9MdiYJ2pauuwmag1H443S9uZkfIGLnspE1xygWzfQU8a
	tEN5pIrG0MdEo5DXgZirNIJ6Lp1aLzzVwfrtOhFvcTn+F6J1Mf9pmEJVMp8POjNQqI4ZzQOPu9L
	E0RFVZuxSABejSJkoCLer2YHa8TdWDw==
X-Google-Smtp-Source: AGHT+IGaV8GJxar5o/h5fF/NIouZ/AP7khVojbTNbI+vh4vxKtCqdP6mSrEHxQjm3XrAa4qOWtjI0w==
X-Received: by 2002:a05:690c:630a:b0:70c:a41c:7040 with SMTP id 00721157ae682-70ca88e2652mr161614277b3.3.1747649190249;
        Mon, 19 May 2025 03:06:30 -0700 (PDT)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com. [209.85.219.178])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70ca854844bsm16883437b3.120.2025.05.19.03.06.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 03:06:29 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e7ba2583e10so612551276.0;
        Mon, 19 May 2025 03:06:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWbYguSszvnEWKOpl/Bj26WevSCicMsKySYfd/G6WzpCNeFIrDAIIfvrqlMazbQ9rm9JHcVjZ85rJA7RNgGr6DW@lists.infradead.org, AJvYcCXZ4KETOeHmyKVFuXoJItbmrLVmQp6B1EqXklwI1Q+lo9LIXyf8V3tIKb9tCsW8rhKRb/rQKOM0Sdzpdxn3Q0s=@lists.infradead.org
X-Received: by 2002:a05:6902:e12:b0:e78:f538:1c54 with SMTP id
 3f1490d57ef6-e7b4f7de9a7mr24227419276.4.1747649189461; Mon, 19 May 2025
 03:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <20250516-6-10-rocket-v3-0-7051ac9225db@tomeuvizoso.net>
 <20250516-6-10-rocket-v3-2-7051ac9225db@tomeuvizoso.net> <4bd79c88-7da5-4bf0-9300-cfdb296c8919@kernel.org>
 <CAAObsKDsO=5uK3BEn6BOgatb+y73jc-Se6mmSbhwG9P_1nVtwg@mail.gmail.com> <f8cf2c4e-0ae2-4799-bda8-654b4f515846@kernel.org>
In-Reply-To: <f8cf2c4e-0ae2-4799-bda8-654b4f515846@kernel.org>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Mon, 19 May 2025 12:06:18 +0200
X-Gmail-Original-Message-ID: <CAAObsKD_KUA29-FFGkCDifYJjaNnAbh9uZn25pWmVETSm10CTQ@mail.gmail.com>
X-Gm-Features: AX0GCFuVYFfDeK4R2yep7GIQJ3UmyiYoSLOyKg2oKJC5rUcszB1QB3rVi5LfFuQ
Message-ID: <CAAObsKD_KUA29-FFGkCDifYJjaNnAbh9uZn25pWmVETSm10CTQ@mail.gmail.com>
Subject: Re: [PATCH v3 02/10] arm64: dts: rockchip: Add nodes for NPU and its
 MMU to rk3588s
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_030631_618336_D095A6B1 
X-CRM114-Status: GOOD (  25.38  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBNYXkgMTksIDIwMjUgYXQgMTA6NDfigK9BTSBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gMTkvMDUvMjAyNSAxMDoyNywgVG9tZXUgVml6
b3NvIHdyb3RlOgo+ID4gT24gTW9uLCBNYXkgMTksIDIwMjUgYXQgODowOOKAr0FNIEtyenlzenRv
ZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAxNi8wNS8y
MDI1IDE4OjUzLCBUb21ldSBWaXpvc28gd3JvdGU6Cj4gPj4+IFNlZSBDaGFwdGVyIDM2ICJSS05O
IiBmcm9tIHRoZSBSSzM1ODggVFJNIChQYXJ0IDEpLgo+ID4+Pgo+ID4+PiBUaGlzIGlzIGEgZGVy
aXZhdGl2ZSBvZiBOVklESUEncyBOVkRMQSwgYnV0IHdpdGggaXRzIG93biBmcm9udC1lbmQKPiA+
Pj4gcHJvY2Vzc29yLgo+ID4+Pgo+ID4+PiBUaGUgSVAgaXMgZGl2aWRlZCBpbiB0aHJlZSBjb3Jl
cywgcHJvZ3JhbW1lZCBpbmRlcGVuZGVudGx5LiBUaGUgZmlyc3QKPiA+Pj4gY29yZSB0aG91Z2gg
aXMgc3BlY2lhbCwgcmVxdWlyaW5nIHRvIGJlIHBvd2VyZWQgb24gYmVmb3JlIGFueSBvZiB0aGUK
PiA+Pj4gb3RoZXJzIGNhbiBiZSB1c2VkLgo+ID4+Pgo+ID4+PiBUaGUgSU9NTVUgb2YgdGhlIGZp
cnN0IGNvcmUgaXMgYWxzbyBzcGVjaWFsIGluIHRoYXQgaXQgaGFzIHR3byBzdWJ1bml0cwo+ID4+
PiAocmVhZC93cml0ZT8pIHRoYXQgbmVlZCB0byBiZSBwcm9ncmFtbWVkIGluIHN5bmMuCj4gPj4+
Cj4gPj4+IHYyOgo+ID4+PiAtIEhhdmUgb25lIGRldmljZSBmb3IgZWFjaCBOUFUgY29yZSAoU2Vi
YXN0aWFuIFJlaWNoZWwpCj4gPj4+IC0gSGF2ZSBvbmUgZGV2aWNlIGZvciBlYWNoIElPTU1VIChT
ZWJhc3RpYW4gUmVpY2hlbCkKPiA+Pj4gLSBDb3JyZWN0bHkgc29ydCBub2RlcyAoRGllZGVyaWsg
ZGUgSGFhcykKPiA+Pj4gLSBBZGQgcm9ja2NoaXAsaW9tbXUgY29tcGF0aWJsZSB0byBJT01NVSBu
b2RlcyAoU2ViYXN0aWFuIFJlaWNoZWwpCj4gPj4+Cj4gPj4+IHYzOgo+ID4+PiAtIEFkYXB0IHRv
IGEgc3BsaXQgb2YgdGhlIHJlZ2lzdGVyIGJsb2NrIGluIHRoZSBEVCBiaW5kaW5ncyAoTmljb2xh
cwo+ID4+PiAgIEZyYXR0YXJvbGkpCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZp
em9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0Pgo+ID4+PiAtLS0KPiA+Pj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSB8IDg1ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ID4+PiAgMSBmaWxlIGNoYW5nZWQsIDg1IGluc2VydGlvbnMoKykKPiA+Pj4K
PiA+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJh
c2UuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQo+
ID4+PiBpbmRleCAxZTE4YWQ5M2JhMGViZGFkMzE2NDJiODhmZjBmOTBlZjRlOGRjNzZmLi43Yjk2
MWFiODM4MjEyZmFkOGU0YTcwMzkwZmRjOTE3YTgyODQzM2E5IDEwMDY0NAo+ID4+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKPiA+Pj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCj4gPj4+IEBAIC0x
MTM2LDYgKzExMzYsOTEgQEAgcG93ZXItZG9tYWluQFJLMzU4OF9QRF9TRE1NQyB7Cj4gPj4+ICAg
ICAgICAgICAgICAgfTsKPiA+Pj4gICAgICAgfTsKPiA+Pj4KPiA+Pj4gKyAgICAgcmtubl9jb3Jl
X3RvcDogbnB1LWNvcmVAZmRhYjAwMDAgewo+ID4+Cj4gPj4gbnB1QAo+ID4+Cj4gPj4+ICsgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLXRvcCIsICJy
b2NrY2hpcCxya25uLWNvcmUtdG9wIjsKPiA+Pgo+ID4+IFlvdSBuZXZlciB0ZXN0ZWQgdGhpcy4g
VGVzdCBiZWZvcmUgc2VuZGluZyBpbnN0ZWFkIG9mIHJlbHlpbmcgb24gdXMgb3IKPiA+PiBhZnRl
ciBtZXJnaW5nLgo+ID4KPiA+IENhbiB5b3UgcGxlYXNlIGV4dGVuZCBvbiB0aGlzPyBJIGhhdmUg
dGVzdGVkIHRoaXMgc2VyaWVzIGJlZm9yZQo+ID4gc2VuZGluZyBhbmQgSSBkb24ndCB1bmRlcnN0
YW5kIHdoYXQgeW91IG1lYW4gaGVyZS4KPgo+IEkgbWVhbiBleGFjdGx5IHRoYXQ6IGl0IHdhcyBu
b3QgdGVzdGVkLCBiZWNhdXNlIHdhcm5pbmdzIGFyZSBjbGVhcmx5Cj4gdmlzaWJsZS9leHBlY3Rl
ZC4gSSBhbHNvIGZvdW5kIG5vdyBSb2IncyByZXBvcnQgd2hpY2ggZXZlbiBzaG93cyB5b3UgdGhl
Cj4gd2FybmluZ3MsIHNvIGhvdyBjb21lIHlvdSBzdGlsbCBjbGFpbSB0aGlzIHdhcyB0ZXN0ZWQ/
CgpBaCB5ZXMsIEknbSB3b3JraW5nIG9uIHRob3NlIHdhcm5pbmdzLiBJIHVuZGVyc3Rvb2QgeW91
IGFzIHNheWluZyB0aGF0CnRoZSBjb2RlIGhhZG4ndCBiZWVuIHJ1biBhbmQgdGVzdGVkIHRoYXQg
aXQgd29ya3MgY29ycmVjdGx5IChJIGRvIGhhdmUKYSB0ZXN0IHN1aXRlIHRoYXQgSSBydW4gYXMg
cGFydCBvZiBteSB0ZXN0aW5nKS4KClJlZ2FyZHMsCgpUb21ldQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
