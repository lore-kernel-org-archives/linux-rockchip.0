Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30920C25B75
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 12:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+CmBscA2bCSR9ZcMkbjcyZMU3NhnHecgZj1tmStfKQ=; b=gU5F+v1+8+AreP
	yB/+e4ruHlfvCHyN10U2uozn07WR4Fedv4Rgoyp051Z03tawUs02mftLqYMJyCz+ApstAfOs0eLoZ
	H2Vbfz0UfVDJldyEse1sokMY8ALvkXbpUIOty3d+9NnD1uSHjSHUJ1BSDCqVmiGf3wietsvRb1H4G
	2V1ZXaJ3IzZ+A3Py4+aMV32oI2FONOmLAugEnJ5gzC38bFVaLqOXY4v4wN8O00MJt7oHph7GA7DPz
	j1Hdy5KjXqJDOyVNjJU20G6SIWYZZNDnbwpq2F5P7Mzj4UrCE/IWDQRiUah8Cfoz1oDkndujIgi4O
	Gy2j8XR+CYJr2q7n8KJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KO3-0000000B31Q-0zCO;
	Tue, 07 May 2024 12:57:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KNz-0000000B2yK-1Gz6
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 12:57:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 65EAB61757
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 12:57:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1596C4DDE4
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715086654;
	bh=5dWOBGAV1yulOx19L0kSg5lHFwhfe9JMw50lv5bx6mg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=NROAxjMv3gbBJXfDpU+ioALD6dqy1I5JEm4hSSOj8ew0uC/Ipp+IBuHIp4rTzbuFV
	 T3AnRzwWIGPWtd1sk5Tworn//5HwcOCbhrYGT9YsY4teB9WlacwRC1b0GNwTBCTYEy
	 4Dp3mdHQdXq/h1pL09WIWGX0QGtOguhezK+pru1LOsbKHIXYVKqXZS6HSkvgtbgeqq
	 zMDw6OV31ojpuOkv+WhD6peOJ8lP1DZBEkYZ8CTI+a8bHuNOAH9z4eKLlkU2yGFaJF
	 nRUHWBZz8p0dJyxi09vyT4qL+C6aO57ma11bsLj0p22WdDLy9KUDYs1ySBiQWlRYBL
	 2cOlPa+PMWNgg==
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-de604ca3cfcso3050773276.3
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 05:57:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWpCQBTizu/YsFJ+auMLA4iwmY0nGs0fxalADWGDAXBeff3yur5v7ccofa2d6lBqQeNpiRdEbeDlBqc3fban8RLwEEuV8U+wn3vYL+N5OcBVExf
X-Gm-Message-State: AOJu0YxxGJhgKnDYuUnYeKnS1oXSle245SvyHUan76vu1lSPzXZ+8mT5
	EeJ/v2ZQw7g5nM2YrG0crN/0qtwJi/Tk3q6PIEf7SxuAoThDprQ+oVdeseXw+pW5+rVy4sv8I8y
	m645VJ2QqtD5boBh1rnbAOhRTxEz9ahLnWKw3uw==
X-Google-Smtp-Source: AGHT+IGVjrrbyaO+W2td9MvTHHIHJohjThPzqW9Jq+X0prnVcvnLTyCNz9j38AOvB/d2I/ivjj9VfCgtQ7DsAAbkTuc=
X-Received: by 2002:a05:6902:1343:b0:dc6:e4f8:7e22 with SMTP id
 g3-20020a056902134300b00dc6e4f87e22mr12769105ybu.62.1715086653180; Tue, 07
 May 2024 05:57:33 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-5-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-5-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 14:57:22 +0200
