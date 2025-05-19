Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D0C6C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 08:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEHalF/QAV+xN5jnmbgzfSDhmsP2vRXh1MDN/3cgYTA=; b=HXCr1oKMXnm3yA
	SJxDKqdzXDXoHQPlt08XjpkSSiHjgy2oAgjUTL1AahKifdeyPyAv33JY1BFhOrbo9bK/G92C9QA05
	frLkQeY+Oflk1JuE8hz7LlpkEHx0HaSPQdD1poCVgpkPYz8CHZ1MvcFg2vkmDVUkbkYLKYdoULsV1
	DHd1hB86PqLCbV8JCTUMAc1e7+Cg7jILElm5wkvGIFzqmY+3CSTTcmo0+tQsh5UaCpMXTDW1xiyzh
	7+vSaS9iInBsnqbSj/RwYcXvfiwHxurR1fHMQolMFDN5D1CvyXc9e/jyHfCDoBVBojU1tQM/ajaE8
	d5ZGLKAW9xNV1eZHw/RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvtf-00000008MDT-3d41;
	Mon, 19 May 2025 08:30:55 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvqa-00000008LoB-2oUA
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 08:27:46 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-708d90aa8f9so36903737b3.3
        for <linux-rockchip@lists.infradead.org>; Mon, 19 May 2025 01:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1747643263; x=1748248063; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4gJVXQZr2DoDhEpIvCDqKVNiXWu/eEJnqtIkEs4RMio=;
        b=1CrwJRzjKGqvGK31aS4e50pzKD55AiiIyGPPN2gIbt7Nz2dSRc1m9N/CqwgaWBN9np
         fCk7PUZsocrB+ezS9qFz1GmuDGdO3JSSISB7o+NBN0WZrGqlkgnLJIwnQVtVw5plY37F
         KyLS2qtSuOBk1dDionweuJKvpMO8aXHriehEpZjYGBA2rbS4wxAsYKnQRTY5ViSeca0g
         CfXdLSLS2dBAJ03qQezKs4au9+dVcEdqKwDqB7Y3iWKXuemp3nPP5F8PG05GRxX8Otkv
         h4Pagj60OE1p9opUKtOmLe40u5tRUiDoiEPgMexmf/f2CKufI0RFldteAlCqsO1hu7oA
         rW5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747643263; x=1748248063;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4gJVXQZr2DoDhEpIvCDqKVNiXWu/eEJnqtIkEs4RMio=;
        b=XcVGtHnTCoCqcxm1/KGTKgNB3fV7LNgV33Z8zJOtksiK07ZMOfgKBux9nR1D9HdqQs
         OZjyCtP3ORRPv15/UPjTNo6OC1SxqniK7KCs7wfXXx1agNVSD+Cz/6Ug6o78I+AfGNh/
         kKZxBDdLIq27cRcdA1mI3C7yUE1CiOFIA9IQ8BAlhlVKYuFtkYim5u+wBWm2qvooU2HG
         mLVxKcaX6a//zKYodYf0Khp44RymIBTsdXThTFTrmnwZGjV26vyGnFXIu9vAz/QtxMXM
         JPXQFvOnLZLPG1Nr0a259frXQ6ejSoG/ylK1JhIpeGb23JEAVoLDfkolUm17G7QJEdRv
         9DZw==
X-Forwarded-Encrypted: i=1; AJvYcCUnJ8FYXf3gUry4LvSqsCAo/67ZuYYxnOJ348CtI18V44ywzVsE0ZEsqmI372KLhXI+UfylCgNYoy0PfTYrRA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzEPQfUFt3oH44R9H4yuTKTNwLOCsR9xSghmqMbqWjUwUwy2sQj
	T2biBhVXhpoqx95Sa1hcgj9NNiDqp2lZPidaqJ//omEucyEP7eE049bOHRukJGAY1PYdaHSWBr/
	+cbXLmgJvvA==
