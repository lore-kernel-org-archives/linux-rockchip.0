Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E2A7C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 00:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzlIv/sR2kUS8xTIjkqgaE9BWCC3ewHWje8VNBPRWeE=; b=vExrUJPvmfERor
	4INh3sicb//bkW4QlmCXKC+DZKd3A94dxfAjit/SBfvz44vrcKCA53RQnbXzV/I9LRxLTEuBe/pgG
	ki3fhO4CQpWnTL0qR+LXQJTfa367pL7e+QhwOmVYDJLKvE56j0a5m3ebireT7EMrKu70Kf3nrWCiI
	phcnRQkkTMnneTmvoEA8TYxnyy9GVJiPiuL0wmnbozsaZ4Rbwc5fsDtGjTf35LeRyr6GBPtRHi7ym
	JTO5NPG6+S/fo7J4r67fazu5myMY30BEQPKgTqESV8EaeCSDJH1IJmb8ZXpMiFTGlFP0/hRvymxv9
	4bU7j5jqngYsVO227bCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poYuQ-000T9E-1z;
	Tue, 18 Apr 2023 00:09:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poYuM-000T8f-25;
	Tue, 18 Apr 2023 00:09:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 09C3762475;
	Tue, 18 Apr 2023 00:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44E44C433D2;
	Tue, 18 Apr 2023 00:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681776557;
	bh=b71MwB1GPHPGUGJNYm/USXjO8vdrSbhJfyNLXt/caJk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mWOwpl9xJtkdrH9tLNqKB6OsMG+6PTWKD7b5eyaeARTd0g8XoMdsxLi9++Jyl34kj
	 w9teMIc8GVbmeBD7NbCBX8K+c+HUVQNlPv/SfSdus5l9qkKqUFP8xjXRchJYIUeBKH
	 LP8t71q9iSLOM0q5g9vGJtighGEcOt7UdUpk1FyUMwtQ0Yfryh+G8auiEhgGJqZzrJ
	 rm8QQoSWnKoUdtL3RqkuhLca/s77+4/ahVRhHuSj0wWt18cCdMEb4Kt0pvJ+n05luv
	 11Ka5G1Uud0dhING8D2xJGP2vKC5/3LSAU1LjPiT91j9k74SmVLdD+C/vtxJjidMJS
	 PXHhTnQY5fXkA==
Message-ID: <ea29e339-6f61-5bbb-7290-03df629d5b11@kernel.org>
Date: Tue, 18 Apr 2023 09:09:12 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 00/11] PCI: rockchip: Fix RK3399 PCIe endpoint
 controller driver
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>,
 Johan Jonker <jbx6244@gmail.com>, Caleb Connolly <kc@postmarketos.org>,
 Corentin Labbe <clabbe@baylibre.com>, Judy Hsiao <judyhsiao@chromium.org>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_170918_766277_C5A101DC 
X-CRM114-Status: GOOD (  25.05  )
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

On 4/17/23 18:26, Rick Wertenbroek wrote:
> This is a series of patches that fixes the PCIe endpoint controller driver
> for the Rockchip RK3399 SoC. The driver was introduced in commit
> cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> The original driver had issues and would not allow for the RK3399 to
> operate in PCIe endpoint mode correctly. This patch series fixes that so
> that the PCIe core controller of the RK3399 SoC can now act as a PCIe
> endpoint. This is v4 of the patch series and addresses the comments received
> during the review of the v3 [1]. The changes to the v3 are minor and none of
> them change the logic of the driver.
> 
> Thank you in advance for reviewing this patch series and hopefully
> getting this merged. Having a functional PCIe endpoint controller
> driver for the RK3399 would allow to develop further PCIe endpoint
> functions through the Linux PCIe endpoint framework using this SoC.
> 
> [1] https://lore.kernel.org/linux-pci/20230404082426.3880812-1-rick.wertenbroek@gmail.com/
> 
> Summary of changes to V3 :
> 
> * Set the fields in the standard order in the dtsi and removed unnecessary
>   change in associated documentation, thanks to Krzysztof for pointing this out.
> * Added comment to explain how MSI-X capabilities advertisement was removed.
> * Changed Damien Le Moal <damien.lemoal@opensource.wdc.com> address to his
>   kernel.org address Damien Le Moal <dlemoal@kernel.org> in tags.
> * [minor] Simplified code where a power of 2 was applied followed by a ilog2
>   operation.
> * [minor] Small code changes, replaced constant variable by macro, split
>   remaining long lines.

I retested this series, all good. So my Tested-by tag stands.

Lorenzo, Krzysztof, Bjorn,

Let's please get this series queued for 6.4 ASAP as otherwise the rockchip EP
controller is unusable.

Also please note that working with Rick off-list, we found out that more fixes
are in fact needed for the PCI address mapping (ATU programming) on top of this
series. But the problems detected are subtle and harder to trigger. The fixes
needed involve changes to the EPC core API so we are still working on the best
way to do that. We'll work on another series on top of this one for addressing
these issues.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
