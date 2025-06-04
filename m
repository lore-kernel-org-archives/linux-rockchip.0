Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F7A5C5B552
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 07:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8qBrsxX6xceUuM8MPZIJoDynRS9NMYKKfKY6uyHi3M=; b=4IVgjc1sngJI0g
	MsRp554EqDo3VRm0GMNmkhjZiy3YduTmDBhKuN6iI23LNlQm3V5GSgViHngGdZPC27p6QdO1M/ZmN
	+RZRpCUm+4ituAD3cqgO0Pdr/F5ElaSwqXgXa61zGWmN776DH/Qq/3/c6mJt+qoDE61oRzOUCurzZ
	hT52JKtesZwdVWWUZsMyGX7Bjmfu7mvl7fmndWSSdUfYZ+2ywhNnlr2ur2xohZBTpDS4ou0R3Oilk
	K5l22i7Wcv9I/A8wFzLIxmLqtegJZlAQyDCzpsSWC38pj898LtG6UYrartRUOrLsM2O8tGh+4nvhW
	cOqnxiqJdtcKeMYM9Raw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMiJs-0000000CkBE-26WZ;
	Wed, 04 Jun 2025 07:13:52 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMiJL-0000000Ck9D-3FeV
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 07:13:21 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-e733e25bfc7so5246907276.3
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 00:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1749021198; x=1749625998; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=egAKscK3QoP1kYQu5KkN3aoibVnnNSd6rVfa6InXH/s=;
        b=PahDTohP6/bGt2OF+5bjWT+T9Thc6aTb9EBaVqc9AE40cG52gtko5p9x9xPHUSp7bA
         HSHm2U76WbwIAfcHySmnGQ4TawzukflkuqAMAOlstCnGKvKG8TGPdVjWI+NY3lcwDTMG
         DhR1Fnh1498hIG/PWaRfOLJFp0fEaeNHfRjCLk91vef3vAKuCR+b0Pp52N4Eudp1pDhb
         I/RPESVE7l+HfWZP3kLDEMkwWBf3QIPGSGP7poovN05P8UPCsNYTAnzKsMT+JS+QPHLh
         sC3NDRLvs2jEuaQL5IqKpXcCHiiKdEb/8332LSv8aQ1JJCfF9IVeQuDetFNgF7eijQ8H
         /Fdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749021198; x=1749625998;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=egAKscK3QoP1kYQu5KkN3aoibVnnNSd6rVfa6InXH/s=;
        b=Pf5Q9m5cZbAtzXhSoP8GZ3bUe4yXd7LlMM13KGacdAVCssSyhYnQ1h/89zElAxAiCp
         68mO0otDdT/9szdBwpvA7sWBervC1R8+25K2OFd9szjgfySAYmjy/XgkO6+DYDwv9BiE
         U/J4XxZ6Rr4Mirdqn7pEgP/xvSFfrRRgqTOwLG/CHu4A5uT3pQosRt+Po353VfIQ47rp
         rkWwErK/R9948NIIMK9j8g2hkyJPLaRfMCt1TGKe2wgHaBVuftdvUSyO+tgo4KolSmdh
         HaQDSVDu2EwyOGkDw0Xp/nO6CSQY3EiE+pUz95zpqh5BIxdvikspYLW/llY5003gtPKr
         DKEg==
X-Forwarded-Encrypted: i=1; AJvYcCVIpqoxU4WXHsUuvbtQ3BSnEmsZ9pL8pvExptcFulsT1GP15oakGymDcne+VcqoEXZbMt/Qgco/mtQeephOFQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwPjgYSUNS7cOzktlK69mGd/IwIvArauIMuaWc/W65btq+Wf9JS
	fLBhTT5Khgri41AGVsDmhRE51nslorCDrhtmuAh7co3eTlOW6tf64H6BdgVJJG01rdp/0n/a4+G
	qCLHwGXyXfQ==
