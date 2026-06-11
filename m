Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6D42CD98C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 23:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3ZEj9V8qZuV0PUXAX/V5FrxoRqdSLPSXLZ1vqXOL5k=; b=oHW5P+fFQnHhu0
	d3rFCcYFZrWtx8xfsZTp3YQBBAhR4FI5TyAXzu5yr+7Q4idcZcOw3Srd1X5kw/TZ+C/gmvI2ByR10
	449kvhdF1nVwlmQpOgCzYZv1tSufmevWCnn6qg+FcSb/HgTu1ap0zQSqVsnxO87TUnVP5a/5UomJQ
	3E42YvpcFCjwHLVlX4bzID2zlg89h5cpJL4aNH9Tffb8k0TIzfMLzBUh6xGxgONjn5qIw9VphTLvO
	0FwAj/0hV0XIHu7G/apDm8W8lUzE+3RpKH65fnnfBRlntPe4DvOxcbOyq9QbtyHUHmV65pY36iDlk
	lZfNEPq9UpIRZ9QLqRlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpI0-0000000ACzi-0VJ0;
	Thu, 11 Jun 2026 23:58:24 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpHx-0000000ACz8-2Zih;
	Thu, 11 Jun 2026 23:58:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781222299;
	bh=ypszbHyzB39x79bcGaB6iFn+Y2ljrD/Div0NqvLkCCw=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=UQIZwuINbbo1Gsuv/8GDU95NlR1SVDlU/WBPSgbAkgafvPSpVxq/rUa5sGRctCvHR
	 AvQUY9nUEE40TN3oREpbavfacRDXhf1WEOrFZfxkudAAd95M+7tKF2M2RsncYYlFX3
	 WXi6J19/BO4tphd+y0pjwCN+S3EJ4jCl8EyT7Y2QeWi6faQhez/5SJGetgFhcC3DEm
	 zws31jK420nNdX1HsO0DUpOqFyycHFlacnGtwTO0QNzXMDwccr640I2+qYVBc5bH43
	 bHhdg1irQvFXGL7m43avpv+dVxjOlk7kLcOfNjaN2tQ93WzIVYWdQG7d+J6OR4eBp/
	 57e5DlKRHRUFg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8BD2517E0416;
	Fri, 12 Jun 2026 01:58:18 +0200 (CEST)
Message-ID: <25f0a87d-0607-49eb-b297-b45c11b4df1b@collabora.com>
Date: Fri, 12 Jun 2026 02:58:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] phy: rockchip: samsung-hdptx: Clock fixes and API
 transition cleanups
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?Thomas_Niederpr=C3=BCm?=
 <dubito@online.de>, Simon Wright <simon@symple.nz>
References: <20260611-hdptx-clk-fixes-v3-0-67b1b0c00e16@collabora.com>
Content-Language: en-US
In-Reply-To: <20260611-hdptx-clk-fixes-v3-0-67b1b0c00e16@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_165821_829323_48973CA8 
X-CRM114-Status: GOOD (  14.30  )
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

Hi,

On 6/11/26 3:31 PM, Cristian Ciocaltea wrote:
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
> Changes in v3:
> - Replaced div_u64() with DIV_ROUND_CLOSEST_ULL() in Patch 1 (Sashiko)
> - Fixed theoretical usage_count unbalanced issue in Patch 2 (Sashiko)
> - Rebased series onto latest phy/next
> - Link to v2: https://patch.msgid.link/20260511-hdptx-clk-fixes-v2-0-664e41379cab@collabora.com
Please use v4 as I added two more patches to address latest findings from Sashiko:

https://lore.kernel.org/all/20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com/

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
