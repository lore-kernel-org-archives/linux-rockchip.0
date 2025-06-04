Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6642C61CE8
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 08:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZXD6JuCA+S6v6vwIrvAOItnbJXoHwIKvR05/uVAGz0=; b=ZvknWmPiO4AIj5
	5Mfv+fkk+P1LbCq/A9rHrgShuFAtySqt4VBOCACwY0T96BNl569rYCDzRkDDWj43CvZimsMxZE7E2
	kQS92/wpabOFOn5RmlPWy0yQjqJF0aUgvaWibGDLJZO/wuQ8mC75pLjI6/gq6RlBm+icjL5DJ6VDQ
	o0zmqyLcV4LFYLgY32cny7+Urpr5TfXp6LckrviY+vjXovkYvRHFPRmu2aw0o6QSVnrKw50qr6R5k
	pzJj3+lt8RA/kYmbFEVlPPimQQYwVBtyy3kOgyW7Ybg12FNoisKAcszNNnE4FX7yBd7laSlikzgrt
	w4++dB5GdWX0+ZsaUe6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMjk4-0000000Cvqr-3F6m;
	Wed, 04 Jun 2025 08:45:00 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMjcH-0000000Cucu-3vpc
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 08:37:00 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-70e75f30452so44489117b3.2
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 01:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1749026215; x=1749631015; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zJmj/95wgXcHpVI6Ou9qJ8Nq5fJR29OVttEikN7mIco=;
        b=sW5sPxBViyoDbvPCt6qhT+yYGoGBnltd/j/pgQ3+AkIVQre23e/hGL4PSD+728TSF0
         bK5FFqpw6zhqOPwldR4K0ZWofir9P0iMycNOy9IZzqjUvRxMVh0+5zvTY40kg3An6eNZ
         fU3HPXpzGpXlKctBGlcR1hOoqNTxQkLzEgeGgfxvQVoJPDu811dijAH53TA3/fMy+Quz
         SODStuvwsJk8ls3JUIuIl2Xrhwfqyx4Xqs3BMAmNgFB6/sgQDWJwvQgqdqeQ/RN42OzN
         qGfrIf6833tkTO4khhgkG9nRLDMqfsHdCqZG0mlXlRr02hy1P4eOY2BPe2daB5C0HycT
         INXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749026215; x=1749631015;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zJmj/95wgXcHpVI6Ou9qJ8Nq5fJR29OVttEikN7mIco=;
        b=u99u0Da09osQjo4vUABOEVjOAB7cVTUKf9Nlt/ybkVoAuH1aNnUBkwAg+VEpGXrxHg
         /LbuTAlGX+B5HbqR78jxmdTPudf/0WQsWvaqdqznE4YCar/3Z+0eOpcanPnSHN4JcNp9
         shQ2G5EA9zo8zvI9hQgpcntxecBd0hmKwjlFTMW2vvb9cuCvEC8WivY/9c8kr836QxWS
         erbNwTskAOVVr9rype1My6E7ApiYg6QFUVJKYdtuOx/fpHr/zmJLkuCkR6bCzvdn5tbM
         wZ7tOqtcW109Tuo2SGKzRld/1YiPOV08dqGjdzC9gg//CU7pL5OZCCah711WfaCoBbBl
         Wg0A==
X-Forwarded-Encrypted: i=1; AJvYcCXazIEd/eI3UG27R4SjzjMmJK3uAY89NEHc03MQ8jvNJeAoZSvv2gGsZ6a7zDCyJ6AssMeVIFTlcZgULyMEAw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzr4Fh2V7SCWSsKMaLVXdr5oRuE3vIZswBR9NrlgQ/wK3CvWpOs
	qnp+SL5La4JC7GLBEZGyPMZXgmJQ6LrrYEPHJkyzpLzxsrM8Zfo0iHkp+5AsXgEFCsE=
X-Gm-Gg: ASbGncuWVscqLI69axuIgIdbaAtGUgwPEZ/vMrm5u8OjRo7kkWH/zLpdI2+MTz7C9oE
	UY4dYn0WKqVjWmVOc0Vx8qIJ0zqXLL6H2kr7VYGW+TH1qAGBgMARfDP4dXGzm9Q62V1VidK45Qa
	WVz3MgqaCmpB+D50PeQMSFolDF+shgNJs2dmSyT7hNAGQMud8bNHEoc3Dpm3aIJMJiBD/L0tYzJ
	vwYSmBxRtLYD+hRucCjZld7+PkB07/j+VYO6NlAUV1IqBUUG60Zte/xGTLubH0QE9IlVXIrDZyM
	NaU2Wqb35qH6kendtGI0zX2aaobp1Um8BT9zK5i8Niu1TGGunBhFPQeAeEMrcKHT0QS+dvVdJIr
	j8bOmq12ccQbVml/DIoSLOWquDTvZFleTptQsHQ4A
