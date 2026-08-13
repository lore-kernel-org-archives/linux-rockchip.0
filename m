Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 190FAC5AC67
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 08:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDQ9DlFiIbbPMLH+SSJbO/zjV0gq5NzypAcV1UrwYAM=; b=YqTNSnuJqFxG01
	NZoFZJGcvXzZ1JWqz8Kzg54CpD7nnLNWxBR0q7VOAkCkWA5t9QPEYnbiqqGllqR2Q6syLH/HXJHWv
	M2bWlbk6zJf55DYtg5b/CCerJtE2zcB9146YQqg6n1wBgdF4e5o8/e+2ilNz0vhT19XWHIS/xwbmC
	oaIiF7yIiBqVzKQIZTSO6BCWJY1neVmZe7PkVQrJe4qpucvES2wYIdLg+fb9fKuIzPDweOYbPUESk
	620d+Nuev/d4X9RtPPyadPq/XuuYkrICz0cDMUhtsYVsVHCf+ePlz7iwvNz8wskk8bZoTtFITDqdL
	80Vy23kohzRQM4wkjtkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQze-00000000BZv-20xc;
	Thu, 13 Aug 2026 08:40:54 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQzb-00000000BXK-1cAO
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Aug 2026 08:40:53 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-698ae9da373so296722a12.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2026 01:40:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786610449; cv=none;
        d=google.com; s=arc-20260327;
        b=dWDAoPh+tGIGGzGM76Aoo1OvwU58nnYI9/Ofz/4MuEz4hNrCzG5WAGurnpcEpqf9sa
         H7SBuMS6Kro7uTfkUEQGj9BdMCBaJ3xdjHnHryeKzY/tcJMDfKMeckECPN/GhW9yfi15
         7VUhCI/znIKTZB908DEIJl/YbrpaGvp8yLwYDEik7jYcO+KwxafOxqDUaAGFM2u3z56Y
         HB8R6WvDc/HaoORFcpCs2kLhJwxNKZ3b5geHIRhQsx9WqRpmQJ8r/eM/sXo3gX3A1Rol
         HT8ec0tQEov6Tr39RDNNPu0VJnRtP0mEIY4t+I2rSOkIYE7YlTUchoEV2+7+pbMNgwaC
         oaVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TClEoJsq0ggVTCXaYTDr62G718iMq9uV18dUpEwxTBg=;
        fh=mnIfGT3eWG+7ijOg+hzniCRLEhLS2XrD6H1mpyXjO6k=;
        b=d3LJiIuqmp9EgXjx3sKL04zf6uxU7+AiBYKWg1mqQzPJD+1ZVZoGX20FjgylYnJvUC
         /t5/fbSUyN2wH2vouEbM1eGLH5tfI/tf4bbGH5pJ9t1iGvpawllouD40HXqAo2H/pgGY
         8+Ucam75wuwqsvkitB/w2ynxiN1ejWnzOR9skJmM5sWcu8wESDVrV9R7KmMG+v9Uh5QL
         6kDY/MMKNrtFwzc2T95Hbx/W4oBIAPdRhUrjXJFMChfeLm8AYfyLM+vm3lU0TBxYAQOA
         rXCxGhQYxbk3CapcsJ/YdCTU6ltmduSlofWkksTvW/LQg+0MTTVLGR2olZ6rk3Dh5D8V
         plmw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786610449; x=1787215249; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=TClEoJsq0ggVTCXaYTDr62G718iMq9uV18dUpEwxTBg=;
        b=Gw27tNjapMS6DTpdnSLf3ZyrIXZl1HR4bV3qvG+OtewWtiYxDOSljAewqoMZdsjIT8
         3eV1rvPLHI8XvSyFGS3ZzaFIgugWjp5gJUNAhwjYmVhNfepV3vK29xTZqvZNUGWLjTlK
         yAq5EdHrlXfZibOe6LEZvHJGLd83yXWrE9iysNEtdJKIhRcutUxCPTWKmdTkHX3LiHtM
         uuwKt3joMd7AhGqIQoxD3rGPf+KdmThvdx9V6/r6oydbwz7zOIufmN7BlBWIgRjJ3heQ
         lggxb9LyEQexw3aeBHn8eeN2CQhxCvh48MXWjjrC7EhKSB1LAxhv7H7e+WQApzWIWZqL
         MVyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786610449; x=1787215249;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TClEoJsq0ggVTCXaYTDr62G718iMq9uV18dUpEwxTBg=;
        b=drViwQQmzfQ1l6uWCEteLe4329H6ej3D/TKKPqSF8JJ/fANyoq4PoHV8mlGJ8UE0Yt
         +K7Cz26h1zEa5tCLKn5UEjCXFxL6Qse0zDmdePigF2GJL/5N0a6wM75O7VkUefpohK+5
         KJt36RXKiNb9GoxXPz5j+n5Mdw7njj6g++F89uByCMKbEVKmj+YM/N1fAhoYV2vQ33Pr
         yAZ3yjKn4/wX3IyccV2PlYLOkHdssecnMpcwopvWWA9MAt0sUjE9OaX7YIQJb+0lXRQa
         9hOPDRcN1hDwaDn2pjb8dxttZrFBRXu/cv6hpmidgseo0xKL5ndpyB0kzNMu2UVe0zLY
         5xyw==
