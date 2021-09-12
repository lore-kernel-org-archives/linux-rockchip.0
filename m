Return-Path: <SRS0=wty8=OC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 817CBC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Sep 2021 22:18:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A22661039
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Sep 2021 22:18:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4A22661039
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTy0V4gx+YPyW7UMieGeiMeqSXnWKiRrVSPTCqyd8/4=; b=kVsL0AIOF72hK9
	/5hdkAnv+CuO0hjbFxJFkUZ+vauwIvy3AmqCz0lhTPWERl3uSzeLoQ8I5UfB9vgR0T+BMCrjfg+SW
	mSV3vHdq4jwgm53hkQM89lKM4k825y6MB8VCUyh8B7WscDDGCHulpjUZKh4xi8x7ew07QEs7uGXir
	cciB3MJy5SDGtzFw1SwSu7Kl3+feYJM6RvvP+n1K2JigS7+JN5Wu5oCIda5U++Y5bzNGRex+N3Tz8
	oDikD1Bymnu4/07iTx2CQrJm393nRz19K1QxWKmnjI0oCoOmL48ghCPL57gDVTBmQUdTPLzTpuLMD
	VC7OZRulc6ou+EAQCLEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPXnk-00HSHP-Oe; Sun, 12 Sep 2021 22:18:16 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPXbR-00HPMc-3O
 for linux-rockchip@lists.infradead.org; Sun, 12 Sep 2021 22:05:34 +0000
Received: by mail-ed1-x543.google.com with SMTP id n10so11319649eda.10
 for <linux-rockchip@lists.infradead.org>; Sun, 12 Sep 2021 15:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gsw3HQI/E9TwC/JC/Uvpmt4Q2Sj6/F4ssD+a1Ax5o1c=;
 b=ZrtCTyWOlbUMMilXz4T9VaOiEfDBfjm9kGmxyUOa2O2LQf39uG17LNE9zCc2atDxi8
 D3Sz+MwEM1Rlukt//Fxfv+iryk/O3ZjZeqfncbsslGQpUHmi2yOr4H+xulK+pxNz8WfV
 RQ2eRqzwELA6VeHUS44ZaDld3LyxJhwSA/w+RJa780ReYP2U3GArJwARZtG6PWgo/dfX
 niuCmlXwgyp5flO3xgM5PDp/O7BKPmuJCI8GFoezE621MKAE4KxBm5Uohkh/D4PleE0B
 h7NkE4KUyHKT2Qsj4vJBO9jkY1CdB9WYOoYV95OAMpwS5EmuqUxvUetxrBHEb9vo6+W8
 /HcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gsw3HQI/E9TwC/JC/Uvpmt4Q2Sj6/F4ssD+a1Ax5o1c=;
 b=XXng23eBufjeHiiaa+FE69HPGT6vrTjbt6cHxPxue0O1PB8K9z9DLcJDmZt1ZkYrud
 mc5l9rlA+TUCPzGkLcrB7WyhnovnGlI386K046yFuDUoLp4Hgj99ji1c+MN/nyQ7381v
 nqYNog9dR+tgjOFINnb0BEUSuUlZYJ0nimOzyWth8ap+KfbW6hEPE7zsFvjndxIjhXAT
 /d7vdPLW+xMLnGGw5oDE+La7FClM1/rA3frilyeGvWgYx2r6+5QIfU4hAoIPVluZLjYZ
 8MW+VTgt6Xgd8gUzq9uWR8F4ODCk24sQUSRz4P+lqCLDsFzm+dsw0GLeWt1r5GAd87RX
 /ODA==
X-Gm-Message-State: AOAM533uW3tDaXFIZmLIV0KPJrZHlr5jvJUCLZuOu6HJXQmBBFQ+9vWk
 S+Z4Bd65YAPKWx9Q1eSRHphCEHQvuSo=
X-Google-Smtp-Source: ABdhPJwY79Py82Co2FO620xbNi6IqrncYa7AumskksivIbO7qrmf+1r924bxxpyuDRGx6VBEwQmuuw==
X-Received: by 2002:a05:6402:3487:: with SMTP id
 v7mr9815129edc.102.1631484331039; 
 Sun, 12 Sep 2021 15:05:31 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id q11sm2896077edv.73.2021.09.12.15.05.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Sep 2021 15:05:30 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: Adam Borowski <kilobyte@angband.pl>, Adam Borowski <kilobyte@angband.pl>
Subject: Re: [PATCH] drm/rockchip: fix a -Werror fail on !CONFIG_PM_SLEEP
Date: Mon, 13 Sep 2021 00:05:29 +0200
Message-ID: <6944260.REve3BRNNo@archbook>
In-Reply-To: <20210912212935.11965-1-kilobyte@angband.pl>
References: <20210912212935.11965-1-kilobyte@angband.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210912_150533_225957_BE6449B9 
X-CRM114-Status: GOOD (  15.75  )
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

Hi Adam,

On Sonntag, 12. September 2021 23:29:35 CEST Adam Borowski wrote:
> Signed-off-by: Adam Borowski <kilobyte@angband.pl>
> ---
>  With Linus suddenly loving -Werror, let's get clean.
> 
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> b/drivers/gpu/drm/rockchip/cdn-dp-core.c index 8ab3247dbc4a..bee0f2d2a9be
> 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -1123,6 +1123,7 @@ static int cdn_dp_suspend(struct device *dev)
>  	return ret;
>  }
> 
> +#ifdef CONFIG_PM_SLEEP

I think we prefer the function attribute __maybe_unused here, because it also 
makes sure to get rid of the warning for any functions it references.

>  static int cdn_dp_resume(struct device *dev)
>  {
>  	struct cdn_dp_device *dp = dev_get_drvdata(dev);
> @@ -1135,6 +1136,7 @@ static int cdn_dp_resume(struct device *dev)
> 
>  	return 0;
>  }
> +#endif
> 
>  static int cdn_dp_probe(struct platform_device *pdev)
>  {

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
