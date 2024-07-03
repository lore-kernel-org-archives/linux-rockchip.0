Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1F54C2BD09
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jul 2024 20:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nz25u0mBhgGnzYKYKuGZpmjKgxmFTQsy4kWXPkYCIUg=; b=1ZPP8FNhxQnIlL
	L9UnXgExIuh2Ld8TLSwp9C4mbeLCKlowsNhb+yYbG912aBlgQEo0B9O2Ul7U57TiOPpcaVHcrOWo4
	BB57h5o6KHNlqk/878K0k1wgGoEnNSenxFW1WtZ98aS9sHfuWbsjH7TLDCwurSu7ggrTQDCFBmqID
	9/KeeVTJbCEOPYZg3YlO0OABCHyRzFGBhJV5v6qhdYUIqlMpMTtcAbiXNBWU3qgjnRykIey/aq6v4
	HDOCFqrIYsTEHQyODkVSKR/diomfxQkcKzVfT28eLYTS0jVxT48u8BK5mAR/nW/H5drVBbS9wsGDy
	Aiul1ftFsyZqPs0Oj5Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP6eA-0000000BOCH-0pdJ;
	Wed, 03 Jul 2024 20:32:10 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP6e6-0000000BOAB-3jSG
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Jul 2024 20:32:09 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-42562a984d3so41298965e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Jul 2024 13:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720038725; x=1720643525; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=soNpQ58Fz2hm7V5JZ9ZEYAVAikWNhIPt2irm4De+WfA=;
        b=VUPLfXfLi2x9TdZcv+xc2xmRr32lMecykgWzJaKW+HS9jCTj1PYGMeVCaE/dSvLrje
         uBMknvNMltqRmydCHWjaSWVakE5GSB1V1zWsldS+LnoydMfT80s5SRwDbA+RefxiILsR
         C00MXAxG14ouGJB9UGh9Ux/DVnTvc165RjAISpCDFZ7FquCg9aBE3Qo3PiAkOJ+AYIEG
         xCmiKFK7/RmQc5t71dzMaRsSslbvEh0gDHCt65lMVX6MGuTipafSsGLVe0Jq1pedwD1/
         EQU1wXJ4QrVTnRzam/ADUosrOl3e1wyF/M3IV9HEoEnCiEYJF4MbCm2qv9xNf5xaL2IF
         RvWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720038725; x=1720643525;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=soNpQ58Fz2hm7V5JZ9ZEYAVAikWNhIPt2irm4De+WfA=;
        b=JjFhVZr3CW41yw54ySiIlPjOakzQIi2TwbDIDnBwi1UJMF/CdzwcEQAzH9Wmv9pxcl
         98LQXIbfeDJkOGIaB+BQwL3YFOLQgELndXhUxSdBlW/MISmyDBWX6da8GcYoVeen3DER
         q8bYLNb4eua26fmVdIGwPmE+tSQzhirqRHVGQV3l/yzU1Sc9HVHlH+iJAev3GrZD+DlT
         jYR7Tpm0KkkGet3fLItF1oQGzr2IGP5yJcJrtLRIjIgjf4wRm24kNRs259iTX4yISfqX
         ZjFtmy57nvaTv03uEsAS/RFdvCIPPxS7S3YzbQP2ggcuFgCZ3CEf3Y8+HVVo0ykX/de+
         sEBg==
X-Forwarded-Encrypted: i=1; AJvYcCWeAIwsHAnPloSI3O35vFoN8B56po03HrO4TtAXsB0+7V1IbHLYaZ84NVvn73kO0HGAgX+5L/paJWkU/jCryh6FT3o0ZXc1R7Dii4Q2uQoPwJ3w
X-Gm-Message-State: AOJu0YwSFtUBiwciJM6iQZvijbFIzuo/b5eijOZKvThlIpXxfnzhHx22
	ZBZNWd/ua6LbPTglAYwn5CrtHjqIA+7//5YRrwfuy7T7Hkjh1RGI2Ru5Eq+n+dk=
