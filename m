Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E85CC636CD
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Feb 2023 14:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5EDDeOV4XJyv0WlqPWT2n+JEdrD92/3sODDgQQ7+Yw=; b=vSAiJrN9fRrCSI
	rEUYl0oROzDs8yyIhrzG++URd19upohW6/Qqw+d6XIGSoV3nPnJSIKyNBWci+L10I+sBOaEjWMlbg
	ZishKzVL7T+Z7MFByX8ROVqZ9/3gM80IEJ9Z3SKWm886/0RsR/TvvMN/9aK11b3xVvHvKcB2DN/og
	1futFM81ai93r6aWVO7LqqHcEbVA5ibPFT1SUGwzztss+QX86hpfO7JGI4NZWZh/BBRHqrVHBw7Ok
	lHU4Q3uHSgiVCfw0RskCLEbvFz2VoJ6nDSdEMKIkkjLB8qCsmJRa9FotU+buYkF34CLDdsjpQCjNx
	/+N5+aUWjdyzB0cU6xAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOgRy-006Ro1-GP; Sun, 05 Feb 2023 14:57:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOgRj-006Rg5-HJ; Sun, 05 Feb 2023 14:56:48 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pOgRM-0007OK-9T; Sun, 05 Feb 2023 15:56:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: John Keeping <john@metanate.com>,
	Sandy Huang <hjc@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	David Airlie <airlied@gmail.com>,
	dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: avoid duplicate mappings for IOMMU devices
Date: Sun,  5 Feb 2023 15:56:20 +0100
Message-Id: <167560896726.1025063.3569913562158180840.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221110172415.2853420-1-john@metanate.com>
References: <20221110172415.2853420-1-john@metanate.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230205_065647_592386_6820BC14 
X-CRM114-Status: UNSURE (   9.95  )
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

On Thu, 10 Nov 2022 17:24:14 +0000, John Keeping wrote:
> If a buffer is allocated with alloc_kmap, then it is vmap'd on creation
> and there is no reason to map it again in rockchip_gem_prime_vmap() when
> the existing mapping can be used.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: avoid duplicate mappings for IOMMU devices
      commit: 0020d4cfa3eea0e5fad23af49411217da854fc83

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
