Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67056ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 13:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qo/vPV5rXUHZMvaVfu0l7CEOiWRp+gyXBypW9XIPYZY=; b=NYwOJP3x96Ziog
	FY4qdSN52U3AL4qpcjFlv47iHYPRIVVEQVf6zIuLd+SVwbXfN521z9x+kxqg+WcWZGORQztYOi0XA
	QoE6+RbttxgaJ4Vt6M98oaoGF+9y37rmvoBqCcGqAx83QC13rp6Joso/u+t2vpEFdnkHX4UnXL4OF
	pAX0YIxGPzyPXiVo/g+ypgET+h1BK2mUhsrrd7VPROR4bnc3kklubdZLUAzm4lFqKrcSfi6i3qP+F
	ur8Az4vXKsoGR0Xv1WtId+2xTF97irDtnFK9K1TWmWy17DUVMfMlK7LDth7hjfvSI1Vmkxu0/35yY
	b0ceEdckyg132FL6w++g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYp6b-009Y1N-W0; Thu, 15 Sep 2022 13:40:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYp6M-009XgZ-Lf; Thu, 15 Sep 2022 13:40:23 +0000
Received: from [89.101.193.72] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oYp6D-0004w0-Po; Thu, 15 Sep 2022 15:40:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	Hugh Cole-Baker <sigmaris@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	ezequiel@collabora.com,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/3] drm/rockchip: support gamma control on RK3399
Date: Thu, 15 Sep 2022 15:40:11 +0200
Message-Id: <166324919922.172360.5495329788768781703.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20211019215843.42718-1-sigmaris@gmail.com>
References: <20211019215843.42718-1-sigmaris@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_064022_734775_9278EC68 
X-CRM114-Status: GOOD (  14.10  )
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

On Tue, 19 Oct 2021 22:58:40 +0100, Hugh Cole-Baker wrote:
> This extends the Rockchip VOP driver to support setting the gamma LUT on the
> RK3399 SoC. Previously, the driver supported gamma control for the RK3288
> only. On the RK3399 the method for updating the LUT is slightly different.
> This implementation was based on the code and description from the vendor
> kernel [1].
> 
> The RK3399 also has the address resources for the VOP general registers and
> the gamma LUT located adjacent to each other, not on either side of the IOMMU
> address as on the RK3288, but for simplicity this series follows the existing
> DT binding which requires the gamma LUT as a second address resource.
> 
> [...]

Applied, thanks!

[1/3] drm/rockchip: define gamma registers for RK3399
      commit: 3ba000d6ae999b99f29afd64814877a5c4406786
[2/3] drm/rockchip: support gamma control on RK3399
      commit: 7ae7a6211fe7251543796d5af971acb8c9e2da9e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
