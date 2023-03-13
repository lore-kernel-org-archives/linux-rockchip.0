Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BB8AC61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 20:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8Jb0Izz5uDwooXayGyflTFBtUvJkHwCr9gSDq/JxwY=; b=DAy1m7QcU/H4ta
	hBBiIeB98ZlKLK9g4f3/8HPRBwFJVWIG+ctMI6ekK2As+XFRD4LxWVjRtiuYWn/eK57UffQQIDUlI
	sYrqtnKhOEqnOJDHQWQ3yjMKGbeAEtEqh0pXYIrMvQjjs/YJvGeJwL7nUZGn87IuMoZzX+NX4j1nm
	soMQ/8HC6ETFusNe3uyudJfthxSa2rlRuP5lzyaejAbkvi7zL4r9swptobDT7Zyx1PouYDKsuqKDO
	kSgjflRfU2SxYGMjuEyu3qy/P5UEYN9fm6xro0Uet6s1+xfrjvhNR3wRbFc/M+LBtbKTwApBU34Eh
	ABBWZnA/bKfUiuJ7D1Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbpB4-007ji8-FJ; Mon, 13 Mar 2023 20:53:54 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbpAs-007jf4-GZ; Mon, 13 Mar 2023 20:53:43 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-541a05e4124so78026927b3.1;
        Mon, 13 Mar 2023 13:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678740820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YZpqs5siL4Ymiuu8Rnql+zUqmGWcS+ZbAUBpWJ9W4K8=;
        b=KDTS7fZaclyphgJmqC5N15uD3+Gq9l4SliqQgO+pQM5PW7JyjCgsme6Ge6zXtsqVxx
         AW1l83xNB2ZVX6w+QoQcccw87e1AscXRvCCeZLy1nzrLKUU1XU34faaYkOiDyN24nAY+
         v6AuBphGSYHv2//9OqQZjdq/Jw5V0E+1129tns66JhFazayIQv6o62288nii6Zp5HB1N
         TVhCN3L0l+bFus5xhnnmZ3CJCowu7SEkSE+SVTPEf73wBpgQuZlxkq1PIFew5GxN8BkQ
         9o66TpI9Ei8fIKOQHLzaO+QfgzHm0YuUjG7Vicxxh0QA7Gdwclqym4Dwdmdr6Txlz323
         wNoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678740820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YZpqs5siL4Ymiuu8Rnql+zUqmGWcS+ZbAUBpWJ9W4K8=;
        b=hljnd2CuDckgGY5bYNRZpPtOekkYPWcL5pQwG/bR2iHNnEQXYFEY8VIebv2wgYEmje
         7QPJ6S8ICS8NOHPf3FbPWV9KrUEMyF4odXo8tQZk87gHf/nU0xsXCGBJwuHuH9+5mY3B
         kQZaoc0+P4fEoOIQ3ZFQCRD5iSiGxC6en9rZRO5MAmkJICZwBwxIzIMc8m181q8hMaGM
         CybjAQV9lqNLcog6ajlgYanvYeq/zmvzCrqG68QyppJ+rIqqMkpeTNhUoBxdV6yf1DR2
         BZeTdtGcX/3Ftv8UixDcsHka1rL9V6NZeuX619DglK4xtyA8cMuqeFlsa+rRprkAt/7z
         eZ4A==
X-Gm-Message-State: AO0yUKWrSh4hK8E1YX1YGMZPEtCa7qLGHU6Z9Vn8hIW/jsxeqwX6+jn/
	jM/arxX8nDECq51TJ7Uyx18gjumITr1JSc/zPiA=
X-Google-Smtp-Source: AK7set+bkApoxdat3t4mM5yzrnKSLYecVccpJe9yYCQX9Rk8pbyyHXlR/QgC7cJyNYCPNbj0eloQSjFebG86/6a1CaA=
X-Received: by 2002:a81:a9c6:0:b0:52e:f77c:315d with SMTP id
 g189-20020a81a9c6000000b0052ef77c315dmr8791180ywh.3.1678740819961; Mon, 13
 Mar 2023 13:53:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org> <20230312131318.351173-11-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230312131318.351173-11-krzysztof.kozlowski@linaro.org>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 13 Mar 2023 20:53:13 +0000
Message-ID: <CA+V-a8sPwMax7A=k=8bz9SDbWJt7mNHG0-27UXsC=bEhAP3zQw@mail.gmail.com>
Subject: Re: [PATCH 11/28] media: platform: ti: am437x: drop of_match_ptr for
 ID table
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Joe Tessler <jrt@google.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, Michael Tretter <m.tretter@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Jacopo Mondi <jacopo+renesas@jmondi.org>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Rui Miguel Silva <rmfrfs@gmail.com>, Wenyou Yang <wenyou.yang@microchip.com>, 
	Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Minghsiu Tsai <minghsiu.tsai@mediatek.com>, Houlong Wei <houlong.wei@mediatek.com>, 
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Patrice Chotard <patrice.chotard@foss.st.com>, 
	Yong Deng <yong.deng@magewell.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_135342_595389_29D7677A 
X-CRM114-Status: GOOD (  17.70  )
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

T24gU3VuLCBNYXIgMTIsIDIwMjMgYXQgMToxM+KAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBUaGUgZHJpdmVyIGNhbiBt
YXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUgc28gdGhlIHRhYmxlIHNob3VsZCBiZSBhbHdheXMK
PiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRyIGRvZXMgbm90IGhhdmUgYW55IHNlbnNlICh0aGlz
IGFsc28gYWxsb3dzIEFDUEkKPiBtYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZlbiB0aG91Z2ggaXQg
bWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLiAgVGhpcwo+IGFsc28gZml4ZXMgIUNPTkZJR19P
RiBlcnJvcjoKPgo+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9hbTQzN3gvYW00Mzd4LXZw
ZmUuYzoyNjIwOjM0OiBlcnJvcjog4oCYdnBmZV9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBub3Qg
dXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+Cj4gU2lnbmVkLW9mZi1ieTog
S3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+IC0t
LQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3RpL2FtNDM3eC9hbTQzN3gtdnBmZS5jIHwgMiAr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgpSZXZp
ZXdlZC1ieTogTGFkIFByYWJoYWthciA8cHJhYmhha2FyLmNzZW5nZ0BnbWFpbC5jb20+CgpDaGVl
cnMsClByYWJoYWthcgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9h
bTQzN3gvYW00Mzd4LXZwZmUuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdGkvYW00Mzd4L2Ft
NDM3eC12cGZlLmMKPiBpbmRleCAyZGZhZTliYzBiYmEuLmZlODliOGUyNTBlNyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3RpL2FtNDM3eC9hbTQzN3gtdnBmZS5jCj4gKysr
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9hbTQzN3gvYW00Mzd4LXZwZmUuYwo+IEBAIC0y
NjI5LDcgKzI2MjksNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciB2cGZlX2RyaXZl
ciA9IHsKPiAgICAgICAgIC5kcml2ZXIgPSB7Cj4gICAgICAgICAgICAgICAgIC5uYW1lICAgPSBW
UEZFX01PRFVMRV9OQU1FLAo+ICAgICAgICAgICAgICAgICAucG0gICAgID0gJnZwZmVfcG1fb3Bz
LAo+IC0gICAgICAgICAgICAgICAub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIodnBmZV9v
Zl9tYXRjaCksCj4gKyAgICAgICAgICAgICAgIC5vZl9tYXRjaF90YWJsZSA9IHZwZmVfb2ZfbWF0
Y2gsCj4gICAgICAgICB9LAo+ICB9Owo+Cj4gLS0KPiAyLjM0LjEKPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
