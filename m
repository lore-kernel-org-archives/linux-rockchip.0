Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F157C021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 06:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWiFyj4tWUkcjqDfkVR89+6Q0w6XDckfWCvRo61AzSo=; b=mMMxY7kFEIHaa0
	l2gJ5EhzeXFe2LbMCCId5ML/kuNYy+q2P2owJLbFqwelug+sd7vWmlAGr5mjhl3sU3IbFEyx94UNs
	L8/GC0ozlTCL5bj3Qobq0lm4UHeJGs+ppxAioBeYoM35b9a3fjNDf43EZPayJr/Sz11eG//BB6M1T
	ITnZVFnEQy8fONZuF2t2Jv26GyzasNLJGNbjzymOmxzkLd4vCubvMpVOCsPpiZmcmAx++jDRg3Y60
	jiF5PjzcfLnlaMoJdG7Gs4OFLOho+Gck0XIVIlz952QtTVh6xYUPuf9mFnC1fu6jNUB7ljQHp/hlo
	vpFr+bkPUUbEhvFdlhIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnXG3-00000006SlC-3WHX;
	Thu, 27 Feb 2025 06:20:31 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnXG0-00000006Ski-2hHk
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Feb 2025 06:20:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740637213; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CBj+2u58FaLlfXUL5r4ElOi/IpxDJUdL5DLsNEHNk0+UdTf0KDAKmpQs29KN2wHLP9/UUsQgiHaFf2mLEtRXdtkxAOFjk5p7D77egssavIxWXcksgod1qfC2e6z2J999I8dM2W7bPgdcWUTxk0toEcEOpEB0gdkCyyGg9VlroKU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740637213; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ESKAXw1Tt8hbvdnODg8HBJ11zlfZzK9vXWlIshKQpnM=; 
	b=eyor/mD0YxxN/+q0uTnIbXdi7xJWvjgNigMgz8rS5ydyCPMv7a3KBmIsu7MBqRtIkI7mdjiR8uUqRA0dE/B/r3/YCZy4LUrU0muqSyeh93ziWKJoboj4caNWqbmFxTL7Z6APJZeNKyWwAtzNqkvQBx4hAmhFqpnGSEGmX3vGkzg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740637213;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:From:From:To:To:Cc:Cc:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ESKAXw1Tt8hbvdnODg8HBJ11zlfZzK9vXWlIshKQpnM=;
	b=I6T6DoQyMwenD8Jj/4OugRF2aKDRyqQsd/tTY6GcNUy4pt7BKeT4PEW00BiaVpz9
	fh+sT/lcbefoqcFBM6TegVOlcc3bkxh+DPX1SeXTVMpgetIWzaLT7nsc9ycU3ep1hw8
	GzLi3NENYsWzsPypocvxxDRm88OXIufDY7H8cSoo=
Received: by mx.zohomail.com with SMTPS id 1740637210671337.5440148916407;
	Wed, 26 Feb 2025 22:20:10 -0800 (PST)
Message-ID: <82e5a342-c82e-40c4-88a9-645a70420aa0@collabora.com>
Date: Thu, 27 Feb 2025 09:20:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 3/6] media: platform: synopsys: Add support for HDMI
 input driver
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
References: <20250227055025.766018-1-dmitry.osipenko@collabora.com>
 <20250227055025.766018-4-dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <20250227055025.766018-4-dmitry.osipenko@collabora.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_222028_759922_453FDB76 
X-CRM114-Status: GOOD (  11.23  )
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

On 2/27/25 08:50, Dmitry Osipenko wrote:
> +struct hdmirx_cec *snps_hdmirx_cec_register(struct hdmirx_cec_data *data)
> +{
> +	struct hdmirx_cec *cec;
> +	unsigned int irqs;
> +	int ret;
> +
> +	/*
> +	 * Our device is just a convenience - we want to link to the real
> +	 * hardware device here, so that userspace can see the association
> +	 * between the HDMI hardware and its associated CEC chardev.
> +	 */
> +	cec = devm_kzalloc(data->dev, sizeof(*cec), GFP_KERNEL);
> +	if (!cec)
> +		return ERR_PTR(-ENOMEM);
> +
> +	cec->dev = data->dev;
> +	cec->irq = data->irq;
> +	cec->ops = data->ops;
> +	cec->hdmirx = data->hdmirx;
> +
> +	hdmirx_cec_update_bits(cec, GLOBAL_SWENABLE, CEC_ENABLE, CEC_ENABLE);
> +	hdmirx_cec_update_bits(cec, CEC_CONFIG, RX_AUTO_DRIVE_ACKNOWLEDGE,
> +			       RX_AUTO_DRIVE_ACKNOWLEDGE);
> +
> +	hdmirx_cec_write(cec, CEC_TX_COUNT, 0);
> +	hdmirx_cec_write(cec, CEC_INT_MASK_N, 0);
> +	hdmirx_cec_write(cec, CEC_INT_CLEAR, ~0);
> +
> +	cec->adap = cec_allocate_adapter(&hdmirx_cec_ops, cec, "snps-hdmirx",
> +					 CEC_CAP_DEFAULTS | CEC_CAP_MONITOR_ALL,
> +					 CEC_MAX_LOG_ADDRS);
> +	if (IS_ERR(cec->adap)) {
> +		dev_err(cec->dev, "cec adapter allocation failed\n");
> +		return ERR_CAST(cec->adap);
> +	}
> +
> +	/* override the module pointer */
> +	cec->adap->owner = THIS_MODULE;
> +
> +	ret = devm_add_action(cec->dev, hdmirx_cec_del, cec);
> +	if (ret) {
> +		cec_delete_adapter(cec->adap);
> +		return ERR_PTR(ret);
> +	}
> +
> +	irq_set_status_flags(cec->irq, IRQ_NOAUTOEN);
> +
> +	ret = devm_request_threaded_irq(cec->dev, cec->irq,
> +					hdmirx_cec_hardirq,
> +					hdmirx_cec_thread, IRQF_ONESHOT,
> +					"rk_hdmirx_cec", cec->adap);
> +	if (ret) {
> +		dev_err(cec->dev, "cec irq request failed\n");
> +		return ERR_PTR(ret);
> +	}
> +
> +	cec->notify = cec_notifier_cec_adap_register(cec->dev,
> +						     NULL, cec->adap);

It now occurred to me that this cec->notify also should be not needed
for this driver and *everything* related to CEC notifiers should be
removed. Hans, is this correct or I'm missing something?

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
