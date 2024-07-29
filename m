Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4485EC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 20:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8pVlyKbZrW/7KKZkwYtwK6I4nUZr7CBNoNwR/vpJ4Q=; b=PRn4aPb/lU09ir
	YPSTvYgY3cAcE0TRL1YiH94XvEco2E1vnqnv8mCAtzgaCbGBIeHeASIng1+8Xjn8NpdoAr6mpbKei
	S2xNKWXRDgtnsHUME4qOqkLYuvaEf1/p8fGJQUCcCCeoPmYMoLz5UZCjF76x9a/ZATWWa8lZKWoiO
	DyETnzRucHAClDxqHdJjkqNHdzeL8GCcmg4PRmdpyjFxaof0Fm3fqa2SRiyWOAH/V+bFHtbRD1cZ9
	Rk2dRVOfHvwlo4YDXNu8JepDAFA3hKUz30zNhiMUO+qy1qk0Fh0bQQdKDtyWYsPedc2PLHBAFc0Ck
	iaZhKgOkgCt3afuEhoQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWxM-0000000Ce4u-0v7F;
	Mon, 29 Jul 2024 20:26:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWrs-0000000Cc8s-2zcP
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 20:21:18 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYWrq-0007Xp-3s; Mon, 29 Jul 2024 22:21:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix PMIC interrupt pin in pinctrl for ROCK Pi E
Date: Mon, 29 Jul 2024 22:21:07 +0200
Message-Id: <172228429365.2312452.4773459645868985729.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240722095216.1656081-1-naoki@radxa.com>
References: <20240722095216.1656081-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_132116_969344_929DEEE8 
X-CRM114-Status: UNSURE (   8.41  )
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

On Mon, 22 Jul 2024 18:52:16 +0900, FUKAUMI Naoki wrote:
> use GPIO0_A2 as PMIC interrupt pin in pinctrl.
> (I forgot to fix this part in previous commit.)
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: fix PMIC interrupt pin in pinctrl for ROCK Pi E
      commit: c623e9daf60a0275d623ce054601550e54987f5b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
