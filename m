Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59E79EEB580
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Sep 2023 14:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sf4dX6Hi8+tPM4w+Cwz38zwdTqf/t6EHnPKc5YnozIA=; b=cJrV2FS0I4y4oU
	b+9c/1Hg7cXv5Rvr8g5rMtUKJfMGi0vl1wqx86rHD2aKCM387EWaJ2BqSyh+sZZ7aNJ1FSZphf5m8
	bRzTh3eOMQSlSI8dAGgaGe2Avjbu3rxafCCvsfMVK6JArEG68n/leSmowinoOv3uqET4kHzNnm62X
	psfWDrjqK8Tnh9r78KYk+AiPF2mNp99pJiOANUakDgPQO8Da7BMrV5rrr4+ljtGgTFqIFbsDrlcW8
	lM4mG1moiakuNUXuGi5wBSo/27bM7Pu8f7w5vxwvV4Itep0X2xmo6Lc/s1w1M5mQlHnCs48Qzbe8A
	FZE4y56/dwhXCIA6p2wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qez7K-00FZLO-0h;
	Sat, 09 Sep 2023 14:39:22 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qez7G-00FZK5-2L
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Sep 2023 14:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694270355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eRcOkbLQiqXFau3Lzv+lkDuNMwp9k8LF7/IY5MKHdsU=;
	b=hxFteoXk1syKXgSx5c1SB9Jv2tMWyIncJaV90QQGQu5XApiU007zSHz5QI8KO8u0Y1kLVt
	ZuY7kIWbpKcgdTAG0N4m4czYay9WeKeMPMGNm+nPoB5W5fxYmwsu+u7WjCLl1BsGAE0BQ6
	lk12qqt4Gx5b+PbpQSsWuWzLLSZACME=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-313--_G6nTwYNi6AWjfmr77imQ-1; Sat, 09 Sep 2023 10:37:31 -0400
X-MC-Unique: -_G6nTwYNi6AWjfmr77imQ-1
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-401c19fc097so23674305e9.1
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Sep 2023 07:37:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694270250; x=1694875050;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eRcOkbLQiqXFau3Lzv+lkDuNMwp9k8LF7/IY5MKHdsU=;
        b=fKd+lQQ1Q0HryY//RoavLAyGSttwIJEel0VtNbTAnhF7y++goqUo0otyDLIlYfM5eO
         0Kpjd3AhSB+o1AAQP+dYkAzlHVi2Y0HpTbvGKqmvxaL+XH6BlMImXhcegocaFpad3JpY
         +yb5KDzzlDMv87ACI/9Z1wxU61QlPnzAPIS4E+/cGFlA7JUaS7G2jeHx1kSHm0no9QOG
         PxsjitXaYpbh0l3GpBeuI0cMr6de3L2VgzQiYaGTFQAxVloclz07L1HbC2xAcHy64bU7
         ycfiuAK2W30BSazCQe3fB1LgbwtkMBLivYSY47H4ByGUAROgk5OgSv5ypy9RVl2F4XQb
         pE5g==
X-Gm-Message-State: AOJu0YwHCr2JuN3EwoD8kWYNLnZ9Sdf9y+djq7J/81nkAKmSoE4F6GEF
	b74wtBZ4ltcKg9CZ5/RX43LUAxBRAmwDzDnkRoT3GWK8lFqEwZkNBZySXAW+/LooaEhcN1MEKPg
	u/V93AbD5Kab9AVWAeaBUucqR6hJb63Pn
X-Received: by 2002:a05:600c:2483:b0:401:d2cb:e6f3 with SMTP id 3-20020a05600c248300b00401d2cbe6f3mr5088925wms.1.1694270250169;
        Sat, 09 Sep 2023 07:37:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuI0CHTrTRuHu7U+ySuZ17CrBG1YsmWNBf7nwWhsv6ytgzHpvaJlIL3zjF99nLHiP4wc2jkQ==
