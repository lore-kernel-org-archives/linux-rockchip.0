Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C27CC52D6F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Aug 2024 17:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CF6JrWt41HaSS9bMfTIZiHr9z0zHJjF5yD7diSF34sY=; b=GJ0/ZBNfF7Mvlh
	dKv2GbGcx2b2kBTmdLln/uSuMnD0h1P4d/jSLbw45ea7PtJR69YDmVg9D6Dh2BKGCaOcl0qNxCxPt
	GMSxv2jl8IVRLmZTOomL4jvX6Yro1Rf2/BRye2HJuipwqeijpYxQs8WlfkaRSvBW7xJkYjheVZgzh
	ZXpxtoCYSM85xDrsLgVHSaiv4DLGDJltWNoq4BZmiMGL6YBGT6sJ9aAHUuQmDlTLkUD4PUxI6Wnw/
	V9jGIwvvscEq7hb3Qb55X1LqVBUrLd88nq5gmEQcBntDsxbWbxgCdOYWsrRTkf2RRK78v/KS72M7w
	+PPF1i8PKoklsEs46NBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shu9c-00000002Zz4-3dPA;
	Sat, 24 Aug 2024 17:02:20 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shu9a-00000002ZyO-0bYP;
	Sat, 24 Aug 2024 17:02:19 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-714262f1bb4so2306266b3a.3;
        Sat, 24 Aug 2024 10:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724518937; x=1725123737; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fKGkZIK8/SQfJAkw54UvP8vTb+4IEIpgWYhwn5J9iD0=;
        b=fHko+FxgkiebXUmbgCXQOYawLJL/u2exjx/j+MhzucU6gJoX1WO9hjma1wLANOwzbo
         hAvfnrH3np1cAPyga7zGI5Vv27sHIUJ8pKGgZgK4V7dqZ0IdKkx5QE03DzZ/zhE7Fk95
         KCK8qclWDevr/IcNV+qdF0O5ewhTruWsnhbXvjyaJOFZOBsrRvfRy8gQjPwX1w/emFeb
         3as+BrjuBQpVHYsHttVHKLIN8PbAH7jPYnnkHo4DwWeXEbpdukH4sTP5+y6uk07J8DPm
         W0NzBELN7CI62/NMWohPzzwdxqwkoqlMyf3pmI8tkhwUwF2PY9CTPo7fokoC/fSHcxJg
         IC+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724518937; x=1725123737;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fKGkZIK8/SQfJAkw54UvP8vTb+4IEIpgWYhwn5J9iD0=;
        b=jggZJZpXJxHqmFaS0g7WNqJ+HKoj9Qnch8hwDEf3BAg0u2Jy3/dx7zKJhkA0uCTpCq
         dsmEfHNdYknpYf6f6Izj0fg/57jUJk9EaJ3g8iqziEeuOW3eZSyoJ2IAIIwAuib+Y0Av
         AsbX8Tz/QOQWcL4umMl2PMoCeTNTsH3hCTu3/bF98QVs0INCH9i+UE5kaeuryKiY3jye
         PfZkJT91yZU6T2zNcdotBICFcxbNIfuOkbqQDHcuzB1dCQMcetf0wKyBBei5HJquJfX7
         BqvMBS05xcSur9v4OGRdacZTlHag0xE5ZhZKp7pcCOtXoKRPVc2OTIGYYYKBeqr6vlpU
         IZcg==
X-Forwarded-Encrypted: i=1; AJvYcCVmgzpaHJst5moaBbx+hE8lqj3DsC8ockFtSgnPMHGSaYh3btgSsYDvHVLCgYq2ayN63QEhQowx7q5yyk78Kbk=@lists.infradead.org, AJvYcCXqeaEn7YYUqpPxC+C3YVD/x4CLXo2z4ymjmUbS+GpBZ6iHDnbtgFv9tYy8thA/KeVYtSmGeMhxqrLCJ/TJFeGh@lists.infradead.org
X-Gm-Message-State: AOJu0YxrmnMzis+ulC12sKASqVvQnCabMVVWl4VatNj3//n6rO91rVM0
	UokUSxJRRhytBLmzGsAD+sCBTkNukjeYnd2Cg3QLqbxSVBUE3LIv
X-Google-Smtp-Source: AGHT+IFNYqvo4YQ30dvxGyOotrvXcHIBWWeRuP1xnxTzOazp7HfQAjmpaLQ5fHI5e6aLNbzsGhkHLw==
X-Received: by 2002:a05:6a20:d49a:b0:1cc:9ff8:e76c with SMTP id adf61e73a8af0-1cc9ff8eb58mr1252206637.52.1724518936385;
        Sat, 24 Aug 2024 10:02:16 -0700 (PDT)
Received: from visitorckw-System-Product-Name ([140.113.216.168])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7cd9ad55283sm5066256a12.74.2024.08.24.10.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Aug 2024 10:02:15 -0700 (PDT)
Date: Sun, 25 Aug 2024 01:02:11 +0800
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: briannorris@chromium.org, broonie@kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org
Subject: Re: [PATCH] spi: rockchip: Avoid redundant clock disable in pm
 operation
Message-ID: <ZsoSEw9pTalRJBJS@visitorckw-System-Product-Name>
References: <20240824045702.3952922-1-jon.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240824045702.3952922-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_100218_213190_E0E57EDD 
X-CRM114-Status: GOOD (  20.98  )
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

