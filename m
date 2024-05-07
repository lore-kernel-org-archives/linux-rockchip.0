Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06593C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 13:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqBAvwaLF0XeKeAKrNwdHDwRioBmgdo4mUh6X0wYFGM=; b=Dnm8M2N4AxjJ7z
	ig6sAwCN6S/hR+HpE0/B1oKEVtxZvZVVkXqEbxRPyYSvL2aQytr7tQaI24Pa43lXcJoZSsu7Kk223
	vMmS4/OSXh++J7K0iNz8CYXlwZ5rB1MTXw+T6UYqhe1rl9iyvGbReVmnci3jUjmw6aStcx+jr8fhD
	8xeJy3sBb4s5DJDeV0XsmUwEVsvSaxgt27qDZa4nNXUzYIHTa5KfH/qf+OtdvesiKU8CcjdzErR3d
	sRfIBEIuCmw0P7cRBmqkNwl2siUhwjaQIwdsdAU4RDq1zpzWPBcshsIt6kG13tQS9lV3oUc9PSVnH
	4x/TFYeJIm5x/mxTM/Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KYG-0000000B61f-0jEv;
	Tue, 07 May 2024 13:08:12 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KYC-0000000B5zr-0L4G
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 13:08:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 39CC0CE1318
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:08:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E12EC4DDEB
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715087282;
	bh=3/orngILiWj0h/Zc8gguyZeLCrqym826AoHxOP1iVNI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=La39XD2yqRK/G+9z04jDZ6vq4T/uGTcbER+Concp/okiC7j3/F/Fb4EfX/plvLLyL
	 T6CEa46SZXQ9140v0/GRi6Cmoy8kfzR4GGLGVcx6RdVP35HHOMnshxUbo7MayY9LCw
	 HJPQT4A69WUcxZg25XR0nyTjDG9wAfY/wmCjlw4cg3pwKef0E8K6gZY550hPV4ZtA0
	 BO2qS3GY51ZXm+y1EEqPaqctlHMAIadSesSiN7RdiWOdmv5epfoy9evS2WbDkx5v5w
	 8Lm36amC45RPJoBemqDHuExSgtgdzz50sxcKJ0oKB8AeCWpBwqD3zyn4M2Q4fvM6pC
	 qJOVB6HShzU0g==
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so2989392276.1
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 06:08:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWGAMyuh6aBhZx0Nh6nJXJkJXUTdrGzcy7+DxRKAQU7DphyXqngXBpIAjg1N37cqwARRC+03u5k/7a19n9k5yf2E2fN4g8IlDCdnUPjPMM8PPBl
X-Gm-Message-State: AOJu0YxY8jD8BftPvFSMYArmk+Gi8y3Be7QCsQaloBVMGTo1K7iys3dd
	4t53uaV8aVG4B7IaA1LwMBqADoSw2Psp0k0xtkOEzPJvVzgoIPXfWrJTbQGKHUBlbJHKQ8exTUH
	MIElG/zK4d/P3V8LSp9u5FEysGBdPjinaH99lvw==
X-Google-Smtp-Source: AGHT+IFc5saJCdUL2vxHJBNGDA/y81y2ftT95Tql6oKxh0pSmgmZu7WlK/MfGiNVlBc/hnWXS8mxDvJ+DYWKa3mnTtc=
X-Received: by 2002:a05:6902:603:b0:dcc:2f09:4742 with SMTP id
 d3-20020a056902060300b00dcc2f094742mr11666684ybt.51.1715087281881; Tue, 07
 May 2024 06:08:01 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-11-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-11-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 15:07:51 +0200
