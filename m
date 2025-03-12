Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E972AC28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 13:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZ1k6LXBxBc6WiNXimw8cC5VI32GMgrEpffNUME+dbo=; b=MxlF/1OlI1zQTk
	Ict2AW5HRzoK9hABF9RiSjXOtUfTkKG0tDpG96/BQsy64ER5TBc2vYdYZdR3qg0FidpXG0HZsHbLO
	7zYt2P5XAPzUjJ/nHbdk/T8kjPRzYfZRkdfMUTCoC/lgMyPIY492QMelMOGZRxOYqp8CxwCed4NhT
	+TEc1jNrxwk68oI/VzUaJtB243RJ9TqVTl+GBapXPrtfLfwfYt+Gtv8Lu1dLbVBOiL4PRuHT9dvov
	zGBmr6Jl8tOqGRPhfhXuT+XejHKa6Jl6Gp6l20uiKBAW/8hv2JO6dBwAHUiLjOMQa8QtoIvEv7ppQ
	RsJWTVa5F9S79m5kRN2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLn7-00000008VJ6-0zLf;
	Wed, 12 Mar 2025 13:06:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLKq-00000008QFJ-0dlR;
	Wed, 12 Mar 2025 12:37:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B4A3E5C5A50;
	Wed, 12 Mar 2025 12:35:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4C7CC4CEE3;
	Wed, 12 Mar 2025 12:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741783039;
	bh=vvNzffstuwygGjee35zDwvBmfUgaXFHHwZ2Xz1A5mtY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dg3zgQDimqxkZGwQ+jX0wY/gkyMSZMYLM/f2OtJd2EkKo0LQ2Ol/Khgl5K5GaQgAZ
	 84tP38YE4v8MWusDPAeOqRLDVOYcfUVh5ld8w+jBXYK39u3hLdyLTi3P9ajw/VWRuc
	 WRu9xUHstvcJIDArziIPANizCLNsdM5h3ngqQ8zBo7nB1L6C392F+HxqcwCvKA9tI2
	 /P7Pl9QLsxbPPy/NfW8yUdfeo37T5Tx2z+k+4ags1cW4mjRSaWQ8F8EoBuhY1axAp0
	 o9BOJHPQ/lBBcXPU0fZLTMTpGntEuK5pR+Y1IZZRQQsFFu91Ip6fv3mDT1UGx+BOGw
	 +83kRBHdPVxsQ==
Date: Wed, 12 Mar 2025 14:37:13 +0200
From: Dmitry Baryshkov <lumag@kernel.org>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v2 3/7] drm/rockchip: Add RK3588 DPTX output support
Message-ID: <m2376n5bdptphdbyxxqvgeouspn7vslucprgzu25shoajzndy3@gfxh3b2poiic>
References: <20250312104214.525242-1-andyshrk@163.com>
 <20250312104214.525242-4-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250312104214.525242-4-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_053720_234519_98304C6A 
X-CRM114-Status: UNSURE (   9.05  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, devicetree@vger.kernel.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com, dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Mar 12, 2025 at 06:42:04PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add driver extension for Synopsys DesignWare DPTX IP used
> on Rockchip RK3588 SoC.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - no include uapi path
> - switch to drmm_encoder_init

Acked-by: Dmitry Baryshkov <lumag@kernel.org>
> 
-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
