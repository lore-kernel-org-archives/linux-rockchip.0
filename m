Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3A02E7719A
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 11:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4licD+1ufSugnaP73jis/6wP6hQpoX1fXuNMXX7ynTs=; b=KxsbrHtEtoceCr
	mEKX7beXpjKgR+bNSXQT7Jg+Baeb4DrekBL/lWSuUF/4g2MfBd8ZGbGyMilrIJWGPia9DQr9PMDnv
	k6czdhJ6IihPFtkdzOC5Yl4XbtQ3bYGUUpKgtFKbdHTrOU5JEGwFZ1b02kfi3yyii2LrOTmMz7OmM
	NdaU99IKBd9SQ62EGFcWI68HlzOBPz7a8WaXZhTM2ydLw35OLMvoymgvYBPwBKdrSePI7pN5E2cpz
	HVWUD/FGstrsQYvUZyA54TLJZRp7gGZ8PrqO6/84cZpQrfH5J/fD+PXhpFpGTuLiI7J5k0ip5iksR
	J/Xi7Y3A22nNqQ6t1wRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVTsd-000000088Nc-0gRf;
	Wed, 08 Jan 2025 11:05:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVTl2-000000085wI-1oVa;
	Wed, 08 Jan 2025 10:57:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vvaaJ0KDqB5iSmktZy7n5APrAirU6bxznimNQfokR0w=; b=fWdfcf4fWvjkel06p/VucI6Ibd
	Q9/PU4qrqPzOvdTLCUtVKU8itE3+KBzCCB/XRG+8X9nNKIxARVOjyfwGu/jA3x1iDMWIa2nqXArEN
	5pyig5Ta1yljmyJWSARSHu3WSB8oKEpjfSV+htn7WxWst0Sx527SUx6023YhMznIEiaWxuznnnKvD
	Mls2XgUaKd0qBrd92GnA7sDnAkQhZ6odrR5rGZOVn/HEb4aCv5lgnRJ5fAFg8uRyNoUNF3hG934BI
	xof6CYlwg2rXA4TIE146ToBxxNmuylaXJRLuven1ipLl9d7xFGkRG5IfON+F8JKcE4AyuygUI3t7h
	cMdlTHGA==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVTku-0004wu-W0; Wed, 08 Jan 2025 11:57:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [RESEND PATCH v1] dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
Date: Wed,  8 Jan 2025 11:57:34 +0100
Message-ID: <173633124853.2752317.13211299789409160578.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241231091841.252103-1-andyshrk@163.com>
References: <20241231091841.252103-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_025752_464946_F71EF470 
X-CRM114-Status: UNSURE (   7.83  )
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
Cc: detlev.casanova@collabora.com, Heiko Stuebner <heiko@sntech.de>, robh@kernel.org, sebastian.reichel@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Tue, 31 Dec 2024 17:18:41 +0800, Andy Yan wrote:
> Add hdptxphy grf syscon compatibles for rk3576.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
      commit: 39b771a85f6bb8a3c7643765c676055b7bbb2604

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
