Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51017C74A44
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVde3WB5FoMzwTymoItAbIM8jMLvwf4sPIaAW995bJ4=; b=U+nj7uqHbqsSE7
	YphcQSb4VeZ5Zf5lsC4jKByoslhB3rJ6vaALOban9FPzqm703IVQZ4e0RcOw6Dsvx1moRpH66k07r
	uvd0zVafX+umoVcnnawOrsyJurrWEzTQygZv85dcZy08k6FQXWA6nZY7AbEmyZClHNC03G9HU0zmJ
	bpYCld+BxGngdjLzzYONw52zXRlVpls/pM3qbuAK96tcBUyt3N3mr7HnVpTgolIYNDs/WOmOEWUl5
	x9g1cdxe11SKXgVGTK85UTCyfHf/wvWdcsQipPTbWQjsR+2wC2kfNFH53Tr14JLL6Us4nWmlTosN3
	oL4LFdIu4/mjTS1FgbLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAhb-00BNyv-0u;
	Tue, 14 Mar 2023 19:52:55 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAhP-00BNrs-2M;
	Tue, 14 Mar 2023 19:52:45 +0000
Received: by mail-ed1-x52a.google.com with SMTP id z21so1423559edb.4;
        Tue, 14 Mar 2023 12:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678823561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=84n+oQ302Lrrw4Xj5iionDKBc2AXr3E7Vl/qNdfFHag=;
        b=jtMqk3VJbrkKpAHPz/4m10k3iyx5QewNEjy33UoSDCoiTp8RD6GFTQmtaqMT8czpXw
         +Uk+DEy81/sRL+3LcFriMiCaGN+2szqqX4YISqDiRotNme1tvGk59RHvoSOnTXZ41+H4
         2fXlBn+jPV377GGy9kXTImtKGbB3Q9yjIbbmPTWqafGJvuomVcnaxDMFP4Kn1LwZ9/Qh
         6tnk8G5PpSbXhsYwd0NwrROnOAQ3aDVqRWTfN9O+J/cafAD/5ixh9w63wF1MEzxsGni6
         Q3WwEbB1tZrj6RlW+hV5MrOK4tSO9IEydQF34bmg1ZSZQZNeRAl2iM9Tz9aIGfGnJlAv
         hIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678823561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=84n+oQ302Lrrw4Xj5iionDKBc2AXr3E7Vl/qNdfFHag=;
        b=VrOly0Kn6WezorT+E28ZPXzXtAgw74D65zxeupCJzmsLCpkRBZfvOSq8ypSZz+XaO6
         1dB4jKVdhILH1RagLfPXWJ+jOGACNjYdTDmjN17yY0X2gzsgoym/9EDRNZOiNQ9nKxX5
         arLyBZbygeCccXfK0LkA5VbChJ8lMfYNnOYDNOSigEq0G/ufEXmfmkbyrPNVe6w1xlrN
         en5umtAc2sssJZxYu9rSHaxNKKQ1JY/yob+ygiyVXZ1lu9FodKlV/tSwMJrZ38RTMok7
         6vjKLuZdiF64ioLxISUmX4jwDSSsZuW45nhnVWdMmALui3A3K5NbjhxLEPgivPgJvf93
         BQdw==
X-Gm-Message-State: AO0yUKW5Tos7k+8Mns6z360tprC13lOxQYZK0BdETHJf1oRoW2MIHoAD
	HP6euZTY6XPPyhVdAmLzPTU=
X-Google-Smtp-Source: AK7set9vnDgs0zNzFk64fSk03ZwJbehhJo01RTpV7gmR2nsQclFdjqoiygwh42ihvzlFoYsvReQjWA==
X-Received: by 2002:a17:907:20f1:b0:924:943d:7181 with SMTP id rh17-20020a17090720f100b00924943d7181mr3347932ejb.51.1678823561589;
        Tue, 14 Mar 2023 12:52:41 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-1-233.dynamic.telemach.net. [82.149.1.233])
        by smtp.gmail.com with ESMTPSA id ot10-20020a170906ccca00b008e51a1fd7bfsm1538555ejb.172.2023.03.14.12.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 12:52:41 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Joe Tessler <jrt@google.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Niklas =?ISO-8859-1?Q?S=F6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Wenyou Yang <wenyou.yang@microchip.com>,
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
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
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 "Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject:  Re: [PATCH 18/28] media: platform: sun8i-a83t-mipi-csi2: drop of_match_ptr
 for ID table
