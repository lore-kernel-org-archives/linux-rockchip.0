Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB67AC83F20
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 17:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cChIuNp/ViKlrK19D65zvBOJ31VZO/5JhakYg3lSJaE=; b=KrOaGUis88K+Rc
	JA0WP4v9WffeWAMKmDwSWqM3xTcFqH1WPVtK/SnnCoZZXGWEQjgJ0SBZjbN1w0xkSbwMoIOMFzOs2
	IICccf31ihSqoRN5E77wJTTg2mB8wIDq//x5N0sTE8z5O4UfqgnV+zwU2UNnWc8+890sq86E9x2K5
	72p4LuyAEPAbKGooEU1VhMWWxh/YfuHHz18xDbCXUNuW1dylGVGb9AOI1GM7BjV5jovE4L8ZUsZuh
	KB2BX6ZHcf9ZO6l0fH3eDzu5cpCLzCk0PYa+4s0vm07FTCi+sm2djdshvfjRbL6FIVmx52I6/zNRg
	noTnQFZbfZc0EHOcVAcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaHOl-0000000FNsf-3sbC;
	Fri, 11 Jul 2025 17:18:59 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaGsr-0000000FKQV-1Gsm
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Jul 2025 16:46:03 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-e8187601f85so2093525276.2
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 09:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1752252360; x=1752857160; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KVqtR2y37+fGKASYTrCFwyYcRTeea2/g0YbtiZzMR3k=;
        b=BcECeeox9Jh5YwObZThyGJVThzVgbmesPS16A4xQ3t3h93xW01CgsEIcNh8ugBpWH/
         FPYZ/x6CoYaP+1GtKi6xNttzH0OJ86YzAfNp6lcDiI2lxRtHfYU/Iye5s+lQfcW2fbqo
         Lkndcp0HGSVoA1FBuG4HWSj1ZEYi8Jd2bMh3iUjg+4wdujnpYLEgKhgetNoDYO2YJAse
         DlMX0V6rKPSbzj4IGZPoYcggffu82A7gW1j0kSAYJLbJZpeJHh9nZqUpUwF9+9K4REgy
         SBmy8eVNCSlw0dHCkPoN0ap0ubUxmcxAEykoB/sh6BTLplP6gMbIX8clYWtx50V9XRkz
         sKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752252360; x=1752857160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KVqtR2y37+fGKASYTrCFwyYcRTeea2/g0YbtiZzMR3k=;
        b=ZslsItOybMRVSM2fNvdhsVnXYc9qgQr+1kkTFfwCSLApQYS6s+FJNw5M0QBL7wSK4A
         QwLHcUyqFZl8vFI+1Xr7Du8qaINLzSzGmiMUSLAT3PXW60eIGy6Uh7oITXL+4PrmHe4z
         Cr3eNnwQXylS8ojMsOIHCsCGP2HTT1y/6kyX0tIcuCA+aFHtslAu5gT9jeRzwXg1yQ3p
         sfkpYeNNwLmxkVNgO2k23xFcSzWZ3je1Id3s2YEEyIiy1NCav+DM9JGgRT2UShdCtFbD
         cDH/nrCz8q6h+XxWHclzdrYK5JAI6zGdX/I/OSxka9Fmf8e2YTm84+5E97PMiyL6UZ2J
         eTbg==
X-Forwarded-Encrypted: i=1; AJvYcCX/sh05y1IpuQxV/JrzamnBT0Zd6T3pMjesx2ZOT9TiQtzt/wmSJVkADVZQz8zKeMgUvqV499pk3OxaAwCxYw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwmDIu2VR6b5bRDJaVEUlUR58fqd8+3W2uHyke22Wy8VStu6iSJ
	tuJ1RG0qMxi2uNn3Ury4KUb89rwWDU+Gx/TeFtEF4t0AjwmELDdH9BQ+Y3AbqGZ0FfuHsZwuTDm
	2yoA05Tb4HQ==
X-Gm-Gg: ASbGncv19k7tDq+tvUlHESeAsxBRoPlnCpXJPjPLXXmFvA1pwfGbgk/1xNw8j+2GjPk
	e55jARRLDpz8pWbSsV/VWc5KM/Bkt2WKAKsvnRKlaLnrNnEeTiiiXVvcJTJTLVnNNqu+nWfUVwP
	ujUkt0jS0eOW6hGyiMMMyYq/Vm8yU386m40HiKU5lkvYg3DFsnvwelwuEO80IgAh+9vWblYMArh
	+fY6qavS/7Eftrn36UTPfcPWq4CfVcF8FmK1j8eYF/KnASGRoqoegRrSLbdLfQECqKCTPtzMdsW
	R3YzNbCDe9yh7IhyvnKj2Qaqwsbe0Rj/y8flew082PDdYHW3E/ns87rBc3NFXub4srMprqNOYTn
	pCFzzCb69TFt8b5cH2dITayrbXLJAXrsROMcJAaTCJ2VwL4gT2e9odPHh4UznCgWz0vJtXL2/07
	Tn
