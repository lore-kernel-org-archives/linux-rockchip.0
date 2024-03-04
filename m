Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 151E5C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 15:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGUZjLeWIo2oFTe/7Msdr1C1KWwHq8GPVjeHPKzNrEE=; b=JhRJSZVmT2gJk1
	bAout63tUaN3TnuUxp+NwrgIK3wZ/72xuoq7ltcaKWIX8NmtfFKoovut4FWPK/FAn4AWq1CHBjg1h
	N6rVBq15r7uj8xsqdc9dRl43O5EaV5gfm8iLlNi7jyifdtfiFX6ImEGD7sBx76bUqrGhuXLpk7doq
	fjs0PBOEvN5HvsZ/vs+Svh0hCoQxrCJUE0X+Kz2nEcxjRuGLBqKYTPcnXU8bJXC+9f+6ZrEsJdDFU
	J+83wlKIjS4vpCFvEbR+FxXE5qG5kK7R5OECq4IGLB/JOh5xFqV/6vE9DFynHuqykjMG8iord69Zz
	U0xyAxwAxSeTzMO+uNgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAXT-00000009gQ9-16Bt;
	Mon, 04 Mar 2024 15:47:39 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAXM-00000009gMl-2UJM
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Mar 2024 15:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1709567224;
 bh=DYt9Z6kME8EkWcT7aYYgxfnsq86RUO2k9vbT42RkZcQ=;
 b=wbadvKLeHfWBQiz3Od2339LDiKUknzpawE+fIDvWG4qJ420gnovJyOHiDGr1280kMz+SMqc86
 MQWyp3JpIObd+SBR3eDI1wUtLcx+Mx/Kxo3eictScbZ39tyw7Hvykeak9J37Swrwzkyr5923hg/
 aVMfUK7LUz+pP+I3h35//8aIfCAWoE55rzA1bUB9fTRGgsO/LwejkPIMie+oen4F9aVgIeZRP9g
 DMKf9l5Ro7Wi/xRZtgezoaoN5gD+3mciPyb7lr1ia77mGjppdVU/EO0z7kmFtf2XmEKxBJunKIi
 9SAtaMbr7rIcT8P3JQ8s5mxGSUb9M4y60SYu8nU9/ejQ==
Message-ID: <688bf5d2-153f-4be2-814f-245b8eeba911@kwiboo.se>
Date: Mon, 4 Mar 2024 16:46:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
Content-Language: en-US
To: Diederik de Haas <didi.debian@cknow.org>, "Chen-Yu Tsai"
 <wens@kernel.org>
Cc: linux-rockchip@lists.infradead.org, "=?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?="
 <ukleinek@debian.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
 <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch> <27139798.WhXITi6ROJ@bagend>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <27139798.WhXITi6ROJ@bagend>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 65e5ecf8971ed9328ca4cfe3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_074732_686142_740E1996 
X-CRM114-Status: GOOD (  26.52  )
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

On 2024-03-04 16:32, Diederik de Haas wrote:
> On Monday, 4 March 2024 14:09:15 CET Andrew Lunn wrote:
>>>> Andrew already pointed out when I posted the patch introducing the gmac0
>>>> node that rgmii-id would be the preferred way to setup things. Back
>>>> then this didn't happen because this change broke reception of network
>>>> packets. However this only happend because I didn't have the right phy
>>>> driver loaded.
>>>
>>> It could be that the PHY is strapped to not use its internal RX delay.
>>> And the PHY has some weird default TX delay, so having the driver
>>> put some sensible values in is probably better.
>>
>> It could also be the bootloader putting odd values into the PHY.
>>
>> Anyway, it will work better with the correct PHY, and enable WoL
>> support.
> 
> Not sure if this is the right place or way, but here we go...
> 
> A few days ago on #debian-kernel@OFTC:
> [28.02 16:35] <ukleinek> u-boot should be out of the game
> [28.02 16:36] <diederik> I'm not so sure anymore. On Quartz64 Model A and B 
> (rk3566) I had massive packet loss and tracked it down to a change in u-boot
> [28.02 16:37] <ukleinek> diederik: sounds like the Linux network driver on 
> that machine could do something better
> [28.02 16:38] <diederik> yeah, probably
> 
> I reported this about a month ago to Jonas Karlman as I bisected the problem 
> to a change in u-boot:
> 
>> diederik@bagend:~/dev/u-boot/u-boot$ git bisect bad
>> 25f56459aebced8e4bb7d01061dcb1b765b197e2 is the first bad commit
>> commit 25f56459aebced8e4bb7d01061dcb1b765b197e2
>> Author: Jonas Karlman <jonas@kwiboo.se>
>> Date:   Sun Oct 1 19:17:21 2023 +0000
>>
>>     configs: rockchip: Enable ethernet driver on RK356x boards
>>     
>>     Enable DWC_ETH_QOS_ROCKCHIP and related PHY driver on RK356x boards that
>>     have an enabled gmac node.
> 
> I just checked and both Quartz64 Model A and B have `phy-mode = "rgmii";` and 
> set `tx_delay` and `rx_delay` to some (other) values.
> Without knowing nor understanding the details, this seem very much related?

Sorry for not getting back to you sooner, but yes I would check with
phy-mode = "rgmii-id". There is also a possible issue with rk gmac
driver in both U-Boot and linux, it always set enable tx/rx delay bit.

Please, try with following in U-Boot:

diff --git a/drivers/net/dwc_eth_qos_rockchip.c b/drivers/net/dwc_eth_qos_rockchip.c
index fa9e513faea3..e5c320c36741 100644
--- a/drivers/net/dwc_eth_qos_rockchip.c
+++ b/drivers/net/dwc_eth_qos_rockchip.c
@@ -73,7 +73,7 @@ static int rk3568_set_to_rgmii(struct udevice *dev,
 {
 	struct eth_pdata *pdata = dev_get_plat(dev);
 	struct rockchip_platform_data *data = pdata->priv_pdata;
-	u32 con0, con1;
+	u32 con0, con1, val;
 
 	con0 = (data->id == 1) ? RK3568_GRF_GMAC1_CON0 :
 				 RK3568_GRF_GMAC0_CON0;
@@ -84,10 +84,12 @@ static int rk3568_set_to_rgmii(struct udevice *dev,
 		     RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
 		     RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
 
-	regmap_write(data->grf, con1,
-		     RK3568_GMAC_PHY_INTF_SEL_RGMII |
-		     RK3568_GMAC_RXCLK_DLY_ENABLE |
-		     RK3568_GMAC_TXCLK_DLY_ENABLE);
+	val = RK3568_GMAC_PHY_INTF_SEL_RGMII;
+	if (rx_delay > 0)
+		val |= RK3568_GMAC_RXCLK_DLY_ENABLE;
+	if (tx_delay > 0)
+		val |= RK3568_GMAC_TXCLK_DLY_ENABLE;
+	regmap_write(data->grf, con1, val);
 
 	return 0;
 }


Also check with the series "phy: rockchip-inno-usb2: Write to correct
GRF" [1]. Trying to configure bits intended for USBGRF in GRF is
probably not that good :-)

[1] https://patchwork.ozlabs.org/cover/1903987/

Regards,
Jonas

> 
> Cheers,
>   Diederik


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
