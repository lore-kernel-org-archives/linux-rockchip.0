Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B93AC46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frpIbgqhxKIzT7PNIIJXdgNXiXou1qk7MkiJQU+VGrU=; b=DCDedxwfxkzTXs
	Q28BvpMFzXpy3UtuUQakWJy3+STowwJVbPpHdRB1ypf2DzBD1x0c0lpciKSuOpijyVB+DYmoovAs9
	YYRT8QagLLl3ELMmMhJtyzBrtSq1PhAsRRgFk3A/RBHxvt1Djx2UqNNFjAQk+6qDmBG96uIOjbrGZ
	gwTetxcBhH+dX8F4qjdy3dULhq8VUnS+ayLw7cGu+J8mNvDA4+ZxXnc/HD59EE33X9Y7qRA9lug3A
	jOcBgDrLdF8pdNrP3gb64FQkGurwL0/7GZraAU9r9ejkILH7CbsO+Ll/z0JUPM48q6hdNALnb07a4
	jzNGknp4FiWUGS0hpUog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYfc-00AtwP-T1; Wed, 11 Jan 2023 10:49:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYer-00AtWf-Sc; Wed, 11 Jan 2023 10:48:39 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFYeo-0004Wz-AK; Wed, 11 Jan 2023 11:48:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 0/2] Fix HDMI CEC on Radxa ROCK 3 Model A
Date: Wed, 11 Jan 2023 11:48:29 +0100
Message-Id: <167343400176.2680857.14944309109851778601.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230110225547.1563119-1-jonas@kwiboo.se>
References: <20230110225547.1563119-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_024837_980316_31502E18 
X-CRM114-Status: GOOD (  11.53  )
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

On Tue, 10 Jan 2023 22:55:50 +0000 (UTC), Jonas Karlman wrote:
> The HDMI CEC is not working correctly on Radxa ROCK 3 Model A.
> 
> This series assigns a clock rate of 32768 to hdmi cec clock and a pinctrl
> to use HDMITX_CEC_M1 function of GPIO0_C7.
> 
> Please note that this series also requires a fix in the pinctrl driver to
> correctly select HDMITX IO mux M1 for a fully working HDMI CEC, see [1].
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: assign rate to clk_rtc_32k on rk356x
      commit: 64b69474edf3b885c19a89bb165f978ba1b4be00
[2/2] arm64: dts: rockchip: fix hdmi cec on rock-3a
      commit: 906e822c0cac24f1b20d1377eb1203963f7af97e

On patch2 I've added a pinctrl-names = default entry as well.
To prevent future issues I think it's nicer to have them together
i.e. you want to set pinctrl-0 so prevent someone from introducing
a pinctrl-1 reference in the main node.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
