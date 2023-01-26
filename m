Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33BE0C54E94
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 10:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpSj3VOL3kmldCAMqnNVfr3jedzuvzUCDMNUiC8TGbA=; b=P30FcV7wr+g5h6
	CfbdXvzsmS6uy2WGzwQpr1wiLZCVMlguaQGxOajj5+DyyQzzDpTh/diZYJdBTKIddKAxXTyYXPhrG
	sTL73lJIf5U2wzOjPaI/E8WLYs3+V31oRif7F9BRUY/4z1+VSppsdqgiDGRQoNFLT6F5Wmmq+UmpN
	rnF/EJ225ntYs6PWGjqo1xWlR5HCy39I0FA2nBj1TKbezMNapeIGqG7W+HfQDK6oPgJRs+1MU0ueJ
	TvJhW0dYkzxZmdqgp9Gy2iPHX9uSUGuJbjihKuhfWFCEWZE2Q7uxiu6u7CuOD+Wckyj69uY5xJgiX
	lcq7y9ks0wsvQYElaK/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKz3J-00AM3K-Pp; Thu, 26 Jan 2023 10:00:17 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKz3H-00AM1d-3J
	for linux-rockchip@lists.infradead.org; Thu, 26 Jan 2023 10:00:16 +0000
Received: by mail-wm1-x334.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so2930225wmb.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jan 2023 02:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rRgVXPw5t6QVo2geW3WNhb1rgDC2iA39PRv/GAVQDio=;
        b=vTcMGyXsf39j1Pv1ktHj9xKL5iJq2HfVCB7ZDr/oA7PxzZWC46OtUb07mNAD5yZMBO
         p9nPr3PZWB5lLNVS8lpvd2ZQVWNh+1zlHNlyByHZmrUIawF9kgeiP+xG7IzbRNDfUT/U
         U5Amgws9CsWnwBI7AoThUbiVUETnMsJ8ohSjOHmT0yqvv06GEYytAk00/wIMElspB0UT
         t0MzSBWCHGNE9Hpgx1H6tJyNRGPTNOSHHf1ObB2SZUx9QcQYbFbVoK0LfbSJHwpzviUf
         d0SjDF8XGuaKcgz66eQrykR9AALBDeCquTKiYuvUoDMKJeGJliInGycAIpQzTMVaLt9R
         s/1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rRgVXPw5t6QVo2geW3WNhb1rgDC2iA39PRv/GAVQDio=;
        b=v+3fNYaYxnqP6H7W9nu0Pd/UdWX/OIGQPyR9l6RNhzcK0fvJg0vNLux8EDKepqHOek
         Lu//ywH2ziepME/jOKKVxEmnHNXSB+T9fGpJQLMlArpX85EepHo7/6UwQa2eEn6LRxgG
         tTTWbORlvklDhmM/VaMmrQwVC3tbOTiQtcfjs232k7XOSYt6waEr44sB6qmAXSvL5Q35
         jDNRVEIxzG3PyMsbgewMuzxnd0Ztf5VS7Z7YWXwdXT+TgfV+uxn2SzzgsspyvZ+Ssbpk
         5LoM0/O4z398mPOUr0Cwm4m+wRIi5CJaog/KySB+TP1BBPEyBwTWz19nc/j05UbjVfh/
         dX6w==
X-Gm-Message-State: AO0yUKXzyXjHWvLsW9lyAqriOatw6ld8wFtzniM3tR7/NEIESbByqv44
	540IBmAleIGBuHpY4xudnIyF+w==
X-Google-Smtp-Source: AK7set/aZLK6a4J5BP5py17o2vPlMYEYYqGkUd/mG6BXhAEOu/N3E4T9mGZDkPE1RSRpaEXhZnwoVQ==
X-Received: by 2002:a05:600c:3512:b0:3dc:2c7c:6616 with SMTP id h18-20020a05600c351200b003dc2c7c6616mr210993wmq.21.1674727211804;
        Thu, 26 Jan 2023 02:00:11 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:aa89:e801:e296:9b7c? ([2a01:e0a:982:cbb0:aa89:e801:e296:9b7c])
        by smtp.gmail.com with ESMTPSA id k20-20020a05600c479400b003da119d7251sm985242wmo.21.2023.01.26.02.00.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 02:00:09 -0800 (PST)
Message-ID: <6d304884-9e54-6eba-1e2e-882fa6c5b983@linaro.org>
Date: Thu, 26 Jan 2023 11:00:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 2/3] arm64: dts: make dts use gpio-fan matrix instead
 of array
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 David Heidelberg <david@ixit.cz>
Cc: Rob Herring <robh+dt@kernel.org>, Neil Armstrong
 <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, ~okias/devicetree@lists.sr.ht,
 phone-devel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20211029114948.41841-1-david@ixit.cz>
 <20211029114948.41841-2-david@ixit.cz>
 <CAFBinCBVXNYG62jKABhJJt0m61+vQKqEyC4Mk5Ljg7htN-brTA@mail.gmail.com>
Content-Language: en-US
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <CAFBinCBVXNYG62jKABhJJt0m61+vQKqEyC4Mk5Ljg7htN-brTA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_020015_204053_330A675B 
X-CRM114-Status: GOOD (  11.06  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi David,

On 31/10/2021 20:39, Martin Blumenstingl wrote:
> On Sun, Oct 31, 2021 at 5:51 PM David Heidelberg <david@ixit.cz> wrote:
>>
>> No functional changes.
>>
>> Adjust to comply with dt-schema requirements
>> and make possible to validate values.
>>
>> Signed-off-by: David Heidelberg <david@ixit.cz>
>> ---
>>   arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 9 +++++----
> for meson-gxm-khadas-vim2.dts:
> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Would be great if you could re-spin this change but only for the meson-gxm-khadas-vim2.dts file.

Thanks
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
