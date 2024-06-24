Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA363C2D0D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 16:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNXlYZ1XqTItlyYsVD3pWaelfLvS/Dddm/rQItx5ok4=; b=kxCuqkEsLV2gux
	HLnl19X6PZuxidCul2YgF8HN4Ohc5bbWyfV4L52UwkgsNjDYFqBOr1K4OVC2dUzLKg8mJP7yMudHR
	VXWDtr9BtzMK0NV02gfGkrsG16KVuoXYX4LROIZRsMMRZMjo2ll52XI6ekgWCJ1Uewxa5bQ15u8S4
	XQTSdNFci9xuspfLc/OphYus71vzL8mAyS8mrafzZIvWPuZXzpb+hnH/BC/IPZpINvGM/H0p+y942
	ISV5LUfT+QsNZDFz2tH75G4jU7kTnvHd6rW9uStU96mT002l3XP81BAfvojXStHtedGUkeJgQ/iGW
	0E6AIffzarqgNab0D6lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmRH-0000000HT15-2nHd;
	Mon, 24 Jun 2024 16:21:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQi-0000000HSc0-3IwO;
	Mon, 24 Jun 2024 16:20:34 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQc-0001wn-KC; Mon, 24 Jun 2024 18:20:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	Trevor Woerner <twoerner@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add gpio-line-names to radxa-zero-3
Date: Mon, 24 Jun 2024 18:20:21 +0200
Message-Id: <171924573799.612064.9218736887561595244.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240620013301.33653-1-twoerner@gmail.com>
References: <20240620013301.33653-1-twoerner@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_092032_847692_96ECA80A 
X-CRM114-Status: GOOD (  10.72  )
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

On Wed, 19 Jun 2024 21:32:49 -0400, Trevor Woerner wrote:
> Add names to the pins of the general-purpose expansion header as given
> in the Radxa documentation[1] following the conventions in the kernel[2]
> to make it easier for users to correlate pins with functions when using
> utilities such as 'gpioinfo'.
> 
> [1] https://docs.radxa.com/en/zero/zero3/hardware-design/hardware-interface
> [2] https://www.kernel.org/doc/Documentation/devicetree/bindings/gpio/gpio.txt
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add gpio-line-names to radxa-zero-3
      commit: f7c742cbe664ebdedc075945e75443683d1175f7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
