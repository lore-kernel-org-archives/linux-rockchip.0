Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED34C25B4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 12:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDmpQR+juuXYUGf/HfKCN53DbXXW00dvafhysBYkECA=; b=zP/iRmyp2Cqa29
	6ARGQ7sbcu/qd/ujoROm2OMxzTjM40ULyvRErI/87R74eNzTWgTlWTPM8JY9+oULKyxF4pvTcEmyJ
	fK00ZKEHxCn6E6Hdzc9PRfR7IulBiL6u3qRRzi35SEB6WCBDSift86VzsKMvqDgMU55YYpTtAHu68
	18NC12himqkhrQcysYRfn5q4wfOW883f6cSike3MVd00WEDdOwwCjO4LQBJEO+JRjq38LPzd5Ivqx
	b7DD62cOrElGXNl1ynG/+DzoOzx8OWsQFkCKBykrotw5tSBQYrNnLX0LfwZAAEGwanP0CI+reEy9+
	1WAhvzb5YP7Fe38m0O+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4JXR-0000000Ap7m-0X6R;
	Tue, 07 May 2024 12:03:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4JXN-0000000Ap5Y-3ju5
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 12:03:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 854856173B
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 12:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89301C4DDE9
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 12:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715083388;
	bh=Ea92ey9Y4mJyACRVj1y+BYDC6s5Ina7q6HC2o8kkYqI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=NmfOP7y5cgdKPQyFZR3J8hxc+96sREULM+zTk83sxpQWOupwU2wRzPCNFiEKH2Inc
	 0Rgl/9+At2bCzdkcG1x5bynQPK8PCtqBvXedBVA40cKcSvjl0N1h97yAdMRBjAs9+o
	 rUAFNRGljyppaf81Edcv6HvvSrNVx+9U4diHiDs01h8y1UKztCuFWkLt40Ff4jzWSr
	 8uaSoP+YbkQDNfPk4YtJ4G7Jgw4MW3JOmmxmBtQAUC5rp+M0C74o0UD0Be7YYpmUI6
	 dqtZyHK746ne6CDkjbebmPWGD6cLvdRaubpRJRrnY6mUe2/oQ6/cTWL3NEVZpbQ6qu
	 isABdY8OpwGgg==
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-de5e74939fdso2480177276.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 05:03:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWMxMKjQ70cCT/Yh5DLhICwvioKPgrwjv/0vkDsyKu/1v0G36wN5tZbYNLLBg5yTgE5n7HtxpqObW0AEwsOjcFBzkny4HjumXHsr6qsDbtZMDwU
X-Gm-Message-State: AOJu0YxdkIBi6IfpTe1Z80R8osSd/SXmTVj7OtuLF8OciPgCtD3q2Hew
	kYPSXkixQA+16ovUq0WIfhYdOSJqXmbNORGhidxDEaviP01UDu4/JiUpX+/TRz4w1WTHeUXnRGh
	4N5utZ/y8YRY285512U7qK4Ye7RWwLzvsbKIriQ==
X-Google-Smtp-Source: AGHT+IFASQJ7En22EiRKU1G/Js+pMfVUKcBEoMeS7ZnY6BKqLbZB1gsTSLgE44jqNPZXZ29zuSi8fVfr7Ile965txI8=
X-Received: by 2002:a25:2985:0:b0:de6:4ff:3157 with SMTP id
 p127-20020a252985000000b00de604ff3157mr12618383ybp.44.1715083387541; Tue, 07
 May 2024 05:03:07 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-2-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-2-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 14:02:56 +0200
