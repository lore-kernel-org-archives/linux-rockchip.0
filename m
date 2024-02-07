Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FBA0C4828F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Feb 2024 14:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwYf6dzrIqJpgoKD1Pqozg4vl89SxfeUr2j4SNayBhI=; b=qNsoXM/sq5GNF7
	dA4PP+1TLEXZX3UIeuSsv9uC0i2B8BZtJ4LACJO/fMwosCbmEhrQgfc4LkMkUUFuyehnBiY15SqWL
	hrKN1Jh8Qx0P6OuHaTqATpRka6y/LnBdgtbvjITMa2gRsHsUftCY9Kx5GqULMlm9AwnzBdKIAc/LD
	lWh6Aja4qCwPxtwXsRvhIHiAyCk1hpRxJU52Dg34YPJm+Kym5lWtwlPWwn9z23mtjriMPoYGnaYtq
	6zjCjKUB4Yir9BIq3t9YWgsmSV6yne6eCskyB4c0tFFqnJCLTdm8XiMlodjfJ8MfkkvSELLMmCqN/
	dPYYKJBT0igNQuR51IAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiZZ-0000000ArSv-0pe2;
	Wed, 07 Feb 2024 14:06:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiZW-0000000ArRy-01xk;
	Wed, 07 Feb 2024 14:06:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 378066187A;
	Wed,  7 Feb 2024 14:06:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5518BC433C7;
	Wed,  7 Feb 2024 14:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707314800;
	bh=ZZh2zTyS9CP/+FQ/BuELNpqH1LEwwITFg2cvWsaj4Zg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IV6HDBHac8FFIrL3H75dbmU7s5Cb6moJ+VkCQLwuVuDS4Fwhp498+Ux4j+8Kx226D
	 +qY4jSwCtZ/D4cwV9kkvxql+cSTOV8vroWLaHBihJicKmifkf8CjyGVBERD6iOxZgo
	 t9snGvsmHq6eX8mqcSbirEf6a7OPzL8aSj0yooJ5FcnTxS4oezRCw5nRndXL3wnNB7
	 W3uhFfNGjGt4WO+CHGzKy5YA36h2d7hnKXzkd4wrfWVBOvv4CPAR+ypTNpl31pS2hj
	 aft8nAneOjptcLMWQO/v+SB0ZuiOHfly7b93WJhWaGzGZkF0EOkbrzOqLwkzFJ3t8i
	 E6yfcU/DCrKlQ==
Date: Wed, 7 Feb 2024 15:06:37 +0100
From: Vinod Koul <vkoul@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Algea Cao <algea.cao@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/2] phy: rockchip: Add Samsung HDMI/eDP Combo PHY
 driver
Message-ID: <ZcOObdUvxmRzdHnE@matsya>
References: <20240205-phy-hdptx-v2-0-a7150814c047@collabora.com>
 <20240205-phy-hdptx-v2-2-a7150814c047@collabora.com>
 <ZcNYlFgT0rXiCGbo@matsya>
 <374f5069-9f3d-4ad2-a6da-b38a143a0c99@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <374f5069-9f3d-4ad2-a6da-b38a143a0c99@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_060642_111836_36489A2B 
X-CRM114-Status: GOOD (  10.31  )
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

On 07-02-24, 14:39, Cristian Ciocaltea wrote:
> On 2/7/24 12:16, Vinod Koul wrote:
> > On 05-02-24, 13:24, Cristian Ciocaltea wrote:

> >> +static u8 hdptx_grf_read(struct rockchip_hdptx_phy *hdptx, u32 reg)
> >> +{
> >> +	u32 val;
> >> +
> >> +	regmap_read(hdptx->grf, reg, &val);
> >> +
> >> +	return val;
> >> +}
> > 
> > why use wrappers, why not call regmap_ apis directly
> 
> Agree, no real benefit, will drop them, except probably
> hdptx_multi_reg_write() for the extra savings.

That one is fine as there is good logic on the helper
 
> So I'd keep using that one if there's no strong reason against.

ok

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
