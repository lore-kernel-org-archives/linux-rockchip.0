Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93E25C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 15:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUYqLf0u/5euwp56ztfKWJs8Unpgz9pFnxdQNf7TjcA=; b=SPxITD0jM3iP0c
	+I2YEPNDI0M5S3MSdiLzPZVLVZJ95hRzJPNcBSeU9h+bYm2gwJcYBIDNPEjBh87RZ5oNXuK7Ulp2e
	ik2wfNM8ZNiik8HJGQC7MidGKNDpd7LAy+trEWvPHFdLAKW4s6PrfVO8iT47l63REDRDOuV/PpFFC
	WlY/EJzWirDyya+QhyGsrmiEjMk5WHdR4TvsKUh46QJCFfwMMPLg+UfC12B2cDjaEJdEPkJMOwy23
	HUDWW+d0m+uehtJ6jUcBB2LzsRQ6OMfV579v64Ti3Q2A3nCF+HA/NeS59pbpGutw7Ctbc+C6XuWYn
	iAWS9yHN/pch3EiyYEIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nniPt-00AQlH-PW; Sun, 08 May 2022 15:01:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nniPj-00AQho-25; Sun, 08 May 2022 15:01:40 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nniPg-0000sz-KB; Sun, 08 May 2022 17:01:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, Colin Ian King <colin.i.king@gmail.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org
Subject: Re: [PATCH][next] drm/rockchip: Fix spelling mistake "aligened" ->
 "aligned"
Date: Sun,  8 May 2022 17:01:33 +0200
Message-Id: <165202207401.1750960.10709503575933689106.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220505111044.374174-1-colin.i.king@gmail.com>
References: <20220505111044.374174-1-colin.i.king@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_080139_137020_C6BD5820 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, 5 May 2022 12:10:44 +0100, Colin Ian King wrote:
> There is a spelling mistake in a drm_err message. Fix it.

Applied, thanks!

[1/1] drm/rockchip: Fix spelling mistake "aligened" -> "aligned"
      commit: f0eaf60c67738da8aae786bda74a2fffeca6d7cc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
