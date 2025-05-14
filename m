Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3C5BC3ABD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 17:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akDolUzozyTKt7qzj7rbOoFrIeY5dFpMQ27dRO3MdoA=; b=TwoU6U/t+7KKm1
	kkWaNH7aBlk9YTUQSCcVIvVySkG1OJpVlH8EFjwWfplcHxxRx8RAF9PLNTH+TbUshC4iAYX60yCK2
	MtAJqS5wuWINAhpzash6dz6/jgTPTStTKy7WiYLQfa7WVXn9xm+kFzuX4KjdYk9ycP+lCcrVnROl/
	uExl6o9oi/stCm3HIJklduzaHS1HjtFAegMClzKZSlo5C/UNmRkO7FZliGvLaldbyAPujN3At/flq
	xnJ1Co9B4waf4++j3stZkEq79k4yG3cNs/XZNkMU4xyG/+JE+rNAdDYsEithhf/a2ShmLDXMZOgUY
	ZFN8hN3ssvUMZ/Fj/dGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFGCc-0000000FvcW-3NOd;
	Wed, 14 May 2025 17:47:34 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFEwV-0000000FkR8-3ufS
	for linux-rockchip@lists.infradead.org;
	Wed, 14 May 2025 16:26:54 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e78f528aa8eso6069098276.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 May 2025 09:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1747240010; x=1747844810; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gJ0AzCyNbBw7LmTlYnlYRUZRvc6BiWujoVO60kyzOiU=;
        b=l0594tsTA0QEMkxwyK9H1nA9dCf/vgFmTIz74LT+wuB5Gm2E9FzXTHXkj4Y51QffzY
         YRX9QAoijJSPJGaY+kA1ysSbaG3Hc4/X9ES5rdq39rR9/g7PP5y8nSDnokm+9N6lkMNk
         3Udk76SIiJkaCjSlTpIlF63me9IJfdVVk2danP7leRsOZwNIwT5qi8ZNr59S6MQ2UgR9
         ZITRa7sDfx5be0cZ21kpkBVDfX7pc03VEddg7RFrzEkuuCzTcH2UJbymxg7kEhXPVBvD
         LjtxUzd990Bxgqx9qPdmnHUMwzkERzeh/qg3HtVzwHgU/47fob5rFUqPh2gn1gGyskIg
         Q77A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747240010; x=1747844810;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gJ0AzCyNbBw7LmTlYnlYRUZRvc6BiWujoVO60kyzOiU=;
        b=D87a/gocpZK7A0dFN7iysQJ9/RrwR2lQ781mcIgS+YdNpL9fFaylXZ+6/L1w4ypxIc
         WZeV9bsFxPebiux9TcRoLTPmTHKEbTC4jWB/EbOzXf3kDUeFcvEN71kzByuyqPKfoLOO
         jD4mn4JTt6hfUtuMlfpACHKt0628OlTaNSVbEbhC2iY49xQJ/nUrvwXyMIR5miltpxp3
         N8OzEu31cT1MZJZ4CHY9OD8w3WGSTIHR8oMJuysEvyeNMHmppz3ZH3mMePGaoDVGyyRg
         zTMypqQip5sDOgS9t3OA8EPV6DKzYOb+KhNQIIx9AXJQiypsz67R4ut0Li2oNqOTKCSR
         sU5w==
X-Forwarded-Encrypted: i=1; AJvYcCXxV/yiEweWe/CnBB25MDrLwIzI0CL9Z5uPMvrT0h+bE4WDj5exjmrhiyGayRjd5QKQMdKwGmazG/Aw+XrelQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6fj/8qsBlMYui7vSSrfJ2UtOGNLijiqx/edWruqfAM4ujqIJe
	3RLpZ9NrrTp//pk1Ll7bfstMIA/2ttLmX8CGD2rwQbqTMxiUXntX6N/h6pZDWjg=
X-Gm-Gg: ASbGncslmCG5eRdZnhx6nmokMD/slFwkYZkw43QhD8IgFXCImx+fDPwkCdiRj5prL8p
	a3P+SDPgKm47XyuGbAoXk3PHp9m6dOOkLfFdwfKMX65ebLZZ82s/2LsuJEJTaU9J21UaE125bgQ
	pUC3zL4RaYz2TnqajoE2IapK9gm/CqYwBKQNHz1JJyX+AW0XPZmk0S7NGiOoO5oKaF+gqpcWKBt
	aFKYPyond/M+SOYuT/ez87ppIA5vpLNyShv7c4UpjffZWXPdKX+NAXrtk3EztpXTO3H2HmbS6Pa
	bs/BKP5iIYQhlR8VgMYgjI9mzABXJalTYFI/0E+UEcOGflgeiiG1vletPjcbsQG9IQoGK037qhc
	yAm+z5ghEa6ClTWC6OOdGIwCwmMmEbw==
