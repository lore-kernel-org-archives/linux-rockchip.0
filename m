Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D664C5AE59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 16:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/POB0c7zfD2ehnre6eTSgZoX2Sx8eIURZesiHIC5bk=; b=RaotsV5Q9vM6Yf
	mgRKcCVAV7BmQUadjxhBpMRgkyA8zbBBrCrw0lKiOtHfV8ZTlblKfME6j/lQwIIUoOBGHDbxiNMCB
	l506/0gwbUD47Sq17mQdjObTPI+bd8MwMlC33nkoFZ2rbFL7x5e+cdGQTRbn88FtiSC5XVnQ57vG1
	18SFAakilZJlhzhuRnecQHYTpBBB5zq2oLz8YzWhaSSZNrZ7vPsAadS6XfZyRuZ6I8wVoDjHg3N8U
	yC1kYWQdLFPQk7OUydbHddnXUJXAm/EyTTL66kECvVbtRa6RB0SD47qF7p0oZS8Fke42uZXXyN1Fm
	0yQhNmyA/8bFbEg5UeLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNDZZ-0000000G2Uy-1j8b;
	Thu, 05 Jun 2025 16:36:09 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNDVu-0000000G27y-2omK
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 16:32:24 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-7080dd5fe92so11352597b3.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 09:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1749141141; x=1749745941; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XgJg7hlJSi5mVzXbPXgTglQhcjc9Je/fRCk+eeukVYc=;
        b=3QgaRmJrLiy0DZ7jwFxaX3Jn4azcUcxpTqpY8ZZSDR4GLLs3QeedI+B523iahRno6T
         RDZLGfTetQ9LFotGOBomQghZxwCpu/WRLE8Y2SqD8m5z3HnJGR186WHI5vFi6yJVQD4J
         +ct+pN+XKHZmRbR/coEYRpATC9UP1XmQANuZiOAN5eZmRR5WzvAuZPoDnRS3gsIRqGrB
         ge9xrlRxnI8uD0Uj/XER9uGFfhWPjS0rVNyv26wLyPQSaDd7+IjShJgLRcFwSv6stD8c
         5LCa/gLyUoUNS5iONWKHqlwduWABUxa86tT3SmR/MstAfNFH+OyJDjWdw5MfMGPw2sW1
         +Vbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749141141; x=1749745941;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XgJg7hlJSi5mVzXbPXgTglQhcjc9Je/fRCk+eeukVYc=;
        b=qnOkK8hNy4WMW6A2GFZrXcsMj2g4H78fTLQ3+oOLU0T/hjIXzf+tOLZPzC+c/g0GQO
         a04bv2rXi18rhEynofX7duxY1bNIEPf4SmI3vc/bYMOq1E7ZtuOWoD29ZVN1qHZ8uoib
         k5XFU6w5w3uG206jr+9AFc45npxKlR3R3IvElDLfRCuxvtHGZ2K9bvCd8UO0+9Gnw+94
         Meml4Yc6WhTiJhyw7VZzUviWx3WJ5luvYvK5gG5BU6zBdUTYGWR+YuS+TFKLbbSb1RsS
         BOsqVEylyn2fI3a8JlkW3aXyS9a/Jzyj92roGi3Fzzu1QLmR1KtIH3pw6tdA6coYVj3d
         EdWw==
X-Forwarded-Encrypted: i=1; AJvYcCV87nbJJkPA+WRBSR4Y/nzEWJczrzJmi2Wmy/1fegUDmxG1boOkHlaZg9oGx7elVHJBDGy9FULIqOUIa2iIJQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyy/quhBsjjVQfS0utnh5EK5BNcv5q0WN4OCc1VdtqWyacJkQz7
	EboFp/+7M/MFdZj63c6dYhNHTvAbHHiH4wzC/ZzYUlngtnyFrblMwyXwZrJSO8oaRps=
X-Gm-Gg: ASbGncsJCWOZ2wG4tRwcdvMoSdXqFLylmQNLBcW2Lj6Ylst989ISAVEV7Ipn+Ep7pra
	vFdUFb/MjDSNDJuJGkVpQZ96Fve5Qbivt2N0RQOFGYgq0Od2r9Pk/hpNnNI3piMyM1NobZ8Mvtj
	7xpfcI8w8v8Mu8I1d/6TVFkV6OoGZe+McFVzC+ZZcft5ybeMVmzyDpcL2FI0Y52B3ohm8iZjxa+
	7lDoFIqQvjPsUd3+IuD0R+s6esPLObiSm/FUyFN8sGdCuwxJs7onVAhh0J9nEXYol0AhE2aBCcH
	L2fqnWDu/xhAs95YhsCBWCKRi0Q8S0o/2iMA3gHc4Pt8kqDFSLOZTsvJepSZ0HEfTe+9CAZ8ilx
	V4ADLkCs0rsQGAK2I2iY=
