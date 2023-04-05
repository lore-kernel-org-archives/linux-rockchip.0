Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38C6BC76188
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 17:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDu1h/2uGaDNlXSk9DrHhYklIZ8YsCJcmEtFOl4LIPM=; b=y2aNbjFGBL7lAZ
	yPYSM6pSNof1RZr45dmEeSPaSZv9flQkInc41wnvO7WDO9PgefKoHLE3ojSOwq2pBPFGOoZnM6Lrz
	CNqgKYEh1jlYhrsv0Zs4bZ5hCKG/0GwjHYka2A3XhQzDLnnstu0lB5gb9y8H4autbf8zRwXmGZedg
	oc0wznpD9HiwnCmSDIk+TSyJnhMrgJfbHWJ+xT4ljNkwqC5MPQgM9Gzzi7l8erOTosrRnw2MbY3Ju
	geKzbpZOtOsJUs8zj/O1hZbDFF9LGL3CLpJf4tlBtFF7y01NoIhr2+0z69YSfenINAh3ntb2PlG/U
	gl66D4CnudSCPsXmtMzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk7DF-005IGr-24;
	Wed, 05 Apr 2023 17:46:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk7D3-005I91-2C;
	Wed, 05 Apr 2023 17:46:14 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pk7Ct-0000Me-9O; Wed, 05 Apr 2023 19:46:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/2] Add PWM fan support to Rock 5B board
Date: Wed,  5 Apr 2023 19:45:57 +0200
Message-Id: <168071663557.3186456.17606522894011578076.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230404173807.490520-1-cristian.ciocaltea@collabora.com>
References: <20230404173807.490520-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_104613_717869_6083AC95 
X-CRM114-Status: GOOD (  12.01  )
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

On Tue, 4 Apr 2023 20:38:05 +0300, Cristian Ciocaltea wrote:
> This patch series enables support for the PWM controlled heat sink fan
> on the Rock 5B SBC and, additionally, converts the hwmon PWM fan bindings
> to DT schema format.
> 
> Changes in v2:
>  - Updated PATCH 1/2 according to Rob's review
>  - Added Reviewed-by from Christopher to PATCH 2/2
>  - v1: https://lore.kernel.org/lkml/20230403105052.426135-1-cristian.ciocaltea@collabora.com/
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan
      commit: f36bb17653e4b9e26bbdb1224027d20614e77636

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