X-Forwarded-Encrypted: i=1; AHgh+RoD6KpX3nmOOkdBwmMJWvsYzWoJQmz9lwgBkocMCrso46uVqQdhkLjElyROJxtnmnqUOEe9ezuBkCz63WqiEg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzhAtMoUsUrglm+4vQBTaFggfYZen9Sxx8raoadflaOMngkHO3H
	iSOcim8JMK1OmciCJwdl7/0Tas9zLKVw0y3H5z4TWKUDScw2CnVPo+aC7KCjKAR7JjTzZqAqFYb
	v1O2fj/7tKw14xHPb3yx45iAnvtumqbg=
X-Gm-Gg: AR+sD10WpKF/mvyv77L2O/IDQQHwRCPwu9dBGP4Iy11taGfSjROVHZiRIDldyKlImzd
	VbNjc6XvUyzUhCRa7Hg4Ou/c2JxjsNUYhNKwWTGzKKtZ+mCm/Rsm3ifym6DCpk4fQLmgQVwIQxt
	JQiK8i6FDERhH8dc9GuK0RFtwIoYJTV5g0pQdrsRO7OAfdNTY1UvlD3b6op/1tyNFZY0pquvsVC
	Gpll2gYrlk9quIlUIDHEvc6HyeKtZREFoCae3DARVhwSYY2ytOigUmVJYjirvx8ngK7CctkuOJF
	KIWQ2xV5aAPe57CNJM8qo6LAwn6Nyxgnc5VwQHHPBJ6x7swYirLQ3Q==
X-Received: by 2002:a05:6402:1f86:b0:6a0:19c8:f9c0 with SMTP id
 4fb4d7f45d1cf-6a381bd91aamr837533a12.4.1786610448674; Thu, 13 Aug 2026
 01:40:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260810-dcphy-rx-v1-v3-0-a2d25c29adfc@gmail.com>
 <20260810-dcphy-rx-v1-v3-1-a2d25c29adfc@gmail.com> <20260812-refreshing-rampant-gecko-b38ef9@quoll>
 <CAPwA33KM-sWkPVrP1h+swLinvrCZHzxPeS7h25KEO87Q_6WZuA@mail.gmail.com>
 <an0FMnDSWbud8hPc@venus> <CAPwA33+7k7HMC7ezwH+MGn64iRHT6tVNK55t6gaC0nkkqWoE4w@mail.gmail.com>
 <20260813-imposing-cunning-raven-fcad40@quoll>
In-Reply-To: <20260813-imposing-cunning-raven-fcad40@quoll>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Thu, 13 Aug 2026 16:40:37 +0800
X-Gm-Features: AUfX_mye9jktuvnjIqJR--jOE-SjnI1mJ-tyZFHa_AmY4WZ5Toj9QFewcV4UoB8
Message-ID: <CAPwA33L-x=H+FU6-c9A8uKqhKbsfxcAJaaG49rUfnjvWk0f5mA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: Add PHY_TYPE_DSI and
 PHY_TYPE_CSI definitions
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_014051_455282_1CB37354 
X-CRM114-Status: GOOD (  24.91  )
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

