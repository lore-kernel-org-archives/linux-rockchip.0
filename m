Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1013CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 09:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lj2XPuGuboX8mrYxMElvHQRT8Gf2bC9ZJoGffKXtZWI=; b=K9PCAfdrFsFNCO
	yKucE12dI5VXibThAcLGMWnoQnmK+HmDrE6M6ZkUxPqVlwxKah+tP3zm92qwlGB0Bn15VsL/HLFo3
	xKHNwzPbBdngu1877+2RCN3wXnLtyJdgHTR+BvzyvO5zQzU88xzfjaqgcyFqIpld+i1jRHjuKA32M
	dYysVU+ol7aVn7pzqnI1cvX54KzHZzvm7AEy966SoZrSTeRNcuU1fmRaXuTIsZy0h6wIqxX+eOM+L
	XRrCgGDnL4MSAA3QAom7of/R0JU30RHc1a1zNHzYS02KeUIly1TdXuqfIfI+Pev3V566VLSgKJrUv
	RuAmmEtBZDNOJOIReMoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB8YC-0000000GQbE-3Z54;
	Tue, 21 Oct 2025 09:21:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB8Y9-0000000GQai-20fd;
	Tue, 21 Oct 2025 09:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=PWQL1JLu99aUScGTl3BlK8hhjZ5L6bf92gYoRK4SM6g=; b=QJ2mTk/s2xEy7yC+Fx+lSwDvMI
	O/QiJ/tHF/+pDGH4pZeJwHhtq8/fREjwOFW3szKRzqnPwk13ns38zcmX0V3yYTpQ4SRmr8JpEPfbC
	NhEJKZVMMf3UadSo78WdDeKuyuC0ujKQaR+bgc5RL9UGkLEIKIYzW5RXtrmh5lBKN8HtopTzrH2nT
	Fo94U4rHsNwupvuOMlttre6IOCXOE+wSOwLUaXSYhnkw3ekDvQDh8Fi/9ntKEE6NDC2l4swF1GiD0
	99RtjZT8W0Qcz5xNzurmqhxAUxT/csZ+V0c9Pubrdis9wGXdbwVK0XlZm/Ik74lMAj5wY/Gx2dQxM
	QjSgMQTA==;
Received: from [212.111.240.218] (helo=phil.guestnet.ukdd.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vB8Y7-0001mu-Ct; Tue, 21 Oct 2025 11:20:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: WeiHao Li <cn.liweihao@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/1] soc: rockchip: grf: Set pwm2/xin32k pad default to xin32k for rk3368
Date: Tue, 21 Oct 2025 11:20:57 +0200
Message-ID: <176103845188.96519.2904538243540608377.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250906142125.7602-1-cn.liweihao@gmail.com>
References: <20250906142125.7602-1-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_022101_672949_55A02D3C 
X-CRM114-Status: GOOD (  11.95  )
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


On Sat, 06 Sep 2025 22:21:25 +0800, WeiHao Li wrote:
> PWM2 and xin32k share the same pad, but some peripheral need to xin32k
> clock to run properly, such as tsadc. I have observed that this pad is
> used as xin32k by default on some existing board [1], so it maybe more
> appropriate to set it to xin32k by default.
> 
> I also tested it on another rk3368 based board [2], without this adjust,
> tsadc does not work properly.
> 
> [...]

Applied, thanks!

[1/1] soc: rockchip: grf: Set pwm2/xin32k pad default to xin32k for rk3368
      commit: fc3d701f0d75ffbd788991cbf84f4937435e504e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
