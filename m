Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5A09EE4991
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 11:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9Uhq2+6A06R8FwutoQ1mFebpvSTr+ElKYjI8DsfJQA=; b=R2567hVg/BVoTT
	TSt41tinJrtnGoSwBc7H7lFhmNx3gnALSg8vn6yX71Ok8FsJ/V6DtDEoh04yJEspZOewpxEOEoea/
	mJaIPoflTmCIc8eVd+UXoxb+BYHsBQoXldsFlWqvNAgocc/nxJH7w8EIEKjUzrECSByhX3nLEXqpn
	6F4weIN++910jopTDkqlA1qgmiU8v6npkodIk2nSaukJdwAjm+WiU/ow3KqeBLwwt2SJNMD0XS4o/
	QjeAhgD2+avCK9cCdxVauA7B7ZjeF3GvZe7uBYx7kEAmooSzC8d+zUcX6smqLFjfJcU8ELiO/r87v
	b+HRUH8YIiCqZ91ZP6Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLHO-00000009FOb-1wKo;
	Wed, 11 Sep 2024 11:12:58 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soL8G-00000009DLO-3LRM
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 11:03:34 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-6d3f4218081so63966627b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2024 04:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1726052611; x=1726657411; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AxDPM9JMquUGtRkhciAkGUBMtgFCHGxBT/7mvWlerhM=;
        b=s4gnhhFk5UwZM0GMI2rR0RlXUnoGuxFlFsPogfhn86ptX8+CNxPzBscDwxg+jK7OzA
         ZixYGwAxKzjiIz580+YoZhdWx+wtzG/WrGP4tCP1hybYPuxJ6XP4JM/dHKhwa0yDuGoI
         cyjxUqjMU2UA6ci9TGwFOMha+pa+gmT82Sj3x8Ij1jZHOeXc0t84l0RtZQMzijEB9+M7
         jJSHgSHT6URcmXKBj9YVAMS4OqIVrrl8MgxF72LBuFNlGeDixugcAFMuOJU3aRLgLj7C
         T7NsM44k4LZpv8YGx3strBCg4EKw9LF2u6OcUKiM8nywNlVvnxkxlF4bVNITVF6LNZZQ
         hNQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726052611; x=1726657411;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AxDPM9JMquUGtRkhciAkGUBMtgFCHGxBT/7mvWlerhM=;
        b=lReylnIsm3duvCSa2YItKpAMmagDKmiBj23LSpcXgIOu1H+kIY5z2Fk9GwJFX2nFuj
         3gJLveW9vsaAnLN4C3AmgagLRdHEHUgU+7y+CsovBxPZ/TPDfCnA0zxAVbVj9JAHKy61
         BKHHNdJFNsVEMPeXKKu7io8ejC6idre+kP5ZBX96zInF91CIIYFD8TY7UorD9u0PnG3/
         8iBbA1EsMEC9G34/j7JsZ9bWFXQCbWlXuPPoBoQ/V/9CJIVlfFheuoGK6VMPb/gBrhCG
         h8fMkCSOqRZz5fKHt8hE2T6x9Q9bSw5OJgzF9loVgiv/RhNw5Ch0wY12BIJNI9Ll8F8T
         XWEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXA5LxyShJv4Euxo1hENnagxf0SNrywOSsdcGqUyuQyzXrjf1+9GoQ1N5Bk5Ch9+1kR3Xj1XJTHcovTJKSUpg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxMkDcUWk/rXPD1gcZIHLs5buN0L8B0jiz67z5+EtePzWt8oVNX
	x1eoDD20g6cKv0Qu2eRU+B063u3tbqv78Gy50TWO+ldrw9Cg9+GJV0s40GaC2g8=
X-Google-Smtp-Source: AGHT+IEhsbtEYbgUiTznSKki2oUq9aZWTuvP7MNu/x6+us3Ml3lcN3Ux0fk+3iw8UdfYZtTax2hhqg==
X-Received: by 2002:a05:690c:87:b0:6a9:5953:a64e with SMTP id 00721157ae682-6db451544e7mr183853807b3.34.1726052610873;
        Wed, 11 Sep 2024 04:03:30 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6db9645954fsm6447687b3.36.2024.09.11.04.03.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2024 04:03:30 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dff1ccdc17bso6752917276.0;
        Wed, 11 Sep 2024 04:03:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUSC4S18rI6XgimSDnWQ7C19VG4pJ30juQDASOlPPW1Hq6b9bvSufJdoNdv4Lax91Tx+6Qe2eNEw4F2U85qcUmE@lists.infradead.org, AJvYcCWnvJZRT3WiqwfDPEVEl4OnyKf/LzjeOsSApaG1FP3b8adKBOmX6IvbX4EvqaTZKmCc3AYsuiELRbIXPXWVKd0=@lists.infradead.org
