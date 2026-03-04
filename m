Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D673EFCE42
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 20:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k6o1n5xpWYH8erxJ7zJxT9gSdF3yv5mpbwWI3icvk9w=; b=puvU4bURBAExA+
	ZVJ3FVTXeKn1D1YBuBZeDfqu+Ng7SWY+RK19pk3UHtgAf58cvZ8evx6K9erUItaUMW8NKydCkAlI2
	Zocx6AmFOYl4Sm+Hz+iBQcQXCtEyfw9ZQkj/nbdBWGbpOJSKnFcHa9IhSjBrJA/u0Kpmz3KWdqKnd
	iqm4Uxv/FCap17cYonjl84O5t5t75iXR92B90/Qc+OneNPhhq2JB6X88H4T5kzMpIjJyZ6N/4SPZC
	WTHtb4v7QMWDSV4rNcgFJVsAyL+l+u0C7Z696Sws+AVlFzZDZMG4QPaY6A2NZTGXkpmSQr5SOXJT1
	P+jxybD05Hq/qlZQ50gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxsbx-00000000RV7-2Wx1;
	Wed, 04 Mar 2026 20:14:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxsbt-00000000RU2-2unJ;
	Wed, 04 Mar 2026 20:14:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 69FD2402F4;
	Wed,  4 Mar 2026 20:14:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5684C4CEF7;
	Wed,  4 Mar 2026 20:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772655260;
	bh=7LbZg6skQwe1JIVxe4uIFooiyh42caVjXi8zFEyCeHA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=vOSWAYP0ASIUMPrNsRctEnLesB/qOpdMCrQy6ahbi4pLYMii7O8IIBA8F63PZsyg0
	 ZcCnF1kj3cVmc84Vx9h9Kq96VZaMCMHxuCArllf1CYolj2oqppgnv3vXM3w6laZHlz
	 NOtq23rucRl5IE/Bb02Fai9gX/5ewV1hAPdziT8RA9B2ev0oqJbQtiikHUnSW5L9q5
	 Uk7uAI6xqy1wRgSUh7h36AH8oidWLE77AQilsTltHa4bvKQfckiIg6DJMG3yRydPNA
	 OvbzcQS3k3wio6bMSaigTPS0yMDQddq1Qx4b83K8C3Iv2VNsdfZAH1Ox9lzB5Wl3zL
	 iEzLjD3XL6GFw==
Message-ID: <679dbfdd-9e46-4265-a01c-faf163924ec3@kernel.org>
Date: Thu, 5 Mar 2026 05:14:14 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy-next 01/22] ata: add <linux/pm_runtime.h> where
 missing
To: Vladimir Oltean <vladimir.oltean@nxp.com>, linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
 netdev@vger.kernel.org, spacemit@lists.linux.dev,
 UNGLinuxDriver@microchip.com, Niklas Cassel <cassel@kernel.org>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-2-vladimir.oltean@nxp.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20260304175735.2660419-2-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_121421_781953_4C994118 
X-CRM114-Status: UNSURE (   6.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 3/5/26 02:57, Vladimir Oltean wrote:
> It appears that libahci.c, ahci.c as well as the ahci_brcm, ahci_ceva
> and ahci_qoriq drivers are using runtime PM operations without including
> <linux/pm_runtime.h>. This header is somehow being indirectly provided
> by <linux/phy/phy.h>, which would like to drop it (none of the functions
> it exports need it).
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Acked-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