X-Gm-Gg: ASbGnctc2kxOdan91aDSWnw7IiBP+I2XhQPrRNm4mwLfU/KOfS1bCK3aM/HVb8Q1CSV
	0D6LQzosub/yvIKj+9Zc4+qhJpQuhaJuxkXEC1RK7vrVQkrM77Ek/xv9sbZDjrPBt8Mcm/MugI+
	rSDOvEGWAa7fCSeZsNua801uZ0vNKfeq/dlG1ruqLfIxmCvyG6EziiZ/QEGz14IypEN7B93rOQQ
	aQ7mbGClqyqNHChTsrQtV+Yu+6G3nxbFSuzLqzRv9xwFgW4sy2BfJkYgkJVeRYJ2s7IngmlSPaE
	nnE89fWhPzg9ve2cy0inWOV1jZSLY8heGdMuicRzi8mOiWQgQX3RgdhzZVJQy+5LFDkEDzZwQxX
	ackw7iNfC9kXemv65H40=
X-Google-Smtp-Source: AGHT+IFsDU8iZl643p9OTFISOkawWGmY65UGPAKsnVkge3FtH3mhwXz0U8rAokrL0a6ijkXDVAFddw==
X-Received: by 2002:a05:690c:6c82:b0:70a:36b2:8f94 with SMTP id 00721157ae682-70ca7a5047emr173649507b3.18.1747643262718;
        Mon, 19 May 2025 01:27:42 -0700 (PDT)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70cb4471e82sm13802757b3.29.2025.05.19.01.27.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 01:27:42 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e7b962a156cso813055276.0;
        Mon, 19 May 2025 01:27:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUTDiaO2oQ7UqCRgrbGA4SgZ+4cDfGHoYDZzgQZ2YT3DmkPJlVi3cQpIUtYcdQHkb9X2pLUoTcPR2irhiEhCyc=@lists.infradead.org, AJvYcCX2FNEwUX1o35gWHehxul/WMW4RiFoRU0XHkPJtk1rEHiVq2BxDEqQlZLNUXKYH4UxC8lxc8Mweg097uXM2CgU5@lists.infradead.org
X-Received: by 2002:a05:6902:e02:b0:e7b:96e0:68e0 with SMTP id
 3f1490d57ef6-e7b96e06d2fmr6708556276.13.1747643262000; Mon, 19 May 2025
 01:27:42 -0700 (PDT)
MIME-Version: 1.0
References: <20250516-6-10-rocket-v3-0-7051ac9225db@tomeuvizoso.net>
 <20250516-6-10-rocket-v3-2-7051ac9225db@tomeuvizoso.net> <4bd79c88-7da5-4bf0-9300-cfdb296c8919@kernel.org>
In-Reply-To: <4bd79c88-7da5-4bf0-9300-cfdb296c8919@kernel.org>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Mon, 19 May 2025 10:27:30 +0200
X-Gmail-Original-Message-ID: <CAAObsKDsO=5uK3BEn6BOgatb+y73jc-Se6mmSbhwG9P_1nVtwg@mail.gmail.com>
X-Gm-Features: AX0GCFuGQeY3CKRDKxmbkhGEJEzp8Ivknwdq0OVtRXBXcahkrM5jAa3oB7F__bY
Message-ID: <CAAObsKDsO=5uK3BEn6BOgatb+y73jc-Se6mmSbhwG9P_1nVtwg@mail.gmail.com>
Subject: Re: [PATCH v3 02/10] arm64: dts: rockchip: Add nodes for NPU and its
 MMU to rk3588s
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_012744_901669_4B924EB3 
X-CRM114-Status: GOOD (  23.13  )
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

