Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B328DC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 13:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pk9C6hzUjs4IMh2g78hnD7EDhz0xXPMd4Xl/ai3moWQ=; b=lBmOm90n1ycRqL
	fpuz3NzlEva5whxCmhaBSq7NIBS6nh4dimMYpIZEcnLxkV2INzr0J8LLAmNGcGJrn8xqbGsGA0Yfd
	7pzzUMJF0qpfIUqklPx7/2TWhiPrm94tc7fq/O208CGG3o+2AG6avXaLFNUbN6+diPMu/wiIrZQPB
	exbUztJb2U1sE80vAyBS4yO8LArdtls6zKBcFSEUfjPDimprJO4BOYxQBshompKDMKg8jOdmoB/xt
	Q/b9RPn1MYcQD/Snfs7GHikTGl3upgP0sT2MIpuxJmICbz59T4VaI9sOoqTAto61zI/ylh289HuCq
	lcn8T6pJyMBpAxYEg6Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KSF-0000000B4e0-04Xz;
	Tue, 07 May 2024 13:01:59 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KSC-0000000B4cN-21Dv
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 13:01:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 03B3DCE12FC
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:01:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DD88C4AF66
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715086912;
	bh=tHVK/OSHp5sKNPT7Tv7H1XD40NSCZFHElj9hZQKPyUQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=eguwRJcX/4VYB/PyMWWUR+tcTOv0G34if3IV/gmp2rcL/vg9UEacIkhg3UKuc2d5y
	 fkGl76hSFjlXtsHHFHr0eU5dNwOOPri9dgihx6eoTlKLsTXPba4psC4n8cADjrXa+u
	 cwxIdtpgXppy0VNNKeqwj5vKzKtRuqrygKWxXAneZiPb9LMn7WTKBySEo3ovwv15I9
	 8Is2D39HItGl6+SmDPsKBpnGrW24d9N8YSO7ykji6wX/ef9yvvf+ZBUWyr1CJjgqak
	 rBNg9PzDa2Qayt9FQYp21Skk9pfxCRcHKiRbLRwe39DtfE00M0vHysvUhMvBNNp39+
	 rsL9gg1Cl3yAA==
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-de5acdb3838so3269722276.1
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 06:01:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUF6jxaqKBey4PoYOAE83hKEUogNIe5ZnCYDBU9jlk4Di9zdbeNzQZcbF6mR94xakTjBQC9yiK3kfzqETYHHWCO0Qp8eddV49NZ52ThuvyZdTu3
X-Gm-Message-State: AOJu0Yyf0MyFz3Z47xA4GZE7fE3rd267kVMWR2+4OiyMl1Q3fQFVQBu9
	fzyFGElNX6C3GQYKca3JCg6iYkOBbaNcJOa8J2gdlfC4mgtuMXygrH43yJCSskktOGCo3QBdqGF
	SeTq77laMcKMVpJqexDra7Dyl9+CU9GYfo24P5g==
X-Google-Smtp-Source: AGHT+IGVoBB2KRC+J+e7019EfznjBMxIVrKNmwrzqOiYbxqXgUaaap+Cuf7kSvAKD4Hz1/UNtTrSTy6fS0xXp+atLOo=
X-Received: by 2002:a05:6902:4cf:b0:de6:b80:f7a3 with SMTP id
 v15-20020a05690204cf00b00de60b80f7a3mr12780894ybs.62.1715086911730; Tue, 07
 May 2024 06:01:51 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-8-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-8-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 15:01:41 +0200
