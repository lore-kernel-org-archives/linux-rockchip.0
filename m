Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C44FE7718B
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jan 2025 07:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HXdrsQ2Leiu/qZYCDg5a8kw6n1EAxfsehSUOT0P7Ck=; b=C0IS0oXTsvIA+P
	mpLYAZj7mkbDTLJCtUa+cs69Q98ag3PK5DKFCfvsjv7kb4233nem6sUdm17wr8zrA6YRItP83uCUP
	o2iGMuhSxegVoLg6CCsr6/TXh2r2ACXgGQZwjJHLr1xO3yJ8qMWspjhKTW+M/SqsK7Pu4iNIdB3rv
	3Q+q1Wi6gi6PloOzMstv3cwQH0VFD1mHiqYWBkVXEozzVHssbDTCc+3ItkxBCR0OtKFngEXEmWGze
	2kgdqh3/ZQPRFXH/Tqwq5zOccA5hvz9LT+kPSEVM1MmcZ9ull0RPrZQrbGEDRvRsYtGVScEW4PtNL
	1sEvlUhdN9aJFIqIqhxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTG76-00000009tl1-1zEP;
	Thu, 02 Jan 2025 07:59:28 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTG5w-00000009tdr-0yuO;
	Thu, 02 Jan 2025 07:58:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 90075A40100;
	Thu,  2 Jan 2025 07:56:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 588C4C4CED0;
	Thu,  2 Jan 2025 07:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735804694;
	bh=gnlg1iwRA44t0Q9m776Cc0idy3V/9d7L0QBK8wPFtfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lL4vnxZ/baQURW31Bb0YBJziu0sFojruCSFEM/FqDDifOw8IHAvPPWs+Zs20M87uk
	 /ECz7UP4LZd7TSLaqPLNc8yYG3QfJXFLOQTHSWimMC6rUsyklQRXW5KoWABMtVJl97
	 tspPWDjaqE9peupnQdAPpIdMcScVEqx6R//8AMRPtF/qvk2U+1mf4u4w3vzVrQkYaC
	 /pGclTGyDhwm8iqxMyNmLNxr5iLayZzwBAPtgLBShUyfuZY4XwLrtN+xB8XspUtv7M
	 kEv96pw4/O3h9jo6Dd4GV+RLxRnhJph0y9Cu5XR6FP70l/uGx3ORHcsTzrplky5YI/
	 Rve/tqri1/Xyg==
Date: Thu, 2 Jan 2025 08:58:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 2/3] dt-bindings: display: rockchip: Add support for
 RK3576 HDMI TX Controller
Message-ID: <zz5exgmftibayrh7vjfoq6z32xf2bm3ibejb6rc5xpqslejaab@ex4tj5am4hhk>
References: <20241225103741.364597-1-andyshrk@163.com>
 <20241225103741.364597-3-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241225103741.364597-3-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250101_235816_337076_2CA5DFDC 
X-CRM114-Status: UNSURE (   8.51  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Dec 25, 2024 at 06:37:30PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> RK3576 HDMI TX Controller is very similar to that of RK3588, but with some
> control bits for IO and interrupts status scattered across different GRF.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
