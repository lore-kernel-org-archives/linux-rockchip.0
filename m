Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34B7AC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kA/WPIFWXg0z58UQHVlrLW1Yy44k1BaEY6wD9RfyEo=; b=xtDrCwHOWo/SmA
	+Ls6zZw6EjOKfCDhXtLfjj7vxrQZ0J+PSHItNh3B+l76gTeTA7mFUvMu6+n3tyb0sNCZiVQg7uPfL
	pgPWIFkxI0ZYaEVjbI/jca9CXowmY3aMFeywr/jAMtli1PW+By40UPrYJfXdsIc/KElW7Lk9LT8Gd
	U6TMBxYJ9y4lhPdg0OvRV2FKogStVAFrjkYuZvGAvsxaF70T5SsxlPaex47aatEyVB5LCIyEaPZac
	7roitrB/JOoHSV5snK9h3d6//J5W3XtGDu7V266CjPSuZPys8+AhqyLFSz7JUJnMsfRgQjdJzT1Eo
	pCiMBVTYhup6KF1tB8Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KGT-0000000B0qo-0rHa;
	Tue, 07 May 2024 12:49:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KGP-0000000B0pb-3S76
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 12:49:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F396B61751
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 12:49:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5027DC4DDE1
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 12:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715086183;
	bh=oD6rvzEgDMgWG2vtFEnISqggPQoEaDhmk8mNgqIWbIo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=eABs82m1AtKjOhNtBJTU0uty9AQ3gYq+B5rCkmi83qAwaXyPrZwid0INIHE4WKRwU
	 Vdn9KQfHByTy5BGU0IPuAXMmfB1QUlVfsTCake802pzTtw231WR6AxBrXCyD0KsQHS
	 vJxXxJP4xrLVcxWwycVzh6tUUrifWihZ9L1miCe5j7ieedBPGgfnuRFkyNcoeyF2yX
	 GsIvx3/FeF5/dj3mWUB1HL6Vg5BVxqJ7PHfBb2DQ/wzBPXix/2DgM9uISy0bswMMIc
	 T6FESYRG/yGj2BWSGr/G0fVJFy8HSy5yBwuYpTHLQ4Fs/LO6/NxQscbRi9X+c6qY1E
	 hBgOsJbpey4Dw==
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so2971158276.1
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 05:49:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXxUUY1Dt9DtgbwBuzIUs9g2kuNJEwrclK81rVFceB6MidUtD8HfvtO+97+nJIIMJeP3ioqPYX7S7LPSkC2UbM6CX2ojnpIJ6XWPW2LjYb86iSq
X-Gm-Message-State: AOJu0Ywe3q8HmSeAO9AmZIp13etfu0Ot2me29+g8BH0frtk/JsSitWPQ
	4KoOT6BmG9nhmPhy/WgCn6aP4Q//JzBC0r5WGbUuqJvnHpgFrO/ubMNQ0pK4IPRyUddX3OJMCtR
	Z3g88nx370vVEOSAw7uz34AOAe+q1pxMp3z383A==
X-Google-Smtp-Source: AGHT+IHTUvOiQuZXH5tWOLURVMUkaKIGLnwcoEtMxsrNy0hFgSoz1lGl+EUVn28GEgtHJMUNMRmgv3SGgEfOvaqU8mQ=
X-Received: by 2002:a05:6902:4d2:b0:dcd:aa73:e349 with SMTP id
 v18-20020a05690204d200b00dcdaa73e349mr11497694ybs.12.1715086182345; Tue, 07
 May 2024 05:49:42 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-4-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-4-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 14:49:30 +0200