X-Google-Smtp-Source: AGHT+IFCBxaj6eV9Q5cy4YlqWQqkncYnSLypzgWsanZ7zq8xhPNzgVMdOOTenoJZH+ICxWW2L2ePiw==
X-Received: by 2002:a05:690c:ec9:b0:70c:965b:4700 with SMTP id 00721157ae682-710f774d03dmr223077b3.31.1749141140619;
        Thu, 05 Jun 2025 09:32:20 -0700 (PDT)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com. [209.85.219.178])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70f8acd7f8csm35066057b3.89.2025.06.05.09.32.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jun 2025 09:32:20 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e75668006b9so1251371276.3;
        Thu, 05 Jun 2025 09:32:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVPtYvBMigLhKl0jav1cbc/pDonFKe2TFvWaitvENhlTZVAWCtvGAT4WxsUjbSEriRmRt7LsJyqHjAUZdK3uhk=@lists.infradead.org, AJvYcCVmo4L0IqGGqKNYL8WD6yk/eX4bqwjLwkxTUTsqT0PyBjKtQGx9yM6aCg29VHywTcPcH2lNTFv+IcHKcZu3I49d@lists.infradead.org
X-Received: by 2002:a05:6902:2d05:b0:e7d:a012:290a with SMTP id
 3f1490d57ef6-e81a21fbac2mr580525276.44.1749141137124; Thu, 05 Jun 2025
 09:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-6-237ac75ddb5e@tomeuvizoso.net> <CAPj87rPv7Pd5tbXhpRLaUJCGB8JmD4kfF50WRsEiST2gvtg3Bg@mail.gmail.com>
 <cc21a090-801d-4b32-bac2-01cebf896c85@arm.com> <CAAObsKDMhuqYtn=+xR6-n=Uk+5_rU91OqVKyQ5cxhqfTo5svjg@mail.gmail.com>
 <3a8e1101-469b-4686-b160-6fdb1737a636@arm.com>
