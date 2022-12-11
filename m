Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39137C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Dec 2022 20:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfVobAh7snukNkp8WBLcLY06MfNaujeEHq2EmjFCcQU=; b=iyvKyyfUJxeIyV
	naEkglOgc6oKNPzR7W99CJO3u8ZJ+0I8kug/duppep00Cav+bMA9bvm4ISXkrzMPKTnPSY5sYtl/q
	/FVoUixS32f8hdjkCkAckCMVePgK5UAGgpT7SdOj7pwYjKcbhXRm57KUOJIVe27Dn52EMc3SCswu2
	P9EOaaE1nGhETg/Ck1U1UptW6a6n1jhCE45PkCfUarSzvAKCMBwSJvCwqnNbCzpqchzVhri6J9T5I
	/OEQz8Nv6voILSfX7Lom5Z210BiCJQ4zOOC5SSu6zXZkSckhXoX3kojYjHoZwq2xeOBrBTBAkQu4P
	eXTUMfz4DqkNaf1hELjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4SUi-003jq0-7F; Sun, 11 Dec 2022 20:00:16 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4SUU-003jij-If
	for linux-rockchip@lists.infradead.org; Sun, 11 Dec 2022 20:00:07 +0000
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 402DE240007;
	Sun, 11 Dec 2022 19:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1670788798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nviQnYPoCNryX26Yk5aQ1g/hoSw96V3xdfHJt6EIe1o=;
	b=NPljn+WjlL6wQk55wVt+JE7/b9utUL/easL6fbgNwYRUsfgbS76rL+clrhVsAiILUGzY4O
	+pa3mBoPHV2vruMxOpbrpaOfvN/ZEcHwnJNMlgAVaAw6VAJn9CzVXFq+PlsafKkBLQbGxw
	HGo2ch4S5koKgaLM3kWOPLxhCzOpQ83NtprCC4Y0K+u03mLAa2jBTgXXo69yv1sP4BhDPw
	9dnfgP69AfhZZyELiu7NZrlRCAnOK4XbbIwiDB6le2unmi78RVMu3Zy26l5aCD4QUgbSgW
	RHm/4rLXQ09DK0dtfM1n2zlIfp3zlaYTIK3pvHrEiVOA0SsVhz9qmAtohWpywA==
Date: Sun, 11 Dec 2022 20:59:56 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, kernel@collabora.com,
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCHv4 00/13] Introduce RK806 Support
Message-ID: <167078872190.11717.11951030261472241551.b4-ty@bootlin.com>
References: <20221020204251.108565-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221020204251.108565-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221211_120005_357860_E50DB7E3 
X-CRM114-Status: GOOD (  14.92  )
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

On Thu, 20 Oct 2022 22:42:38 +0200, Sebastian Reichel wrote:
> The Rockchip RK3588 Evaluation Boards use SPI connected RK806
> PMICs. Downstream this is handled by a new driver, but apart
> from being SPI connected this chip is quite similar to the
> ther Rockchip PMICs (also RK806 is promoted to also support
> I2C). Thus this series instead updates the RK808 driver(s).
> 
> Changelog since PATCHv3:
>  * https://lore.kernel.org/all/20220909175522.179175-1-sebastian.reichel@collabora.com/
>  * Dropped removing REGMAP_I2C dependency from RK817 ASoC driver (applied)
>  * Rename MFD_RK808 to MFD_RK8XX to be consistent. It makes sense to do this now,
>    since the patchset touches all the child drivers anyways.
>  * rebase to v6.1-rc1
>  * collected a couple of Acks
>  * update rk806 DT binding according to DT maintainer feedback
>  * add missing pinmux config to the rk806 DT binding
>  * update rk806_spi_bus_write and rk806_spi_bus_read
>  * replaced some constants with sizeof or defines
>  * used capitalized comments
>  * rename regmap_find_closest_bigger to regulator_find_closest_bigger, not sure
>    why I prefixed it with regmap_ in the first place
>  * use rk8xx_is_enabled_wmsk_regmap instead of regulator_is_enabled_regmap for
>    the switching regulators to correctly report the state
>  * reordered the first few patches grouping the MFD patches together
> 
> [...]

Applied, thanks!

[03/13] rtc: rk808: reduce 'struct rk808' usage
        commit: 2e830ccc21eb67a4c2490279d907e5e9199e5156

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
