Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E0E4C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 20:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoVTpg0vbOUxeDbmD+CBkWFy+WU1MWUUCp6Gmb4iHiw=; b=DPCoyYt8CWY+Pr
	RPMsvKnya7flZ1pKGA9iNYdfEkdR8O3mbKqlosAgmBsBtc6GdB6srz/XjeMdOp8IATTKs4HYRvHrn
	tT5GzvoKvHvJWA3S2+0AxS4it8tfjBJ65k+BKR+Pt19Xm6vImqIWtmolPPR5mrh85+Y2UFTudaLZ9
	9My6nQgV4IU/MOkQYmCgad44OOTKKVINWgpeAVnIXfGzpSweF26GdDyL8d+f/zkN/0c24tnNtY2ha
	KZ+n81EBPqiAsYF8UYJBCF2mUYGyYGGdk4cRpqr729rpPgOXjtGSu3fzLqWweJIh7zVJmtV+XU23z
	l74U32G1JgPaQx79YQag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njRZW-00G4XL-1i; Tue, 26 Apr 2022 20:14:06 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njRZT-00G4WV-Tm
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 20:14:05 +0000
Received: by mail-oi1-x22a.google.com with SMTP id e189so21946952oia.8
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 13:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LOF/swU7ri17HNXlnT7ndFuNSzBTT2l6UmX2G8t0fao=;
 b=EpcCQfcX8t4tCHTkCeCt7XTlaO4cJlPlfOe5Yq7QXrx+iwdOvURAOX3BenP9I9NxTg
 dxO/zHL+D8q3dmjsHi87Pdtco459mLR9p9OL/vn5z9V87y+JLthD7h+5QS7o/Ev9QVb6
 Ent0ow9LRg9IIvmt7SzKVKoGIGHxpuYarl32h1juJi82dBm9lDtLlurW2ZR6Ba6RD9Ue
 LIfoQyWAteLcdB3NIj/h/kUle8V3gcyyKJaw7xydnZ2151CuDvqL8JiNl7pYO2eFhPbk
 bchpvdCVkot+QjLIVBwUzcjYYoR9aQn16BHusvPq4TDN+eCmTdoZRFyeXXuWeCl9J6DY
 NBIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=LOF/swU7ri17HNXlnT7ndFuNSzBTT2l6UmX2G8t0fao=;
 b=K08gtokcFl/mr/F4JrwAI6o7XApuoXc0vOJeoAq7nrQphiaYLg91DwLWk9L8zbnTyT
 gIleg4K5fZdk9RzofYksnir991C+Kls1DvGS9WcN3wF/iTtVIRhj6Ntulx16sspUU/eJ
 iSHz3kq+2POXvggRwhDX/fmRsF8lS6b8S7z26ouhQfqaJrD5Iak2ybRMPC3Ic9ZZfNj6
 q5zQvhS9o0SNh45tw3LpuRmxacqaLYwN9pGtcyupdYjaXqxO9ePQUK6k2tdqUc4DNZDl
 f3OIEoRc/iFIcrBwlm23q2NvcREj9Nbxx0HCeB+DghIWWTUlOZCbHDiJnJEYJqbvOcyU
 8m/g==
X-Gm-Message-State: AOAM532vhrI4yaAq0hks1WtWupVLRdwLyz0ShBjMFnBG54jmePoeRZQP
 7LL2MN49Rj6U3p8YCUdKk7k=
X-Google-Smtp-Source: ABdhPJz7ZBRrPySGNSDh4uQ3vrQ+SI3TKBgjip8c1iucs6eTt4im6RhPCVdr+b7FmdPmTtUdABULTg==
X-Received: by 2002:a05:6808:118f:b0:2d9:a01a:48be with SMTP id
 j15-20020a056808118f00b002d9a01a48bemr15280519oil.265.1651004042074; 
 Tue, 26 Apr 2022 13:14:02 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 l96-20020a9d1b69000000b00605db61f2f4sm62293otl.49.2022.04.26.13.14.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Apr 2022 13:14:01 -0700 (PDT)
Date: Tue, 26 Apr 2022 13:13:59 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] soc: rockchip: Clean up Kconfig whitespace
Message-ID: <20220426201359.GH4093517@roeck-us.net>
References: <20220426014545.628100-1-briannorris@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426014545.628100-1-briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_131404_005570_E04649A3 
X-CRM114-Status: GOOD (  21.21  )
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

On Mon, Apr 25, 2022 at 06:45:42PM -0700, Brian Norris wrote:
> There are spaces instead of tabs, and other inconsistent indentation.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
> (no changes since v2)
> 
> Changes in v2:
>  * New patch
> 
>  drivers/soc/rockchip/Kconfig | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
> index 156ac0e0c8fe..aff2f7e95237 100644
> --- a/drivers/soc/rockchip/Kconfig
> +++ b/drivers/soc/rockchip/Kconfig
> @@ -23,23 +23,23 @@ config ROCKCHIP_IODOMAIN
>  	  voltage supplied by the regulators.
>  
>  config ROCKCHIP_PM_DOMAINS
> -        bool "Rockchip generic power domain"
> -        depends on PM
> -        select PM_GENERIC_DOMAINS
> -        help
> -          Say y here to enable power domain support.
> -          In order to meet high performance and low power requirements, a power
> -          management unit is designed or saving power when RK3288 in low power
> -          mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
> +	bool "Rockchip generic power domain"
> +	depends on PM
> +	select PM_GENERIC_DOMAINS
> +	help
> +	  Say y here to enable power domain support.
> +	  In order to meet high performance and low power requirements, a power
> +	  management unit is designed or saving power when RK3288 in low power
> +	  mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
>  
> -          If unsure, say N.
> +	  If unsure, say N.
>  
>  config ROCKCHIP_DTPM
>  	tristate "Rockchip DTPM hierarchy"
>  	depends on DTPM && m
>  	help
> -	 Describe the hierarchy for the Dynamic Thermal Power
> -	 Management tree on this platform. That will create all the
> -	 power capping capable devices.
> +	  Describe the hierarchy for the Dynamic Thermal Power Management tree
> +	  on this platform. That will create all the power capping capable
> +	  devices.
>  
>  endif
> -- 
> 2.36.0.rc2.479.g8af0fa9b8e-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
