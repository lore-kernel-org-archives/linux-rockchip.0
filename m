Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF4C9EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Aug 2023 13:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttMryKuG7NFvqanPRg7Y5lJh1p3Fu+T/HDUTKxKkoyg=; b=gImwzjtbyVzsir
	7/thpAtR4Q+5DSqZGFQfXzm0NlHmkIoD7zzbTVpXM2AUlwVJVMXnNYTkq978sVp+peah91gLwPYCV
	sBSvr5Drur5ZmJVB+wFA/aIZWe0iK6YxwONnHM3A4Afe7Z3gjXTYy/T/Ur7UjfDVnPM0597viFHFp
	jo3Gc6smf1zt0z7djnyMUw+s8PV1j7XHJMKNJ7pSdcyv8SDgQbLWRSN8fJWMyJcvWljNX3yFXwW/P
	Dj+eUUN8ZWlRa2UQYkFPv3jTVL8rNUwBndwIbYXprJetnRj7WzhOyTSM946Mm97JjfAEZbX6aIPlz
	MiXAiqHUmZnlTG8Zg55w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTj66-004yrw-1r;
	Wed, 09 Aug 2023 13:19:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTj63-004yrO-1z
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Aug 2023 13:19:32 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qTj5u-0007GY-58; Wed, 09 Aug 2023 15:19:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Stone <daniels@collabora.com>,
	dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	hjc@rock-chips.com
Subject: Re: [PATCH] drm/rockchip: Don't spam logs in atomic check
Date: Wed,  9 Aug 2023 15:19:20 +0200
Message-Id: <169158715143.3231933.6558900139688537065.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230808104405.522493-1-daniels@collabora.com>
References: <20230808104405.522493-1-daniels@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_061931_674967_CC81712C 
X-CRM114-Status: UNSURE (   8.78  )
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

On Tue, 8 Aug 2023 11:44:05 +0100, Daniel Stone wrote:
> Userspace should not be able to trigger DRM_ERROR messages to spam the
> logs; especially not through atomic commit parameters which are
> completely legitimate for userspace to attempt.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: Don't spam logs in atomic check
      commit: 43dae319b50fac075ad864f84501c703ef20eb2b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
