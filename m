Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 347D5C282D1
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 00:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X99WJWA2PjlCvomQ+vGqotTtV/YfwEGAOCbqiKjQhO8=; b=U8281RBaZ6zwnu
	Q1lT3EW+qyYo/lD5UCpAKJNrryIp+mp09LAR5hIMxHmmzWO8r4fmG8H4/xt+dMNBsotczbv5auo4V
	cOkuMIB9LosgoZhhPAvDgTTFtZ2mnU3i86YLSHPvlfnlhOsE6N1tmYlsfNa0tvAmVAzve9dlmAjQE
	V2AoCSM6o3DNpuCoftNfwq1AitH4DxsZf8aOQ6/feVkI4AId0k7x4Jw0t0QTfxlntHbzQlESXjM0w
	vmAtgVzdjhdZ20WYZPJ5hAJBBaGmOpBnXocH58DIcwliycewnlVASBg57+nG3nA92Fi+o1OUnwO5a
	0XtdXCrPHRuTWYORN4rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqLMw-0000000CbV5-3VHJ;
	Fri, 07 Mar 2025 00:15:14 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqLDk-0000000CZok-1mEz
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 00:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741305943;
 bh=q8v6FqGBLcIgD0IKorolr/eW5VRYMlf3vVnAR1Zl+FQ=;
 b=UIXNNlDr/mT65psursCOdbFsHrvLAywXu6ouW4nHakMH2jOwETkilVIzd9f1lNRKRONnS+/wx
 eqmPbJdnv2rinVbHk+Djxue7Hu0l9vYyD9lL8IQnVbjAMUC6DdIPjkgfkGDDoc+Vue3jRIDNDOa
 xiuUbB6ukJiW9sBvR7L5VY+1pvVUf8yjrLgxT6zGmafdtcbpQhPTscgglQh//N50JFJ8gNa/5gJ
 u+4f1V3P9XqPBOaLFsELXQ5mSgmOxXVJ6qlBhfQEggqPFNfduNHHlQk3d7MpmufVmCRESiuSUUV
 rVVA1TeQSx6MtSrHJIs/T1n7IvZjO9Dp54x4/OeLp5ZQ==
X-Forward-Email-ID: 67ca3854d01a7bf632cb828f
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <003d3726-680a-4e91-89cd-d127bc3b5609@kwiboo.se>
Date: Fri, 7 Mar 2025 01:05:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add GMAC nodes for RK3528
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
 <20250306221402.1704196-4-jonas@kwiboo.se>
 <a827e7e9-882a-40c6-9f2c-03d8181dff88@lunn.ch>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <a827e7e9-882a-40c6-9f2c-03d8181dff88@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_160544_561835_95E82E93 
X-CRM114-Status: GOOD (  14.43  )
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

On 2025-03-06 23:46, Andrew Lunn wrote:
> On Thu, Mar 06, 2025 at 10:13:56PM +0000, Jonas Karlman wrote:
>> Rockchip RK3528 has two Ethernet controllers based on Synopsys DWC
>> Ethernet QoS IP.
>>
>> Add device tree nodes for the two Ethernet controllers in RK3528.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>> gmac0 is missing the integrated-phy and has not been tested bacause I do
>> not have any board that use this Ethernet controller.
> 
> What do you know about the integrated PHY? Does it use one of the
> standard phy-modes? RMII? Does the datasheet indicate what address it
> uses on the MDIO bus? If you know these two bits of information, you
> can probably add it.

The SoC datasheet lists following:

  MAC 10/100/1000 Ethernet Controller (gmac1)
  - Support 10/100/1000 Mbps data transfer rates with the RGMII interfaces
  - Support 10/100 Mbps data transfer rates with the RMII interfaces
  - Support both full-duplex and half-duplex operation
  - Supports IEEE 802.1Q VLAN tag detection for reception frames
  - Support detection of LAN wake-up frames and AMD Magic Packet frames
  - Support checking IPv4 header checksum and TCP, UDP, or ICMP checksum
    encapsulated in IPv4 or IPv6 datagram
  - Support for TCP Segmentation Offload (TSO) and UDP Fragmentation
    Offload (UFO)

  MAC 10/100M Ethernet controller and MAC PHY (gmac0)
  - Support one Ethernet controllers
  - Support 10/100-Mbps data transfer rates with the RMII interfaces
  - Support both full-duplex and half-duplex operation

and vendor kernel use following DT node:

	phy-mode = "rmii";
	clock_in_out = "input";
	phy-handle = <&rmii0_phy>;

	mdio0: mdio {
		compatible = "snps,dwmac-mdio";
		#address-cells = <0x1>;
		#size-cells = <0x0>;

		rmii0_phy: ethernet-phy@2 {
			compatible = "ethernet-phy-id0044.1400", "ethernet-phy-ieee802.3-c22";
			reg = <2>;
			clocks = <&cru CLK_MACPHY>;
			resets = <&cru SRST_MACPHY>;
			phy-is-integrated;
			pinctrl-names = "default";
			pinctrl-0 = <&fephym0_led_link &fephym0_led_spd>;
		};
	};

I could possible add something like that to the device tree, or I could
drop the entire gmac0 node and instead have it added in a future series.

Regards,
Jonas

> 
>     Andrew


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
