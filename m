Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4985ECD98EC
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 18:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHH4Nq1GA7bVb/3eJmSErutSOSOImkao3K88F3hxm/M=; b=qR8pv1g28aiwec
	D3K7V/jXWqnIK6waRvyKB7TX+kvpNMPKDKBwFU0auvzYLtqyPtC5ly212F0LxQ6xZxwj+Xe8RtaQ/
	FV8IaBBOf97eWSSt1KBHq4frc01vE45HS3D4n3VM05yQUBVbQImVyrqvYm/qp93uTGCfRcqMDVUPN
	uxHo9gm3a7D1TpZ0JWFpBlNfvwtEtLGByANL4MPLeAho/fBvOFVr1neV9L/3Sm8XkrKi2KwM2ARbY
	z1aUt8Cy3ebp30c1K3e6p4sXze9/L9PdwKwSSuflcXDmAJFOK9n6yNIU8Sgr/+WSzSY/yewYrRkDy
	hNT6QZR3XKujcIUGpINw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smGnG-00000009MpS-0cPV;
	Thu, 05 Sep 2024 18:01:18 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smGmG-00000009Mi0-3aUi;
	Thu, 05 Sep 2024 18:00:18 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 6073D789EF;
	Fri,  6 Sep 2024 02:00:11 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 6073D789EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725559213;
	bh=IehJ7vYaR/acTX/sHMWsvwZTff/S0qCnA1igWLTgxpU=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=jjvBAqamn4voe/zLDC5EjIJVOsceiErcyffHhgCuRpF1u+6nzqji1jwgcb22URs/2
	 24rLvCkbDxAenXtSkdUSH+bd49BV+/SOhirwrxNE++Sldkud0Q37NmSn83jQHKLrMk
	 eAotb02AjTReCEyIsSWcMrBfTKS8iY/ZakcEgSuc=
Message-ID: <fd4fc7a0-7def-4f91-a64c-71689ff71d1c@classfun.cn>
Date: Fri, 6 Sep 2024 02:01:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Andrew Lunn <andrew@lunn.ch>
References: <20240904111456.87089-1-bigfoot@classfun.cn>
 <20240904111456.87089-4-bigfoot@classfun.cn>
 <6030542f-070d-4d76-9a5a-fbfc6bd433e6@lunn.ch>
 <1e189c70-e677-453d-9e31-6637196c2b5c@classfun.cn>
 <3f5bcc6c-5ee0-4fef-bb58-f7acf9551fc1@lunn.ch>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <3f5bcc6c-5ee0-4fef-bb58-f7acf9551fc1@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_110017_304889_8CAD6A14 
X-CRM114-Status: GOOD (  14.12  )
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

On 2024/9/5 20:53, Andrew Lunn wrote:
> On Thu, Sep 05, 2024 at 07:17:03PM +0800, Junhao Xie wrote:
>> On 2024/9/5 01:25, Andrew Lunn wrote:
>>>> +&gmac1 {
>> [...]
>>> This has been discussed a few times. You should be using phy-mode
>>> rgmii-id.
>>
>> After I changed phy-mode to rgmii-id, it seemed to work,
>> but it didn't transmit any data.
>> Maybe I made a mistake or should I continue to use phy-mode rgmii?
> 
> How did you change the rx_delay and tx_delay?
> 
> In general, we want the PHY to add the delay, not the MAC. Most boards
> in Linux do that. But boards using the motocomm PHY have got into a
> cargo cult copy/paste of using the MAC to add the delays.

I have tried rgmii-id with tx_delay/rx_delay 0x38/0x15, or 0x0/0x0,
or directly removed tx_delay/rx_delay, they all didn't transmit data.

I saw in dwmac-rk.c that when using rgmii-id, the tx_delay/rx_delay
properties in dt are ignored?

arch/riscv/boot/dts/starfive/jh7100-starfive-visionfive-v1.dts also
uses YT8521. I added rx-internal-delay-ps and tx-internal-delay-ps
to rgmii_phy1 of mdio1 according to the prompts, and it now works
well using rgmii-id!

&mdio1 {
	rgmii_phy1: ethernet-phy@0 {
		compatible = "ethernet-phy-ieee802.3-c22";
		reg = <0x0>;
		rx-internal-delay-ps = <1500>;
		tx-internal-delay-ps = <1500>;
	};
};

&gmac1 {
	[...]
	phy-mode = "rgmii-id";
	[...]
	tx_delay = <0x0>;
	rx_delay = <0x0>;
	status = "okay";
	/* Motorcomm YT8521SC WAN port */
};

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
