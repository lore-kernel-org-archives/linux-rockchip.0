Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F044CC5478C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 19:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARqw3DQVIgOGbDXM75aZ+gxz3MrfAe6qZFwGkgEGwsY=; b=T9jhfjTFp3qR/i
	vfHw218AKEJJlk3/Y5OZYtDoweUVUGVNMEjQXfXCeAvojnxYcUwIQt/M+9Ng+I5L40VD5mV13lzfu
	oBleujThsS95rGB3lnBGfGdksTlv4X19w2bsc/4qg4DmZHwf55TD4hi9OKtb3Kv7oNxeFyS+eA6hq
	Q8u8FDEhSsPW9th2fbxH8IDaauBb54Dd84If+VVwY0nmGw3LBJxNwaoaCOW5JyEZKv7mEKnQKYnBv
	5idSNP3T+paJsqTcE+bM2xy+e9J8+8Qu4GthE6wRXtgmuBgOShfscCn/t0MJ/euHUFtLL+EMC7zCg
	AE1bRYqu8qpr0At/7jRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdERP-00000006GB4-270h;
	Thu, 22 Feb 2024 19:09:07 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdERL-00000006G7e-2EQI;
	Thu, 22 Feb 2024 19:09:05 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2d23d301452so1740051fa.1;
        Thu, 22 Feb 2024 11:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708628941; x=1709233741; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gj4OdywnDrbhFJ8ybCj43LZc89cJ1Nm8au4Dqi6GFss=;
        b=hmwJGVRYzakqs2V7ssT/lof+YBFCtacy2/B0D3F++jXUfnSmCwLAag2Zn5ldLagHv6
         wacfl33yRq/Kz8iY0ozjM+TVRIuKuyBEObuAW4EHh6BZtola+7QZVucQ2VJx3orLSRkD
         aDni6PrggHChjZFRLn1R3OdObqbtJrQJu7WGfXa+AZyZyMogOcG5b6yE0S1ykaITE3Or
         lpXrtNzrPTjze4l19wv6AWaWjCwXnFcUi4ZWOc8FHLSAivKmKnriStKg2iHi8Tt5JTuJ
         SodxloLsCup53WD7der+PR0MJM9SuZlxF6Y0oWjYn+8jRPSgEr3kRifof3ScUE6r0qp/
         oqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708628941; x=1709233741;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gj4OdywnDrbhFJ8ybCj43LZc89cJ1Nm8au4Dqi6GFss=;
        b=EX6rVug3T8P7aBCVsWHhh2GK17HG0GmGAw5ItoWm7IZy6TgvK0JCH4ISQPL9WYes27
         Y4gfX+7WRFSX/cXaLsATlZqEKd8YKHcAXpwE7WM7peIOsQXTHqcm0VdWlScAL34y9jZ/
         jA2AmSysPV942mL38t97biC4MxHUKnxuS7kFLg/of88G4X9XxNS6YhQHCRtwJPldNzfw
         5PO76WNsc0+Blmq4CDCvwBaLaoN2BX+L61zSBregPReN2cfrGMTJ0z5fLEJD9N8ZLKVh
         yGPGFt3EpsDI6xheqRPO1iwRd+UDtY4BTPKHGbU6vi8wrGGvUGmaIAbNpdJFswupejXA
         PmVA==
X-Forwarded-Encrypted: i=1; AJvYcCWKOlTK7BiPYs1mq0LmtcO2PgpTkeFtO9riP9XX4QGS/Sz+3KbgUgsAd3vlDU/suKu1DCsDMZ1xBGU00gvwslZBzfD9s9pS7gWLUomeM0IDv2MgGcjjRuqidfwZpLruX6/1zxksClJnDYzG0/RPIzafCJPpm5Jp8v4=
X-Gm-Message-State: AOJu0Yw98oLjp5WZxIRREb+6k5ISxXqkBay52ZTxdQ+i3111FjPTcW7L
	boklTX0zYGKSyzyO2W3xev4ZClv4xMurqFrzzyBntPIgD4P0OrRh
X-Google-Smtp-Source: AGHT+IHe4b3hq/UBTGy8TGAsD8s1quxqZkNvTf7s10vKGsFhX0a+cS0Vaxi79AU03ziWQo+MQ29JhA==
X-Received: by 2002:a05:651c:210f:b0:2d2:6574:4011 with SMTP id a15-20020a05651c210f00b002d265744011mr1451054ljq.30.1708628940711;
        Thu, 22 Feb 2024 11:09:00 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id g14-20020a056402428e00b005642bcfed99sm5293270edc.23.2024.02.22.11.08.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 11:09:00 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <mripard@kernel.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>,
 Sui Jingfeng <sui.jingfeng@linux.dev>
