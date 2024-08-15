Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08C90C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 10:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+LtF8XDUzG/KwKJh0Xq9I/MeQQRikCmrDbGb1sNG1k=; b=BraGysnrmdJyDm
	8YLiUMeLC1UdjfM6Q/t6R7xTCE4Y8eN8agDzBDcD3gQDMlD8LkimVfVTc4BOl/8BdoSrY6AiUQ54a
	mf1aWf6yka76CO0f5IS2cTtMXPdsR6spwBJ3OF69G7CBLMZRZPL5tv2cPdIhfADXUp+lJ9Yhe4TAS
	VDi+UFfnmHV5FN0WMbSLVd/kbEz58LJNYlZxsX/4GiAOb9Uz5M60LI6BNwcRiiG86ZJAh7KdHgUVA
	gbQ9UMqp36489VAbLw/UqxXihxhTSPeBFDjNXTxWRnklLEZecbcMu/Crx3obzCOvRIRxjhQ0ktvEv
	8lyn5AhzvFqtlLNmW6Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXuW-00000009ebA-09jl;
	Thu, 15 Aug 2024 10:40:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXuT-00000009eZq-2ErY;
	Thu, 15 Aug 2024 10:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5W9Wpx+Nnjyhf+vekam8upWRPfSyFjdBVs1M3EoZVFw=; b=uPemGt1/Ke+dHFyYvX18I4VYkm
	hSvvRaWdLH+nC42xtFH3zJza+93Ew4YaeWy2tx42RzGeQn20mak+fp+pT63yeDibTePn1+YjPaSlG
	Uq1CxO9MTcBPrFE3m74t7uPVPyVA5VMZY7fsS0RI+vWskFD07mT7LWgpTcjHWBqPFYWAElhBbuvXi
	aRITjN6snq5uruze94Jv5u4FTVlo3qHnKrLKxz73MN/7jXTuiOrA+jrdDRYXX9b5ZmFgliyQlvA0+
	cKOou6jerwlt6JLJJRLrpDRlG3kYn3hiG7bPizIFNiI262ptF0eWaZBcbE/R+wotCccH++Ug7Vvv2
	9cIzP/3Q==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seXuH-0000nZ-7E; Thu, 15 Aug 2024 12:40:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	airlied@gmail.com,
	daniel@ffwll.ch,
	andy.yan@rock-chips.com,
	mripard@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	hjc@rock-chips.com,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: cdn-dp: Clean up a few logged messages
Date: Thu, 15 Aug 2024 12:40:31 +0200
Message-Id: <172371788340.684432.3183669049968037964.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <92db74a313547c087cc71059428698c4ec37a9ae.1720048818.git.dsimic@manjaro.org>
References: <92db74a313547c087cc71059428698c4ec37a9ae.1720048818.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_034049_611766_32AC175A 
X-CRM114-Status: UNSURE (   8.11  )
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

On Thu, 4 Jul 2024 01:32:20 +0200, Dragan Simic wrote:
> Clean up a few logged messages, which were previously worded as rather
> incomplete sentences separated by periods.  This was both a bit unreadable
> and grammatically incorrect, so convert them into partial sentences separated
> (or connected) by semicolons, together with some wording improvements.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: cdn-dp: Clean up a few logged messages
      commit: f7f4df8851194d2635fb7989582014329dcffa12

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
