Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FBC2C5AD49
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 14:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PL6e2s8cV8nCDMMQqGzdF6N7QuBmfXoQTv15LT6FN0E=; b=2axiQRM26VdTtM
	S/htcum+Ch240xTLqvgANfVENh1thVK9Y+k+Y38zvP8Vl+gJjlCZNkmMYI99Yqcl/Ez1YIzGw/jJD
	uU3XYLbiEz0riihbKy65rxVhpoXBTc5oCs+Y68Ln8jzx5u9bmyVc6p6k6WgRf1W+nNSrKEhSmVK3p
	vBeVQwY+eTQ66Lrp/g81E+cbM00jlMrgj4dTaCcffIAlPMHEinguf/yjfbwxnyNvKQF0lnteC9Wx+
	brghIB1wh8XN12mksJSDCGio4ln6ML5gEdCIYx7s8susPuXMCym8LWRvtYiw/NpPGz409yASnr2w2
	sPfzeXOY6fCzbAisIgYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHNx-0000000DJP6-2VTO;
	Wed, 28 May 2025 14:04:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKH2k-0000000DGfe-11mS;
	Wed, 28 May 2025 13:42:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BC11D4AC08;
	Wed, 28 May 2025 13:42:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EF02C4CEF6;
	Wed, 28 May 2025 13:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748439725;
	bh=V9S/2REy6SRPwlWHL+UjOecCAm58nBM9YBmNFi5Tywo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=GNsjXw9M9L1DpZv3jViNj4XkRdb+mXI+2m/G47jUDBV7WxLPvUEubGj+1ixOIJqRZ
	 e717/UmjcPxGcIwM1BREjJHjlHf7DQ6xXKLJDrFl1tj04VPf1Nl1KOdgCgSbhZFqe1
	 fB4uuTK4326ar1JEQv1u6vI97cf23A7RHdJvMGc4fpP8miZY3I2LE258OtWM74XvuF
	 uyjjxH7Jkv2eBczrYAMXiiQ4xzeMUCcmt8tKkGRjgdQl+plEZu+sAUbi3CzKXza/g/
	 qkqGVbbTWmfb3tPdTBHScCSnX5dqhvmCdvqDtXY9/jBXm1ah6dywidLzlVPvpGBgkS
	 H/v7sUXokTZ5Q==
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ad1b94382b8so768994466b.0;
        Wed, 28 May 2025 06:42:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUHHQeNl9SrOpRRUCiNNrP5nbdxueOnMxfw7H4E+0I/OG1c87TLGKY+3Rbz8MeS0esvMlC5E81jmXKDgro0BhY=@lists.infradead.org, AJvYcCWV4B1eZGiqN+b1ECyIs8BQCVylObm2WMWc4gfpmGAUwvpFmdFF7j8NCLPdzlAW2v2jzwFQfAcT3IjU6Ex+VCTd@lists.infradead.org
X-Gm-Message-State: AOJu0YwEalSXv8GFMY8486LkMhBmfhi6yVVkfANgM8vkSTr7Fu6we7Ue
	4jGBj9bNAw+mqN5z+BRoQ3Aazyx+GgaDmWEm7LkXmaP52d3+toVrxR8H9xai9b28EcJ2KJuCJJN
	01WtokZjNZNMbcja7j6QkTAFE48w9nQ==
X-Google-Smtp-Source: AGHT+IF33pDJOIkUnFeeemo7C8vEsrRKhSwUSbgBJjMPDXVeNtNZPzFqXBOHGol2WTjwYaKgOgXZo2D8V9wI8E6hrhc=
X-Received: by 2002:a17:907:7f09:b0:ad5:23e3:48b6 with SMTP id
 a640c23a62f3a-ad85b2b586fmr1522153166b.45.1748439724013; Wed, 28 May 2025
 06:42:04 -0700 (PDT)
