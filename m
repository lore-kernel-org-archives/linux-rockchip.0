Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 706C0EE01EE
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 11:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNDo/6Wk81YBOIGvTLDWIEbQg/UpFX/iHRDs6WopEo4=; b=K2aa1mwohvJT+W
	VPoRhfZlEgCkv4T8zhXc6rXdnL7rT44lpQ17e/FZ51/bDumu++q5RCro3G1qglETh7Z51hRUGlBXE
	aWLyYj4QyF3e7+uK9hrsOjEraSumoMGrFnCB6cthvOQ5Sanzc9cLIcPq8TEPMEEEeWQai9QCHhTVY
	IhiRmpBjt/IBs+E5Wf4CcoX16uunsPYJfSfzWAnOyj1A2Xltr7E2xbGlr6APi91iDR8QE9pHKZvmL
	77wRgSRloNZtAjxI2xxh8IJoo0pQNK3ovd1O8RfAEIIn4wPr8qHSpe4YPxruw4N7ILSzT6yetNwU1
	3U7x483pR+VFTlvaP2yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLIf-00000009Fek-0VYw;
	Wed, 11 Sep 2024 11:14:17 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLC4-00000009EAH-41p1
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 11:07:30 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-e1a8e305da0so6794190276.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2024 04:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1726052847; x=1726657647; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BfKqpT6gMHu6yKs0bohCo1aZwLC/RRj8ZGqLiNhs4jw=;
        b=V/A64/XlfkRJb9RoIcVFSKRKF2boreCVE3xr+iOTEkVKNSA5q2SiS5ayvwWUT+XHzm
         2FU1noh1WH/fBvkZ8QQTBQ9CnGAnL6VpOxOySQUY2FKGQKlWXBtcdDGjk4CrT92fms4P
         vQ05uV8CEAe/eutb+czi6yCGaM/PaeOt9cQcc8cdVZ/DkD+SoeuGUbugfI1vMz+ckyKj
         suqlPoKM2vm7q9m+TTTtM1v8tKO/uBpoCZxVGgtURj7ZkfQYr2eSCPOs+MYtmbtZqSlT
         X3hBA+xiTgmLzqRo84yT/t8Aib4By21+vyUmn3ceaEeZ7lIEYPxZI/OFbDG12LdIWd7U
         7vnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726052847; x=1726657647;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BfKqpT6gMHu6yKs0bohCo1aZwLC/RRj8ZGqLiNhs4jw=;
        b=Mp2duVp6NEeU3EueDbzQvo5xuceE3XXaKbceKZZvL4AdOn0oD6LvLp+7eb3Corpxc2
         oqtDsDzH/mTsPEtuK69CrohIta/xV/b1ohivwOnmCgQnQsOSy19NAFZ2GGLrbtqVJCUA
         sn+a6Zu2D2fmk1n76CROWyAsm/rw/oSIjLqOjMPRTLWU/R2OL05UmEnk4068dn6n0tWx
         Jl4xSF1KzJh7ntEI7zhk/B7nqFuuZWjEvT86dtpa/dyJWSh9oFX06X4JeJBaDZesoHPR
         q4BRsboQHp+iOfNrGQFTbcIHaE6X4qQ+Pnonzkt6CbHyM7tVnGiLd4klC7XMZebHuMoa
         k5CA==
X-Forwarded-Encrypted: i=1; AJvYcCXktKHNijGsDQw9ThVE5bbnqFoNoPM9f9e9jHLty5QvgbskUIx6WIziUaMO/0yvQ/kp7cB2qKPKx2RMeUWtFg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHZV0GDRnb5ltNSny7vTQqlzILdX9OgtkVkyGFPPOE61qjkFoW
	7fQPkmtWiMrZd2VZjs+edl0Dxxv2jUTosUr3kZF5QBNqmqMGhWsbNHLF1v5nZP8=
