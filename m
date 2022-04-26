Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54E4BC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 20:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUxPWDZwvLTVhuo17RsvyYERmJVTbj2kE7077xIfKjQ=; b=OefbIMOoqvseJd
	Mw6xq3uE0f5AtQ2zqw3VfpWFNALEkX8mBqchri7a7xREQDsMclKGu6o1z5GnAoaHc2Htlnek6EEX8
	In5TJXccbrZCrpa5rV1/QoCHKTjl5Kzl3uPjchB6fgrI5p7pe84NSyQFfQw0Ssgy5PReUK0vIx4Rz
	FFijt4INn0wX/aHTDqBWyKtCeQ2JH7kiwuB7BsJn+ZgG9XKS8T16aW6iqaat+7S6CW+xOu21g3pKM
	086Ln6lwGpWyjjXm6Vil5n8O2j+71rqmzpi/60c7ihbaBn4HbHjhhv1M93XD0uajNV6zVq71dvXMp
	yNYRmNPBZU7m4OEsIwZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njRZp-00G4eu-Kt; Tue, 26 Apr 2022 20:14:25 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njRZm-00G4cw-HL
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 20:14:23 +0000
Received: by mail-oa1-x36.google.com with SMTP id
 586e51a60fabf-d6e29fb3d7so20574168fac.7
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 13:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eEFl4B1FbvWCN+VcPB75wKYhR64TSlqT3NDBP8YMG6w=;
 b=pvQykELPdAYRIv4n3PF2TsQ0zl3cWJBZFPdpWAvODxpyPvY0m8eq9jfCqlyvYeD4yU
 fJO2Kj0707/bgK0QRNynPZcxMgxbiVtImKpWUG1TJN9ZvqnQWnYVFydmcCQH8rBdDyA0
 djLWVhC5EtDPU1qCrvoV0Gny4+uBED4ZOTDNPdJE0xcKzbLs6bdvqbiBhxzA+hCwPI86
 sDooyuCIr2JOdt+bDBI6hWALksoGSGQH/oNyn/kKLf4Ne3EgBezKvYCfI5mQm3y8HIWv
 5GF36UvMNNEfcL+sRyfrXLE27TzxLJRMuRJ2p0VcRdbUya3paTwwe0le8ag8EEO1/wsH
 2Nxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=eEFl4B1FbvWCN+VcPB75wKYhR64TSlqT3NDBP8YMG6w=;
 b=7yeTsYLf+W7e8qjIjAEUos8CxeOYyeVDQadG6kBrTWMyXb4Tpwh/HzlDW+7ef/g663
 5EANNoYAfPnJVMUPyzM/lqJ9FiRWGADSVNISHg7Gpj7EaAn6yII9qJzeYTuJaab3Tiph
 4ohjP/TIl++ghQwVWr9LrHT1x6g6oVS7UKUD5DEKplWej6ctL/p0h8Nea6vpc1jinkyR
 LG6w5fiASMrZP7t65vnI02cT69zbZ0sZfqmpKrLWDKjNznM9kFSMFWEpD/cBtdTx3U02
 3PpHE71BIEaERO50lyo2/LSubjvKNMWnmjcztewqtIfkDckFMfzal7AIOacL8uc+K5Ax
 FDeA==
X-Gm-Message-State: AOAM53365xKrWkDjggjTMj1uTN/YBybxpIgCQ+q1eb+A9WwvUqrHMvVp
 2ABxlqDzJLVqZC3tM4dpe7o=
X-Google-Smtp-Source: ABdhPJyEF26vNitwwhdzPEF5PDBAWD8n5cbVdb9adbklFjpzJS6fIM6S9OxFvJuSXIVZPIFkuAS/Bw==
X-Received: by 2002:a05:6870:5896:b0:e6:6c21:3584 with SMTP id
 be22-20020a056870589600b000e66c213584mr9849841oab.220.1651004060310; 
 Tue, 26 Apr 2022 13:14:20 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 r23-20020a056830237700b005b2610517c8sm5410175oth.56.2022.04.26.13.14.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Apr 2022 13:14:19 -0700 (PDT)
Date: Tue, 26 Apr 2022 13:14:18 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] soc: rockchip: power-domain: Replace dsb() with
 smb()
Message-ID: <20220426201418.GI4093517@roeck-us.net>
References: <20220426014545.628100-1-briannorris@chromium.org>
 <20220426014545.628100-2-briannorris@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426014545.628100-2-briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_131422_610266_91AAEEF0 
X-CRM114-Status: GOOD (  20.05  )
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

On Mon, Apr 25, 2022 at 06:45:43PM -0700, Brian Norris wrote:
> It's unclear if these are really needed at all, but seemingly their
> purpose is only as a write barrier. Use the general macro instead of the
> ARM-specific one.
> 
> This driver is partially marked for COMPILE_TEST'ing, but it doesn't
> build under non-ARM architectures. Fix this up before *really* enabling
> it for COMPILE_TEST.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
> Changes in v3:
>  * New in v3
> 
>  drivers/soc/rockchip/pm_domains.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
> index 1b029e494274..cf16ff9b73b3 100644
> --- a/drivers/soc/rockchip/pm_domains.c
> +++ b/drivers/soc/rockchip/pm_domains.c
> @@ -178,7 +178,7 @@ static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
>  		regmap_update_bits(pmu->regmap, pmu->info->req_offset,
>  				   pd_info->req_mask, idle ? -1U : 0);
>  
> -	dsb(sy);
> +	wmb();
>  
>  	/* Wait util idle_ack = 1 */
>  	target_ack = idle ? pd_info->ack_mask : 0;
> @@ -285,7 +285,7 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
>  		regmap_update_bits(pmu->regmap, pmu->info->pwr_offset,
>  				   pd->info->pwr_mask, on ? 0 : -1U);
>  
> -	dsb(sy);
> +	wmb();
>  
>  	if (readx_poll_timeout_atomic(rockchip_pmu_domain_is_on, pd, is_on,
>  				      is_on == on, 0, 10000)) {
> -- 
> 2.36.0.rc2.479.g8af0fa9b8e-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
