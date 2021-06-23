Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F248BC4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 09:00:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4B59611CE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 09:00:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B4B59611CE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=monstr.eu
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJYoMmJcTKGrBLhKGrIvrwwvOukvBNs6R3c9JMhXx60=; b=EMUhD8/HLAgB+6
	1u7IV4HD7vRkqBeimGGIaqkj/HhEPltWn1rI4w5351EM5PNR3hv2+SzOLzCn+F1a/RBSHUuZaCEEq
	0xpI0vkMopZKHa27id0gFjrkPRrtmrefU7tFX6dweJsed1Wck6o31uUIHlhK6tlvnUllnHtINrWIv
	UO2bCtNeGRrOlwNv4oxK8XWG2oyNGWqDWTaKrhSiK4TJHwdQWFv6d/UfyKQBRdHaFP8vCfraMWTmg
	/qssGtBsD1FJDe3x7QlJmN6OHS1WgU3NfjzNS7rfOEGUCspCHqxIjWeQNyQWrWJ5Z/OfbOJmF8DsT
	MMo4xCVyR32RrziL//kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvyjv-00A1PT-9z; Wed, 23 Jun 2021 09:00:07 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvyjr-00A1ND-FA
 for linux-rockchip@lists.infradead.org; Wed, 23 Jun 2021 09:00:05 +0000
Received: by mail-ed1-x52f.google.com with SMTP id m14so2376109edp.9
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Jun 2021 02:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FP9EsChXCfC6ERvq/VEROgpzH3E542Er7LriVewZlDk=;
 b=ing6KloUgctO1neeEVoQc8Hzz8xmwpQNpZ//JACly27y5KT9cMPTveD95i1RTp1gp/
 I+HE2N+Jtnn9K4yjZZ7UBZX5hyp+Q71+XeSlpeFuQeKLsD51QBObLNuejbmv3FBo4bnc
 oNb71+HVe+3tVWsSylLHtllFwBaS0mdbzfkRkFgYLvCKx+pTIgY6GqkejrI9SKKFbSXK
 8wrpFoHcR4pAnOuhc2/T1ODyBTbpeuxQboqsQZtO+qWZ+e2FA2GugxlWtvNEUgJ0iM8Z
 015NX9+GIF/zt5SpdgVwWBE86MKRTFHCtsPDoDUpoPGkEKCqWLB5NC/dGsGgcvifzjxA
 5LhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FP9EsChXCfC6ERvq/VEROgpzH3E542Er7LriVewZlDk=;
 b=rJnO/Hy5kHguijEIEGwgYSNCdwNqY/zaem4aLCBgH+lSAJEuFYiLK78sC0Wj2LuJMq
 f+J1m1qMcn1IqN6DSdYQ1Wk2bOLzwQBqiy+kO4vhGtTAuBjaIluw/UtGXaOUQYkdeagS
 baEZgODfqX27+l4ueiyat8CTTJt8Y6iC5t6vCCqQNJp4gUgcoZuYVClcp+O894yCptbj
 ntPyV4CGFAk6fvN5uRQqkiE+cSGrr2+mSre7GVB/BbWzpPjwK6SrJt7yDb1J4AtH3rvh
 FP8Ul8ppYQATl0kuZIvL3vvzs1nixBH8sy1ZEBB08Q2LcL82cMC0DbUaX20pDGxv6Z75
 wuSg==
X-Gm-Message-State: AOAM531Vk9wwBaiWFb5Mzk5ez5jZPoNOk5+HlFEJqBtBgYt+8XBjHhXC
 rzdrzgFn4QavkSpI+QP7Y9qkW5W+QLJiutPESVUg0w==
X-Google-Smtp-Source: ABdhPJxKvaPk7aofu67kpiTg2LdEBMmh3ykWTcvt5e3BKRfcI4oOVJvqm0yfYA7i2RbesRb6/jBFkhu9bV1OmDXetzs=
X-Received: by 2002:a05:6402:42cc:: with SMTP id
 i12mr6914846edc.88.1624438801003; 
 Wed, 23 Jun 2021 02:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200902150643.14839-1-krzk@kernel.org>
 <20200902150643.14839-4-krzk@kernel.org>
In-Reply-To: <20200902150643.14839-4-krzk@kernel.org>
From: Michal Simek <monstr@monstr.eu>
Date: Wed, 23 Jun 2021 10:59:50 +0200
Message-ID: <CAHTX3dLT5FoOZ0Hi9UArYCoxy4b69r6cHLiLPo25DGX2_1B-xA@mail.gmail.com>
Subject: Re: [PATCH 4/9] i2c: cadence: Simplify with dev_err_probe()
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 bcm-kernel-feedback-list@broadcom.com, Sekhar Nori <nsekhar@ti.com>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Oleksij Rempel <linux@rempel-privat.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 NXP Linux Team <linux-imx@nxp.com>, Heiko Stuebner <heiko@sntech.de>, 
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@st.com>, Peter Rosin <peda@axentia.se>,
 Wolfram Sang <wsa@kernel.org>, 
 linux-i2c@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_020003_575206_747319B1 
