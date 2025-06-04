Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CF0CC5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 07:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrqRGJ2R5l8kWDKBInkSyfpvA4ZTNk15j0/9agUFPS4=; b=1OpWkw/G5sPFXp
	luubvRmSoDO4KV3o8/vSsez4YN+ogn8JFx3uziVVOCp6/YheaP4cvdi0M+NMIO19MgrOp9EIelkp5
	aildA/QJwrHoM2NQlBjTyO44Vi3vDd6uwO1UTnBH8EeT1skIwWVmWdjaOAnXDMWI+/mpDVj/VPXbq
	3qh60jaEfykvvFSL+qr3Yp4cr23Sco2usHl2s/jXq+8KJNCyvsf/3ZpDOqATZw6FU5yUmWWGY5Jmy
	jiqbFxeMs2/aVFkkwDTAWk9phSiC89Q4fabZO2E0vFmj68MLFIYFl0epG9uKIoLf0d6lw8iY7UyPO
	ipflniBuZNooSGCRdYnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMiHm-0000000Ck1W-0viE;
	Wed, 04 Jun 2025 07:11:42 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMiHj-0000000Ck07-0hJo
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 07:11:40 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-70e4043c5b7so58430177b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 00:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1749021097; x=1749625897; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p+nHXGLB1NoYThzl7RUIYtz2LHj026ykSFmZ3xBykhI=;
        b=H50u3hqrUjGEtcC4UR27YfCgGel9fQDm7zl5DU4Q7BeeqnIY3clnXDoBA79XIT7ejg
         IgxFNdCM7omcY2Zc9PJJwdsHj1JZgbi8VJMJyJNcgatAZOgMCHfQPQbZF0Te/Zjr6Y3F
         cvfjFpyjYYE+9n5U0sG218aWy8KNNJfhnBbourUPAyUrLNaBUMxeGJDAIqVoHQbP4UZQ
         k7TKoNRqaGJj9Y/QbAgX3FIr/ulU/5HbDAJjBNAICXr9Da62Vgv9k9yuvm8xbUf7uV7b
         iCnayFMyfv8VGQd6fJfW7fLohB0J3Iz2mTJbiMPdfS85KZxuHN7VJUKHF27BaVxXIArp
         1HFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749021097; x=1749625897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p+nHXGLB1NoYThzl7RUIYtz2LHj026ykSFmZ3xBykhI=;
        b=DkLmSDi6SXmiqBoDgtNPkf8hPlUoRVS6vZq/R24LJ2NlY1Ag3mjCqofm3X8po0fvql
         OI0dyYUPivhhoyfvS6gkE+d2C0DpJIM/nst1T70nKIsGswhpzQitIHYnotTw8m0d6Bqn
         UyAfWBoobAMt0dHnub/O5EIbokCefyz9L3gv8i1c7qOdVgMMIcqm8Yef+po0Q/9p01kq
         HzBMo0x/B06fZwRWvlzSzyv5Xd5y+GLioGEIKyNaOR+usn1fblYyt9lOyPSb+RRDBd6Q
         oI9FlA0C8SXsQSPE90V3mlcxD+1W6J6l4L1HxZe8BrBWjE0fjmKzQutKFbQMa79SDn7W
         SpvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXN5+46ZWx+pMXU1F8nUiSxLljtbWJ+mvAzmqDxfVotf8O1VcEgQ2gnqPzeyYC5ElIWvbRAiUVmoIlBts8pHA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwcPPPIgk0BIm/eAKDNMprfojARW6zF7mhm4rPOL6rzeqY1AypH
	mL1aj0s+XowZ58zv9ZFUd5qNjlIXS2FLMKSf5TjArBuFBn5Xoza8g8Lggv7D5HzffEE=
X-Gm-Gg: ASbGnctSK2og7rOK65MQI08cWim+qK4Tvkddk+cXLrvkipMie+6ofwPBR9cfJDTJ3G0
	jmctltKtpJNi5Kzhz449vDfCWlJx7/VB5t9frZVH+J98ZpS+Vl+4yHyoect6uSPHrUTy1RWpNb6
	oF7IkjR4D43rl8aIoOlIKG8vQ9iMxy9tEsVRCRXUi6OYwU2W0WeyRSxE0MHwZXlwihIhWJnwz2J
	fMdn4aS4AlMRG4hMkCrLtN4nCr+gCGdH1JQcY6RhcC3tyVB6bR9wSORlHhZY5xvdwqNSpnS7ZXG
	l59Vyiw5HT2YZOxor/6s5cV47FL/x3siHxpCEUQFiMWYwBjznkGsJ2BLa9uzBvYI1CNoRbmpxIi
	mPe6MpLshAIezsGZ4bL4=
