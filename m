Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 741BDC43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jun 2022 09:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HgFv5YodvFYSTCcSTVTSQJH81t9AuSj3PiT4pfagiTU=; b=iVpcd+TWgpLu/a
	yGaA0Bor8jzDdT+7HCxw/LmSW0cttXU4RPM/i5V9Q7gifGC6+lCBTGGs4hHEaUvBmviCt+IXT/N1e
	zsJNRO4Qh+YsqazhgPlErAqJaIF8ZQ2+llUM4OjNMqOTiUWf/Q5DHNZszcP1TKNGEDYMTGPLyQL8y
	JlNByYjLkw4j1ueSOMcFOaa3XivxqyPlqxNUVcFgaVFrWcMV92g+d+MRGh3shiXbLhFR2ZD461vWu
	+l1WOQPMemRktiGuKKBMMdswmQAqLnmNS1mwQs/qG+Olc8S+2tSUmj3OoxDKcZSGffPxwtA1BA0VU
	mpZzEJKK9mFySk87vK4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyVgG-006J2r-2Y; Tue, 07 Jun 2022 09:39:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyVN5-006A1h-SY; Tue, 07 Jun 2022 09:19:33 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1nyVN1-0004mn-7M; Tue, 07 Jun 2022 11:19:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] ARM: dts: rockchip: enable nfc node in rk3066a-mk808.dts
Date: Tue,  7 Jun 2022 11:19:23 +0200
Message-Id: <165459351569.925770.14419844709128937534.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220603144627.23269-1-jbx6244@gmail.com>
References: <20220603144627.23269-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_021931_986328_DA732FE9 
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

On Fri, 3 Jun 2022 16:46:27 +0200, Johan Jonker wrote:
> Enable nfc node in rk3066a-mk808.dts

Applied, thanks!

[1/1] ARM: dts: rockchip: enable nfc node in rk3066a-mk808.dts
      commit: 70e76f7344e59266e8a97cfe64d0d7c081652b35

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