X-Gmail-Original-Message-ID: <CAN6tsi4js9jb3Q2tTKLo=3ueCPsQaezZ-FDyzHjJ14D0-Z7ttg@mail.gmail.com>
Message-ID: <CAN6tsi4js9jb3Q2tTKLo=3ueCPsQaezZ-FDyzHjJ14D0-Z7ttg@mail.gmail.com>
Subject: Re: [PATCH 10/14] drm/bridge: analogix_dp: move macro reset after
 link bandwidth setting
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
X-CRM114-CacheID: sfid-20240507_060808_657037_F29BD5F1 
X-CRM114-Status: GOOD (  16.95  )
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
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gU2V0dGluZyB0aGUgbGluayBiYW5kd2lkdGggbWF5IGNo
YW5nZSB0aGUgUExMIHBhcmFtZXRlcnMsIHdoaWNoIHdpbGwgY2F1c2UKPiB0aGUgUExMIHRvIGdv
IG91dCBvZiBsb2NrLCBzbyBtYWtlIHN1cmUgdG8gYXBwbHkgdGhlIE1BQ1JPX1JTVCwgd2hpY2gK
PiBhY2NvcmRpbmcgdG8gdGhlIGNvbW1lbnQgaXMgcmVxdWlyZWQgdG8gYmUgcHVsc2VkIGFmdGVy
IHRoZSBQTEwgaXMgbG9ja2VkLgo+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3Rh
Y2hAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIC4uLi9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9h
bmFsb2dpeF9kcF9jb3JlLmMgfCAxOCArKysrKysrKysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEwIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+IGluZGV4IGI0YTQ3
MzExY2ZlOC4uNzM2YjJlZDc0NWUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiBAQCAtMjQzLDYgKzI0MywxMSBAQCBz
dGF0aWMgaW50IGFuYWxvZ2l4X2RwX2xpbmtfc3RhcnQoc3RydWN0IGFuYWxvZ2l4X2RwX2Rldmlj
ZSAqZHApCj4KPiAgICAgICAgIC8qIFNldCBsaW5rIHJhdGUgYW5kIGNvdW50IGFzIHlvdSB3YW50
IHRvIGVzdGFibGlzaCovCj4gICAgICAgICBhbmFsb2dpeF9kcF9zZXRfbGlua19iYW5kd2lkdGgo
ZHAsIGRwLT5saW5rX3RyYWluLmxpbmtfcmF0ZSk7Cj4gKyAgICAgICAvKgo+ICsgICAgICAgICog
TUFDUk9fUlNUIG11c3QgYmUgYXBwbGllZCBhZnRlciB0aGUgUExMX0xPQ0sgdG8gYXZvaWQKPiAr
ICAgICAgICAqIHRoZSBEUCBpbnRlciBwYWlyIHNrZXcgaXNzdWUgZm9yIGF0IGxlYXN0IDEwIHVz
Cj4gKyAgICAgICAgKi8KPiArICAgICAgIGFuYWxvZ2l4X2RwX3Jlc2V0X21hY3JvKGRwKTsKPiAg
ICAgICAgIGFuYWxvZ2l4X2RwX3NldF9sYW5lX2NvdW50KGRwLCBkcC0+bGlua190cmFpbi5sYW5l
X2NvdW50KTsKPgo+ICAgICAgICAgLyogU2V0dXAgUlggY29uZmlndXJhdGlvbiAqLwo+IEBAIC01
NjUsMTIgKzU3MCw2IEBAIHN0YXRpYyBpbnQgYW5hbG9naXhfZHBfZnVsbF9saW5rX3RyYWluKHN0
cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwLAo+ICAgICAgICAgaW50IHJldHZhbCA9IDA7Cj4g
ICAgICAgICBib29sIHRyYWluaW5nX2ZpbmlzaGVkID0gZmFsc2U7Cj4KPiAtICAgICAgIC8qCj4g
LSAgICAgICAgKiBNQUNST19SU1QgbXVzdCBiZSBhcHBsaWVkIGFmdGVyIHRoZSBQTExfTE9DSyB0
byBhdm9pZAo+IC0gICAgICAgICogdGhlIERQIGludGVyIHBhaXIgc2tldyBpc3N1ZSBmb3IgYXQg
bGVhc3QgMTAgdXMKPiAtICAgICAgICAqLwo+IC0gICAgICAgYW5hbG9naXhfZHBfcmVzZXRfbWFj
cm8oZHApOwo+IC0KPiAgICAgICAgIC8qIEluaXRpYWxpemUgYnkgcmVhZGluZyBSWCdzIERQQ0Qg
Ki8KPiAgICAgICAgIGFuYWxvZ2l4X2RwX2dldF9tYXhfcnhfYmFuZHdpZHRoKGRwLCAmZHAtPmxp
bmtfdHJhaW4ubGlua19yYXRlKTsKPiAgICAgICAgIGFuYWxvZ2l4X2RwX2dldF9tYXhfcnhfbGFu
ZV9jb3VudChkcCwgJmRwLT5saW5rX3RyYWluLmxhbmVfY291bnQpOwo+IEBAIC02MzcsOSArNjM2
LDEyIEBAIHN0YXRpYyBpbnQgYW5hbG9naXhfZHBfZmFzdF9saW5rX3RyYWluKHN0cnVjdCBhbmFs
b2dpeF9kcF9kZXZpY2UgKmRwKQo+ICAgICAgICAgdTggbGlua19hbGlnbiwgbGlua19zdGF0dXNb
Ml07Cj4gICAgICAgICBlbnVtIHBsbF9zdGF0dXMgc3RhdHVzOwo+Cj4gLSAgICAgICBhbmFsb2dp
eF9kcF9yZXNldF9tYWNybyhkcCk7Cj4gLQo+ICAgICAgICAgYW5hbG9naXhfZHBfc2V0X2xpbmtf
YmFuZHdpZHRoKGRwLCBkcC0+bGlua190cmFpbi5saW5rX3JhdGUpOwo+ICsgICAgICAgLyoKPiAr
ICAgICAgICAqIE1BQ1JPX1JTVCBtdXN0IGJlIGFwcGxpZWQgYWZ0ZXIgdGhlIFBMTF9MT0NLIHRv
IGF2b2lkCj4gKyAgICAgICAgKiB0aGUgRFAgaW50ZXIgcGFpciBza2V3IGlzc3VlIGZvciBhdCBs
ZWFzdCAxMCB1cwo+ICsgICAgICAgICovCj4gKyAgICAgICBhbmFsb2dpeF9kcF9yZXNldF9tYWNy
byhkcCk7Cj4gICAgICAgICBhbmFsb2dpeF9kcF9zZXRfbGFuZV9jb3VudChkcCwgZHAtPmxpbmtf
dHJhaW4ubGFuZV9jb3VudCk7Cj4gICAgICAgICBhbmFsb2dpeF9kcF9zZXRfbGFuZV9saW5rX3Ry
YWluaW5nKGRwKTsKPgo+IC0tCj4gMi4zOS4yCj4KClRoaXMgcGF0Y2ggZG9lcyBub3QgYXBwbHkg
b24gZHJtLW1pc2MvZHJtLW1pc2MtbmV4dCBhcyBmYXIgYXMgSSBjYW4gdGVsbC4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
