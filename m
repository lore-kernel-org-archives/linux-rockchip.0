Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AFF3E77180
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Dec 2024 23:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjAQG6RoAWIc8PkndXGIX4tqdldhCPrvYPGQX0te8ZI=; b=XRc6EZvmEX4nRx
	q3Bl0xU08qNc1uDOEJ0X3Z1JGY5g76SYF5eJ+0t4L1HJOYs/RftmO1u+yD+g+nP9OvLtGOyH7sEJF
	eI4XTgzl2FalCi7i0yFjU3YmoFyq7PyGh4s63vhR9nrvLhY4CiHIrVFNtKW7dvlUALAoBPkC3mPFP
	W8wR7H5FrcijN8gotdhcXg/iQT6L2OlhTdff9Mf/hNsacPcCYbR/n/qiE9xLjQXfpy1RIyf/ZUBQb
	/5yf3msO6hIS3PuKkwkczuwzTKrpGxSX2dz91AvKk8DTrYeo3y6Qq2/SireoCv6zIbylzvEbWEoE9
	4TxN6j0F/uA68XtWFMJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMbI9-0000000760r-1CgN;
	Sat, 14 Dec 2024 23:11:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMbI6-000000075zq-0MXQ
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Dec 2024 23:11:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=P/dcvQTM5YLir1CGChPDq5O3U4OygiIvAkfxT6zYGWE=; b=rWx5GosIifj3o81oaRH7i/IVUj
	OiZVASVPZd75sZTE1/xHrV9mF+dh5vCHP9tREHi/ZUmc9SjNBBfT+I/tcyYFQyVqwVjZnQc3wYJKE
	jW/CJBkFJHJJkvlhMpW18nGLUmIoeN3GYJ550w6tpfeQ/4UeeGogJz/u97T45cz7f6JTYYGT31PvQ
	qDF+C1fdBIQoWf06XVzuz8+W1eLyMkal/2U0wewFxyczhJWr2fLjom8b4FoatPoQiWBvbpUpk6Od2
	9En2e55rpk6E7nAu2b723DiW1jeZmEnFSnFzEasAmKsMWzSHV9tGl/m8gK0lFeRAzLjLJeW64tz4u
	vffYUgdQ==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tMbHy-0000hg-CX; Sun, 15 Dec 2024 00:11:10 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2] drm/rockchip: Fix Copyright description
Date: Sun, 15 Dec 2024 00:11:06 +0100
Message-ID: <173421785405.212079.15956339456077528024.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241214071333.3325308-1-andyshrk@163.com>
References: <20241214071333.3325308-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241214_151118_122037_4E09AA10 
X-CRM114-Status: UNSURE (   7.29  )
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


On Sat, 14 Dec 2024 15:13:33 +0800, Andy Yan wrote:
> The company name has update to Rockchip Electronics Co., Ltd.
> since 2021.
> And change Co.Ltd to Co., Ltd. to fix mail server warning:
> DBL_SPAM(6.50)[co.ltd:url];
> 
> 

Applied, thanks!

[1/1] drm/rockchip: Fix Copyright description
      commit: 041c664da0691a72aca67f72ab6a13789631358e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
