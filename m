Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 614B7C369D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Apr 2025 01:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=em/1zay94K1YqDn1JwHAZO4kOxQsxm+F6xd/GeJNPxg=; b=hvqdifAECXFvUPs8ew4lvjmIwm
	vQ+DQLr0l1UTlyVdd3KisahpCmtBXwINz7hZxp6aa13oWhZozgeIMxwBO/xZEnz7rKJJxG/sMWnjZ
	fIdn7vBGBQXc0ppxUyR8MKHsxCkxlAe07be1rFFqDOohpLk+dL25zOqjVKdEY+9mCRbISE9wKo0Nw
	Z9nZvUkh0WV4UtbuWgcT/HjRQM5rz1eMH0x3iXCsKqPGvK5A4Qcoakgfca1I9iHjEgZpZBSXJgqxI
	7sCRi+gZJ4RxbMCqZ97RL0v31iKaCJtWakNDGBw/aeIwN98vjKlMYFvgoBYcNdu7ymDD56Y7o3Z7t
	C10bBAKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9DbH-00000004JAw-2go5;
	Mon, 28 Apr 2025 01:48:03 +0000
Received: from mail-m3289.qiye.163.com ([220.197.32.89])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9DbF-00000004J9b-0PzB;
	Mon, 28 Apr 2025 01:48:02 +0000
Received: from [127.0.0.1] (gy-adaptive-ssl-proxy-1-entmail-virt204.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1352e9cb0;
	Mon, 28 Apr 2025 09:47:35 +0800 (GMT+08:00)
Message-ID: <c583c59a-d5b7-4e20-9a1f-96f51bd7b4f3@rock-chips.com>
Date: Mon, 28 Apr 2025 09:47:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add rk3399-evb-ind board
To: Andrew Lunn <andrew@lunn.ch>, Chaoyi Chen <kernel@airkyi.com>
References: <20250427094211.246-1-kernel@airkyi.com>
 <20250427094211.246-3-kernel@airkyi.com>
 <6291f6b8-75d3-4243-9935-9b64450e2b7f@lunn.ch>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <6291f6b8-75d3-4243-9935-9b64450e2b7f@lunn.ch>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0NJQ1YdS0NCTxlJTkkeGE1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a967a14094f03abkunm1352e9cb0
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PxA6Fyo4NTIBGTc5DjA0KClK
	MTAaCjZVSlVKTE9OQ0tPQ01JTEJLVTMWGhIXVRgTGhQCElUYEx4VOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSkJCSzcG
DKIM-Signature: a=rsa-sha256;
	b=TN2Wu5aCbMNJ07Ic14b2WT/foLdkBTLvzfTZS6mnlGHNbaoXw/LbMDiGGutDzATnQT/dSjxXcZL/GxDTvu6c2BQ2VhDApBpJDim/4HnmuOFLLdkEb0DUFAOl3OQbL6HIrs5EUN35YkTzKuawI3xzhlTBTK7Gn2rQeLcUXEhkoOk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=A+SoCMYT/rgL+jihOoJQvLhqmps7MULckBt2jEZFGUc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_184801_664915_0D92B0BA 
X-CRM114-Status: UNSURE (   6.43  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Quentin Schulz <quentin.schulz@cherry.de>, Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Andrew,

On 2025/4/28 4:42, Andrew Lunn wrote:
>> +&gmac {
>> +	assigned-clocks = <&cru SCLK_RMII_SRC>;
>> +	assigned-clock-parents = <&clkin_gmac>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&rgmii_pins>;
>> +	clock_in_out = "input";
>> +	phy-supply = <&vcc_phy>;
>> +	phy-mode = "rgmii";
> Does the PCB have extra long clock lines to implement the RGMII 2ns
> delay?
The 2ns delay of RGMII is implemented inside the RK3399 chip instead of 
PCB lines, and there are also additional delayline configurations.

>
> 	Andrew
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
