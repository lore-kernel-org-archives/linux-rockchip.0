Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60AB3C71155
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 12:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pf5l3nxMzS6WenVtr0oTFkzesD3W9TV1gG9GPqR0cQg=; b=bdjvX+Y3Cd0fWW
	EYwoTeWT1JW6ObP49AZmwa7eQ9JZ6o8UVf4wI0KikEQH5Y4KJLIbVkCNP7s+4cqL2mns7bDLqnzXU
	d+HFLTa/9g+g+w1O9gVKJgs01+/pH1l9DyUZ76CVTGjrLaSW2/WDLiqw3pPdrymlYQyK9Dc/VwlWS
	O7yYWKEajS2HPqBchjRP9YKHWl++YrV7Sjp82pfQ/RXdWwnkQDkanE0CAxZ1ypEtmX9PRJOVVmK/8
	kuOGtyA02NnCCUIhCR6f8ScWeGDmxwBOcHbaKKlwOxmaziLIDSVvkxpSq7T3Lcu28armW6OX0+V86
	oLnbhJzuos+Zl4AW2LQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbKN-0000000FdPt-2DZj;
	Fri, 20 Jun 2025 12:58:43 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSb9h-0000000FbIE-0pf9;
	Fri, 20 Jun 2025 12:47:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3EC8216F2;
	Fri, 20 Jun 2025 05:47:20 -0700 (PDT)
Received: from [10.57.27.59] (unknown [10.57.27.59])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 895973F58B;
	Fri, 20 Jun 2025 05:47:37 -0700 (PDT)
Message-ID: <413e7ed5-fc4d-4e4e-9cb4-234c41db267b@arm.com>
Date: Fri, 20 Jun 2025 13:47:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v5 3/4] phy: rockchip-pcie: Enable all four lanes
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rick wertenbroek <rick.wertenbroek@gmail.com>,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1749833986.git.geraldogabriel@gmail.com>
 <ce661babb3e2f08c8b28554ccb5508da503db7ba.1749833987.git.geraldogabriel@gmail.com>
 <4c2c9a15-50bc-4a89-b5fe-d9014657fca7@arm.com> <aFVTdYWxuq9YzVQR@geday>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <aFVTdYWxuq9YzVQR@geday>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_054741_325537_F5EB04D8 
X-CRM114-Status: GOOD (  20.80  )
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

On 2025-06-20 1:26 pm, Geraldo Nascimento wrote:
> On Fri, Jun 20, 2025 at 01:04:46PM +0100, Robin Murphy wrote:
>> On 2025-06-13 6:03 pm, Geraldo Nascimento wrote:
>>> Current code enables only Lane 0 because pwr_cnt will be incremented
>>> on first call to the function. Use for-loop to enable all 4 lanes
>>> through GRF.
>>
>> If this was really necessary, then surely it would also need the
>> equivalent changes in rockchip_pcie_phy_power_off() too?
>>
>> However, I'm not sure it *is* necessary - the NVMe on my RK3399 board
>> happily claims to be using an x4 link, so I stuck a print of inst->index
>> in this function, and sure enough I do see it being called for each
>> instance already:
>>
>> [    1.737479] phy phy-ff770000.syscon:pcie-phy.1: power_on 0
>> [    1.738810] phy phy-ff770000.syscon:pcie-phy.2: power_on 1
>> [    1.745193] phy phy-ff770000.syscon:pcie-phy.3: power_on 2
>> [    1.745196] phy phy-ff770000.syscon:pcie-phy.4: power_on 3
>>
> 
> Hi Robin, and thanks for caring, it's excellent to rely on your
> extensive expertise on ARM in general and RK3399 specifically!
> 
> However, on my board I'm positive it does not work without proposed
> patch and I get stuck with x1 link without it.
> 
> There are currently very similar patches applied downstream to Armbian
> and OpenWRT so at least I'm confident that is not only my board which is
> quirky and other people experienced the same problem.

Ah, I put that print at the top of the function - on second look now I
see that there's an awkward mix of per-lane and global data, and pwr_cnt
is actually the latter. Sure enough, moving the print past that check I
only see it once.

However, I still don't think blindly enabling all the lanes is the right
thing to do either; I'd imagine something like the (untested) diff below
would be more appropriate. That would then seem to balance with what
power_off is doing.

Thanks,
Robin.

----->8-----
diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index bd44af36c67a..a34a983db16c 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -160,11 +160,8 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
  
  	guard(mutex)(&rk_phy->pcie_mutex);
  
-	if (rk_phy->pwr_cnt++) {
-		return 0;
-	}
-
-	err = reset_control_deassert(rk_phy->phy_rst);
+	if (rk_phy->pwr_cnt++)
+		err = reset_control_deassert(rk_phy->phy_rst);
  	if (err) {
  		dev_err(&phy->dev, "deassert phy_rst err %d\n", err);
  		rk_phy->pwr_cnt--;
@@ -181,6 +178,8 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
  		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
  				   PHY_LANE_IDLE_MASK,
  				   PHY_LANE_IDLE_A_SHIFT + inst->index));
+	if (rk_phy->pwr_cnt)
+		return 0;
  
  	/*
  	 * No documented timeout value for phy operation below,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
