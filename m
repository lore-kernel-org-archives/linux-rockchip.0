Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7C96ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 13:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anYWWlNnXchdI74eacmHr47XGhLWzvXfi2R+eKysgNM=; b=PfSJvbm5mTIkL1
	f6Xo+tBGoNllNoNnzH12KYcFksXvTQahWxA2+fGzCItuBJvPBLFsDbqLTtwfeiHBxT099WAQki2WE
	P8qBFi3Uvv4I31vGqckgzALnuvmzGMn2Z0jW60UfRK+gfQPLjTljAUCL4FNQ90Bxa4d+ukEAE7PEu
	bs7NB1RvNrHDMOs8d/pBs8ruAHNvN0HQfJ1BM3G903lN1FvYduNoSXI/GXDaI9UIyndzKlDOmm+TI
	v2BvBOcwFfe5Nf/fBdV7DXKnuXb+yEtpUDwR7DtTdUHlU4WeYR1VZ3xotag5iHKA7cETO1budTPgn
	mX94+0MX/oCEEnZmDKlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYp6m-009Y7v-SY; Thu, 15 Sep 2022 13:40:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYp6M-009XhO-LT; Thu, 15 Sep 2022 13:40:23 +0000
Received: from [89.101.193.72] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oYp6E-0004w0-5I; Thu, 15 Sep 2022 15:40:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Tom Rix <trix@redhat.com>,
	airlied@linux.ie,
	hjc@rock-chips.com,
	daniel@ffwll.ch
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: remove vop_writel
Date: Thu, 15 Sep 2022 15:40:12 +0200
Message-Id: <166324919922.172360.17550156520771628477.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220521190716.1936193-1-trix@redhat.com>
References: <20220521190716.1936193-1-trix@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_064022_748073_190C2BCF 
X-CRM114-Status: UNSURE (   8.59  )
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

On Sat, 21 May 2022 15:07:16 -0400, Tom Rix wrote:
> cppcheck reports
> [drivers/gpu/drm/rockchip/rockchip_drm_vop.c:186]: (style) The function 'vop_writel' is never used.
> 
> vop_writel is static function that is not used, so remove it.

Applied, thanks!

[1/1] drm/rockchip: remove vop_writel
      commit: 98a65e6d498c46b0beec7a40aac4b3e404642993

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
