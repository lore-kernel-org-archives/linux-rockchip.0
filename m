Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8192DC54736
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 20:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MfxP9AmEMZtz90NYClxcv/uA0wDgLXmmoIVXAcqRc4=; b=J51EaHRmv82N80
	58w8Dmy6DX7J1fxS9CVycn8OCldFaShJCGOk2rYl3hafdVfWy75GxeKB/MBVDwca7agjjz8qY8Fld
	aGe6I3hA7j8Zq2mqLPZ8YsoWlZ1r7/S7hco3j7ZHJIZRfUmSpuSOrVMhb7kHFmu+ENNWmWExpdJ9q
	fjOo6DCn9lGDRFjjcf6yr0kO4js+PTQZ46m2cA0jI3HddIkQQOEeaH1wIl63UXYGAolAchNoSa7Lb
	tfhnn4x6crL0zIBeX7mweibXEHBma1+Ghh2Ty13WLcxFTpphQeFLfE4NCikRSr8VJJGE/NmU3RRzq
	IwGcKoFXg3qsAMHlLTdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj2vl-0000000ClEc-1fdk;
	Tue, 27 Aug 2024 20:36:45 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj2uv-0000000Cl6L-1E2v;
	Tue, 27 Aug 2024 20:35:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 95C4CA428DA;
	Tue, 27 Aug 2024 20:35:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FBECC32786;
	Tue, 27 Aug 2024 20:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724790952;
	bh=OWYzOMG6g7t+0eoQkiYO5f3+n07R9zTk0dBvb/bLYf8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=G+PMiXmfYwUXhJGsiUMlUFIpiNGLhwmcn4Yr2XR1okg6PP2b4RtiINnS3IFIFaqTP
	 eTQ6CASU4KpS3HFZO+7+NVbN2phjKEnT25rGE0a32dO+xrRdDYf6X6rHp9J/K4s4iA
	 bdh1jnMGGXKWUkL8nQVGONSdIr5J7Qf3Vy86ky6gFy4ZiuBHb2wcWqVJyYc7vNMmdn
	 J+4pXNMZBfHUr6QDqlPmoVtGJZvoU9BZQFqm2Ojkv+qaIAsifF0bqetEBN6BGI1zr8
	 ZC1k0XgStFmf1C+qy0qPhkb2VqnrxHjIiWZ5lEM9EiHsOQ6vuE7mkddrzEabqbn0lQ
	 mB93V0Szmx4Bw==
Date: Tue, 27 Aug 2024 13:35:50 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Alexandre
 Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, David Wu
 <david.wu@rock-chips.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, kernel@collabora.com
Subject: Re: [PATCH v3 3/3] ethernet: stmmac: dwmac-rk: Add GMAC support for
 RK3576
Message-ID: <20240827133550.19c9eee4@kernel.org>
In-Reply-To: <20240823141318.51201-4-detlev.casanova@collabora.com>
References: <20240823141318.51201-1-detlev.casanova@collabora.com>
	<20240823141318.51201-4-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_133553_439517_C0CC99C8 
X-CRM114-Status: GOOD (  11.13  )
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

On Fri, 23 Aug 2024 10:11:15 -0400 Detlev Casanova wrote:
> +static void rk3576_set_to_rgmii(struct rk_priv_data *bsp_priv,
> +				int tx_delay, int rx_delay)
> +{
> +	struct device *dev = &bsp_priv->pdev->dev;
> +	unsigned int offset_con;
> +
> +	if (IS_ERR(bsp_priv->grf) || IS_ERR(bsp_priv->php_grf)) {
> +		dev_err(dev, "Missing rockchip,grf or rockchip,php-grf property\n");
> +		return;
> +	}

Seems like there's plenty of precedent in this file, but seems a little
strange that we just print a message and carry on, without returning an
error.

Would be better to return an error or add some info to the ops
struct, so that the caller can check if the correct (of the two)
regmaps are set

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
