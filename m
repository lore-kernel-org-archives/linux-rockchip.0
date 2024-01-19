Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15321C4725D
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jan 2024 23:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+JDFlVArjkMNboCR6qtktD+H842xePvC8bOPNQgqas=; b=PZWuC2F/yIGwVS
	KmtQgw9elkHl+Nvg3loJKD+lByJHnhJeKO3EgSHOHbpmegq+eL5hqyfPf0zd9nLgv+G29oBB2LSr5
	0bkfq4+tcWbavuQ3sTwCwTLA2mxEUwcoh+4tGt71P3dl/WhSrS2cmpLCf+oH0legcwgbpUzl8f/Uz
	WDC82KlceFOEW2jPBCeds+7QefS5nSARFOxK+30FzHwaw3613xgkPBZ03GVK8KBB+8Bdm43L6qOQV
	t9LmvJRGMRCUm979LFva5877bUBoQRYuegphaldxBokOHOICzjXw6wUjfypW/P8aX7qo8Z5bFZezg
	QdtHERm1OmxLVuz+hdlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQyUm-006uTs-1c;
	Fri, 19 Jan 2024 23:41:56 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQyUh-006uT7-37;
	Fri, 19 Jan 2024 23:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1705707708;
	bh=ftKWeC6U9mzF1f0nXgLSRHkw3HDVdEK9xa/ts4/b2a8=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=fAIBFn/KL8w35tVinmyADRLk4ZjK+GQMugMRZu4hA4eDNll7kti+U8LA7IAMOM9E/
	 Xnj425A36TCWh4TAW2nepY2GYzL5Jv2g86ekrG2l1yeHjBnJc6wOYfxgThb2lehhxK
	 R5d2WBcfPDTQI1gEgmH+8dr30wmOgVw2zSgPdHglYt3Qm9nXRGepWXxbPKNJ9NJoFw
	 Lb6UGQRNtx+D/x0zLALK3Y4X0Mgr/l7N/yTmxQX2743tSTYtiQiqwtBoypkLnDAjws
	 d13e2BV2qwLPpLZeKwjYtCuZs9gh7PJJZv5oX2u4B3FuZvAoWMeXfU8BnjuJ7f2nqi
	 UK/Z7ChrS0qhA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BEFB4378143B;
	Fri, 19 Jan 2024 23:41:47 +0000 (UTC)
Message-ID: <417281cd-23b1-4948-8c5a-b9820dff65aa@collabora.com>
Date: Sat, 20 Jan 2024 01:41:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Add support for RK3588 HDMI/DP Combo PHY
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>,
 Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
In-Reply-To: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_154152_189693_1EBB2738 
X-CRM114-Status: GOOD (  10.92  )
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

On 1/19/24 21:38, Cristian Ciocaltea wrote:
> Add driver and bindings to support the Rockchip HDMI/eDP TX Combo PHY 
> found on RK3588 SoC.
> 
> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
> and eDP links.
> 
> The HDMI link has been tested on Rock 5B and EVB1 boards.

I missed to highlight there is no eDP support provided by the current
implementation.  Downstream kernel has a separate driver for that and at
the moment I don't have the hardware to wire this up.

Will include this statement in v2.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
