Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25ED7C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 11:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JlKjMHgm8DkKhguqicWEU7b5krsWafQp2+1mUEg018=; b=FlGFIqLCI0jpE7
	yaoda0kBKHf/9t+jd33oZxKQeqPYEWcbEplH0Ksc7NNJYFsIsnwv4k7QcOI9yNsbM+ijG+c+awj09
	f54CqwyJP2utXNZ1WOqP+EYEQe/g8D3K4pdJ3XLu2XaycJ0DOZBfn0kxyjFPdv1EH0DNVMFJT0xjL
	QOFNcO7sfhdZM3MpYCjWpexAIGbWgpwtBAA6558Jp92kudhlwTSG1GzPUHqMEHB6SDKxToShNciWr
	InKWjafqoDdrvyCraGthDTfLVjU5MGN9yGHJJcrE91PREdebWY0nsTrT/nu3EhA8gKPUe8Y9JuwFi
	56bjcsJ6ISMltIaBpQZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxmGw-00000005R2g-34VI;
	Fri, 19 Apr 2024 11:19:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxmGu-00000005R10-0MfE;
	Fri, 19 Apr 2024 11:19:13 +0000
Received: from [213.70.33.226] (helo=phil.intern)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxmGi-0000RL-Sk; Fri, 19 Apr 2024 13:19:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: lvds: Remove include of drm_dp_helper.h
Date: Fri, 19 Apr 2024 13:18:55 +0200
Message-Id: <171352551023.2525344.5911304759929385224.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240414120841.837661-1-andyshrk@163.com>
References: <20240414120841.837661-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_041912_266818_AF529335 
X-CRM114-Status: UNSURE (   8.68  )
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

On Sun, 14 Apr 2024 20:08:41 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> drm_dp_helper.h is not used by lvds driver
> 
> 

Applied, thanks!

[1/1] drm/rockchip: lvds: Remove include of drm_dp_helper.h
      commit: 685ba01ebedb8f87673f587f540ba84c444442d4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
