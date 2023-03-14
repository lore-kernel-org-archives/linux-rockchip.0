Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D41CC74A44
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 19:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RfgqcIMlWTOGn7LWvb1kAT0lrLjDd67/QGoIiaxOtEM=; b=RPvJI1Z6a879do
	lPrnZtNfZBLD6H+IkdR3ec+Ln5GLp6dwTkqMNyIjxvklSZHUkyyV6CS44RFNqsUmnH4KU48edQ98t
	mLtIKwN9yL7Fym/ejbukQConGT+L2XR0hKtfO55v+B2Id14jUvda9z3KMgBa3H9Exk1hYTp38ClB1
	sCX+Ob0ZQGZGe6KqO/Jx4WNT2/rEyZxc42e+Ta9KUVbkrlYAQQv1GN4QgxKzH706c5F/aBbCGQsry
	lLpdnLYHMyo/+uiM+/3w35TPINNrhbWax7C16u2sozz9me12ieOz1yWgE0dRsDZvBAG2p2fXFOQ6g
	YdaD9zQJpDVUJ8z2ci+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAhC-00BNnP-1g;
	Tue, 14 Mar 2023 19:52:30 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAh5-00BNjw-2b;
	Tue, 14 Mar 2023 19:52:25 +0000
Received: by mail-ed1-x52d.google.com with SMTP id h8so22941684ede.8;
        Tue, 14 Mar 2023 12:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678823542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xMc2AnlV82kWeOQMw4Z57Uy8gyinuEGs+efX/3BzdrM=;
        b=GaBPzv3wgeHg5mdOzdiwOVazLXCDhdCOrdePbsgJDi21f+1qnJM6ELcpmu7tU1rMST
         cjE8SlnKUyVc4FxAIbKf3kico9yQhyCmf0umFoCZlG8v7KZ0XkFh8PPO3cbZAyTm2nCH
         N/kIfjmK/Egjl5SbHw3k/SOTTT6+sIiCwY0kZpqrJ8gMnQq/7AIDTMp8yEnpdz4rfQuf
         D54Rs5kZCp++koUnziuR0GUPgtpl8GPiw5dywdDwOYVUCaLameqj32/emey+m+Tq2FGK
         OIou9a5lMr8BdC8svsyN5SZf9s8l5a3EQLYTP6FU0J3IWkhor6AUTxk78E26aUy22uE6
         zKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678823542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xMc2AnlV82kWeOQMw4Z57Uy8gyinuEGs+efX/3BzdrM=;
        b=KsbWNNcA/CJj0BKmLoSRxWPf+UUIB4Y/sKkh6a9fnuyX9DdxC5pptGGuIV64tPKheg
         9yK4F47vMEoPu3uniSycl7eLMjjUAVKFiSw/6j8EogsUdPTaeWr1/DKq/Z9GIYyoxVVj
         sMj5NFd61tl7Vaztv71JESJSWSlYMeq+P5QhbdSenLhLKUa269thvoAor52RvxnCtBhO
         uxtOq/5k70kMwEnZEiFm34es4zo7sJoA8XGc0z+bCeY+aXLOhZnyvK3NKmJEDp656C5Y
         I1wT0SHbx/QzEMg9sGhlZD17nScRJEyRQXClIT/UWdf5uJwDAO/I+lrCT7cDo1FD17+M
         UbTQ==
X-Gm-Message-State: AO0yUKVHym4onCkmI7ZMAybdHguk3cPsjNi3JBo5uiEqLDso7ZnErMFR
	SHgvo3eMiguwmc8E7ulU6rA=
X-Google-Smtp-Source: AK7set9lGQSvj/0qLoxjjRbWIJWyy4clOJmKgKtnIzH8T77Xxvcq28Mg1JfG2Pp6mT42x0CH2tiMRw==
X-Received: by 2002:a50:fe92:0:b0:4af:62af:460a with SMTP id d18-20020a50fe92000000b004af62af460amr322583edt.8.1678823542126;
        Tue, 14 Mar 2023 12:52:22 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-1-233.dynamic.telemach.net. [82.149.1.233])
        by smtp.gmail.com with ESMTPSA id v10-20020a50a44a000000b004fd204d180dsm1484455edb.64.2023.03.14.12.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 12:52:21 -0700 (PDT)
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
Subject:  Re: [PATCH 17/28] media: platform: sun6i-mipi-csi2: drop of_match_ptr for ID
 table
