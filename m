Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5521CF483CA
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 16:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNOUPSPtudBRJpqwsfc84kdl/9+uXiciTHBPnMycKx0=; b=nX9vlE8nKO8zrc
	T/qALz6iVBdmTdknhhJ1Z7Pd0Czcw2ezKeUxj79X4RQZzKMy/WujzAR6rHdBLZCOjo50aS8zhy8S8
	mExHxl/xy37PO18fs16AChPQInqmuYdtOzCBrHSutjPUiYl8Sw+0u/18kF8aW4jdn3P18V6iG1Q6n
	hgz/jfmGYoEDXZeRwDTDBRJeOlousf4lltHBkafdkfyiJV7pjQlYW/U3mDyYHhdL5i4518Mpgo8jj
	OfQHSR0tAQ6qBI+9huorw2BBY2EFKqXn5UQ59Qe2PrSI2BgJjmfRY6VCYqkhsuoBFNwv1JfdCOHEd
	Fy01lstg6y5aH6Edj+PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4hw4-0000000H6ip-1Epd;
	Mon, 23 Mar 2026 16:15:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4hw2-0000000H6hP-1dAx
	for linux-rockchip@bombadil.infradead.org;
	Mon, 23 Mar 2026 16:15:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:Subject:From:To
	:Cc:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=L93GLqLus5B8kLAj3bNWOHqwo3TpCpr9wsx8jieRi1E=; b=qUZ1kb/RZLs29hauhNeXa+XFzO
	vp2W2arcS6b/A2q96PWGRwYTIuZIbKLyJ/tAtZVixTT2hrE27kTDzJGNol0acSiZauAkJs/QFpB3/
	wVwBDLjb96H8GXk7btoUwzjDLbTQBCwSXvPkrGoMcK4qOUzg6Unv9Dr2MCgYOc67Fgurp1exPWbvw
	/Y+E5I9NH5zsGLiceUqvAJkcwYMkdWrMhdrgIRhyfST/ba/2LuDvRLl7JKgWrlh2MW6DRbHpaj/k5
	mWlPKsBd554o/ToomCeRiL+iFXIy0MRUPQfjZiYcQrx7WFrqtVsvEgGXuootSCpAWbHuxg0sCQ2Y4
	u4EaBgFw==;
Received: from smtpout-03.galae.net ([185.246.85.4])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4hvy-00000001wlX-3nRa
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 16:15:21 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C7AD44E427B3;
	Mon, 23 Mar 2026 16:15:10 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 821D7601A0;
	Mon, 23 Mar 2026 16:15:10 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BC02710450FE5;
	Mon, 23 Mar 2026 17:14:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774282506; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=L93GLqLus5B8kLAj3bNWOHqwo3TpCpr9wsx8jieRi1E=;
	b=Y9Q5yK4wSxbiIxPpWmJBuauTLMPubXYCTglW000y3lpGh25SszpOYvUrxJuQECba/o2q1l
	TjuoLvy2B7i+go4faD59gCap17AtHWUaqSeq5NMW/ms6zrQ5Tz4kcdXIWZbIB2lMNrDhzj
	35dSPmVEiJTV/JXx2gXhAxV3IitA7Dn1L9CRdCTrkwrJ8Z9K/pOtEJVAKDl74Wpf4CS9nW
	P7VoidWaZhEsqS0s3HmOvrCuxYGgp0bACrvOjA7DyCOoXBkpv153f9Q3RuRa1eUhtR7AiM
	4iUu6RfXa4LN9MLMyH9RmxXQCWhrLZpVaHWh8Iq3HEktUyhE41vVtz58WeRNMQ==
Mime-Version: 1.0
Date: Mon, 23 Mar 2026 17:14:50 +0100
Message-Id: <DHAANFJ6QZKU.5NN7RD47T8TI@bootlin.com>
To: "Damon Ding" <damon.ding@rock-chips.com>, <hjc@rock-chips.com>,
 <heiko@sntech.de>, <andy.yan@rock-chips.com>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v2 7/9] drm/bridge: analogix_dp: Rename and simplify
 is_rockchip()
X-Mailer: aerc 0.20.1
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
 <20260319104031.1986946-8-damon.ding@rock-chips.com>
In-Reply-To: <20260319104031.1986946-8-damon.ding@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_161518_992614_F4C42A7B 
X-CRM114-Status: UNSURE (   5.65  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, dianders@chromium.org, linux-arm-kernel@lists.infradead.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, kever.yang@rock-chips.com, heiko.stuebner@cherry.de, linux-rockchip@lists.infradead.org, amadeus@jmu.edu.cn, alchark@gmail.com, Laurent.pinchart@ideasonboard.com, didi.debian@cknow.org, m.szyprowski@samsung.com, nicolas.frattaroli@collabora.com, tomeu@tomeuvizoso.net, michael.riesch@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu Mar 19, 2026 at 11:40 AM CET, Damon Ding wrote:
> Rename is_rockchip() to analogix_dp_is_rockchip() for naming consistency
> and readability, and simplify the code with switch.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Suggested-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

The patch content is OK:
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

However this won't apply without [0], correct?

So, worth mentioning in the cover letter that this series depends on the
[0] series.

[0] https://lore.kernel.org/all/20260319071452.1961274-8-damon.ding@rock-chips.com/

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
