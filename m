Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92229C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9FQtv1B4BZPzNpC0wYjU3zVG5uRlW3f+UVTPb6CkSg=; b=4Fy3e6oxQQnG6C
	6hBLa7p3D5aq2aocdsGbX4Z/EEeOsnG3Upa8DEmWmp9dZa1j5T/6ZXiqjOBmvCBBffKB6fujFVozG
	cxtNHw/9zeMxZaTUCul8pHfeFM1EolgoFZWy2hSlJFbJcKaVLZfKrcSo9P8FFaBkZwolyMkQD8IeE
	0OMlSjcU2+NOUyF31iz8n+WgkhHzEFaV7mMrNkmeD6Lg4Kf4Pr2x7PJpA89a7gbRUo86topl+dpbc
	mWgBwSYT6F7fpYN6zMtpKh+uTRjPxKVt9WFR4ML/rVJ2F5UtC8J34QhISM/OdeHWLEuKYUWOVWTHO
	B2CUIsoCw5ZKavFwawsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0UNz-0004Rs-SH; Sun, 12 Jun 2022 20:40:39 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0UNu-0004Pp-96; Sun, 12 Jun 2022 20:40:37 +0000
Received: by mail-ej1-x636.google.com with SMTP id n10so7546991ejk.5;
        Sun, 12 Jun 2022 13:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2jytHVm8ZuiwCARiy/dgP+cTcJmeud+YGOQOnyEwcxA=;
        b=GpY4ALNkJzEvUaHFW/O5CIpcZsTIXpDVZP49i7FVo8bGurcfZHFS9t7IT8KP9iu1Cc
         2oqJhTvsTHDyd7l5Y25IjiUe1oyaPBnKpQHELKvVywXrIU5eGWBZe15fDoHYrvmhnG1r
         7Rkga5RTqsYOL2tbtR0CL3PZ/ov0mJVD6UyCE8YyoDy11C8yfY01RFCM6sObulEkEPEl
         qvxRj4HiZxCrYp+Lpq/z3uE1v2/U8f0rHdG17VoMn1SmqKkLKBKKGrDXgjfHQR8K+wrO
         AOm65KD4tdozQl1dd+ICTBWfvRbwPAG60k800Nt7fIdHIex/14wPtFgE0MFhZXBEmQA0
         ovpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2jytHVm8ZuiwCARiy/dgP+cTcJmeud+YGOQOnyEwcxA=;
        b=n3zuXuEg3elZnHofSNoAH9msf5RkmjTo6elaOWvU9S66f3ZmvLzFvWIrdfiUw2p8Ie
         9fLoURWxA3SYMu8w+4vWdwiK1aRSrfr8fpcZsty9uGmnFd6z2MzyotZNKLCR5HLA3wbJ
         NdLpWiPDctMJQ0826qXSydSQ4NnnfPe6++N0QNSO+tX8dNw9TO/++kbn+F6z268apJ6w
         P2kF/rDq0LyqnkesEzj/zxVDQQ6hjlrjhhH00RPC3t+ZjvSIfd8yzyo9qjwnJ76WzYVB
         LOGtIBs5MWFb4ynhLUNlN56ANkHdYFz1f7s458MR7wiH7/Gaqk8KbcMDpBM1JGPUAuK8
         Dz/g==
X-Gm-Message-State: AOAM530Lidg1imDsx3I/e5xntsIkYjtTplZl/HKZGPR5idtY95QjugPa
	YwnHWT6RCq1uAhI5kZuxYEg=
X-Google-Smtp-Source: ABdhPJyZMq8l4+8JswvBLfHVqVHIy5eA61rvmP1XRt/vBtLQl8KZ0Q089dGMem6tMX5+in5sWOeZkg==
X-Received: by 2002:a17:907:971f:b0:6ff:2d30:4b37 with SMTP id jg31-20020a170907971f00b006ff2d304b37mr49917948ejc.7.1655066431322;
        Sun, 12 Jun 2022 13:40:31 -0700 (PDT)
Received: from kista.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id b10-20020a170906d10a00b006f4c557b7d2sm2853979ejz.203.2022.06.12.13.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 13:40:30 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com
Subject: Re: Re: [PATCH v6 16/17] media: uapi: Change data_bit_offset definition
Date: Sun, 12 Jun 2022 22:40:29 +0200
Message-ID: <11997092.O9o76ZdvQC@kista>
In-Reply-To: <c330e3e1-e10c-5930-2d1d-6260cb8d64b8@collabora.com>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com> <7385576.EvYhyI6sBW@kista> <c330e3e1-e10c-5930-2d1d-6260cb8d64b8@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_134034_386424_F6B41AEE 
X-CRM114-Status: GOOD (  25.55  )
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

