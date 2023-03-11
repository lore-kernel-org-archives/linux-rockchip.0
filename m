Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB5CEC6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Mar 2023 21:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BG/v5/V8whBjYuTPL0ylTfxIYd47P1I2Fsq/A5wOxcA=; b=M6CYEAj2lQ3p02
	IrtStiDInfnSMLMaZi6wf9CklrbNhF3pN7cU/CTk/7l9eNFvQaTbKiwPKswB05GFuFatR62ps4k1l
	3eqo8MSU2DC6VQH5eHlhr3Am06Lwh6LQvvcZ/UA61qr0BU81PTOQfAQh7XAkq/zs+dq5+BW+TMyhN
	vTkiG9aP7AJ6EX1SXpl42uGz8UBfrI5kl0ZPrncbFdEQEZmWo7UJBLrjuVr9ykHrePqmzNqPpU7IX
	UtmOLUamKBcbqCOys5EzPghORpecZjXONN0jQBMK1swXyK34/VRzBqDmT3EOAWqmATMAEkd5o8wRs
	kFJa0/okA5oj0Cqah82Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pb6N9-001FJn-US; Sat, 11 Mar 2023 21:03:23 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pb6Mz-001FGl-7x; Sat, 11 Mar 2023 21:03:14 +0000
Received: by mail-ed1-x52b.google.com with SMTP id o12so34194335edb.9;
        Sat, 11 Mar 2023 13:03:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112; t=1678568590;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iJFf8GLtxWXihMug6P0OGoX7CTL7k0wwiBVKeyB4Rpo=;
        b=pT9GDSN4DyEtHNbHsKZm+0xijlTsTvbU5bIPzBadlF8tLIGLblNyzLF4VXQ5dN+1oa
         02KI9Pn8XbTyDnI8AiRekzeA6P7tcsqysl4FxqJI5Jgtv/j8ItblEFdxVnlu54pNyDzI
         83gLA8eoM0Sq8GzdHd/ogzYcPvjE2IMcJ+H1qt91TXwL6K8oAQEoluoIpDI3rSd8PyOc
         WG236kfMedjpEUs/ovKGbEJZVCyuXzPNUisPfHjJShXO3TgDDTdiy+uRcM3QGSdMvD+4
         VKmda1fshPzwDmkAkuA3fGsMg3b/1zrwzvnoc/Wpk0Ha3L8ybVW7WxZGOaYnrLQUu/al
         5JNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678568590;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iJFf8GLtxWXihMug6P0OGoX7CTL7k0wwiBVKeyB4Rpo=;
        b=MS58m9B8O7cDiIaWkA2kCKYnvgx9ACjVfzrOT/yIbCqdkCIz1qPEo4Gt6ddi+M5gOy
         yU67iVP0919F4cDbEu70UAylFXiKZILjrqjI4NmgZ1sWlw74e5vYguwBoX2wWzCMEhC5
         w8E98KXg7V5zYUuePUFtAIsWmZVQJfL2nXRrCu0z2zaQuTVszStRX/BlbNjNMHDUNbSu
         eirSg+Gd0gWfymhVMt756qXCn8+p+uyqN61UF0KCA1gjRfn8Sr/l6XMszoCBkRQ1bWvT
         eUkTUkNWb3PEHHM23UupWJqUNXn7B2ZQlu4bChHRCH+mUdsaVTVQv16C267YX3SZMAfJ
         yZ3A==
X-Gm-Message-State: AO0yUKUp/C+JACENJvNzrN+TS+odnJfXtGFHG+vZTnV544EZUmjvLXTz
	rHnIAfRsBDpvvNZFMRKu+jKMPP5wdkhwj+E+xQI=
X-Google-Smtp-Source: AK7set+nsdI6U8Akb2Epvh5TLqA4QBXyUOxE40/FSbMxrjd9iHwvD/RJEhXoH5zYK9ZKzGCHNnhGvBPHX4D8aOQhPFs=
X-Received: by 2002:a17:906:a1c5:b0:8f0:147b:be2 with SMTP id
 bx5-20020a170906a1c500b008f0147b0be2mr14063306ejb.4.1678568590629; Sat, 11
 Mar 2023 13:03:10 -0800 (PST)
MIME-Version: 1.0
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org> <20230310222857.315629-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230310222857.315629-3-krzysztof.kozlowski@linaro.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 11 Mar 2023 22:02:59 +0100
Message-ID: <CAFBinCCZAjbuE-1hgJSUoW=GNT80Y7xReNW2D84H7YJ=yHVPxw@mail.gmail.com>
Subject: Re: [PATCH 03/16] spi: meson-spicc: Drop of_match_ptr for ID table
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Mark Brown <broonie@kernel.org>, Kamal Dasu <kdasu.kdev@gmail.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Daniel Mack <daniel@zonque.org>, 
	Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, 
	Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi@etezian.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Stephen Boyd <sboyd@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-spi@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230311_130313_298141_D6C53902 
X-CRM114-Status: UNSURE (   9.59  )
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

T24gRnJpLCBNYXIgMTAsIDIwMjMgYXQgMTE6MjnigK9QTSBLcnp5c3p0b2YgS296bG93c2tpCjxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gVGhlIGRyaXZlciBjYW4g
bWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBzaG91bGQgYmUgYWx3YXlz
Cj4gdXNlZCBhbmQgdGhlIG9mX21hdGNoX3B0ciBkb2VzIG5vdCBoYXZlIGFueSBzZW5zZSAodGhp
cyBhbHNvIGFsbG93cyBBQ1BJCj4gbWF0Y2hpbmcgdmlhIFBSUDAwMDEsIGV2ZW4gdGhvdWdoIGl0
IGlzIG5vdCByZWxldmFudCBoZXJlKS4KPgo+ICAgZHJpdmVycy9zcGkvc3BpLW1lc29uLXNwaWNj
LmM6OTQ5OjM0OiBlcnJvcjog4oCYbWVzb25fc3BpY2Nfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQg
bm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPgo+IFNpZ25lZC1vZmYt
Ynk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4K
QWNrZWQtYnk6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xl
bWFpbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
