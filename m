Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB0A8C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 00:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+p/rjsgvKP5vFO3WSnnza7C6ZjxJbJuSQOBSNGeNtc=; b=GUHm72KmXu2709
	N44MMIKktjtLsELXVMGV2yv9jhLTeZvVk5VlknzoS2ATd90qeyGzlAzphwDFqmTu4+bZNJ40PYTx8
	24F5+QBO78DzuPXKjDQEU/Dm2tGFr0EbqFLyThVhk10qFp3kCqINHLyKGfY/Hu9qkYxbLZdlqHHlp
	lvg8LvarVa74ZDYagZuay71kYUYMP6gYWyFAa8/dlo4EKW5FhUwKCP7kZdTdxpyuOxQVg4cBn0F9t
	ZE5umpKkVgncOCfN23M9HzuXF+J9So/DOVzqy5IWYFozxoYBgOcjYktRWc7KjdQ9jRQQWMkctph3j
	tQbP/okBugfwQyFUlowQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dAI-00H4xv-NE; Thu, 16 Jun 2022 00:15:14 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dAG-00H4wU-F5
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 00:15:14 +0000
Received: by mail-pj1-x102f.google.com with SMTP id v11-20020a17090a4ecb00b001e2c5b837ccso286891pjl.3
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jun 2022 17:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QhMTt4uDdPDX7crPsrwX6noLLeOOWLBWTCCTPNEBLmM=;
        b=ru5SsmRKk+Sojj2R6znJyM93vwJ7wUai2a8cObSwMmzN4YNgCB8JlYLiNn6znXJiJw
         SAvClZQc69rn1bHRRPg/pv2SkIuy6tRiluZXuVPvnXyG66kQLUsjoDsryMh1AEFZdoBm
         N5eAi3pK6T9OdzTPAP6rYJjUR1OQWbJfZJVYPYUKrplu/6xj+eCh0TX4HHgulORQXKS3
         X61E1+EKCfmPf76M/bhT990z7uaKcMpFMfs2SI1Uq+qjimHQuuqHao67XvAFXVlFx2aR
         XeqXC7yQlCPPKxLzsJXyrUNScFdz32nXMBgNITb1BIp89n2QhWU8MNVkTS+MkjXfTGfY
         XnsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QhMTt4uDdPDX7crPsrwX6noLLeOOWLBWTCCTPNEBLmM=;
        b=imQumSp+c5bCWsDSTOrEqYYpT/fW3DHRAme1fh4sicVrQMBaLX8XKNvPGPXDPyxZ6C
         He/qLXRb07DSHQ/i9Ilyqkt9QgfylaMtrBWkz0gsC6Z+J7NLdjk4b4YUfYxA55zlqNmz
         eWUmjOvmJa13XZBXN9r9XTKclezDCbL+An3FMzUy+basxxUVqZiN/22uULp308OoTTjs
         So3yzJ3FxHhWBiNRw0E7m5QT1k546f8PWGUy4GJu+DcoEWXs8TJ6rW2qNV1/WzC4gk2f
         g/YKr8ay2FEfK6lkXtgLJKLLMQKEVklA1l1sKrDz8y+ngfN3/q9muHoplmjGX9s8aeWl
         WBpQ==
X-Gm-Message-State: AJIora9rhS512xQvfqkT9UVIP1b1iUHDppeiVglcaSbPurruKEWtxit+
	lO6YNUGLVJSGrKv3PeDkfXy4CA==
X-Google-Smtp-Source: AGRyM1sl2+qWzmkjduELBjaJmA4KbijZZrqkQHtEjfdM5ktH3OTsfeL6DARSLKZrTRgoSsLz62bp1Q==
X-Received: by 2002:a17:903:41c6:b0:164:1050:49ac with SMTP id u6-20020a17090341c600b00164105049acmr2017881ple.138.1655338509561;
        Wed, 15 Jun 2022 17:15:09 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id o18-20020a629a12000000b0051bf246ca2bsm225127pfe.100.2022.06.15.17.15.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 17:15:08 -0700 (PDT)
Message-ID: <2e3422a3-6f4d-235d-e66b-8c9597aab232@linaro.org>
Date: Wed, 15 Jun 2022 17:15:07 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 3/6] arm64: dts: freescale: Add missing space around
 properties
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
 <20220612223201.2740248-4-niklas.soderlund+renesas@ragnatech.se>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220612223201.2740248-4-niklas.soderlund+renesas@ragnatech.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_171512_592271_2A471552 
X-CRM114-Status: UNSURE (   9.55  )
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

T24gMTIvMDYvMjAyMiAxNTozMSwgTmlrbGFzIFPDtmRlcmx1bmQgd3JvdGU6Cj4gQWRkIHRoZSBt
aXNzaW5nIHNwYWNlIGFyb3VuZCBwcm9wZXJ0aWVzIGJlZm9yZSB0aGUgdHlwbyBzcHJlYWRzIHRv
IG90aGVyCj4gZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmlrbGFzIFPDtmRlcmx1bmQgPG5p
a2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2guc2U+Cj4gLS0tCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kgICAgICAgICAgICB8IDYgKysrLS0t
Cj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDgtc3MtY29ubi5kdHNpICAgICAg
ICAgICB8IDIgKy0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLmR0c2kg
ICAgICAgICAgICAgICAgIHwgOCArKysrLS0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bW4uZHRzaSAgICAgICAgICAgICAgICAgfCA4ICsrKystLS0tCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpICAgICAgICAgICAgICAgICB8IDggKysr
Ky0tLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgICAgICAg
ICAgICAgICAgIHwgMiArLQo+ICAuLi4vYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAt
Y29saWJyaS1ldmFsLXYzLmR0c2kgfCA2ICsrKy0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg4dWxwLmR0c2kgICAgICAgICAgICAgICAgfCA2ICsrKy0tLQo+ICA4IGZpbGVz
IGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKUGxlYXNlIHJlYmFz
ZSBvbiB0b3Agb2YgZWFybGllciBwYXRjaDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjIwNTI2MjA0MjU4LjgzMjE3OS0xLWtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZy8KCgpC
ZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