X-Received: by 2002:a05:600c:2483:b0:401:d2cb:e6f3 with SMTP id 3-20020a05600c248300b00401d2cbe6f3mr5088899wms.1.1694270249806;
        Sat, 09 Sep 2023 07:37:29 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id k20-20020a7bc414000000b003fd2e898aa3sm3071184wmi.0.2023.09.09.07.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Sep 2023 07:37:28 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Mali DP Maintainers <malidp@foss.arm.com>,
 dri-devel@lists.freedesktop.org, kernel@pengutronix.de, Andrew Jeffery
 <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Russell King <linux+etnaviv@armlinux.org.uk>, Christian Gmeiner
 <christian.gmeiner@gmail.com>, etnaviv@lists.freedesktop.org, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-samsung-soc@vger.kernel.org, Xinwei Kong
 <kong.kongxinwei@hisilicon.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Yongqin Liu <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>,
 linux-mips@vger.kernel.org, lima@lists.freedesktop.org, AngeloGioacchino
 Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-mediatek@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, Sean Paul <sean@poorly.run>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Steven Price <steven.price@arm.com>, Alyssa
 Rosenzweig <alyssa.rosenzweig@collabora.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH 00/53] drm: Convert to platform remove callback
 returning void
In-Reply-To: <20230507162616.1368908-1-u.kleine-koenig@pengutronix.de>
References: <20230507162616.1368908-1-u.kleine-koenig@pengutronix.de>
Date: Sat, 09 Sep 2023 16:37:28 +0200
Message-ID: <8734znjtuf.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230909_073918_923885_C5049476 
X-CRM114-Status: GOOD (  10.80  )
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

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKSGVsbG8gVXdlLAoKPiBIZWxsbywKPgo+IHRoaXMgcGF0Y2ggc2VyaWVzIGFkYXB0cyB0aGUg
cGxhdGZvcm0gZHJpdmVycyBiZWxvdyBkcml2ZXJzL2dwdS9kcm0KPiB0byB1c2UgdGhlIC5yZW1v
dmVfbmV3KCkgY2FsbGJhY2suIENvbXBhcmVkIHRvIHRoZSB0cmFkaXRpb25hbCAucmVtb3ZlKCkK
PiBjYWxsYmFjayAucmVtb3ZlX25ldygpIHJldHVybnMgbm8gdmFsdWUuIFRoaXMgaXMgYSBnb29k
IHRoaW5nIGJlY2F1c2UKPiB0aGUgZHJpdmVyIGNvcmUgZG9lc24ndCAoYW5kIGNhbm5vdCkgY29w
ZSBmb3IgZXJyb3JzIGR1cmluZyByZW1vdmUuIFRoZQo+IG9ubHkgZWZmZWN0IG9mIGEgbm9uLXpl
cm8gcmV0dXJuIHZhbHVlIGluIC5yZW1vdmUoKSBpcyB0aGF0IHRoZSBkcml2ZXIKPiBjb3JlIGVt
aXRzIGEgd2FybmluZy4gVGhlIGRldmljZSBpcyByZW1vdmVkIGFueWhvdyBhbmQgYW4gZWFybHkg
cmV0dXJuCj4gZnJvbSAucmVtb3ZlKCkgdXN1YWxseSB5aWVsZHMgYSByZXNvdXJjZSBsZWFrLgo+
Cj4gQnkgY2hhbmdpbmcgdGhlIHJlbW92ZSBjYWxsYmFjayB0byByZXR1cm4gdm9pZCBkcml2ZXIg
YXV0aG9ycyBjYW5ub3QKPiByZWFzb25hYmx5IChidXQgd3JvbmdseSkgYXNzdW1lIGFueSBtb3Jl
IHRoYXQgdGhlcmUgaGFwcGVucyBzb21lIGtpbmQgb2YKPiBjbGVhbnVwIGxhdGVyLgo+Cj4gQmVz
dCByZWdhcmRzCj4gVXdlCj4KPiBVd2UgS2xlaW5lLUvDtm5pZyAoNTMpOgoKWy4uLl0KCj4gICBk
cm0vaW14L2lwdXYzOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5p
bmcgdm9pZAo+ICAgZHJtL2luZ2VuaWM6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxi
YWNrIHJldHVybmluZyB2b2lkCgpbLi4uXQoKPiAgIGRybS9tZWRpYXRlazogQ29udmVydCB0byBw
bGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIGRybS9tZWRpYXRlazog
Q29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKClsuLi5d
Cgo+ICAgZHJtL21zbTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJu
aW5nIHZvaWQKClsuLi5dCgo+ICAgZHJtL3NobW9iaWxlOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJl
bW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAoKUHVzaGVkIHRoZXNlIHRvIGRybS1taXNjIChk
cm0tbWlzYy1uZXh0KS4gVGhhbmtzIQoKLS0gCkJlc3QgcmVnYXJkcywKCkphdmllciBNYXJ0aW5l
eiBDYW5pbGxhcwpDb3JlIFBsYXRmb3JtcwpSZWQgSGF0CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
