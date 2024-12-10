Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E8CE7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 12:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRv+zmdwNVo5tHKpyS8kCIeUOuudGMwR0vd6bspcziU=; b=G2WcisilG9plNd
	j5jLnGcfT9mSGHUkx0khfkimz70k3po2Z2W3YmqNdvCOQqCMohhzP2kpuUsf2TKoJcPcpHt5xBAoM
	hERG4wM4jE/GDtB+OT+Ux7u/iUVoV3xAE0JMu58ysEGfwmgogXa7qNnGmzrx7aEkhbPa9O0uoGecb
	qpAyXwjjPDGwUDCE7l6SZ4vLSrvGnzUgnCHYlCtfVkJJa8ApaFQJbyisrhuBacfF6fuEwU2S8c93H
	fFAy5Ek5LBiWX/3ERIFde1QQe27FvHyFdy6smUa8LjF6njDRIm7c/k5HIZ7ctuc+rI+x8/5Iv64SV
	lbs7bCDS95ha/Te4cToQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKzQT-0000000BRSD-37TF;
	Tue, 10 Dec 2024 12:33:17 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKzPN-0000000BRDe-2X6R
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 12:32:12 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-3022c6155edso11964141fa.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Dec 2024 04:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733833927; x=1734438727; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xFyd1PgF3D2/xwv+F2WOR3tO3r6sjTbGoWT6Q3TM8dg=;
        b=uZzlRtaR3RiOylC+xT3J3sBW4qOAR4MR5Vsu5gAL+ck96jpj9O9GxYDZmhg7mQ8nFR
         k51oH6xUQK/GNaRzfFV1VSAGuqCgsoYQpi39wSk0IzAYLqbP3+q/5rlO6eVcIKkZNlmm
         sreXuhc0l3gzGsp3EFIKOQtcDP/nUmEwHEmUGGiMIg9saN2Y7GhTMBLJCsHPvF1a1G7G
         5cvPsdu0hTmgbdjXdpmyk4KsR5U4aeaUvxGl6lJ4qIbZ3A2FVTqGU0coC61ldGH/6aoJ
         T3B3lJ9dk/6Hd40ACm+pqRv45pjI6gEz7VA8/naaUcGx3v+TJRODAK6tJx5on9X7gZC5
         k28Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733833927; x=1734438727;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xFyd1PgF3D2/xwv+F2WOR3tO3r6sjTbGoWT6Q3TM8dg=;
        b=CqUtFaAl4uq87/C+1acAGo7wPJUz4sy5+fA6xNYsBh4pgDZvJz/qzAAKFvoPiRdU45
         FOpJFk9SDXpzdfa2/5CUMuAv98lTsmu8xI2+xnmCqhzG8B4V8hQket9pJXkR7dPfBjVl
         DdyZQ5COtHE/lQWjy21tGDVdbzQW+e6cNs+vcImGnwLfmNhyMvcjcXsx2kTl0s9uSOt5
         g33GYgT4rYNeWcaGXF6v1VxzdpFF4L3kvVvDF+74woGtqG4MIG9EZTVHuZOPkRe2S3Ps
         kdaW6MUASsvyu9tNI5t3uBlmrdObsHl6GB+W8Q6/letUnoLdknTmX3UQR50J9XXg+fxw
         YnOw==
X-Forwarded-Encrypted: i=1; AJvYcCVF7E8PFYBcjC+VWgofobod/RMN4Vr23mdLh+2YI9akK16fS9pq+/PWLOrzWKh9YfxvrVFMpCSvnvsFV2o8QA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4VQOzqRtMHJoz+ZLCoIzlVAPuMkPeX10L9w/d/nvUdOfEO8bX
	mGx32qhpMUpraXMRFcES1mBlDDLLMuebRM/gRvTmif9sCeNbZGNmN1MNoxIjJzQ=
X-Gm-Gg: ASbGncsC63Jz7Li+sGSSsKBzEcKw3YqQMayCLL1KfL7rubhqZYLVfqZcGFHui0l7AFE
	aJsswiI6c7iAcd1sDi7pqE2IYbBYV9GQUt7eShxoiVRCuUMF+HXQWwOJN5cEXoXDG+0HUHSJrb+
	olpu+kuPMV3iauJTwFfhuhud9Oe6toY3WdBoTv8tHfXAboj5Rv4fyh8R/y/5fT3lOS+/uZYkZyk
	owQdlM1Wy0d0veG0L9yvEHunfoHXUI7Bd7/nQeM/K3/OthJP7uk8uI5wkUVTJaqryHBIDwW4gfR
	lwIysJp8qqp99IpKR0mH6ZlhDHHYGqYr/Q==
