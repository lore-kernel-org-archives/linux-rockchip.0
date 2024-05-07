Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51F63C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKRxC3CYZ5hpYf71h33l/It8cD5zYsgpqtSKkqqP50Q=; b=YMgUcoUFOaUMGg
	1zlDEHQwZ9bscYrvSbke0a2/4oJuBFlJMHw0/V4yx/PsRuoiMvXiDGEx9FYNOcwQ0AdiFE2HVAltN
	HfZXIxOo4FhgtX90zhIb/ymR+7QSYUx1LXGFThfR+pXo16DR+ezxA7kDGBCFf5+zERfAC9mRfllr/
	R5pl2kG+5rx1ciIbLVQaupSoNAnZt4Kon5TXHZ1rPXzFEGQdsnmb/jHHI9vyCByjYDCZYMSfAsSX6
	QnebZCGbSZlt5OOQBXLDAy+VUNNpanV6PxWLsmkZ5YtAS0DKsWpHtig/uRKcbDV7kEO4AZEA3Fnac
	OImjhqRXNXX+sHp1sdsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KQn-0000000B4M8-1SO2;
	Tue, 07 May 2024 13:00:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KQk-0000000B4L0-0U5G
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 13:00:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 580636175D
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:00:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B524C4DDEC
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715086824;
	bh=9UOLJi3U937d7+bwvcyTk9A7wBaszZvOfBbZWMQXdpA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=GhPD3ZjkJryMgBe0H/r/mfF9Ve0KuZbgzT2uKEURj/ahDGVWPoJUsO1ceXQ7QCw0O
	 xLuO5hFIwPuOgFVL3ZhFtE4aVNAtpbf4ifmJTSe+7ZD63cFtziqsa9O0A4R5TO9bqN
	 XOo9gtEvFJJ+dHGTvOQ2HyYjUR8UlWefeo0liZcDEiEPEKvk3N+hcQgoaEox3bq73F
	 xj+4CixRxjOCdfrgC9lIn5TJcsS0qBTsqjKeHK9eEFbWt+5sCdNZA1UvKIspTNaUAO
	 IGGgkWbmyMIEXQ9Q5V4xygv4hB/i2WNiA8PqYcdVysE9WM8QBhZPXDkwd3sZIN6axw
	 pPpVCaBMF1ehQ==
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-deb65b541faso2961232276.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 06:00:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW49FaCoEcH1Cz892UzscluvS/bwPWwgr8VO8S11yFRnCiTqx0Fws4k8NtUrk4qTwv7FZBNy8sMwfB72v73Vxqq4KUDn9K69iyJ6+wskixshHT4
X-Gm-Message-State: AOJu0Yx7kdRb/Mw/mXeq9jdIy5/QggvoquaODMdM5mNtD9YLPt5f9m00
	+DFsgcHabEKpt/uHHTIF4r+mTDZM6QF3wDacQHpgMgP+HqEDtbXZJVfPc4Rg4TIAHrxZ1nn3zK/
	OILy5Y+e7ebV7te+DRtgTUQKQ1zP/DacpSlKfWA==
X-Google-Smtp-Source: AGHT+IFSXIrlEHQMjbadrALM1vetWbdYRhg+rYYyEOkc+cmtMDuzDsVoHeE8HoT2ozVpMFsvd3ft+Xu4gMNWYZI20nc=
X-Received: by 2002:a25:df48:0:b0:dc2:3f75:1f79 with SMTP id
 w69-20020a25df48000000b00dc23f751f79mr13418770ybg.23.1715086823845; Tue, 07
 May 2024 06:00:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-7-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-7-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 15:00:12 +0200
