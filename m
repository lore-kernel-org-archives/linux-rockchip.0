Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2A89C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Dec 2021 12:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ib62L0L13XwvXTpQUBwzaotiHkj4FRjHrwylV1OBPk0=; b=W/7O5zCMNLgNjR
	hwuk9T5jo9tDg0ji1mdH+vnWaRoWas469/4rnjT6Oi/JSQtVvnX+vEZjfDt3k7JfU7W6rcfPdzm3z
	d0S2k1Sn0rfgo6dfXbbQj82QNV0RwUVz6DoPouAFULp1D2rIcYIgmfqqemc7nduAA7bWyNjX/MI4+
	PYWUtfjlldDsU1W5bfGd+QvPwp9S9/9LT4zzNqKNmLJWmEC4ATCKKLGdprFizpWI7bEJuRdJntAm0
	5scYSLB7Mm8XvnSsIb2AsUZG6goUYEw4LuKXrRtZGm/+gU3zTpvc2KFgvlq2XF7Wuqz8HgHCwipVC
	I+NQTwN/Tu46RX8caI3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwOA2-006Umo-61; Sun, 12 Dec 2021 12:41:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwO9z-006UlJ-Id; Sun, 12 Dec 2021 12:41:00 +0000
Received: from ip4d17a2ab.dynamic.kabel-deutschland.de ([77.23.162.171]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mwO9w-0004Fw-Ad; Sun, 12 Dec 2021 13:40:56 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip rk356x: Change pwm pinctrl-name to
 "default"
Date: Sun, 12 Dec 2021 13:40:54 +0100
Message-Id: <163931280631.2862987.13692689272123267392.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211208120312.3300390-1-s.hauer@pengutronix.de>
References: <20211208120312.3300390-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211212_044059_652788_48710F0F 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
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

On Wed, 8 Dec 2021 13:03:12 +0100, Sascha Hauer wrote:
> The pinctrl state "active" is neither documented nor used by the PWM
> driver. Rename it to "default"

Applied, thanks!

[1/1] arm64: dts: rockchip rk356x: Change pwm pinctrl-name to "default"
      commit: 2e4dbcf7177e5dd1f7cb53c59cb2f394e35fd7ba

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