Hi Jon,

On Sat, Aug 24, 2024 at 12:57:02PM +0800, Jon Lin wrote:
> Fix WARN_ON:
> [   22.869352][ T1885] clk_spi0 already unprepared
> [   22.869379][ T1885] WARNING: CPU: 3 PID: 1885 at drivers/clk/clk.c:813 clk_core_unprepare+0xbc4
> [   22.869380][ T1885] Modules linked in: bcmdhd dhd_static_buf
> [   22.869391][ T1885] CPU: 3 PID: 1885 Comm: Binder:355_2 Tainted: G        W         5.10.66 #59
> [   22.869393][ T1885] Hardware name: Rockchip RK3588 EVB1 LP4 V10 Board (DT)
> [   22.869397][ T1885] pstate: 60400009 (nZCv daif +PAN -UAO -TCO BTYPE=--)
> [   22.869401][ T1885] pc : clk_core_unprepare+0xbc/0x214
> [   22.869404][ T1885] lr : clk_core_unprepare+0xbc/0x214
> 
> Fixes:  ("spi: rockchip: Suspend and resume the bus during NOIRQ_SYSTEM_SLEEP_PM ops")

Thanks for the patch. However, the fixes tag should include the 12
characters of SHA-1 ID. the corrected Fixes tag should be:

Fixes: e882575efc77 ("spi: rockchip: Suspend and resume the bus during NOIRQ_SYSTEM_SLEEP_PM ops")

Regards,
Kuan-Wei

> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---
> 
>  drivers/spi/spi-rockchip.c | 57 +++++++++++++++++---------------------
>  1 file changed, 26 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index e1ecd96c7858..043a7739c330 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -940,33 +940,24 @@ static void rockchip_spi_remove(struct platform_device *pdev)
>  	spi_controller_put(ctlr);
>  }
>  
> -#ifdef CONFIG_PM_SLEEP
> -static int rockchip_spi_suspend(struct device *dev)
> +#ifdef CONFIG_PM
> +static int rockchip_spi_runtime_suspend(struct device *dev)
>  {
> -	int ret;
>  	struct spi_controller *ctlr = dev_get_drvdata(dev);
>  	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
>  
> -	ret = spi_controller_suspend(ctlr);
> -	if (ret < 0)
> -		return ret;
> -
>  	clk_disable_unprepare(rs->spiclk);
>  	clk_disable_unprepare(rs->apb_pclk);
>  
> -	pinctrl_pm_select_sleep_state(dev);
> -
>  	return 0;
>  }
>  
> -static int rockchip_spi_resume(struct device *dev)
> +static int rockchip_spi_runtime_resume(struct device *dev)
>  {
>  	int ret;
>  	struct spi_controller *ctlr = dev_get_drvdata(dev);
>  	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
>  
> -	pinctrl_pm_select_default_state(dev);
> -
>  	ret = clk_prepare_enable(rs->apb_pclk);
>  	if (ret < 0)
>  		return ret;
> @@ -975,41 +966,45 @@ static int rockchip_spi_resume(struct device *dev)
>  	if (ret < 0)
>  		clk_disable_unprepare(rs->apb_pclk);
>  
> -	ret = spi_controller_resume(ctlr);
> -	if (ret < 0) {
> -		clk_disable_unprepare(rs->spiclk);
> -		clk_disable_unprepare(rs->apb_pclk);
> -	}
> -
>  	return 0;
>  }
> -#endif /* CONFIG_PM_SLEEP */
> +#endif /* CONFIG_PM */
>  
> -#ifdef CONFIG_PM
> -static int rockchip_spi_runtime_suspend(struct device *dev)
> +#ifdef CONFIG_PM_SLEEP
> +static int rockchip_spi_suspend(struct device *dev)
>  {
> +	int ret;
>  	struct spi_controller *ctlr = dev_get_drvdata(dev);
> -	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
>  
> -	clk_disable_unprepare(rs->spiclk);
> -	clk_disable_unprepare(rs->apb_pclk);
> +	ret = spi_controller_suspend(ctlr);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Avoid redundant clock disable */
> +	if (!pm_runtime_status_suspended(dev))
> +		rockchip_spi_runtime_suspend(dev);
> +
> +	pinctrl_pm_select_sleep_state(dev);
>  
>  	return 0;
>  }
>  
> -static int rockchip_spi_runtime_resume(struct device *dev)
> +static int rockchip_spi_resume(struct device *dev)
>  {
>  	int ret;
>  	struct spi_controller *ctlr = dev_get_drvdata(dev);
> -	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
>  
> -	ret = clk_prepare_enable(rs->apb_pclk);
> -	if (ret < 0)
> -		return ret;
> +	pinctrl_pm_select_default_state(dev);
>  
> -	ret = clk_prepare_enable(rs->spiclk);
> +	if (!pm_runtime_status_suspended(dev)) {
> +		ret = rockchip_spi_runtime_resume(dev);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	ret = spi_controller_resume(ctlr);
>  	if (ret < 0)
> -		clk_disable_unprepare(rs->apb_pclk);
> +		rockchip_spi_runtime_suspend(dev);
>  
>  	return 0;
>  }
> -- 
> 2.34.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