X-Google-Smtp-Source: AGHT+IGyJJqeLbGFbdu0jUiMbQ8MS/+krZmZ4B2gKaulmEYSutqD92H0qOaelfMmzi0Qbw92xDdCMA==
X-Received: by 2002:a05:6902:218a:b0:e78:f6b7:f74a with SMTP id 3f1490d57ef6-e7b3d4b97a1mr4638443276.4.1747240010608;
        Wed, 14 May 2025 09:26:50 -0700 (PDT)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com. [209.85.219.180])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7b30a6e7dfsm892486276.53.2025.05.14.09.26.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 09:26:49 -0700 (PDT)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e694601f624so429276.1;
        Wed, 14 May 2025 09:26:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVhHC+m0zTtAcr7Y8hNnjWRhnHGC1+f4dmKsAH6Qu6v0EkPVeKZdVDVmObo0koTpHL2gzbYiCJN5ZkccMRH7EPq@lists.infradead.org, AJvYcCX4JaWeYP3KspI1kcIdxf/bGqC8wxb2lQsF4x3sAImIIs0iWwsDNlIxR0kad92/eJXoRagfc4wqBsKV292x30g=@lists.infradead.org
X-Received: by 2002:a05:6902:1202:b0:e6d:f160:bbdf with SMTP id
 3f1490d57ef6-e7b3d59ae2fmr4832866276.36.1747240009056; Wed, 14 May 2025
 09:26:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250225-6-10-rocket-v2-0-d4dbcfafc141@tomeuvizoso.net>
 <20250225-6-10-rocket-v2-1-d4dbcfafc141@tomeuvizoso.net> <20250225160248.GA2563229-robh@kernel.org>
In-Reply-To: <20250225160248.GA2563229-robh@kernel.org>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 14 May 2025 18:26:38 +0200
X-Gmail-Original-Message-ID: <CAAObsKD01rdYf0E6Vev6oFRZEf1f006oi+ghgVUn+h=aRx-hmQ@mail.gmail.com>
X-Gm-Features: AX0GCFvDEBwxCoW2ZGLJEEIKb_2H5q_lCEI2NWi7ZFVAMNUkSoshPa20AanOMV0
Message-ID: <CAAObsKD01rdYf0E6Vev6oFRZEf1f006oi+ghgVUn+h=aRx-hmQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: npu: rockchip,rknn: Add bindings
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_092652_212459_F922638B 
X-CRM114-Status: GOOD (  25.30  )
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