X-Google-Smtp-Source: AGHT+IFJ8BqRGzKbdRKo9sdokdyA13iJnEch3RCwabno4BEnD/wpduTivdAcQ64Maqs8TOr83ohZIw==
X-Received: by 2002:a05:651c:1582:b0:302:2620:ecc7 with SMTP id 38308e7fff4ca-3022fd82956mr14279341fa.35.1733833927539;
        Tue, 10 Dec 2024 04:32:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30216eb1013sm9110231fa.34.2024.12.10.04.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 04:32:06 -0800 (PST)
Date: Tue, 10 Dec 2024 14:32:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Daniel Semkowicz <dse@thaumatec.com>, Diederik de Haas <didi.debian@cknow.org>, 
	andy.yan@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	jernej.skrabec@gmail.com, jonas@kwiboo.se, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, neil.armstrong@linaro.org, 
	quentin.schulz@cherry.de, rfoss@kernel.org, robh@kernel.org, tzimmermann@suse.de
Subject: Re: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2
 controller
Message-ID: <jl5obi7rd4h6ywozeqruxq2vx62sx5yf4wwpksrq3prdleps2k@d3zbr5ttquvn>
References: <20241203165450.1501219-1-heiko@sntech.de>
 <20241209150619.33998-1-dse@thaumatec.com>
 <D67AV178CEBD.3QA9VD4ZPRNQ1@cknow.org>
 <2203458.KiezcSG77Q@diego>
 <4e015ea9.960.193ae0c236a.Coremail.andyshrk@163.com>
 <ay5hbnqqjhopaqof6z7j2rzm2bc6xa2vbzan2ak3if6wzmyip2@kqh7gtrajnm2>
 <33e2c5db.1300.193ae284b6d.Coremail.andyshrk@163.com>
 <CAA8EJprLA09NP0KAztc5eoAMkGcrom84jg_pcbNcwN0FAaSLrw@mail.gmail.com>
 <2d68155e.1e5b.193ae4616b9.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d68155e.1e5b.193ae4616b9.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_043209_650319_F2B4D307 
X-CRM114-Status: GOOD (  26.31  )
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