X-Google-Smtp-Source: AGHT+IFMkzS4Y/7PQ6UUnwKl/jab9ys6WIBNxJDpxdHCq9tIyyzgyoZ9JupQVtyWu+B+0b7AmFDlzA==
X-Received: by 2002:a05:690c:62c7:b0:703:b47a:72f9 with SMTP id 00721157ae682-710d99a1ad4mr22932477b3.3.1749026215119;
        Wed, 04 Jun 2025 01:36:55 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70f8acd52b2sm29000127b3.82.2025.06.04.01.36.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 01:36:54 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e7dd151f79eso6290893276.2;
        Wed, 04 Jun 2025 01:36:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV3N2HWw/NXXwNOH5l/a3BO18JWZl5ux8ICofTTlwEsFhAtMhyUbn6avonbaj+eNN60L1YIQPbeFl3N67Yl/tI=@lists.infradead.org, AJvYcCWmdr5rLJEvaawGca/aHAukfqijKvYBT7CZXTLYuuOtEuBWMYNfRiy72/p93o9g42N3qUEoUvuA0+vBpQW0FsH7@lists.infradead.org
X-Received: by 2002:a05:6902:2684:b0:e7d:cfd0:957f with SMTP id
 3f1490d57ef6-e8179c4e822mr2337109276.11.1749026214087; Wed, 04 Jun 2025
 01:36:54 -0700 (PDT)
