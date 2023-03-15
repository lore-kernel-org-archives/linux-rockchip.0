Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95D8DC61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 07:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++XUADvvE/mN4VTm0ZOTKIwGjWs5/4N0zEWRMIpSB3c=; b=iMGf19OOjIxdLG
	MeqTShU+vhL/inKS4tKZUeijuZoWidQik8fr6+dWe/0rFSMtucSIXoGTxDT/4HkeVVeqx7/El2b7r
	CYNh3P23v5yAjnvB/S42IgqjS9wzNJrrNPNgU6ucOa3vBcdiND8DdlKdETi0GOMCz0wrzPMeoZqgS
	r1kRjQiFiAxQn07W/gRlNp7SqFZF9+48Cuckp/JeXfn1wQgF20psz1uGHz3v2EF0f42Kyk8yFzE95
	wo0mpEuHCUNmFgNnqAgQrsmz4G7Tb7eMrBxs22QhvhqB6mg0xIjhAd56aOljeJ5CY+LkUpn+a5eZs
	vbDFwTiDiihNox33YXdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcLNk-00CdIW-0u;
	Wed, 15 Mar 2023 07:17:08 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcLNh-00CdDF-0J
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 07:17:06 +0000
Received: by mail-ed1-x532.google.com with SMTP id r11so20028093edd.5
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Mar 2023 00:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678864611;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l12j+5DZPIr3CM2plc1IPPLtAzb+IPIK3UVC9/MBJgA=;
        b=Salfcnwr7cE3680LEI6UokKNQ23hdAFfxBkXrk9OgvhcU7KAr2nZaOfrWy4aD19rc3
         WVFdvRJ4PhHH88B9nj8sBQc3sfeI+DyQWYi4o+HFGp43wAT7n1XsMPd3uKioTlz1FY0/
         Y69J1H6q+OGPmVT8f9gYmtVgsbdOFoJPIsoini5Rd0rQDjOJGWC+hcKKq3qdcRYv+z3g
         Q2dOlIuRxfejp40fuDIXjGE/NTvS3RRVpccmql11Rr0I41Cm0+rMqn/FzVlH0geas9kf
         83Wot/qXX9/5BN0nFnq1Z3S0Nfcf4+iXTMDImerQaoJEuNxbb38CT7KuJY1OF5EK6BXh
         +ZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678864611;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l12j+5DZPIr3CM2plc1IPPLtAzb+IPIK3UVC9/MBJgA=;
        b=5gwCbpc+ygzfMFY31Eh5A+5k0WxJciIWnvqHgUgFCv/CGIZcSi4mAoQr6R/OYRqXF+
         +c2MhJqJKhkLRfHiw7hGIHqwd+tVwlhoXx9y3W3EnLTQsKngI9xgUA6s97VtUUbU0UWR
         2F3F6hHqKWOubB4Zggqy4cy85uc33mJT47Stso8xp6z+GdDWZYwZ7UE+OkmtqV6ppyld
         Jq88b5OO/mchMMoPYHBxLMconQQTJMERhNgWcMEMtXZ69yTTjGjqMpDY2KYB/IHaqcRz
         xTGVCu2VD0UHb0Bt1Z6u+C4GFkGwBqs+8akmwAXDy5XvzXAhAH+BUh9BFiypKY0fkt/Y
         BQ7w==
X-Gm-Message-State: AO0yUKWgCBCLdqd6ir2WJW7jSJeeNx4bXgAg3RkXUOKr02+1BsAPwU4u
	pz/iNtm3Y33BLyybAYQqcZwtaw==
X-Google-Smtp-Source: AK7set+Cw/lpF35VCg0jANWxJglVMzoNi7c/Kjdm3hf/RwhjGB4/m0AFAUdJGGQ4tg4dqD1K2Oyidg==
X-Received: by 2002:a17:907:c78a:b0:91f:5f9c:5db6 with SMTP id tz10-20020a170907c78a00b0091f5f9c5db6mr442065ejc.52.1678864610933;
        Wed, 15 Mar 2023 00:16:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id qq11-20020a17090720cb00b008c6c47f59c1sm2105301ejb.48.2023.03.15.00.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 00:16:50 -0700 (PDT)
Message-ID: <b1e0cc91-4a67-6417-eb4e-e044ce6dd03b@linaro.org>
Date: Wed, 15 Mar 2023 08:16:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Khadas Edge2 board
Content-Language: en-US
To: Yixun Lan <dlan@gentoo.org>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Jagan Teki <jagan@amarulasolutions.com>,
 Christopher Obbard <chris.obbard@collabora.com>, Nick Xie <nick@khadas.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230315033441.32719-1-dlan@gentoo.org>
 <20230315033441.32719-2-dlan@gentoo.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315033441.32719-2-dlan@gentoo.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_001705_147798_10F47F2F 
X-CRM114-Status: UNSURE (   7.82  )
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

On 15/03/2023 04:34, Yixun Lan wrote:
> Edge2 is an ultraslim, credit-card sized ARM PC designed by Khadas.
> It has quite a few rich peripherals.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
