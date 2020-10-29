Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AC3C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 14:31:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 37EB421548
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 14:31:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cPorXka5";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EN2kcQVa"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 37EB421548
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DieKyV/seuuWUIvyKGBRTGGApz/zKQw6TP7Q0T5IAcY=; b=cPorXka5vP2UbjWEkG+2uo5CM
	laPfpf3A8umFcVe/41Zb8RBgkjDtuOQcflESB6ZroDOBb0Il/afDPqu9ipsRVyrqiJVDup3dedc9G
	I4AXZ0xPJz3yZWbinR3HC0muxtwGiLU5QPlY1nIWWb3meGHVlY42aveY0HqphcWg/N8TPU25SqEdi
	jJXw5sEWMEnJmExOuWtqsxg6OXdMQRcpQgKmy2epQX5ZwK5LkdDsJJmADS8DxRHk/lDN7hYiiuJTc
	+SnU2vNXOI9a42YA+UVDprGNMr/iHtZCdeG9oA2/1qDFQ10nRNZMpYXOOMP8MXULDPpC3t/Gcm11/
	tNHmxydDQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kY8xU-0007UY-CB; Thu, 29 Oct 2020 14:31:20 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kY8xS-0007Tv-GI; Thu, 29 Oct 2020 14:31:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id w21so2473813pfc.7;
 Thu, 29 Oct 2020 07:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=wLslsAi2G28LH9YJ0zfY79HW10N4bzzwRkzXCVZRDwY=;
 b=EN2kcQVa32mEd/K4hOG8By0UDzPzo+BftuvRI8L1lXA7v0f6Btzj8FmrVO4rRyiMnK
 o3v+rD6VTjsm40RtPPixW0a84KVo4k5qIs+5/TpNBLdhvrMF2NiO5KVnWk5rD3hGhxXe
 9ehk+yumZOOzJ/acHlyz8JZhgsLBgNAZWIWUjQM6EyEK1eZidelPFpddHofdrvsX7FdI
 WRam8PpMVC+lBGXVptAk2oQ9PCVTCm74PotHP+/0BDKlsWxwilH2qDcrrhVbY0b+ctBM
 FktMFpMxgQqIyP7S4uCM3UUfhSv32Yjc6UI+uDTnnivwEAXL8+O4exIuHTxhkRll/cdq
 7W9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wLslsAi2G28LH9YJ0zfY79HW10N4bzzwRkzXCVZRDwY=;
 b=RpIRJ949Ju54Ra1QfI0TvTn2yMFuuS5dvJDzMAOltbAhLhcM4OxXmKjTpkQHHMupQn
 k6F5qLzfCtBFWxrUYTaS62oX/+EvACEUjkc9DDmWZl93jJW6a4Ld3MgOOgBcVrfeIF6O
 Ayw6l44GH4K01f4JnC2qZAIjGHoMAU1t3zSqIq0ukIzgkCuPTsl8iaRaR4F9sTC/La2e
 HHRFiojRf2YESC+eZsk8/ft0XJQlsaC5o2gmIzJ14qgGvuejXddte6Wy/cVPqx24bgFd
 mpAL2yODDiPGXMXd547S9zJkte2bHECxiKrxlr/e9Ww/2rhUddIOwABZdyueq7VZ6F4I
 0Hjg==
X-Gm-Message-State: AOAM533MMaTea8yUhlZc+SUnX8xdMYNDBLLq204FZx5shNFcIVyL9XDI
 sMbIUBKCq4pfhQJugBILON5aOrWrrFabL1+g
X-Google-Smtp-Source: ABdhPJy0sr40Jhllz/XQxRR+IEcDDKRuW5TxBqDWR9ZWN1OmyVVdN4IBmHlTPx+KqBxsvCtsYSKtYw==
X-Received: by 2002:a65:62ca:: with SMTP id m10mr4245650pgv.407.1603981876521; 
 Thu, 29 Oct 2020 07:31:16 -0700 (PDT)
Received: from localhost ([2409:8a28:3c42:6840:9efc:e8ff:fef2:1cdc])
 by smtp.gmail.com with ESMTPSA id b3sm3047003pfd.66.2020.10.29.07.31.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 07:31:16 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Thu, 29 Oct 2020 22:23:25 +0800
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 04/25] ASoC: rockchip: remove unnecessary CONFIG_PM_SLEEP
Message-ID: <20201029142325.mhq6azowlyuurhtl@Rk>
References: <20201029074301.226644-1-coiby.xu@gmail.com>
 <20201029074301.226644-4-coiby.xu@gmail.com>
 <8589f68f-fa6b-d75e-d7be-fbb354adbde0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8589f68f-fa6b-d75e-d7be-fbb354adbde0@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_103118_669573_60A12D5E 
X-CRM114-Status: GOOD (  15.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Heiko Stuebner <heiko@sntech.de>,
 open list <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Oct 29, 2020 at 10:33:52AM +0000, Robin Murphy wrote:
>On 2020-10-29 07:42, Coiby Xu wrote:
>>SET_SYSTEM_SLEEP_PM_OPS has already took good care of CONFIG_PM_CONFIG.
>
>I don't see anything in the !CONFIG_PM_CONFIG side of
>SET_SYSTEM_SLEEP_PM_OPS() that prevents unused function warnings for
>the callbacks - does this change depend on some other patch or is it
>just wrong?
>
Thank you for the feedback! I'll add "__maybe_unused" in v2.

>Robin.
>
>>Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>>---
>>  sound/soc/rockchip/rockchip_pdm.c | 2 --
>>  1 file changed, 2 deletions(-)
>>
>>diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
>>index 5adb293d0435..f3c19310aeeb 100644
>>--- a/sound/soc/rockchip/rockchip_pdm.c
>>+++ b/sound/soc/rockchip/rockchip_pdm.c
>>@@ -574,7 +574,6 @@ static int rockchip_pdm_remove(struct platform_device *pdev)
>>  	return 0;
>>  }
>>-#ifdef CONFIG_PM_SLEEP
>>  static int rockchip_pdm_suspend(struct device *dev)
>>  {
>>  	struct rk_pdm_dev *pdm = dev_get_drvdata(dev);
>>@@ -601,7 +600,6 @@ static int rockchip_pdm_resume(struct device *dev)
>>  	return ret;
>>  }
>>-#endif
>>  static const struct dev_pm_ops rockchip_pdm_pm_ops = {
>>  	SET_RUNTIME_PM_OPS(rockchip_pdm_runtime_suspend,
>>

--
Best regards,
Coiby

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
