Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5775FC71136
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvwImOXHpnktVsXx/6lwmy0okMfrmdtgK2ddnrf8prE=; b=y92yFMTRM56Rvh
	F3rNqlGHs66Ts4J/gKLrngtEyL4sEK/a6oqeH6M5qg3N878j8YlQ86j8llxhpSg7kGmjyLhnAAJPc
	j2wJNipRsPdC+wa6qujjP9/mh/pWQ+d+BfjnAjcP3HKf1zOqJ0BXTlpVclIYva0OvLo/wQ9eWnG3G
	i/NP08Yh2MspTyViuokpRqv2yTeRKMzz9gKEc5RTQU6pcF0Nu6wH7fVsu54APW8lL0xZJQ/1N/xc1
	HiquI43O1Lumf+6z0/sU9yLh5nIcPaRSVSl+ryjV9wl+gK55GHTPlvGjHhs5+W6f7rpL749r+de5t
	KirkT0VxzDu1qW4PO9nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRi5Y-00000008n4j-2hct;
	Wed, 18 Jun 2025 01:59:44 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRi5W-00000008n2v-04t2
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Jun 2025 01:59:43 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3a531fcaa05so3935179f8f.3
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 18:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750211980; x=1750816780; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kFKCnbNn1bDqe5v5bLkKEdiwzvFlVEFsyLsrg5iRjl8=;
        b=kP0orGcQmhVQQCrbWKYKmZxIVmMAVdgKGz3Ix3s8Jr/vuxLSYANT18jlZ/yHBWKCmM
         Di+CWq6YmdX7e9+9HVZ6bIgbk2aah0NG9mKGlkRs9EZqrGSuqE8OK7bq5MwxVzmPKFbY
         lSjiix9qrMO/8zyvXx5SU+GrjqXLV3tweqdGqOrX0U6ng0GOuTsGW9SyV8ESuqzHm2m5
         g/MpGekbNm3T9n7rQqPHRUPB1wcFMz5pjrtjPGp2l+5/Mdf/E1dlGQnduCw9NL8s8pIK
         xTq7Uc3nVFU+5zSJiW10aBjr0QNfF/3vvXM8rQ/nvUUt7JpSX5N24FQ9H35guIfMMxPb
         /Q7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750211980; x=1750816780;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kFKCnbNn1bDqe5v5bLkKEdiwzvFlVEFsyLsrg5iRjl8=;
        b=FQNd8x1GToHXoSjwUaB1ZGcTzySSuDH7t9KloquITMhlzdvXG/J+/VzJuasRdY2Lw5
         k4+k644TEeMUuIZTm2yiHZSSBExoAp+pxZFxXvSPcFHRCPyJgClYQHNAbulbiZ+Q+ufp
         sfLajZN0eOE7VSwxE52dh8cGZY/ThommxEOrlEr3CpkJoIYa8QLUsU0jtxg8mQlztq9G
         N6kRT4tt60Pw54FJa7V5XCMvmt4RBmuTUoihR6uW049268Xk5lF20hbqPAKzbcVaNnoe
         oiXWWOkFsYNIb8nK9DsVispdbaPmgUtI5sjVTe5k0zBGTkNjIN3J+U+HPF3Zk0a4DQ3X
         K4FQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5OS3J9TF1S4X2rMoXDHPE2aVShtKgdtpohkbADJ9jfTFuLjs1moB50c0Kk6DpQqE037a8q9oZR1kaZaaOGg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxU5tuf6aYwtiPPq908YUKDhVOIigUaVmh96ssajStngxcK0vsc
	Y9b8bUVnx6vhGtcfN57fxeWcwrAcKnZI9mXUe5tPW0IVNBIW00mdBPuTKbodq4BPvMPiFohWNM3
	K3OAF13pAAq8SIUS5nwZpl1pwScn6ZJU=
