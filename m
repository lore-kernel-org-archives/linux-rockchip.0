Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2664ED0BB70
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 08:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2gILQBxLMiNo+LBOxxLmfX+ShinCcJYF2cz2QbEV68=; b=aGPwKJUGMS4VCv
	k5L3xHWwOvWU1ijxVuIP/bdByqFRusp4DvrpCJzx54cY/p5QaeMk0Gtt4l+auTXbUq/5yFvBKDHAH
	TzpgplQNoDrbLR2YEr0uLsp4A+LB9YV6RdmlaedeOqoUeNwfHIBX6A20fVolZJf2mdEQI4ZYQl5rp
	LZuoYMwEc6ZKOeYqSYBRFKUeTnlGYJq4zdLo8JQzT26w5JwLfg+IfMKWWEds8lBvC7AzLrayFTSRd
	uj/+0cPLfc35Kpbyrzk2oKqkL1OrUkD2NDH+cY7S7FHwQ/Gg1wRac4dfhDeoMLAFZiFR5cdJypwzB
	l7lR+tFcgN0STjA+QQWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3tFC-0000000HI7w-2OoQ;
	Thu, 24 Oct 2024 08:30:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3tF9-0000000HI5G-247f
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Oct 2024 08:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FbpYzynL8j8FPCK9p8UNDAFAUpKlvPF0dfTZOLnQff4=; b=n7ylEqjzfyXYT6YeP7YPoJk1Gt
	+nMiA+nmXFJ6hwdU91CZpPoQ8WVOdlyxzsK9I/iTv7RCOX7qHrHbKOWgp/QSaW0lm9AQ9niXFx6W0
	VGQasmmAG5jhEd0KiIYEprZ87MAjaAKl96nse53qmIlsxBGg2lC/qx4mCP6Qf/Kb6GygMjUbfKmil
	9+CVlVrXTDfDO9cpFmlC3X9li3e3rgXJCtx5Y4SEJPKd1SUeSvIQftJy7TWqh7KB7vG+qPNlCQY5C
	qSfVFmR6I/zyyZxUI2rpuHy3axTcFdfgG7fx1+5XFygHOKrwC/cuoBJ9dWKyau1Q295sQP4User1/
	Z1ltI6cg==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3tF6-0002iS-1F; Thu, 24 Oct 2024 10:30:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: reorder audio/hdmi nodes in Orange Pi 5
Date: Thu, 24 Oct 2024 10:30:46 +0200
Message-ID: <172975863599.1671562.13954194157199624740.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024041851.5600-1-honyuenkwun@gmail.com>
References: <20241024041851.5600-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_013055_574724_BA8A04B7 
X-CRM114-Status: UNSURE (   9.36  )
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

On Wed, 23 Oct 2024 23:18:51 -0500, Jimmy Hon wrote:
> Fix the node order so analog-audio is before hdmi0-con
> 
> Audio was submitted first, and it wanted to live above the leds node.
> Next, the HDMI was submitted, but it wanted to live above the leds node.
> However, HDMI was approved first, so the Audio node ended up living above
> the leds node.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: reorder audio/hdmi nodes in Orange Pi 5
      commit: b5e273e26a6a298de46f73ffd4bad6c0b7384c38

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
