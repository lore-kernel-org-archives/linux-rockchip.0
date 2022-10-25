Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88547C38A2D
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Oct 2022 12:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmhLFjAEdeyB+3MTfUi6en3BMcQruA5up+8bNhPhxJc=; b=HDJdmBofw/T4wG
	TwhJ3l/U/zLDwib7hsUiocjTRhrV0bG+Rd43qsdmmnK4U6E167VQNKF9V33l8yOZ/AG1gzsA9bv8t
	4C+pGDMv8/Cwh/x6RAw7ykXrc7hfbEfRD/dX9iPwXTtx8nSeWryGI7KBlUIif1gkv3bi+0T5nXa4M
	BclgEpdMCno4SWqeHxaZ+0gQALQf0xY3P5+GNY74sxsMjc40H/b7WGWWW+xcJciJ+qgPqOgYzsHiI
	TjrQbQFe49agI0bO+ajLc+AiC0H2BK4NdM7E42V+OSNWmbQV/g7rAzL4j1cjjefLpWcQk0UbguSc/
	dQzIDiQO2iOMvSrVsGUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJHc-005FBF-2y; Tue, 25 Oct 2022 12:43:52 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJHY-005F8R-IJ; Tue, 25 Oct 2022 12:43:49 +0000
Received: by mail-wr1-x42d.google.com with SMTP id bu30so20646344wrb.8;
        Tue, 25 Oct 2022 05:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h4bB9DG6I4yQg1VaBFFskr0kCoybfjGK9a489xozqbQ=;
        b=CGWd9EGmlJFK+YEPgI0l2hwe3QK0ZhOT+JHvVsiZC12bo+c4Jl/FAYJrdHvAalOpGt
         tllbwPXcjRHsXQblFv5wBCsA+ty066EcfLUUp3vq6jrgpqnCqf5fS8/J1FkAml46w5yQ
         tGseitrCIP8oromfF0eRIfZdWQWi2HtjVV0Dkq9KDifUwNdXpfMbqoiGOSksX7lTAln9
         bLuFQYXiUwWkd/i6dJqmss6GUSSdrz/4sDW9ZpmRhAlNVYZ+yjvTlyCsYz2IfUoCLaTa
         kjMSP2GYVCuZOnYOe03eK2yd8xVrU4sjiIjmnirDbhaLGlIfyZ2JIE6LdJzGBTV9bPVK
         +Fng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h4bB9DG6I4yQg1VaBFFskr0kCoybfjGK9a489xozqbQ=;
        b=Su6sNx5csVuvPV0IIBA+tnVsa0Xd9daqFID2nM6n8SqYtcQh9m30kc0BG5/JhTLyPS
         sWbpRTgw/KeCBdVHF8rhMbwxKQaWNMubnvTMM6Ckiz+ldSQnnhm1YK2NlAYTvsvJfgOz
         2GrQBgs95SxOEaJgz57p0vAAh2odsLbFHaV1bqqgAPxqULkoIvqCPLntUyuOnqyMZeWR
         Z+8wJHqSZzB071HVmcWo5OYMUt6LZMyD7gelmess19D7IXVTUrB4KW8WuSuTx61N4OXQ
         G7195cGXSCSKffBD+b86QSn+xsM8elxDL8etuduGOFljFBQwvmMBv/qHEK8j6Ok4Yipc
         uXaw==
X-Gm-Message-State: ACrzQf0mw2xerHnY9Fp//RCtXwG1R1v4RrPAFm7UidWIt4dOm3Nr0n3h
	9aXrqBLk32QO1uFbo/+3vY0=
X-Google-Smtp-Source: AMsMyM5SL1IRETz58Y983NAHYtT70ugOevrG0yz5LC3UXysNz92AImLC0KI/69prTy1jTOu7poogHw==
X-Received: by 2002:adf:e985:0:b0:236:6a53:3a16 with SMTP id h5-20020adfe985000000b002366a533a16mr8737605wrm.501.1666701827348;
        Tue, 25 Oct 2022 05:43:47 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id bp4-20020a5d5a84000000b0022e57e66824sm3163700wrb.99.2022.10.25.05.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 05:43:46 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] ASoC: rockchip: i2s_tdm: Add support for RK3588
Date: Tue, 25 Oct 2022 14:43:45 +0200
Message-ID: <3478206.uukdV1xfrs@archbook>
In-Reply-To: <20221025124132.399729-5-frattaroli.nicolas@gmail.com>
References: <20221025124132.399729-1-frattaroli.nicolas@gmail.com> <20221025124132.399729-5-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_054348_651136_730D8CFB 
X-CRM114-Status: GOOD (  18.43  )
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

On Dienstag, 25. Oktober 2022 14:41:32 CEST Nicolas Frattaroli wrote:
> This adds support for the RK3588 SoC to the I2S/TDM driver.
> ---
>  sound/soc/rockchip/rockchip_i2s_tdm.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
> index 917f17107891..08b90ec5cc80 100644
> --- a/sound/soc/rockchip/rockchip_i2s_tdm.c
> +++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
> @@ -1318,6 +1318,7 @@ static const struct of_device_id rockchip_i2s_tdm_match[] = {
>  	{ .compatible = "rockchip,rk1808-i2s-tdm", .data = &rk1808_i2s_soc_data },
>  	{ .compatible = "rockchip,rk3308-i2s-tdm", .data = &rk3308_i2s_soc_data },
>  	{ .compatible = "rockchip,rk3568-i2s-tdm", .data = &rk3568_i2s_soc_data },
> +	{ .compatible = "rockchip,rk3588-i2s-tdm" },
>  	{ .compatible = "rockchip,rv1126-i2s-tdm", .data = &rv1126_i2s_soc_data },
>  	{},
>  };
> @@ -1556,7 +1557,7 @@ static int rockchip_i2s_tdm_probe(struct platform_device *pdev)
>  	i2s_tdm->dev = &pdev->dev;
>  
>  	of_id = of_match_device(rockchip_i2s_tdm_match, &pdev->dev);
> -	if (!of_id || !of_id->data)
> +	if (!of_id)
>  		return -EINVAL;
>  
>  	spin_lock_init(&i2s_tdm->lock);
> 
Oops, forgot the signoff on this one.
For this purpose:

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

My apologies.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
