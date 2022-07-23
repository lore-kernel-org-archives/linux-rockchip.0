Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CC6EC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 21:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36e7Sdm13T5DW03/PlzLTj+wZhhCgSExsA0jfSVRARw=; b=l7CbyASgGKGnmd
	FhibLMg9+VZTtBoGHV4Wxc+0IZIeXD6QyTTSl/8RXipBMSHY+WKTra49EsIIyFqDQm2V+g9JTNRZM
	eoS6v6u6NDLhyl/VX6Nshvwm0WZaGScxzI2R/RM5hWDMsNXT6f078es4Cauett0qKkhMHhFy0nZYO
	uaJmgagESx/CzUeOYlxfPKOcXZNbOAoTx5giSbHMwCNTWzfjrYx7WOHig0/95S8HNSq82fquhMC20
	JM+jHYxk5ISAry65hy3v+FlI6Eexx4gmmP9lvPeQysdMVhAM5g7Dy1fPEveq0k0+h+02sU5cAFRVC
	Pu+fjywJjWyVaYX9A/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMeC-007Uga-1d; Sat, 23 Jul 2022 21:26:52 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMDo-007GZ8-9P
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:59:37 +0000
Received: by mail-lf1-x12b.google.com with SMTP id t17so380626lfk.0
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WwWq4pQq3KpAF4vZSyzfIHczd+yLMoGMXQMiyrcDtUo=;
        b=RF56donK2hZgNer2URwSK6BpA2vX1NduJhbeN/Tmw5LTwWQ/Y/ejr5RYuNH9YoWv4Q
         vI8VLjGbxeHH4JiQEeS+d5yYM50Pa6HLz7waHpadKZLKFhNGZhts4ODlaNuUAo5n4/8R
         lo4/NYqQmGpIjnNNjVkJWpCr81LjKmJZKmcHLQfYza7cksgz5RFh0TF3FOOJDCHzJ6oP
         WTcpUU2JrZkrUPGAUfaq9rE/80RhvyYgX9hmoJbqzud8rZdQ6bu5cDjyZFPyfAPLvjzV
         fVR0L+QkDEpizMnUWZtYWEEJA2dR4+y/+fs1XdW9N2bimI+3GzYE24jfkSyRQ2uWcOPQ
         fXCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WwWq4pQq3KpAF4vZSyzfIHczd+yLMoGMXQMiyrcDtUo=;
        b=SKlRT3MlOmwS15avLEIgfVP6sJN7af3/5QFJA3mbjPMoYWR43PvI0zuDMxEvRR4URP
         4mQS3YA9d4ZFRoef+lslhztCPnAWgGxbu+bOKLaCzMRRCTz73XlW1moHrttnzhnbnhGe
         hujCJjM3LTIYfVPcEOFptb60HiNsE+mTYuYw/ZRQPx5FoFHsCBmn0Vr7NJB6T7qXLsqm
         uLnsutGKjb9w1eCsqhhb/I+QoOZNfKAZzF9Zdej2buYCGagJDt0Z4o/E4izck9SqpBdP
         e2Hpi5xCzyZWc65TN0qXxnIGjYiFsWbCNhI3y2kBYhTI6gntVKxTxUH5tMTQP9oQ1iNy
         QDig==
X-Gm-Message-State: AJIora9S2C3w4lp62upndbgE8eOqswN4FrCJKH0Qr/Rj+kIuvlRh1mrO
	IvWF52rIkNXwDGCTNuZXXs166A==
X-Google-Smtp-Source: AGRyM1uafTV4YGCtd1OGhpgkDgbBmgFk3KwI4+Zk90rtlplUCPn2aEMnuAqetuorS9sNWDI/QSWTNw==
X-Received: by 2002:a05:6512:3d92:b0:487:5cea:a68b with SMTP id k18-20020a0565123d9200b004875ceaa68bmr2126962lfv.21.1658609974100;
        Sat, 23 Jul 2022 13:59:34 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id q9-20020a056512210900b0048646c0af5csm1813707lfr.263.2022.07.23.13.59.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:59:33 -0700 (PDT)
Message-ID: <ddb20078-80d9-0c0d-8e20-4c1c3ee0b0ef@linaro.org>
Date: Sat, 23 Jul 2022 22:59:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 06/22] dt-bindings: pinctrl: rockchip: Document RV1126
 pinctrl
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-7-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723204335.750095-7-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_135936_394048_EF84FD8B 
X-CRM114-Status: UNSURE (   8.35  )
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

On 23/07/2022 22:43, Jagan Teki wrote:
> Document dt-bindings for RV1126 SoC pinctrl support.
> 
> Cc: linux-gpio@vger.kernel.org
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