X-Google-Smtp-Source: AGHT+IEQBwm7OCqJ0C1+sLPedSZoAnvYatAaOS5AYpVWYgjgIYzIeidjLFDv/zxc1QKpmoxHnzRP3w==
X-Received: by 2002:a05:600c:4f52:b0:424:aa64:e9b3 with SMTP id 5b1f17b1804b1-4257a02b701mr80619975e9.29.1720038724401;
        Wed, 03 Jul 2024 13:32:04 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:10a5:e010:6751:db24:f67e:fa2e? ([2a05:6e02:10a5:e010:6751:db24:f67e:fa2e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-426487c1c66sm1528905e9.0.2024.07.03.13.32.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jul 2024 13:32:03 -0700 (PDT)
Message-ID: <922ef023-4375-4a89-af1e-bd9bcf90f750@baylibre.com>
Date: Wed, 3 Jul 2024 22:31:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/22] dt-bindings: thermal: amlogic: reference
 thermal-sensor schema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Anson Huang <Anson.Huang@nxp.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Amit Kucheria <amitk@kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Heiko Stuebner <heiko@sntech.de>, Biju Das <biju.das.jz@bp.renesas.com>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Pascal Paillet <p.paillet@foss.st.com>, Keerthy <j-keerthy@ti.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 zhanghongchen <zhanghongchen@loongson.cn>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev,
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
 <20240614-dt-bindings-thermal-allof-v1-2-30b25a6ae24e@linaro.org>
Content-Language: en-US
From: Guillaume LA ROQUE <glaroque@baylibre.com>
In-Reply-To: <20240614-dt-bindings-thermal-allof-v1-2-30b25a6ae24e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_133207_109935_6AE89DA7 
X-CRM114-Status: GOOD (  14.49  )
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

TGUgMTQvMDYvMjAyNCDDoCAxMTo0NiwgS3J6eXN6dG9mIEtvemxvd3NraSBhIMOpY3JpdMKgOgo+
IERldmljZSBpcyBhIHRoZXJtYWwgc2Vuc29yIGFuZCBhbGwgaW4tdHJlZSBEVFMgcHJvdmlkZQo+
ICcjdGhlcm1hbC1zZW5zb3ItY2VsbHMnLCBzbyByZWZlcmVuY2UgdGhlIHRoZXJtYWwtc2Vuc29y
LnlhbWwgdG8KPiBzaW1wbGlmeSBpdCwgYnJpbmcgdGhlIGNvbW1vbiBkZWZpbml0aW9uIG9mICcj
dGhlcm1hbC1zZW5zb3ItY2VsbHMnCj4gcHJvcGVydHkgYW5kIHJlcXVpcmUgaXQuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFy
by5vcmc+Cj4gLS0tCj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1h
bC9hbWxvZ2ljLHRoZXJtYWwueWFtbCB8IDQgKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL2FtbG9naWMsdGhlcm1hbC55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvYW1sb2dpYyx0aGVybWFsLnlhbWwK
PiBpbmRleCAwMWZjY2RmYzQxNzguLmU1MmZjNDBlMjE1ZCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9hbWxvZ2ljLHRoZXJtYWwueWFtbAo+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL2FtbG9naWMs
dGhlcm1hbC55YW1sCj4gQEAgLTExLDYgKzExLDggQEAgbWFpbnRhaW5lcnM6Cj4gICAKPiAgIGRl
c2NyaXB0aW9uOiBCaW5kaW5nIGZvciBBbWxvZ2ljIFRoZXJtYWwKPiAgIAo+ICskcmVmOiB0aGVy
bWFsLXNlbnNvci55YW1sIwo+ICsKPiAgIHByb3BlcnRpZXM6Cj4gICAgIGNvbXBhdGlibGU6Cj4g
ICAgICAgb25lT2Y6Cj4gQEAgLTQ0LDcgKzQ2LDcgQEAgcmVxdWlyZWQ6Cj4gICAgIC0gY2xvY2tz
Cj4gICAgIC0gYW1sb2dpYyxhby1zZWN1cmUKPiAgIAo+IC1hZGRpdGlvbmFsUHJvcGVydGllczog
ZmFsc2UKPiArdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+ICAgCj4gICBleGFtcGxlczoK
PiAgICAgLSB8Cj4KUmV2aWV3ZWQtYnk6IEd1aWxsYXVtZSBMQSBST1FVRSA8Z2xhcm9xdWVAYmF5
bGlicmUuY29tPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