X-Gm-Gg: ASbGnctcDa0A5tggI5M5BP1B26aHCrByPF02JjqPyKzUUIe2FXVQkvXNlIez2I5Yaqn
	IOfOrcsu4Aw8xJbwviApkQOmN1gQxcHRuGYZgirQ9XUx3fB5Fi62WJ+jZpnT6wDEYwmi04jDhyE
	N58MupijfsxGTPDzQyZfq5Iq1Cr7FrxoFO45G7fs8w6Ku3bH5kD4THhTRr1qqIrBnMCGx7J5wSi
	iFcphPQLDzfMynmHYlMJeB3J6nT4E5SD6IsKf4ssXc8toAjsYeVzMcoYeRBy/z6I3V1g4vR8K+Q
	s9rU06wX88vUfCVauRlJ/Mzkxpggp6qQ+LgOU8y2l3BkcYHNPChlpFn2C7zgTlw8W/p4qGTASqG
	77XfaYTmMEoc8Xq8FwzA=
X-Google-Smtp-Source: AGHT+IEioYZr7Pl+HyE8GQyHn5JFYfPVNgHWYa1W9Zaw6rlkHM/hfWhk7sFvb+lXfkDx1TMN/tre9w==
X-Received: by 2002:a05:6902:1a4a:b0:e7e:fa65:8fec with SMTP id 3f1490d57ef6-e8179dad833mr1938620276.41.1749021198665;
        Wed, 04 Jun 2025 00:13:18 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7f733af341sm3034374276.11.2025.06.04.00.13.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 00:13:15 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e733a6ff491so5910115276.2;
        Wed, 04 Jun 2025 00:13:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVdRpOQgaDpyi6xIdrhKsdV/a/apUMtzapK/b/ltJYR6u1UcGGngNXs/qJXwJvgJIdmywVzPXV76gACH4ucu9pv@lists.infradead.org, AJvYcCX6R7LSD3stIu9AEDue6YiJBpqU/xY47ESx8tDPdmJE9Qw1NbAk4TcHoMiFjV9mMlEl+gOPFMnKm9De9Jnn1ok=@lists.infradead.org
X-Received: by 2002:a05:6902:1009:b0:e7d:b06c:709d with SMTP id
 3f1490d57ef6-e8179dac9c2mr2086427276.37.1749021193915; Wed, 04 Jun 2025
 00:13:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
 <20250520-6-10-rocket-v5-1-18c9ca0fcb3c@tomeuvizoso.net> <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 4 Jun 2025 09:13:03 +0200