X-Gmail-Original-Message-ID: <CAN6tsi6z_aN88ApoF-5EiemrTHsVN2yYoL_muz0Euru2uO6gTg@mail.gmail.com>
Message-ID: <CAN6tsi6z_aN88ApoF-5EiemrTHsVN2yYoL_muz0Euru2uO6gTg@mail.gmail.com>
Subject: Re: [PATCH 07/14] drm/bridge: analogix_dp: move platform and PHY
 power handling into runtime PM
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
X-CRM114-CacheID: sfid-20240507_060156_925021_6FEB3CC9 
X-CRM114-Status: GOOD (  16.18  )
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
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gUGxhdGZvcm0gYW5kIFBIWSBwb3dlciBpc24ndCBvbmx5
IHJlcXVpcmVkIHdoZW4gdGhlIGFjdHVhbCBkaXNwbGF5IGRhdGEKPiBzdHJlYW0gaXMgYWN0aXZl
LCBidXQgbWF5IGJlIHJlcXVpcmVkIGVhcmxpZXIgdG8gc3VwcG9ydCBBVVggY2hhbm5lbAo+IHRy
YW5zYWN0aW9ucy4gTW92ZSB0aGVtIGludG8gdGhlIHJ1bnRpbWUgUE0gY2FsbHMsIHNvIHRoZXkg
YXJlIHByb3Blcmx5Cj4gbWFuYWdlZCB3aGVuZXZlciB2YXJpb3VzIG90aGVyIHBhcnRzIG9mIHRo
ZSBkcml2ZXIgbmVlZCB0aGVtIHRvIGJlIGFjdGl2ZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2Fz
IFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICAuLi4vZHJtL2JyaWRnZS9h
bmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMgICAgfCAyMyArKysrKysrKy0tLS0tLS0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2Nv
cmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5j
Cj4gaW5kZXggMzExZTFlNjc0ODZkLi4zMjgxYzAwYTM5Y2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+IEBAIC0xMjU4
LDExICsxMjU4LDYgQEAgc3RhdGljIGludCBhbmFsb2dpeF9kcF9zZXRfYnJpZGdlKHN0cnVjdCBh
bmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+Cj4gICAgICAgICBwbV9ydW50aW1lX2dldF9zeW5jKGRw
LT5kZXYpOwo+Cj4gLSAgICAgICBpZiAoZHAtPnBsYXRfZGF0YS0+cG93ZXJfb24pCj4gLSAgICAg
ICAgICAgICAgIGRwLT5wbGF0X2RhdGEtPnBvd2VyX29uKGRwLT5wbGF0X2RhdGEpOwo+IC0KPiAt
ICAgICAgIHBoeV9wb3dlcl9vbihkcC0+cGh5KTsKPiAtCj4gICAgICAgICByZXQgPSBhbmFsb2dp
eF9kcF9pbml0X2RwKGRwKTsKPiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIGdv
dG8gb3V0X2RwX2luaXQ7Cj4gQEAgLTEyODgsMTAgKzEyODMsNiBAQCBzdGF0aWMgaW50IGFuYWxv
Z2l4X2RwX3NldF9icmlkZ2Uoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4gICAgICAg
ICByZXR1cm4gMDsKPgo+ICBvdXRfZHBfaW5pdDoKPiAtICAgICAgIHBoeV9wb3dlcl9vZmYoZHAt
PnBoeSk7Cj4gLSAgICAgICBpZiAoZHAtPnBsYXRfZGF0YS0+cG93ZXJfb2ZmKQo+IC0gICAgICAg
ICAgICAgICBkcC0+cGxhdF9kYXRhLT5wb3dlcl9vZmYoZHAtPnBsYXRfZGF0YSk7Cj4gLQo+ICAg
ICAgICAgcG1fcnVudGltZV9wdXRfc3luYyhkcC0+ZGV2KTsKPgo+ICAgICAgICAgcmV0dXJuIHJl
dDsKPiBAQCAtMTM1NCwxMSArMTM0NSw3IEBAIHN0YXRpYyB2b2lkIGFuYWxvZ2l4X2RwX2JyaWRn
ZV9kaXNhYmxlKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCj4KPiAgICAgICAgIGRpc2FibGVf
aXJxKGRwLT5pcnEpOwo+Cj4gLSAgICAgICBpZiAoZHAtPnBsYXRfZGF0YS0+cG93ZXJfb2ZmKQo+
IC0gICAgICAgICAgICAgICBkcC0+cGxhdF9kYXRhLT5wb3dlcl9vZmYoZHAtPnBsYXRfZGF0YSk7
Cj4gLQo+ICAgICAgICAgYW5hbG9naXhfZHBfc2V0X2FuYWxvZ19wb3dlcl9kb3duKGRwLCBQT1dF
Ul9BTEwsIDEpOwo+IC0gICAgICAgcGh5X3Bvd2VyX29mZihkcC0+cGh5KTsKPgo+ICAgICAgICAg
cG1fcnVudGltZV9wdXRfc3luYyhkcC0+ZGV2KTsKPgo+IEBAIC0xNzEzLDYgKzE3MDAsMTEgQEAg
RVhQT1JUX1NZTUJPTF9HUEwoYW5hbG9naXhfZHBfcHJvYmUpOwo+Cj4gIGludCBhbmFsb2dpeF9k
cF9zdXNwZW5kKHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+ICB7Cj4gKyAgICAgICBw
aHlfcG93ZXJfb2ZmKGRwLT5waHkpOwo+ICsKPiArICAgICAgIGlmIChkcC0+cGxhdF9kYXRhLT5w
b3dlcl9vZmYpCj4gKyAgICAgICAgICAgICAgIGRwLT5wbGF0X2RhdGEtPnBvd2VyX29mZihkcC0+
cGxhdF9kYXRhKTsKPiArCj4gICAgICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUoZHAtPmNsb2Nr
KTsKPgo+ICAgICAgICAgcmV0dXJuIDA7Cj4gQEAgLTE3MjksNiArMTcyMSwxMSBAQCBpbnQgYW5h
bG9naXhfZHBfcmVzdW1lKHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+ICAgICAgICAg
ICAgICAgICByZXR1cm4gcmV0Owo+ICAgICAgICAgfQo+Cj4gKyAgICAgICBpZiAoZHAtPnBsYXRf
ZGF0YS0+cG93ZXJfb24pCj4gKyAgICAgICAgICAgICAgIGRwLT5wbGF0X2RhdGEtPnBvd2VyX29u
KGRwLT5wbGF0X2RhdGEpOwo+ICsKPiArICAgICAgIHBoeV9wb3dlcl9vbihkcC0+cGh5KTsKPiAr
Cj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTChhbmFsb2dpeF9k
cF9yZXN1bWUpOwo+IC0tCj4gMi4zOS4yCj4KClJldmlld2VkLWJ5OiBSb2JlcnQgRm9zcyA8cmZv
c3NAa2VybmVsLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
