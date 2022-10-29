Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34B16C38A02
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Oct 2022 22:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwaW5umsy5nZLHC++71xSy3eOPXOLBSR2xoj0q3RXns=; b=umRHZKRUgHIkY8
	GBCxXj+lkwOmKHr25rx+HOCXeZme15vMu4fgzE7U0TVXxG/PJXDydzFb73HN3X9M1p7BHX985BXpg
	XUAetzxomuZ3uzTrjDDR9TbnY5hzNFpI5yemJv0drAsxO99RDgEcl0VnheCT30slY/Vrei73rCITF
	GwLgDgBs3EeLxH9/jbsHjBchZTJgCdhWdb8/Uztgx6eQONv00Ajh4c/VYzP4Wu3NdT0ub9yz27H0i
	fZU5c+mIYlo0wd0JpFLKdxx/3XkVEAe7+WvXCfhnKPJcVopW5Nq+26J+17Ef+RaUSiIEJF5h0ryOX
	D0k0VvyGBXRLnyUWRGWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oou19-009pU0-E6; Sat, 29 Oct 2022 22:09:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oou0d-009p1z-JD
	for linux-rockchip@lists.infradead.org; Sat, 29 Oct 2022 22:08:56 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oou0X-0008NZ-3n; Sun, 30 Oct 2022 00:08:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: daniel@ffwll.ch,
	linux-rockchip@lists.infradead.org,
	airlied@linux.ie,
	Zhang Qilong <zhangqilong3@huawei.com>,
	dri-devel@lists.freedesktop.org,
	hjc@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: (subset) [PATCH -next 0/2] fix PM usage counter unbalance
Date: Sun, 30 Oct 2022 00:08:46 +0200
Message-Id: <166708118166.1656095.1443296308637313004.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220922132107.105419-1-zhangqilong3@huawei.com>
References: <20220922132107.105419-1-zhangqilong3@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_150855_644701_7A1FB1EF 
X-CRM114-Status: UNSURE (   8.44  )
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

On Thu, 22 Sep 2022 21:21:05 +0800, Zhang Qilong wrote:
> pm_runtime_get_sync will increment pm usage counter even it failed.
> Forgetting to putting operation will result in reference leak here.
> We fix it by replacing it with the newest pm_runtime_resume_and_get
> to keep usage counter balanced.
> 
> Zhang Qilong (2):
>   drm/rockchip: vop: fix PM usage counter unbalance in vop ops
>   drm/rockchip: fix PM usage counter unbalance in poweron
> 
> [...]

Applied, thanks!

[2/2] drm/rockchip: fix PM usage counter unbalance in poweron
      commit: 4dba27f1a14592ac4cf71c3bc1cc1fd05dea8015

I've ignored patch1 here, as your Huawei-collegue Yuan Can
did sent a different one that catches some more occurences.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
