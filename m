Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A2BAC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 13:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Un4BoWIbYswVsfl8bjP45YwW7wLZRItgJGn0y4SHZ/s=; b=HCCkkdgcS3H+cb
	f7SAoZZVPe/7ISJrdyDSARRVu6sgMaEOB/FFFBnL/Ot72y2WEOum0Zq/BGjcezDv44P+FiJ7mv1zq
	BvhlnD3FV8j3ifl4N04/jniR2R7aJtPWk6AQqTcQJnBykzhWUh79yCKe2Af5K5OIG+cOKQMae7qV/
	zSGi7YZLmsP22R6V1i/MnLfzqenwvUZXTvtGiqPIZIl0ECONp1kXIzMPol3w5/W+AqUPc18qBjEtM
	Gbq6UXAojCcrj9aQ+7KL/QOj6WTrw4VZ2NVi3CpyCtW9tvKGOz2xpL/uxWdsEWZnw8U27fOpt0l1A
	9FfnAI4QU1K5R/iMS7sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Kb9-0000000B6h0-2LaT;
	Tue, 07 May 2024 13:11:11 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Kb6-0000000B6fm-3WQp
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 13:11:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D3332CE1310
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:11:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48969C4AF67
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715087464;
	bh=vdFUPxI2rK4X4ACGJc33PkZDLQWpMwoj2Qa0AfmlRj8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=bRuS7tJMq+xHrEpU4ae6gPZ2EEu5SybMRZl3bh9uURvV+iW/7I2akJSej6K6C5ka8
	 FD3b1REImXZQSTOQ+wWwjyCzCbhyS2cwqAFH2KkgSwVurKOFaY/f3m1eqGi2/K4l6C
	 pdM7qvRhxbL32bDuXLeG5iWRfVc/41dCdU1WBjABjTjdtn8uxBlW3lsVX/Jl2THTAc
	 vJWzZX/f+LbDYyriS6BtBlQ74NMRUkL+PG3Xnhv5rH0lgIT8hS+qjJqfoPxSuTK0O4
	 17epchFWegWRlMvHL9ihYiVFKtIXrECg408jacU7u2Ys1dAlNLtH7VARQONs/8BccM
	 4Y9zRlFPfXTog==
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-deb654482bcso3144338276.1
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 06:11:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXG3r7qdYhL3m39IHWc6S8i6OucwddBzUElUoS3UwEWGZdlLJ2kELPYK5GxuMbwKRRNa+g9TgAFmxvXq/NztoiYE6STiqXlYQplhp2hEziThDMX
X-Gm-Message-State: AOJu0YzoPoHKlBERl+N+ieipRXAGbDTpoChstXCgEF3DJTgy4H7jzMoY
	U35bnGCZS6D9mUyhCrJ+xrIW2tUopWODMeriZTs/KmMSNVMMepT3SxmHp+gf993+F/O1VxU1umH
	JdM11Nz0P6dxIdGoImXaF3Hn0OJPe2dd0sKQ91w==
X-Google-Smtp-Source: AGHT+IFsm9DC3DaDqy/o8t6hXSkYeTcEajdfOC7CkRK6RkveYsEckuITQhToPeKR3ocgyQC/Xu6yE8vpx90pCLe4bg0=
X-Received: by 2002:a05:6902:250a:b0:de5:d1cd:b593 with SMTP id
 dt10-20020a056902250a00b00de5d1cdb593mr14853945ybb.33.1715087463592; Tue, 07
 May 2024 06:11:03 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 15:10:52 +0200
