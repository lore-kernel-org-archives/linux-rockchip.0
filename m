Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 134AFC6FD1C
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 22:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqPGAzGG40txY9WxkRGrbnajbLXa/CyNmbqkt3hSyVw=; b=lznxH4LNDBO3I6
	2GaaOPUfSOtaM4SRwRD76ylXzoQuhQMy7tDokQKTmyfiyKwqd6o7gIKmAD9AhM2LuqA2EY7XNmJFx
	gfjyZivlY+edpoVE3S4D2FzxSOjtGGvRHGsz7664vqlddSxAhNGYjMHNmC1ZyEGsXcxl7vJcGtt9g
	8j2SQL5XEUQVpdsULcvnwY6OQ+zR21cvA2ylF5JPoGnyZJhr4tWWNt8l0Tm3HyPdYVUT1X3ZsR1qH
	rBm4amc6xVstqtJsv6eZgT34rKKmP4qyAOGqanr8rZiKUm/8n9abdbugOOIBFXR9EIjpCJ9zIS7tc
	tVgzV5qLsXP1gTxnk3Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbqEw-0081Xq-CN; Mon, 13 Mar 2023 22:01:58 +0000
Received: from mail-il1-x12f.google.com ([2607:f8b0:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbqEk-0081Ul-0T; Mon, 13 Mar 2023 22:01:47 +0000
Received: by mail-il1-x12f.google.com with SMTP id h5so3651806ile.13;
        Mon, 13 Mar 2023 15:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678744904;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DMLvNFiF6A+cLlm+Md6S//7sOrhzSCiOnPwGbda9MTs=;
        b=aWXb3DK3A5HljkDmtHfJIax0Z4RexrlgcAXu6rc5w2LBmdFm0ZhzhLWq9rUOZmDdp2
         qjfynGlY/ln39BF9ghwsOTTnx2ty5W57Izt1vktIL66IwFpZ/SXIeL7yDa5HJPkJlCYF
         NuKPKFxU3VSN9QKyNg+xaVoMZ5ANKIiFT49KWS508WvyJUv1PSNLqT36iEIBajXHYKM2
         acqHQd4/vdBLJ+TdQuHL6ydeVF/R7kSdyCG95wHm3s6ebS7yK6DpiZc5sxZdrmyjrlR3
         Jyx/d7UvLyTcSFtZrbuWKS9R4+hA1qJSfOEOf/z7YJ4IiYDiNLA5Q6zZJgMbK8TX/7NT
         YeRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678744904;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DMLvNFiF6A+cLlm+Md6S//7sOrhzSCiOnPwGbda9MTs=;
        b=tzh8yS1KkUZ2jPTrBHO+QHU4GiV9T10f4+1sjQQvkvW1y7oEWrDv5bk53IzsLT5P8J
         o8lUbVBCY8EBGUqligXPsb/OsTXsRbe66TVru/bqsecDfcb2dh9CstXyES9LCyHa+E5v
         oAA2n3vOd0XBn9TT17Wb6W278kvdR7xNK0193mAviD+wGakOu6PXiZ42tIbZn0VPogB4
         tp1pjpS1Z1R0sAr0mm0PSELjy/1p+p5sP3KJeo/gzmuL44d5jYpKcEQ3X9iOJh8FY4dD
         YD7WI0IMRGdsX7vU0K/13IdM7SIAWvkmjP5lBzDKhHmgf8vrMZNo+/5+nHYNQXnKpWt2
         2ZIw==
X-Gm-Message-State: AO0yUKUZ4RZANpEegzR3YmwdSx726cSL03ZS3AYPPDBLGdZeLKaxTYpC
	OSup0stqUXBhHrQ3utIu60Q=
X-Google-Smtp-Source: AK7set/CnpGrRNOlgdLP6A3PzpsbmZdrv5qoYIZVsXl6Lk7tiSYIV4Z0CbZ7o/CqEdQmrdQf0Yh05w==
X-Received: by 2002:a05:6e02:dc1:b0:315:5467:4a3f with SMTP id l1-20020a056e020dc100b0031554674a3fmr720344ilj.30.1678744904090;
        Mon, 13 Mar 2023 15:01:44 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d19-20020a056e020bf300b00316e3a38becsm282388ilu.18.2023.03.13.15.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 15:01:43 -0700 (PDT)
Date: Mon, 13 Mar 2023 15:01:40 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Joe Tessler <jrt@google.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Wenyou Yang <wenyou.yang@microchip.com>,
	Bin Liu <bin.liu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
	Houlong Wei <houlong.wei@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Yong Deng <yong.deng@magewell.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 01/28] media: cec: ch7322: drop of_match_ptr for ID table
Message-ID: <b83d6b81-c4ec-4fb8-b626-84af80d1c4a3@roeck-us.net>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_150146_095573_F1F73FD8 
X-CRM114-Status: GOOD (  19.55  )
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

T24gU3VuLCBNYXIgMTIsIDIwMjMgYXQgMDI6MTI6NTFQTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBUaGUgZHJpdmVyIGNhbiBtYXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUg
c28gdGhlIHRhYmxlIHNob3VsZCBiZSBhbHdheXMKPiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRy
IGRvZXMgbm90IGhhdmUgYW55IHNlbnNlICh0aGlzIGFsc28gYWxsb3dzIEFDUEkKPiBtYXRjaGlu
ZyB2aWEgUFJQMDAwMSwgZXZlbiB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUp
Lgo+IAo+ICAgZHJpdmVycy9tZWRpYS9jZWMvaTJjL2NoNzMyMi5jOjU4MzozNDogZXJyb3I6IOKA
mGNoNzMyMl9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQt
Y29uc3QtdmFyaWFibGU9XQo+IAo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kg
PGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KClJldmlld2VkLWJ5OiBHdWVudGVyIFJv
ZWNrIDxsaW51eEByb2Vjay11cy5uZXQ+CgpGV0lXOiBUaGVyZSBpcyBhbHNvCmh0dHBzOi8vcGF0
Y2hlcy5saW5hcm8ub3JnL3Byb2plY3QvbGludXgtbWVkaWEvcGF0Y2gvMjAyMzAyMTUyMTQ3MjQu
Mzc5ODkxNy0xLWxpbnV4QHJvZWNrLXVzLm5ldC8KClRoZSBsYWNrIG9mIEFDUEkgc3VwcG9ydCBp
cyBhIHJlYWwgcHJvYmxlbSBhbmQgdmVyeSByZWxldmFudC4KCkd1ZW50ZXIKCj4gLS0tCj4gIGRy
aXZlcnMvbWVkaWEvY2VjL2kyYy9jaDczMjIuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvY2VjL2kyYy9jaDczMjIuYyBiL2RyaXZlcnMvbWVkaWEvY2VjL2kyYy9jaDczMjIuYwo+IGlu
ZGV4IDM0ZmFkNzEyMzcwNC4uM2M2ZTY0OTZhMDAxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVk
aWEvY2VjL2kyYy9jaDczMjIuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvY2VjL2kyYy9jaDczMjIu
Ywo+IEBAIC01ODksNyArNTg5LDcgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgY2g3MzIyX29m
X21hdGNoKTsKPiAgc3RhdGljIHN0cnVjdCBpMmNfZHJpdmVyIGNoNzMyMl9pMmNfZHJpdmVyID0g
ewo+ICAJLmRyaXZlciA9IHsKPiAgCQkubmFtZSA9ICJjaDczMjIiLAo+IC0JCS5vZl9tYXRjaF90
YWJsZSA9IG9mX21hdGNoX3B0cihjaDczMjJfb2ZfbWF0Y2gpLAo+ICsJCS5vZl9tYXRjaF90YWJs
ZSA9IGNoNzMyMl9vZl9tYXRjaCwKPiAgCX0sCj4gIAkucHJvYmVfbmV3CT0gY2g3MzIyX3Byb2Jl
LAo+ICAJLnJlbW92ZQkJPSBjaDczMjJfcmVtb3ZlLAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
