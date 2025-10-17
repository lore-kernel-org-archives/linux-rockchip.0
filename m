Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A765CCCD195
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 07:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5lLt6gnNlMJiyAZuejW9Avmdnh7ufUPZHsTm1S9R0w=; b=bMqttaVdQaUn+Q
	0Y+unmfi/TyMMuSS4XZavMBHQIMWRMXsYxySaO9piDh+XWU9wEFGxSzdFRW7PvtoGKqy778QnmH1F
	qP3iE5teosKM3XXEltj65PqvGnkg2S/qJx6D/ZcTa/rcFp3xE11UGcHq1cv7M5D5+tJ0ND4rsc51X
	JdhljWhd/Uh8xp3+KvV6pY/QjuJImu1QqShmpqYWzrPNao0hsY3tvSPOU19KbxBEPc5TS9Mzw8lAC
	mJ8qMbQddbZw+PORNHEj5hHcWyDzGrrFfz3jDFtFZDY2BXyKPgsbT9xC+OxROqJ4dhkjdzPatkmEC
	03kju3VfLxwIOy1/aCug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9fMC-000000071X5-1gFq;
	Fri, 17 Oct 2025 07:58:36 +0000
Received: from mail3.ecloud.global ([135.181.139.185])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9fM9-000000071W8-3QTg;
	Fri, 17 Oct 2025 07:58:35 +0000
Received: from authenticated-user (mail3.ecloud.global [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail3.ecloud.global (Postfix) with ESMTPSA id AEBAD8844C7;
	Fri, 17 Oct 2025 07:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io; s=mail3;
	t=1760687904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5+N/g+Cv9kWgSOuIgoyJn0tjR7NN022I4B62iu5cZoI=;
	b=Bwe+9CcyUwQRoVsGFfIVFX7RAtwlIiFEUdlhv3ANwuLFytOkKmG5tMD3H6j/XdnEZGik/z
	L0h0EfmDWuHP/7ytSuLPFEmLJ9P6vVpjHa0TaDtq0Kpmys0p9oR2p0SHL+/9++d5c0P+Bs
	xTonHHy3cApXXPbD6tCP/sUxOQR4Q0g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io;
	s=mail3; t=1760687904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5+N/g+Cv9kWgSOuIgoyJn0tjR7NN022I4B62iu5cZoI=;
	b=h7XC6EJLNOSr2xCjrKKvzFpTGgC37z8vwGGUEz/yDpwgEM1EFv9ihoX3mWMEs1aZkf1kCW
	R0/HMKBPOAB88wj5s+pWSl9MJOGGWxCIgq/E0UUExaxLNmyFtIqGxTxHrf1GT0EaXhyeBJ
	g6KWr2MOYwx31wQ3kzXnhqg6IeYx7yU=
ARC-Authentication-Results: i=1;
	mail3.ecloud.global;
	auth=pass smtp.mailfrom=maud_spierings@murena.io
ARC-Seal: i=1; s=mail3; d=murena.io; t=1760687904; a=rsa-sha256; cv=none;
	b=0j0ePx5LqN5bNtXIaCR6iUppWGVksPuWjcEHiLwqt4vi9w6bXwRmsly/cu1e1ko/x/TcZ1
	rYi2dNWvWgPA6dPOrjf4/OPq/tmcAMEzh45RF3rfArefZ4yrUBvzmxJVntRIKbNGMQ4Cum
	jWmVbmTk3idqcDHnOavdiktfS2fua0Q=
Message-ID: <040d8fe8-da2f-4aa5-a2c3-1aec0cf2e8f0@murena.io>
Date: Fri, 17 Oct 2025 09:58:22 +0200
MIME-Version: 1.0
To: andyshrk@163.com
Cc: Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com,
 andy.yan@rock-chips.com, devicetree@vger.kernel.org,
 dmitry.baryshkov@oss.qualcomm.com, dri-devel@lists.freedesktop.org,
 heiko@sntech.de, jernej.skrabec@gmail.com, jonas@kwiboo.se,
 knaerzche@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 neil.armstrong@linaro.org, rfoss@kernel.org, simona@ffwll.ch,
 tzimmermann@suse.de
References: <20251016083843.76675-3-andyshrk@163.com>
Subject: Re: [PATCH v8 2/2] MAINTAINERS: Add entry for Innosilicon hdmi bridge
 library
Content-Language: en-US
From: Maud Spierings <maud_spierings@murena.io>
In-Reply-To: <20251016083843.76675-3-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_005834_331954_0E9063EA 
X-CRM114-Status: GOOD (  14.93  )
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

Hi Andy,

> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add entry for Innosilicon hdmi bridge library
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index f9f985c7d7479..0adcfb1c264a1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12299,6 +12299,14 @@ M:	Samuel Holland <samuel@sholland.org>
>  S:	Maintained
>  F:	drivers/power/supply/ip5xxx_power.c
>  
> +INNOSILICON HDMI BRIDGE DRIVER
> +M:	Andy Yan <andy.yan@rock-chips.com>
> +L:	dri-devel@lists.freedesktop.org
> +S:	Maintained
> +T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
> +F:	drivers/gpu/drm/bridge/inno-hdmi.c
> +F:	include/drm/bridge/inno_hdmi.h
> +
>  INOTIFY
>  M:	Jan Kara <jack@suse.cz>
>  R:	Amir Goldstein <amir73il@gmail.com>
> -- 
> 2.43.0

I believe this patch should be squashed into the patch that actually 
creates the files listed in the MAINTAINERS entry, like I do here [1]. 
Checkpatch should be complaining about patch [1/2] if I'm not mistaken, 
when you run `b4 prep --check`.

Link: 
https://lore.kernel.org/all/20251009-max25014-v4-1-6adb2a0aa35f@gocontroll.com/ 
[1]

Kind regards,
Maud

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