X-Gmail-Original-Message-ID: <CAN6tsi4xo+0RPkA6h0JurDn1WVvQRpNmPdZWks34BAMhCxU+_w@mail.gmail.com>
Message-ID: <CAN6tsi4xo+0RPkA6h0JurDn1WVvQRpNmPdZWks34BAMhCxU+_w@mail.gmail.com>
Subject: Re: [PATCH 01/14] drm/bridge: analogix_dp: remove unused platform
 power_on_end callback
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
X-CRM114-CacheID: sfid-20240507_050314_218634_F176064B 
X-CRM114-Status: GOOD (  18.47  )
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
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gVGhpcyBpc24ndCB1c2VkLCBidXQgZ2l2ZXMgdGhlIGlt
cHJlc3Npb24gb2YgdGhlIHBvd2VyIG9uIGFuZCBwb3dlciBvZmYKPiBwbGF0Zm9ybSBjYWxscyBi
ZWluZyBub24tc3ltbWV0cmljYWwuIFJlbW92ZSB0aGUgdW51c2VkIGNhbGxiYWNrIGFuZAo+IHJl
bmFtZSB0aGUgcG93ZXJfb25fc3RhcnQgdG8gc2ltcGxheSBwb3dlcl9vbi4KCnMvc2ltcGxheS9z
aW1wbHkKCj4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25p
eC5kZT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9k
cF9jb3JlLmMgfCA3ICsrLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHAu
YyAgICAgICAgICAgICAgICAgfCAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFs
b2dpeF9kcC1yb2NrY2hpcC5jICAgIHwgNCArKy0tCj4gIGluY2x1ZGUvZHJtL2JyaWRnZS9hbmFs
b2dpeF9kcC5oICAgICAgICAgICAgICAgICAgIHwgMyArLS0KPiAgNCBmaWxlcyBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiBpbmRleCA5ODQ1NGYwYWY5
MGUuLmIzOTcyMTU4ODk4MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2Fu
YWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
YW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4gQEAgLTEyNjQsOCArMTI2NCw4IEBAIHN0YXRp
YyBpbnQgYW5hbG9naXhfZHBfc2V0X2JyaWRnZShzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpk
cCkKPiAgICAgICAgICAgICAgICAgZ290byBvdXRfZHBfY2xrX3ByZTsKPiAgICAgICAgIH0KPgo+
IC0gICAgICAgaWYgKGRwLT5wbGF0X2RhdGEtPnBvd2VyX29uX3N0YXJ0KQo+IC0gICAgICAgICAg
ICAgICBkcC0+cGxhdF9kYXRhLT5wb3dlcl9vbl9zdGFydChkcC0+cGxhdF9kYXRhKTsKPiArICAg
ICAgIGlmIChkcC0+cGxhdF9kYXRhLT5wb3dlcl9vbikKPiArICAgICAgICAgICAgICAgZHAtPnBs
YXRfZGF0YS0+cG93ZXJfb24oZHAtPnBsYXRfZGF0YSk7Cj4KPiAgICAgICAgIHBoeV9wb3dlcl9v
bihkcC0+cGh5KTsKPgo+IEBAIC0xMjkwLDkgKzEyOTAsNiBAQCBzdGF0aWMgaW50IGFuYWxvZ2l4
X2RwX3NldF9icmlkZ2Uoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4gICAgICAgICAg
ICAgICAgIGdvdG8gb3V0X2RwX2luaXQ7Cj4gICAgICAgICB9Cj4KPiAtICAgICAgIGlmIChkcC0+
cGxhdF9kYXRhLT5wb3dlcl9vbl9lbmQpCj4gLSAgICAgICAgICAgICAgIGRwLT5wbGF0X2RhdGEt
PnBvd2VyX29uX2VuZChkcC0+cGxhdF9kYXRhKTsKPiAtCj4gICAgICAgICBlbmFibGVfaXJxKGRw
LT5pcnEpOwo+ICAgICAgICAgcmV0dXJuIDA7Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2V4eW5vcy9leHlub3NfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2Rw
LmMKPiBpbmRleCBmNDhjNDM0M2Y0NjkuLjMwYzg3NTAxODdhZCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4
eW5vcy9leHlub3NfZHAuYwo+IEBAIC0yMzMsNyArMjMzLDcgQEAgc3RhdGljIGludCBleHlub3Nf
ZHBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgIC8qIFRoZSBy
ZW1vdGUgcG9ydCBjYW4gYmUgZWl0aGVyIGEgcGFuZWwgb3IgYSBicmlkZ2UgKi8KPiAgICAgICAg
IGRwLT5wbGF0X2RhdGEucGFuZWwgPSBwYW5lbDsKPiAgICAgICAgIGRwLT5wbGF0X2RhdGEuZGV2
X3R5cGUgPSBFWFlOT1NfRFA7Cj4gLSAgICAgICBkcC0+cGxhdF9kYXRhLnBvd2VyX29uX3N0YXJ0
ID0gZXh5bm9zX2RwX3Bvd2Vyb247Cj4gKyAgICAgICBkcC0+cGxhdF9kYXRhLnBvd2VyX29uID0g
ZXh5bm9zX2RwX3Bvd2Vyb247Cj4gICAgICAgICBkcC0+cGxhdF9kYXRhLnBvd2VyX29mZiA9IGV4
eW5vc19kcF9wb3dlcm9mZjsKPiAgICAgICAgIGRwLT5wbGF0X2RhdGEuYXR0YWNoID0gZXh5bm9z
X2RwX2JyaWRnZV9hdHRhY2g7Cj4gICAgICAgICBkcC0+cGxhdF9kYXRhLmdldF9tb2RlcyA9IGV4
eW5vc19kcF9nZXRfbW9kZXM7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxv
Z2l4X2RwLXJvY2tjaGlwLmMKPiBpbmRleCA3MDY5YTNkNGQ1ODEuLmJhZWI0MTg3NWE0YiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2NoaXAu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5j
Cj4gQEAgLTkyLDcgKzkyLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9kcF9wcmVfaW5pdChzdHJ1
Y3Qgcm9ja2NoaXBfZHBfZGV2aWNlICpkcCkKPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiAt
c3RhdGljIGludCByb2NrY2hpcF9kcF9wb3dlcm9uX3N0YXJ0KHN0cnVjdCBhbmFsb2dpeF9kcF9w
bGF0X2RhdGEgKnBsYXRfZGF0YSkKPiArc3RhdGljIGludCByb2NrY2hpcF9kcF9wb3dlcm9uKHN0
cnVjdCBhbmFsb2dpeF9kcF9wbGF0X2RhdGEgKnBsYXRfZGF0YSkKPiAgewo+ICAgICAgICAgc3Ry
dWN0IHJvY2tjaGlwX2RwX2RldmljZSAqZHAgPSBwZGF0YV9lbmNvZGVyX3RvX2RwKHBsYXRfZGF0
YSk7Cj4gICAgICAgICBpbnQgcmV0Owo+IEBAIC0zOTcsNyArMzk3LDcgQEAgc3RhdGljIGludCBy
b2NrY2hpcF9kcF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAg
ZHAtPmRhdGEgPSBkcF9kYXRhOwo+ICAgICAgICAgZHAtPnBsYXRfZGF0YS5wYW5lbCA9IHBhbmVs
Owo+ICAgICAgICAgZHAtPnBsYXRfZGF0YS5kZXZfdHlwZSA9IGRwLT5kYXRhLT5jaGlwX3R5cGU7
Cj4gLSAgICAgICBkcC0+cGxhdF9kYXRhLnBvd2VyX29uX3N0YXJ0ID0gcm9ja2NoaXBfZHBfcG93
ZXJvbl9zdGFydDsKPiArICAgICAgIGRwLT5wbGF0X2RhdGEucG93ZXJfb24gPSByb2NrY2hpcF9k
cF9wb3dlcm9uOwo+ICAgICAgICAgZHAtPnBsYXRfZGF0YS5wb3dlcl9vZmYgPSByb2NrY2hpcF9k
cF9wb3dlcmRvd247Cj4gICAgICAgICBkcC0+cGxhdF9kYXRhLmdldF9tb2RlcyA9IHJvY2tjaGlw
X2RwX2dldF9tb2RlczsKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9icmlkZ2UvYW5hbG9n
aXhfZHAuaCBiL2luY2x1ZGUvZHJtL2JyaWRnZS9hbmFsb2dpeF9kcC5oCj4gaW5kZXggYjBkY2Mw
NzMzNGExLi44NzA5YjZhNzRjMGYgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9kcm0vYnJpZGdlL2Fu
YWxvZ2l4X2RwLmgKPiArKysgYi9pbmNsdWRlL2RybS9icmlkZ2UvYW5hbG9naXhfZHAuaAo+IEBA
IC0yOSw4ICsyOSw3IEBAIHN0cnVjdCBhbmFsb2dpeF9kcF9wbGF0X2RhdGEgewo+ICAgICAgICAg
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcjsKPiAgICAgICAgIGJvb2wgc2tpcF9jb25u
ZWN0b3I7Cj4KPiAtICAgICAgIGludCAoKnBvd2VyX29uX3N0YXJ0KShzdHJ1Y3QgYW5hbG9naXhf
ZHBfcGxhdF9kYXRhICopOwo+IC0gICAgICAgaW50ICgqcG93ZXJfb25fZW5kKShzdHJ1Y3QgYW5h
bG9naXhfZHBfcGxhdF9kYXRhICopOwo+ICsgICAgICAgaW50ICgqcG93ZXJfb24pKHN0cnVjdCBh
bmFsb2dpeF9kcF9wbGF0X2RhdGEgKik7Cj4gICAgICAgICBpbnQgKCpwb3dlcl9vZmYpKHN0cnVj
dCBhbmFsb2dpeF9kcF9wbGF0X2RhdGEgKik7Cj4gICAgICAgICBpbnQgKCphdHRhY2gpKHN0cnVj
dCBhbmFsb2dpeF9kcF9wbGF0X2RhdGEgKiwgc3RydWN0IGRybV9icmlkZ2UgKiwKPiAgICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IGRybV9jb25uZWN0b3IgKik7Cj4gLS0KPiAyLjM5LjIKPgoK
UmV2aWV3ZWQtYnk6IFJvYmVydCBGb3NzIDxyZm9zc0BrZXJuZWwub3JnPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