X-Google-Smtp-Source: AGHT+IGtVS9SdGaNkm12NB6sgpUZkmcGlzbATSLa3Xe3qzCmWhoozVo6W1zjM9hTj8Gto2Is1sv7rg==
X-Received: by 2002:a05:690c:4b92:b0:70e:185b:356d with SMTP id 00721157ae682-717d5d7bb05mr67681657b3.14.1752252360357;
        Fri, 11 Jul 2025 09:46:00 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-717c61b4b7dsm8196597b3.58.2025.07.11.09.45.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 09:45:59 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e740a09eae0so2341503276.1;
        Fri, 11 Jul 2025 09:45:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXH5R7bZid+t8AL+rv3ag5lstJf69ESeEcic51U0m6CgVxswSXL7vXyef/jPrMnRg3RvthrYuM7a2+8/r9P3S8=@lists.infradead.org, AJvYcCXS9fzB/In5TCGKuS+zZmpyw2lLLE/8kpJdhjNR8e8IJNAqzk1dc9V+y0oyWebGrn5pkpvtvaErcsqSmFBCFlaq@lists.infradead.org
X-Received: by 2002:a05:690c:fc9:b0:711:406f:7735 with SMTP id
 00721157ae682-717d5d7b900mr75779167b3.13.1752252358549; Fri, 11 Jul 2025
 09:45:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
 <20250606-6-10-rocket-v7-4-dc16cfe6fe4e@tomeuvizoso.net> <fcb3ca23-7ebd-4f48-92d2-969b24936b9b@arm.com>
 <CAAObsKBiSX0HcxJJjTNGgE4FD4eAYW5wvY=bROtdkZ1mqf_0VQ@mail.gmail.com> <a1a93c41-4c21-4b7a-a8b8-5d4e83d73931@arm.com>
