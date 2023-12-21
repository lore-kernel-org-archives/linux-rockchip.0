Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0867C35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 14:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJkmAikIrNBHYYzWwb6wYeU21M92cVyV7Jo5EZyORl8=; b=tqxen4FA2EdMi8
	uV9t5JYljmH4TE+XJmGBU5PiJZG9iHGE15h/bpgtrNIgAiEfgAxgxYA+6Srs1R3ec/wszX1mKz+on
	5yQDJQRZ+THfkFYHCp7jF4oXsorhYeOkl/O3EaTWUKLEPdKfgWReMdW8jqSBsjNPnOAkvo4wM13dN
	JaYugZIbIpdTYnUgMPnDVIIfPbdNNkkSict2KzFUl8IUFqH4Th1ud57SSs1d4NjhUnXxooXLn26hm
	1tWut9N/nKN7X27YROZhKXVn37/cnxkr6WSvviIXSJkDi1eeu6K5vLDMZUhuSlqX5LBqfHGFVLG7O
	XlAlkYAxuLba0dmZSw9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGKHE-003Cy5-2H;
	Thu, 21 Dec 2023 14:43:56 +0000
Received: from out-187.mta1.migadu.com ([2001:41d0:203:375::bb])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGKHB-003Cx7-2D
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Dec 2023 14:43:55 +0000
Message-ID: <df5406ae-aca4-459f-bf70-4a5efbf3864e@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1703169828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xTV/q8RDwQu2LAWOhY4c4geyJjIHSwAWDVPGvEOOSYc=;
	b=CKXSo6yrxKSN0Z8ODEsMtrBgLszB1j8X4f8dzgGkYKd2FeNBHAKA9hH3JBjYZwj8N4RTzm
	WcJ0AkAOZ4JHapVZoAiuDoJBw71qorIYsCmlSj/KS5f7quMEZLvsu88Mz7iEvseAahRn2k
	OjZh1xAZriJIFgVj7GQ/uTBoOc1BdrI=
Date: Thu, 21 Dec 2023 22:43:39 +0800
MIME-Version: 1.0
Subject: Re: [v5,41/44] drm/sun4i: hdmi: Move mode_set into enable
Content-Language: en-US
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>,
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
References: <20231207-kms-hdmi-connector-state-v5-41-6538e19d634d@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-41-6538e19d634d@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_064353_891047_CC25FC38 
X-CRM114-Status: UNSURE (   5.29  )
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

Hi,


On 2023/12/7 23:50, Maxime Ripard wrote:
> We're not doing anything special in atomic_mode_set so we can simply
> merge it into atomic_enable.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>


Acked-by: Sui Jingfeng <sui.jingfeng@linux.dev>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
