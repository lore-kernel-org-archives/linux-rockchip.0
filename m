Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADB0DC35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 14:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kssnUlIUWOUMx0LIRDvAbisvy20w6q5G+hvg3QaNyF4=; b=rC9n8r08fCPtMk
	WYsxSqEqxbomuoJF5W8owd3ZQm9hUZ6Cnb6V2DpfXYhPxdpkx4SG/6c9qsBBBd6jRtbbup3wqUtBY
	ewwORRELCbsZb/iJGwZxdCUd+4fFUrqe4EfLtiGflcP7DZB/lwePeSjfYaXJDXAt3/s1Z5Ay4ryvJ
	20Bi60VaFcZt6Xt55968hRKiEzenGoVdI9beQcp7XVtduxK/3czziFdsV68okKtC40WYvvscN4zE2
	WrBttOM4S5GrBk1cSoB8ZaZnDChlkmTWNgDf75OL9/mY2ptcGFJjhG+EtauZTM7dySFmj2CdqOg6I
	y2JYivqCVJAReIdOvJZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGKQl-003E8f-17;
	Thu, 21 Dec 2023 14:53:47 +0000
Received: from out-172.mta1.migadu.com ([95.215.58.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGKQi-003E7U-0Y
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Dec 2023 14:53:45 +0000
Message-ID: <bf45f0f7-8772-4f95-94b5-0078ac20b8b7@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1703170421;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9DWCbTtactyPz1Ws+U8aJ3Iw5YuEjx40PPU3oVvJZrA=;
	b=xCoT8n1ObOYoSEUUPhIGGLeX4YPTL/MN07zCk5cwewehpLQMiprAiSqmiJUrYxg+tvgz1x
	cttuLlvMIbfbw1qezKnOW6X8vD8SyK+owcw+MwgYR9nJveI3rxseT2wm1g3kGs0obJobCJ
	teGbrbyyerrrO2NcVfKtF1jkHyqU5Lc=
Date: Thu, 21 Dec 2023 22:53:26 +0800
MIME-Version: 1.0
Subject: Re: [v5,43/44] drm/sun4i: hdmi: Consolidate atomic_check and
 mode_valid
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
References: <20231207-kms-hdmi-connector-state-v5-43-6538e19d634d@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-43-6538e19d634d@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_065344_356440_F2A35181 
X-CRM114-Status: UNSURE (   6.42  )
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
> atomic_check and mode_valid do not check for the same things which can
> lead to surprising result if the userspace commits a mode that didn't go
> through mode_valid. Let's merge the two implementations into a function
> called by both.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>


Acked-by: Sui Jingfeng <sui.jingfeng@linux.dev>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
