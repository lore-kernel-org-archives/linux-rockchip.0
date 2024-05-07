Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D252C25B4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 12:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=de0aJxlFKngpAkUUc57Zej5KYU5+QC30LNeOKFdODnc=; b=ikVJqCb+oSu5ii
	a4h2I4tPJsZ/vLoeX0DIb9r/uELOTX1zS+IQQR33RChj86ukMlFUybE31i+SgRpsOxDz7h93VqTVP
	O8gsL3EgXGvytttvs1p8RimNUnIldJEMk+uVbwr5dXOla0/88IAmu6KJXoMwmKP+/KPqZ0nk6J1HE
	49DmiRX9UfXPk0VtMqj3lqX7jlYRWtfXmI1scsuI4tzihAr4+ZNYWKzLTF/x6kpasceJ2UQZC2sOx
	3sH7jppmjLthGar+G9GhngDTguJOuaKVUzw54ODT7OP8rvx8VBE9v05hC8ZYYrdKR2xm5NrDQwCRb
	lqaOLA5npMgWVWeldD4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KPP-0000000B3pS-3aDP;
	Tue, 07 May 2024 12:59:03 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KPL-0000000B3lb-1d2L
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 12:59:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E07F5CE12FB
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 12:58:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5452C4DDE1
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715086733;
	bh=+hGg4qJDHV0B5+Y62ZMujf1YD6LV4XIoRUVLjY5kbsc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=EIfa3BFzDTxGczLQ4qb1a96ang/r1jtgT5FplzImnP0KsP1TRT/nm1b8/ZLAwwQZo
	 0UOM78jL/zRasAzjUzsmktrhJp2eiNnJHtIg67xSqA/HUW8IaZnmK5cNyOM7eXgBNc
	 xFRen+/2D4Zl9wEes2MiaFQ/kKNac9L9+tPLwVn6UXCT+XRa6QY8VrB1RCSTzxg7fR
	 NHUl3ynjz4BP1rkexDt1CFBLA11tImG4iaID7dAUAqg2EWiJpanol/WpjyP5j7HjFu
	 ix4GwfyMHW8BTnNMQIlXZSFM63lbOMLcEuLg2l+Qxg8Awd9oYj0fGaDEe4/psXk6e3
	 nahqA2rZjq5Dw==
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dc236729a2bso3143955276.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 05:58:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWOH0OvlSnuuhBp5ZSFvPmEhzm07wBYUPJ3eCwpnfXqOeNUtb85jJLA4TsMNxSLfhz5zQ+3qaVsBHbmQzQr59o4Gjpv5atB2bc1PuLmIf99BKiz
X-Gm-Message-State: AOJu0YzcbS2o2PhPe1u8lFRoGI/JNM+BBmaAfRJzCVgYvNDHMAFj3oyU
	LdWzB+jY7OIEZCy2htIllcdqk51zFpQ30iQXzgJnft3qiyF2fpa6s5f1utYMdo55ZttoLddVGoL
	DpE6taulb0JU1WYwhEKgGFr40gi19+/SuF5q8SA==
X-Google-Smtp-Source: AGHT+IGQ2BfLofpB2AbRmieIGAXSi684XtRW+H0VYOvLNhCMBmRejOoJpoRwFu6oTub3kA5Aplxvy0YO49unxPveVlc=
X-Received: by 2002:a25:dc8e:0:b0:dda:a550:4e92 with SMTP id
 y136-20020a25dc8e000000b00ddaa5504e92mr13570401ybe.46.1715086733004; Tue, 07
 May 2024 05:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-6-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-6-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 14:58:42 +0200
X-Gmail-Original-Message-ID: <CAN6tsi7uwn_TsVU5be6S=hnLyRCCBCaGPtLYYSkkfjV7v9GFYw@mail.gmail.com>
Message-ID: <CAN6tsi7uwn_TsVU5be6S=hnLyRCCBCaGPtLYYSkkfjV7v9GFYw@mail.gmail.com>
Subject: Re: [PATCH 05/14] drm/bridge: analogix_dp: remove unused analogix_dp_remove
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
X-CRM114-CacheID: sfid-20240507_055859_826658_CAD8A02D 
X-CRM114-Status: GOOD (  18.94  )
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

