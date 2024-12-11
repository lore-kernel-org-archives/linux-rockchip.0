Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11DA3E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 22:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9v3KQ71sJ0u5Az99/vgmg7jqriFese2MBmkFpUgRDg=; b=AqOZpRQob4s+dt
	92j23i+w5E2n8KA/OABlsqczHPPCIV7uXxtg6VPXZl2Ae/57F6GEb8t9sUBtm9lc8R+jP6d8vkgqm
	Le/TtWHgo3VqhNNNo7dn1QtIj9E9e098qpPItQnmo6VdfDoBFh/rqie3aOgXSRkfd52j6/3l8Cifo
	p94Zee1o5Ta9zNikyJyglpVVsONptBdTOC/Tup1r8g+vmZdOGZu64TBb2oGtJm20006puWF4jfa48
	Z1DwDhsQhWV0Tey88HAVRzhk9H/nCb+WTXuxF59c7JexYfWe42wN9AjsMt6lAHOf0vEUCpcdiZ5bP
	sd0nDmOUmHkwK5iY4Fow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLVUY-0000000GOvn-2zmK;
	Wed, 11 Dec 2024 22:47:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLVT1-0000000GOfO-1Jm5;
	Wed, 11 Dec 2024 22:46:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=OW/h1nzh5CCUdT1ggvfwoQV+ob57thnT8N0UW6JciMQ=; b=YNmFIjtSY5wrSe3XGJoo4E5zkC
	PwlB6e1pfX998C+kEuUIvmLH2FH8H8ptFgZWDb5JblAWqz+7rP6Bs073Xs7byiiRjfg4gsTTpudiw
	VmLx1wMYMrflsNhFnC6DahwoeVkdNPkienm9OzX5C2OTYpDsQYGNkprD82CEMaEeOYf3MPa+DzGhu
	SB3mECVEGlUGjZ9dh/MGqHV2TQYdsUD5F3rQhNh7FiGCMb0TR29orzFkshsWDAtcy+xJvpe23aQ9t
	TEnPuQFXyzRKgqz5vW5IdGmOueePeYThwMKBOFmUH4UnUEF2ArW/Ch5zoFnnuL5iMNflMoNmZ0Mpf
	cFq+IXCQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLVSy-00000003uQa-0qmR;
	Wed, 11 Dec 2024 22:46:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OW/h1nzh5CCUdT1ggvfwoQV+ob57thnT8N0UW6JciMQ=; b=H5C5SgtTpUoPxNljxNt0dAlg/y
	19ZPytRf2bY75YCC9NPv7ENYidtDC5leXflE409ZeBxxBaUves+A97Qsnne1obKS7Iogk4nZVk9Dm
	8UgXLDinq1682jgfwPrlYDV4bI5+paQTxJf6hg2XdWjT44akuyxz/lqaKijSK8uvFJTQLH/SEJAef
	vaPBjxHS4+OmKhGNbh52oFKDeS8ZhqhSJOIWkOk6ilCjE7IdVLj/ZbRKMOlymb8vDwYI+3et+K+DD
	pmEVT5YlfzYxbDwZ/rOySGbykhEZxZV/yoRgC4aJ4sFjfezw4u/ICfSBwTpzIJ6AWw+UuDXxb7uE1
	Lo9jg6hA==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tLVSi-0000ON-If; Wed, 11 Dec 2024 23:45:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Guoqing Jiang <guoqing.jiang@canonical.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: Remove unnecessary checking
Date: Wed, 11 Dec 2024 23:45:40 +0100
Message-ID: <173395708760.2509957.4198864245551096465.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241206114233.1270989-1-guoqing.jiang@canonical.com>
References: <20241206114233.1270989-1-guoqing.jiang@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_224600_362567_99D160ED 
X-CRM114-Status: UNSURE (   7.38  )
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


On Fri, 06 Dec 2024 19:42:33 +0800, Guoqing Jiang wrote:
> It is not needed since drm_atomic_helper_shutdown checks it.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: Remove unnecessary checking
      commit: 8ddc8dfb8329349d5efb0418c9f20025333e2d98

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