X-CRM114-Status: GOOD (  18.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

c3QgMi4gOS4gMjAyMCB2IDE3OjEwIG9kZXPDrWxhdGVsIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gbmFwc2FsOgo+Cj4gQ29tbW9uIHBhdHRlcm4gb2YgaGFuZGxpbmcgZGVm
ZXJyZWQgcHJvYmUgY2FuIGJlIHNpbXBsaWZpZWQgd2l0aAo+IGRldl9lcnJfcHJvYmUoKS4gIExl
c3MgY29kZSBhbmQgdGhlIGVycm9yIHZhbHVlIGdldHMgcHJpbnRlZC4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVy
cy9pMmMvYnVzc2VzL2kyYy1jYWRlbmNlLmMgfCA5ICsrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvaTJjL2J1c3Nlcy9pMmMtY2FkZW5jZS5jIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1jYWRl
bmNlLmMKPiBpbmRleCBlNGI3ZjJhOTUxYWQuLmVlZmRlNTU0YzUwYyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2kyYy9idXNzZXMvaTJjLWNhZGVuY2UuYwo+ICsrKyBiL2RyaXZlcnMvaTJjL2J1c3Nl
cy9pMmMtY2FkZW5jZS5jCj4gQEAgLTEyMTQsMTEgKzEyMTQsMTAgQEAgc3RhdGljIGludCBjZG5z
X2kyY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgICAgICAg
ICAgIkNhZGVuY2UgSTJDIGF0ICUwOGx4IiwgKHVuc2lnbmVkIGxvbmcpcl9tZW0tPnN0YXJ0KTsK
Pgo+ICAgICAgICAgaWQtPmNsayA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCBOVUxMKTsKPiAt
ICAgICAgIGlmIChJU19FUlIoaWQtPmNsaykpIHsKPiAtICAgICAgICAgICAgICAgaWYgKFBUUl9F
UlIoaWQtPmNsaykgIT0gLUVQUk9CRV9ERUZFUikKPiAtICAgICAgICAgICAgICAgICAgICAgICBk
ZXZfZXJyKCZwZGV2LT5kZXYsICJpbnB1dCBjbG9jayBub3QgZm91bmQuXG4iKTsKPiAtICAgICAg
ICAgICAgICAgcmV0dXJuIFBUUl9FUlIoaWQtPmNsayk7Cj4gLSAgICAgICB9Cj4gKyAgICAgICBp
ZiAoSVNfRVJSKGlkLT5jbGspKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gZGV2X2Vycl9wcm9i
ZSgmcGRldi0+ZGV2LCBQVFJfRVJSKGlkLT5jbGspLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAiaW5wdXQgY2xvY2sgbm90IGZvdW5kLlxuIik7Cj4gKwo+ICAgICAgICAg
cmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGlkLT5jbGspOwo+ICAgICAgICAgaWYgKHJldCkKPiAg
ICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiVW5hYmxlIHRvIGVuYWJsZSBjbG9j
ay5cbiIpOwo+IC0tCj4gMi4xNy4xCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCkFsc28gdGhpcyBvbmUgaXMg
cGVuZGluZyBidXQgc3RpbGwgcG9zc2libGUgdG8gYXBwbHkgd2l0aG91dCBhbnkgY29uZmxpY3Qu
CgpBY2tlZC1ieTogTWljaGFsIFNpbWVrIDxtaWNoYWwuc2ltZWtAeGlsaW54LmNvbT4KClRoYW5r
cywKTWljaGFsCgoKLS0gCk1pY2hhbCBTaW1laywgSW5nLiAoTS5FbmcpLCBPcGVuUEdQIC0+IEtl
eUlEOiBGRTNEMUY5MQp3OiB3d3cubW9uc3RyLmV1IHA6ICs0Mi0wLTcyMTg0Mjg1NApNYWludGFp
bmVyIG9mIExpbnV4IGtlcm5lbCAtIFhpbGlueCBNaWNyb2JsYXplCk1haW50YWluZXIgb2YgTGlu
dXgga2VybmVsIC0gWGlsaW54IFp5bnEgQVJNIGFuZCBaeW5xTVAgQVJNNjQgU29DcwpVLUJvb3Qg
Y3VzdG9kaWFuIC0gWGlsaW54IE1pY3JvYmxhemUvWnlucS9aeW5xTVAvVmVyc2FsIFNvQ3MKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
