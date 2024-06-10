Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85E13C27C55
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jun 2024 11:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NovCvWnVFIsIxFTGKVpMpn42bsFVQXoghUrY/RfDQvo=; b=GKJ6RBynlUtlXA
	Ne0TOfxzINStHhqShwWx7VMjnz1u5D6ilgcjMPUY5ObXtND0vYCwoyOOw4tvUwIxWZ8ZmB6F/ZyUS
	Q1T8/z7lTRV2VtaeqrkcrAWds9bt6kTGS/l6CnAj0etWq6/y8dqelJ2eVR5biwj7ux+FtZZdx1Kgd
	z1uJNhrBwtNmlCk4fYeWltuhKnCkIJH9JbtVD+pqjo0YMrzprNEBRpRxCnCpAFQ4pNa86U9vQAod8
	YHs1DTqR1kN5XY+fxPe+18HFT14lfM09+uf24F+EXcmriFCtpi1laRRgNrQ/CANRbtLGwbWriu1rj
	ilN8kks5bX5leoY5/juA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGdVk-00000004rlu-3725;
	Mon, 10 Jun 2024 11:48:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGdVh-00000004rkz-2fsr
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Jun 2024 11:48:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1696B60AEF
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 11:48:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C39E8C4AF1D
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 11:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718020104;
	bh=EnvLMHWlQfTpDHyBkrIDp4WoWKYs33FSYEF6HxK5HXQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fMeRg7oc+uRBQ5R4Q4pbBqGxSe3N7OyiofvQlNXsGjh4JGfxQ/uYwWNBNCQssDs9a
	 nNsqfs8k/o3o/Bf4wa4Khv2UC6XGjiyEm61Wd+Upn9dTl5FQyO8RSCpqwc0tySJ6ck
	 Lr+hEC8SLp+sskpFECKkRWe7Ght+Fq92kmTUSXALoRUHRlnNxHTCAgCbTOdkkEfySL
	 GT61h2HYrHVU4z0k6MHtg2P/KXGmV7danOmb+QQkEoAbb3SumL0PTgSpoKCyUutxva
	 sLFY94VAoS3aTwvD7DH0nQ1MH1GJjZsCGqV8x5roacVBRxfwvchIUl/AMAUX9WN8fu
	 8N2MChk6DUrzA==
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dfb0ccbd401so1586794276.0
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2024 04:48:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWx9yHnwwaE0vEWf3Vq6iHCAH35F3QJuzZLpMBmpD/PzeDvPdI2fsiRufj5i90qslDrVBEkwRl4NHjKJeXjpRkgCd+u9Qn/CkzQpzF8j2NFcX8y
X-Gm-Message-State: AOJu0Yzqbj4IiHThQc21bBPAmhHsZkKJrqTzKMudpe6M9FCEgRQZ6yZK
	kBQBN8G9GbQvHNVPi1gZ5o1y5s++gh8NgqD5nogIqK52qcRKIKoJlYvYEEAtUYfaGKzeU+wS1w0
	wYdoh4wc24FiJfeLZbdQosXGs5UOnvcRO1212Hw==
X-Google-Smtp-Source: AGHT+IGEKCo6gyyeWBzcK4b58/vCeVtAp7ZUoLZg7ARJvO2tHiONaUv9G9RmAjiSJYn4x9eDt1uJKoCxs9bAlp3RHLw=
X-Received: by 2002:a25:b319:0:b0:dfb:be1:b1d1 with SMTP id
 3f1490d57ef6-dfb0be1b892mr5743703276.35.1718020104093; Mon, 10 Jun 2024
 04:48:24 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-12-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-12-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Mon, 10 Jun 2024 13:48:13 +0200
X-Gmail-Original-Message-ID: <CAN6tsi55PdW0Z7H_-7S6tPjkhAewacKNjxmfe7qcaXXZ=6-GYg@mail.gmail.com>
Message-ID: <CAN6tsi55PdW0Z7H_-7S6tPjkhAewacKNjxmfe7qcaXXZ=6-GYg@mail.gmail.com>
Subject: Re: [PATCH 11/14] drm/bridge: analogix_dp: don't wait for PLL lock
 too early
To: Lucas Stach <l.stach@pengutronix.de>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, kernel@pengutronix.de, 
	patchwork-lst@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_044825_801253_4DDD17A8 
X-CRM114-Status: GOOD (  16.43  )
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

