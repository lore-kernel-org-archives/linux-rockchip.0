Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48FF4C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 10:34:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 930A120791
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 10:34:07 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ellOlJ57"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 930A120791
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Iqs0j3Es4R3RDch2UUWJM05uu7PmzPQd5R4YaS8Jv/0=; b=ellOlJ57TdF4I5dlsTGAv9MEW
	yuFSo2HPS2Jxf96rC7W0C9Fv7yEaUkJA+LKo0aFg2aC3JltuWvaAo4CRQuw9udydK2soeb0rDVTB1
	B7RhoyeQqW3YLXoPPwP63BK9FuZcVD/p4XvMTFhtyAh76swJb2Nhvp1H7Hy/+Ril2ld7a+FCyv5O+
	5g2iN6ZGTPfUu/mwEJwvQB1jaic5N1uXm8dZ3H+1FhUt8GUNZsMdiaqzJWcDxnYZpzqOlJetUgyMm
	NC4/D172OBONNFposbqP+/+z98NHmOmsVp1Vx2ei6F1loFeKf+WKI50Yzp3zk/QVZZBXhgdffSTba
	8PiZDudjA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kY5Fp-0002Cr-Ps; Thu, 29 Oct 2020 10:34:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kY5Fm-0002Bk-16; Thu, 29 Oct 2020 10:33:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4080C139F;
 Thu, 29 Oct 2020 03:33:55 -0700 (PDT)
Received: from [10.57.54.223] (unknown [10.57.54.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C00453F66E;
 Thu, 29 Oct 2020 03:33:53 -0700 (PDT)
Subject: Re: [PATCH 04/25] ASoC: rockchip: remove unnecessary CONFIG_PM_SLEEP
To: Coiby Xu <coiby.xu@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
References: <20201029074301.226644-1-coiby.xu@gmail.com>
 <20201029074301.226644-4-coiby.xu@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8589f68f-fa6b-d75e-d7be-fbb354adbde0@arm.com>
Date: Thu, 29 Oct 2020 10:33:52 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201029074301.226644-4-coiby.xu@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_063358_485984_3CE81CB8 
X-CRM114-Status: GOOD (  20.26  )
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
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-10-29 07:42, Coiby Xu wrote:
> SET_SYSTEM_SLEEP_PM_OPS has already took good care of CONFIG_PM_CONFIG.

I don't see anything in the !CONFIG_PM_CONFIG side of 
SET_SYSTEM_SLEEP_PM_OPS() that prevents unused function warnings for the 
callbacks - does this change depend on some other patch or is it just wrong?

Robin.

> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>   sound/soc/rockchip/rockchip_pdm.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
> index 5adb293d0435..f3c19310aeeb 100644
> --- a/sound/soc/rockchip/rockchip_pdm.c
> +++ b/sound/soc/rockchip/rockchip_pdm.c
> @@ -574,7 +574,6 @@ static int rockchip_pdm_remove(struct platform_device *pdev)
>   	return 0;
>   }
>   
> -#ifdef CONFIG_PM_SLEEP
>   static int rockchip_pdm_suspend(struct device *dev)
>   {
>   	struct rk_pdm_dev *pdm = dev_get_drvdata(dev);
> @@ -601,7 +600,6 @@ static int rockchip_pdm_resume(struct device *dev)
>   
>   	return ret;
>   }
> -#endif
>   
>   static const struct dev_pm_ops rockchip_pdm_pm_ops = {
>   	SET_RUNTIME_PM_OPS(rockchip_pdm_runtime_suspend,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
