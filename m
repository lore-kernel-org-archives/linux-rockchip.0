Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C138FC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 May 2022 22:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93PTlK/LQ3+71tNJvHvA9b0ZYvTrfBjoULRDYnz+Zao=; b=iCdpW3R4uzXRw2
	XucS1hvy5xPAK97TNVqpHqdB0OCA8t9itqwzdfDZuXTTfgHjOrnQNco77vPXiHv3KWRPzNmxH2AK2
	ZjKVtAVKMXJalW0qV/7ct9G4Mvc3N69yOwSyzSm9ZhGmQ+6ouRlCFOf3egl+zXXYhBsogr+dMgErW
	aWq2R+oQQ7Pv4tB6/RD2UGUECIbsXKEZPcMH9GakVf/uR7rDLtehI5+8jsLwKeHfpiu5EMTy91BSA
	GqmbQ8dgXpJ10c28808l+irOaf7ld3UK0fKaj50KnTHC+aHAuYEisQbvAXrp4u0QvG4s7k3GDPqzP
	RIx0F09VYJtOt4ETZX0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqjAa-00ASGF-T3; Mon, 16 May 2022 22:26:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqjAQ-00ASDc-92; Mon, 16 May 2022 22:26:19 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nqjAF-0006dU-SP; Tue, 17 May 2022 00:26:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/3] RK356x VOP2: Change register space names
Date: Tue, 17 May 2022 00:26:06 +0200
Message-Id: <165273995327.2730627.1184879959293003586.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220511082109.1110043-1-s.hauer@pengutronix.de>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_152618_339465_2DD7CB02 
X-CRM114-Status: GOOD (  10.36  )
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

On Wed, 11 May 2022 10:21:06 +0200, Sascha Hauer wrote:
> The VOP2 driver sitting in next uses named register spaces, but the
> binding lacks documentation for that. Add the missing documentation
> and while at it take the opportunity to rename the register spaces
> from too generic "regs" to "vop" and from "gamma_lut" to better looking
> "gamma-lut".
> 
> Changes since v1:
> - Fix dt_binding_check errors
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: display: rockchip: make reg-names mandatory for VOP2
      commit: 54eb8d446e710b5f77969bd34f0a162cf86b8d29
[2/3] drm: rockchip: Change register space names
      commit: 5ee8c8f930ba7d20717c4fc2d9f1ce0e757d1155

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
