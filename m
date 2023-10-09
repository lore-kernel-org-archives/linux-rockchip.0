Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D57E6CD6137
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kfgcKjG8j4CLJq9DqAav7SGKovI9lZW5yZOcin0lUc=; b=MCuNAl769ccixz
	3zGeyuMRqMuJ/7jaBR7myZFokxB68nP2najqS6mcQtZPJyrqhZddvA8XKo3781yYvc13dEp8KabVJ
	FF1kRuxzplLv7SrTbDT8fjHqoPYSSTxdzAwHTGuMTEfSdqxSVuUW8iNT1IPlzQFHNZzZFyUBVRSne
	6kSJZ/oaN4Y2zxpkGcsfsJ03w9gtKNNuyLm2HVR2gUPe+TMORyNECxm3DxY4XBnIb4y/F/6rCA6b0
	buPhH4uEmwRJPHxdeW0HD4my+VhoNpGuwOViAcZa/Hoc8fHEr5UndBGpQ/bGSMAzHiIACvmJmUpcQ
	0Wc2XVA/wlwC+xwTa6uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpx0H-00BaPV-1k;
	Mon, 09 Oct 2023 20:37:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpx0C-00BaOa-2B;
	Mon, 09 Oct 2023 20:37:21 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qpx07-00058Z-Nj; Mon, 09 Oct 2023 22:37:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	Michael Tretter <m.tretter@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	daniel@ffwll.ch,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	airlied@gmail.com
Subject: Re: [PATCH] drm/rockchip: vop2: Demote message in mod_supported to drm_dbg_kms
Date: Mon,  9 Oct 2023 22:37:11 +0200
Message-Id: <169688381983.192795.11789020562880068365.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009103753.830458-1-m.tretter@pengutronix.de>
References: <20231009103753.830458-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_133720_718245_990A89C8 
X-CRM114-Status: GOOD (  12.38  )
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

On Mon, 9 Oct 2023 12:37:53 +0200, Michael Tretter wrote:
> Checking if a modifier is supported by a plane is normal behavior. It is
> normal that a plane may not support certain modifiers. Failing the check
> doesn't justify an error message in the kernel log and may mislead
> users.
> 
> Demote the error message to drm_dbg_kms to only print the message if the
> respective debug messages are enabled. This is similar to the behavior
> in rockchip_drm_vop.c.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop2: Demote message in mod_supported to drm_dbg_kms
      commit: eb23cffdd7f085149799e5eda12a9aff792cc34d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
