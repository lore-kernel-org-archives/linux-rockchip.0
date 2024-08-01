Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E810BC3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 15:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frzFLqB6tXa+vBEiphX2blaxmBxXoJK69Oc795uzIAM=; b=cqWY6fSxfz6pcS
	yzGyiqFHaamIuDygTVHmPSMbBSklkIEafu1mmjtgUgiEqo40oMN/kPLyvd8A4V6ervWJrnyhco8WC
	+lo/ZRcq/QTPocUDyQsUI/VpEXxF38X7eoOpUFzn3Wc+Em3YsXeRaG4TpHf7J0jpJOrItIRC+gV2B
	AuVGiMhuz18nX1H5AeNhYLCeShOIzFWBgxtiga16s41AWK5iRC6PbQm6r6wjjEcHBTkEZeVjGptQi
	8xvvzqTgM8nWsR1YWCS46avrF35W9RCVbhqIDbogq2RGwDAdTrgWj4cAXeGuhKzPQrlP2u5ngKW5m
	47P8Km8JqN9HDqPG8r6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZXmU-00000005sdo-0xeh;
	Thu, 01 Aug 2024 15:31:54 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZXmG-00000005sXY-1Q82
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Aug 2024 15:31:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722526297;
	bh=2jRCBWR/aLkT7KAayor4Iw2u43asLIbw0roCYH6ypl4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NRItRBSJRVegw4rJC0J9/rKUdd8kB6WSh/ypdAC20YBBk6SiK9yV6T7tXikomfHaF
	 l7wqwu3noUyBWGuu6BTESX60m5Nc+/xCOBpvUHn7X5aO2RrkkWKoQrZlVHPr6YUYtV
	 uFbXhaKqDPCWfM9bj1wB5IxEqxBgMctVu5fix3l0PXofOFuxXR5DBIg8bcV7IYSeeu
	 z2Bi3oMv/eC7ym6KkKWuwmpHiFUSsd65EqK7o3oiYwWfuXmVdeYklhp0VbauyGapez
	 w0wxMioaDEzxa1gBrxK/CXtiDVeGqYgGxnsASJhMJdSu0hKEz7KpRcXht6DZFovW9j
	 /RLVBHtACtoEw==
Received: from [100.109.49.129] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B69703782139;
	Thu,  1 Aug 2024 15:31:36 +0000 (UTC)
Message-ID: <c4d6da27-3b23-4a96-bad0-17f2392287ef@collabora.com>
Date: Thu, 1 Aug 2024 18:31:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] mfd: rk8xx: Fix shutdown handler
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Lee Jones <lee@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Urja <urja@urja.dev>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, stable@vger.kernel.org
References: <20240730180903.81688-1-sebastian.reichel@collabora.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20240730180903.81688-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_083140_561379_30027C0A 
X-CRM114-Status: GOOD (  10.72  )
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

On 7/30/24 21:05, Sebastian Reichel wrote:
> +	/*
> +	 * Currently the Rockchip SPI driver always sleeps when doing SPI
> +	 * transfers. This is not allowed in the SYS_OFF_MODE_POWER_OFF
> +	 * handler, so we are using the prepare handler as a workaround.
> +	 * This should be removed once the Rockchip SPI driver has been
> +	 * adapted.
> +	 */
> +	if (is_spi)
> +		pwr_off_mode = SYS_OFF_MODE_POWER_OFF_PREPARE;

This prevents the syscore_shutdown() step from execution. Is it better
than not powering off?

I'd rather skip registration of the power-off handlers in a case of SPI :)

-- 
Best regards,
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