X-Google-Smtp-Source: AGHT+IGNBYgT67YM3PeG7ooWs+PZD1HM/IqEh1aei857MZgOHEjtZMrOrYTVnPr9sgvNyV6DqNWr1Q==
X-Received: by 2002:a05:6902:2b0c:b0:e1a:752e:d22 with SMTP id 3f1490d57ef6-e1d34a4fc34mr16384571276.57.1726052847465;
        Wed, 11 Sep 2024 04:07:27 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e1d7ba276adsm644689276.34.2024.09.11.04.07.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2024 04:07:26 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e1a9dc3f0a3so6930761276.0;
        Wed, 11 Sep 2024 04:07:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW1tcJZF8CWP6+HsRw0DDpVdIYVb0+tx5P2qzVy11hfYDrY6DH2XezKN7AOkfWLTPAb1jKg7GntQY2DMUQS6sU=@lists.infradead.org, AJvYcCXgZvDdJwEA7nGNAwuLfYSq9bsJbcv0h1H0e96fiqhKZB13ibyZaq8QORBMt7LjMulQj/3kwwHEjlvkTkrROhp0@lists.infradead.org
X-Received: by 2002:a05:6902:2004:b0:e1a:4082:e8f2 with SMTP id
 3f1490d57ef6-e1d348a15d7mr19851736276.4.1726052845474; Wed, 11 Sep 2024
 04:07:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-2-060e48eea250@tomeuvizoso.net> <ffviz6ak6qsn2reg5y35aerzy7wxfx6fzix6xjyminbhfcguus@clszdjakdcjd>
 <CAAObsKCx+r5UuESnrPem1Rb1-BF4i8FVwu6uozWhABOWoq+M4Q@mail.gmail.com>
 <CAAObsKChaBZ2C5ezWsiZ_LoN6R2HFhFA9=UNSRYB6cyeo-jreg@mail.gmail.com>
 <vmgk4wmlxbsb7lphq2ep3xnxx3mbv6e6lecihtftxoyp5lidvy@mectcwirrlek> <3516994c-7b06-4409-b9a9-975b9f7a60eb@arm.com>
In-Reply-To: <3516994c-7b06-4409-b9a9-975b9f7a60eb@arm.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 11 Sep 2024 13:07:14 +0200
X-Gmail-Original-Message-ID: <CAAObsKCGr8EUB747RN_w2BpTqLzGee+Bwm7HWB=xRbSBE2huUg@mail.gmail.com>
Message-ID: <CAAObsKCGr8EUB747RN_w2BpTqLzGee+Bwm7HWB=xRbSBE2huUg@mail.gmail.com>
Subject: Re: [PATCH 2/9] iommu/rockchip: Attach multiple power domains
To: Robin Murphy <robin.murphy@arm.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Joerg Roedel <joro@8bytes.org>, 
	Will Deacon <will@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
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
X-CRM114-CacheID: sfid-20240911_040729_030644_C9300427 
X-CRM114-Status: GOOD (  39.22  )
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