Subject: Re: [PATCH v7 34/36] drm/sun4i: hdmi: Switch to container_of_const
Date: Thu, 22 Feb 2024 20:08:58 +0100
Message-ID: <2172115.irdbgypaU6@jernej-laptop>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-34-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-34-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_110903_717882_079120FB 
X-CRM114-Status: GOOD (  13.82  )
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

RG5lIMSNZXRydGVrLCAyMi4gZmVicnVhciAyMDI0IG9iIDE5OjE0OjIwIENFVCBqZSBNYXhpbWUg
UmlwYXJkIG5hcGlzYWwoYSk6Cj4gY29udGFpbmVyX29mX2NvbnN0KCkgYWxsb3dzIHRvIHByZXNl
cnZlIHRoZSBwb2ludGVyIGNvbnN0bmVzcyBhbmQgaXMKPiB0aHVzIG1vcmUgZmxleGlibGUgdGhh
biBpbmxpbmUgZnVuY3Rpb25zLgo+IAo+IExldCdzIHN3aXRjaCBhbGwgb3VyIGluc3RhbmNlcyBv
ZiBjb250YWluZXJfb2YoKSB0byBjb250YWluZXJfb2ZfY29uc3QoKS4KPiAKPiBSZXZpZXdlZC1i
eTogU3VpIEppbmdmZW5nIDxzdWkuamluZ2ZlbmdAbGludXguZGV2Pgo+IFNpZ25lZC1vZmYtYnk6
IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KClJldmlld2VkLWJ5OiBKZXJuZWog
U2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPgoKQmVzdCByZWdhcmRzLApKZXJuZWoK
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV9oZG1pX2VuYy5jIHwgMTYgKysr
Ky0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxMiBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2hk
bWlfZW5jLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfaGRtaV9lbmMuYwo+IGluZGV4
IGJhZTY5ZDY5Njc2NS4uYzI3NmQ5ODRkYTZiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9zdW40aS9zdW40aV9oZG1pX2VuYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1
bjRpX2hkbWlfZW5jLmMKPiBAQCAtMzAsMTkgKzMwLDExIEBACj4gICNpbmNsdWRlICJzdW40aV9k
cnYuaCIKPiAgI2luY2x1ZGUgInN1bjRpX2hkbWkuaCIKPiAgCj4gLXN0YXRpYyBpbmxpbmUgc3Ry
dWN0IHN1bjRpX2hkbWkgKgo+IC1kcm1fZW5jb2Rlcl90b19zdW40aV9oZG1pKHN0cnVjdCBkcm1f
ZW5jb2RlciAqZW5jb2RlcikKPiAtewo+IC0JcmV0dXJuIGNvbnRhaW5lcl9vZihlbmNvZGVyLCBz
dHJ1Y3Qgc3VuNGlfaGRtaSwKPiAtCQkJICAgIGVuY29kZXIpOwo+IC19Cj4gKyNkZWZpbmUgZHJt
X2VuY29kZXJfdG9fc3VuNGlfaGRtaShlKQkJXAo+ICsJY29udGFpbmVyX29mX2NvbnN0KGUsIHN0
cnVjdCBzdW40aV9oZG1pLCBlbmNvZGVyKQo+ICAKPiAtc3RhdGljIGlubGluZSBzdHJ1Y3Qgc3Vu
NGlfaGRtaSAqCj4gLWRybV9jb25uZWN0b3JfdG9fc3VuNGlfaGRtaShzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdG9yKQo+IC17Cj4gLQlyZXR1cm4gY29udGFpbmVyX29mKGNvbm5lY3Rvciwg
c3RydWN0IHN1bjRpX2hkbWksCj4gLQkJCSAgICBjb25uZWN0b3IpOwo+IC19Cj4gKyNkZWZpbmUg
ZHJtX2Nvbm5lY3Rvcl90b19zdW40aV9oZG1pKGMpCQlcCj4gKwljb250YWluZXJfb2ZfY29uc3Qo
Yywgc3RydWN0IHN1bjRpX2hkbWksIGNvbm5lY3RvcikKPiAgCj4gIHN0YXRpYyBpbnQgc3VuNGlf
aGRtaV9zZXR1cF9hdmlfaW5mb2ZyYW1lcyhzdHJ1Y3Qgc3VuNGlfaGRtaSAqaGRtaSwKPiAgCQkJ
CQkgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKPiAKPiAKCgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