Date: Tue, 14 Mar 2023 20:52:38 +0100
Message-ID: <4812650.31r3eYUQgx@jernej-laptop>
In-Reply-To: <20230312131318.351173-18-krzysztof.kozlowski@linaro.org>
References:  <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-18-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_125243_885884_EA74E5D4 
X-CRM114-Status: GOOD (  16.81  )
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

RG5lIG5lZGVsamEsIDEyLiBtYXJlYyAyMDIzIG9iIDE0OjEzOjA4IENFVCBqZSBLcnp5c3p0b2Yg
S296bG93c2tpIG5hcGlzYWwoYSk6Cj4gVGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhl
IERUIHRhYmxlIHNvIHRoZSB0YWJsZSBzaG91bGQgYmUgYWx3YXlzCj4gdXNlZCBhbmQgdGhlIG9m
X21hdGNoX3B0ciBkb2VzIG5vdCBoYXZlIGFueSBzZW5zZSAodGhpcyBhbHNvIGFsbG93cyBBQ1BJ
Cj4gbWF0Y2hpbmcgdmlhIFBSUDAwMDEsIGV2ZW4gdGhvdWdoIGl0IG1pZ2h0IG5vdCBiZSByZWxl
dmFudCBoZXJlKS4gIFRoaXMKPiBhbHNvIGZpeGVzICFDT05GSUdfT0YgZXJyb3I6Cj4gCj4gIAo+
IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktYTgzdC1taXBpLWNzaTIvc3VuOGlf
YTgzdF9taXBpX2NzaTIuYzo4MQo+IDg6MzQ6IGVycm9yOiDigJhzdW44aV9hODN0X21pcGlfY3Np
Ml9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZAo+IFstV2Vycm9yPXVudXNlZC1jb25z
dC12YXJpYWJsZT1dCj4gCj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+IC0tLQo+ICAuLi4vcGxhdGZvcm0vc3VueGkv
c3VuOGktYTgzdC1taXBpLWNzaTIvc3VuOGlfYTgzdF9taXBpX2NzaTIuYyAgfCAyICstCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAoKQWNrZWQtYnk6
IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+CgpCZXN0IHJlZ2FyZHMs
Ckplcm5lagoKPiBkaWZmIC0tZ2l0Cj4gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1
bjhpLWE4M3QtbWlwaS1jc2kyL3N1bjhpX2E4M3RfbWlwaV9jc2kyLmMKPiBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vc3VueGkvc3VuOGktYTgzdC1taXBpLWNzaTIvc3VuOGlfYTgzdF9taXBpX2Nz
aTIuYwo+IGluZGV4IGNkMmU5MmFlMjI5My4uMWYwY2M3YjFiYTQ3IDEwMDY0NAo+IC0tLQo+IGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1hODN0LW1pcGktY3NpMi9zdW44aV9h
ODN0X21pcGlfY3NpMi5jCj4gKysrCj4gYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1
bjhpLWE4M3QtbWlwaS1jc2kyL3N1bjhpX2E4M3RfbWlwaV9jc2kyLmMKPiBAQCAtODI2LDcgKzgy
Niw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyCj4gc3VuOGlfYTgzdF9taXBpX2Nz
aTJfcGxhdGZvcm1fZHJpdmVyID0geyAucmVtb3ZlCT0KPiBzdW44aV9hODN0X21pcGlfY3NpMl9y
ZW1vdmUsCj4gIAkuZHJpdmVyCT0gewo+ICAJCS5uYW1lCQk9IFNVTjhJX0E4M1RfTUlQSV9DU0ky
X05BTUUsCj4gLQkJLm9mX21hdGNoX3RhYmxlCT0gCm9mX21hdGNoX3B0cihzdW44aV9hODN0X21p
cGlfY3NpMl9vZl9tYXRjaCksCj4gKwkJLm9mX21hdGNoX3RhYmxlCT0gc3VuOGlfYTgzdF9taXBp
X2NzaTJfb2ZfbWF0Y2gsCj4gIAkJLnBtCQk9ICZzdW44aV9hODN0X21pcGlfY3NpMl9wbV9vcHMs
Cj4gIAl9LAo+ICB9OwoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
