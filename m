Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93177C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 11:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evqt587ZVVwbZOuNBUIcXtV4BcBhAnj5DgzHwDQZaXI=; b=FwjVrLEc5ZxuGp
	wTXidI0Fd7seVkSJjpnbl7yBs6y3rkVHj/AbQwbyZ0HehFiMs28MvoP+kNOurE6L0skgHqtevvtwo
	KKj+Up3qSxwgWCMIZ0I+d+QqT7J1GOPva7itrWqFZfPnMJ8DPUjh6JSdzN+1fN7Givoz7QXiKsDGO
	ZptAuzT5ACvdQNgioZelo9LDDbyxG9DSvbDKKy5jIRaVmceBqG7ullHp+KvJ1GgSgMkG6RFh4Ex7J
	5SeBL2b4N1gmfge5WLYL3FKjQsnopWeRG92fS8lhhCq4RVMngoBcbLzYe5cgStnyCQaPWH2UdRbu5
	qUL06hbISuA2Oiq2FyWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDkHb-000Ddc-2F;
	Thu, 14 Dec 2023 11:53:39 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDkHZ-000Dcf-0E
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 11:53:38 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50e04354de0so4423012e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Dec 2023 03:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702554814; x=1703159614; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KttnO4PIiCaAGSytE92u74iuSMSOKJ5regNQ/EC5WuQ=;
        b=ggFX2LykWbKhotiMbQBTDDEW/Pt0HBn5ov/wQE0T4tZlglyp6FgFns5KVtFfFmOOpP
         A1oZmDTpoa1H90vu+y9vyOSGgBtP6Jhyekh1G0EFURr8svA2JwYxBvHOw4vX1iV9gV/J
         VTr3WZzlfJrbcaIMrVuRSPZH37SZCJV/fXdBRqSDVFi2ulPllv9iWYnLMldtvgt9jW5a
         n/QM1jcymIqYmqwvZUiqycQKiXX+u0OzneBLbhMqTmD3qEBMhVPLU78oEGEj45bt+eUe
         0juboK8NJntxlGkH+HdqB/Vm0chI9+SaD7dTC/XN0ygwC/L6DebtNb4M0WFBbrP/Nx1a
         nllw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702554814; x=1703159614;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KttnO4PIiCaAGSytE92u74iuSMSOKJ5regNQ/EC5WuQ=;
        b=C+obuE17ADL4gOtMeNdNUcjFrRL162tjVneLT5V+VdtUsDUyHNmj8qYvEns6d1q6g3
         1LPgYW1IMAxm9iIli+TxSHPBDj3vE8mbKdmGORxJ3n37mRgN66xfXuA4tsmFdTmL5GQL
         /FgXLNV4GUsVC2yAopy3ZIdzIxu7AJ7vpJKcVqolWB6tCjs7BMqFrLhS77NOY2u2a9+v
         5FB24Avl7IP8BENpZR32940Vet2JlexJWYOZyAuLUQzM0J/tVfiyLOYIZ+CCESOF3lvy
         O5XPvoqR4C1yfkgHH+CTWCEt9Atsuv8PrPK5n5ULounCclym20JHKqAQfjNcIDpNfBAZ
         kgZA==
X-Gm-Message-State: AOJu0YzEG5CUufRmxBT6t2SLI7f7NkYq5bFPXhB1V3PbZAbsGoFV+wZ1
	lX9C6p36ejZeG8DGkeprojWvHQ==
X-Google-Smtp-Source: AGHT+IFKAUpNpfuAuwpUiHGvkKtTTxlNLOoY8GwwQiOzDKup6y8DvTMvl5/GS7Uobt3Q4SD5/EbY3A==
X-Received: by 2002:ac2:4219:0:b0:50b:f305:7802 with SMTP id y25-20020ac24219000000b0050bf3057802mr3932763lfh.129.1702554814419;
        Thu, 14 Dec 2023 03:53:34 -0800 (PST)