X-Gmail-Original-Message-ID: <CAN6tsi7995885erO70zb53q+PURzrVP+AgJQ+V1Tc57PZHrkqw@mail.gmail.com>
Message-ID: <CAN6tsi7995885erO70zb53q+PURzrVP+AgJQ+V1Tc57PZHrkqw@mail.gmail.com>
Subject: Re: [PATCH 04/14] drm/bridge: analogix_dp: handle clock via runtime PM
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
X-CRM114-CacheID: sfid-20240507_055735_758820_48EC3383 
X-CRM114-Status: GOOD (  20.34  )
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
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gVGhlcmUgaXMgbm8gcmVhc29uIHRvIGVuYWJsZSB0aGUg
Y29udHJvbGxlciBjbG9jayBpbiBkcml2ZXIgcHJvYmUsIGFzCj4gdGhlcmUgaXMgbm8gSFcgaW5p
dGlhbGl6YXRpb24gZG9uZSBpbiB0aGlzIGZ1bmN0aW9uLiBJbnN0ZWFkIHJlbHkgb24KPiBlaXRo
ZXIgcnVudGltZSBQTSB0byBoYW5kbGUgdGhlIGNvbnRyb2xsZXIgY2xvY2sgb3Igc3RhdGljYWxs
eSBlbmFibGUKPiBpdCBpbiB0aGUgZHJpdmVyIGJpbmQgcm91dGluZSwgYWZ0ZXIgd2hpY2ggcmVh
bCBoYXJkd2FyZSBhY2Nlc3MgaXMKPiByZXF1aXJlZCB0byB3b3JrLgo+Cj4gU2lnbmVkLW9mZi1i
eTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIC4uLi9kcm0v
YnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYyAgICB8IDc4ICsrKysrKysrKysrLS0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9n
aXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9k
cF9jb3JlLmMKPiBpbmRleCAwYWYyYTcwYWU1YmYuLjllMzMwODI1NzU4NiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4g
QEAgLTE2NTgsOCArMTY1OCw2IEBAIGFuYWxvZ2l4X2RwX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRl
diwgc3RydWN0IGFuYWxvZ2l4X2RwX3BsYXRfZGF0YSAqcGxhdF9kYXRhKQo+ICAgICAgICAgICAg
ICAgICByZXR1cm4gRVJSX0NBU1QoZHAtPmNsb2NrKTsKPiAgICAgICAgIH0KPgo+IC0gICAgICAg
Y2xrX3ByZXBhcmVfZW5hYmxlKGRwLT5jbG9jayk7Cj4gLQo+ICAgICAgICAgcmVzID0gcGxhdGZv
cm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKPgo+ICAgICAgICAgZHAt
PnJlZ19iYXNlID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKCZwZGV2LT5kZXYsIHJlcyk7Cj4gQEAg
LTE3MjEsNiArMTcxOSwyOSBAQCBhbmFsb2dpeF9kcF9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdCBhbmFsb2dpeF9kcF9wbGF0X2RhdGEgKnBsYXRfZGF0YSkKPiAgfQo+ICBFWFBPUlRf
U1lNQk9MX0dQTChhbmFsb2dpeF9kcF9wcm9iZSk7Cj4KPiArCj4gK2ludCBhbmFsb2dpeF9kcF9z
dXNwZW5kKHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+ICt7Cj4gKyAgICAgICBjbGtf
ZGlzYWJsZV91bnByZXBhcmUoZHAtPmNsb2NrKTsKPiArCj4gKyAgICAgICByZXR1cm4gMDsKPiAr
fQo+ICtFWFBPUlRfU1lNQk9MX0dQTChhbmFsb2dpeF9kcF9zdXNwZW5kKTsKPiArCj4gK2ludCBh
bmFsb2dpeF9kcF9yZXN1bWUoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4gK3sKPiAr
ICAgICAgIGludCByZXQ7Cj4gKwo+ICsgICAgICAgcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGRw
LT5jbG9jayk7Cj4gKyAgICAgICBpZiAocmV0IDwgMCkgewo+ICsgICAgICAgICAgICAgICBEUk1f
RVJST1IoIkZhaWxlZCB0byBwcmVwYXJlX2VuYWJsZSB0aGUgY2xvY2sgY2xrIFslZF1cbiIsIHJl
dCk7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAg
ICAgcmV0dXJuIDA7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwoYW5hbG9naXhfZHBfcmVzdW1l
KTsKPiArCj4gIGludCBhbmFsb2dpeF9kcF9iaW5kKHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2Ug
KmRwLCBzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldikKPiAgewo+ICAgICAgICAgaW50IHJldDsK
PiBAQCAtMTcyOCw5ICsxNzQ5LDE1IEBAIGludCBhbmFsb2dpeF9kcF9iaW5kKHN0cnVjdCBhbmFs
b2dpeF9kcF9kZXZpY2UgKmRwLCBzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldikKPiAgICAgICAg
IGRwLT5kcm1fZGV2ID0gZHJtX2RldjsKPiAgICAgICAgIGRwLT5lbmNvZGVyID0gZHAtPnBsYXRf
ZGF0YS0+ZW5jb2RlcjsKPgo+IC0gICAgICAgcG1fcnVudGltZV91c2VfYXV0b3N1c3BlbmQoZHAt
PmRldik7Cj4gLSAgICAgICBwbV9ydW50aW1lX3NldF9hdXRvc3VzcGVuZF9kZWxheShkcC0+ZGV2
LCAxMDApOwo+IC0gICAgICAgcG1fcnVudGltZV9lbmFibGUoZHAtPmRldik7Cj4gKyAgICAgICBp
ZiAoSVNfRU5BQkxFRChDT05GSUdfUE0pKSB7Cj4gKyAgICAgICAgICAgICAgIHBtX3J1bnRpbWVf
dXNlX2F1dG9zdXNwZW5kKGRwLT5kZXYpOwo+ICsgICAgICAgICAgICAgICBwbV9ydW50aW1lX3Nl
dF9hdXRvc3VzcGVuZF9kZWxheShkcC0+ZGV2LCAxMDApOwo+ICsgICAgICAgICAgICAgICBwbV9y
dW50aW1lX2VuYWJsZShkcC0+ZGV2KTsKPiArICAgICAgIH0gZWxzZSB7Cj4gKyAgICAgICAgICAg
ICAgIHJldCA9IGFuYWxvZ2l4X2RwX3Jlc3VtZShkcCk7Cj4gKyAgICAgICAgICAgICAgIGlmIChy
ZXQpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArICAgICAgIH0KPgo+
ICAgICAgICAgZHAtPmF1eC5uYW1lID0gIkRQLUFVWCI7Cj4gICAgICAgICBkcC0+YXV4LnRyYW5z
ZmVyID0gYW5hbG9naXhfZHBhdXhfdHJhbnNmZXI7Cj4gQEAgLTE3NTQsOCArMTc4MSwxMiBAQCBp
bnQgYW5hbG9naXhfZHBfYmluZChzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCwgc3RydWN0
IGRybV9kZXZpY2UgKmRybV9kZXYpCj4gIGVycl91bnJlZ2lzdGVyX2F1eDoKPiAgICAgICAgIGRy
bV9kcF9hdXhfdW5yZWdpc3RlcigmZHAtPmF1eCk7Cj4gIGVycl9kaXNhYmxlX3BtX3J1bnRpbWU6
Cj4gLSAgICAgICBwbV9ydW50aW1lX2RvbnRfdXNlX2F1dG9zdXNwZW5kKGRwLT5kZXYpOwo+IC0g
ICAgICAgcG1fcnVudGltZV9kaXNhYmxlKGRwLT5kZXYpOwo+ICsgICAgICAgaWYgKElTX0VOQUJM
RUQoQ09ORklHX1BNKSkgewo+ICsgICAgICAgICAgICAgICBwbV9ydW50aW1lX2RvbnRfdXNlX2F1
dG9zdXNwZW5kKGRwLT5kZXYpOwo+ICsgICAgICAgICAgICAgICBwbV9ydW50aW1lX2Rpc2FibGUo
ZHAtPmRldik7Cj4gKyAgICAgICB9IGVsc2Ugewo+ICsgICAgICAgICAgICAgICBhbmFsb2dpeF9k
cF9zdXNwZW5kKGRwKTsKPiArICAgICAgIH0KPgo+ICAgICAgICAgcmV0dXJuIHJldDsKPiAgfQo+
IEBAIC0xNzcyLDQwICsxODAzLDIxIEBAIHZvaWQgYW5hbG9naXhfZHBfdW5iaW5kKHN0cnVjdCBh
bmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+ICAgICAgICAgfQo+Cj4gICAgICAgICBkcm1fZHBfYXV4
X3VucmVnaXN0ZXIoJmRwLT5hdXgpOwo+IC0gICAgICAgcG1fcnVudGltZV9kb250X3VzZV9hdXRv
c3VzcGVuZChkcC0+ZGV2KTsKPiAtICAgICAgIHBtX3J1bnRpbWVfZGlzYWJsZShkcC0+ZGV2KTsK
PiArCj4gKyAgICAgICBpZiAoSVNfRU5BQkxFRChDT05GSUdfUE0pKSB7Cj4gKyAgICAgICAgICAg
ICAgIHBtX3J1bnRpbWVfZG9udF91c2VfYXV0b3N1c3BlbmQoZHAtPmRldik7Cj4gKyAgICAgICAg
ICAgICAgIHBtX3J1bnRpbWVfZGlzYWJsZShkcC0+ZGV2KTsKPiArICAgICAgIH0gZWxzZSB7Cj4g
KyAgICAgICAgICAgICAgIGFuYWxvZ2l4X2RwX3N1c3BlbmQoZHApOwo+ICsgICAgICAgfQo+ICB9
Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKGFuYWxvZ2l4X2RwX3VuYmluZCk7Cj4KPiAgdm9pZCBhbmFs
b2dpeF9kcF9yZW1vdmUoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4gIHsKPiAtICAg
ICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShkcC0+Y2xvY2spOwo+ICB9Cj4gIEVYUE9SVF9TWU1C
T0xfR1BMKGFuYWxvZ2l4X2RwX3JlbW92ZSk7Cj4KPiAtI2lmZGVmIENPTkZJR19QTQo+IC1pbnQg
YW5hbG9naXhfZHBfc3VzcGVuZChzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCkKPiAtewo+
IC0gICAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRwLT5jbG9jayk7Cj4gLSAgICAgICByZXR1
cm4gMDsKPiAtfQo+IC1FWFBPUlRfU1lNQk9MX0dQTChhbmFsb2dpeF9kcF9zdXNwZW5kKTsKPiAt
Cj4gLWludCBhbmFsb2dpeF9kcF9yZXN1bWUoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAp
Cj4gLXsKPiAtICAgICAgIGludCByZXQ7Cj4gLQo+IC0gICAgICAgcmV0ID0gY2xrX3ByZXBhcmVf
ZW5hYmxlKGRwLT5jbG9jayk7Cj4gLSAgICAgICBpZiAocmV0IDwgMCkgewo+IC0gICAgICAgICAg
ICAgICBEUk1fRVJST1IoIkZhaWxlZCB0byBwcmVwYXJlX2VuYWJsZSB0aGUgY2xvY2sgY2xrIFsl
ZF1cbiIsIHJldCk7Cj4gLSAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gLSAgICAgICB9Cj4g
LQo+IC0gICAgICAgcmV0dXJuIDA7Cj4gLX0KPiAtRVhQT1JUX1NZTUJPTF9HUEwoYW5hbG9naXhf
ZHBfcmVzdW1lKTsKPiAtI2VuZGlmCj4gLQo+ICBpbnQgYW5hbG9naXhfZHBfc3RhcnRfY3JjKHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBhbmFs
b2dpeF9kcF9kZXZpY2UgKmRwID0gdG9fZHAoY29ubmVjdG9yKTsKPiAtLQo+IDIuMzkuMgo+CgpS
ZXZpZXdlZC1ieTogUm9iZXJ0IEZvc3MgPHJmb3NzQGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
