Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85F79ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 09:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJCeIfWdZfMMzf4hDsuJcM/l6Fh7Uiy/7zcILv3B2BQ=; b=lkL5pXruYeHgna
	TFUtYXbKIeS7LWP5cE5Aifl5wvdn7B4/1EbzA08wDa1m/DZ0Ye3oVJurnpbbwvylZ9CUwl3Q9WTr7
	zDAHOO10MfXMvIywhK9+/npgO+kOJdONLbAQtQ3I65Oi3tYUmOUGgNxYSdHYxkyrEE24L1jQrC62P
	wCVVWGtxCZW+csuVp7NVQNW3R9GbzCtORIc3bP9r+3xs8o8cS4SqFUxfCcKs+IgnNUf3zvrPBZq36
	iKzIQsVKJlO7y0ywSK0jBHo6InPTcNoFJWfbzA7hDQq49z4CmPIKMffmqzYDtmUJFfGaFFz0Q2GEE
	Z7NZq/+LuGxttLKDb/2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSxuz-00FtA6-0v; Tue, 30 Aug 2022 09:52:25 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSxuJ-00FsUi-OX
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 09:51:45 +0000
Received: by mail-lj1-x229.google.com with SMTP id z23so7900874ljk.1
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 02:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=OZx7CXPFdb10H0xu0NSPqWrYCSjPK24Uy/HfTWOH//4=;
        b=kC5A1mX+xDikgnDcr7JMJ7Xh9FA5m6m/stgKGiyrNn7X1h4MSJQr3CKRu3mcr0IVx6
         G8v6uEAhqkW/LNunRbgLqfwXKtS9F9O6f/It3ql33artcKjJATnx32DCvQy3CIoVkWOQ
         7Ej9rIdgH3JzgwL1zn8mrBUbk8710oRo/QNyzf0A4PLc1lmThYPckg8BHj9o38qkt5RK
         KDX58RY6Un0UvirfySmINKbNRGx5lgZxxbQIShWD4DR+KNO2Ug/sjbTq3vjEQHqp+I80
         ujHrLu5sZQduZIOTZL0GAgBpwttvFpPn6jt9WDH5eJTeCG+93pAGr6jofOp1IF1Etcxf
         0FBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=OZx7CXPFdb10H0xu0NSPqWrYCSjPK24Uy/HfTWOH//4=;
        b=oNj26GjSmjpb20m+IciRUyMznUCiUON8HoBOSIyC0RSFBM5tD7CIc3DLFKTExTCgfe
         PWg2NRDWPhfLdegnEmwDGlh6RhRlJxL1/mcyFSA/wyua7TrEI68U0wOiSjX1Jw+24RvL
         sKKoFNEwEDIl9M4X1mJxNn7VgUALWKvCtoRgNmGmskzCmZDRW9wVauHFEgIQGQNkB56Y
         iC6wZlWjj2wMGXbi4Fm4nQc6e74sFntP0QVzSrlAgdGOycgD6KyC6j77lBk/WvLZ+mgQ
         cIuf8MTIZjATOpIXPqnY/YynZ6zzUWMBP7pwJOtYsyQNwzNqp0ADyLrCgxWGjOOuZuJT
         UsMg==
X-Gm-Message-State: ACgBeo0jhyhZupQB911ThVPpPlXpIsz5jo81QiXCf0naipjF4FhnOX4g
	ILOWmfIybmrloZR7Mm1a+Z5t7Q==
X-Google-Smtp-Source: AA6agR5v85O5PIwaAIzwgZ0Qweg2MSL5uz1/BanFJtMm/TtLQSKoRfwm/67TG+/dKxbrv7SQ53m9aw==
X-Received: by 2002:a2e:8553:0:b0:265:d5df:e137 with SMTP id u19-20020a2e8553000000b00265d5dfe137mr2107520ljj.70.1661853096592;
        Tue, 30 Aug 2022 02:51:36 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id c28-20020ac244bc000000b00492ef1ee7b0sm1541791lfm.290.2022.08.30.02.51.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 02:51:36 -0700 (PDT)
Message-ID: <e4d6eba8-497f-adb2-6f34-35883b8ec50d@linaro.org>
Date: Tue, 30 Aug 2022 12:51:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: net: rockchip-dwmac: add rv1126
 compatible string
Content-Language: en-US
To: Anand Moon <anand@edgeble.ai>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, David Wu <david.wu@rock-chips.com>
Cc: Jagan Teki <jagan@edgeble.ai>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220829065044.1736-1-anand@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220829065044.1736-1-anand@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_025143_842853_31B9C270 
X-CRM114-Status: GOOD (  15.31  )
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

On 29/08/2022 09:50, Anand Moon wrote:
> Add compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 083623c8d718..346e248a6ba5 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -26,6 +26,7 @@ select:
>            - rockchip,rk3399-gmac
>            - rockchip,rk3568-gmac
>            - rockchip,rv1108-gmac
> +          - rockchip,rv1126-gmac

That's not a complete change. What about the other place listing
compatibles? Did you test the bindings on your DTS?

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
