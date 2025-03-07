Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE078C19F32
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 09:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoX8NejmmDhFmCM7Aqi6x/6tAOuxnxYCbj9rcIdV4w8=; b=YdxD6PWAkBgi+5
	I1b519qv6xnQZxZm7Xf52ITH8euXLy6V6lv3AW6/qQfftBXr/4/hVUbET7Pz36eEwUn8K46suCgB5
	kpZhlRswyKUsPuSHEXG7i8ypU1+P5qPmklQQhAwrOLgPXlj2ZWkKp9LWQr+ivYT/uVp9dR0q0UZB9
	hmJ7wqOLOuPga48lE2OoQV7GFSRstkqhpgyNBoavYt7rikFj1U4mgIrAWFyx4vlK75dj2/LAKaEVc
	/LofX/4Kf2nBFnWnmGsftgOgdWo9ViUZVcnK/xfh8WuqTzRBJaR6g3SRcNl+lHFBK7dAZncYvvW3g
	5I4xbP88TRDdG4smAcqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqTqN-0000000Dg2U-1cYu;
	Fri, 07 Mar 2025 09:18:11 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqTok-0000000Dfmc-1SOH
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 09:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741338988;
 bh=l7Bmpx1B1OFaUSgPQarXLFPl0uH+PohveX2hywvmfnE=;
 b=NuN8O/aKCjuiak1glw5Guag/LlfvJUfKJ6GwmNpyNzswwRCOoVYeH/DTC1OuK9FR5GPOGDA+g
 ub0XYFcAQmcP+d8Ti1HKijMcsKMRuHTdu/6lCvPCR/cclIW55QNrq6piORcGSbNMtzU9zG6B3hz
 a+zke7o2okqzUlgYOevfoArrgre+FyRx+9o9jO19rO/+ftl+FqXeEvhzx/P7ohpZ1fN/Nth0u3r
 lzTSAcJ0+dV7HLXF0dR4bLRoWrIwUfpLjdgIA2I3+RG08eZK3bVc9wBGtwXzsf9l6FOHVx8KTE0
 jCmhuot2x6y7A3E1wwnwK67S9HNgn3towMTwyep7hkCQ==
X-Forward-Email-ID: 67cab95fd992817a57e35d57
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <cbd6d3ee-8ad1-443f-9506-e28240ffb09e@kwiboo.se>
Date: Fri, 7 Mar 2025 10:16:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Enable Ethernet controller on
 Radxa E20C
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250306221402.1704196-1-jonas@kwiboo.se>
 <20250306221402.1704196-5-jonas@kwiboo.se>
 <e0e8fa5e-07a2-4f4f-80b9-ddb2332c27ea@lunn.ch>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <e0e8fa5e-07a2-4f4f-80b9-ddb2332c27ea@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_011630_721943_122DEFA0 
X-CRM114-Status: UNSURE (   6.90  )
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

Hi Andrew,

On 2025-03-06 23:49, Andrew Lunn wrote:
>> +&mdio1 {
>> +	rgmii_phy: ethernet-phy@1 {
>> +		compatible = "ethernet-phy-ieee802.3-c22";
> 
> The compatible is not needed. That is the default.

Interesting, however I rather be explicit to not cause any issue for
U-Boot or any other user of the device trees beside Linux kernel.

Regards,
Jonas

> 
> 	Andrew


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