RG5lIHNyZWRhLCAwMS4ganVuaWogMjAyMiBvYiAxODozMzoyMiBDRVNUIGplIEJlbmphbWluIEdh
aWduYXJkIG5hcGlzYWwoYSk6Cj4gCj4gTGUgMDEvMDYvMjAyMiDDoCAxODoxNywgSmVybmVqIMWg
a3JhYmVjIGEgw6ljcml0IDoKPiA+IERuZSBuZWRlbGphLCAyOS4gbWFqIDIwMjIgb2IgMDg6NDU6
NTcgQ0VTVCBqZSBKZXJuZWogxaBrcmFiZWMgbmFwaXNhbChhKToKPiA+PiBEbmUgcGV0ZWssIDI3
LiBtYWogMjAyMiBvYiAxNjozMTozMyBDRVNUIGplIEJlbmphbWluIEdhaWduYXJkIG5hcGlzYWwo
YSk6Cj4gPj4+ICdGLjcuMy42LjEgR2VuZXJhbCBzbGljZSBzZWdtZW50IGhlYWRlciBzeW50YXgn
IHNlY3Rpb24gb2YgSEVWQwo+ID4+PiBzcGVjaWZpY2F0aW9uIGRlc2NyaWJlcyB0aGF0IGEgc2xp
Y2UgaGVhZGVyIGFsd2F5cyBlbmQgYWxpZ25lZCBvbgo+ID4+PiBieXRlIGJvdW5kYXJ5LCB0aGVy
ZWZvcmUgd2Ugb25seSBuZWVkIHRvIHByb3ZpZGUgdGhlIGRhdGEgb2Zmc2V0IGluIApieXRlcy4K
PiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdh
aWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPj4+IC0tLQo+ID4+PiAgIERvY3VtZW50YXRpb24vdXNl
cnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdCB8IDQgKystLQo+ID4+PiAg
IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYyAgICAgICAg
ICB8IDIgKy0KPiA+Pj4gICBpbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCA0ICsrLS0KPiA+Pj4gICAzIGZpbGVzIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdCBiLwo+
ID4+IERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVj
LnJzdAo+ID4+PiBpbmRleCA0OGE4ODI1YTAwMWIuLjM3MDc5NTgxYzY2MSAxMDA2NDQKPiA+Pj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29k
ZWMucnN0Cj4gPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwv
ZXh0LWN0cmxzLWNvZGVjLnJzdAo+ID4+PiBAQCAtMzAwOCw4ICszMDA4LDggQEAgZW51bSB2NGwy
X21wZWdfdmlkZW9faGV2Y19zaXplX29mX2xlbmd0aF9maWVsZCAtCj4gPj4+ICAgICAgICAgLSBg
YGJpdF9zaXplYGAKPiA+Pj4gICAgICAgICAtIFNpemUgKGluIGJpdHMpIG9mIHRoZSBjdXJyZW50
IHNsaWNlIGRhdGEuCj4gPj4+ICAgICAgICogLSBfX3UzMgo+ID4+PiAtICAgICAgLSBgYGRhdGFf
Yml0X29mZnNldGBgCj4gPj4+IC0gICAgICAtIE9mZnNldCAoaW4gYml0cykgdG8gdGhlIHZpZGVv
IGRhdGEgaW4gdGhlIGN1cnJlbnQgc2xpY2UgZGF0YS4KPiA+Pj4gKyAgICAgIC0gYGBkYXRhX2J5
dGVfb2Zmc2V0YGAKPiA+Pj4gKyAgICAgIC0gT2Zmc2V0IChpbiBieXRlcykgdG8gdGhlIHZpZGVv
IGRhdGEgaW4gdGhlIGN1cnJlbnQgc2xpY2UgZGF0YS4KPiA+Pj4gICAgICAgKiAtIF9fdTMyCj4g
Pj4+ICAgICAgICAgLSBgYG51bV9lbnRyeV9wb2ludF9vZmZzZXRzYGAKPiA+Pj4gICAgICAgICAt
IFNwZWNpZmllcyB0aGUgbnVtYmVyIG9mIGVudHJ5IHBvaW50IG9mZnNldCBzeW50YXggZWxlbWVu
dHMgaW4gCnRoZQo+ID4+IHNsaWNlIGhlYWRlci4KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYyBiL2RyaXZlcnMvCj4gPj4g
c3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYwo+ID4+PiBpbmRleCA0MTE2
MDE5NzUxMjQuLjgzNTQ1NDIzOWY3MyAxMDA2NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5jCj4gPj4+ICsrKyBiL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYwo+ID4+PiBAQCAtNDA1LDcgKzQw
NSw3IEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19oMjY1X3NldHVwKHN0cnVjdCBjZWRydXNfY3R4IAoq
Y3R4LAo+ID4+PiAgIAkvKiBJbml0aWFsaXplIGJpdHN0cmVhbSBhY2Nlc3MuICovCj4gPj4+ICAg
CWNlZHJ1c193cml0ZShkZXYsIFZFX0RFQ19IMjY1X1RSSUdHRVIsCj4gPj4gVkVfREVDX0gyNjVf
VFJJR0dFUl9JTklUX1NXREVDKTsKPiA+Pj4gICAKPiA+Pj4gLQljZWRydXNfaDI2NV9za2lwX2Jp
dHMoZGV2LCBzbGljZV9wYXJhbXMtPmRhdGFfYml0X29mZnNldCk7Cj4gPj4+ICsJY2VkcnVzX2gy
NjVfc2tpcF9iaXRzKGRldiwgc2xpY2VfcGFyYW1zLT5kYXRhX2J5dGVfb2Zmc2V0ICogOCk7Cj4g
Pj4gV2hpbGUgaXQncyB0cnVlIHRoYXQgYWN0dWFsIGRhdGEgc3RhcnRzIG9uIDgtYml0IGFsaWdu
ZWQgYWRkcmVzcywgQ2VkcnVzIApmb3IKPiA+PiBzb21lIHJlYXNvbiBuZWVkcyBvZmZzZXQgd2hp
Y2ggcG9pbnRzIGF0IHRoZSBlbmQgb2YgdGhlIGhlYWRlciwgYmVmb3JlCj4gPj4gYWxpZ25tZW50
LiBUaGVyZSBpcyB2ZXJ5IHNpbXBsZSB3YXkgdG8gZGV0ZXJtaW5lIHRoYXQsIGJ1dCB1bmZvcnR1
bmF0ZWx5Cj4gPiB0aGlzCj4gPj4gbWVhbnMgcmVhZGluZyBzb3VyY2UgYnVmZmVyLgo+ID4+Cj4g
Pj4gSW4gc2hvcnQsIGFib3ZlIGNvZGUgd29uJ3Qgd29yay4gSSdsbCBwcm92aWRlIGEgZml4Lgo+
ID4gUGxlYXNlIGluY2x1ZGUgZm9sbG93aW5nIGZpeCBodHRwOi8vaXguaW8vM1o4eCBvdGhlcndp
c2UgQ2VkcnVzIHdpbGwgZmFpbCAKdG8KPiA+IGRlY29kZSBzbGljZS4KCkZsdXN0ZXIgdGVzdGlu
ZyBzaG93IHRoYXQgdGhpcyBwYXRjaCBpc24ndCBjb21wbGV0ZWx5IGZpbmUuIEkgYWxzbyBoYXZl
IHNvbWUgCm90aGVyIGlzc3Vlcywgd2hpY2ggbmVlZCBjb250cm9sIHZhbHVlcyBjb21wYXJpc29u
cy4gSXQgd291bGQgYmUgYmVzdCwgaWYgeW91IApjYW4gd2FpdCB1bnRpbCBJIGZpbmlzaCBjb21w
YXJpc29uLiBPbGQsIGhhY2tpc2ggSEVWQyBwYXRjaGVzIGhhdmUgaGlnaCBmbHVzdGVyIApzY29y
ZSB3aGVyZWFzIG5ldywgYmFzZWQgb24gc3RhYmxlIHVBUEksIGhhcyBsb3cgYW5kIENQVSBhbHNv
IGxvY2tzIHVwLi4uCgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiA+Cj4gPiBPdGhlciB0aGFuIGZp
eCBpbiBwcmV2aW91cyBlLW1haWwgYW5kIHRoaXMgb25lLCBjb2RlIGxvb2tzIGdvb2QgYW5kIEkn
bGwgYmUKPiA+IGFibGUgdG8gYWRkIG1pc3NpbmcgZnVuY3Rpb25hbGl0eSB0byBDZWRydXMgd2l0
aG91dCBtdWNoIHRyb3VibGUgaW4gZm9sbG93IAp1cAo+ID4gc2VyaWVzLgo+IAo+IFRoYW5rcyBm
b3IgdGhlIHBhdGNoIGl0IHdpbGwgYmUgaW4gdmVyc2lvbiA3Lgo+IAo+IFJlZ2FyZHMsCj4gQmVu
amFtaW4KPiAKPiA+Cj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiBKZXJuZWoKPiA+Cj4gPj4+ICAgCj4g
Pj4+ICAgCS8qIEJpdHN0cmVhbSBwYXJhbWV0ZXJzLiAqLwo+ID4+PiAgIAo+ID4+PiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmggYi9pbmNsdWRlL21lZGlhL2hldmMtY3Ry
bHMuaAo+ID4+PiBpbmRleCA5YWJjYTFhNzViZDQuLjkzNmZmNjkzOTY3YiAxMDA2NDQKPiA+Pj4g
LS0tIGEvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPiA+Pj4gKysrIGIvaW5jbHVkZS9tZWRp
YS9oZXZjLWN0cmxzLmgKPiA+Pj4gQEAgLTMxMiw3ICszMTIsNyBAQCBzdHJ1Y3QgdjRsMl9oZXZj
X3ByZWRfd2VpZ2h0X3RhYmxlIHsKPiA+Pj4gICAgKiBWNEwyX0NUUkxfRkxBR19EWU5BTUlDX0FS
UkFZIGZsYWcgbXVzdCBiZSBzZXQgd2hlbiB1c2luZyBpdC4KPiA+Pj4gICAgKgo+ID4+PiAgICAq
IEBiaXRfc2l6ZTogc2l6ZSAoaW4gYml0cykgb2YgdGhlIGN1cnJlbnQgc2xpY2UgZGF0YQo+ID4+
PiAtICogQGRhdGFfYml0X29mZnNldDogb2Zmc2V0IChpbiBiaXRzKSB0byB0aGUgdmlkZW8gZGF0
YSBpbiB0aGUgY3VycmVudAo+ID4gc2xpY2UKPiA+PiBkYXRhCj4gPj4+ICsgKiBAZGF0YV9ieXRl
X29mZnNldDogb2Zmc2V0IChpbiBieXRlcykgdG8gdGhlIHZpZGVvIGRhdGEgaW4gdGhlIGN1cnJl
bnQKPiA+PiBzbGljZSBkYXRhCj4gPj4+ICAgICogQG51bV9lbnRyeV9wb2ludF9vZmZzZXRzOiBz
cGVjaWZpZXMgdGhlIG51bWJlciBvZiBlbnRyeSBwb2ludCBvZmZzZXQKPiA+IHN5bnRheAo+ID4+
PiAgICAqCQkJICAgICBlbGVtZW50cyBpbiB0aGUgc2xpY2UgaGVhZGVyLgo+ID4+PiAgICAqIEBu
YWxfdW5pdF90eXBlOiBzcGVjaWZpZXMgdGhlIGNvZGluZyB0eXBlIG9mIHRoZSBzbGljZSAoQiwg
UCBvciBJKQo+ID4+PiBAQCAtMzU2LDcgKzM1Niw3IEBAIHN0cnVjdCB2NGwyX2hldmNfcHJlZF93
ZWlnaHRfdGFibGUgewo+ID4+PiAgICAqLwo+ID4+PiAgIHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19z
bGljZV9wYXJhbXMgewo+ID4+PiAgIAlfX3UzMgliaXRfc2l6ZTsKPiA+Pj4gLQlfX3UzMglkYXRh
X2JpdF9vZmZzZXQ7Cj4gPj4+ICsJX191MzIJZGF0YV9ieXRlX29mZnNldDsKPiA+Pj4gICAJX191
MzIJbnVtX2VudHJ5X3BvaW50X29mZnNldHM7Cj4gPj4+ICAgCS8qIElTTy9JRUMgMjMwMDgtMiwg
SVRVLVQgUmVjLiBILjI2NTogTkFMIHVuaXQgaGVhZGVyICovCj4gPj4+ICAgCV9fdTgJbmFsX3Vu
aXRfdHlwZTsKPiA+Pj4gLS0gCj4gPj4+IDIuMzIuMAo+ID4+Pgo+ID4+Pgo+ID4+Cj4gPj4KPiA+
Cj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
