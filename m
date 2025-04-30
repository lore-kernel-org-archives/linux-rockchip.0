Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8D5DC369D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 03:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lctt+T0IQ5oUfdy2InlIJMhL4AJL7mrSF2phO2mX3BY=; b=3rEWwz/79KpP5vN4yhNRP/cBTn
	fcPcHUA8MItsWbIuc6/QPpcPoNmq5BKSTEUXl6jDOQ07O0yY9bHR91Z92vYUh3Eywzv9jQ4owV64O
	yUrNHX9NP3DCUj3pNdr2HcdwhUWmuYDo6B86X07gTzr8R5142XtkmrtF6oG712bTyuhVgRLtc5kMp
	XdGpK9Ty7vcv9L2BAOGbUqKoNQTSteszRoUuw5M6+fMqpejk8MOPHHEoCgp76ohMZI70j4F4moNxo
	qFqjVuLhWUL9a1nUpMufEjWdHzLQzp81iKnAQ7DXeKJeZA1I7WkNjVae9/Bmoee23qQaLHjpLmLhF
	Ts6qKqhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9xvo-0000000BZZK-0kDP;
	Wed, 30 Apr 2025 03:16:20 +0000
Received: from mail-m8259.xmail.ntesmail.com ([156.224.82.59])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9wnw-0000000BUSu-2nll;
	Wed, 30 Apr 2025 02:04:12 +0000
Received: from [127.0.0.1] (gy-adaptive-ssl-proxy-4-entmail-virt151.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1398a2eb4;
	Wed, 30 Apr 2025 10:03:55 +0800 (GMT+08:00)
Message-ID: <3c66f508-6192-4dd5-8561-d746665952b5@rock-chips.com>
Date: Wed, 30 Apr 2025 10:03:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add rk3399-evb-ind board
To: Andrew Lunn <andrew@lunn.ch>
References: <20250427094211.246-1-kernel@airkyi.com>
 <20250427094211.246-3-kernel@airkyi.com>
 <6291f6b8-75d3-4243-9935-9b64450e2b7f@lunn.ch>
 <c583c59a-d5b7-4e20-9a1f-96f51bd7b4f3@rock-chips.com>
 <15ee1a6b-55ba-41e9-b8a0-6e0bf62cabf0@lunn.ch>
 <027de192-4227-4010-a759-5283b6af1531@rock-chips.com>
 <c9b46d09-f1ed-4549-8267-9a38ceca6461@lunn.ch>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <c9b46d09-f1ed-4549-8267-9a38ceca6461@lunn.ch>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ05MTVYZSBlDSk4ZQktISR9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96846fb72b03abkunm1398a2eb4
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ok06Njo4GDJKNy1MCA1DCgsp
	TgIaFDZVSlVKTE9OQkxDTU9ISUxDVTMWGhIXVRgTGhQCElUYEx4VOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUtDTzcG
DKIM-Signature: a=rsa-sha256;
	b=Qi9o/yJnFnGDgKs0UMtWAB+KmxAU1cggUCmbwwZZvSgaw9HgdNIBQbnVSDAYivJSgWn5fEJyOWxU3NDN0AtKDtfizNo1gcFjpl8ZnNRIhBx/cn/Tf18qUuybJbdYIETC9Sqvm2L0hi5+QChG3fQVg13Prv4pe6D8izTHZUjdeQE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=DKR60j4UMg5PnXkIvOcvtrX6NGX6zXBYsWyUwoAwfA8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_190409_270037_F8FA4A78 
X-CRM114-Status: UNSURE (   8.85  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chaoyi Chen <kernel@airkyi.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Jimmy Hon <honyuenkwun@gmail.com>, linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Quentin Schulz <quentin.schulz@cherry.de>, Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Andrew,

On 2025/4/29 20:22, Andrew Lunn wrote:
> Please consider how you can fix the MAC driver without breaking all
> the boards using the wrong rgmii value. There are a few discussion
> about this on the mailing list if you go searching.

Thanks for the clarification. I'll fix the problems in the RK3399 gmac 
driver in a separate patch series. In v2 of this patch, I'll remove the 
ethernet device tree content for now.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