X-Gmail-Original-Message-ID: <CAN6tsi7hM+BLkaTnS=6-eHqERp7hCi3NM93=OMfHkwKohtBHEw@mail.gmail.com>
Message-ID: <CAN6tsi7hM+BLkaTnS=6-eHqERp7hCi3NM93=OMfHkwKohtBHEw@mail.gmail.com>
Subject: Re: [PATCH 03/14] drm/bridge: analogix_dp: register AUX bus after
 enabling runtime PM
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
X-CRM114-CacheID: sfid-20240507_054945_969276_320401E2 
X-CRM114-Status: GOOD (  15.86  )
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
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gQVVYIHRyYW5zYWN0aW9ucyByZXF1aXJlIHRoZSBjb250
cm9sbGVyIHRvIGJlIGluIHdvcmtpbmcgc3RhdGUgYW5kCj4gdGFrZSBhIHJ1bnRpbWUgUE0gcmVm
ZXJlbmNlLiBUbyBhdm9pZCBwb3RlbnRpYWwgcmFjZXMgYmV3ZWVuIHRoZQo+IGZpcnN0IHRyYW5z
YWN0aW9ucyBvbiB0aGUgYnVzIGFuZCBydW50aW1lIFBNIGJlaW5nIHNldCB1cCwgbW92ZSB0aGUK
PiBBVVggcmVnaXN0cmF0aW9uIGJlaGluZCB0aGUgcnVudGltZSBQTSBzZXR1cC4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICAu
Li4vZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMgICAgfCAxOSArKysrKysr
KysrKy0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA4IGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgv
YW5hbG9naXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFs
b2dpeF9kcF9jb3JlLmMKPiBpbmRleCBiMzk3MjE1ODg5ODAuLjBhZjJhNzBhZTViZiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29y
ZS5jCj4gQEAgLTE3MjgsMzEgKzE3MjgsMzQgQEAgaW50IGFuYWxvZ2l4X2RwX2JpbmQoc3RydWN0
IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAsIHN0cnVjdCBkcm1fZGV2aWNlICpkcm1fZGV2KQo+ICAg
ICAgICAgZHAtPmRybV9kZXYgPSBkcm1fZGV2Owo+ICAgICAgICAgZHAtPmVuY29kZXIgPSBkcC0+
cGxhdF9kYXRhLT5lbmNvZGVyOwo+Cj4gKyAgICAgICBwbV9ydW50aW1lX3VzZV9hdXRvc3VzcGVu
ZChkcC0+ZGV2KTsKPiArICAgICAgIHBtX3J1bnRpbWVfc2V0X2F1dG9zdXNwZW5kX2RlbGF5KGRw
LT5kZXYsIDEwMCk7Cj4gKyAgICAgICBwbV9ydW50aW1lX2VuYWJsZShkcC0+ZGV2KTsKPiArCj4g
ICAgICAgICBkcC0+YXV4Lm5hbWUgPSAiRFAtQVVYIjsKPiAgICAgICAgIGRwLT5hdXgudHJhbnNm
ZXIgPSBhbmFsb2dpeF9kcGF1eF90cmFuc2ZlcjsKPiAgICAgICAgIGRwLT5hdXguZGV2ID0gZHAt
PmRldjsKPiAgICAgICAgIGRwLT5hdXguZHJtX2RldiA9IGRybV9kZXY7Cj4KPiAgICAgICAgIHJl
dCA9IGRybV9kcF9hdXhfcmVnaXN0ZXIoJmRwLT5hdXgpOwo+IC0gICAgICAgaWYgKHJldCkKPiAt
ICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiAtCj4gLSAgICAgICBwbV9ydW50aW1lX3VzZV9h
dXRvc3VzcGVuZChkcC0+ZGV2KTsKPiAtICAgICAgIHBtX3J1bnRpbWVfc2V0X2F1dG9zdXNwZW5k
X2RlbGF5KGRwLT5kZXYsIDEwMCk7Cj4gLSAgICAgICBwbV9ydW50aW1lX2VuYWJsZShkcC0+ZGV2
KTsKPiArICAgICAgIGlmIChyZXQpIHsKPiArICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJmYWls
ZWQgdG8gcmVnaXN0ZXIgQVVYICglZClcbiIsIHJldCk7Cj4gKyAgICAgICAgICAgICAgIGdvdG8g
ZXJyX2Rpc2FibGVfcG1fcnVudGltZTsKPiArICAgICAgIH0KPgo+ICAgICAgICAgcmV0ID0gYW5h
bG9naXhfZHBfY3JlYXRlX2JyaWRnZShkcm1fZGV2LCBkcCk7Cj4gICAgICAgICBpZiAocmV0KSB7
Cj4gICAgICAgICAgICAgICAgIERSTV9FUlJPUigiZmFpbGVkIHRvIGNyZWF0ZSBicmlkZ2UgKCVk
KVxuIiwgcmV0KTsKPiAtICAgICAgICAgICAgICAgZ290byBlcnJfZGlzYWJsZV9wbV9ydW50aW1l
Owo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl91bnJlZ2lzdGVyX2F1eDsKPiAgICAgICAgIH0K
Pgo+ICAgICAgICAgcmV0dXJuIDA7Cj4KPiArZXJyX3VucmVnaXN0ZXJfYXV4Ogo+ICsgICAgICAg
ZHJtX2RwX2F1eF91bnJlZ2lzdGVyKCZkcC0+YXV4KTsKPiAgZXJyX2Rpc2FibGVfcG1fcnVudGlt
ZToKPiAgICAgICAgIHBtX3J1bnRpbWVfZG9udF91c2VfYXV0b3N1c3BlbmQoZHAtPmRldik7Cj4g
ICAgICAgICBwbV9ydW50aW1lX2Rpc2FibGUoZHAtPmRldik7Cj4gLSAgICAgICBkcm1fZHBfYXV4
X3VucmVnaXN0ZXIoJmRwLT5hdXgpOwo+Cj4gICAgICAgICByZXR1cm4gcmV0Owo+ICB9Cj4gLS0K
PiAyLjM5LjIKPgoKUmV2aWV3ZWQtYnk6IFJvYmVydCBGb3NzIDxyZm9zc0BrZXJuZWwub3JnPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
