Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ECFCC3064D
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 19:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mPJhGnKHEz9VgtMainEYPwevx09eWztUkPCmlFA1wQ=; b=jjtM7lnb0pJmLR
	dCLTaByVZB1bp+kKp4ha7Z/NtlgLuO3jvwIcpXYmeoSvriU6rWjyT0QIVIVpkXCMafxpUrmWEYzHB
	7a+ltvo/U3I/v+9OI37YKjmDaW1v5snsczIrdGsqZFO9jHtDZ4dLeqSnKkOfQbG38c0+O26bFjpps
	wGKkDN1voJJp6SwrZZ5WgtkXH/hQ8tM1vsnTUCecbgcPzHVbwVBECsGYcp0g8vgNWCaCFoJo2RrAH
	UitSeM5JpkXH3AudP2sXOHFpc6BXvjMh6oYdiL3/dexKgaZblfNlZS3UD6tO3wecQfE2t5hTszpmK
	THmJTXJ4rT7ILLi4At+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMumi-0000000BVAz-1xXL;
	Thu, 27 Jun 2024 19:27:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMumV-0000000BV6W-3khC;
	Thu, 27 Jun 2024 19:27:45 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sMumM-0000wK-Ex; Thu, 27 Jun 2024 21:27:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org,
	sboyd@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	mturquette@baylibre.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1] clk: rockchip: rk3188: Drop CLK_NR_CLKS usage
Date: Thu, 27 Jun 2024 21:27:30 +0200
Message-Id: <171951643517.1057727.8364188588167296321.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <1cd309fa-a4d3-4283-aa47-1330a40448a7@gmail.com>
References: <1cd309fa-a4d3-4283-aa47-1330a40448a7@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_122743_961778_60503F88 
X-CRM114-Status: UNSURE (   8.48  )
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

On Mon, 24 Jun 2024 13:40:03 +0200, Johan Jonker wrote:
> In order to get rid of CLK_NR_CLKS and be able to drop it from the
> bindings, use rockchip_clk_find_max_clk_id helper to find the highest
> clock id.
> 
> 

Applied, thanks!

[1/1] clk: rockchip: rk3188: Drop CLK_NR_CLKS usage
      commit: ec2265dc91307622e43a7d602c3ea425da6f5de1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
