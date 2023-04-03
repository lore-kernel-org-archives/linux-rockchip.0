Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70238C761A6
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 18:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2YyaCDF7rpLl8VIhreDL4T/XAfd78svPT9Bv8IZG68=; b=3TRlq+u/VCI3cm
	zJltJ32SpJ5PJJoieGhek5rAYHMP9KMOByhuditXANirqD4PLHw9sQdGRD2CAEdT0R4+b0qZy3Dgq
	JEqTc2Kgozv1EXC3zTnayg7Y7NLtG6Bnk75iSE2n33CpuOL+jGrQWl3sx8K1hV1I2QgAUcOZ5zOuf
	8WmBeo2XhCpSx9i1WiF3es1Zmd1I1ZTuxPfuznEgd4mAapnaUXMQbu1ekacsN5aTZvfjKdJHuP2Qe
	slPCa566yLBLprI4kARUxi0vw9B0qpos/DU9nkQXC5u4QyNIRfD3K8yWp8uOjuzYcAlqdjKOAKedW
	p/A7jaC69nSaGGkE9k0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjPCX-00GI1y-1E;
	Mon, 03 Apr 2023 18:46:45 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjPCV-00GI1E-2k
	for linux-rockchip@bombadil.infradead.org;
	Mon, 03 Apr 2023 18:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=MeWz95RBmI6XpSLkAR+cuB3iAEeGC3iRvwSDE5+WIbY=; b=MZ/xmKdrEjbk1sc5NjQ5JVDGlr
	D1JR7MNGNC9RzNYU0E4F/RRbHaQjH+MSlTVbLfI7zaOEtI559mLN36wJsYwBQIUPu96eq2n1TT7dz
	QytAOZpL0zRaBmVjPW3qJtZx3bqj183j09jK0XnLDVmOG2zx9+v7gK4pxysqsd1gdj1mLVNzxc5b2
	/zT6YMGGpeI5gSVJcCGc2L6abolhTOsP7YJLq3V7aJlqup1B/u7uzVIbe762ga1Yb4Bj1envjhUiW
	oA9hsJVtm3F4gDBUv+LavLotg0Khf3iAWWAUzD9tQf5/3dEvLmWJS0o2tfLzupmnhqRmosvkqqzLt
	GhSObkIg==;
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjN4I-008wAF-2J
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Apr 2023 16:30:09 +0000
Received: by mail-ed1-x534.google.com with SMTP id eg48so119570648edb.13
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Apr 2023 09:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680539404;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MeWz95RBmI6XpSLkAR+cuB3iAEeGC3iRvwSDE5+WIbY=;
        b=vHhtKJL5afd3fDZb5Xvy5G6y/LTvqitLGSe7Ap0XWRSd3UnHwlhXG/jlL1pEDbro5N
         dDLdwGPIJVRIvCgJf+ooSRVUmcxTfsxV8spRGbOdGMiu0Yjabnu9Hv/mjHGNPXQ8lvjN
         cHe5ugODQYhlOZWDVDxVyYBUABgPfEhUNhPdKeF3/9v5wJk7oZDOr605S7tVuPNd8wTF
         bx6a/0ODqm177Gf9vkkLZzZXwHE9nR4G62csYL1zJ90eb79s5EDQerAqVGy4fDYuhuFx
         gXu3jujaXU5RPMtaZlFQ+OKGBp5RSLJJ0rYp6O8X402TZk6l3E92wW+w0z23pJ8wZvpJ
         eSIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680539404;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MeWz95RBmI6XpSLkAR+cuB3iAEeGC3iRvwSDE5+WIbY=;
        b=KwQ0N2qITXlLS8Fc0n5My9u2tCpd+5hafqU3L1Qam2xCzyIYuUldk6cys/0IQRJM8E
         QCrRwyvyHWVpPtRAV3lmlXfzGKx3d4+ZUCpY9TMscx9j7pxYENrpTn5EcdDsIU3fxI3P
         QzqGQPyEadi5t2CpmoPRiJQUQmInVeMWFrednjHhEt1m0NdQr1f0PzaEHUXPe/TcXLe8
         mH3Z3eyWFniZ5e0EXL6G8BQ+bO9A+amr2k8mbKjXWtFZhuz3lpqNglwYvl5Xxdp5DoSg
         i0O+KsQPGlPx/YI4fhBI/fvJBGdXEgXnPGXM+mQvlIjND3KtiVFzskY9bKTQrcJYBcdW
         x7KQ==
X-Gm-Message-State: AAQBX9dZeMiIcB7CsUQHVn3Gvcj4J5f68kYMcv84hUj86/CViT3zgSwl
	zQz8c5iZXC2alYdOqrXdjOYC2A==
