Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7339C38A02
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Oct 2022 22:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Kh8YC51rp0RrIBo0qSroyo1fqdhAW/CLmZVN6QY8gs=; b=fAg3K0li+6blgK
	CcvA6PTl1O7aqnPNmwcu2LHH7K3I1LlSt8ttuUyBR2dfylawD+oy7lC993s+zMHWVDmXBo3PPyIgy
	g4KJdJEOud/E60obz8hXKQIRHKos3aNvqvS13BcxUZi1BbEoorht4BpOPJKX2BaaMnEJjkqvAxUP4
	vI/MSFC0upPloPPScUkUI9sRvxB5KBJc9C1Suasl2GJmSiyMuXTEtpWKG1RQSgqioaMCteJbdVCEq
	t92Ii5h6Kymo7wGiaFevJEQl25wA4dFeVZoB50X7VbQQPF7PoJuEXosPDgivYQvB5eAP5wYT2fyij
	heyWDxukcm2cgpbYbu0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oou0k-009p8Z-NL; Sat, 29 Oct 2022 22:09:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oou0a-009oyu-C6; Sat, 29 Oct 2022 22:08:53 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oou0V-0008NZ-Ni; Sun, 30 Oct 2022 00:08:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: john@metanate.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	daniel@ffwll.ch,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	hjc@rock-chips.com,
	airlied@gmail.com
Subject: Re: [PATCH v1] drm: rockchip: remove rockchip_drm_framebuffer_init() function
Date: Sun, 30 Oct 2022 00:08:42 +0200
Message-Id: <166708118163.1656095.18036790011991165334.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <ebe91504-c5df-99e4-635f-832218584051@gmail.com>
References: <ebe91504-c5df-99e4-635f-832218584051@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_150852_426575_698B28B0 
X-CRM114-Status: GOOD (  10.50  )
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

On Wed, 19 Oct 2022 23:35:03 +0200, Johan Jonker wrote:
> The function rockchip_drm_framebuffer_init() was in use
> in the rockchip_drm_fbdev.c file, but that is now replaced
> by a generic fbdev setup. Reduce the image size by
> removing the rockchip_drm_framebuffer_init() and sub function
> rockchip_fb_alloc() and cleanup the rockchip_drm_fb.h header file.
> 
> 
> [...]

Applied, thanks!

[1/1] drm: rockchip: remove rockchip_drm_framebuffer_init() function
      commit: 4016379301a33e8bd0c2ef5c02f5d7f6a4afece4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