Received: from [172.30.204.158] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y14-20020ac2446e000000b0050e1633748dsm183444lfl.206.2023.12.14.03.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 03:53:34 -0800 (PST)
Message-ID: <2890ae71-aed0-451d-a7fb-7db30c30b72b@linaro.org>
Date: Thu, 14 Dec 2023 12:53:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/6] arm: arm64: dts: Enable cros-ec-spi as wake source
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Mark Hasemeyer <markhas@chromium.org>, LKML <linux-kernel@vger.kernel.org>
Cc: Raul Rangel <rrangel@chromium.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, Andre Przywara <andre.przywara@arm.com>,
 Andy Gross <agross@kernel.org>, Baruch Siach <baruch@tkos.co.il>,
 Bjorn Andersson <andersson@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jesper Nilsson <jesper.nilsson@axis.com>, Jisheng Zhang
 <jszhang@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michal Simek <michal.simek@amd.com>, Paul Barker <paul.barker@sancloud.com>,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
 <20231213110009.v1.2.I274b2d2255eb539cc9d251c9d65a385cc4014c79@changeid>
 <e5625051-e9e2-4a75-a11a-cf5b40606fa4@collabora.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <e5625051-e9e2-4a75-a11a-cf5b40606fa4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_035337_129063_04677300 
X-CRM114-Status: GOOD (  10.75  )
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

CgpPbiAxMi8xNC8yMyAxMTo1NSwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4g
SWwgMTMvMTIvMjMgMTk6MDAsIE1hcmsgSGFzZW1leWVyIGhhIHNjcml0dG86Cj4+IFRoZSBjcm9z
X2VjIGRyaXZlciBjdXJyZW50bHkgYXNzdW1lcyB0aGF0IGNyb3MtZWMtc3BpIGNvbXBhdGlibGUg
ZGV2aWNlCj4+IG5vZGVzIGFyZSBhIHdha2V1cC1zb3VyY2UgZXZlbiB0aG91Z2ggdGhlIHdha2V1
cC1zb3VyY2UgcHJvcGVydHkgaXMgbm90Cj4+IGRlZmluZWQuCj4+Cj4+IEFkZCB0aGUgd2FrZXVw
LXNvdXJjZSBwcm9wZXJ0eSB0byBhbGwgY3Jvcy1lYy1zcGkgY29tcGF0aWJsZSBkZXZpY2UKPj4g
bm9kZXMgdG8gbWF0Y2ggZXhwZWN0ZWQgYmVoYXZpb3IuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1h
cmsgSGFzZW1leWVyIDxtYXJraGFzQGNocm9taXVtLm9yZz4KPiAKPiBJIHJlY2VpdmVkIG9ubHkg
cGF0Y2ggWzIvNl0gLSBwbGVhc2Ugc2VuZCB0aGUgZW50aXJlIHNlcmllcyB0byB0aGUgcmVsZXZh
bnQKPiBtYWludGFpbmVycywgYXMgb3RoZXJ3aXNlIGl0J3MgZGlmZmljdWx0IHRvIHVuZGVyc3Rh
bmQgd2hhdCdzIGdvaW5nIG9uLgo+IAo+IEFzIGZvciB0aGlzIHBhdGNoIGFsb25lOgo+ICDCoDEu
IGFyY2gvYXJtIHN0dWZmIGdvZXMgdG8gYSBkaWZmZXJlbnQgY29tbWl0Cj4gIMKgMi4gSSB3b3Vs
ZCBwcmVmZXIgaWYgeW91IHNwbGl0IHBlci1hcmNoIGFuZCBwZXItU29DLgorMSwgb3RoZXJ3aXNl
ICpzb21lYm9keSogd2lsbCBnZXQgbWVyZ2UgY29uZmxpY3RzIHRoYXQgLSBldmVuCmlmIHRyaXZp
YWwgLSB0YWtlIGFkZGl0aW9uYWwgdGltZSB0byByZXNvbHZlIDooCgpLb25yYWQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