T24gRnJpLCBKdW4gMTQsIDIwMjQgYXQgMjowN+KAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMjAyNC0wNi0xMyAxMDozOCBwbSwgU2ViYXN0aWFu
IFJlaWNoZWwgd3JvdGU6Cj4gPiBIaSwKPiA+Cj4gPiBPbiBUaHUsIEp1biAxMywgMjAyNCBhdCAx
MTozNDowMkFNIEdNVCwgVG9tZXUgVml6b3NvIHdyb3RlOgo+ID4+IE9uIFRodSwgSnVuIDEzLCAy
MDI0IGF0IDExOjI04oCvQU0gVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+IHdy
b3RlOgo+ID4+PiBPbiBUaHUsIEp1biAxMywgMjAyNCBhdCAyOjA14oCvQU0gU2ViYXN0aWFuIFJl
aWNoZWwKPiA+Pj4gPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4+
Pj4gT24gV2VkLCBKdW4gMTIsIDIwMjQgYXQgMDM6NTI6NTVQTSBHTVQsIFRvbWV1IFZpem9zbyB3
cm90ZToKPiA+Pj4+PiBJT01NVXMgd2l0aCBtdWx0aXBsZSBiYXNlIGFkZHJlc3NlcyBjYW4gYWxz
byBoYXZlIG11bHRpcGxlIHBvd2VyCj4gPj4+Pj4gZG9tYWlucy4KPiA+Pj4+Pgo+ID4+Pj4+IFRo
ZSBiYXNlIGZyYW1ld29yayBvbmx5IHRha2VzIGNhcmUgb2YgYSBzaW5nbGUgcG93ZXIgZG9tYWlu
LCBhcyBzb21lCj4gPj4+Pj4gZGV2aWNlcyB3aWxsIG5lZWQgZm9yIHRoZXNlIHBvd2VyIGRvbWFp
bnMgdG8gYmUgcG93ZXJlZCBvbiBpbiBhIHNwZWNpZmljCj4gPj4+Pj4gb3JkZXIuCj4gPj4+Pj4K
PiA+Pj4+PiBVc2UgYSBoZWxwZXIgZnVuY3Rpb24gdG8gc3RhYmxpc2ggbGlua3MgaW4gdGhlIG9y
ZGVyIGluIHdoaWNoIHRoZXkgYXJlCj4gPj4+Pj4gaW4gdGhlIERULgo+ID4+Pj4+Cj4gPj4+Pj4g
VGhpcyBpcyBuZWVkZWQgYnkgdGhlIElPTU1VIHVzZWQgYnkgdGhlIE5QVSBpbiB0aGUgUkszNTg4
Lgo+ID4+Pj4+Cj4gPj4+Pj4gU2lnbmVkLW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21l
dXZpem9zby5uZXQ+Cj4gPj4+Pj4gLS0tCj4gPj4+Pgo+ID4+Pj4gVG8gbWUgaXQgbG9va3MgbGlr
ZSB0aGlzIGlzIG11bHRpcGxlIElPTU1Vcywgd2hpY2ggc2hvdWxkIGVhY2ggZ2V0Cj4gPj4+PiB0
aGVpciBvd24gbm9kZS4gSSBkb24ndCBzZWUgYSBnb29kIHJlYXNvbiBmb3IgbWVyZ2luZyB0aGVz
ZQo+ID4+Pj4gdG9nZXRoZXIuCj4gPj4+Cj4gPj4+IEkgaGF2ZSBtYWRlIHF1aXRlIGEgZmV3IGF0
dGVtcHRzIGF0IHNwbGl0dGluZyB0aGUgSU9NTVVzIGFuZCBhbHNvIHRoZQo+ID4+PiBjb3Jlcywg
YnV0IEkgd2Fzbid0IGFibGUgdG8gZ2V0IHRoaW5ncyB3b3JraW5nIHN0YWJseS4gVGhlIFRSTSBp
cwo+ID4+PiByZWFsbHkgc2NhbnQgYWJvdXQgaG93IHRoZSA0IElPTU1VIGluc3RhbmNlcyByZWxh
dGUgdG8gZWFjaCBvdGhlciwgYW5kCj4gPj4+IHdoYXQgdGhlIGZvdXJ0aCBvbmUgaXMgZm9yLgo+
ID4+Pgo+ID4+PiBHaXZlbiB0aGF0IHRoZSB2ZW5kb3IgZHJpdmVyIHRyZWF0cyB0aGVtIGFzIGEg
c2luZ2xlIElPTU1VIHdpdGggZm91cgo+ID4+PiBpbnN0YW5jZXMgYW5kIHdlIGRvbid0IGhhdmUg
YW55IGluZm9ybWF0aW9uIG9uIHRoZW0sIEkgcmVzaWduZWQgbXlzZWxmCj4gPj4+IHRvIGp1c3Qg
aGF2ZSB0aGVtIGFzIGEgc2luZ2xlIGRldmljZS4KPiA+Pj4KPiA+Pj4gSSB3b3VsZCBsb3ZlIHRv
IGJlIHByb3ZlZCB3cm9uZyB0aG91Z2ggYW5kIGZpbmQgYSB3YXkgZm8gZ2V0dGluZwo+ID4+PiB0
aGluZ3Mgc3RhYmx5IGFzIGRpZmZlcmVudCBkZXZpY2VzIHNvIHRoZXkgY2FuIGJlIHBvd2VyZWQg
b24gYW5kIG9mZgo+ID4+PiBhcyBuZWVkZWQuIFdlIGNvdWxkIHNhdmUgcXVpdGUgc29tZSBjb2Rl
IGFzIHdlbGwuCj4gPj4KPiA+PiBGV0lXLCBoZXJlIGEgZmV3IHdheXMgaG93IEkgdHJpZWQgdG8g
c3RydWN0dXJlIHRoZSBEVCBub2Rlcywgbm9uZSBvZgo+ID4+IHRoZXNlIHdvcmtlZCByZWxpYWJs
eToKPiA+Pgo+ID4+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy90b21ldS9saW51eC8t
L2Jsb2IvNi4xMC1yb2NrZXQtbXVsdGlwbGUtZGV2aWNlcy1wb3dlci9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaT9yZWZfdHlwZT1oZWFkcyNMMTE2Mwo+ID4+IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy90b21ldS9saW51eC8tL2Jsb2IvNi4xMC1yb2NrZXQt
c2NoZW1hLXN1Ym5vZGVzLy9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRz
aT9yZWZfdHlwZT1oZWFkcyNMMTE2Mgo+ID4+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy90b21ldS9saW51eC8tL2Jsb2IvNi4xMC1yb2NrZXQtbXVsdGlwbGUtZGV2aWNlcy8vYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2k/cmVmX3R5cGU9aGVhZHMjTDExNjMK
PiA+PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvdG9tZXUvbGludXgvLS9ibG9iLzYu
MTAtcm9ja2V0LW11bHRpcGxlLWlvbW11cy8vYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODhzLmR0c2k/cmVmX3R5cGU9aGVhZHMjTDI2NjkKPiA+Pgo+ID4+IEkgY2FuIHZlcnkgd2Vs
bCBpbWFnaW5lIEkgbWlzc2VkIHNvbWUgd2F5IG9mIGdldHRpbmcgdGhpcyB0byB3b3JrLCBidXQK
PiA+PiBmb3IgZXZlcnkgYXR0ZW1wdCwgdGhlIGRvbWFpbnMsIGlvbW11cyBhbmQgY29yZXMgd2Vy
ZSByZXN1bWVkIGluCj4gPj4gZGlmZmVyZW50IG9yZGVycyB0aGF0IHByZXN1bWFibHkgY2F1c2Vk
IHByb2JsZW1zIGR1cmluZyBjb25jdXJyZW50Cj4gPj4gZXhlY3V0aW9uIGZvIHdvcmtsb2Fkcy4K
PiA+Pgo+ID4+IFNvIEkgZmVsbCBiYWNrIHRvIHdoYXQgdGhlIHZlbmRvciBkcml2ZXIgZG9lcywg
d2hpY2ggd29ya3MgcmVsaWFibHkKPiA+PiAoYnV0IGFsbCBjb3JlcyBoYXZlIHRvIGJlIHBvd2Vy
ZWQgb24gYXQgdGhlIHNhbWUgdGltZSkuCj4gPgo+ID4gTWguIFRoZSAiNi4xMC1yb2NrZXQtbXVs
dGlwbGUtaW9tbXVzIiBicmFuY2ggc2VlbXMgd3JvbmcuIFRoZXJlIGlzCj4gPiBvbmx5IG9uZSBp
b21tdSBub2RlIGluIHRoYXQuIEkgd291bGQgaGF2ZSBleHBlY3RlZCBhIHRlc3Qgd2l0aAo+ID4K
PiA+IHJrbm4gewo+ID4gICAgICAvLyBjb21iaW5lZCBkZXZpY2UKPiA+Cj4gPiAgICAgIGlvbW11
cyA9IDwmaW9tbXUxPiwgPCZpb21tdTI+LCAuLi47Cj4gPiB9Owo+ID4KPiA+IE90aGVyd2lzZSBJ
IHRoaW5rIEkgd291bGQgZ28gd2l0aCB0aGUgc2NoZW1hLXN1Ym5vZGVzIHZhcmlhbnQuIFRoZQo+
ID4gZHJpdmVyIGNhbiBpbml0aWFsbHkgd2FsayB0aHJvdWdoIHRoZSBzdWItbm9kZXMgYW5kIGNv
bGxlY3QgdGhlCj4gPiByZXNvdXJjZXMgaW50byB0aGUgbWFpbiBkZXZpY2UsIHNvIG9uIHRoZSBk
cml2ZXIgc2lkZSBub3RoaW5nIHdvdWxkCj4gPiByZWFsbHkgY2hhbmdlLiBCdXQgdGhhdCBoYXMg
YSBjb3VwbGUgb2YgYWR2YW50YWdlczoKPiA+Cj4gPiAxLiBEVCBhbmQgRFQgYmluZGluZyBhcmUg
ZWFzaWVyIHRvIHJlYWQKPiA+IDIuIEl0J3Mgc2ltaWxhciB0byBlLmcuIENQVSBjb3JlcyBlYWNo
IGhhdmluZyB0aGVpciBvd24gbm9kZQo+ID4gMy4gRWFzeSB0byBleHRlbmQgdG8gbW9yZSBjb3Jl
cyBpbiB0aGUgZnV0dXJlCj4gPiA0LiBUaGUga2VybmVsIGNhbiBlYXNpbHkgc3dpdGNoIHRvIHBy
b3BlciBwZXItY29yZSBkZXZpY2UgbW9kZWwgd2hlbgo+ID4gICAgIHRoZSBwcm9ibGVtIGhhcyBi
ZWVuIGlkZW50aWZpZWQKPgo+IEl0IGFsc28gd291bGQgc2VlbSB0byBwZXJtaXQgZGVzY3JpYmlu
ZyBhbmQgYXNzb2NpYXRpbmcgdGhlIHBlci1jb3JlCj4gSU9NTVVzIGluZGl2aWR1YWxseSAtIGFw
YXJ0IGZyb20gY29yZSAwJ3MgYXBwYXJlbnQgY291cGxpbmcgdG8gd2hhdGV2ZXIKPiBzaGFyZWQg
InVuY29yZSIgc3R1ZmYgZXhpc3RzIGZvciB0aGUgd2hvbGUgdGhpbmcsIGZyb20gdGhlIGRpc3Rp
bmN0Cj4gY2xvY2tzLCBpbnRlcnJ1cHRzLCBwb3dlciBkb21haW5zIGV0Yy4gbGluaW5nIHVwIHdp
dGggZWFjaCBjb3JlIEknZAo+IGd1ZXNzIHRob3NlIElPTU1VcyBhcmUgbm90IGludGVycmVsYXRl
ZCB0aGUgc2FtZSB3YXkgdGhlIElTUCdzCj4gcmVhZC93cml0ZSBJT01NVXMgYXJlICh3aGljaCB3
YXMgdGhlIG1haW4ganVzdGlmaWNhdGlvbiBmb3IgYWRvcHRpbmcgdGhlCj4gbXVsdGlwbGUtcmVn
IGRlc2lnbiBvcmlnaW5hbGx5IHZzLiBkaXN0aW5jdCBEVCBub2RlcyBsaWtlIEV4eW5vcyBkb2Vz
KS4KPiBIb3dldmVyLCBwcmFjdGljYWxseSB0aGF0IHdvdWxkIHJlcXVpcmUgdGhlIGRyaXZlciB0
byBhdCBsZWFzdCBwb3B1bGF0ZQo+IHBlci1jb3JlIGNoaWxkIGRldmljZXMgdG8gbWFrZSBETUEg
QVBJIG9yIElPTU1VIEFQSSBtYXBwaW5ncyB3aXRoLCBzaW5jZQo+IHdlIGNvdWxkbid0IHNwcmVh
ZCB0aGUgImNvbGxlY3QgdGhlIHJlc291cmNlcyIgdHJpY2sgaW50byB0aG9zZQo+IHN1YnN5c3Rl
bXMgYXMgd2VsbC4KClRoZXkgc2VlbSB0byBiZSBpbnRlcnJlbGF0ZWQgaW4gc29tZSB3YXksIGJl
Y2F1c2UgSSBuZWVkIHRvIHByb2dyYW0KdGhlIG1hcHBpbmdzIGluIGFsbCB0aHJlZSBpb21tdXMg
Zm9yIHRoaW5ncyB0byB3b3JrLCB3aGljaCBpcyBhbHNvCndoYXQgdGhlIGRvd25zdHJlYW0gZHJp
dmVyIGRvZXMuIFVuZm9ydHVuYXRlbHksIHRoZSBUUk0gaGFzIHplcm8KcmVmZXJlbmNlcyB0byB0
aGUgTU1VIGluIHRoZSBOUFUgc2VjdGlvbi4uLgoKUmVnYXJkcywKClRvbWV1CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