T24gRnJpLCBNYXkgMywgMjAyNCBhdCA1OjEy4oCvUE0gTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gVGhlIFBMTCB3aWxsIGJlIHJlY29uZmlndXJlZCBsYXRl
ciwgd2hpY2ggbWF5IGNhdXNlIGl0IHRvIGdvIG91dCBvZiBsb2NrCj4gYW55d2F5cywgc28gdGhl
cmUgaXMgbm8gcG9pbnQgaW4gd2FpdGluZyBmb3IgdGhlIFBMTCB0byBsb2NrIGhlcmUuIEluc3Rl
YWQKPiB3ZSBjYW4gY29udGludWUgZXhlY3V0aW9uIG9mIHRoZSBsaW5rIHNldHVwLCB3aGljaCB3
aWxsIHByb3Blcmx5IHNldCB0aGUKPiBQTEwgcGFyYW1ldGVycyBhbmQgd2lsbCB3YWl0IGZvciB0
aGUgUExMIHRvIGxvY2sgYXQgdGhlIGFwcHJvcHJpYXRlIHRpbWVzLgo+Cj4gU2lnbmVkLW9mZi1i
eTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfcmVnLmMgfCAxNCArLS0tLS0tLS0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEzIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhf
ZHBfcmVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX3Jl
Zy5jCj4gaW5kZXggZDI2N2NmMDVjYmNhLi5lOWM2NDNhOGI2ZmMgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9yZWcuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfcmVnLmMKPiBAQCAtMzU2
LDcgKzM1Niw2IEBAIHZvaWQgYW5hbG9naXhfZHBfc2V0X2FuYWxvZ19wb3dlcl9kb3duKHN0cnVj
dCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwLAo+ICBpbnQgYW5hbG9naXhfZHBfaW5pdF9hbmFsb2df
ZnVuYyhzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCkKPiAgewo+ICAgICAgICAgdTMyIHJl
ZzsKPiAtICAgICAgIGludCB0aW1lb3V0X2xvb3AgPSAwOwo+Cj4gICAgICAgICBhbmFsb2dpeF9k
cF9zZXRfYW5hbG9nX3Bvd2VyX2Rvd24oZHAsIFBPV0VSX0FMTCwgMCk7Cj4KPiBAQCAtMzY4LDE4
ICszNjcsNyBAQCBpbnQgYW5hbG9naXhfZHBfaW5pdF9hbmFsb2dfZnVuYyhzdHJ1Y3QgYW5hbG9n
aXhfZHBfZGV2aWNlICpkcCkKPiAgICAgICAgIHdyaXRlbChyZWcsIGRwLT5yZWdfYmFzZSArIEFO
QUxPR0lYX0RQX0RFQlVHX0NUTCk7Cj4KPiAgICAgICAgIC8qIFBvd2VyIHVwIFBMTCAqLwo+IC0g
ICAgICAgaWYgKGFuYWxvZ2l4X2RwX2dldF9wbGxfbG9ja19zdGF0dXMoZHApID09IFBMTF9VTkxP
Q0tFRCkgewo+IC0gICAgICAgICAgICAgICBhbmFsb2dpeF9kcF9zZXRfcGxsX3Bvd2VyX2Rvd24o
ZHAsIDApOwo+IC0KPiAtICAgICAgICAgICAgICAgd2hpbGUgKGFuYWxvZ2l4X2RwX2dldF9wbGxf
bG9ja19zdGF0dXMoZHApID09IFBMTF9VTkxPQ0tFRCkgewo+IC0gICAgICAgICAgICAgICAgICAg
ICAgIHRpbWVvdXRfbG9vcCsrOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIGlmIChEUF9USU1F
T1VUX0xPT1BfQ09VTlQgPCB0aW1lb3V0X2xvb3ApIHsKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGRldl9lcnIoZHAtPmRldiwgImZhaWxlZCB0byBnZXQgcGxsIGxvY2sgc3RhdHVz
XG4iKTsKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRVRJTUVET1VU
Owo+IC0gICAgICAgICAgICAgICAgICAgICAgIH0KPiAtICAgICAgICAgICAgICAgICAgICAgICB1
c2xlZXBfcmFuZ2UoMTAsIDIwKTsKPiAtICAgICAgICAgICAgICAgfQo+IC0gICAgICAgfQo+ICsg
ICAgICAgYW5hbG9naXhfZHBfc2V0X3BsbF9wb3dlcl9kb3duKGRwLCAwKTsKPgo+ICAgICAgICAg
LyogRW5hYmxlIFNlcmRlcyBGSUZPIGZ1bmN0aW9uIGFuZCBMaW5rIHN5bWJvbCBjbG9jayBkb21h
aW4gbW9kdWxlICovCj4gICAgICAgICByZWcgPSByZWFkbChkcC0+cmVnX2Jhc2UgKyBBTkFMT0dJ
WF9EUF9GVU5DX0VOXzIpOwo+IC0tCj4gMi4zOS4yCj4KCgpSZXZpZXdlZC1ieTogUm9iZXJ0IEZv
c3MgPHJmb3NzQGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