MIME-Version: 1.0
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net> <20250520-6-10-rocket-v5-1-18c9ca0fcb3c@tomeuvizoso.net>
In-Reply-To: <20250520-6-10-rocket-v5-1-18c9ca0fcb3c@tomeuvizoso.net>
From: Rob Herring <robh@kernel.org>
Date: Wed, 28 May 2025 08:41:51 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
X-Gm-Features: AX0GCFtEoojAQ2L7InqgVIis2qLVvXMe-zX4FDkooFBAAdsDZZRxWtAdT4YSjTY
Message-ID: <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
Subject: Re: [PATCH v5 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_064206_333935_B7E02698 
X-CRM114-Status: GOOD (  24.67  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBNYXkgMjAsIDIwMjUgYXQgNToyN+KAr0FNIFRvbWV1IFZpem9zbyA8dG9tZXVAdG9t
ZXV2aXpvc28ubmV0PiB3cm90ZToKPgo+IEFkZCB0aGUgYmluZGluZ3MgZm9yIHRoZSBOZXVyYWwg
UHJvY2Vzc2luZyBVbml0IElQIGZyb20gUm9ja2NoaXAuCj4KPiB2MjoKPiAtIEFkYXB0IHRvIG5l
dyBub2RlIHN0cnVjdHVyZSAob25lIG5vZGUgcGVyIGNvcmUsIGVhY2ggd2l0aCBpdHMgb3duCj4g
ICBJT01NVSkKPiAtIFNldmVyYWwgbWlzYy4gZml4ZXMgZnJvbSBTZWJhc3RpYW4gUmVpY2hlbAo+
Cj4gdjM6Cj4gLSBTcGxpdCByZWdpc3RlciBibG9jayBpbiBpdHMgY29uc3RpdHVlbnQgc3ViYmxv
Y2tzLCBhbmQgb25seSByZXF1aXJlCj4gICB0aGUgb25lcyB0aGF0IHRoZSBrZXJuZWwgd291bGQg
ZXZlciB1c2UgKE5pY29sYXMgRnJhdHRhcm9saSkKPiAtIEdyb3VwIHN1cHBsaWVzIChSb2IgSGVy
cmluZykKPiAtIEV4cGxhaW4gdGhlIHdheSBpbiB3aGljaCB0aGUgdG9wIGNvcmUgaXMgc3BlY2lh
bCAoUm9iIEhlcnJpbmcpCj4KPiB2NDoKPiAtIENoYW5nZSByZXF1aXJlZCBub2RlIG5hbWUgdG8g
bnB1QCAoUm9iIEhlcnJpbmcgYW5kIEtyenlzenRvZiBLb3psb3dza2kpCj4gLSBSZW1vdmUgdW5u
ZWVkZWQgaXRlbXM6IChLcnp5c3p0b2YgS296bG93c2tpKQo+IC0gRml4IHVzZSBvZiBtaW5JdGVt
cy9tYXhJdGVtcyAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiAtIEFkZCByZWctbmFtZXMgdG8gbGlz
dCBvZiByZXF1aXJlZCBwcm9wZXJ0aWVzIChLcnp5c3p0b2YgS296bG93c2tpKQo+IC0gRml4IGV4
YW1wbGUgKEtyenlzenRvZiBLb3psb3dza2kpCj4KPiB2NToKPiAtIFJlbmFtZSBmaWxlIHRvIHJv
Y2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiAtIFN0
cmVhbWxpbmUgY29tcGF0aWJsZSBwcm9wZXJ0eSAoS3J6eXN6dG9mIEtvemxvd3NraSkKPgo+IFNp
Z25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJv
cmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28u
bmV0Pgo+IC0tLQo+ICAuLi4vYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUu
eWFtbCAgICB8IDE0NyArKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE0
NyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFt
bAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMC4uOWViNDI2MzY3YWZjYmMwM2MzODdkNDNjNGI4MjUwY2RkMWI5ZWU4
Ngo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbAo+IEBAIC0wLDAgKzEsMTQ3IEBA
Cj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xh
dXNlKQo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCMKPiArJHNjaGVtYTogaHR0
cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gKwo+ICt0aXRsZTog
TmV1cmFsIFByb2Nlc3NpbmcgVW5pdCBJUCBmcm9tIFJvY2tjaGlwCj4gKwo+ICttYWludGFpbmVy
czoKPiArICAtIFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0Pgo+ICsKPiArZGVz
Y3JpcHRpb246Cj4gKyAgUm9ja2NoaXAgSVAgZm9yIGFjY2VsZXJhdGluZyBpbmZlcmVuY2Ugb2Yg
bmV1cmFsIG5ldHdvcmtzLCBiYXNlZCBvbiBOVklESUEncwo+ICsgIG9wZW4gc291cmNlIE5WRExB
IElQLgo+ICsKPiArICBUaGVyZSBpcyB0byBiZSBhIG5vZGUgcGVyIGVhY2ggY29yZSBpbiB0aGUg
TlBVLiBJbiBSb2NrY2hpcCdzIGRlc2lnbiB0aGVyZQo+ICsgIHdpbGwgYmUgb25lIGNvcmUgdGhh
dCBpcyBzcGVjaWFsIGFuZCBuZWVkcyB0byBiZSBwb3dlcmVkIG9uIGJlZm9yZSBhbnkgb2YgdGhl
Cj4gKyAgb3RoZXIgY29yZXMgY2FuIGJlIHVzZWQuIFRoaXMgc3BlY2lhbCBjb3JlIGlzIGNhbGxl
ZCB0aGUgdG9wIGNvcmUgYW5kIHNob3VsZAo+ICsgIGhhdmUgdGhlIGNvbXBhdGlibGUgc3RyaW5n
IHRoYXQgY29ycmVzcG9uZHMgdG8gdG9wIGNvcmVzLgoKSXMgdGhpcyByZWFsbHkgYSBkaXN0aW5j
dGlvbiBpbiB0aGUgaC93PyBJZiB5b3UgY2hhbmdlIHdoaWNoIGNvcmUgaXMKdGhlIHRvcCBvbmUg
aW4gdGhlIERULCBkb2VzIGl0IHN0aWxsIHdvcms/Cgo+ICsKPiArcHJvcGVydGllczoKPiArICAk
bm9kZW5hbWU6Cj4gKyAgICBwYXR0ZXJuOiAnXm5wdUBbYS1mMC05XSskJwo+ICsKPiArICBjb21w
YXRpYmxlOgo+ICsgICAgZW51bToKPiArICAgICAgLSByb2NrY2hpcCxyazM1ODgtcmtubi1jb3Jl
LXRvcAo+ICsgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUKPiArCj4gKyAgcmVnOgo+
ICsgICAgbWF4SXRlbXM6IDMKPiArCj4gKyAgcmVnLW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAg
ICAgIC0gY29uc3Q6IHBjCj4gKyAgICAgIC0gY29uc3Q6IGNuYQo+ICsgICAgICAtIGNvbnN0OiBj
b3JlCj4gKwo+ICsgIGNsb2NrczoKPiArICAgIG1pbkl0ZW1zOiAyCj4gKyAgICBtYXhJdGVtczog
NAo+ICsKPiArICBjbG9jay1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBh
Y2xrCj4gKyAgICAgIC0gY29uc3Q6IGhjbGsKPiArICAgICAgLSBjb25zdDogbnB1Cj4gKyAgICAg
IC0gY29uc3Q6IHBjbGsKPiArICAgIG1pbkl0ZW1zOiAyCgpJdCBpcyBvZGQgdGhhdCB0aGUgbm9u
LXRvcCBjb3JlcyBvbmx5IGhhdmUgYnVzIGNsb2NrcyBhbmQgbm8gbW9kdWxlCmNsb2NrLiBCdXQg
YmFzZWQgb24gdGhlIGNsb2NrIG5hbWVzLCBJJ20gZ3Vlc3NpbmcgdGhlIGFjbGsvaGNsayBhcmUK
bm90IHNoYXJlZCwgYnV0IHRoZSBucHUgYW5kIHBjbGsgYXJlIHNoYXJlZC4gU2luY2UgeW91IG1h
a2UgdGhlIHRvcApjb3JlIHByb2JlIGZpcnN0LCB0aGVuIGl0IHdpbGwgZW5hYmxlIHRoZSBzaGFy
ZWQgY2xvY2tzIGFuZCB0aGUKbm9uLXRvcCBjb3JlcyBkb24ndCBoYXZlIHRvIHdvcnJ5IGFib3V0
IHRoZW0uIElmIHNvLCB0aGF0IGlzIHdyb25nIGFzCml0IGlzIGxldHRpbmcgdGhlIHNvZnR3YXJl
IGRlc2lnbiBkZWZpbmUgdGhlIGJpbmRpbmdzLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
