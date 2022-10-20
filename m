Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1DD7C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 09:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBS3eCcd+3P+uN9y60ithlHOq/a2LjmUo3GfOnhOrcY=; b=XnNLgfouLjkmV5
	WeCfkWSbD0ji+s08aTHazzJEXaU9/bGqsa7AxY3Zy2cwR8CNq/a0Cso7bn2Xx1jsAc8uWJ3ZuT/CO
	Mo2FDpbKK4uH97juV43jz58/QiXD5lTY46SK/mdPrJ6wK64P0qehIuFEE7JQJUTMYAqUDeuRibxKB
	noKizZJQ082+1j8dS3A6pdIg/NyvgF9WV+/GHcMu5t0SBJJcHwBmamHfq0JbJwCFgjMC5RfelggYu
	x664lqwsoAZbIfML8mSokRKoKfuTyevhjF29JMpKG1SM4QRJgOwzLuPf1BI3IftGK9iuKHCXiJi1b
	7ZpyQxi6DA9mK2J6dCSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olSBT-00DAQg-Tl; Thu, 20 Oct 2022 09:49:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olSBR-00DAOu-Fk; Thu, 20 Oct 2022 09:49:50 +0000
Received: from p57b7734d.dip0.t-ipconnect.de ([87.183.115.77] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1olSBM-0005RY-FO; Thu, 20 Oct 2022 11:49:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
	devicetree@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	stable@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: lower rk3399-puma-haikou SD controller clock frequency
Date: Thu, 20 Oct 2022 11:49:42 +0200
Message-Id: <166625937155.645772.13090619800244842653.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221019-upstream-puma-sd-40mhz-v1-0-754a76421518@theobroma-systems.com>
References: <20221019-upstream-puma-sd-40mhz-v1-0-754a76421518@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_024949_566898_1899973A 
X-CRM114-Status: UNSURE (   9.13  )
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

On Wed, 19 Oct 2022 16:27:27 +0200, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
> 
> CRC errors (code -84 EILSEQ) have been observed for some SanDisk
> Ultra A1 cards when running at 50MHz.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: lower rk3399-puma-haikou SD controller clock frequency
      commit: 91e8b74fe6381e083f8aa55217bb0562785ab398

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
