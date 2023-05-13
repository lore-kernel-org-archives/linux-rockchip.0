Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51F6DC77B7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 16:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIPclP2/xuID5hrPAxrgtg+Zg6rPC584O/xoAvv4hS0=; b=ngEFcfgjpAIxGF
	Fql5nytuwpYk9ifn2V1dW/9VPX/4tfUmzcvO9cg8N7/YA6nulKcpTLmWfN7QRpOSpgADQGmZIuSfC
	8wdolfq8N3FM00wDsk0kCMztPNkO2yRonGLyu8RO/BvoizFa+xqlgVb+x/xtve1Mwb9Ey6XPGYi63
	jpc0/ThmpBL3LW2COIb77BGi6+YZL9uPsQHP3pp9wUeBYALbgODfhvVoviFSxlb7NISWKAe1W76w4
	kLxFtBuNL1bAWGxIcCCuRw0VtLrXLwFq86IdMiRM2zxyQh4YU7ojXDr2mzSEcwSr0QkNfM08XJht3
	5j9RT1cgPxq2tsBKyWkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsR6-00FQRY-29;
	Sat, 13 May 2023 16:49:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsR3-00FQPu-1X
	for linux-rockchip@lists.infradead.org;
	Sat, 13 May 2023 16:49:34 +0000
Received: from p508fce4f.dip0.t-ipconnect.de ([80.143.206.79] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pxsR2-0000Vh-5r; Sat, 13 May 2023 18:49:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Update leds for Anbernic RGxx3 Series
Date: Sat, 13 May 2023 18:49:28 +0200
Message-Id: <168399655503.610817.5823493589952810198.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230512191633.33416-1-macroalpha82@gmail.com>
References: <20230512191633.33416-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_094933_508419_9FA4D8DA 
X-CRM114-Status: UNSURE (   9.42  )
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

On Fri, 12 May 2023 14:16:33 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Each of the LEDs on the RGxx3 which is currently controlled via GPIO
> can also be controlled via a PWM. Change each of the LEDs to PWM so
> that users have the ability to adjust the brightness of the LEDs
> according to their preference.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Update leds for Anbernic RGxx3 Series
      commit: 87c692fde46a511aa365d220588d0566125f4035

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
