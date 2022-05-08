Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9747BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 15:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4l2p7MZp4pGQsLGuxaxAaE3O6OLU4zLhylMjOo22BA=; b=ZU5B26UpZ3BdUf
	3mdAgPcRV7OeQJ1D5MTpMF85wQ3QBR1GcS9McI+cs9ctfBgIBHaxecpHXlWkM8MlERz8LBRzAcIjs
	NwO8/rOmngUqy29r5mnvJzt+te8WEwqfLD/Je507LA/691wBPpOMaoVXDME/01FBuEqiIBKH8KrOB
	aECw7qXsU1RvHeacTrcnu39RMrcydz2qDgZooKR6TvWDAhSOry+tQudPn9SPm2iL2u1G8ytYlQ12G
	IWZYqe6WKLCK/PXdu6RoCit4JoH/QYUsQ3BOOLKlDrdgpKefk6H3S0VddA5MLSLkGhIXT/Po5pwA9
	hd1A9O2oUaZHQfL7yKrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nniQ2-00AQqr-Kd; Sun, 08 May 2022 15:01:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nniPj-00AQhq-GE; Sun, 08 May 2022 15:01:40 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nniPh-0000sz-ES; Sun, 08 May 2022 17:01:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Yang Li <yang.lee@linux.alibaba.com>,
	hjc@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, airlied@linux.ie,
 Abaci Robot <abaci@linux.alibaba.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH -next] drm/rockchip: remove unneeded semicolon
Date: Sun,  8 May 2022 17:01:35 +0200
Message-Id: <165202207401.1750960.5749921686386411114.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220505232659.4405-1-yang.lee@linux.alibaba.com>
References: <20220505232659.4405-1-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_080139_572172_1D6477C6 
X-CRM114-Status: UNSURE (   7.32  )
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

On Fri, 6 May 2022 07:26:59 +0800, Yang Li wrote:
> Eliminate the following coccicheck warning:
> ./drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:1476:2-3: Unneeded
> semicolon

Applied, thanks!

[1/1] drm/rockchip: remove unneeded semicolon
      commit: 813bb91da10bb6638dfadad73f2f0a5f9883946b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