X-Gmail-Original-Message-ID: <CAN6tsi73ks50-Xg78Jpj6Me80hpaR0ww=RXOMKJoT2V6Zg8_Yg@mail.gmail.com>
Message-ID: <CAN6tsi73ks50-Xg78Jpj6Me80hpaR0ww=RXOMKJoT2V6Zg8_Yg@mail.gmail.com>
Subject: Re: [PATCH 00/14] improve Analogix DP AUX channel handling
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
X-CRM114-CacheID: sfid-20240507_061109_250445_12F0F0D6 
X-CRM114-Status: GOOD (  20.08  )
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
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gQ3VycmVudGx5IHRoZSBBVVggY2hhbm5lbCBzdXBwb3J0
IGluIHRoZSBBbmFsb2dpeCBEUCBkcml2ZXIgaXMgc2V2ZXJlbHkKPiBsaW1pdGVkIGFzIHRoZSBB
VVggYmxvY2sgb2YgdGhlIGJyaWRnZSBpcyBvbmx5IGluaXRpYWxpemVkIHdoZW4gdGhlIHZpZGVv
Cj4gbGluayBpcyB0byBiZSBlbmFibGVkLiBUaGlzIGlzIG9rYXkgZm9yIHRoZSBwdXJwb3NlcyBv
ZiBsaW5rIHRyYWluaW5nLAo+IGJ1dCBkb2VzIG5vdCBhbGxvdyB0byBkZXRlY3QgZGlzcGxheXMg
YnkgcHJvYmluZyBmb3IgRURJRC4gVGhpcyBzZXJpZXMKPiByZXdvcmtzIHRoZSBkcml2ZXIgdG8g
YWxsb3cgQVVYIHRyYW5zYWN0aW9ucyBiZWZvcmUgdGhlIHZpZGVvIGxpbmsgaXMKPiBhY3RpdmUu
Cj4KPiBBcyB0aGlzIHJlcXVpcmVzIHRvIHJld29yayBzb21lIG9mIHRoZSBjb250cm9sbGVyIGlu
aXRpYWxpemF0aW9uIGFuZAo+IGFsc28gaGFuZGxpbmcgb2YgYm90aCBpbnRlcm5hbCBhbmQgZXh0
ZXJuYWwgY2xvY2tzLCB0aGUgc2VyaWVzIGluY2x1ZGVzCj4gcXVpdGUgYSBmZXcgY2hhbmdlcyB0
byBhZGQgYmV0dGVyIHJ1bnRpbWUgUE0gaGFuZGxpbmcuCj4KPiBMdWNhcyBTdGFjaCAoMTQpOgo+
ICAgZHJtL2JyaWRnZTogYW5hbG9naXhfZHA6IHJlbW92ZSB1bnVzZWQgcGxhdGZvcm0gcG93ZXJf
b25fZW5kIGNhbGxiYWNrCj4gICBkcm0vcm9ja2NoaXA6IGFuYWxvZ2l4X2RwOiBhZGQgcnVudGlt
ZSBQTSBoYW5kbGluZwo+ICAgZHJtL2JyaWRnZTogYW5hbG9naXhfZHA6IHJlZ2lzdGVyIEFVWCBi
dXMgYWZ0ZXIgZW5hYmxpbmcgcnVudGltZSBQTQo+ICAgZHJtL2JyaWRnZTogYW5hbG9naXhfZHA6
IGhhbmRsZSBjbG9jayB2aWEgcnVudGltZSBQTQo+ICAgZHJtL2JyaWRnZTogYW5hbG9naXhfZHA6
IHJlbW92ZSB1bnVzZWQgYW5hbG9naXhfZHBfcmVtb3ZlCj4gICBkcm0vYnJpZGdlOiBhbmFsb2dp
eF9kcDogcmVtb3ZlIGNsayBoYW5kbGluZyBmcm9tCj4gICAgIGFuYWxvZ2l4X2RwX3NldF9icmlk
Z2UKPiAgIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBtb3ZlIHBsYXRmb3JtIGFuZCBQSFkgcG93
ZXIgaGFuZGxpbmcgaW50bwo+ICAgICBydW50aW1lIFBNCj4gICBkcm0vYnJpZGdlOiBhbmFsb2dp
eF9kcDogbW92ZSBiYXNpYyBjb250cm9sbGVyIGluaXQgaW50byBydW50aW1lIFBNCj4gICBkcm0v
YnJpZGdlOiBhbmFsb2dpeF9kcDogcmVtb3ZlIFBMTCBsb2NrIGNoZWNrIGZyb20KPiAgICAgYW5h
bG9naXhfZHBfY29uZmlnX3ZpZGVvCj4gICBkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogbW92ZSBt
YWNybyByZXNldCBhZnRlciBsaW5rIGJhbmR3aWR0aCBzZXR0aW5nCj4gICBkcm0vYnJpZGdlOiBh
bmFsb2dpeF9kcDogZG9uJ3Qgd2FpdCBmb3IgUExMIGxvY2sgdG9vIGVhcmx5Cj4gICBkcm0vYnJp
ZGdlOiBhbmFsb2dpeF9kcDogc2ltcGxpZnkgYW5kIGNvcnJlY3QgUExMIGxvY2sgY2hlY2tzCj4g
ICBkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogb25seSByZWFkIEFVWCBzdGF0dXMgd2hlbiBhbiBl
cnJvciBvY2N1cmVkCj4gICBkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogaGFuZGxlIEFVWCB0cmFu
c2ZlciB0aW1lb3V0cwo+Cj4gIC4uLi9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2Nv
cmUuYyAgICB8IDE5NiArKysrKysrKy0tLS0tLS0tLS0KPiAgLi4uL2RybS9icmlkZ2UvYW5hbG9n
aXgvYW5hbG9naXhfZHBfY29yZS5oICAgIHwgICA3ICstCj4gIC4uLi9ncHUvZHJtL2JyaWRnZS9h
bmFsb2dpeC9hbmFsb2dpeF9kcF9yZWcuYyB8ICAzOCArKy0tCj4gIC4uLi9ncHUvZHJtL2JyaWRn
ZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9yZWcuaCB8ICAgOSArCj4gIGRyaXZlcnMvZ3B1L2RybS9l
eHlub3MvZXh5bm9zX2RwLmMgICAgICAgICAgICB8ICAgNSArLQo+ICAuLi4vZ3B1L2RybS9yb2Nr
Y2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jICAgfCAgMjYgKy0tCj4gIGluY2x1ZGUvZHJtL2Jy
aWRnZS9hbmFsb2dpeF9kcC5oICAgICAgICAgICAgICB8ICAgNCArLQo+ICA3IGZpbGVzIGNoYW5n
ZWQsIDEyMCBpbnNlcnRpb25zKCspLCAxNjUgZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuMzkuMgo+
CgpUaGVyZSBhcmUgc29tZSBjaGVja3BhdGNoIC0tc3RyaWN0IHdhcm5pbmdzLCBhbmQgdGhlIHBh
dGNoIDEwLzE0IGRvZXMKbm90IGFwcGx5LiBPdGhlciB0aGFuIHRoYXQgdGhlIHNlcmllcyBsb29r
cyB2ZXJ5IGdvb2QuCgpNYXliZSByZWJhc2Ugb24gZHJtLW1pc2MvZHJtLW1pc2MtbmV4dCwgZml4
IHRoZSBhcHBsaWNhYmxlIGNoZWNrcGF0Y2gKLS1zdHJpY3Qgd2FybmluZ3MgYW5kIHNlbmQgYSBu
ZXcgdmVyc2lvbiBvZiB0aGlzIHNlcmllcy4gVGhlbiB0aGUgbGFzdApwYXRjaGVzIGNhbiBiZSBy
ZXZpZXdlZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
