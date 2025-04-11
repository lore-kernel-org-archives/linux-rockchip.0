Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EDDCC3601E
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 02:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lqLEtxCeszNIHjumYiFThJ6AYFQJ9Fo7N7rXyh8rwQ=; b=uhxPt2jkP0eqs1
	jRLYV8ZC3qBltPh2DvAUQ+C3G7dfxsS/oU5sld8NoiOjgL/InbQZyTT7OJHFqNAg2c+1ievivt+RM
	fmlhj0si+GQyJPor89VV5W5G7dOXy8UrsVJvrexMp4D2sLszF0A6OQ/QGu/MU5ZNWcF2gOPae+FFu
	MLaAbHtN2HLUwML0hJ2u0oR1kMDvunb9MD+RS+tL2DNzPDarE5qe18dM9Ni7j4ZVtSUgTbixm1Kbl
	3Ss8mbwyx626tVOOJ5QPPubK5TNc7QXOeeH4ejCsB5ZyFlRD9WiCvfCia70NX9ltlg8tCFLfQ7qo7
	/00trW4lhhGwCQZUjxJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u33jO-0000000CHr4-2HQw;
	Fri, 11 Apr 2025 02:02:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u33jM-0000000CHqk-0eIU
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 02:02:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9F9D14A29C;
	Fri, 11 Apr 2025 02:02:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CFCFC4CEDD;
	Fri, 11 Apr 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744336974;
	bh=Acg9Hfn4b/PSQ6cmDkGrkw0ePaZ/J1DOlFYH4WXtrv4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WCfNojOjjmMmHVc5nimxBhsY4+iuU+fgnukEeRNNKhEpr7/sW31JDP3MlSbuMc9tH
	 E1vC9s1zp9Nijvn5FKDSmfaZpgHGZEHNSNbGSj7eNQ0bgiXdBNmhv7agxhsd4YwmaW
	 EbwodyKTMPVsWGt0XEAVLuJagqvQZxbd1wIvr16E7Vj9rtrwm0hbWEKmG1M+SS4P6A
	 bKMPZIlaIsp6Z6cU1fTHXKiASIhY2ds90B58b/o+DmCgV07iwzuUcjmukQ7jEeFNJ7
	 5l+mBNcIWeP96++WJeNDobe2Zt+/VK2H6hRj3bdDLhbBEFCgZiU7CSHWYpR76al7Qw
	 Svk0G4ZoxGP6Q==
Message-ID: <ac2760c1-e876-493f-8a44-4af16093423f@kernel.org>
Date: Fri, 11 Apr 2025 11:02:52 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] PCI: dw-rockchip: Add system PM support
To: Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <1744267805-119602-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <1744267805-119602-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_190256_216858_707C323C 
X-CRM114-Status: UNSURE (   7.98  )
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

On 4/10/25 15:50, Shawn Lin wrote:
> +static int rockchip_pcie_suspend(struct device *dev)
> +{
> +	struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
> +	struct dw_pcie *pci = &rockchip->pci;
> +	int ret;
> +
> +	rockchip->intx = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_MASK_LEGACY);
> +
> +	ret = dw_pcie_suspend_noirq(pci);
> +	if (ret) {
> +		dev_err(dev, "failed to suspend\n");
> +		return ret;
> +	}
> +
> +	rockchip_pcie_phy_deinit(rockchip);
> +	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
> +	reset_control_assert(rockchip->rst);
> +	if (rockchip->vpcie3v3)
> +		regulator_disable(rockchip->vpcie3v3);
> +	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
> +
> +	return 0;
> +}

This function needs a __maybe_unused in its declaration, otherwise, you get a
compilation warning when PM is not enabled.

static int __maybe_unused rockchip_pcie_suspend(struct device *dev)


> +static int rockchip_pcie_resume(struct device *dev)

Same here too.


-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