X-Gm-Gg: ASbGnct7xllyFriSGBDrnm7o3Ycb9TT1jANk+iehVoXGxu8S6G9Kn/aOQ2L6dopCudg
	TLrRxepC9Yx/V+d+W6c//ZUTpx7GCk7jL7R5a9iYOe3fSDeudk/Dbefij2csfDjRQyvTl0QOv8Q
	bVqPO2BEV3iJQcr+pc21i3UjbMSEjUUDr4lZireJEMgV/mi9VKlFbkWLUlNn2Hu5C72zIPKOEca
	Mw+3b2mZjtRug==
X-Google-Smtp-Source: AGHT+IGQmwkOIeqTr61hnlAr1/zAkoeC5stDMeIncKSo1hy+Fff4A3fDO6knRQJTt3WedDhfX2o3EVfgIMf54gN6ThQ=
X-Received: by 2002:a5d:584d:0:b0:3a3:64fb:304d with SMTP id
 ffacd0b85a97d-3a5723990f6mr11469933f8f.12.1750211979834; Tue, 17 Jun 2025
 18:59:39 -0700 (PDT)
MIME-Version: 1.0
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com> <20250617-rk3588s-cm5-io-dts-upstream-v5-3-8d96854a5bbd@gmail.com>
In-Reply-To: <20250617-rk3588s-cm5-io-dts-upstream-v5-3-8d96854a5bbd@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 17 Jun 2025 20:59:28 -0500
X-Gm-Features: Ac12FXy5cpVvK5gEID9BrCvh3p-E9_Lv5BBK6utf9O5u4cKC1jiShpMGr7IRbB4
Message-ID: <CALWfF7+G6MRvuSm8a-a0KcPduXz=sYsJT0bB300rAqmtt2w-cg@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: Add support for CM5 IO carrier
To: Joseph Kogut <joseph.kogut@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Steve deRosier <derosier@cal-sierra.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_185942_056702_40C494BA 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
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

T24gVHVlLCBKdW4gMTcsIDIwMjUgYXQgNToxMuKAr1BNIEpvc2VwaCBLb2d1dCA8am9zZXBoLmtv
Z3V0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gKwo+ICsmZ21hYzEgewo+ICsgICAgICAgY2xvY2tfaW5f
b3V0ID0gIm91dHB1dCI7Cj4gKyAgICAgICBwaHktaGFuZGxlID0gPCZyZ21paV9waHkxPjsKPiAr
ICAgICAgIHBoeS1tb2RlID0gInJnbWlpLWlkIjsKPiArICAgICAgIHBoeS1zdXBwbHkgPSA8JnZj
Y18zdjNfczA+Owo+ICsgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArICAgICAg
IHBpbmN0cmwtMCA9IDwmZ21hYzFfbWlpbQo+ICsgICAgICAgICAgICAgICAgICAgICZnbWFjMV90
eF9idXMyCj4gKyAgICAgICAgICAgICAgICAgICAgJmdtYWMxX3J4X2J1czIKPiArICAgICAgICAg
ICAgICAgICAgICAmZ21hYzFfcmdtaWlfY2xrCj4gKyAgICAgICAgICAgICAgICAgICAgJmdtYWMx
X3JnbWlpX2J1cwo+ICsgICAgICAgICAgICAgICAgICAgICZnbWFjMV9jbGtpbm91dD47Cj4gKyAg
ICAgICBzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwpTb3JyeSwgSSBtZWFudCBvbmx5IHRoZSBz
dGF0dXMgcHJvcGVydHkgc2hvdWxkIGdvIHRvIHRoZSBib2FyZCBEVFMuClRoZSByZXN0IG9mIHRo
ZSBnbWFjMSBkZWZpbml0aW9uIG1ha2VzIHNlbnNlIHRvIHB1dCBpbiB0aGUgU29NIGR0c2ksCnNp
bmNlIHRoZSBQSFkgaXMgb24gdGhlIFNvTSAoYXMgZGVmaW5lZCBpbiAgdGhlIG1kaW8xIG5vZGUp
LiBTbyBhbGwKdGhlIHBpbnMgYmV0d2VlbiB0aGUgTUFDIGFuZCBQSFkgd2lsbCBiZSB0aGUgc2Ft
ZS4KCkppbW15Cgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
