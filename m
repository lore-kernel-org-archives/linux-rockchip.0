Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA97CEB64D7
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jun 2023 08:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36pWzJp0sNsy6SpHq6ky2x6LENvv7khRiaCuAwNzmYA=; b=ODVrbK1QhkpIck
	VKPiMMrRxtxHgRVAUN/S43vsfFkOudcrjf3ieNDKzhre4aevpODfw2/Q8wBd+8EEPpbEFaJC93dmi
	1joeLm0kRxhk6hk9JpCO7E9+1rIJvgQiWt9M+EYr+XQUzTF8MXC2VvaBo0TSbZWjEpzQ8Mkji6dyf
	ZPJ9BZErt3Frb9m/cAJezv5ILYhUBSgpkMr/nVxGnX+0XGFh4OWUz4482f7/CLLHLRhbCnoFK7htB
	+wAH0uDvk5KSoNvaNlmPduDQhSMQj8DNpdMjX7SoJz3ZzslZQeW5S+wd7W9flKsiEP+Ay2FEXBy0d
	v4qKhd2W2L6whHoagBuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAnXy-005RRh-0A;
	Sun, 18 Jun 2023 08:14:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAnXu-005RQD-3A;
	Sun, 18 Jun 2023 08:14:04 +0000
Received: from i53875b22.versanet.de ([83.135.91.34] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qAnXn-00028P-K9; Sun, 18 Jun 2023 10:13:55 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Damien Le Moal <dlemoal@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v4 5/5] arm64: dts: rockchip: rk3588: add SATA support
Date: Sun, 18 Jun 2023 10:13:54 +0200
Message-ID: <4844617.31r3eYUQgx@diego>
In-Reply-To: <fa42c1ad-c411-2121-92f7-fc1e1f0f8172@kernel.org>
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
 <20230612171337.74576-6-sebastian.reichel@collabora.com>
 <fa42c1ad-c411-2121-92f7-fc1e1f0f8172@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230618_011403_024221_D5060905 
X-CRM114-Status: GOOD (  12.04  )
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

Hi Damien,

Am Sonntag, 18. Juni 2023, 05:10:58 CEST schrieb Damien Le Moal:
> On 6/13/23 02:13, Sebastian Reichel wrote:
> > Add all three SATA IP blocks to the RK3588 DT.
> > 
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> This patch does not apply to libata for-6.5 branch. What is it based on ?

I guess probably either mainline or my dts-branch [0] .

Most of the time we have series doing driver changes + devicetree changes
where subsystem maintainers pick the driver + binding patches 
(1-3 in this case) and after that I pick the devicetree changes (4-5 here).


Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=v6.5-armsoc/dts64



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
