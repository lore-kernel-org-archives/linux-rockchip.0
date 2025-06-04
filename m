Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46C46C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 17:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsmMxoVdoAwlwE5o+KYH4vBGQoq2qGttIoPgdhu2odM=; b=YRHOapndRne3N7
	W9QdHJvGvf7pvB4P9FFOhoqOcENXpfYdi55uaSYhsZpm+vp8zgcC8xTYS9C620ThwcO6af2AOF0vC
	fSa6pR33gmuJhHSlrrDYMxrYBW6VvOfjkD225CaNmODKlnshB71v2VtKe25XmNM+UnwHFim4OVVzX
	Y9DQN2W0o2m25fA5WskK/rNoCI7LYs21mkdYyySetFVhJlnU0PZTYDpIezj/hrMUAn5UMgLHENvDZ
	UlZrqhZEekvy6XeyDL29PVgJqDrgOyR8uejwKjRG19WV22OG5AqNaoZelX+q3ucttbo1G1foVzs3+
	k928hNcSSe836TT5Z62w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMs8B-0000000Dxd9-1wEr;
	Wed, 04 Jun 2025 17:42:27 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMs88-0000000Dxcj-3Rru;
	Wed, 04 Jun 2025 17:42:25 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749058941; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=eMXojg86QR8llNFDQfUYPsppCp4d11NgWNnR868ClQD0NH96rizDt+Ejb5GNHYAD7aPUuubkE1rXNzqS8LlBn5BdiBfBGdf+UvRKkDvDE8Q0hd7kXjCI6CkDXSO1KUMSYp79/95pwPp7/LFG9MAGInzc75wNUvdWZaPHtKbpUms=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749058941; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Imfqw/toyNUrbHQezVHBo1nlOiaFHJLrR+wJoVAGROw=; 
	b=h2OobGEpTvffyBXFIDWCjz/C/fuIdmgSgz0rLg4x28tXPVZsowJVKBmpklI5yUaSrkZyYOG0vZYdZ1M6uKmSmnCBGeckZffOivAPFjMdqCIiZGIIX8ZbGXSgHH7ExEa2UPu8Ly+F+kzjp/5yjc1VVMBXsYfrxTDEdBPgwFJPGX4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749058941;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=Imfqw/toyNUrbHQezVHBo1nlOiaFHJLrR+wJoVAGROw=;
	b=EYY+7lgUKsSliK6UV4MdkV34F1U8SNsvwzqdvBSC+JT50alt/0wZW6S9S9nyrREg
	nQSyhg6jyQm3MqPwwrMhJxim4bHYdggPZ6yLAmQZIU9Jgngbnu3R7XgGY+ruUuQ1VNu
	KScjCJgkGysLoNh80YaRSP/3xvMvtQcJqo0owbjc=
Received: by mx.zohomail.com with SMTPS id 1749058939078558.9112570826974;
	Wed, 4 Jun 2025 10:42:19 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pei Xiao <xiaopei01@kylinos.cn>
Cc: Pei Xiao <xiaopei01@kylinos.cn>
Subject: Re: [PATCH 2/2] ASOC: rockchip: Use helper function devm_clk_get_enabled()
Date: Wed, 04 Jun 2025 19:42:15 +0200
Message-ID: <24654754.ouqheUzb2q@workhorse>
In-Reply-To: <3b3d8f60e553af09a51b501b8ff5406fa5e898dd.1749006565.git.xiaopei01@kylinos.cn>
References: <cover.1749006565.git.xiaopei01@kylinos.cn>
 <3b3d8f60e553af09a51b501b8ff5406fa5e898dd.1749006565.git.xiaopei01@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_104224_931628_1AB03A0A 
X-CRM114-Status: GOOD (  17.75  )
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

On Wednesday, 4 June 2025 05:13:30 Central European Summer Time Pei Xiao wrote:
> Since commit 7ef9651e9792 ("clk: Provide new devm_clk helpers for prepared
> and enabled clocks"), devm_clk_get() and clk_prepare_enable() can now be
> replaced by devm_clk_get_enabled() when driver enables the clocks for the
> whole lifetime of the device. Moreover, it is no longer necessary to
> unprepare and disable the clocks explicitly.
> 
> Signed-off-by: Pei Xiao <xiaopei01@kylinos.cn>
> ---
>  sound/soc/rockchip/rockchip_sai.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
> index 79b04770da1c..2ec675708681 100644
> --- a/sound/soc/rockchip/rockchip_sai.c
> +++ b/sound/soc/rockchip/rockchip_sai.c
> @@ -1448,16 +1448,12 @@ static int rockchip_sai_probe(struct platform_device *pdev)
>  				     "Failed to get mclk\n");
>  	}
>  
> -	sai->hclk = devm_clk_get(&pdev->dev, "hclk");
> +	sai->hclk = devm_clk_get_enabled(&pdev->dev, "hclk");
>  	if (IS_ERR(sai->hclk)) {
>  		return dev_err_probe(&pdev->dev, PTR_ERR(sai->hclk),
>  				     "Failed to get hclk\n");
>  	}
>  
> -	ret = clk_prepare_enable(sai->hclk);
> -	if (ret)
> -		return dev_err_probe(&pdev->dev, ret, "Failed to enable hclk\n");
> -
>  	regmap_read(sai->regmap, SAI_VERSION, &sai->version);
>  
>  	ret = rockchip_sai_init_dai(sai, res, &dai);
> @@ -1512,8 +1508,6 @@ static int rockchip_sai_probe(struct platform_device *pdev)
>  	if (pm_runtime_put(&pdev->dev))
>  		rockchip_sai_runtime_suspend(&pdev->dev);
>  err_disable_hclk:
> -	clk_disable_unprepare(sai->hclk);
> -
>  	return ret;
>  }
>  
> 

Please get rid of the err_disable_hclk label, and change the

    goto err_disable_hclk;

in the resume failure condition to a 

    return ret;

Other than that, patch tested to be working fine.

Kind regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