X-Received: by 2002:a05:6902:2e11:b0:e11:698f:8843 with SMTP id
 3f1490d57ef6-e1d349cf097mr17492302276.44.1726052610124; Wed, 11 Sep 2024
 04:03:30 -0700 (PDT)
MIME-Version: 1.0
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-2-060e48eea250@tomeuvizoso.net> <ffviz6ak6qsn2reg5y35aerzy7wxfx6fzix6xjyminbhfcguus@clszdjakdcjd>
 <CAAObsKCx+r5UuESnrPem1Rb1-BF4i8FVwu6uozWhABOWoq+M4Q@mail.gmail.com>
 <CAAObsKChaBZ2C5ezWsiZ_LoN6R2HFhFA9=UNSRYB6cyeo-jreg@mail.gmail.com> <vmgk4wmlxbsb7lphq2ep3xnxx3mbv6e6lecihtftxoyp5lidvy@mectcwirrlek>
In-Reply-To: <vmgk4wmlxbsb7lphq2ep3xnxx3mbv6e6lecihtftxoyp5lidvy@mectcwirrlek>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 11 Sep 2024 13:03:18 +0200
X-Gmail-Original-Message-ID: <CAAObsKAigVVFWuoATTBWbCEfwg0RRHXa=Ehw2OQJyug6EdCDnA@mail.gmail.com>
Message-ID: <CAAObsKAigVVFWuoATTBWbCEfwg0RRHXa=Ehw2OQJyug6EdCDnA@mail.gmail.com>
Subject: Re: [PATCH 2/9] iommu/rockchip: Attach multiple power domains
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Oded Gabbay <ogabbay@kernel.org>, Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_040333_050580_60C18536 
X-CRM114-Status: GOOD (  40.17  )
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