SSBhbSBzb3JyeSBhYm91dCB0aGlzLiBTaW5jZSBJdCdzIG15IGZpcnN0IHRpbWUgdG8gY29tbWl0
IHBhdGNoIHRvIHRoZQprZXJuZWwsIEkgd2FudCB0byBtYWtlIHN1cmUgbXkgY29kZSBhbmQgcmVw
bHkgaXMgY29ycmVjdCwKc28gSSBhY3R1YWxseSBwYXN0ZSBteSByZXBseSB0byBBSSBiZWZvcmUg
SSBzZW5kLCBsZXQgQUkgdG8gcmV3cml0ZSBteQp3b3Jkcy4gSSB3aWxsIGZpeCBteSBhcHByb2Fj
aCwgYW5kIG1ha2Ugc3VyZSBWNCBhbmQgYWZ0ZXJ3YXJkIHdvcmsKaXMgd29ydGggdG8gcmV2aWV3
LgoKQmVzdCByZWdhcmRzLApKYXNvbgoKS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwu
b3JnPiDmlrwgMjAyNuW5tDjmnIgxM+aXpemAseWbmyDkuIvljYgzOjU55a+r6YGT77yaCj4KPiBP
biBUaHUsIEF1ZyAxMywgMjAyNiBhdCAxMjozMzo1MlBNICswODAwLCDmpYrmmbrmiJAgd3JvdGU6
Cj4gPiBIaSBTZWJhc3RpYW4sCj4gPgo+ID4gVGhhbmtzIGZvciB0aGUgcmV2aWV3Lgo+ID4KPiA+
ID4gWW91ciBuZXcgYmluZGluZyBpcyBsYWNraW5nIHRvby4gSWYgeW91IHNlbGVjdCA8Jm1pcGlk
Y3BoeTAgUEhZX1RZUEVfQ1NJPgo+ID4gPiB5b3UgZGVmaW5lZCB0aGUgZGlyZWN0aW9uIG9mIHRo
ZSBQSFksIGJ1dCB3aWxsIGl0IG9wZXJhdGUgaW4gQy1QSFkgb3IgaW4KPiA+ID4gRC1QSFkgbW9k
ZT8KPiA+Cj4gPiBZb3UgYXJlIHJpZ2h0LCBhbmQgSSBhbSBzb3JyeSAtIHRoaXMgaXMgYSByZWdy
ZXNzaW9uIEkgaW50cm9kdWNlZCBpbiB2My4KPiA+Cj4gPiB2MiBhbHJlYWR5IGRlc2NyaWJlZCB0
aGVzZSBhcyB0d28gc2VwYXJhdGUgY2VsbHM6IHRoZSBmaXJzdCBzZWxlY3RlZCB0aGUKPiA+IGVs
ZWN0cmljYWwgbGF5ZXIsIGFuZCB0aGUgc2Vjb25kIHNlbGVjdGVkIHRoZSBkaXJlY3Rpb24uIE1p
Y2hhZWwgUmllc2NoCj4gPiBzdWdnZXN0ZWQgdXNpbmcgdGhlIGdlbmVyaWMgUEhZX1RZUEVfRFNJ
L1BIWV9UWVBFX0NTSSBjb25zdGFudHMgZm9yIHRoZQo+ID4gc2Vjb25kIGNlbGwgaW5zdGVhZCBv
ZiB0aGUgUm9ja2NoaXAtcHJpdmF0ZSBSS19EQ1BIWV9ESVJfKiBjb25zdGFudHMgWzFdLAo+ID4g
YW5kIFZpbm9kIEtvdWwgYWdyZWVkIFsyXS4KPiA+Cj4gPiBJbiB2Mywgd2hpbGUgbWFraW5nIHRo
YXQgY2hhbmdlLCBJIGFsc28gbWlzdGFrZW5seSBjb2xsYXBzZWQgdGhlIHR3byBjZWxscwo+ID4g
aW50byBvbmUuIFRoYXQgaXMgd2hhdCBsb3N0IHRoZSBlbGVjdHJpY2FsLWxheWVyIGluZm9ybWF0
aW9uIHlvdSBwb2ludGVkCj4gPiBvdXQuCj4gPgo+ID4gRm9yIHY0LCBJIHdpbGwgZ28gYmFjayB0
byB0aGUgdjIgbGF5b3V0IGFuZCBvbmx5IHJlbmFtZSB0aGUgc2Vjb25kIGNlbGwuCj4gPiBUaGlz
IGtlZXBzIHRoZSB0d28gZGltZW5zaW9ucyBzZXBhcmF0ZSwgd2l0aCBlYWNoIGNlbGwgZGVzY3Jp
YmluZyBvbmUKPiA+IHRoaW5nOgo+ID4KPiA+IC8qIE1JUEkgRFNJIGhvc3QgLSB0aGUgdHJhbnNt
aXR0ZXIgKi8KPiA+IHBoeXMgPSA8Jm1pcGlkY3BoeTAgUEhZX1RZUEVfRFBIWSBQSFlfVFlQRV9E
U0k+Owo+ID4KPiA+IC8qIE1JUEkgQ1NJLTIgaG9zdCAtIHRoZSByZWNlaXZlciAqLwo+ID4gcGh5
cyA9IDwmbWlwaWRjcGh5MCBQSFlfVFlQRV9EUEhZIFBIWV9UWVBFX0NTST47Cj4gPgo+ID4gVGhl
IHNhbWUgYXBwbGllcyB0byBDLVBIWSwgc28gdGhlIGJpbmRpbmcgY2FuIGV4cHJlc3MgYWxsIGZv
dXIgY29tYmluYXRpb25zCj4gPiB3aXRob3V0IGFueSBmdXJ0aGVyIGNoYW5nZXM6Cj4gPgo+ID4g
cGh5cyA9IDwmbWlwaWRjcGh5MCBQSFlfVFlQRV9DUEhZIFBIWV9UWVBFX0RTST47Cj4gPiBwaHlz
ID0gPCZtaXBpZGNwaHkwIFBIWV9UWVBFX0NQSFkgUEhZX1RZUEVfQ1NJPjsKPiA+Cj4gPiBUaGUg
ZHJpdmVyIGFjY2VwdHMgYWxsIGZvdXIgY29tYmluYXRpb25zIGF0IHBoeV9nZXQoKSB0aW1lIGFu
ZCByZXR1cm5zCj4gPiAtRU9QTk9UU1VQUCBmcm9tIHBvd2VyX29uKCkgZm9yIHRoZSBDLVBIWSBj
b21iaW5hdGlvbnMsIGFzIGl0IGRpZCBiZWZvcmUKPiA+IHRoaXMgc2VyaWVzLiBCb2FyZHMgdGhh
dCBvbmx5IHdpcmUgdXAgdGhlIHRyYW5zbWl0dGVyIGtlZXAKPiA+ICcjcGh5LWNlbGxzID0gPDE+
Jywgc28gdGhlIGV4aXN0aW5nIGluLXRyZWUgZGV2aWNlIHRyZWVzIHJlbWFpbiB1bmFmZmVjdGVk
Lgo+ID4KPiA+IEJlZm9yZSBzZW5kaW5nIHY0LCBJIHdpbGwgZ28gdGhyb3VnaCB0aGUgY29kZSBh
bmQgY29tbWl0IG1lc3NhZ2VzIGFnYWluLAo+ID4gc28gdGhhdCB0aGUgcmVhc29uaW5nIGFib3Zl
IGlzIGNhcHR1cmVkIGluIHRoZSBjb21taXRzIHRoZW1zZWx2ZXMgcmF0aGVyCj4gPiB0aGFuIG9u
bHkgaW4gdGhpcyB0aHJlYWQuIEkgd2lsbCBhbHNvIHJlLXRlc3QgdGhlIHNlcmllcyBvbiB0aGUg
Ym9hcmQuCj4KPiBXaGF0IGlzIHdpdGggdGhpcyBwcmFjdGljZSAodGhpcmQgcG9zdGluZyBJIHNl
ZSB0aGlzIHdlZWspIG9mIHBhc3RpbmcKPiBhcyByZXBseSBwcm9tcHRzL3Rhc2tzIGZvciBBST8K
Pgo+IEFsbCB0aGlzIGlzIGp1c3Qgd3JvbmcgYXBwcm9hY2ggYW5kIHlvdXIgcGF0Y2hlcyB3aWxs
IGJlIGlnbm9yZWQgaWYgeW91Cj4gYWN0IGFzIGEgcHJveHkgYW5kIGtlZXAgcGxheWluZyB3aXRo
IHVzIHRoYXQgd2F5Lgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