MIME-Version: 1.0
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-1-237ac75ddb5e@tomeuvizoso.net> <2024813.jZfb76A358@diego>
In-Reply-To: <2024813.jZfb76A358@diego>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 4 Jun 2025 10:36:42 +0200
X-Gmail-Original-Message-ID: <CAAObsKB6UDp-yBE3oNNn0GkiVN0TeYFkL5nzQCroUHaSK47tUA@mail.gmail.com>
X-Gm-Features: AX0GCFvL5nJeCruhYVKFwWz9ImMH3rGz7U0FgI_gqBjbHTrFFbFoGu46LHESGLo
Message-ID: <CAAObsKB6UDp-yBE3oNNn0GkiVN0TeYFkL5nzQCroUHaSK47tUA@mail.gmail.com>
Subject: Re: [PATCH v6 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_013658_135388_02961F8A 
X-CRM114-Status: GOOD (  23.04  )
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
Cc: linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBKdW4gNCwgMjAyNSBhdCAxMDoyNeKAr0FNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gTWl0dHdvY2gsIDQuIEp1bmkgMjAyNSwgMDk6NTc6MTQg
TWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBUb21ldSBWaXpvc286Cj4gPiBB
ZGQgdGhlIGJpbmRpbmdzIGZvciB0aGUgTmV1cmFsIFByb2Nlc3NpbmcgVW5pdCBJUCBmcm9tIFJv
Y2tjaGlwLgo+ID4KPiA+IHYyOgo+ID4gLSBBZGFwdCB0byBuZXcgbm9kZSBzdHJ1Y3R1cmUgKG9u
ZSBub2RlIHBlciBjb3JlLCBlYWNoIHdpdGggaXRzIG93bgo+ID4gICBJT01NVSkKPiA+IC0gU2V2
ZXJhbCBtaXNjLiBmaXhlcyBmcm9tIFNlYmFzdGlhbiBSZWljaGVsCj4gPgo+ID4gdjM6Cj4gPiAt
IFNwbGl0IHJlZ2lzdGVyIGJsb2NrIGluIGl0cyBjb25zdGl0dWVudCBzdWJibG9ja3MsIGFuZCBv
bmx5IHJlcXVpcmUKPiA+ICAgdGhlIG9uZXMgdGhhdCB0aGUga2VybmVsIHdvdWxkIGV2ZXIgdXNl
IChOaWNvbGFzIEZyYXR0YXJvbGkpCj4gPiAtIEdyb3VwIHN1cHBsaWVzIChSb2IgSGVycmluZykK
PiA+IC0gRXhwbGFpbiB0aGUgd2F5IGluIHdoaWNoIHRoZSB0b3AgY29yZSBpcyBzcGVjaWFsIChS
b2IgSGVycmluZykKPiA+Cj4gPiB2NDoKPiA+IC0gQ2hhbmdlIHJlcXVpcmVkIG5vZGUgbmFtZSB0
byBucHVAIChSb2IgSGVycmluZyBhbmQgS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+IC0gUmVtb3Zl
IHVubmVlZGVkIGl0ZW1zOiAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+IC0gRml4IHVzZSBvZiBt
aW5JdGVtcy9tYXhJdGVtcyAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+IC0gQWRkIHJlZy1uYW1l
cyB0byBsaXN0IG9mIHJlcXVpcmVkIHByb3BlcnRpZXMgKEtyenlzenRvZiBLb3psb3dza2kpCj4g
PiAtIEZpeCBleGFtcGxlIChLcnp5c3p0b2YgS296bG93c2tpKQo+ID4KPiA+IHY1Ogo+ID4gLSBS
ZW5hbWUgZmlsZSB0byByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwgKEtyenlzenRvZiBL
b3psb3dza2kpCj4gPiAtIFN0cmVhbWxpbmUgY29tcGF0aWJsZSBwcm9wZXJ0eSAoS3J6eXN6dG9m
IEtvemxvd3NraSkKPiA+Cj4gPiB2NjoKPiA+IC0gUmVtb3ZlIG1lbnRpb24gdG8gTlZETEEsIGFz
IHRoZSBoYXJkd2FyZSBpcyBvbmx5IGluY2lkZW50YWxseSByZWxhdGVkCj4gPiAgIChLZXZlciBZ
YW5nKQo+ID4gLSBNYXJrIHBjbGsgYW5kIG5wdSBjbG9ja3MgYXMgcmVxdWlyZWQgYnkgYWxsIGNs
b2NrcyAoUm9iIEhlcnJpbmcpCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNo
ZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBU
b21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4KPiA+IFJldmlld2VkLWJ5OiBLcnp5
c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4gPiAtLS0K
PiA+ICAuLi4vYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCAgICB8
IDE0NCArKysrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQ0IGluc2Vy
dGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbAo+
ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAuLjlhNWU5ZTIxMzkxMmQwOTk3ZGEyZjZhZTI2MTg5YWRmMDQ0ZGNj
N2IKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1sCj4gPiBAQCAtMCwwICsx
LDE0NCBAQAo+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1Ig
QlNELTItQ2xhdXNlKQo+ID4gKyVZQU1MIDEuMgo+ID4gKy0tLQo+ID4gKyRpZDogaHR0cDovL2Rl
dmljZXRyZWUub3JnL3NjaGVtYXMvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCMK
PiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFt
bCMKPiA+ICsKPiA+ICt0aXRsZTogTmV1cmFsIFByb2Nlc3NpbmcgVW5pdCBJUCBmcm9tIFJvY2tj
aGlwCj4gPiArCj4gPiArbWFpbnRhaW5lcnM6Cj4gPiArICAtIFRvbWV1IFZpem9zbyA8dG9tZXVA
dG9tZXV2aXpvc28ubmV0Pgo+ID4gKwo+ID4gK2Rlc2NyaXB0aW9uOgo+ID4gKyAgUm9ja2NoaXAg
SVAgZm9yIGFjY2VsZXJhdGluZyBpbmZlcmVuY2Ugb2YgbmV1cmFsIG5ldHdvcmtzLgo+ID4gKwo+
ID4gKyAgVGhlcmUgaXMgdG8gYmUgYSBub2RlIHBlciBlYWNoIGNvcmUgaW4gdGhlIE5QVS4gSW4g
Um9ja2NoaXAncyBkZXNpZ24gdGhlcmUKPiA+ICsgIHdpbGwgYmUgb25lIGNvcmUgdGhhdCBpcyBz
cGVjaWFsIGFuZCBuZWVkcyB0byBiZSBwb3dlcmVkIG9uIGJlZm9yZSBhbnkgb2YgdGhlCj4gPiAr
ICBvdGhlciBjb3JlcyBjYW4gYmUgdXNlZC4gVGhpcyBzcGVjaWFsIGNvcmUgaXMgY2FsbGVkIHRo
ZSB0b3AgY29yZSBhbmQgc2hvdWxkCj4gPiArICBoYXZlIHRoZSBjb21wYXRpYmxlIHN0cmluZyB0
aGF0IGNvcnJlc3BvbmRzIHRvIHRvcCBjb3Jlcy4KPiA+ICsKPiA+ICtwcm9wZXJ0aWVzOgo+ID4g
KyAgJG5vZGVuYW1lOgo+ID4gKyAgICBwYXR0ZXJuOiAnXm5wdUBbYS1mMC05XSskJwo+ID4gKwo+
ID4gKyAgY29tcGF0aWJsZToKPiA+ICsgICAgZW51bToKPiA+ICsgICAgICAtIHJvY2tjaGlwLHJr
MzU4OC1ya25uLWNvcmUtdG9wCj4gPiArICAgICAgLSByb2NrY2hpcCxyazM1ODgtcmtubi1jb3Jl
Cj4gPiArCj4gPiArICByZWc6Cj4gPiArICAgIG1heEl0ZW1zOiAzCj4gPiArCj4gPiArICByZWct
bmFtZXM6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gY29uc3Q6IHBjCj4gPiArICAgICAg
LSBjb25zdDogY25hCj4gPiArICAgICAgLSBjb25zdDogY29yZQo+ID4gKwo+ID4gKyAgY2xvY2tz
Ogo+ID4gKyAgICBtYXhJdGVtczogNAo+ID4gKwo+ID4gKyAgY2xvY2stbmFtZXM6Cj4gPiArICAg
IGl0ZW1zOgo+ID4gKyAgICAgIC0gY29uc3Q6IGFjbGsKPiA+ICsgICAgICAtIGNvbnN0OiBoY2xr
Cj4gPiArICAgICAgLSBjb25zdDogbnB1Cj4gPiArICAgICAgLSBjb25zdDogcGNsawo+ID4gKwo+
ID4gKyAgaW50ZXJydXB0czoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIGlvbW11
czoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIG5wdS1zdXBwbHk6IHRydWUKPiA+
ICsKPiA+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiArCj4gPiAr
ICByZXNldHM6Cj4gPiArICAgIG1heEl0ZW1zOiAyCj4gPiArCj4gPiArICByZXNldC1uYW1lczoK
PiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogc3JzdF9hCj4gPiArICAgICAgLSBj
b25zdDogc3JzdF9oCj4gPiArCj4gPiArICBzcmFtLXN1cHBseTogdHJ1ZQo+ID4gKwo+ID4gK3Jl
cXVpcmVkOgo+ID4gKyAgLSBjb21wYXRpYmxlCj4gPiArICAtIHJlZwo+ID4gKyAgLSByZWctbmFt
ZXMKPiA+ICsgIC0gY2xvY2tzCj4gPiArICAtIGNsb2NrLW5hbWVzCj4gPiArICAtIGludGVycnVw
dHMKPiA+ICsgIC0gaW9tbXVzCj4gPiArICAtIHBvd2VyLWRvbWFpbnMKPiA+ICsgIC0gcmVzZXRz
Cj4gPiArICAtIHJlc2V0LW5hbWVzCj4gPiArICAtIG5wdS1zdXBwbHkKPiA+ICsgIC0gc3JhbS1z
dXBwbHkKPiA+ICsKPiA+ICthbGxPZjoKPiA+ICsgIC0gaWY6Cj4gPiArICAgICAgcHJvcGVydGll
czoKPiA+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gPiArICAgICAgICAgIGNvbnRhaW5zOgo+ID4g
KyAgICAgICAgICAgIGVudW06Cj4gPiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrbm4tY29y
ZS10b3AKPgo+IHNob3VsZCBiZSByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLXRvcCBJIHRoaW5r
Cj4KPiA+ICsgICAgdGhlbjoKPiA+ICsgICAgICBwcm9wZXJ0aWVzOgo+ID4gKyAgICAgICAgY2xv
Y2tzOgo+ID4gKyAgICAgICAgICBtaW5JdGVtczogNAo+ID4gKwo+ID4gKyAgICAgICAgY2xvY2st
bmFtZXM6Cj4gPiArICAgICAgICAgIG1pbkl0ZW1zOiA0Cj4gPiArICAtIGlmOgo+ID4gKyAgICAg
IHByb3BlcnRpZXM6Cj4gPiArICAgICAgICBjb21wYXRpYmxlOgo+ID4gKyAgICAgICAgICBjb250
YWluczoKPiA+ICsgICAgICAgICAgICBlbnVtOgo+ID4gKyAgICAgICAgICAgICAgLSByb2NrY2hp
cCxya25uLWNvcmUKPgo+IHNob3VsZCBiZSByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlCgpUaGFu
a3MuIEFjdHVhbGx5LCBhbGwgdGhlIGFkZE9mIHNlY3Rpb24gaXMgbm90IG5lZWRlZCBhbnkgbW9y
ZSBhcyB3ZQpub3cga25vdyB0aGF0IGZyb20gYSByZXNvdXJjZXMgcG9pbnQgb2YgdmlldyBhbGwg
Y29yZXMgYXJlIHRoZSBzYW1lLgoKQ2hlZXJzLAoKVG9tZXUKCj4gPiArICAgIHRoZW46Cj4gPiAr
ICAgICAgcHJvcGVydGllczoKPiA+ICsgICAgICAgIGNsb2NrczoKPiA+ICsgICAgICAgICAgbWF4
SXRlbXM6IDIKPiA+ICsgICAgICAgIGNsb2NrLW5hbWVzOgo+ID4gKyAgICAgICAgICBtYXhJdGVt
czogMgo+Cj4KPiBIZWlrbwo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