X-Gmail-Original-Message-ID: <CAN6tsi6T+CO8U8B6VetzwT+zQz5X6www4t0SfRnwjg=AY+y5Rg@mail.gmail.com>
Message-ID: <CAN6tsi6T+CO8U8B6VetzwT+zQz5X6www4t0SfRnwjg=AY+y5Rg@mail.gmail.com>
Subject: Re: [PATCH 06/14] drm/bridge: analogix_dp: remove clk handling from analogix_dp_set_bridge
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
X-CRM114-CacheID: sfid-20240507_060026_266694_CB8C6B65 
X-CRM114-Status: GOOD (  15.71  )
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
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gVGhlIGNsb2NrIGlzIGFscmVhZHkgbWFuYWdlZCBieSBy
dW50aW1lIFBNLCB3aGljaCBpcyBwcm9wZXJseSBpbnZva2VkCj4gZnJvbSB0aGUgYW5hbG9naXhf
ZHBfc2V0X2JyaWRnZSBmdW5jdGlvbiwgc28gdGhlcmUgaXMgbm8gbmVlZCBmb3IgYW4KPiBhZGRp
dGlvbmFsIHJlZmVyZW5jZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNo
QHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4
L2FuYWxvZ2l4X2RwX2NvcmUuYyB8IDExICstLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMTAgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+IGluZGV4IDlmMWRmYTZmMjE3
NS4uMzExZTFlNjc0ODZkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5h
bG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9h
bmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiBAQCAtMTI1OCwxMiArMTI1OCw2IEBAIHN0YXRp
YyBpbnQgYW5hbG9naXhfZHBfc2V0X2JyaWRnZShzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpk
cCkKPgo+ICAgICAgICAgcG1fcnVudGltZV9nZXRfc3luYyhkcC0+ZGV2KTsKPgo+IC0gICAgICAg
cmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGRwLT5jbG9jayk7Cj4gLSAgICAgICBpZiAocmV0IDwg
MCkgewo+IC0gICAgICAgICAgICAgICBEUk1fRVJST1IoIkZhaWxlZCB0byBwcmVwYXJlX2VuYWJs
ZSB0aGUgY2xvY2sgY2xrIFslZF1cbiIsIHJldCk7Cj4gLSAgICAgICAgICAgICAgIGdvdG8gb3V0
X2RwX2Nsa19wcmU7Cj4gLSAgICAgICB9Cj4gLQo+ICAgICAgICAgaWYgKGRwLT5wbGF0X2RhdGEt
PnBvd2VyX29uKQo+ICAgICAgICAgICAgICAgICBkcC0+cGxhdF9kYXRhLT5wb3dlcl9vbihkcC0+
cGxhdF9kYXRhKTsKPgo+IEBAIC0xMjk3LDggKzEyOTEsNyBAQCBzdGF0aWMgaW50IGFuYWxvZ2l4
X2RwX3NldF9icmlkZ2Uoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4gICAgICAgICBw
aHlfcG93ZXJfb2ZmKGRwLT5waHkpOwo+ICAgICAgICAgaWYgKGRwLT5wbGF0X2RhdGEtPnBvd2Vy
X29mZikKPiAgICAgICAgICAgICAgICAgZHAtPnBsYXRfZGF0YS0+cG93ZXJfb2ZmKGRwLT5wbGF0
X2RhdGEpOwo+IC0gICAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRwLT5jbG9jayk7Cj4gLW91
dF9kcF9jbGtfcHJlOgo+ICsKPiAgICAgICAgIHBtX3J1bnRpbWVfcHV0X3N5bmMoZHAtPmRldik7
Cj4KPiAgICAgICAgIHJldHVybiByZXQ7Cj4gQEAgLTEzNjcsOCArMTM2MCw2IEBAIHN0YXRpYyB2
b2lkIGFuYWxvZ2l4X2RwX2JyaWRnZV9kaXNhYmxlKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2Up
Cj4gICAgICAgICBhbmFsb2dpeF9kcF9zZXRfYW5hbG9nX3Bvd2VyX2Rvd24oZHAsIFBPV0VSX0FM
TCwgMSk7Cj4gICAgICAgICBwaHlfcG93ZXJfb2ZmKGRwLT5waHkpOwo+Cj4gLSAgICAgICBjbGtf
ZGlzYWJsZV91bnByZXBhcmUoZHAtPmNsb2NrKTsKPiAtCj4gICAgICAgICBwbV9ydW50aW1lX3B1
dF9zeW5jKGRwLT5kZXYpOwo+Cj4gICAgICAgICByZXQgPSBhbmFsb2dpeF9kcF9wcmVwYXJlX3Bh
bmVsKGRwLCBmYWxzZSwgdHJ1ZSk7Cj4gLS0KPiAyLjM5LjIKPgoKUmV2aWV3ZWQtYnk6IFJvYmVy
dCBGb3NzIDxyZm9zc0BrZXJuZWwub3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
