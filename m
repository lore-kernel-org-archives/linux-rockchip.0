Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B3C3C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 18:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKKlS2V4Gz1P8eIaHtK0q8+6iYqgyeagsP+pWoG8hWE=; b=2/JdfJ/CbxmAUG
	e0cR6QD9VPMY476sWnvVLAagJyhFPMg/fINj9M0N8RL2WZS3AkzTXo6rG7tumlUz6jIFBm5XI1x7Q
	95bgFqoCtWn3OV9e9l+r6Hb0arwqyHOSwbzlQbzoE5WBme67VTmFxN6ODtbiNpc3yjH3hIYqYSczR
	Fz8E9ad2Xx/oCgiOOyWZ5+02A/5WXwrG+Ztacg5uydHu0WaitMSlX+r3GQ5bGfA68WMYCSXIiCejb
	pQbx2X9rc2ToCv5RaYAtcjDc7yUPwkx+2Ck80g7lb+Md2OhNxAE7cRlIuVJuaBjCqM7nO3zRAsIvt
	Z7ZO3opVwiUBlGLG041A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPQly-0000000E6R9-0mVG;
	Thu, 04 Jul 2024 18:01:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPQlv-0000000E6PK-0Q89;
	Thu, 04 Jul 2024 18:01:32 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPQlt-00049m-Mp; Thu, 04 Jul 2024 20:01:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	krzk+dt@kernel.org,
	linux-clk@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH v1] dt-bindings: clock: rk3188-cru-common: remove CLK_NR_CLKS
Date: Thu,  4 Jul 2024 20:01:25 +0200
Message-Id: <172011606371.897267.1165262107995336205.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <6f21c09b-e8d2-4749-aca6-572c79df775d@gmail.com>
References: <6f21c09b-e8d2-4749-aca6-572c79df775d@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_110131_166099_CDDB6F3D 
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

On Thu, 27 Jun 2024 23:17:45 +0200, Johan Jonker wrote:
> CLK_NR_CLKS should not be part of the binding.
> Remove since the kernel code no longer uses it.
> 
> 

Applied, thanks!

[1/1] dt-bindings: clock: rk3188-cru-common: remove CLK_NR_CLKS
      commit: d89e8096957e35742c9922d3f6628f24de0d6163

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
