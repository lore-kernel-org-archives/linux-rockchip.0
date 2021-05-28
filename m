Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C323C4708D
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:11:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C362C6124B
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:11:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C362C6124B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0YuLk7mvzCj4RpZbAPNkL33ooaVTb34wXofYWfjUoU=; b=I6We7W6PfE/5Ii
	/0G17K6P1xkECfewmx6nLIoVajbwpQ9OTZIU3++pO883Wv90br9lWK8RiDJeCSw4deyb27kOnQwsA
	1l69n02blPSluapUb1Lt1baxU2C4MhDigQtCQn4JAT8YYVCm+aGg6iTEW4tKWy5219Mpbpj+NHqwD
	IHXo2R8CyZCxwiuQBQWA++sAURzlinws1+6tZJe3ct+ybE6c/rP/l1byvEM45UpCDZ6Kq8PtILIO1
	MJkOeh+hl32qLrH3ZnPHBTHCXuNXqcDsOuods3d4M2Jfn5ZtyUn9FBYcJbPlP/cCM5EqR+AvmoXeT
	PnUf34GQsYth3dTIJ1wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmgwr-0007QP-LM; Fri, 28 May 2021 18:11:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmgvm-0006i1-Dk; Fri, 28 May 2021 18:09:59 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmgvf-0006Ve-5R; Fri, 28 May 2021 20:09:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	Thomas Hebb <tommyhebb@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, stable@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andrzej Hajda <a.hajda@samsung.com>,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH] drm/rockchip: dsi: remove extra component_del()
 call
Date: Fri, 28 May 2021 20:09:45 +0200
Message-Id: <162222530163.2887132.8458225826944784611.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <201385acb0eeb5dfb037afdc6a94bfbcdab97f99.1618797778.git.tommyhebb@gmail.com>
References: <201385acb0eeb5dfb037afdc6a94bfbcdab97f99.1618797778.git.tommyhebb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_110958_518341_E6110FB1 
X-CRM114-Status: GOOD (  10.07  )
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

On Sun, 18 Apr 2021 19:03:04 -0700, Thomas Hebb wrote:
> commit cf6d100dd238 ("drm/rockchip: dsi: add dual mipi support") added
> this devcnt field and call to component_del(). However, these both
> appear to be erroneous changes left over from an earlier version of the
> patch. In the version merged, nothing ever modifies devcnt, meaning
> component_del() runs unconditionally and in addition to the
> component_del() calls in dw_mipi_dsi_rockchip_host_detach(). The second
> call fails to delete anything and produces a warning in dmesg.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: dsi: remove extra component_del() call
      commit: b354498bbe65c917d521b3b56317ddc9ab217425

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
