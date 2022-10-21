Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88AC3C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 19:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WG+KmXnf6fXsXOoW6BlfJjzcxeHjzOctWUlg1PCDwiU=; b=Amn7JjWJg+1bFb
	6ac86Gr00D5UbbjpxpJ65ahpXJCGsrHWzQY76r8gZwJCaypr2V7ybkztm1MhPTx8H1kGOh7YxxELi
	ublEI/NkxsRBZLs0agiAHIwwN2Qo2kepjV3CjdQre0Ld9r7CiAER0uy6VhEyIvCqsVnEQERhpSrQ/
	j62pm5JgEAdf9jMblQDxxuSWIdb/NziUW4Ng5SgJpj+7kVmFNfrGDWfJQIr8Tik9hnuR3Ad4Bp6Lb
	SktOyc3xWLlW2RnREtUJuPYoSCdS8RbUDncdqrTC9wQYqazhntmuOn1qoDiXBkNB0Ur6x+Kwpg7v+
	3Htxkx/VVeYzRP76zkCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olxQd-009XSN-6l; Fri, 21 Oct 2022 19:11:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olxQa-009XRd-Nq
	for linux-rockchip@lists.infradead.org; Fri, 21 Oct 2022 19:11:33 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1olxQV-0008IB-1B; Fri, 21 Oct 2022 21:11:27 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH 1/1] dt-bindings: pinctrl: rockchip: further increase max amount of device functions
Date: Fri, 21 Oct 2022 21:11:26 +0200
Message-ID: <2260502.ElGaqSPkdT@diego>
In-Reply-To: <20221021172012.87954-1-sebastian.reichel@collabora.com>
References: <20221021172012.87954-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_121132_799841_54E76CD9 
X-CRM114-Status: UNSURE (   8.89  )
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

Am Freitag, 21. Oktober 2022, 19:20:12 CEST schrieb Sebastian Reichel:
> Apparently RK3588 pinctrl has 13 different device functions, but dt-validate
> only checks for pin configuration being referenced so I did not notice.
> 
> Fixes: ed1f77b78322 ("dt-bindings: pinctrl: rockchip: increase max amount of device functions")
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