T24gTW9uLCBNYXkgMTksIDIwMjUgYXQgODowOOKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAxNi8wNS8yMDI1IDE4OjUzLCBUb21ldSBWaXpv
c28gd3JvdGU6Cj4gPiBTZWUgQ2hhcHRlciAzNiAiUktOTiIgZnJvbSB0aGUgUkszNTg4IFRSTSAo
UGFydCAxKS4KPiA+Cj4gPiBUaGlzIGlzIGEgZGVyaXZhdGl2ZSBvZiBOVklESUEncyBOVkRMQSwg
YnV0IHdpdGggaXRzIG93biBmcm9udC1lbmQKPiA+IHByb2Nlc3Nvci4KPiA+Cj4gPiBUaGUgSVAg
aXMgZGl2aWRlZCBpbiB0aHJlZSBjb3JlcywgcHJvZ3JhbW1lZCBpbmRlcGVuZGVudGx5LiBUaGUg
Zmlyc3QKPiA+IGNvcmUgdGhvdWdoIGlzIHNwZWNpYWwsIHJlcXVpcmluZyB0byBiZSBwb3dlcmVk
IG9uIGJlZm9yZSBhbnkgb2YgdGhlCj4gPiBvdGhlcnMgY2FuIGJlIHVzZWQuCj4gPgo+ID4gVGhl
IElPTU1VIG9mIHRoZSBmaXJzdCBjb3JlIGlzIGFsc28gc3BlY2lhbCBpbiB0aGF0IGl0IGhhcyB0
d28gc3VidW5pdHMKPiA+IChyZWFkL3dyaXRlPykgdGhhdCBuZWVkIHRvIGJlIHByb2dyYW1tZWQg
aW4gc3luYy4KPiA+Cj4gPiB2MjoKPiA+IC0gSGF2ZSBvbmUgZGV2aWNlIGZvciBlYWNoIE5QVSBj
b3JlIChTZWJhc3RpYW4gUmVpY2hlbCkKPiA+IC0gSGF2ZSBvbmUgZGV2aWNlIGZvciBlYWNoIElP
TU1VIChTZWJhc3RpYW4gUmVpY2hlbCkKPiA+IC0gQ29ycmVjdGx5IHNvcnQgbm9kZXMgKERpZWRl
cmlrIGRlIEhhYXMpCj4gPiAtIEFkZCByb2NrY2hpcCxpb21tdSBjb21wYXRpYmxlIHRvIElPTU1V
IG5vZGVzIChTZWJhc3RpYW4gUmVpY2hlbCkKPiA+Cj4gPiB2MzoKPiA+IC0gQWRhcHQgdG8gYSBz
cGxpdCBvZiB0aGUgcmVnaXN0ZXIgYmxvY2sgaW4gdGhlIERUIGJpbmRpbmdzIChOaWNvbGFzCj4g
PiAgIEZyYXR0YXJvbGkpCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21l
dUB0b21ldXZpem9zby5uZXQ+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1iYXNlLmR0c2kgfCA4NSArKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+
ICAxIGZpbGUgY2hhbmdlZCwgODUgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKPiA+IGluZGV4IDFlMThhZDkzYmEw
ZWJkYWQzMTY0MmI4OGZmMGY5MGVmNGU4ZGM3NmYuLjdiOTYxYWI4MzgyMTJmYWQ4ZTRhNzAzOTBm
ZGM5MTdhODI4NDMzYTkgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1iYXNlLmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LWJhc2UuZHRzaQo+ID4gQEAgLTExMzYsNiArMTEzNiw5MSBAQCBwb3dlci1kb21h
aW5AUkszNTg4X1BEX1NETU1DIHsKPiA+ICAgICAgICAgICAgICAgfTsKPiA+ICAgICAgIH07Cj4g
Pgo+ID4gKyAgICAgcmtubl9jb3JlX3RvcDogbnB1LWNvcmVAZmRhYjAwMDAgewo+Cj4gbnB1QAo+
Cj4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LXJrbm4tY29y
ZS10b3AiLCAicm9ja2NoaXAscmtubi1jb3JlLXRvcCI7Cj4KPiBZb3UgbmV2ZXIgdGVzdGVkIHRo
aXMuIFRlc3QgYmVmb3JlIHNlbmRpbmcgaW5zdGVhZCBvZiByZWx5aW5nIG9uIHVzIG9yCj4gYWZ0
ZXIgbWVyZ2luZy4KCkNhbiB5b3UgcGxlYXNlIGV4dGVuZCBvbiB0aGlzPyBJIGhhdmUgdGVzdGVk
IHRoaXMgc2VyaWVzIGJlZm9yZQpzZW5kaW5nIGFuZCBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB5
b3UgbWVhbiBoZXJlLgoKVGhhbmtzLAoKVG9tZXUKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