X-Gmail-Original-Message-ID: <CAAObsKCUusE68Bzce5fxukpOJ34M_w5vt7+gLSHZuMC8KXqtLA@mail.gmail.com>
X-Gm-Features: AX0GCFujZUaEEoiRSaHh2B6hjHyNEBOF25EbCsvQFur0Wj0AZ2p1QcOal7DajJE
Message-ID: <CAAObsKCUusE68Bzce5fxukpOJ34M_w5vt7+gLSHZuMC8KXqtLA@mail.gmail.com>
Subject: Re: [PATCH v5 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_001319_816551_BE04C20E 
X-CRM114-Status: GOOD (  28.85  )
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

T24gV2VkLCBNYXkgMjgsIDIwMjUgYXQgMzo0MeKAr1BNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBNYXkgMjAsIDIwMjUgYXQgNToyN+KAr0FNIFRvbWV1
IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0PiB3cm90ZToKPiA+Cj4gPiBBZGQgdGhlIGJp
bmRpbmdzIGZvciB0aGUgTmV1cmFsIFByb2Nlc3NpbmcgVW5pdCBJUCBmcm9tIFJvY2tjaGlwLgo+
ID4KPiA+IHYyOgo+ID4gLSBBZGFwdCB0byBuZXcgbm9kZSBzdHJ1Y3R1cmUgKG9uZSBub2RlIHBl
ciBjb3JlLCBlYWNoIHdpdGggaXRzIG93bgo+ID4gICBJT01NVSkKPiA+IC0gU2V2ZXJhbCBtaXNj
LiBmaXhlcyBmcm9tIFNlYmFzdGlhbiBSZWljaGVsCj4gPgo+ID4gdjM6Cj4gPiAtIFNwbGl0IHJl
Z2lzdGVyIGJsb2NrIGluIGl0cyBjb25zdGl0dWVudCBzdWJibG9ja3MsIGFuZCBvbmx5IHJlcXVp
cmUKPiA+ICAgdGhlIG9uZXMgdGhhdCB0aGUga2VybmVsIHdvdWxkIGV2ZXIgdXNlIChOaWNvbGFz
IEZyYXR0YXJvbGkpCj4gPiAtIEdyb3VwIHN1cHBsaWVzIChSb2IgSGVycmluZykKPiA+IC0gRXhw
bGFpbiB0aGUgd2F5IGluIHdoaWNoIHRoZSB0b3AgY29yZSBpcyBzcGVjaWFsIChSb2IgSGVycmlu
ZykKPiA+Cj4gPiB2NDoKPiA+IC0gQ2hhbmdlIHJlcXVpcmVkIG5vZGUgbmFtZSB0byBucHVAIChS
b2IgSGVycmluZyBhbmQgS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+IC0gUmVtb3ZlIHVubmVlZGVk
IGl0ZW1zOiAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+IC0gRml4IHVzZSBvZiBtaW5JdGVtcy9t
YXhJdGVtcyAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+IC0gQWRkIHJlZy1uYW1lcyB0byBsaXN0
IG9mIHJlcXVpcmVkIHByb3BlcnRpZXMgKEtyenlzenRvZiBLb3psb3dza2kpCj4gPiAtIEZpeCBl
eGFtcGxlIChLcnp5c3p0b2YgS296bG93c2tpKQo+ID4KPiA+IHY1Ogo+ID4gLSBSZW5hbWUgZmls
ZSB0byByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwgKEtyenlzenRvZiBLb3psb3dza2kp
Cj4gPiAtIFN0cmVhbWxpbmUgY29tcGF0aWJsZSBwcm9wZXJ0eSAoS3J6eXN6dG9mIEtvemxvd3Nr
aSkKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9t
ZXVAdG9tZXV2aXpvc28ubmV0Pgo+ID4gLS0tCj4gPiAgLi4uL2JpbmRpbmdzL25wdS9yb2NrY2hp
cCxyazM1ODgtcmtubi1jb3JlLnlhbWwgICAgfCAxNDcgKysrKysrKysrKysrKysrKysrKysrCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDE0NyBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJr
bm4tY29yZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2Nr
Y2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBp
bmRleCAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi45ZWI0MjYzNjdh
ZmNiYzAzYzM4N2Q0M2M0YjgyNTBjZGQxYjllZTg2Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1y
a25uLWNvcmUueWFtbAo+ID4gQEAgLTAsMCArMSwxNDcgQEAKPiA+ICsjIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiA+ICslWUFNTCAxLjIK
PiA+ICstLS0KPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25wdS9yb2Nr
Y2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwjCj4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRy
ZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPiArCj4gPiArdGl0bGU6IE5ldXJhbCBQ
cm9jZXNzaW5nIFVuaXQgSVAgZnJvbSBSb2NrY2hpcAo+ID4gKwo+ID4gK21haW50YWluZXJzOgo+
ID4gKyAgLSBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4KPiA+ICsKPiA+ICtk
ZXNjcmlwdGlvbjoKPiA+ICsgIFJvY2tjaGlwIElQIGZvciBhY2NlbGVyYXRpbmcgaW5mZXJlbmNl
IG9mIG5ldXJhbCBuZXR3b3JrcywgYmFzZWQgb24gTlZJRElBJ3MKPiA+ICsgIG9wZW4gc291cmNl
IE5WRExBIElQLgo+ID4gKwo+ID4gKyAgVGhlcmUgaXMgdG8gYmUgYSBub2RlIHBlciBlYWNoIGNv
cmUgaW4gdGhlIE5QVS4gSW4gUm9ja2NoaXAncyBkZXNpZ24gdGhlcmUKPiA+ICsgIHdpbGwgYmUg
b25lIGNvcmUgdGhhdCBpcyBzcGVjaWFsIGFuZCBuZWVkcyB0byBiZSBwb3dlcmVkIG9uIGJlZm9y
ZSBhbnkgb2YgdGhlCj4gPiArICBvdGhlciBjb3JlcyBjYW4gYmUgdXNlZC4gVGhpcyBzcGVjaWFs
IGNvcmUgaXMgY2FsbGVkIHRoZSB0b3AgY29yZSBhbmQgc2hvdWxkCj4gPiArICBoYXZlIHRoZSBj
b21wYXRpYmxlIHN0cmluZyB0aGF0IGNvcnJlc3BvbmRzIHRvIHRvcCBjb3Jlcy4KPgo+IElzIHRo
aXMgcmVhbGx5IGEgZGlzdGluY3Rpb24gaW4gdGhlIGgvdz8gSWYgeW91IGNoYW5nZSB3aGljaCBj
b3JlIGlzCj4gdGhlIHRvcCBvbmUgaW4gdGhlIERULCBkb2VzIGl0IHN0aWxsIHdvcms/CgpJIGFz
a2VkIEtldmVyIGFib3V0IGl0LCBhbmQgaGUgY29uZmlybWVkIHRoYXQgdGhlIGNvcmUgMC90b3Ag
aXMKc3BlY2lhbCBpbiB0aGF0IGl0IGlzIGFibGUgdG8gcmVsYXkgcmVnaXN0ZXIgd3JpdGVzIGFu
ZCBzaGFyZSBkYXRhCndpdGggdGhlIG90aGVyIGNvcmVzLgoKUmVnYXJkcywKClRvbWV1Cgo+ID4g
Kwo+ID4gK3Byb3BlcnRpZXM6Cj4gPiArICAkbm9kZW5hbWU6Cj4gPiArICAgIHBhdHRlcm46ICde
bnB1QFthLWYwLTldKyQnCj4gPiArCj4gPiArICBjb21wYXRpYmxlOgo+ID4gKyAgICBlbnVtOgo+
ID4gKyAgICAgIC0gcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS10b3AKPiA+ICsgICAgICAtIHJv
Y2tjaGlwLHJrMzU4OC1ya25uLWNvcmUKPiA+ICsKPiA+ICsgIHJlZzoKPiA+ICsgICAgbWF4SXRl
bXM6IDMKPiA+ICsKPiA+ICsgIHJlZy1uYW1lczoKPiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAg
LSBjb25zdDogcGMKPiA+ICsgICAgICAtIGNvbnN0OiBjbmEKPiA+ICsgICAgICAtIGNvbnN0OiBj
b3JlCj4gPiArCj4gPiArICBjbG9ja3M6Cj4gPiArICAgIG1pbkl0ZW1zOiAyCj4gPiArICAgIG1h
eEl0ZW1zOiA0Cj4gPiArCj4gPiArICBjbG9jay1uYW1lczoKPiA+ICsgICAgaXRlbXM6Cj4gPiAr
ICAgICAgLSBjb25zdDogYWNsawo+ID4gKyAgICAgIC0gY29uc3Q6IGhjbGsKPiA+ICsgICAgICAt
IGNvbnN0OiBucHUKPiA+ICsgICAgICAtIGNvbnN0OiBwY2xrCj4gPiArICAgIG1pbkl0ZW1zOiAy
Cj4KPiBJdCBpcyBvZGQgdGhhdCB0aGUgbm9uLXRvcCBjb3JlcyBvbmx5IGhhdmUgYnVzIGNsb2Nr
cyBhbmQgbm8gbW9kdWxlCj4gY2xvY2suIEJ1dCBiYXNlZCBvbiB0aGUgY2xvY2sgbmFtZXMsIEkn
bSBndWVzc2luZyB0aGUgYWNsay9oY2xrIGFyZQo+IG5vdCBzaGFyZWQsIGJ1dCB0aGUgbnB1IGFu
ZCBwY2xrIGFyZSBzaGFyZWQuIFNpbmNlIHlvdSBtYWtlIHRoZSB0b3AKPiBjb3JlIHByb2JlIGZp
cnN0LCB0aGVuIGl0IHdpbGwgZW5hYmxlIHRoZSBzaGFyZWQgY2xvY2tzIGFuZCB0aGUKPiBub24t
dG9wIGNvcmVzIGRvbid0IGhhdmUgdG8gd29ycnkgYWJvdXQgdGhlbS4gSWYgc28sIHRoYXQgaXMg
d3JvbmcgYXMKPiBpdCBpcyBsZXR0aW5nIHRoZSBzb2Z0d2FyZSBkZXNpZ24gZGVmaW5lIHRoZSBi
aW5kaW5ncy4KPgo+IFJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