T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgMDk6NTQ6MDlBTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6
Cj4gCj4gSGkgRG1pdHJ5LAo+IAo+IOWcqCAyMDI0LTEyLTEwIDA5OjQ1OjEx77yMIkRtaXRyeSBC
YXJ5c2hrb3YiIDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+IOWGmemBk++8mgo+ID5PbiBU
dWUsIDEwIERlYyAyMDI0IGF0IDAzOjIyLCBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4gd3Jv
dGU6Cj4gPj4KPiA+Pgo+ID4+IEhpIERtaXRyeSwKPiA+Pgo+ID4+IOWcqCAyMDI0LTEyLTEwIDA5
OjAxOjM477yMIkRtaXRyeSBCYXJ5c2hrb3YiIDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+
IOWGmemBk++8mgo+ID4+ID5PbiBUdWUsIERlYyAxMCwgMjAyNCBhdCAwODo1MDo1MUFNICswODAw
LCBBbmR5IFlhbiB3cm90ZToKPiA+PiA+Pgo+ID4+ID4+Cj4gPj4gPj4gSGksCj4gPj4gPj4KPiA+
PiA+PiBBdCAyMDI0LTEyLTEwIDA3OjEyOjI2LCAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+ID4+ID4+ID5BbSBNb250YWcsIDkuIERlemVtYmVyIDIwMjQsIDE3OjEx
OjAzIENFVCBzY2hyaWViIERpZWRlcmlrIGRlIEhhYXM6Cj4gPj4gPj4gPj4gSGksCj4gPj4gPj4g
Pj4KPiA+PiA+PiA+PiBPbiBNb24gRGVjIDksIDIwMjQgYXQgNDowNiBQTSBDRVQsIERhbmllbCBT
ZW1rb3dpY3ogd3JvdGU6Cj4gPj4gPj4gPj4gPiBPbiAwMy4xMi4yNCAyMTo1NCwgSGVpa28gU3R1
ZWJuZXIgd3JvdGU6Cj4gPj4gPj4gPj4gPiA+IFRoaXMgc2VyaWVzIGFkZHMgYSBicmlkZ2UgYW5k
IGdsdWUgZHJpdmVyIGZvciB0aGUgRFNJMiBjb250cm9sbGVyIGZvdW5kCj4gPj4gPj4gPj4gPiA+
IGluIHRoZSByazM1ODggc29jIGZyb20gUm9ja2NoaXAsIHRoYXQgaXMgYmFzZWQgb24gYSBTeW5v
cHNpcyBJUCBibG9jay4KPiA+PiA+PiA+PiA+ID4KPiA+PiA+PiA+PiA+Cj4gPj4gPj4gPj4gPiBJ
IGRpZCBtb3JlIHRlc3RzIHdpdGggZGlmZmVyZW50IExWRFMgZGlzcGxheXMuIEkgdGVzdGVkIGZv
bGxvd2luZwo+ID4+ID4+ID4+ID4gY29uZmlndXJhdGlvbnMgd2l0aCBEU0kvTFZEUyBicmlkZ2U6
Cj4gPj4gPj4gPj4gPiAtIDEwMjR4NjAwQDYwLjAxCj4gPj4gPj4gPj4gPiAtIDEwMjR4NzY4QDYw
LjAyCj4gPj4gPj4gPj4gPiAtIDEyODB4ODAwQDYwLjA3Cj4gPj4gPj4gPj4gPiAtIDEzNjZ4NzY4
QDYwLjA2Cj4gPj4gPj4gPj4gPgo+ID4+ID4+ID4+ID4gQWxsIG9mIHRoZW0gd29ya2VkIHdpdGhv
dXQgaXNzdWVzLCBleGNlcHQgMTM2Nng3NjguCj4gPj4gPj4gPj4gPiBXaXRoIHRoaXMgcmVzb2x1
dGlvbiwgdmlkZW8gaXMgYmx1cnJ5LCBhbmQgb2Zmc2V0IGluY29ycmVjdGx5Cj4gPj4gPj4gPj4g
PiB0byB0aGUgbGVmdC4gVGhlcmUgYXJlIGFsc28gcmVwZWF0aW5nIGVycm9ycyBvbiB0aGUgY29u
c29sZToKPiA+PiA+PiA+PiA+Cj4gPj4gPj4gPj4gPiAgIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1
YnN5c3RlbTogW2RybV0gKkVSUk9SKiBQT1NUX0JVRl9FTVBUWSBpcnEgZXJyIGF0IHZwMwo+ID4+
ID4+ID4+ID4KPiA+PiA+PiA+PiA+IEluIGNvcnJlY3Qgb3BlcmF0aW9uIHdpdGggb3RoZXIgcmVz
b2x1dGlvbnMsIHRoZXJlIGlzIG5vIGVycm9yLgo+ID4+ID4+ID4+ID4gSSBhbSBub3Qgc3VyZSBp
ZiB0aGlzIGlzIGEgcHJvYmxlbSBpbiB5b3VyIHNlcmllcyBvciByYXRoZXIgaW4gVk9QMgo+ID4+
ID4+ID4+ID4gZHJpdmVyLgo+ID4+ID4+ID4KPiA+PiA+PiA+VGhpcyByZWFsbHkgc291bmRzIGxp
a2Ugc29tZXRoaW5nIGlzIHdyb25nIG9uIHRoZSB2b3Agc2lkZS4KPiA+PiA+PiA+VGhlIGludGVy
cnVwdCBpcyBwYXJ0IG9mIHRoZSB2b3AsIHRoZSBkaXZpc2FibGUgYnkgNCB0aGluZ3MgbGlrZWx5
IHRvby4KPiA+PiA+Pgo+ID4+ID4+IFRoaXMgaXMgYSBoYXJkd2FyZSBsaW1pdGF0aW9uIG9uIHZv
cCBzaWRlOgo+ID4+ID4+IFRoZSBob3Jpem9udGFsIHJlc29sdXRpb24gbXVzdCBiZSA0IHBpeGVs
IGFsaWduZWQuCj4gPj4gPgo+ID4+ID5UaGVuIG1vZGVfdmFsaWQoKSBhbmQgYXRvbWljX2NoZWNr
KCkgbXVzdCByZWplY3QgbW9kZXMgdGhhdCBkb24ndCBmaXQuCj4gPj4KPiA+PiBXZSByb3VuZCBk
b3duIHRvIDQgcGl4ZWwgYWxpZ25lZCBpbiBtb2RlX2ZpeHVwIGluIG91ciBic3Aga2VybmVsLAo+
ID4KPiA+V2hhdCBpcyBtZWFudCBieSB0aGUgImJzcCBrZXJuZWwiIGhlcmU/IEkgZG9uJ3Qgc2Vl
IGl0IGJlaW5nIHByZXNlbnQKPiAKPiBic3Aga2VybmVsIG1lYW5zIGRvd25zdHJlYW0gdmVuZG9y
IGtlcm5lbC4KPiAKPiA+aW4gdGhlIG1haW5saW5lIGtlcm5lbC4gU28sIGlmIHRoZSBtb2RlIGlz
IHVuc3VwcG9ydGVkLCBpdCBzaG91bGQgYmUKPiAKPiBXaWxsIGl0IGJlIGFjY2VwdGFibGUgdG8g
YWRkIHRoaXMgcm91bmQgZG93biBpbiB0aGUgbWFpbmxpbmUgbW9kZV9maXh1cD8KCkkgdGhpbmsg
c28uCgo+IAo+ID5yZWplY3RlZC4KPiA+Cj4gPj4gYmVjYXVzZSBzb21ldGltZXMsIHNvbWUgYm9h
cmRzIGRvIGluZGVlZCBjaG9vc2UgYSBzY3JlZW4gdGhhdCBpcyBub3QgNCBwaXhlbCBhbGlnbmVk
CgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
