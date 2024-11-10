Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7916DD12D4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Nov 2024 20:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNZ0jVJFC3aaa627P3RgYKJcUMHXvzq3oVjMvUiXV2o=; b=33qxQlDcZDzcxa
	sl8EJdTPU++ckrz0uUZSn5nI4wQhqaq/CMGm1TqP4HvfBPQ6fAXeNCgxEQarlVPR32HipCjK82qF4
	c4uEZ1OWU89UlSXMgdmQbzWUwZhKJuxaUP0gzzwnHE/pRhVohrmOYJC6h58jFQ4p3dZCb5ewASmRO
	i3rQLua2WfPLDUNKUwDdmd84BXGiaxJwa1o6JKx4guavyzEfa9e3d1n8e7bXLk/vk94yurdlFdRyi
	3UlAAcWyravUO8nWG9K+qAOUO5u9GWExc8oNsJlDQVura2nOUAFqClKj8BueruajegZFmCxVrhUeR
	/zEisnBTR/k3S7w2sq8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAELV-0000000FWm2-2oU6;
	Sun, 10 Nov 2024 20:15:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAEJk-0000000FWbo-0cvT;
	Sun, 10 Nov 2024 20:13:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=TDWmgip3DngD0WSpM90Yi3gjWO6wAcgOvU2+84kSLeE=; b=S5wwPJIrHk0JA4HlAJJQVQQaE5
	mXroOqQZdoQvH3dFzv1BCceZ7xGfBThBlbQnEpZLMH0A6bcT2nlkcImC6S03q4/balPTsIJsc+e7/
	uXlFY+fVXQcr7yECUSMyAQwwGVQFzkev0bF/Dgt5KZmgUBRsbfQA1Jo0DMbZVTp7bxelMSn1uCzfX
	9FAUhU5NKW8fUoAcddK57xhMiVRENAneHZcsSMX1Qqh/NQTUSAa7vrWdxCIfxNszRBz/S6prO4+3i
	y4hFN/my0OrwZVqI2HzcuwQBy2JxEOhI9DDieoOEAEP8aAiriDj7zbBrIK0n6k3mc58hElQ6AR2Cq
	aY0biM6w==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tAEJh-0006eU-I2; Sun, 10 Nov 2024 21:13:49 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] arm64: dts: rockchip: orangepi-5-plus: Enable GPU
Date: Sun, 10 Nov 2024 21:13:43 +0100
Message-ID: <173126942616.136493.2934640786889277471.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241025175409.886260-1-wens@kernel.org>
References: <20241025175409.886260-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241110_121352_213059_1C09EA6C 
X-CRM114-Status: UNSURE (   9.44  )
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

On Sat, 26 Oct 2024 01:54:09 +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> Enable the Mali GPU in the Orange Pi 5 Plus.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: orangepi-5-plus: Enable GPU
      commit: cdaf2acc401c691105baa3ee3e9fda3b19dc570d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
