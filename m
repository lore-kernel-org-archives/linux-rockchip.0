Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 985B4CF3945
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 14:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBnnuPnd6IM4tp++ObU/72r4NVhJxy8W+W2bjlLG1o4=; b=qxLVVXrYraEhAN
	GHJGoIULs03DwPiolw50Hb5Loa8lbj1WTgPKUxzkFKlkmuMRu9Zp4p4TgK368OhrvyI8nTjaSKxTO
	VPhn+GIFUr6FUeGovNYALgW93j0RABBToMyCSuKR4djrpChmCVZrvYAAFPJgGvruxKz4MKYJDlprq
	e6+cLPoDwy9PBzM9C3MObsAc3NBoYxrJR7RrJiWFYrtW4hD2aCc8OUpdVY+rQUpe50/wEbPrGTsz6
	YwVI5srTzOgWU53I9OWDDF7Fw5isJeTVf/JeqEPhCg45B/kBpv5r+Gq7K1NTxdcqMMBw+kY+WqbIL
	hLenQl77FKrUIMeTXuFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srIBT-0000000AShf-4BVf;
	Thu, 19 Sep 2024 14:31:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srIBR-0000000ASgZ-3BAA;
	Thu, 19 Sep 2024 14:31:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=m1kKdtQcHJV23d4r0PzJxxLgP4SECr7H28gdaL/ivo8=; b=tGA0UHveyFNjTcySmyThcr+q3L
	mKPBKAzU2vvK6UgTV5y1lvRZmnI4bAgALqqUjEWDRxAxwpRKWqxpnPEuneJYOgceW+BRYOANgkMUZ
	RGl3Uzsa5iJY2+seBz9WyefH4EgHAHg6vWuOUWhDIeiU9dKOwU2UD1aONAd+U/oOz9XRQT/gy1hZ/
	zDg0UBEA7G0qEQ1R3FB7HtlUAVv0d7Pq82PPxIrATd07UuNI+JWUsfyMvPuSLfH5mVbk6TXyZkEXt
	swjvuVqpRM840gd1vtz+mEzTrOC+K77TCTx+r2kg4CN86hpPOPQo4F2upTEeUkcjx06sfEdSf8v/T
	Y0aAPmmA==;
Received: from ip092042140082.rev.nessus.at ([92.42.140.82] helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1srIB1-0003XD-KQ; Thu, 19 Sep 2024 16:30:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Maxime Ripard <mripard@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Andrew Kreimer <algonell@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Matthew Wilcox <willy@infradead.org>,
	kernel-janitors@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: Fix a typo
Date: Thu, 19 Sep 2024 16:30:23 +0200
Message-ID: <172675621368.1213843.17065893095023530764.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240915123943.105118-1-algonell@gmail.com>
References: <20240915123943.105118-1-algonell@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_073101_801562_61DB4FE5 
X-CRM114-Status: UNSURE (   8.69  )
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

On Sun, 15 Sep 2024 15:39:43 +0300, Andrew Kreimer wrote:
> Fix a typo in comments.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: Fix a typo
      commit: 87d45979140e49611696e97e2b33df572bf4fa24

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