X-Google-Smtp-Source: AKy350YS4e1dI8mZhrbLOs96X7qTnH/JqlEPq688zdETFGPGyW8pAjyNj4FhzEJY/Pp8fKqk3yTMRQ==
X-Received: by 2002:a17:906:3da:b0:931:95a1:a05a with SMTP id c26-20020a17090603da00b0093195a1a05amr37358230eja.62.1680539403777;
        Mon, 03 Apr 2023 09:30:03 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.91])
        by smtp.gmail.com with ESMTPSA id ld4-20020a1709079c0400b009486efb9192sm2073196ejc.11.2023.04.03.09.29.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 09:30:03 -0700 (PDT)
Message-ID: <f881883e-23e1-66e0-78d2-da86533b038f@linaro.org>
Date: Mon, 3 Apr 2023 17:29:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 00/49] mtd: nand: Convert to platform remove callback
 returning void
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Yang Yingliang <yangyingliang@huawei.com>,
 ye xingchen <ye.xingchen@zte.com.cn>,
 Valentin Korenblit <vkorenblit@sequans.com>,
 Wang Weiyang <wangweiyang2@huawei.com>, =?UTF-8?Q?Pali_Roh=c3=a1r?=
 <pali@kernel.org>, =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
 Han Xu <han.xu@nxp.com>, Harvey Hunt <harveyhuntnexus@gmail.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Vladimir Zapolskiy <vz@mleia.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Liang Yang <liang.yang@amlogic.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Phil Edworthy <phil.edworthy@renesas.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chuanhong Guo <gch981213@gmail.com>, Roger Quadros <rogerq@kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Stephen Boyd <sboyd@kernel.org>, Miaoqian Lin <linmq006@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Christophe Kerello <christophe.kerello@foss.st.com>,
 Jack Wang <jinpu.wang@ionos.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Stefan Agner <stefan@agner.ch>,
 Lucas Stach <dev@lynxeye.de>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>,
 linux-amlogic@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-mediatek@lists.infradead.org, linux-oxnas@groups.io,
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org
References: <20230401161938.2503204-1-u.kleine-koenig@pengutronix.de>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230401161938.2503204-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_173006_952181_40ED34AA 
X-CRM114-Status: GOOD (  15.98  )
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

CgpPbiA0LzEvMjMgMTc6MTgsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IEhlbGxvLAo+IAo+
IHRoaXMgc2VyaWVzIGFkYXB0cyB0aGUgcGxhdGZvcm0gZHJpdmVycyBiZWxvdyBkcml2ZXJzL210
ZC9uYW5kIHRvIHVzZSB0aGUKPiAucmVtb3ZlX25ldygpIGNhbGxiYWNrLiBDb21wYXJlZCB0byB0
aGUgdHJhZGl0aW9uYWwgLnJlbW92ZSgpIGNhbGxiYWNrCj4gLnJlbW92ZV9uZXcoKSByZXR1cm5z
IG5vIHZhbHVlLiBUaGlzIGlzIGEgZ29vZCB0aGluZyBiZWNhdXNlIHRoZSBkcml2ZXIgY29yZQo+
IGRvZXNuJ3QgKGFuZCBjYW5ub3QpIGNvcGUgZm9yIGVycm9ycyBkdXJpbmcgcmVtb3ZlLiBUaGUg
b25seSBlZmZlY3Qgb2YgYQo+IG5vbi16ZXJvIHJldHVybiB2YWx1ZSBpbiAucmVtb3ZlKCkgaXMg
dGhhdCB0aGUgZHJpdmVyIGNvcmUgZW1pdHMgYSB3YXJuaW5nLiBUaGUKPiBkZXZpY2UgaXMgcmVt
b3ZlZCBhbnlob3cgYW5kIGFuIGVhcmx5IHJldHVybiBmcm9tIC5yZW1vdmUoKSB1c3VhbGx5IHlp
ZWxkcyBhCj4gcmVzb3VyY2UgbGVhay4KPiAKPiBCeSBjaGFuZ2luZyB0aGUgcmVtb3ZlIGNhbGxi
YWNrIHRvIHJldHVybiB2b2lkIGRyaXZlciBhdXRob3JzIGNhbm5vdAo+IHJlYXNvbmFibHkgYXNz
dW1lIGFueSBtb3JlIHRoYXQgdGhlcmUgaXMgc29tZSBraW5kIG9mIGNsZWFudXAgbGF0ZXIuCj4g
Cj4gQXMgYWxsIGRyaXZlcnMgYWxyZWFkeSByZXR1cm4gMCBpbiB0aGVpciAucmVtb3ZlIGNhbGxi
YWNrLCB0aGV5IGNhbiBiZQo+IGNvbnZlcnRlZCB0cml2aWFsbHkuCj4gCgpJJ2QgbWFrZSBhIHNp
bmdsZSBwYXRjaCBwZXIgc3Vic3lzdGVtIGZvciB0cml2aWFsIGNoYW5nZXMsIGJ1dCBJIGRvbid0
Cm1pbmQgaGF2aW5nIHRoZW0gc3BsaXQgcGVyIGRyaXZlciBlaXRoZXI6CgpBY2tlZC1ieTogVHVk
b3IgQW1iYXJ1cyA8dHVkb3IuYW1iYXJ1c0BsaW5hcm8ub3JnPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
