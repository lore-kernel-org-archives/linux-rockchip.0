Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC35AC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 20:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTjKVXRqFsaPFL67aLUkAGWdg3Cu0qPkJDyjlmA6Tcc=; b=PlvizcbwrzbWdF
	dJQNkMJEDPnjBeEKHye0HQ17JxS+m/tLQpYe7capIYFstS5DDEdoLdFnT94jM2UmaQyVn6oMcqISW
	C6US/h+gR5hmsvbO51glHv9mIOZbbOmwP17LtrvoE8qKepsdvKfixVlisCf07pIGaoF1qbcvTHd9d
	APgytbCg87X8/asn0P6WIFRYtG909tqmbZqK2ZzN3lTFOYhwgVi6YTwjsY4cGcXQE7yTskYDxjH0P
	SVKDqkIqfGc7gAgJe2SHAfxuTScP2RoVfEPRukH81ek2x1nkRRktSbGujqUasEsnJGcB5uIe4yCv5
	GDes/ersMAtaDeyGZaOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBLRG-00DtlU-1p;
	Thu, 07 Dec 2023 20:57:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBLRD-00DtkX-0W;
	Thu, 07 Dec 2023 20:57:40 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBLR5-000692-NB; Thu, 07 Dec 2023 21:57:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh+dt@kernel.org,
	jay.xu@rock-chips.com,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 1/2] ARM: dts: rockchip: add gpio alias for gpio dt nodes
Date: Thu,  7 Dec 2023 21:57:30 +0100
Message-Id: <170198261663.24767.3042454537755741300.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
References: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_125739_223224_99C33582 
X-CRM114-Status: GOOD (  10.80  )
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

On Sat, 2 Dec 2023 19:22:01 +0100, Johan Jonker wrote:
> Rockchip SoC TRM, SoC datasheet and board schematics always refer to
> the same gpio numbers - even if not all are used for a specific board.
> In order to not have to re-define them for every board add the
> aliases to SoC dtsi files.
> 
> 

Applied, thanks!

[1/2] ARM: dts: rockchip: add gpio alias for gpio dt nodes
      commit: 04c521c3bec1fa0ccb97a1fbf74f0faeda3f4a53
[2/2] arm64: dts: rockchip: add gpio alias for gpio dt nodes
      commit: cfb0264f3654e357bcdfe27c2f7240241c2ac6c5

Added the Co-developed-by for Jianqun before applying.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
