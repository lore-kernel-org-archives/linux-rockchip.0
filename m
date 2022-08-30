Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A3A7ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 14:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIdhYvfl3q5oyHT47Io2ySI0dFoi/BXETX1HewvdqWs=; b=ica9PgD3sEd2XP
	rqRiQfuMxcA0VY/oWvhBZQ6+4FIojqEsKV6/WlDV4740pYY9G2nwBxfde/4pYxjl7S/ZmwJUY1El1
	rpN3F9fOqGxggssB8mSgKsGz2XEAiMJFxPlu1PO7tKgZHSm8zqMvH3LKZq3rsUHxshSyUuR6WfzKk
	/qpVGKOKR5uD7p7ZH5hCOmEry3wyfER6dZAkYa1kzP2vDVRnj7KBUF2f843unmtCn/IcJZiKNd1YU
	4FRDcjpAKW9HaIk6MENNqIooHbFc7EL1V4x4t9wG2JUakxuBq/pSOqy5EgXeAn+HPmXo0nMRPKkMl
	GjInPFK1/d74u9+IS6EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT2Hu-0001lW-Qi; Tue, 30 Aug 2022 14:32:22 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT2Hr-0001kc-Qh
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 14:32:21 +0000
Received: by mail-lf1-x135.google.com with SMTP id bq23so15810610lfb.7
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 07:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=C9hMrmnRCeOxtJSBU+xDskBEasH7EBMzC7Z87lKYcrk=;
        b=C3y1zxG+qaBopF3ylPypT8F90mDv06KIyA3ct8e05qPAV6oqFEh+T/cKlYXpjIC2v1
         47pSwcytxVOu/yzUhlM6cipUVH19dgIxO2eIimscfr3Mxv3GvRMr5ywhx643sJ/SZ/n/
         uHyaJ/ltJdqcpnaBrLdUl8+cJVKj788odF0hsZTvQiAP4Cu5tQmyjNl0bvteGdgnVUFj
         MyYvD3t2ThHSSzJ9PSLxvXRy/g7dmAQTUMujn+LOHJ7k2D5vYT2SQDbQUlETvVWg6kPU
         k8OLJlDQJ00GWKlJapuwerMSw/S72Q6IhPBghfCCot63BSjlFdzMgK0mFxbHy4TwpPsQ
         DKWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=C9hMrmnRCeOxtJSBU+xDskBEasH7EBMzC7Z87lKYcrk=;
        b=nk83urdmtnmdQiqDDlv2vZkVxMY4jiUplvbaRxlvvtsyP/JBfOxn2IxIrDaw56L/YP
         +9eJLTpnNo9ForNedtSaUOcSUG9Gr2fZOEhCFHsLLQwEgbAod/2utnk1vfoXEjtf8ym6
         AxJeFGgmdGN9JB3y9jfliUkrjJ6KF7dyCC/LGd4wY5Kys66Ux1l+e4wePjbHRY6KgLPk
         bWk8Cv3Na2jCOyJ6Bl+9BXNFIMMG2ksdAl29yZUDXdX6Tku5HUlMygZIIz3qW921kQH6
         u1XBWe0VHx1T6E5ZQVIAn0RjtSzMkNZXtkOUdqIqh1UXCV8lfu+jqS+XzCTZf2IdPdW/
         Mthw==
X-Gm-Message-State: ACgBeo2s5syvJXVgdBnwJr+jUmcbtaeZ+eUhJ/XiMXKkawiwvu48CWpB
	YZNoKQsHMUjyYcv4oINWNw4eYA==
X-Google-Smtp-Source: AA6agR6RrgJXyfpzXFNbCthcWbJ0OhEgloy1Szcy3cQyXNHecr2Pdwq6I15ti8Pop7FAZwJtlo6rHQ==
X-Received: by 2002:a19:e04a:0:b0:492:f96f:85b7 with SMTP id g10-20020a19e04a000000b00492f96f85b7mr7387760lfj.141.1661869937015;
        Tue, 30 Aug 2022 07:32:17 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id v3-20020a056512348300b0048af2fe78c4sm52684lfr.3.2022.08.30.07.32.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 07:32:16 -0700 (PDT)
Message-ID: <7ed1a3db-e0de-fd2e-3206-0a95fed3052a@linaro.org>
Date: Tue, 30 Aug 2022 17:32:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/1] spi: spi-rockchip: Add rk3588-spi compatible
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20220830124452.33561-1-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830124452.33561-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_073219_886664_C0D3FC39 
X-CRM114-Status: UNSURE (   8.10  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 30/08/2022 15:44, Sebastian Reichel wrote:
> This adds a compatible string for the SPI controller found in
> the RK3588 and RK3588s SoCs.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
