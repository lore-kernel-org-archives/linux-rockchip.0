Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CCCAECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 23:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B812vMr8V/AK+6A5F/+RZzYe9I5+55DsWQfT/YoaLIM=; b=tCwEnb79VzNQrj
	30DPv4FpAgmJR0hf4DFtAdLtmWFDqSE/xgqQ5JgOLe7DmNSoSMkfSxXlOBiBqYMprxwdWdxVzKyiZ
	j1sDd2mJFtJAFq952m6YkvxAQA31+e+nNRvDnB/RQIA2Mf65lPQwHtBm5AeaIHNHXx7qBvybCag8T
	Y0vIaiiLV2FY8G6jYiXQxOEfi+v2H6QN95Kw4aI3Seh0q+YHdvAu5Uq/r5b7BKkHE44v7lcIlw9cF
	WK0OXoxdabgQ3XkmN8bG+MB2sJzB/9i9vzkL00Bi1PavPmT9ncTmg3SrcEPIcyqbfNXhl2lVRgRIB
	QO4VZTno1LnDHpGf1HRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWnAK-003ihZ-9V; Fri, 09 Sep 2022 23:12:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWnA0-003iUL-T0; Fri, 09 Sep 2022 23:11:46 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWn9K-0000Qa-JY; Sat, 10 Sep 2022 01:11:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	linux-kernel@vger.kernel.org,
	Brian Norris <briannorris@chromium.org>,
	devicetree@vger.kernel.org,
	Shunqian Zheng <zhengsq@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-rockchip@lists.infradead.org,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Lin Huang <hl@rock-chips.com>,
	Jaroslav Kysela <perex@perex.cz>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1] arm64: dts: rk3399: i2s: switch BCLK to GPIO
Date: Sat, 10 Sep 2022 01:10:57 +0200
Message-Id: <166276502654.27767.11970180490311201106.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220708080726.4170711-1-judyhsiao@chromium.org>
References: <20220708080726.4170711-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_161144_953843_2DB81D59 
X-CRM114-Status: GOOD (  11.88  )
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

On Fri, 8 Jul 2022 08:07:26 +0000, Judy Hsiao wrote:
> We discoverd that the state of BCLK on, LRCLK off and SD_MODE on
> may cause the speaker melting issue. Removing LRCLK while BCLK
> is present can cause unexpected output behavior including a large
> DC output voltage as described in the Max98357a datasheet.
> 
> In order to:
>   1. prevent BCLK from turning on by other component.
>   2. keep BCLK and LRCLK being present at the same time
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rk3399: i2s: switch BCLK to GPIO
      commit: 91419ae0420f0c91a326655d687b740826d0a3f9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
