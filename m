Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61D34E77184
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 00:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fum1CYoBwGgXcxqGacAjBRazde87X6Bx9kbnMz05XYg=; b=a+ASHEgBoklHl0
	CdsAWAcT12lbjT/w1QMEdtsdZ+u2WgeLjj4jjSqXCjFDwSf1BPu7gPHgQlegWgik7ZJNlVc+AcbdB
	CFxSPUi+EEzPkFEzZcA8MZ7XKtFLBhmy+Yl3CwReZugDgkc3PoPKewauUQdrlQFFfzW8GRLn9egy6
	/1qol6O5yeWopHNuWMYlKpSOXJZz500NUt5Ot+7xRZdgW8l7glcLwoyEZabQYGVEEjFNWTUSXwix8
	jiIHyHObMpBvmiXH/XKN7UPAdk5C6bF6BzCPJtnN8P3oGWZeXwkYG9dP0ePX2qXnBx05bLOUKnWsU
	HRMyJ6B1vEvTshapazlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQka-00000003S3s-1jaR;
	Fri, 20 Dec 2024 00:20:16 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQir-00000003Rbc-1A82
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 00:18:30 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso1345085e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Dec 2024 16:18:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734653908; x=1735258708; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JdEM25avAV3Wk0/A8V/RskskKqNdHIG3q8iPcW7Zhuw=;
        b=bstqHfkfqSuemiGFxEujZYN7DETYcKgRVlm3u8FMxG/FRGwC5yEgDMAoKwA5+IgVdk
         98R/P5Bih14thg95sSOH5/Y2qI8mp5MZS0MLyfgDkA/73sBFIN7w7D+8lEMeW+Qop67S
         XTVz4KDtAjmjSkW8zwiqdDBEEhM68CoOqDjkigdcR2pZBDb9C2c8Z0xYcLUWYEn/gOTu
         BFrLcFyny+SQiZAw+ug4dNvJNU5pDXvIEr/wcpF8NOvJsy5+3WrbPCFKnayFImTU6/5p
         y5ikXJzFkJCrX0Ms67CrvvvlQiLxvEFAfQ4BEoWYrFoCr42JmaglPF7aVQekapC/GcIe
         JQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734653908; x=1735258708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JdEM25avAV3Wk0/A8V/RskskKqNdHIG3q8iPcW7Zhuw=;
        b=bnBwzKJIdS9i2+bGfIwA3A1qaKbIYm1xwqF675DbzZPqye9YyYwOZQSAITGLStxxZe
         jZXYb2F5gtqQIKHKfsX7HzpLtlfLcOohJAzLyhCKgdCYDuUGm8ngPx4nO17VkMaBz/mM
         VzvemjdosXESXkwnNL7CAEWokUW1eYq8vjMxa8miKRWmwzrWJSRXzNt/TZYMkL7kI6P0
         EqsWjtqaZPgQ3aNjp9J5mCTpGJ59uDPSLx1TjfbCdB6BmB9mwIS15zQjRlCORhC1DWtI
         bdZWJgTLzWLf3KXp4l4lF8npYZW7oLA5KVgjwiFOgDAaQU6san3wIUHaakKLCeCed89W
         0HNA==
X-Forwarded-Encrypted: i=1; AJvYcCU2ITx6YP5Tal/3PcrIp9dIUlfHcMaZjFxgeUstlfNTn6cqyX1NhB3fQIOj0LnYUwpd5tRMpZtb+KEHfivcnQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5iLcyOztZE1EHvz2smpXa6CC9NzOvGactcBEXMqHOOKeDafUP
	+rJeWHIdIPSzhCgOupdyXtqfxLs0YDoFtogt6dY5pG/GnzPT2Q+DaR/QajfHnw0=
X-Gm-Gg: ASbGncsyLeLqWMvcfDqaf61Y6/u0C689wRvb7d1SKo1kcoAT01HXXFpl2FaOKN0QzLt
	+j0OG8bN0noDZ0XSRDdni1JEXsVGiABJZ0l3fSaezrgLsdEYC3X0TQSE1X4JQ9l11CFPqDtoOUk
	VSPJVqDRICK21DTYwMiaND8sJMQVXxv+9aHndwHag5sT35hLb1si3Cmv5hVVTKeyjT91xUY68a2
	8d7T+f89E4jHdg01jbza2iVjxFPXsexRrKLaF7JTrVuWiDCdfmiGxBEJYT8UvyQoTK959N+xmnl
	+gOefvE75fV+ebGqCqDCy6ioNlQlkCtTN8EJ
X-Google-Smtp-Source: AGHT+IHaBhOQ2F/tQJgKM89Gv/3h/pUJDiIxhbwnt6itHhtFdLYkVHk0tzYt/YbigfNxUGxwQcqftw==
X-Received: by 2002:a05:6512:3d16:b0:540:1b2d:8ee1 with SMTP id 2adb3069b0e04-54229522508mr159038e87.11.1734653907712;
        Thu, 19 Dec 2024 16:18:27 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238135basm315388e87.130.2024.12.19.16.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:18:26 -0800 (PST)
Date: Fri, 20 Dec 2024 02:18:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v3 10/15] dt-bindings: display: rockchip: analogix-dp:
 Add support to get panel from the DP AUX bus
Message-ID: <bjkcue3dfgaf5i66cqbiczifo7r3xngupghklxgevwqpwfeeix@i2jfd477igri>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-11-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_161829_311527_EFF1F850 
X-CRM114-Status: GOOD (  15.38  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Dec 19, 2024 at 04:05:59PM +0800, Damon Ding wrote:
> According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
> it is a good way to get panel through the DP AUX bus.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
>  1 file changed, 3 insertions(+)

Business before pleasure.^W^W^W Bindings before the driver.

> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> index 4f84e8849876..c45d92a2d901 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> @@ -49,6 +49,9 @@ properties:
>      description:
>        This SoC makes use of GRF regs.
>  
> +  aux-bus:
> +    $ref: /schemas/display/dp-aux-bus.yaml#
> +
>  required:
>    - compatible
>    - clocks
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
