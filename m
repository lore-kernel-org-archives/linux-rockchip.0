Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA0F8C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 00:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uimlx1WTHTJJL9rI9KX4jYl8iolhPpML5AtLdeDz7dQ=; b=r71Df9Rr80E/qY
	5R3THckCpHSKD9pGKDXQII6QkNxsBv5agYLRdq7Y9VXTSLPUbfvSTzkeNxUrzQbwOfsRH3D3r5E3l
	q+9eFpftmpfud9SMBc9XE6Dtw7bt7C5H51RSFD7naDJoQxggBTvaOnSaq1xGkkOr3CEatB8Xvwvcg
	L6kL+h0ubUTbUgp+x80rlg3UFnw1Fn2mHhY0ggtgUTDq+7/PJOyou+mi9UMJJjPbMnNeZIQhtnhe6
	onxl/5ow0dTMIBxqzvHcl7KkWo1zqFvqkinH2e+xOx3as+KV3nDWTLg0UzeFQSSeJgCJIxxjMf0fb
	/ufO6/3u3MQrqDK2+Ohw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dBp-00H5Sy-QS; Thu, 16 Jun 2022 00:16:49 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dBP-00H5HX-2R
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 00:16:24 +0000
Received: by mail-pj1-x102d.google.com with SMTP id q12-20020a17090a304c00b001e2d4fb0eb4so286258pjl.4
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jun 2022 17:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0u5DkK3CDY/f+3CDZHfPfb+Kz45RP66UnIaqAL+o1Xw=;
        b=fiiTsE7dkdwuTIx/s63P6TMPZ7FKgTzsitulk+M/aVHuy3v/QmM9eUZMxfAUbO2Z2R
         Sf7ydiIR5s1yi6KlVQ+ZdXhW+bgCBlOZgTn8926v2ann58uw+kY/nFkSSQBRM+QTGlX4
         gu9RiCkzkLkD4jSeuEqkPwNgneok74aHAc+1jYjmorD622RjOwODXIn5KC8erdksvoQa
         +kHY/AGr/1KyBsyPXrSZSEleVs1A0rMUU1veJooMHUChG/O/mL8b/KCfOwqe8j42hKKd
         rAppQsM1WHAMheYyr47xIIy+cHm3CVt/D5TOo4n7whSqIePJEINJHbr07mpjudILtYOF
         cKwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0u5DkK3CDY/f+3CDZHfPfb+Kz45RP66UnIaqAL+o1Xw=;
        b=ujadVt77AvQXA4gaX6DP+6GOma2z/x8mRsT2hyGE/oHw6A3ZUuKXdl3hYtx+feAQK7
         P/aU1QbaFL/UgRgr2E8d8PNmXmR4MOa3x41Lr55bHs2944igsHCTTrBDTApLQItNilxA
         ZKQ6xy3CnlqvV4Iglm21lGZGlDbfG+VooZRigS/pjUjVFzxxrchEeMlGtPQzBMoFjamr
         Lf7/wyp9BGWUxcd4RXTjExFL2jaUoPGWmYTPXiTPAFQTQhDq/4EjV6ARzwQA5pl7BMqB
         s79mIX6eo+rDgZXLKF/MKlS0pSoYa5AdOTEkN30Lr9yI08rv2HekbjLYG1p9yirEuGn8
         Vscw==
X-Gm-Message-State: AJIora9NUn0C5OII1UQ0pFkjmm+bqQO4YTEvetG3glhEFPI6Ogpv2fEP
	IJZuxtu9tYik8XR9ZDw9VlAiyQ==
X-Google-Smtp-Source: AGRyM1vQ8bP23i/Pt5tFi74liBmS3Y7kMWOHA/t9ysDpqJS9wBgemnTJNjz4eAHZ2l42+/G3L7iHAw==
X-Received: by 2002:a17:903:246:b0:153:84fe:a9b0 with SMTP id j6-20020a170903024600b0015384fea9b0mr1808913plh.163.1655338580002;
        Wed, 15 Jun 2022 17:16:20 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id im16-20020a170902bb1000b00163e5f99ee9sm211834plb.166.2022.06.15.17.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 17:16:19 -0700 (PDT)
Message-ID: <446e4e27-6c83-d503-09ce-31d38a0e8ed5@linaro.org>
Date: Wed, 15 Jun 2022 17:16:18 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 5/6] arm64: dts: qcom: Add missing space around properties
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
 <20220612223201.2740248-6-niklas.soderlund+renesas@ragnatech.se>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220612223201.2740248-6-niklas.soderlund+renesas@ragnatech.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_171623_165867_A4006747 
X-CRM114-Status: GOOD (  10.12  )
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
IG90aGVyCj4gZmlsZXMKPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgU8O2ZGVybHVuZCA8bmlr
bGFzLnNvZGVybHVuZCtyZW5lc2FzQHJhZ25hdGVjaC5zZT4KPiAtLS0KPiAgYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL3NkbTYzMC1zb255LXhwZXJpYS1uaWxlLmR0c2kgfCAyICstCj4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9zZG04NTAtbGVub3ZvLXlvZ2EtYzYzMC5kdHMgIHwgMiArLQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKCmh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIyMDUyNjIwNDI0OC44MzIxMzktMS1rcnp5c3p0
b2Yua296bG93c2tpQGxpbmFyby5vcmcvCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
