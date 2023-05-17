Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14300C77B7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 10:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alDu1BMZeWL2IBrEvKsgSC2PcpKAp6Lt9PcUruMXDaI=; b=CUidiXpFPZITId
	Seujv5a+WwJNbjZSxKnFuzYZbny2QeXpRV5qv5gh2DleazpH+bfvYZnDKwmBuU/O9P2GiWxSexLY8
	l01bDVxBdYP7I2QHRFihWVUw0ncRCq4zLNky46hQoarqGZcp5ST8bL8qHYgZGxgBS4kcpo2a6cEPa
	33IafiAj8M6SWuCkuV8z7H0P4srwy0Z9Rng3+LSPJ4npnk7JJcQ7lp2j6eH0331WDYMBbIwya6wMQ
	e9pNRwcOfYumJAUK+CF6cjjMhx+y3/xvhULzrPBN4lMAXL1mKBgkcs95bF7wJse8OPjxaJvNgE0LB
	jQz6EyfA+gQt28cLyNbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzEao-009SSM-0d;
	Wed, 17 May 2023 10:41:14 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzEag-009SPE-1d;
	Wed, 17 May 2023 10:41:07 +0000
Received: from [IPV6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab] (unknown [IPv6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5BFF3660563D;
	Wed, 17 May 2023 11:41:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684320065;
	bh=ZzB0E/+ymqhlIO/ZwNZVfCdw/0GTEwTXU8AzJOdbnnI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lYxPhLPUIMFJPs3u0BovfuwyBkklAOKNNVEJcQ5ShxzeLKg381nDmykHUvG+r7/PI
	 xpZOkIKOm4qTbNdIu0OoFOLypewGp4E6NNmRa256xAeFFKgATOVDJzw9y3MisBoJGM
	 ibUvqW/9hEzCjfZ9hKh+/4LNexdHwsamcc6tdxEqS/3nm5taCEJK/NPWh8mU4Kie2q
	 F88suhRl99flcdI4zq/md1FMC+6jsXvmNckruEiDisUxmGbmEo0Nv7fU7dMbSk8JM2
	 rRHV9tq+T65QAaVxwtQHtx5PeyqmAkioXAyuQTB4GYfaDgss38aX98BYlm9nlsTsGV
	 aA9fKNNxlsZMg==
Message-ID: <d2d92812-1088-289a-5dc1-2f4484cc94f3@collabora.com>
Date: Wed, 17 May 2023 12:41:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 6/7] arm64: dts: rockchip: Add DT node for ADC support in
 RK3588
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
 lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
 <20230516230051.14846-7-shreeya.patel@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230516230051.14846-7-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_034106_698986_952AA59C 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 17/05/23 01:00, Shreeya Patel ha scritto:
> Add DT node for ADC support in RK3588.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
