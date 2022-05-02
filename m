Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B9C9C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 May 2022 22:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+nVDbJ64MVHQ6SDJ6evXFlU1qWcJltyOYJ+LEcyIMc=; b=za62gZgyZvOfR2
	UPk9OlUyu0u7fgura8rZNc6UsrhEU+h/R7A09stTvzsvDbfCqkmHDr0kJ+mfxVrbbUvDOq4OvYLzc
	b9Zz5rCOXWYE+d9jcsPkfPg/vq/P8CHUPcASNsAEmFqFkMljInOaIt1vJU+VwQNorrhZUtR8Y2NKi
	CSlhgluGhnvoddr5gxVEHDNEMutkLw1QmCVDWntAQf4/c/lHZIJ5DFrIms6SfzXcTzqZQURbBCNH/
	c3MBJl7p2tQKPQ5aRKfXZCPv8HEeq6/JuppxGes5pLK3VTdYPdFGNTL4A7/h9abIecfUneY2GJlhc
	VG9MEp2G9mAp1ww2MbLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nleTK-002uOG-81; Mon, 02 May 2022 22:24:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nleSo-002u8q-Oe; Mon, 02 May 2022 22:24:21 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nleSf-0005bu-Cw; Tue, 03 May 2022 00:24:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Tom Rix <trix@redhat.com>, hjc@rock-chips.com, daniel@ffwll.ch,
 airlied@linux.ie
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: cdn-dp: change rk3399_cdn_dp from global to
 static
Date: Tue,  3 May 2022 00:24:04 +0200
Message-Id: <165153020899.255051.8052745569188083636.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421144304.586396-1-trix@redhat.com>
References: <20220421144304.586396-1-trix@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_152418_851355_131F62ED 
X-CRM114-Status: GOOD (  10.17  )
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

On Thu, 21 Apr 2022 10:43:04 -0400, Tom Rix wrote:
> Smatch reports this issue
> cdn-dp-core.c:51:20: warning: symbol 'rk3399_cdn_dp' was not declared. Should it be static?
> 
> rk3399_cdn_dp is only used in cdn-dp-core.c so change
> its storge-class specifier to static.

Applied, thanks!

[1/1] drm/rockchip: cdn-dp: change rk3399_cdn_dp from global to static
      commit: 7494b1ed1df414e43dc8429f0c016b2054b1b5da

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
