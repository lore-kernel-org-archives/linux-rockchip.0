Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DC3FC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 04:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04z+M/88ynlNttInyDNZiMVNa+cloYHsknNzlyPEb/c=; b=Entw/hS7d4soB0
	1mS+eXv26dIvbBBHLghgZmmj5Aquh/hL0VJ24s9AFwh9StrdPvC88T7oZ6OC3OJ6Fshy7iQJZqiTo
	Q1XMXvy6ERcf+JGpC+CnJ2N2xXN9dki/PZob24/V2qsK44eD4xZA0ECT+ttBdfhSKYqgZpdlgBfEU
	x4qJZaFug1ltJOG705cyBq9KnzxkkVn3fNfWkO01FBBiss4obiZm/JvyXqege0t829M5xAWNtFMhZ
	AHz+W2i3Pu59f1uhFqOke79/iUyb5FeBvWlWaevZXKSxje7mMDXbDyLad01C02R+ZAVXD35vKS6AC
	14dkAc/P6azvkoe2a5Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njw1e-004fnL-Pu; Thu, 28 Apr 2022 04:45:10 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njw1b-004fmW-R8
 for linux-rockchip@lists.infradead.org; Thu, 28 Apr 2022 04:45:09 +0000
Received: from fsav117.sakura.ne.jp (fsav117.sakura.ne.jp [27.133.134.244])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 23S4iiUx031241;
 Thu, 28 Apr 2022 13:44:44 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav117.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav117.sakura.ne.jp);
 Thu, 28 Apr 2022 13:44:44 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav117.sakura.ne.jp)
Received: from [192.168.1.2] (125.90.232.153.ap.dti.ne.jp [153.232.90.125])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 23S4ihJD031236
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 28 Apr 2022 13:44:43 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Message-ID: <d2d0ac77-e8bc-dd69-0a8a-470e42276d8c@katsuster.net>
Date: Thu, 28 Apr 2022 13:44:43 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] ASoC: rk3328: fix disabling mclk on pclk probe failure
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org
References: <20220427172310.138638-1-frattaroli.nicolas@gmail.com>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
In-Reply-To: <20220427172310.138638-1-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_214508_168800_A4C91069 
X-CRM114-Status: GOOD (  16.36  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Nicolas,

Oh, indeed. Thanks for fix.

Reviewed-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>


On 2022/04/28 2:23, Nicolas Frattaroli wrote:
> If preparing/enabling the pclk fails, the probe function should
> unprepare and disable the previously prepared and enabled mclk,
> which it doesn't do. This commit rectifies this.
> 
> Fixes: c32759035ad2 ("ASoC: rockchip: support ACODEC for rk3328")
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>   sound/soc/codecs/rk3328_codec.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/soc/codecs/rk3328_codec.c b/sound/soc/codecs/rk3328_codec.c
> index 758d439e8c7a..86b679cf7aef 100644
> --- a/sound/soc/codecs/rk3328_codec.c
> +++ b/sound/soc/codecs/rk3328_codec.c
> @@ -481,7 +481,7 @@ static int rk3328_platform_probe(struct platform_device *pdev)
>   	ret = clk_prepare_enable(rk3328->pclk);
>   	if (ret < 0) {
>   		dev_err(&pdev->dev, "failed to enable acodec pclk\n");
> -		return ret;
> +		goto err_unprepare_mclk;
>   	}
>   
>   	base = devm_platform_ioremap_resource(pdev, 0);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
