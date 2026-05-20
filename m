Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89CF8CD4F3D
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 19:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKAynPjLPcUW/ykqaPQ5RMEHa5p8SH5LZeReDxhT/8k=; b=b35U9Ro2wBhdrs
	UdbhUcclVLWlcLnpbpl5yznQRDgmfIDe+CHlQAweKRiwhd2vbWR1VB2KT92B8CtW1UXw3NdU/eBL5
	5maeHrf9f90n2l5klkuc4cR3rhSzcGqcvTSMYZqmg7sxdMT/ysaRae2AD8xuHlXkeUcXwQjba5d2z
	DzTneNNPJa/IBthOKVjeFMS4LigNCufm2dfN0/JyJ/iv0kHV9990969yc9a0ylILcgCl3J2qZPzui
	zxAdYpdcSyotXLEmsgx9aKrddOW6CHskZuWSW3BZ0CD2sQKHFs1cXxBfIEYyru87aSDJbHhaHLu4w
	eOxY196vSq3Brn1Z/beA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPmF0-00000005Yp1-1IqN;
	Wed, 20 May 2026 19:06:02 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPmEw-00000005Yo6-2TBk;
	Wed, 20 May 2026 19:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779303956;
	bh=KYn8dC36s4oAqc2bX5pRtUBYi3uO991GaG9uze+YAO4=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=BeqGrNY7I4gNL5OvXErhv+AhbcMqZgGJh1MFaVE/PitbJs+wRu6ugj9oEzpuEsNz4
	 5cp0kbpbWBnq/lr7gxU9nFfTv8lzU77Z/x8trQho2YUSp455Q0HB9v6PvfUwGLDrUk
	 a5/3GLIXH4HsTQ/zc/Lmz3vzdth85RoXJrQfeAiJtKjanZ/wwlMpVQwLV9NdEAEahl
	 yAu4rj7dUxTB3CI/IG3qSGTqLsNPa9p6brGgowT0O7usxKb80TxbX98smjIwfi8ZWG
	 EI9QqFCWcY1WmDyWkHov++eurHvEnkuP2Acvn0z2/ZgFD/ELZRzUJ0P6w3uNvuvsjK
	 KJG0PCqUQXl9g==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B478717E143F;
	Wed, 20 May 2026 21:05:55 +0200 (CEST)
Message-ID: <e0eeb794-11b9-4ba6-bee2-f6cc607d3a16@collabora.com>
Date: Wed, 20 May 2026 22:05:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/6] phy: rockchip: samsung-hdptx: Clock fixes and API
 transition cleanups
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?Thomas_Niederpr=C3=BCm?=
 <dubito@online.de>, Simon Wright <simon@symple.nz>
References: <20260511-hdptx-clk-fixes-v2-0-664e41379cab@collabora.com>
Content-Language: en-US
In-Reply-To: <20260511-hdptx-clk-fixes-v2-0-664e41379cab@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_120558_783400_A96DDDB4 
X-CRM114-Status: GOOD (  16.92  )
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

Hi Vinod,

On 5/11/26 9:21 PM, Cristian Ciocaltea wrote:
> This series provides a set of bug fixes and cleanups for the Rockchip
> Samsung HDPTX PHY driver.
> 
> The first part of the series (i.e. PATCH 1 & 2) addresses clock rate
> calculation and synchronization issues.  Specifically, it fixes edge
> cases where the PHY PLL is pre-programmed by an external component (like
> a bootloader) or when changing the color depth (bpc) while keeping the
> modeline constant.  Because the Common Clock Framework .set_rate()
> callback might not be invoked if the pixel clock remains unchanged, this
> previously led to out-of-sync states between CCF and the actual HDMI PHY
> configuration.
> 
> The second part focuses on code cleanups and modernizing the register
> access.  Now that dw_hdmi_qp driver has fully switched to using
> phy_configure(), we can drop the deprecated TMDS rate setup workarounds
> and the restrict_rate_change flag logic.  Finally, it refactors the
> driver to consistently use standard bitfield macros.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> Changes in v2:
> - Collected Tested-by tags from Thomas and Simon
> - Fixed a typo in commit description of patch 1
> - Added a comment in patch 2 explaining why PLL config errors are
>   ignored for rk_hdptx_phy_consumer_get()
> - Added a missed FIELD_GET conversion for lcpll_hw.pms_sdiv in patch 6
> - Rebased onto latest phy/fixes
> - Link to v1: https://lore.kernel.org/r/20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com

In case you missed my comments from last week on the Sashiko AI review findings
- in short, I don't think there is anything to worry about and the series should
be fine to apply as-is.  Please let me know if you would still prefer a new
revision.

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
