Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 394E4C77B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 08:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtU+YarEVvDXzg4fvV0VN6M30tPVqXy+Fy0VIKemww4=; b=XOYofA7J9/bGoB
	VW5RsbWYTcf6Up/bpeE2+LpaQXJusgm+JwJjLXPAUD1ohtI3p6tj3i+smS6gVr1A972q2ACoiDs6K
	BVp29v27UFMsvZAiUtY2MbaWZ61Ryz7U2UO9c3+joEUMLaLMRThl0V3sAcY3+Vmk0V2V+qgiacjk1
	lkXrSJuQdejOR0pJRifkvsU9toaMqas1LMHcXIipYDZu+16rWMFjZEQwp3JxC9/y3arGndFlyGbhi
	o+d7LMwM6Z0OVqVWRI4krpJBTaLYt56TY0lKWsy6BuKJIs8j/7tC4J1cTdUDvS30HSVOxGza5B1LV
	+fRH8ZmBDKap9mogq/kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzCqO-008vUp-13;
	Wed, 17 May 2023 08:49:12 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzCqL-008vTI-2K
	for linux-rockchip@lists.infradead.org;
	Wed, 17 May 2023 08:49:10 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-510d6b939bfso465171a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 17 May 2023 01:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684313343; x=1686905343;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MaJ5XUiPawbgSLxazOeekgQ6zrqG2tuKF4ul0ZKbcTE=;
        b=TTmWUVl7QixW+1Jq78EWwxVYh9jVn4dIZDbxF5q8ezdEa7WIA6rDHJunSR5UysIapV
         wKR/0t9Fi64d99Wl9rGtjuu+nZv2YOhpiaawHXy7/jxiiBsQ0/hnDrX6LXRvZ3TzFKey
         zPt1QgFVLLngXs421tZw+GWUld5jmEQJQrxR6pw0Z9iy2V8GDXR2ASsJtRbZSKA4/xKr
         qn/asQ9n6kt8QtgHzyP4hJASRRFKO1D2eEBVyNvO4uyXT62kt25r9udELYIpZsjJMizk
         ziIlWNNX+o5KdQN+tGJNvmufVlCj+3psX1GPTDGZsZ8C3zvt03GKzMBLC8BsceTLSbPe
         7JVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684313343; x=1686905343;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MaJ5XUiPawbgSLxazOeekgQ6zrqG2tuKF4ul0ZKbcTE=;
        b=DPGkK43750fQlBGUj892oTVIOIqoDNBSv8TEBNAK+VTDYNMb88Sp1ON+Loy5ZJvGst
         ljutWPbMgt/uA0ZeCv4dwGF/KwJD+PXelRIYADgaHPI1rH5Deg+p4y1bewWZ1gN70Lwf
         TihRXrnywGHYegh8RXxDfoZ0naMmLar05FYJEHDnsoGgSU1X6ew33MdKuzqsyGTcjR5S
         AG/CB5fk4gGdwEjxu5KTLDiiUbZ+QQCqCLlX+dMkupYdt5laDBCYLB+xDG4devudx4se
         WbZX1vfAXEMegugELQGTzVYdn/fQpOZxfSvWVcNcCPd9rEffwSSK1pLumrOkY8fUvA5a
         sloQ==
X-Gm-Message-State: AC+VfDycCDZushBT/lXFm9vMUwbIrBuy/D5nZROJvheNowJZZ+xn6Ujo
	09D/xl7odMGO5lZ/5jUVFPrFzg==
X-Google-Smtp-Source: ACHHUZ65OotyaUVps2r09ofoIL7n2B8BaydzF2ggyJTZdoXzbiRnH2Sm4bKfP/VZe+dPTgGvVTjuIg==
X-Received: by 2002:a17:907:31c7:b0:94e:e859:7b07 with SMTP id xf7-20020a17090731c700b0094ee8597b07mr34882125ejb.32.1684313343361;
        Wed, 17 May 2023 01:49:03 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c9ff:4c84:dd21:568d? ([2a02:810d:15c0:828:c9ff:4c84:dd21:568d])
        by smtp.gmail.com with ESMTPSA id kz23-20020a17090777d700b009659fed3612sm11846349ejc.24.2023.05.17.01.49.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 01:49:02 -0700 (PDT)
Message-ID: <41001e48-35bb-0aa3-347b-8a25e3dcd8a3@linaro.org>
Date: Wed, 17 May 2023 10:49:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 7/7] dt-bindings: iio: adc: Add rockchip,rk3588-saradc
 string
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
 lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
 <20230516230051.14846-8-shreeya.patel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230516230051.14846-8-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_014909_770022_B0729035 
X-CRM114-Status: UNSURE (   6.73  )
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

On 17/05/2023 01:00, Shreeya Patel wrote:
> Add rockchip,rk3588-saradc compatible string.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
