Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 910BDC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 16:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRDFj3iZGd4ADJ3xX2z6MLtOvW2QPCxSropgFEPnwFU=; b=Q8Fjba1so+LoW9
	of1UGPEHHwVqeun8ax2urjVwvMjc4K1exx01etf38/qZ4NiqBS7AjBm1yxK5ntW1h9Q/cklc+6dMB
	WYX4p6guf3ylOnz8xR5J63wmCkSfclde9ih+UK0pCJ/AcZknkisMXDeqiFjywq5tIMY/5N7y/QOih
	8L3rtTpe0Ooa2F8ePPrSMBCEe2mLSFG8qmPowylTW8O8AHB4DebFcVhYi1LrqaZEEiJAfNfRKsegb
	yzrdWFWhI8sue1wNnkZ21KAT6BMEzRCiwyBagewDw16/aqLbO2Lm+kGCF36A/rOgupXN6mn67hYWE
	Pc0qd9LLdlcnq3uLTtNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0nFz-004lcV-1W; Mon, 13 Jun 2022 16:49:39 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0nFn-004lXv-O6; Mon, 13 Jun 2022 16:49:29 +0000
Received: by mail-pl1-x633.google.com with SMTP id i15so5584250plr.1;
        Mon, 13 Jun 2022 09:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=c0HeuJ98I3Y5QZXsYDJume8HkCACCCfAbeGSkszGHn8=;
        b=NUH+Vt/6Cn5kViDjiu3uNhVu3Z9a4hDpEjVwnCuRGiiIDE0H6LIT0uPzEE2Pv7OqOV
         vYwk/zjRFYUlaheRj1Wr6Ux4IRmrgjvOLX6j042QB9k5My0pZmLLFldevEliU6ApVEfT
         9I7mzQGZc+BGj2xJp9PkFD6iJtN1wFJ9p7hBhNV3GoZKUuiC6+bKFnQgxaFrPcVraPya
         5tnlFPsSqU/s1yVzNoo9ROwN0o7s61r79zrq3ojpapxtuLMQB9noVds5iCDIc0SLzOQx
         B8px/I6/8jCCoCrfJDxqxNi81IYbuqv+NJhq5Xla1mTEff30ylJMhQbLZLfh/qWxEllc
         kgLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=c0HeuJ98I3Y5QZXsYDJume8HkCACCCfAbeGSkszGHn8=;
        b=tFR+mB+jBhJ0bHj6BqdJkU2xsjFqQbF5Z53z+jikstsXrW68ZNrLiF9mVbSXGiA7IR
         XVKoj3vHr6gcZnZvY+wepRs3J22RZUi0B+hGVtEXrd+OPaE62KX3L9iw4XgVjr5qiTgN
         YXQU4E+QreHr3D9jtyOuwfYi2N7J+A+YWDpqsKntawhy7p+6GMIDRBqG3KjMRkiesW7K
         w8FAAmHw8Tgiccm6iVG1Ctlvv7LDUymRa3cWRgvZlpa9sYQY0j9x6y87hJYIMw5lEKqi
         zkt/9RG6+pcxjjeo4vofGajpB1JOs2lM+boMd4w572eLsoX57HqBWDJ54koc88swT+xU
         /RKg==
X-Gm-Message-State: AOAM533193SnauL4V3TIyw7vr8lMx32rR8WnLQ0pQgrbCpFp1EiCNdwT
	djTABt/SxaBqE+PdNGEuTiM=
X-Google-Smtp-Source: ABdhPJwH4a0siFP6S/uPa9BISixIKS7A/QejNs/Kv5WE7if7/eH6MSMvtrDL0KlklM7LmjhUfmG+LQ==
X-Received: by 2002:a17:90b:1bc1:b0:1e6:9a00:5d63 with SMTP id oa1-20020a17090b1bc100b001e69a005d63mr16469024pjb.154.1655138966172;
        Mon, 13 Jun 2022 09:49:26 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id ij25-20020a170902ab5900b0015e8d4eb1f7sm5334774plb.65.2022.06.13.09.49.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 09:49:25 -0700 (PDT)
Message-ID: <def298b1-efcc-8c34-52e2-b33c74e3a129@gmail.com>
Date: Mon, 13 Jun 2022 09:49:19 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/6] arm64: dts: broadcom: Add missing space around status
 property
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
 <20220612223201.2740248-2-niklas.soderlund+renesas@ragnatech.se>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220612223201.2740248-2-niklas.soderlund+renesas@ragnatech.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_094927_826908_983F6DDF 
X-CRM114-Status: UNSURE (   8.52  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gNi8xMi8yMiAxNTozMSwgTmlrbGFzIFPDtmRlcmx1bmQgd3JvdGU6Cj4gQWRkIHRoZSBtaXNz
aW5nIHNwYWNlIGFyb3VuZCB0aGUgc3RhdHVzIHByb3BlcnR5IGJlZm9yZSB0aGUgdHlwbyBzcHJl
YWRzCj4gdG8gb3RoZXIgZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmlrbGFzIFPDtmRlcmx1
bmQgPG5pa2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2guc2U+CgpBbHJlYWR5IGNhcnJ5
aW5nIGFuIGlkZW50aWNhbCBwYXRjaCB0aGF0IHNob3VsZCBsYW5kIGluIHY0LjIwOgoKaHR0cHM6
Ly9naXRodWIuY29tL0Jyb2FkY29tL3N0YmxpbnV4L2NvbW1pdC9iNjViOTQ3N2Q5MTE4ZTNjZDM1
OTI0NWY1OWFmNTU2NTk3YmM1YjcxCi0tIApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
