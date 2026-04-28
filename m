Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35E10FF886D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 07:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RU4ld38KUqtJKRUcXvRGUhuHktlx9RRheYguFHxjwrU=; b=GDM15d4MBtkfuE
	A9h5s0pbC2dvUCVU1CC3+0RWVe1KttHfXuAoldO39V4fsdLSuqUkjCQmfC7VfXyqW0BT4zfFfCoIJ
	8PzC85QEpg9PQBsmBxvsFL7awLvWfrv6nfuKIjDXPEzssZD5wxUvQGCZnP0/XZJQtiafURl0YYfps
	t1M9XxXR+fJ5zu52VipEJijxMvlJfNNCyEmPa1KiBDlvbTpek2Faz3WQOx2+ukCIFIadFvNiKTbJC
	w2aZJ+4phKi1Bub3q8kz96a8KHxaIomWu0a7TEQS7D4ByamIZIVXA8rFGIORH1osDs1YUhk4t8SjM
	770UgJJgKeh37fRHu/EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdJ6-00000000pNw-3Lv0;
	Tue, 28 Apr 2026 07:56:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdJ5-00000000pN1-2iZp
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 07:56:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A9CF260142;
	Tue, 28 Apr 2026 07:56:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7D66C2BCAF;
	Tue, 28 Apr 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777362994;
	bh=Mzlq90K/VTzR+F+26arnfLMjVpYCl7Zu2AB1/5S1PyI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cY/mOurfmE7MW35rMnA3eBhijxSBFke9z4rkAmG7LU/v+gt2QEXHGRGzRqHqjgZr0
	 g9Z9+e1hlmA6psMDM97KuE9wpOGHHHXxVBQwUexE1J6eNwfCXKXAos1HwR93+77Ytr
	 FiDLFjoo7k0+HjGtlzLiP2o8bl4JHz5OhXVUnEIPOqgNt6AKn7RINzjY0jqUoyPms5
	 nYF1Bl0y59a/A6AuyCSNFc0PtkYsZgntKTPJpcr2KmnjuDOkc5qVHQqjACARtSSwQj
	 m5Hibyqhg6s7h9T+2EdLCrGToPTepcMIVU6T6I/hwtc1mDm5Ue66tMdtDwR/JJWAXO
	 x4h+gZHrWkx3w==
Date: Tue, 28 Apr 2026 09:56:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, xsf@rock-chips.com, sre@kernel.org, 
	simona@ffwll.ch, airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org, 
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com, neil.armstrong@linaro.org, 
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/6] power: supply: sgm41542: Add SG Micro sgm41542
 charger
Message-ID: <20260428-vivacious-fearless-monkey-fe433e@quoll>
References: <20260427170914.5062-1-macroalpha82@gmail.com>
 <20260427170914.5062-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260427170914.5062-3-macroalpha82@gmail.com>
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

On Mon, Apr 27, 2026 at 12:09:10PM -0500, Chris Morgan wrote:
> +	strscpy(sgm->model_name, id->name, I2C_NAME_SIZE);
> +
> +	sgm->regmap = devm_regmap_init_i2c(client, &sgm4154x_regmap_config);
> +	if (IS_ERR(sgm->regmap))
> +		return dev_err_probe(dev, PTR_ERR(sgm->regmap),
> +				     "Failed to allocate register map\n");
> +
> +	i2c_set_clientdata(client, sgm);
> +
> +	ret = sgm4154x_hw_chipid_detect(sgm);
> +	if (ret)
> +		dev_err_probe(dev, ret, "Unable to read HW ID\n");
> +
> +	device_init_wakeup(dev, 1);
> +
> +	if (client->irq) {
> +		ret = devm_request_threaded_irq(dev, client->irq, NULL,
> +						sgm4154x_irq_handler_thread,
> +						IRQF_TRIGGER_FALLING |
> +						IRQF_ONESHOT,
> +						"sgm41542-irq", sgm);

Interrupt should be requested and enabled at the end or almost at the
end. If it is triggered now, which supply are you marking as "changed"?

Code looks at least correct in relation between interrupt and workqueue,
but it is not really obvious and thus not following established coding
practice. Practice is usually: first you allocate driver-like or
memory-like resources, then you request hardware related resources.
That's why every probe starts with devm_kzalloc(). Similarly with
workqueue, initializing power supply etc.

> +		if (ret)
> +			return ret;
> +		enable_irq_wake(client->irq);
> +	}
> +
> +	ret = sgm4154x_power_supply_init(sgm, dev);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to register power supply\n");
> +
> +	ret = sgm4154x_hw_init(sgm);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Cannot initialize the chip.\n");
> +
> +	sgm->sgm_monitor_wq = alloc_ordered_workqueue("%s",
> +			WQ_MEM_RECLAIM | WQ_FREEZABLE, "sgm-monitor-wq");
> +	if (!sgm->sgm_monitor_wq)
> +		return -EINVAL;
> +
> +	ret = devm_add_action_or_reset(dev, sgm4154x_destroy_workqueue,
> +				       sgm->sgm_monitor_wq);

Use rather devm_alloc_ordered_workqueue().

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