X-Google-Smtp-Source: AGHT+IFYAW1fOW49LTI/rUHj+zaq0Fj8rjNOgqTK+AthSVX8L+DR65dMj4itF7WVA0wwXhNYvrb1xw==
X-Received: by 2002:a05:690c:62c5:b0:709:6f9d:b566 with SMTP id 00721157ae682-710d9ea2342mr21210717b3.36.1749021097506;
        Wed, 04 Jun 2025 00:11:37 -0700 (PDT)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com. [209.85.219.182])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70f8abce561sm28873067b3.17.2025.06.04.00.11.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 00:11:36 -0700 (PDT)
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e812c817de0so3663600276.0;
        Wed, 04 Jun 2025 00:11:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUSlZ2CiSNoye++xW1o5CgzprH9hv2Rm7Q8AjtXZu3mkwge/4rcdtk7ccVmTnbw+MEXrkr5iIEqO+KG1ppl8UIa@lists.infradead.org, AJvYcCUV5rEsExz1Irvl09/ihQYq7DQO2cAshR3LzZShwNp/9fqHBwOaefBpOAOeCs6paHKnHM9bh9FdEjdn3FJdUSQ=@lists.infradead.org
X-Received: by 2002:a05:6902:6c12:b0:e81:4200:e227 with SMTP id
 3f1490d57ef6-e8179ef4b9amr1895455276.40.1749021096375; Wed, 04 Jun 2025
 00:11:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
 <20250520-6-10-rocket-v5-1-18c9ca0fcb3c@tomeuvizoso.net> <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
 <CAAObsKDE33kZ27XbgeWBqQzrZXDHwHzp2Q6A7y_osC50UG-n7g@mail.gmail.com>