SGkgUm9iLAoKT24gVHVlLCBGZWIgMjUsIDIwMjUgYXQgNTowMuKAr1BNIFJvYiBIZXJyaW5nIDxy
b2JoQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBGZWIgMjUsIDIwMjUgYXQgMDg6NTU6
NDdBTSArMDEwMCwgVG9tZXUgVml6b3NvIHdyb3RlOgo+ID4gQWRkIHRoZSBiaW5kaW5ncyBmb3Ig
dGhlIE5ldXJhbCBQcm9jZXNzaW5nIFVuaXQgSVAgZnJvbSBSb2NrY2hpcC4KPiA+Cj4gPiB2MjoK
PiA+IC0gQWRhcHQgdG8gbmV3IG5vZGUgc3RydWN0dXJlIChvbmUgbm9kZSBwZXIgY29yZSwgZWFj
aCB3aXRoIGl0cyBvd24KPiA+ICAgSU9NTVUpCj4gPiAtIFNldmVyYWwgbWlzYy4gZml4ZXMgZnJv
bSBTZWJhc3RpYW4gUmVpY2hlbAo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8
dG9tZXVAdG9tZXV2aXpvc28ubmV0Pgo+ID4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNo
ZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+ICAuLi4vYmlu
ZGluZ3MvbnB1L3JvY2tjaGlwLHJrbm4tY29yZS55YW1sICAgICAgICAgICB8IDE1MiArKysrKysr
KysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTUyIGluc2VydGlvbnMoKykKPiA+
Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9y
b2NrY2hpcCxya25uLWNvcmUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9ucHUvcm9ja2NoaXAscmtubi1jb3JlLnlhbWwKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
PiBpbmRleCAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi5lOGQwYWZl
NGE3ZDFjNGYxNjZjZjEzYTlmNGFhN2MxOTAxMzYyYTNmCj4gPiAtLS0gL2Rldi9udWxsCj4gPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrbm4t
Y29yZS55YW1sCj4gPiBAQCAtMCwwICsxLDE1MiBAQAo+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ID4gKyVZQU1MIDEuMgo+ID4g
Ky0tLQo+ID4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvbnB1L3JvY2tjaGlw
LHJrbm4tY29yZS55YW1sIwo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRh
LXNjaGVtYXMvY29yZS55YW1sIwo+ID4gKwo+ID4gK3RpdGxlOiBOZXVyYWwgUHJvY2Vzc2luZyBV
bml0IElQIGZyb20gUm9ja2NoaXAKPiA+ICsKPiA+ICttYWludGFpbmVyczoKPiA+ICsgIC0gVG9t
ZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+Cj4gPiArCj4gPiArZGVzY3JpcHRpb246
Cj4gPiArICBSb2NrY2hpcCBJUCBmb3IgYWNjZWxlcmF0aW5nIGluZmVyZW5jZSBvZiBuZXVyYWwg
bmV0d29ya3MsIGJhc2VkIG9uIE5WSURJQSdzCj4gPiArICBvcGVuIHNvdXJjZSBOVkRMQSBJUC4K
PiA+ICsKPiA+ICtwcm9wZXJ0aWVzOgo+ID4gKyAgJG5vZGVuYW1lOgo+ID4gKyAgICBwYXR0ZXJu
OiAnXm5wdS1jb3JlQFthLWYwLTldKyQnCj4gPiArCj4gPiArICBjb21wYXRpYmxlOgo+ID4gKyAg
ICBvbmVPZjoKPiA+ICsgICAgICAtIGl0ZW1zOgo+ID4gKyAgICAgICAgICAtIGVudW06Cj4gPiAr
ICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUtdG9wCj4gPiArICAgICAg
ICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrbm4tY29yZS10b3AKPgo+IERyb3AgdGhlIGZhbGxiYWNr
cyB1bmxlc3MgeW91IGhhdmUgc29tZSBldmlkZW5jZSB0aGF0IHRoZSBJUCBpcyB0aGUKPiBzYW1l
IGFjcm9zcyBhIGxvdCBvZiBTb0NzLiBJZiB5b3UgZG9uJ3QsIHRoZW4KPiByb2NrY2hpcCxyazM1
ODgtcmtubi1jb3JlLXRvcCBjYW4gYmUgdGhlIGZhbGxiYWNrIHdoZW5ldmVyIHRoZXJlIGFyZQo+
IG1vcmUgY29tcGF0aWJsZSBTb0NzLgo+Cj4gT3IgaWYgdGhlcmUncyB2ZXJzaW9uL2ZlYXR1cmUg
cmVnaXN0ZXJzIHRoYXQgb3RoZXJ3aXNlIG1ha2UgaXQKPiBkaXNjb3ZlcmFibGUsIHRoZW4gYSBj
b21tb24gY29tcGF0aWJsZSBpcyBmaW5lLgo+Cj4gPiArICAgICAgLSBpdGVtczoKPiA+ICsgICAg
ICAgICAgLSBlbnVtOgo+ID4gKyAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1ODgtcmtubi1j
b3JlCj4gPiArICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrbm4tY29yZQo+Cj4gSSBkb24n
dCB1bmRlcnN0YW5kIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gY29yZSBhbmQgY29yZS10b3AuIFRo
YXQgbmVlZHMKPiB0byBiZSBleHBsYWluZWQgaW4gdGhlIHRvcC1sZXZlbCBkZXNjcmlwdGlvbi4K
Pgo+ID4gKwo+ID4gKyAgcmVnOgo+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gKwo+ID4gKyAgY2xv
Y2tzOgo+ID4gKyAgICBtaW5JdGVtczogMgo+ID4gKyAgICBtYXhJdGVtczogNAo+ID4gKwo+ID4g
KyAgY2xvY2stbmFtZXM6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gY29uc3Q6IGFjbGsK
PiA+ICsgICAgICAtIGNvbnN0OiBoY2xrCj4gPiArICAgICAgLSBjb25zdDogbnB1Cj4gPiArICAg
ICAgLSBjb25zdDogcGNsawo+ID4gKyAgICBtaW5JdGVtczogMgo+ID4gKwo+ID4gKyAgaW50ZXJy
dXB0czoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIGlvbW11czoKPiA+ICsgICAg
bWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIG5wdS1zdXBwbHk6IHRydWUKPiA+ICsKPiA+ICsgIHBv
d2VyLWRvbWFpbnM6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiArCj4gPiArICByZXNldHM6Cj4g
PiArICAgIG1heEl0ZW1zOiAyCj4gPiArCj4gPiArICByZXNldC1uYW1lczoKPiA+ICsgICAgaXRl
bXM6Cj4gPiArICAgICAgLSBjb25zdDogc3JzdF9hCj4gPiArICAgICAgLSBjb25zdDogc3JzdF9o
Cj4gPiArCj4gPiArICBzcmFtLXN1cHBseTogdHJ1ZQo+Cj4gR3JvdXAgc3VwcGx5IHByb3BlcnRp
ZXMgdG9nZXRoZXIKPgo+ID4gKwo+ID4gK3JlcXVpcmVkOgo+ID4gKyAgLSBjb21wYXRpYmxlCj4g
PiArICAtIHJlZwo+ID4gKyAgLSBjbG9ja3MKPiA+ICsgIC0gY2xvY2stbmFtZXMKPiA+ICsgIC0g
aW50ZXJydXB0cwo+ID4gKyAgLSBpb21tdXMKPiA+ICsgIC0gbnB1LXN1cHBseQo+ID4gKyAgLSBw
b3dlci1kb21haW5zCj4gPiArICAtIHJlc2V0cwo+ID4gKyAgLSByZXNldC1uYW1lcwo+ID4gKyAg
LSBzcmFtLXN1cHBseQo+ID4gKwo+ID4gK2FsbE9mOgo+ID4gKyAgLSBpZjoKPiA+ICsgICAgICBw
cm9wZXJ0aWVzOgo+ID4gKyAgICAgICAgY29tcGF0aWJsZToKPiA+ICsgICAgICAgICAgY29udGFp
bnM6Cj4gPiArICAgICAgICAgICAgZW51bToKPiA+ICsgICAgICAgICAgICAgIC0gcm9ja2NoaXAs
cmtubi1jb3JlLXRvcAo+ID4gKyAgICB0aGVuOgo+ID4gKyAgICAgIHByb3BlcnRpZXM6Cj4gPiAr
ICAgICAgICBjbG9ja3M6Cj4gPiArICAgICAgICAgIG1pbkl0ZW1zOiA0Cj4gPiArCj4gPiArICAg
ICAgICBjbG9jay1uYW1lczoKPiA+ICsgICAgICAgICAgbWluSXRlbXM6IDQKPiA+ICsgIC0gaWY6
Cj4gPiArICAgICAgcHJvcGVydGllczoKPiA+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gPiArICAg
ICAgICAgIGNvbnRhaW5zOgo+ID4gKyAgICAgICAgICAgIGVudW06Cj4gPiArICAgICAgICAgICAg
ICAtIHJvY2tjaGlwLHJrbm4tY29yZQo+ID4gKyAgICB0aGVuOgo+ID4gKyAgICAgIHByb3BlcnRp
ZXM6Cj4gPiArICAgICAgICBjbG9ja3M6Cj4gPiArICAgICAgICAgIG1heEl0ZW1zOiAyCj4gPiAr
ICAgICAgICBjbG9jay1uYW1lczoKPiA+ICsgICAgICAgICAgbWF4SXRlbXM6IDIKPiA+ICsKPiA+
ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiA+ICsKPiA+ICtleGFtcGxlczoKPiA+ICsg
IC0gfAo+ID4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4
LWNydS5oPgo+ID4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xs
ZXIvaXJxLmg+Cj4gPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJv
bGxlci9hcm0tZ2ljLmg+Cj4gPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9yazM1
ODgtcG93ZXIuaD4KPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlw
LHJrMzU4OC1jcnUuaD4KPiA+ICsKPiA+ICsgICAgYnVzIHsKPiA+ICsgICAgICAjYWRkcmVzcy1j
ZWxscyA9IDwyPjsKPiA+ICsgICAgICAjc2l6ZS1jZWxscyA9IDwyPjsKPiA+ICsKPiA+ICsgICAg
ICBya25uX2NvcmVfdG9wOiBucHUtY29yZUBmZGFiMDAwMCB7Cj4KPiBucHVALi4uCgpDYW4geW91
IGV4dGVuZCBvbiB3aHkgeW91IHdvdWxkIHByZWZlciB0byBoYXZlIG5wdUA/IEFzIGVhY2ggbm9k
ZQpjb3JyZXNwb25kcyB0byBhIGNvcmUgaW5zaWRlIHRoZSBOUFUsIEkgd2VudCB3aXRoIG5wdS1j
b3JlQC4KClRoYW5rcywKClRvbWV1Cgo+ID4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazM1ODgtcmtubi1jb3JlLXRvcCIsICJyb2NrY2hpcCxya25uLWNvcmUtdG9wIjsKPiA+ICsg
ICAgICAgIHJlZyA9IDwweDAgMHhmZGFiMDAwMCAweDAgMHg5MDAwPjsKPiA+ICsgICAgICAgIGFz
c2lnbmVkLWNsb2NrcyA9IDwmc2NtaV9jbGsgU0NNSV9DTEtfTlBVPjsKPiA+ICsgICAgICAgIGFz
c2lnbmVkLWNsb2NrLXJhdGVzID0gPDIwMDAwMDAwMD47Cj4gPiArICAgICAgICBjbG9ja3MgPSA8
JmNydSBBQ0xLX05QVTA+LCA8JmNydSBIQ0xLX05QVTA+LAo+ID4gKyAgICAgICAgICAgICAgICAg
PCZzY21pX2NsayBTQ01JX0NMS19OUFU+LCA8JmNydSBQQ0xLX05QVV9ST09UPjsKPiA+ICsgICAg
ICAgIGNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayIsICJucHUiLCAicGNsayI7Cj4gPiArICAg
ICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTEwIElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4g
PiArICAgICAgICBpb21tdXMgPSA8JnJrbm5fbW11X3RvcD47Cj4gPiArICAgICAgICBucHUtc3Vw
cGx5ID0gPCZ2ZGRfbnB1X3MwPjsKPiA+ICsgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBvd2Vy
IFJLMzU4OF9QRF9OUFVUT1A+Owo+ID4gKyAgICAgICAgcmVzZXRzID0gPCZjcnUgU1JTVF9BX1JL
Tk4wPiwgPCZjcnUgU1JTVF9IX1JLTk4wPjsKPiA+ICsgICAgICAgIHJlc2V0LW5hbWVzID0gInNy
c3RfYSIsICJzcnN0X2giOwo+ID4gKyAgICAgICAgc3JhbS1zdXBwbHkgPSA8JnZkZF9ucHVfbWVt
X3MwPjsKPiA+ICsgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgIHJrbm5fY29yZV8xOiBucHUtY29y
ZUBmZGFjMDAwMCB7Cj4gPiArICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1y
a25uLWNvcmUiLCAicm9ja2NoaXAscmtubi1jb3JlIjsKPiA+ICsgICAgICAgIHJlZyA9IDwweDAg
MHhmZGFjMDAwMCAweDAgMHg5MDAwPjsKPiA+ICsgICAgICAgIGNsb2NrcyA9IDwmY3J1IEFDTEtf
TlBVMT4sIDwmY3J1IEhDTEtfTlBVMT47Cj4gPiArICAgICAgICBjbG9jay1uYW1lcyA9ICJhY2xr
IiwgImhjbGsiOwo+ID4gKyAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDExMSBJUlFfVFlQ
RV9MRVZFTF9ISUdIIDA+Owo+ID4gKyAgICAgICAgaW9tbXVzID0gPCZya25uX21tdV8xPjsKPiA+
ICsgICAgICAgIG5wdS1zdXBwbHkgPSA8JnZkZF9ucHVfczA+Owo+ID4gKyAgICAgICAgcG93ZXIt
ZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX05QVTE+Owo+ID4gKyAgICAgICAgcmVzZXRzID0g
PCZjcnUgU1JTVF9BX1JLTk4xPiwgPCZjcnUgU1JTVF9IX1JLTk4xPjsKPiA+ICsgICAgICAgIHJl
c2V0LW5hbWVzID0gInNyc3RfYSIsICJzcnN0X2giOwo+ID4gKyAgICAgICAgc3JhbS1zdXBwbHkg
PSA8JnZkZF9ucHVfbWVtX3MwPjsKPiA+ICsgICAgICB9Owo+ID4gKyAgICB9Owo+ID4gKy4uLgo+
ID4KPiA+IC0tCj4gPiAyLjQ4LjEKPiA+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