In-Reply-To: <a1a93c41-4c21-4b7a-a8b8-5d4e83d73931@arm.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Fri, 11 Jul 2025 18:45:46 +0200
X-Gmail-Original-Message-ID: <CAAObsKAgmDANvWop-GRAqE6eFRHeQiVHkF1nSwEqyWWY=mdRfg@mail.gmail.com>
X-Gm-Features: Ac12FXx7z145GnPjkDCiCeIztHHyJGSgIFJExInPlpkFTI1qLEtbnsvv5usQDuA
Message-ID: <CAAObsKAgmDANvWop-GRAqE6eFRHeQiVHkF1nSwEqyWWY=mdRfg@mail.gmail.com>
Subject: Re: [PATCH v7 04/10] accel/rocket: Add job submission IOCTL
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_094601_340247_2AD25831 
X-CRM114-Status: GOOD (  21.71  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, Daniel Stone <daniel@fooishbar.org>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Da Xue <da@libre.computer>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdWwgMTEsIDIwMjUgYXQgNjo0MOKAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMTEvMDcvMjAyNSA1OjAwIHBtLCBUb21ldSBWaXpv
c28gd3JvdGU6Cj4gPiBPbiBUdWUsIEp1biAyNCwgMjAyNSBhdCAzOjUw4oCvUE0gUm9iaW4gTXVy
cGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAyMDI1LTA2LTA2
IDc6MjggYW0sIFRvbWV1IFZpem9zbyB3cm90ZToKPiA+PiBbLi4uXQo+ID4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9hY2NlbC9yb2NrZXQvcm9ja2V0X2RldmljZS5oIGIvZHJpdmVycy9hY2NlbC9y
b2NrZXQvcm9ja2V0X2RldmljZS5oCj4gPj4+IGluZGV4IDEwYWNmZTg1MzRmMDBhNzk4NWQ0MGE5
M2Y0YjJmN2Y2OWQ0M2NhZWUuLjUwZTQ2ZjA1MTZiZDE2MTViNWY4MjZjNTAwMmE2YzBlY2JmOWFl
ZDQgMTAwNjQ0Cj4gPj4+IC0tLSBhL2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9kZXZpY2Uu
aAo+ID4+PiArKysgYi9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZGV2aWNlLmgKPiA+Pj4g
QEAgLTEzLDYgKzEzLDggQEAKPiA+Pj4gICAgc3RydWN0IHJvY2tldF9kZXZpY2Ugewo+ID4+PiAg
ICAgICAgc3RydWN0IGRybV9kZXZpY2UgZGRldjsKPiA+Pj4KPiA+Pj4gKyAgICAgc3RydWN0IG11
dGV4IHNjaGVkX2xvY2s7Cj4gPj4+ICsKPiA+Pj4gICAgICAgIHN0cnVjdCBtdXRleCBpb21tdV9s
b2NrOwo+ID4+Cj4gPj4gSnVzdCByZWFsaXNlZCBJIG1pc3NlZCB0aGlzIGluIHRoZSBsYXN0IHBh
dGNoLCBidXQgaW9tbXVfbG9jayBhcHBlYXJzIHRvCj4gPj4gYmUgY29tcGxldGVseSB1bm5lY2Vz
c2FyeSBub3cuCj4gPj4KPiA+Pj4gICAgICAgIHN0cnVjdCByb2NrZXRfY29yZSAqY29yZXM7Cj4g
Pj4gWy4uLl0KPiA+Pj4gK3N0YXRpYyB2b2lkIHJvY2tldF9qb2JfaHdfc3VibWl0KHN0cnVjdCBy
b2NrZXRfY29yZSAqY29yZSwgc3RydWN0IHJvY2tldF9qb2IgKmpvYikKPiA+Pj4gK3sKPiA+Pj4g
KyAgICAgc3RydWN0IHJvY2tldF90YXNrICp0YXNrOwo+ID4+PiArICAgICBib29sIHRhc2tfcHBf
ZW4gPSAxOwo+ID4+PiArICAgICBib29sIHRhc2tfY291bnQgPSAxOwo+ID4+PiArCj4gPj4+ICsg
ICAgIC8qIEdPICEgKi8KPiA+Pj4gKwo+ID4+PiArICAgICAvKiBEb24ndCBxdWV1ZSB0aGUgam9i
IGlmIGEgcmVzZXQgaXMgaW4gcHJvZ3Jlc3MgKi8KPiA+Pj4gKyAgICAgaWYgKGF0b21pY19yZWFk
KCZjb3JlLT5yZXNldC5wZW5kaW5nKSkKPiA+Pj4gKyAgICAgICAgICAgICByZXR1cm47Cj4gPj4+
ICsKPiA+Pj4gKyAgICAgdGFzayA9ICZqb2ItPnRhc2tzW2pvYi0+bmV4dF90YXNrX2lkeF07Cj4g
Pj4+ICsgICAgIGpvYi0+bmV4dF90YXNrX2lkeCsrOwo+ID4+PiArCj4gPj4+ICsgICAgIHJvY2tl
dF9wY193cml0ZWwoY29yZSwgQkFTRV9BRERSRVNTLCAweDEpOwo+ID4+PiArCj4gPj4+ICsgICAg
IHJvY2tldF9jbmFfd3JpdGVsKGNvcmUsIFNfUE9JTlRFUiwgMHhlICsgMHgxMDAwMDAwMCAqIGNv
cmUtPmluZGV4KTsKPiA+Pj4gKyAgICAgcm9ja2V0X2NvcmVfd3JpdGVsKGNvcmUsIFNfUE9JTlRF
UiwgMHhlICsgMHgxMDAwMDAwMCAqIGNvcmUtPmluZGV4KTsKPiA+Pgo+ID4+IFRob3NlIHJlYWxs
eSBsb29rIGxpa2UgYml0ZmllbGQgb3BlcmF0aW9ucyByYXRoZXIgdGhhbiBhY3R1YWwgYXJpdGht
ZXRpYwo+ID4+IHRvIG1lLgo+ID4+Cj4gPj4+ICsKPiA+Pj4gKyAgICAgcm9ja2V0X3BjX3dyaXRl
bChjb3JlLCBCQVNFX0FERFJFU1MsIHRhc2stPnJlZ2NtZCk7Cj4gPj4KPiA+PiBJIGRvbid0IHNl
ZSBob3cgcmVnY21kIGlzIGNyZWF0ZWQgKEkgZ3Vlc3MgdGhhdCdzIGluIHVzZXJzcGFjZT8pLCBi
dXQKPiA+PiBnaXZlbiB0aGF0IGl0J3MgZXhwbGljaXRseSB1NjQgYWxsIHRoZSB3YXkgdGhyb3Vn
aCAtIGFuZCBlc3BlY2lhbGx5Cj4gPj4gc2luY2UgeW91IGNsYWltIHRvIHN1cHBvcnQgNDAtYml0
IERNQSBhZGRyZXNzZXMgLSBpdCBkZWZpbml0ZWx5IHNlZW1zCj4gPj4gc3VzcGljaW91cyB0aGF0
IHRoZSB1cHBlciAzMiBiaXRzIG5ldmVyIHNlZW0gdG8gYmUgY29uc3VtZWQgYW55d2hlcmUgOi8K
PiA+Cj4gPiBZZWFoLCBidXQgdGhlcmUncyBubyBvdGhlciByZWdpc3RlciBmb3IgQkFTRV9BRERS
RVNTIGFkZHJlc3MgaW4gdGhlIFRSTS4KPgo+IFRoYXQgb25seSByZWFmZmlybXMgdGhlIHF1ZXN0
aW9uIHRoZW4gLSBpZiB0aGlzIHZhbHVlIGlzIG9ubHkgZXZlcgo+IHdyaXR0ZW4gdmVyYmF0aW0g
dG8gYSAzMi1iaXQgcmVnaXN0ZXIsIHdoeSBpcyBpdCA2NC1iaXQ/CgpBaCwgc3VyZSwgaXQgd2ls
bCBiZSAzMi1iaXQgaW4gdjguCgpUaGFua3MsCgpUb21ldQoKPiBUaGFua3MsCj4gUm9iaW4uCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