In-Reply-To: <3a8e1101-469b-4686-b160-6fdb1737a636@arm.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Thu, 5 Jun 2025 18:32:06 +0200
X-Gmail-Original-Message-ID: <CAAObsKCjv=K7Dk=QD+MAqwWUNyw_pCh2Eqij3Qwx1jzKoKg4zw@mail.gmail.com>
X-Gm-Features: AX0GCFsWffXR5BsCRkmesm8xllL45jWGaGp3TKLEXqW1VbkssrelSRfCs4YLano
Message-ID: <CAAObsKCjv=K7Dk=QD+MAqwWUNyw_pCh2Eqij3Qwx1jzKoKg4zw@mail.gmail.com>
Subject: Re: [PATCH v6 06/10] accel/rocket: Add IOCTL for BO creation
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_093222_798164_5AFE3F8D 
X-CRM114-Status: GOOD (  23.95  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org, Daniel Stone <daniel@fooishbar.org>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKdW4gNSwgMjAyNSBhdCAzOjM34oCvUE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJw
aHlAYXJtLmNvbT4gd3JvdGU6Cj4KPiBPbiAwNS8wNi8yMDI1IDg6NDEgYW0sIFRvbWV1IFZpem9z
byB3cm90ZToKPiBbLi4uXQo+ID4+IEluIGZhY3QgdGhpcyBpcyBwcmVjaXNlbHkgdGhlIHVzYWdl
IG1vZGVsIEkgd291bGQgc3VnZ2VzdCBmb3IgdGhpcyBzb3J0Cj4gPj4gb2YgdGhpbmcsIGFuZCBJ
SVJDIEkgaGFkIGEgc2ltaWxhciBjb252ZXJzYXRpb24gd2l0aCB0aGUgRXRob3MgZHJpdmVyCj4g
Pj4gZm9sa3MgYSBmZXcgeWVhcnMgYmFjay4gUnVubmluZyB5b3VyIG93biBJT01NVSBkb21haW4g
aXMgbm8gYmlnZ2llLCBzZWUKPiA+PiBzZXZlcmFsIG90aGVyIERSTSBkcml2ZXJzIChpbmNsdWRp
bmcgcm9ja2NoaXApLiBBcyBsb25nIGFzIHlvdSBoYXZlIGEKPiA+PiBzZXBhcmF0ZSBzdHJ1Y3Qg
ZGV2aWNlIHBlciBOUFUgY29yZSB0aGVuIGluZGVlZCBpdCBzaG91bGQgYmUgcGVyZmVjdGx5Cj4g
Pj4gc3RyYWlnaHRmb3J3YXJkIHRvIG1haW50YWluIGRpc3RpbmN0IElPTU1VIGRvbWFpbnMgcGVy
IGpvYiwgYW5kCj4gPj4gYXR0YWNoL2RldGFjaCB0aGVtIGFzIHBhcnQgb2Ygc2NoZWR1bGluZyB0
aGUgam9icyBvbiBhbmQgb2ZmIHRoZSBjb3Jlcy4KPiA+PiBMb29rcyBsaWtlIHJvY2tjaGlwLWlv
bW11IHN1cHBvcnRzIGNyb3NzLWluc3RhbmNlIGF0dGFjaCwgc28gaWYKPiA+PiBuZWNlc3Nhcnkg
eW91IHNob3VsZCBhbHJlYWR5IGJlIE9LIHRvIGhhdmUgbXVsdGlwbGUgY29yZXMgd29ya2luZyBv
biB0aGUKPiA+PiBzYW1lIGpvYiBhdCBvbmNlLCB3aXRob3V0IG5lZWRpbmcgZXh0cmEgd29yayBh
dCB0aGUgSU9NTVUgZW5kLgo+ID4KPiA+IE9rLCBzbyBpZiBJIHVuZGVyc3Rvb2QgaXQgY29ycmVj
dGx5LCB0aGUgcGxhbiB3b3VsZCBiZSBmb3IgZWFjaCBEUk0KPiA+IGNsaWVudCB0byBoYXZlIG9u
ZSBJT01NVSBkb21haW4gcGVyIGVhY2ggY29yZSAoZWFjaCBjb3JlIGhhcyBpdHMgb3duCj4gPiBJ
T01NVSksIGFuZCBtYXAgYWxsIGl0cyBidWZmZXJzIGluIGFsbCB0aGVzZSBkb21haW5zLgo+ID4K
PiA+IFRoZW4gd2hlbiBhIGpvYiBpcyBhYm91dCB0byBiZSBzY2hlZHVsZWQgb24gYSBnaXZlbiBj
b3JlLCBtYWtlIHN1cmUKPiA+IHRoYXQgdGhlIElPTU1VIGZvciB0aGF0IGNvcmUgdXNlcyB0aGUg
ZG9tYWluIGZvciB0aGUgY2xpZW50IHRoYXQKPiA+IHN1Ym1pdHRlZCB0aGUgam9iLgo+ID4KPiA+
IERpZCBJIGdldCB0aGF0IHJpZ2h0Pwo+Cj4gSXQgc2hvdWxkIG9ubHkgbmVlZCBhIHNpbmdsZSBJ
T01NVSBkb21haW4gcGVyIERSTSBjbGllbnQsIHNvIG5vIGZhZmZpbmcKPiBhYm91dCByZXBsaWNh
dGluZyBtYXBwaW5ncy4gaW9tbXVfcGFnaW5nX2RvbWFpbl9hbGxvYygpIGRvZXMgbmVlZCAqYW4q
Cj4gYXBwcm9wcmlhdGUgdGFyZ2V0IGRldmljZSBzbyBpdCBjYW4gaWRlbnRpZnkgdGhlIHJpZ2h0
IElPTU1VIGRyaXZlciwgYnV0Cj4gdGhhdCBpbiBpdHNlbGYgZG9lc24ndCBwcmVjbHVkZSBhdHRh
Y2hpbmcgb3RoZXIgZGV2aWNlcyB0byB0aGUgcmVzdWx0aW5nCj4gZG9tYWluIGFzIHdlbGwgYXMg
KG9yIGV2ZW4gaW5zdGVhZCBvZikgdGhlIG5vbWluYWwgb25lLiBJbiBnZW5lcmFsLCBub3QKPiBh
bGwgSU9NTVUgZHJpdmVycyBzdXBwb3J0IGNyb3NzLWluc3RhbmNlIGF0dGFjaCBzbyBpdCBtYXkg
ZmFpbCB3aXRoCj4gLUVJTlZBTCwgYW5kICp0aGF0KidzIHdoZW4geW91IG1pZ2h0IG5lZWQgdG8g
ZmFsbCBiYWNrIHRvIGFsbG9jYXRpbmcKPiBtdWx0aXBsZSBwZXItaW5zdGFuY2UgZG9tYWlucyAt
IGJ1dCBhcyBJIHNheSBzaW5jZSB0aGlzIGlzIGEKPiBSb2NrY2hpcC1zcGVjaWZpYyBkcml2ZXIg
d2hlcmUgdGhlIElPTU1VICppcyogaW50ZW5kZWQgdG8gc3VwcG9ydCB0aGlzCj4gYWxyZWFkeSwg
eW91IGRvbid0IG5lZWQgdG8gYm90aGVyLgoKT2ssIEkgZGlkIGp1c3QgdGhhdCBhbmQgaXQncyB3
b3JraW5nIGdyZWF0IGluIG15IHRlc3Rpbmc6CgpJIGNyZWF0ZSBhIGRvbWFpbiB3aGVuIHRoZSBj
bGllbnQgb3BlbnMgdGhlIERSTSBjb25uZWN0aW9uIGFuZCBtYXAgYWxsCml0cyBCT3MgdG8gaXQu
IFRoZW4gd2hlbiBhIGpvYiBpcyBhYm91dCB0byBzdGFydCwgSSBkZXRhY2ggd2hhdGV2ZXIKZG9t
YWluIHdhcyBhdHRhY2hlZCB0byB0aGUgY29yZSdzIGdyb3VwIGFuZCBhdHRhY2ggdGhhdCBjbGll
bnQncwpkb21haW4uCgpXaWxsIHNlbmQgYSB2NyB3aXRoIGl0IGluIGEgY291cGxlIG9mIGRheXMu
CgpUaGFua3MhCgpUb21ldQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
