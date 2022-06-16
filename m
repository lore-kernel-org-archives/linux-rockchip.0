Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89EF7C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 00:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdLG47gcNU9BaNWxIsvaL9IcexSazz2dPaZl61w8VmQ=; b=RfNZlx1n1oxw9B
	3WV6cD8kXdy6txAfWiusbCJsczxkEo07/ICLjq6MuRSKwJvJVQH+neYB3rqH7rxPvawlq53fmDOWo
	CCidihHjQEW0LqmByM9272U1s39DiNiNNs5zrGwUO5OKf/eTw5kSYk1U29bUH16p8ZyFi10TO82LF
	KbeqkTNtRoOKev9h/xlHkE98nIzZspqqPS3YLLbLPAD7aO3B8qnFCpwBgLsGcDe5kMforWI/yBqvV
	rdDJ1ceN9EFjvDrKQky/HrwoquMHRY7XUpr2dCXSaHyz+TKTZ4z65/e4g/bImkeJDzSDvERSV6wz9
	cyf/P7bBZrLuocCrk70Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dCM-00H5iC-5d; Thu, 16 Jun 2022 00:17:22 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dBg-00H5PE-BK
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 00:16:42 +0000
Received: by mail-pl1-x62d.google.com with SMTP id t2so11758663pld.4
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jun 2022 17:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IziWPD/gGlB/cFkyGJLPEuAu7TGyXwh1iU3iR88AWkQ=;
        b=aQgsNbJOMMY7cBdjRJaZEy7NKsac4QSziC48MZeDyKEXSbnrJP1mvonAXyX+CW2StQ
         zoV0RwUXJeof2a+ReES5vfn74WBm292ILZO4Ux5Zf5shV0Xk6ZeSW+OF8Nmyk1qSB1uk
         5dFBMv9oq0I8a7FruG96hqIahmMFi2Kn/IApIADq+SiO1X9K/GSzEBRI2ZJEf2yBqe+F
         6xj3GPS0G3Hpamjh44si1pJfWc6AKmT1DQ6asI7iESybhrlpXXQV8UOi0SquWvfErazF
         U+U/48nVUcNV4FcMBAw6ER+x3iKl3rKRHeRIA2CwJ+wPu0QMHjWvBCL/ZP6VAkuBm25Q
         I+bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IziWPD/gGlB/cFkyGJLPEuAu7TGyXwh1iU3iR88AWkQ=;
        b=IZOia/jskRSaKKsQ2Fcd4CxI4vkny9MI6wuWotsOQvfIITPMrq1xDu7afcUwBn9TND
         JAkIyss3YObjDsdtle1sVcMcpmCXVre66e6wG14M/PPyh0wyIYUy67ATbG8K1sPA1HVZ
         Yur7G4OW2RfXKqYo8VcmVf0JEu8ile+VXNPGLIxQ+T0OHCsmM0X0mLRnDri9BVoPUILo
         SpMUEStzi0uE8cNtkZifcL6/sly1nzbwIge4QxlLlETLVXptHgHigVsiWkQCD+9bq1jN
         CaIbyen/sWiUfBdnFHLUsN1EsBlSawfnep3y6kKm8qEGYCswwxOk9FpQsrp1fxx8no9Y
         kcDw==
X-Gm-Message-State: AJIora/L1KgIYIkwpBqjv6S95SsFhjqmnsNKF4TSZ4S/IiKO5bij0BJz
	FlL82Wba9e0x8yjUTHu3Z3Nq+w==
X-Google-Smtp-Source: AGRyM1tpzuPPQlHJU+oFfHHzmIAZClCY2qxZ9MGvZ5GZeJySVob7f46Go/aYGKi78g11uNeSYpS55A==
X-Received: by 2002:a17:90a:4e82:b0:1ea:3f61:51b with SMTP id o2-20020a17090a4e8200b001ea3f61051bmr2130743pjh.16.1655338599492;
        Wed, 15 Jun 2022 17:16:39 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id w21-20020a637b15000000b003fc32f8e030sm174407pgc.79.2022.06.15.17.16.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 17:16:38 -0700 (PDT)
Message-ID: <908e2f79-8753-877c-1bdd-f8aa16d1e32a@linaro.org>
Date: Wed, 15 Jun 2022 17:16:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 6/6] arm64: dts: ti: Add missing space around properties
Content-Language: en-US
To: =?UTF-8?Q?Niklas_S=c3=b6derlund?=
 <niklas.soderlund+renesas@ragnatech.se>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org
Cc: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
 <20220612223201.2740248-7-niklas.soderlund+renesas@ragnatech.se>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220612223201.2740248-7-niklas.soderlund+renesas@ragnatech.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_171640_423876_0FB3B117 
X-CRM114-Status: UNSURE (   8.84  )
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

T24gMTIvMDYvMjAyMiAxNTozMiwgTmlrbGFzIFPDtmRlcmx1bmQgd3JvdGU6Cj4gQWRkIHRoZSBt
aXNzaW5nIHNwYWNlIGFyb3VuZCBwcm9wZXJ0aWVzIGJlZm9yZSB0aGUgdHlwbyBzcHJlYWRzIHRv
IG90aGVyCj4gZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmlrbGFzIFPDtmRlcmx1bmQgPG5p
a2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2guc2U+Cj4gLS0tCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvdGkvazMtYW02Mi1tYWluLmR0c2kgICAgICAgICAgIHwgNCArKy0tCj4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NC1tYWluLmR0c2kgICAgICAgICAgIHwgNCArKy0tCj4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1pb3QyMDUwLWNvbW1vbi5kdHNpIHwgMiAr
LQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtd2FrZXVwLmR0c2kgICAgICAgICB8
IDQgKystLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjU0LWJhc2UtYm9hcmQuZHRz
ICAgICB8IDIgKy0KPiAgYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIwMC1tY3Utd2FrZXVw
LmR0c2kgICAgfCA0ICsrLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIxZS1tY3Ut
d2FrZXVwLmR0c2kgICAgfCA0ICsrLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIx
czItbWN1LXdha2V1cC5kdHNpICAgfCA0ICsrLS0KPiAgOCBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNl
cnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDIyMDUyNjIwNDEzOS44MzE4OTUtMS1rcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmcvCgoK
QmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