Date: Tue, 14 Mar 2023 20:52:19 +0100
Message-ID: <5654872.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20230312131318.351173-17-krzysztof.kozlowski@linaro.org>
References:  <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-17-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_125223_850711_AB11204B 
X-CRM114-Status: GOOD (  16.08  )
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

RG5lIG5lZGVsamEsIDEyLiBtYXJlYyAyMDIzIG9iIDE0OjEzOjA3IENFVCBqZSBLcnp5c3p0b2Yg
S296bG93c2tpIG5hcGlzYWwoYSk6Cj4gVGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhl
IERUIHRhYmxlIHNvIHRoZSB0YWJsZSBzaG91bGQgYmUgYWx3YXlzCj4gdXNlZCBhbmQgdGhlIG9m
X21hdGNoX3B0ciBkb2VzIG5vdCBoYXZlIGFueSBzZW5zZSAodGhpcyBhbHNvIGFsbG93cyBBQ1BJ
Cj4gbWF0Y2hpbmcgdmlhIFBSUDAwMDEsIGV2ZW4gdGhvdWdoIGl0IG1pZ2h0IG5vdCBiZSByZWxl
dmFudCBoZXJlKS4gIFRoaXMKPiBhbHNvIGZpeGVzICFDT05GSUdfT0YgZXJyb3I6Cj4gCj4gICBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLW1pcGktY3NpMi9zdW42aV9taXBpX2Nz
aTIuYzo3NTE6MzQ6Cj4gZXJyb3I6IOKAmHN1bjZpX21pcGlfY3NpMl9vZl9tYXRjaOKAmSBkZWZp
bmVkIGJ1dCBub3QgdXNlZAo+IFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gCj4g
U2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBs
aW5hcm8ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLW1p
cGktY3NpMi9zdW42aV9taXBpX2NzaTIuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpBY2tlZC1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5l
ai5za3JhYmVjQGdtYWlsLmNvbT4KCkJlc3QgcmVnYXJkcywKSmVybmVqCgo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLW1pcGktY3NpMi9zdW42aV9t
aXBpX2NzaTIuYwo+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1taXBpLWNz
aTIvc3VuNmlfbWlwaV9jc2kyLmMgaW5kZXgKPiBhMjIwY2U4NDliNDEuLjA4NTFiNmI0ZTFmZiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLW1pcGktY3Np
Mi9zdW42aV9taXBpX2NzaTIuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkv
c3VuNmktbWlwaS1jc2kyL3N1bjZpX21pcGlfY3NpMi5jCj4gQEAgLTc1OSw3ICs3NTksNyBAQCBz
dGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlcgo+IHN1bjZpX21pcGlfY3NpMl9wbGF0Zm9ybV9k
cml2ZXIgPSB7IC5yZW1vdmUJPSBzdW42aV9taXBpX2NzaTJfcmVtb3ZlLAo+ICAJLmRyaXZlcgk9
IHsKPiAgCQkubmFtZQkJPSBTVU42SV9NSVBJX0NTSTJfTkFNRSwKPiAtCQkub2ZfbWF0Y2hfdGFi
bGUJPSAKb2ZfbWF0Y2hfcHRyKHN1bjZpX21pcGlfY3NpMl9vZl9tYXRjaCksCj4gKwkJLm9mX21h
dGNoX3RhYmxlCT0gc3VuNmlfbWlwaV9jc2kyX29mX21hdGNoLAo+ICAJCS5wbQkJPSAmc3VuNmlf
bWlwaV9jc2kyX3BtX29wcywKPiAgCX0sCj4gIH07CgoKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
