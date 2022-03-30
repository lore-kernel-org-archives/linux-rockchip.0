Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF92C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 10:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwFIRJewMYTvfsJoL76B/SbrXL1ZqeFmwB6ul1MWRdE=; b=e8/BOsGW+2FirB
	CGFtaUCnQv1dlYAa46/jB0JaN1fn4Mi4k30LLtN7wtdcqtRwAsTUJtP32Bm0tNrmEqPGuHIzwSICp
	FM6rP7btGKvNXn/lKGCmr2GyYomrq5yuWv4X1CwuEo0zw88A4lL2IiM+FxV8j4Y9nSo0P/326w4xi
	o12ynOcbhTOfvxiSK5D5AjMGsBYmrv73eV1TkXSW9jZxVEi6EEPEkfwyrg5zzcNn5rwG3794OnAyc
	Tl1EnccOqWMSLrCEG1OHn96N+IHHUlowcV13sxPszpaxMm9I/LEuR3un6Ra5+vxj7bJrWBc8kZy5Z
	dX7kKzueWDCLMuu+/v4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZVnQ-00FDrS-V5; Wed, 30 Mar 2022 10:43:24 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZVnO-00FDqZ-DH
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 10:43:23 +0000
Received: by mail-ej1-x62d.google.com with SMTP id o10so40678105ejd.1
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Mar 2022 03:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=KCxDqLSxzyDOEnmL6jtfhBEBuw6ObSbdwq4kewCKiFg=;
 b=uPfsuHyRZSs815VjijzSUnxTUU0jm752wTIu8uqLddRlETyKxAZzbaFvNwngy0Ql2f
 P9qpWyA+qZofr4imE8H5O+NOtM8aD49zjcSC1CUaDCPFdzm+o9vHgfW8JdEzoawBes5z
 VnZGawaCUbcmxcQ4TdJqzndgZUYXEhCe0tbXkrLpEq6tcza5S5DMmdxvmcERdHsgDIIg
 7abAgWElCyDGc8L+cCv19dWYs8Q81ANjSQ+4Y0Uu6a7KV4sisKvcc0JYdoyH2Ql9Layd
 VHo7hezGsSqhocqN2VoGhGBfYYcwGPT4sBmwPuxtUSjUPBTNmFZzmmjofoK5b7tTNViy
 cf9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=KCxDqLSxzyDOEnmL6jtfhBEBuw6ObSbdwq4kewCKiFg=;
 b=qSsJwo7ZvL+8KSFJa+lOukDw5hH58gFLC5QXrk/vAEMM29V2x7KkkRzjO2s5HoiVPJ
 fc1jbTkVU5Xsx66nzOqYaRKfhLgHYWqf6j7MhKw0qPS9UbUDrpdQkyTnkD/bhARAcGTd
 0BBQPyVanf5hdSwnzNezeJwn63dxHa/Dhfy0i7ygFE314QkkWdvX1l5r1yizEPQ+cNDK
 F26Xd5j1v0v6vlMUHxT09YtFkSgP0EwI/ZAGiGIXTLW4PAXaUKsUDWvotw7O/5BpFKma
 h2AOen590vNPSEYqxYMiNNFGTUROs4njBo4FqaskOYkxq20BPsZzXZHI3msWpLIcK6+9
 3xaw==
X-Gm-Message-State: AOAM533mf/eDIoyL6xO6nGRpBZmaI1Xw9k4B9Vodbue8DFz0fk0iLD6y
 Cj7cNFFlEH6uNYePy1tMxw6Yog==
X-Google-Smtp-Source: ABdhPJxDT18SOqk3+S4iqEhKmkiwQcvrgMb7nQ6+vr+Bgo1Up1b20fw96aHYy+9277zmDjWFsLk/vQ==
X-Received: by 2002:a17:907:a40d:b0:6e1:4055:2c91 with SMTP id
 sg13-20020a170907a40d00b006e140552c91mr7417567ejc.404.1648637000528; 
 Wed, 30 Mar 2022 03:43:20 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 v26-20020a50955a000000b00418ebdb07ddsm9823734eda.56.2022.03.30.03.43.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 03:43:20 -0700 (PDT)
Message-ID: <c6b2e54f-4f57-e5d2-a1ba-ce71fe8ddafc@linaro.org>
Date: Wed, 30 Mar 2022 12:43:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2] dt-bindings: clock: convert rockchip,px30-cru.txt to
 YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220330103923.11063-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330103923.11063-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_034322_484328_B3EE9073 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 30/03/2022 12:39, Johan Jonker wrote:
> Convert rockchip,px30-cru.txt to YAML.
> 
> Changes against original bindings:
>   Use compatible string: "rockchip,px30-pmucru"
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   add allOf:if:then: constraining
> ---
>  .../bindings/clock/rockchip,px30-cru.txt      |  70 -----------
>  .../bindings/clock/rockchip,px30-cru.yaml     | 119 ++++++++++++++++++
>  2 files changed, 119 insertions(+), 70 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