In-Reply-To: <CAAObsKDE33kZ27XbgeWBqQzrZXDHwHzp2Q6A7y_osC50UG-n7g@mail.gmail.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 4 Jun 2025 09:11:25 +0200
X-Gmail-Original-Message-ID: <CAAObsKCZiBmy2kBm76V0cWfsLBbHnKzG4CS-bRUBc25k22K20A@mail.gmail.com>
X-Gm-Features: AX0GCFuzVw9QOJbPU8rAaiE__0pakSdSWD2x8uriT207nU1DMDYnxHzJRzNlcz4
Message-ID: <CAAObsKCZiBmy2kBm76V0cWfsLBbHnKzG4CS-bRUBc25k22K20A@mail.gmail.com>
Subject: Re: [PATCH v5 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_001139_436158_336C6CFC 
X-CRM114-Status: GOOD (  35.24  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBNYXkgMjgsIDIwMjUgYXQgNTozNOKAr1BNIFRvbWV1IFZpem9zbyA8dG9tZXVAdG9t
ZXV2aXpvc28ubmV0PiB3cm90ZToKPgo+IE9uIFdlZCwgTWF5IDI4LCAyMDI1IGF0IDM6NDHigK9Q
TSBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIE1h
eSAyMCwgMjAyNSBhdCA1OjI34oCvQU0gVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5u
ZXQ+IHdyb3RlOgo+ID4gPgo+ID4gPiBBZGQgdGhlIGJpbmRpbmdzIGZvciB0aGUgTmV1cmFsIFBy
b2Nlc3NpbmcgVW5pdCBJUCBmcm9tIFJvY2tjaGlwLgo+ID4gPgo+ID4gPiB2MjoKPiA+ID4gLSBB
ZGFwdCB0byBuZXcgbm9kZSBzdHJ1Y3R1cmUgKG9uZSBub2RlIHBlciBjb3JlLCBlYWNoIHdpdGgg
aXRzIG93bgo+ID4gPiAgIElPTU1VKQo+ID4gPiAtIFNldmVyYWwgbWlzYy4gZml4ZXMgZnJvbSBT
ZWJhc3RpYW4gUmVpY2hlbAo+ID4gPgo+ID4gPiB2MzoKPiA+ID4gLSBTcGxpdCByZWdpc3RlciBi
bG9jayBpbiBpdHMgY29uc3RpdHVlbnQgc3ViYmxvY2tzLCBhbmQgb25seSByZXF1aXJlCj4gPiA+
ICAgdGhlIG9uZXMgdGhhdCB0aGUga2VybmVsIHdvdWxkIGV2ZXIgdXNlIChOaWNvbGFzIEZyYXR0
YXJvbGkpCj4gPiA+IC0gR3JvdXAgc3VwcGxpZXMgKFJvYiBIZXJyaW5nKQo+ID4gPiAtIEV4cGxh
aW4gdGhlIHdheSBpbiB3aGljaCB0aGUgdG9wIGNvcmUgaXMgc3BlY2lhbCAoUm9iIEhlcnJpbmcp
Cj4gPiA+Cj4gPiA+IHY0Ogo+ID4gPiAtIENoYW5nZSByZXF1aXJlZCBub2RlIG5hbWUgdG8gbnB1
QCAoUm9iIEhlcnJpbmcgYW5kIEtyenlzenRvZiBLb3psb3dza2kpCj4gPiA+IC0gUmVtb3ZlIHVu
bmVlZGVkIGl0ZW1zOiAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+ID4gLSBGaXggdXNlIG9mIG1p
bkl0ZW1zL21heEl0ZW1zIChLcnp5c3p0b2YgS296bG93c2tpKQo+ID4gPiAtIEFkZCByZWctbmFt
ZXMgdG8gbGlzdCBvZiByZXF1aXJlZCBwcm9wZXJ0aWVzIChLcnp5c3p0b2YgS296bG93c2tpKQo+
ID4gPiAtIEZpeCBleGFtcGxlIChLcnp5c3p0b2YgS296bG93c2tpKQo+ID4gPgo+ID4gPiB2NToK
PiA+ID4gLSBSZW5hbWUgZmlsZSB0byByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwgKEty
enlzenRvZiBLb3psb3dza2kpCj4gPiA+IC0gU3RyZWFtbGluZSBjb21wYXRpYmxlIHByb3BlcnR5
IChLcnp5c3p0b2YgS296bG93c2tpKQo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3Rp
YW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiA+ID4gU2lnbmVk
LW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+Cj4gPiA+IC0tLQo+
ID4gPiAgLi4uL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwgICAg
fCAxNDcgKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQ3IGlu
c2VydGlvbnMoKykKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3Jl
LnlhbWwKPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMC4uOWViNDI2MzY3YWZjYmMwM2MzODdkNDNjNGI4
MjUwY2RkMWI5ZWU4Ngo+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1s
Cj4gPiA+IEBAIC0wLDAgKzEsMTQ3IEBACj4gPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiA+ID4gKyVZQU1MIDEuMgo+ID4gPiAr
LS0tCj4gPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25wdS9yb2NrY2hp
cCxyazM1ODgtcmtubi1jb3JlLnlhbWwjCj4gPiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJl
ZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiA+ID4gKwo+ID4gPiArdGl0bGU6IE5ldXJh
bCBQcm9jZXNzaW5nIFVuaXQgSVAgZnJvbSBSb2NrY2hpcAo+ID4gPiArCj4gPiA+ICttYWludGFp
bmVyczoKPiA+ID4gKyAgLSBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4KPiA+
ID4gKwo+ID4gPiArZGVzY3JpcHRpb246Cj4gPiA+ICsgIFJvY2tjaGlwIElQIGZvciBhY2NlbGVy
YXRpbmcgaW5mZXJlbmNlIG9mIG5ldXJhbCBuZXR3b3JrcywgYmFzZWQgb24gTlZJRElBJ3MKPiA+
ID4gKyAgb3BlbiBzb3VyY2UgTlZETEEgSVAuCj4gPiA+ICsKPiA+ID4gKyAgVGhlcmUgaXMgdG8g
YmUgYSBub2RlIHBlciBlYWNoIGNvcmUgaW4gdGhlIE5QVS4gSW4gUm9ja2NoaXAncyBkZXNpZ24g
dGhlcmUKPiA+ID4gKyAgd2lsbCBiZSBvbmUgY29yZSB0aGF0IGlzIHNwZWNpYWwgYW5kIG5lZWRz
IHRvIGJlIHBvd2VyZWQgb24gYmVmb3JlIGFueSBvZiB0aGUKPiA+ID4gKyAgb3RoZXIgY29yZXMg
Y2FuIGJlIHVzZWQuIFRoaXMgc3BlY2lhbCBjb3JlIGlzIGNhbGxlZCB0aGUgdG9wIGNvcmUgYW5k
IHNob3VsZAo+ID4gPiArICBoYXZlIHRoZSBjb21wYXRpYmxlIHN0cmluZyB0aGF0IGNvcnJlc3Bv
bmRzIHRvIHRvcCBjb3Jlcy4KPiA+Cj4gPiBJcyB0aGlzIHJlYWxseSBhIGRpc3RpbmN0aW9uIGlu
IHRoZSBoL3c/IElmIHlvdSBjaGFuZ2Ugd2hpY2ggY29yZSBpcwo+ID4gdGhlIHRvcCBvbmUgaW4g
dGhlIERULCBkb2VzIGl0IHN0aWxsIHdvcms/Cj4KPiBObywgSSByZWFsbHkgbmVlZCB0byBwb3dl
ciBvbiB0aGF0IG9uZSBiZWZvcmUgdGhlIG90aGVycyBjYW4gd29yayAodGhlCj4gZmlyc3QgY29y
ZSBpcyBhbHNvIG1hcmtlZCBhcyBzcGVjaWFsIGluIGEgZGlhZ3JhbSBpbiB0aGUgVFJNKS4KPgo+
ID4gPiArCj4gPiA+ICtwcm9wZXJ0aWVzOgo+ID4gPiArICAkbm9kZW5hbWU6Cj4gPiA+ICsgICAg
cGF0dGVybjogJ15ucHVAW2EtZjAtOV0rJCcKPiA+ID4gKwo+ID4gPiArICBjb21wYXRpYmxlOgo+
ID4gPiArICAgIGVudW06Cj4gPiA+ICsgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUt
dG9wCj4gPiA+ICsgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUKPiA+ID4gKwo+ID4g
PiArICByZWc6Cj4gPiA+ICsgICAgbWF4SXRlbXM6IDMKPiA+ID4gKwo+ID4gPiArICByZWctbmFt
ZXM6Cj4gPiA+ICsgICAgaXRlbXM6Cj4gPiA+ICsgICAgICAtIGNvbnN0OiBwYwo+ID4gPiArICAg
ICAgLSBjb25zdDogY25hCj4gPiA+ICsgICAgICAtIGNvbnN0OiBjb3JlCj4gPiA+ICsKPiA+ID4g
KyAgY2xvY2tzOgo+ID4gPiArICAgIG1pbkl0ZW1zOiAyCj4gPiA+ICsgICAgbWF4SXRlbXM6IDQK
PiA+ID4gKwo+ID4gPiArICBjbG9jay1uYW1lczoKPiA+ID4gKyAgICBpdGVtczoKPiA+ID4gKyAg
ICAgIC0gY29uc3Q6IGFjbGsKPiA+ID4gKyAgICAgIC0gY29uc3Q6IGhjbGsKPiA+ID4gKyAgICAg
IC0gY29uc3Q6IG5wdQo+ID4gPiArICAgICAgLSBjb25zdDogcGNsawo+ID4gPiArICAgIG1pbkl0
ZW1zOiAyCj4gPgo+ID4gSXQgaXMgb2RkIHRoYXQgdGhlIG5vbi10b3AgY29yZXMgb25seSBoYXZl
IGJ1cyBjbG9ja3MgYW5kIG5vIG1vZHVsZQo+ID4gY2xvY2suIEJ1dCBiYXNlZCBvbiB0aGUgY2xv
Y2sgbmFtZXMsIEknbSBndWVzc2luZyB0aGUgYWNsay9oY2xrIGFyZQo+ID4gbm90IHNoYXJlZCwg
YnV0IHRoZSBucHUgYW5kIHBjbGsgYXJlIHNoYXJlZC4gU2luY2UgeW91IG1ha2UgdGhlIHRvcAo+
ID4gY29yZSBwcm9iZSBmaXJzdCwgdGhlbiBpdCB3aWxsIGVuYWJsZSB0aGUgc2hhcmVkIGNsb2Nr
cyBhbmQgdGhlCj4gPiBub24tdG9wIGNvcmVzIGRvbid0IGhhdmUgdG8gd29ycnkgYWJvdXQgdGhl
bS4gSWYgc28sIHRoYXQgaXMgd3JvbmcgYXMKPiA+IGl0IGlzIGxldHRpbmcgdGhlIHNvZnR3YXJl
IGRlc2lnbiBkZWZpbmUgdGhlIGJpbmRpbmdzLgo+Cj4gWWVzLCBJIHRoaW5rIGl0J3MgcHJvYmFi
bHkgYXMgeW91IHNheSwgYnV0IEkgZG9uJ3Qga25vdyBob3cgSSBjb3VsZAo+IGNoZWNrLiBNYXli
ZSBLZXZlciwgSGVpa28gb3IgU2ViYXN0aWFuIHdvdWxkIGhhdmUgYW55IGlkZWFzPwoKU28gSSB0
YWxrZWQgd2l0aCBLZXZlciBhbmQgSGVpa28gYWJvdXQgdGhpcywgYW5kIHRoZSBucHUgYW5kIHBj
bGsKY2xvY2tzIGFyZSBpbmRlZWQgc2hhcmVkIGFtb25nIGNvcmVzLgoKUmVnYXJkcywKClRvbWV1
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
