Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7C28C5AD4C
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 15:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPorHHEGhPgBfIGflQ7KBhbeVQil528V/hUCen343SM=; b=yLItpiKnS09pMp
	NkF3gNFY3jc3oEBHha2KKabNIQPDYSNGfkuGh5qE/AgYpMsb+42htHPh531+NAB9J6zxOHAXiukjM
	ggBZ+VxM589ycbWOWOGUnF8igBYMw6dZx4wkcVYMSDSOmM1X838Z2C47DU6y7xoMNHkAyye5+34rS
	aLI4SJ/BxRfZX5zaK4C9ATgql38Hgc2/KonFHhZxJW5yhf+xCHvCtNjxDHqxeJEK1F6deS1aEkRTy
	6/239vc254u5eCfK7U1Xluk9ZIt3gMSzpS69KfovtTibISNdecn2G6x1c6ePyQW2pVIHjUjvLAkPj
	8NNrBMbLuK9Z6/d7p16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r56Fx-00Cgit-2I;
	Mon, 20 Nov 2023 15:32:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r56Fu-00Cget-0D;
	Mon, 20 Nov 2023 15:32:11 +0000
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r56Fn-0008VB-DT; Mon, 20 Nov 2023 16:32:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Add Geniatech XPI-3128 board
Date: Mon, 20 Nov 2023 16:31:51 +0100
Message-Id: <170049419904.1671702.13668485809532460940.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231119130351.112261-2-knaerzche@gmail.com>
References: <20231119130351.112261-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_073210_120559_4D055003 
X-CRM114-Status: GOOD (  12.61  )
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

On Sun, 19 Nov 2023 14:03:49 +0100, Alex Bee wrote:
> This series adds RK3128 based Geniatech XPI-3128 SBC board.
> 
> Please see commit messages of the individual patches for details.
> 
> These patches have been part of the pretty huge RK3128 bring-up/fix-up
> series [0] which I've splitted-up now, as suggested.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Geniatech XPI-3128
      commit: e5fc1f038355634087f6a178454341dcfd50b89b
[2/3] ARM: dts: rockchip: Add sdmmc_det pinctrl for RK3128
      commit: cdc86eeebbd26c60bcee1c81598ecf684852a733
[3/3] ARM: dts: Add Geniatech XPI-3128 RK3128 board
      commit: 6135ac43309f5ef91ad60c688931027226779fed

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
