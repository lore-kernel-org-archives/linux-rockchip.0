Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EFA9C74A5B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 12:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xljfNr5S1hw9EGuZXKgTxP1kmryg6t3Gtto0841J22k=; b=QotmuWt6RFtphD
	H6fBAHoHMehQU2cJYUC26OznINuD/5Dhjpb5TOqINPjXM7j1d5I5KF2LgIhLbtzPIuLbUiEnPV53U
	x/TDgXgnVA7Uv+xH1Mzzskm2R58Y8U3QbvdmDs7Iv3j+3Csa9XIkCSVth68j0EgWqtuIcafQBwyd/
	nK2SenAOODyrV/s4L0duRC8MvA9M/d3rDueilYDxIi3kmxt05e0+z6wZCh/d5FzXwTyiFHUzZ5Q//
	6N1GJ5eDFfd5hJW4aCCfkqXx9+ArJdDJIebKNG3TsgYIs49kTuKV57Pxr3DWIXtyPCj+i2KCEMe4M
	G4MyM9xzQtlPe95G6QoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phVDN-000ETj-2y;
	Wed, 29 Mar 2023 12:47:45 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phVDK-000ES8-2B;
	Wed, 29 Mar 2023 12:47:43 +0000
Received: by mail-yb1-xb34.google.com with SMTP id r187so19111675ybr.6;
        Wed, 29 Mar 2023 05:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680094057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xb99Pt1hWl4SYTj2pTt8Ket8kJPM1kuDudhRju4oMSo=;
        b=boK22f1D5yOHT9BRDDK/J+eZemdoM5AnfhXXt692riVq7GFzD/0cjPfuFcFiucbMB6
         k7+kyc1MCAgTNdliyC7Km9/lxTNcdRbz5NoG1pWZZ+9FYuxjHgVy+gFqiOheInrOqsNo
         a3U97Dg8skUXV80IYjlGfdPoGUTxCCvwb8m9+E591WAHG5aaRh1MKShWiY2T1A/6rOr6
         MJUteRvYrRYhCJNz6gdhLXXxD3VephikSObXgLKpmlmwl/yBg8vNS++DH6+VLmQIlk/B
         tgOJNHtK2LWkCmDa0C4hpA9eF6EVgCUWFTgyz57984cKTvzXVDkXeNIUJW9uxni+Uprm
         J9ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680094057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xb99Pt1hWl4SYTj2pTt8Ket8kJPM1kuDudhRju4oMSo=;
        b=qyjrAtfDq9be8rEC5zQKA7Cpe5xjdFN6XIb6tMaB1OMdZ7d6My1ONs8O0nxzfVtRqa
         tzC/2pxVIoTzFTbtamV3rrZ1GnKcdCQ7+S8A1JGCFSmrDkKwwfmmaalVTMLlI+IKIp8m
         nZ1BHjFXyjU5bZe15dr3xN65KbgBH6W/Q6oGSmg6u3HI9pbbSV+/VMiappVpdW4MH+ZV
         H9HNFEd/SdzRwOFSGrTJL1U+DGP3Dsv216stDpLv0naaPbc69WXobTNhS6dE5P+v7QY4
         3YwLrJ9wGBr1gSGVfUWMc78zSJyaSNUrfPeUVQAXizLrBtqxJ2fMuAe6YgKYsZqRboRO
         2orQ==
X-Gm-Message-State: AAQBX9dmHtleRWIM1bImxfpQjgTucRbqm0Mqc1pe2BkPE8WFD7bhOmFi
	a+FJfhhCOLMM+SeZAPTDcUY=
X-Google-Smtp-Source: AKy350bdEGZMDJpYSMuq9BOMZO56hoZIdt+J3okid1AES5sc6vMNacBimV7YbYHIobiway90BPZy7g==
X-Received: by 2002:a05:6902:1201:b0:b72:4127:68a with SMTP id s1-20020a056902120100b00b724127068amr24732924ybu.19.1680094056338;
        Wed, 29 Mar 2023 05:47:36 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id p142-20020a25d894000000b00b7767ca746fsm3454472ybg.12.2023.03.29.05.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 05:47:36 -0700 (PDT)
Date: Wed, 29 Mar 2023 05:47:34 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: wim@linux-watchdog.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, jamie@jamieiles.com,
	heiko@sntech.de, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH 2/2] dt-bindings: watchdog: rockchip: Add
 rockchip,rk3588-wdt string
Message-ID: <157937fd-0af7-4ff5-8430-2f956c7aafba@roeck-us.net>
References: <20230328210048.195124-1-shreeya.patel@collabora.com>
 <20230328210048.195124-3-shreeya.patel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230328210048.195124-3-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_054742_714829_132A1969 
X-CRM114-Status: GOOD (  12.61  )
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

On Wed, Mar 29, 2023 at 02:30:48AM +0530, Shreeya Patel wrote:
> Add rockchip,rk3588-wdt compatible string.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index 92df6e453f64..e7a87ce94772 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -29,6 +29,7 @@ properties:
>                - rockchip,rk3368-wdt
>                - rockchip,rk3399-wdt
>                - rockchip,rk3568-wdt
> +              - rockchip,rk3588-wdt
>                - rockchip,rv1108-wdt
>            - const: snps,dw-wdt
>  
> -- 
> 2.30.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
