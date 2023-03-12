Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62412C6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 20:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrQTDqc51E16n9kEiC7qr9viUh2nN6iBaGYlESK4b0Q=; b=Mgnnf5UGnh05ND
	Kjzqbd939YHfs7OfolRSzXYJTLoOn06mSDyc/13aTMgJYGpA6fSjcih1oqlt//XzYFyzuqr7RBazY
	3T0uZ1Q+Int9hb5DALMoG0cscNZdRPvTpROCGepEqJ1emWpshXcXh9G0U6mefjmnVlGX2n92lzf37
	yKIn0WVboSqt0A0NhQsN9E4UqolYnlyMhr2YdFs1Rxh1Im4pPj/5Sn1cPExjiuPr6XfraFPDdSTKN
	mYtFhz5PxMb3fyuzskyMNdaSKp0xqSxw6Lizx03iTVDo+5uM64YZyZMGBp/SsAe6KJQx3LyYgqg8+
	tsZq9w+V17gGZ8UcbQWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbSE1-003ToI-9k; Sun, 12 Mar 2023 20:23:25 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbSDj-003Tfy-Ud; Sun, 12 Mar 2023 20:23:09 +0000
Received: by mail-ed1-x52d.google.com with SMTP id fd5so6984684edb.7;
        Sun, 12 Mar 2023 13:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112; t=1678652584;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zx5Hx16VtrsWGIQLk9WwOhEjwlykZ68lI6lzjbPZklw=;
        b=Hf8bDIgSRyHgy9bXQ/Gk4nexYiqXGYoCYtQ04Ivh+iCVbpJ2b5wzrRnb++ax5WG5YU
         l1ECC7hckmqBIWK0FYKledOUlR/8oGb9iU/bprqDFfYvUnH9HXOkXMuEU7AitS1oLCXw
         myetldVYFfznoSCvDzeKhgZkcDBm8pW0l/vGCJjUPX1DzrdmVRAKk857IvrVjfQ9XSKG
         2N5oK1VtlQxJyFx4Mf99gdPkQnYe53VpL6QT66oSCLZqVHMC0inMBQbwy20+y8itU9ok
         BWs74qxV0g+EZr9O9dScl2udx1DcuJJXJz0jv3NNva7rrPcHkok53W0tVeIcIuzzmOKr
         qkHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678652584;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zx5Hx16VtrsWGIQLk9WwOhEjwlykZ68lI6lzjbPZklw=;
        b=BdVZ8GdX+RxEg+Ea8z5wgtQfsAeHrOJZjbXlMVx8xpj5Nz5kP9uuZjzr1t6VTUnfFb
         OF7qNJ79ZEtplCS4i3S1XLNN+cjOIa0WIKakYN4OsloRephp2CmFdTW8saWz2YY9M8QP
         0p/LH/ePZCwvoMUKLgd6Ut5eFBQSAYjFKFNvJgY0mq3OOZmfxKiuxkFI0TjpGNQZERzL
         VLo00pxelrDRkpxdb2HKe7gbUGXRXbsIEdF+yclmLkzzvuG05CcJlUQ818LuNd9L6aFr
         +1T6MPup3qlcpTuD/MAtdS6dbH8SGiign8uNwXSAatX1500xkk/O9jCl9/RJZkv148o3
         k5oA==
X-Gm-Message-State: AO0yUKXIaM7S6H++QDJqbKLJSWThvlXHVzkiv4OyNS9RQU7Q0qFrpTwE
	tDYMNBIcBjC4z/UhF2dp3D8M5RVlzuImZ6z6HRY=
X-Google-Smtp-Source: AK7set9zgGbqFrzGWxNsXVoKpAldwMmxSrIf9cZOIFv0n5RvCM/bJPrPW3NGvz9pmm0rGWW96q1mG4aHSyR0BOq+UH0=
X-Received: by 2002:a17:906:e58:b0:922:ff34:d814 with SMTP id
 q24-20020a1709060e5800b00922ff34d814mr2005221eji.6.1678652584109; Sun, 12 Mar
 2023 13:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org> <20230312131318.351173-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230312131318.351173-2-krzysztof.kozlowski@linaro.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 12 Mar 2023 21:22:53 +0100
Message-ID: <CAFBinCDTRjqLfJvs=dtQNS0=5mZSDAdR8tQNt_qLt-BH9+P7MA@mail.gmail.com>
Subject: Re: [PATCH 02/28] media: cec: meson: drop of_match_ptr for ID table
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Joe Tessler <jrt@google.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
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
	Samuel Holland <samuel@sholland.org>, "Lad, Prabhakar" <prabhakar.csengg@gmail.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sean Young <sean@mess.org>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_132308_118705_FD078016 
X-CRM114-Status: UNSURE (   9.91  )
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

T24gU3VuLCBNYXIgMTIsIDIwMjMgYXQgMjoxM+KAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBUaGUgZHJpdmVyIGNhbiBt
YXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUgc28gdGhlIHRhYmxlIHNob3VsZCBiZSBhbHdheXMK
PiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRyIGRvZXMgbm90IGhhdmUgYW55IHNlbnNlICh0aGlz
IGFsc28gYWxsb3dzIEFDUEkKPiBtYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZlbiB0aG91Z2ggaXQg
bWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLgo+Cj4gICBkcml2ZXJzL21lZGlhL2NlYy9wbGF0
Zm9ybS9tZXNvbi9hby1jZWMuYzo3MTE6MzQ6IGVycm9yOiDigJhtZXNvbl9hb19jZWNfb2ZfbWF0
Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxl
PV0KPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3ps
b3dza2lAbGluYXJvLm9yZz4KQWNrZWQtYnk6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5i
bHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