T24gVGh1LCBKdW4gMTMsIDIwMjQgYXQgMTE6MzjigK9QTSBTZWJhc3RpYW4gUmVpY2hlbAo8c2Vi
YXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIFRodSwg
SnVuIDEzLCAyMDI0IGF0IDExOjM0OjAyQU0gR01ULCBUb21ldSBWaXpvc28gd3JvdGU6Cj4gPiBP
biBUaHUsIEp1biAxMywgMjAyNCBhdCAxMToyNOKAr0FNIFRvbWV1IFZpem9zbyA8dG9tZXVAdG9t
ZXV2aXpvc28ubmV0PiB3cm90ZToKPiA+ID4gT24gVGh1LCBKdW4gMTMsIDIwMjQgYXQgMjowNeKA
r0FNIFNlYmFzdGlhbiBSZWljaGVsCj4gPiA+IDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEu
Y29tPiB3cm90ZToKPiA+ID4gPiBPbiBXZWQsIEp1biAxMiwgMjAyNCBhdCAwMzo1Mjo1NVBNIEdN
VCwgVG9tZXUgVml6b3NvIHdyb3RlOgo+ID4gPiA+ID4gSU9NTVVzIHdpdGggbXVsdGlwbGUgYmFz
ZSBhZGRyZXNzZXMgY2FuIGFsc28gaGF2ZSBtdWx0aXBsZSBwb3dlcgo+ID4gPiA+ID4gZG9tYWlu
cy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGUgYmFzZSBmcmFtZXdvcmsgb25seSB0YWtlcyBjYXJl
IG9mIGEgc2luZ2xlIHBvd2VyIGRvbWFpbiwgYXMgc29tZQo+ID4gPiA+ID4gZGV2aWNlcyB3aWxs
IG5lZWQgZm9yIHRoZXNlIHBvd2VyIGRvbWFpbnMgdG8gYmUgcG93ZXJlZCBvbiBpbiBhIHNwZWNp
ZmljCj4gPiA+ID4gPiBvcmRlci4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBVc2UgYSBoZWxwZXIgZnVu
Y3Rpb24gdG8gc3RhYmxpc2ggbGlua3MgaW4gdGhlIG9yZGVyIGluIHdoaWNoIHRoZXkgYXJlCj4g
PiA+ID4gPiBpbiB0aGUgRFQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhpcyBpcyBuZWVkZWQgYnkg
dGhlIElPTU1VIHVzZWQgYnkgdGhlIE5QVSBpbiB0aGUgUkszNTg4Lgo+ID4gPiA+ID4KPiA+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0Pgo+
ID4gPiA+ID4gLS0tCj4gPiA+ID4KPiA+ID4gPiBUbyBtZSBpdCBsb29rcyBsaWtlIHRoaXMgaXMg
bXVsdGlwbGUgSU9NTVVzLCB3aGljaCBzaG91bGQgZWFjaCBnZXQKPiA+ID4gPiB0aGVpciBvd24g
bm9kZS4gSSBkb24ndCBzZWUgYSBnb29kIHJlYXNvbiBmb3IgbWVyZ2luZyB0aGVzZQo+ID4gPiA+
IHRvZ2V0aGVyLgo+ID4gPgo+ID4gPiBJIGhhdmUgbWFkZSBxdWl0ZSBhIGZldyBhdHRlbXB0cyBh
dCBzcGxpdHRpbmcgdGhlIElPTU1VcyBhbmQgYWxzbyB0aGUKPiA+ID4gY29yZXMsIGJ1dCBJIHdh
c24ndCBhYmxlIHRvIGdldCB0aGluZ3Mgd29ya2luZyBzdGFibHkuIFRoZSBUUk0gaXMKPiA+ID4g
cmVhbGx5IHNjYW50IGFib3V0IGhvdyB0aGUgNCBJT01NVSBpbnN0YW5jZXMgcmVsYXRlIHRvIGVh
Y2ggb3RoZXIsIGFuZAo+ID4gPiB3aGF0IHRoZSBmb3VydGggb25lIGlzIGZvci4KPiA+ID4KPiA+
ID4gR2l2ZW4gdGhhdCB0aGUgdmVuZG9yIGRyaXZlciB0cmVhdHMgdGhlbSBhcyBhIHNpbmdsZSBJ
T01NVSB3aXRoIGZvdXIKPiA+ID4gaW5zdGFuY2VzIGFuZCB3ZSBkb24ndCBoYXZlIGFueSBpbmZv
cm1hdGlvbiBvbiB0aGVtLCBJIHJlc2lnbmVkIG15c2VsZgo+ID4gPiB0byBqdXN0IGhhdmUgdGhl
bSBhcyBhIHNpbmdsZSBkZXZpY2UuCj4gPiA+Cj4gPiA+IEkgd291bGQgbG92ZSB0byBiZSBwcm92
ZWQgd3JvbmcgdGhvdWdoIGFuZCBmaW5kIGEgd2F5IGZvIGdldHRpbmcKPiA+ID4gdGhpbmdzIHN0
YWJseSBhcyBkaWZmZXJlbnQgZGV2aWNlcyBzbyB0aGV5IGNhbiBiZSBwb3dlcmVkIG9uIGFuZCBv
ZmYKPiA+ID4gYXMgbmVlZGVkLiBXZSBjb3VsZCBzYXZlIHF1aXRlIHNvbWUgY29kZSBhcyB3ZWxs
Lgo+ID4KPiA+IEZXSVcsIGhlcmUgYSBmZXcgd2F5cyBob3cgSSB0cmllZCB0byBzdHJ1Y3R1cmUg
dGhlIERUIG5vZGVzLCBub25lIG9mCj4gPiB0aGVzZSB3b3JrZWQgcmVsaWFibHk6Cj4gPgo+ID4g
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3RvbWV1L2xpbnV4Ly0vYmxvYi82LjEwLXJv
Y2tldC1tdWx0aXBsZS1kZXZpY2VzLXBvd2VyL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4cy5kdHNpP3JlZl90eXBlPWhlYWRzI0wxMTYzCj4gPiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvdG9tZXUvbGludXgvLS9ibG9iLzYuMTAtcm9ja2V0LXNjaGVtYS1zdWJub2Rl
cy8vYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2k/cmVmX3R5cGU9aGVh
ZHMjTDExNjIKPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy90b21ldS9saW51eC8t
L2Jsb2IvNi4xMC1yb2NrZXQtbXVsdGlwbGUtZGV2aWNlcy8vYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODhzLmR0c2k/cmVmX3R5cGU9aGVhZHMjTDExNjMKPiA+IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy90b21ldS9saW51eC8tL2Jsb2IvNi4xMC1yb2NrZXQtbXVsdGlw
bGUtaW9tbXVzLy9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaT9yZWZf
dHlwZT1oZWFkcyNMMjY2OQo+ID4KPiA+IEkgY2FuIHZlcnkgd2VsbCBpbWFnaW5lIEkgbWlzc2Vk
IHNvbWUgd2F5IG9mIGdldHRpbmcgdGhpcyB0byB3b3JrLCBidXQKPiA+IGZvciBldmVyeSBhdHRl
bXB0LCB0aGUgZG9tYWlucywgaW9tbXVzIGFuZCBjb3JlcyB3ZXJlIHJlc3VtZWQgaW4KPiA+IGRp
ZmZlcmVudCBvcmRlcnMgdGhhdCBwcmVzdW1hYmx5IGNhdXNlZCBwcm9ibGVtcyBkdXJpbmcgY29u
Y3VycmVudAo+ID4gZXhlY3V0aW9uIGZvIHdvcmtsb2Fkcy4KPiA+Cj4gPiBTbyBJIGZlbGwgYmFj
ayB0byB3aGF0IHRoZSB2ZW5kb3IgZHJpdmVyIGRvZXMsIHdoaWNoIHdvcmtzIHJlbGlhYmx5Cj4g
PiAoYnV0IGFsbCBjb3JlcyBoYXZlIHRvIGJlIHBvd2VyZWQgb24gYXQgdGhlIHNhbWUgdGltZSku
Cj4KPiBNaC4gVGhlICI2LjEwLXJvY2tldC1tdWx0aXBsZS1pb21tdXMiIGJyYW5jaCBzZWVtcyB3
cm9uZy4gVGhlcmUgaXMKPiBvbmx5IG9uZSBpb21tdSBub2RlIGluIHRoYXQuIEkgd291bGQgaGF2
ZSBleHBlY3RlZCBhIHRlc3Qgd2l0aAo+Cj4gcmtubiB7Cj4gICAgIC8vIGNvbWJpbmVkIGRldmlj
ZQo+Cj4gICAgIGlvbW11cyA9IDwmaW9tbXUxPiwgPCZpb21tdTI+LCAuLi47Cj4gfTsKCllvdSBh
cmUgcmlnaHQsIEknbSBhZnJhaWQgSSBsb3N0IHRob3NlIGNoYW5nZXMuLi4KCj4gT3RoZXJ3aXNl
IEkgdGhpbmsgSSB3b3VsZCBnbyB3aXRoIHRoZSBzY2hlbWEtc3Vibm9kZXMgdmFyaWFudC4gVGhl
Cj4gZHJpdmVyIGNhbiBpbml0aWFsbHkgd2FsayB0aHJvdWdoIHRoZSBzdWItbm9kZXMgYW5kIGNv
bGxlY3QgdGhlCj4gcmVzb3VyY2VzIGludG8gdGhlIG1haW4gZGV2aWNlLCBzbyBvbiB0aGUgZHJp
dmVyIHNpZGUgbm90aGluZyB3b3VsZAo+IHJlYWxseSBjaGFuZ2UuIEJ1dCB0aGF0IGhhcyBhIGNv
dXBsZSBvZiBhZHZhbnRhZ2VzOgo+Cj4gMS4gRFQgYW5kIERUIGJpbmRpbmcgYXJlIGVhc2llciB0
byByZWFkCj4gMi4gSXQncyBzaW1pbGFyIHRvIGUuZy4gQ1BVIGNvcmVzIGVhY2ggaGF2aW5nIHRo
ZWlyIG93biBub2RlCj4gMy4gRWFzeSB0byBleHRlbmQgdG8gbW9yZSBjb3JlcyBpbiB0aGUgZnV0
dXJlCj4gNC4gVGhlIGtlcm5lbCBjYW4gZWFzaWx5IHN3aXRjaCB0byBwcm9wZXIgcGVyLWNvcmUg
ZGV2aWNlIG1vZGVsIHdoZW4KPiAgICB0aGUgcHJvYmxlbSBoYXMgYmVlbiBpZGVudGlmaWVkCgpZ
b3UgbWVhbiBoYXZpbmcgc3Vibm9kZXMgY29udGFpbmluZyB0aGUgZGlmZmVyZW50IHJlc291cmNl
cyB0aGF0IGEKY29yZSB1c2VzIHN1Y2ggYXMgY2xvY2tzLCBtZW1vcnkgcmVzb3VyY2VzLCBwb3dl
ciBkb21haW4sIGV0Yz8gVGhlCnByb2JsZW0gd2l0aCB0aGF0IGlzIHRoYXQgdGhlIGV4aXN0aW5n
IGNvZGUgaW4gdGhlIGtlcm5lbCBhc3N1bWVzIHRoYXQKdGhvc2UgcmVzb3VyY2VzIGFyZSBkaXJl
Y3RseSB3aXRoaW4gYSBkZXZpY2Ugbm9kZS4gT3IgZG8geW91IHN1Z2dlc3QKc29tZXRoaW5nIGVs
c2U/CgpUaGFua3MsCgpUb21ldQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