T24gRnJpLCBNYXkgMywgMjAyNCBhdCA1OjEz4oCvUE0gTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gTm93IHRoYXQgdGhlIGNsb2NrIGlzIGhhbmRsZWQgZHlu
YW1pY2FsbHkgdGhyb3VnaAo+IGFuYWxvZ2l4X2RwX3Jlc3VtZS9zdXNwZW5kIGFuZCBpdCBpc24n
dCBzdGF0aWNhbGx5IGVuYWJsZWQgaW4gdGhlCj4gZHJpdmVyIHByb2JlIHJvdXRpbmUsIHRoZXJl
IGlzIG5vIG5lZWQgZm9yIHRoZSByZW1vdmUgZnVuY3Rpb24gYW55bW9yZS4KPgo+IFNpZ25lZC1v
ZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYyB8IDUgLS0tLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHAuYyAgICAgICAgICAgICAgICAgfCAz
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2NoaXAuYyAg
ICB8IDkgKy0tLS0tLS0tCj4gIGluY2x1ZGUvZHJtL2JyaWRnZS9hbmFsb2dpeF9kcC5oICAgICAg
ICAgICAgICAgICAgIHwgMSAtCj4gIDQgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDE3
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5h
bG9naXgvYW5hbG9naXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dp
eC9hbmFsb2dpeF9kcF9jb3JlLmMKPiBpbmRleCA5ZTMzMDgyNTc1ODYuLjlmMWRmYTZmMjE3NSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2Rw
X2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhf
ZHBfY29yZS5jCj4gQEAgLTE4MTMsMTEgKzE4MTMsNiBAQCB2b2lkIGFuYWxvZ2l4X2RwX3VuYmlu
ZChzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCkKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQ
TChhbmFsb2dpeF9kcF91bmJpbmQpOwo+Cj4gLXZvaWQgYW5hbG9naXhfZHBfcmVtb3ZlKHN0cnVj
dCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+IC17Cj4gLX0KPiAtRVhQT1JUX1NZTUJPTF9HUEwo
YW5hbG9naXhfZHBfcmVtb3ZlKTsKPiAtCj4gIGludCBhbmFsb2dpeF9kcF9zdGFydF9jcmMoc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgewo+ICAgICAgICAgc3RydWN0IGFuYWxv
Z2l4X2RwX2RldmljZSAqZHAgPSB0b19kcChjb25uZWN0b3IpOwo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9l
eHlub3NfZHAuYwo+IGluZGV4IDMwYzg3NTAxODdhZC4uMDk3ZjhjNDYxN2RlIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RwLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vZXh5bm9zL2V4eW5vc19kcC5jCj4gQEAgLTI1MSwxMCArMjUxLDcgQEAgc3RhdGljIGlu
dCBleHlub3NfZHBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPgo+ICBzdGF0
aWMgdm9pZCBleHlub3NfZHBfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
IHsKPiAtICAgICAgIHN0cnVjdCBleHlub3NfZHBfZGV2aWNlICpkcCA9IHBsYXRmb3JtX2dldF9k
cnZkYXRhKHBkZXYpOwo+IC0KPiAgICAgICAgIGNvbXBvbmVudF9kZWwoJnBkZXYtPmRldiwgJmV4
eW5vc19kcF9vcHMpOwo+IC0gICAgICAgYW5hbG9naXhfZHBfcmVtb3ZlKGRwLT5hZHApOwo+ICB9
Cj4KPiAgc3RhdGljIGludCBleHlub3NfZHBfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hp
cC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMKPiBp
bmRleCA4MjE0MjY1ZjE0OTcuLjM2MmM3OTUxY2E0YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jCj4gQEAgLTQxNCwyMSArNDE0LDE0
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPgo+ICAgICAgICAgcmV0ID0gY29tcG9uZW50X2FkZChkZXYsICZyb2NrY2hpcF9kcF9j
b21wb25lbnRfb3BzKTsKPiAgICAgICAgIGlmIChyZXQpCj4gLSAgICAgICAgICAgICAgIGdvdG8g
ZXJyX2RwX3JlbW92ZTsKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPgo+ICAgICAgICAg
cmV0dXJuIDA7Cj4gLQo+IC1lcnJfZHBfcmVtb3ZlOgo+IC0gICAgICAgYW5hbG9naXhfZHBfcmVt
b3ZlKGRwLT5hZHApOwo+IC0gICAgICAgcmV0dXJuIHJldDsKPiAgfQo+Cj4gIHN0YXRpYyB2b2lk
IHJvY2tjaGlwX2RwX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4g
LSAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBfZHBfZGV2aWNlICpkcCA9IHBsYXRmb3JtX2dldF9kcnZk
YXRhKHBkZXYpOwo+IC0KPiAgICAgICAgIGNvbXBvbmVudF9kZWwoJnBkZXYtPmRldiwgJnJvY2tj
aGlwX2RwX2NvbXBvbmVudF9vcHMpOwo+IC0gICAgICAgYW5hbG9naXhfZHBfcmVtb3ZlKGRwLT5h
ZHApOwo+ICB9Cj4KPiAgc3RhdGljIGludCByb2NrY2hpcF9kcF9zdXNwZW5kKHN0cnVjdCBkZXZp
Y2UgKmRldikKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vYnJpZGdlL2FuYWxvZ2l4X2RwLmgg
Yi9pbmNsdWRlL2RybS9icmlkZ2UvYW5hbG9naXhfZHAuaAo+IGluZGV4IDg3MDliNmE3NGMwZi4u
NjAwMmM1NjY2MDMxIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2JyaWRnZS9hbmFsb2dpeF9k
cC5oCj4gKysrIGIvaW5jbHVkZS9kcm0vYnJpZGdlL2FuYWxvZ2l4X2RwLmgKPiBAQCAtNDQsNyAr
NDQsNiBAQCBzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICoKPiAgYW5hbG9naXhfZHBfcHJvYmUo
c3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgYW5hbG9naXhfZHBfcGxhdF9kYXRhICpwbGF0X2Rh
dGEpOwo+ICBpbnQgYW5hbG9naXhfZHBfYmluZChzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpk
cCwgc3RydWN0IGRybV9kZXZpY2UgKmRybV9kZXYpOwo+ICB2b2lkIGFuYWxvZ2l4X2RwX3VuYmlu
ZChzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCk7Cj4gLXZvaWQgYW5hbG9naXhfZHBfcmVt
b3ZlKHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKTsKPgo+ICBpbnQgYW5hbG9naXhfZHBf
c3RhcnRfY3JjKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpOwo+ICBpbnQgYW5hbG9n
aXhfZHBfc3RvcF9jcmMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4gLS0KPiAy
LjM5LjIKPgoKUmV2aWV3ZWQtYnk6IFJvYmVydCBGb3NzIDxyZm9zc0BrZXJuZWwub3JnPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
