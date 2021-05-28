Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF8EC47087
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:10:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 39E5E613ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:10:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 39E5E613ED
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lmFrJ0ku4KiWdeKGLQeX/5r1voQHuTZjYEUQtGiJV8=; b=4Aucxru0otoDKo
	soR9lrrrk0+BjalilSYPt688zJIlDeS5p9yysP+Gs8mDAxXlh0sHb0cMNvGAlmSCYQpDfRqEAyZIe
	SCqR6sjVSBfXWL3B14vOjvTjJFoWJgY2a92IOPQ+aq0ik4BdT2DwKfKyW9c1wjwPfFG8GTX6qjZnx
	0yl3+q3MxdA+bPJ41hZZXKBPp2tjNRBYWKdoJOxbqaIe438xL4zodgszPKFtmn6SwlNDkWtPSbl8V
	hPaRyFs4AX/xcjmTJ3qHMH0ZhWIsW6kfhLJHaKSKlRjvpIJxxFg6ijaH6TrO8STAJmMi1nYq9jJoy
	A/5TLyTWTS3scRsXE3WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmgvl-0006hu-F9; Fri, 28 May 2021 18:09:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmgvj-0006fV-7T; Fri, 28 May 2021 18:09:56 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmgve-0006Ve-27; Fri, 28 May 2021 20:09:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>, linux-rockchip@lists.infradead.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>
Subject: Re: [PATCH v3 0/5] drm: rockchip: various ports for older VOPs
Date: Fri, 28 May 2021 20:09:42 +0200
Message-Id: <162222530163.2887132.16504920564913843311.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210528130554.72191-1-knaerzche@gmail.com>
References: <20210528130554.72191-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_110955_292276_E0DBEAF7 
X-CRM114-Status: GOOD (  13.50  )
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

On Fri, 28 May 2021 15:05:49 +0200, Alex Bee wrote:
> this is v3 of a series I posted almost 1 year ago. I considered now all
> feedback I got at that time.
> It mainly ports existining functionality to older SoCs - most importantly
> enables alpha blending for RK3036, RK3066, RK3126 and RK3188
> 
> Note some of the patches are required to let VOP correctly process the
> data that comes from the video decoder - I recently posted a series that
> adds support for those older SoCs at [1].
> 
> [...]

Applied, thanks!

[1/5] drm: rockchip: add scaling for RK3036 win1
      commit: 53c2710c0d92e615c9fffcc64aa963dfa0e100a7
[2/5] drm: rockchip: add missing registers for RK3188
      commit: ab64b448a175b8a5a4bd323b8f74758c2574482c
[3/5] drm: rockchip: add missing registers for RK3066
      commit: 742203cd56d150eb7884eb45abb7d9dbc2bdbf04
[4/5] drm: rockchip: add alpha support for RK3036, RK3066, RK3126 and RK3188
      commit: d099fa672cbe8766d9182e0fd04c65058200128a
[5/5] drm: rockchip: set alpha_en to 0 if it is not used
      commit: 046e0db975695540c9d9898cdbf0b60533d28afb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
