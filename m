Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2B48C47DAF
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 10:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYdmQSe9AC6mep/ewI+nX6QLdQt5b1bVsPe+MG6HBpI=; b=ROohfBJYYA1vau
	UpJ+0vOTqpoJ+OWxMIhhaDoyda4nPVhd18D7wR9yAIYgWgtXkVAVjnEWEU1+etj38CMYW4vQ5yDIO
	xvvAKOdXsOnuLxbw0m8sfSqFjmHPX9iIs0pYwO+sGwIvvAwFiR5BJUH3LmXSDC2P2DOfV+zoG8WAj
	SJ/n6lAPTwP8+0MEc5I70lTB4y60lssFeDOJAlsiHtE4xohVs9827MIzXEo0hK3jwHCZgC3bKaqPT
	uFvi0O1GYEWmvS2FxmKAS5/wmz+GBNK7WzMVvFtECb9FMEaoiN8PAJIFpyoc04GkOVmzp9SZQnDyc
	dShHxUPQbNBTSu03STpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrGY-00BSEm-2U;
	Mon, 22 Jan 2024 10:10:54 +0000
Received: from mail-m6030.netease.com ([210.79.60.30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrGS-00BSAU-23;
	Mon, 22 Jan 2024 10:10:52 +0000
DKIM-Signature: a=rsa-sha256;
	b=JcARR62G5KtOTczFX/WYMFJwV/BvIRt2AmOWqsI1F5xn2azbR1xwfIQam//ayqB3aKfspGrMC9fY0tBB9FZzT3sHJBj+EPjveLpBsCzGMyHfQlzypNXyQiP9gFsfBZu93//q/pt3zAbRPddIoN9HshO+YNMClt/SwMbIfbfH+ZI=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=BomGdr3zph+RbyeW62SV+s3dc8I4NnnTpRyEiySaDz8=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12758.qiye.163.com (Hmail) with ESMTPA id E3EF3AE04E2;
	Mon, 22 Jan 2024 18:10:13 +0800 (CST)
Message-ID: <a7e5304a-1cfd-4f38-8708-bfca30f0ef7f@rock-chips.com>
Date: Mon, 22 Jan 2024 18:10:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Add support for RK3588 HDMI/DP Combo PHY
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <417281cd-23b1-4948-8c5a-b9820dff65aa@collabora.com>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <417281cd-23b1-4948-8c5a-b9820dff65aa@collabora.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUxIGlZDSEwdGU1LHkodSxlVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8d30a6318cb225kuuue3ef3ae04e2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KzY6FRw*HTwhEA83TjcdMxAS
	TAFPCTNVSlVKTEtOQkpDSUpOS0pLVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEpJSjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_021049_208554_63AD596C 
X-CRM114-Status: GOOD (  12.32  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Cristian:

On 1/20/24 07:41, Cristian Ciocaltea wrote:
> On 1/19/24 21:38, Cristian Ciocaltea wrote:
>> Add driver and bindings to support the Rockchip HDMI/eDP TX Combo PHY
>> found on RK3588 SoC.
>>
>> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
>> and eDP links.
>>
>> The HDMI link has been tested on Rock 5B and EVB1 boards.
> 
> I missed to highlight there is no eDP support provided by the current
> implementation.  Downstream kernel has a separate driver for that and at
> the moment I don't have the hardware to wire this up.
> 
> Will include this statement in v2.

The PHY is used for HDMI and eDP on rk3588, and should used be exclusively.
so I think should s/DP/eDP/ in  all description.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
