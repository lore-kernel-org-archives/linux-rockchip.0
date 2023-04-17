Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8652EC77B72
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 23:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEHBRea7zkGpj3NgruCKmJLAErupumJhxJQZELs4nmw=; b=jT2pxbVWHvpiOq
	cjTAYI194Ub+KEZ5fheF7l79GuFzGxRu0Wtl3/BYT58AzTOM4pivA0qK7+g91ZxaEDjSnW7kvKzdh
	TBSXFbbPYiNHjJO5HuRg3Zz94Vd/5AMlMlYZNtLUEZ1TUzy7Dmq1DN1Br7fDs+QbQaxl32h4oW418
	fOxMHRgqLLJ4AlCgj0gfjNsgN3jdl9fBNGCVM+cYH8nWlgeD2xnZAiE54kugH+JIqnu3IvMXQzYaJ
	/gQMaF4/f5cTZ/k9lgv5LbzYwYkB5byOFgCJ3bPS/iHK9PhUoypx3bPj+oRKGfHrV3otc05EWNZ3Q
	YKCchcn5WW30dFZ1A7Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poYbu-000Qp1-1L;
	Mon, 17 Apr 2023 23:50:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poYbr-000QoS-17;
	Mon, 17 Apr 2023 23:50:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B0418625AD;
	Mon, 17 Apr 2023 23:50:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E413FC433D2;
	Mon, 17 Apr 2023 23:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681775410;
	bh=2YPJHP8es1VTEo9Fw/ICF+baELeINdHz9GXYi7P1KNc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kvvVI1TsmOLCr5PSAeMEHDt/hwXFIPKIGIfCj9ODzKSSG6//WQ3SKoctUHW2QSVHE
	 viK2SGuRbDU/981VKc82JnuEv8INNrfRvuT/dq2cEjjop8YjFnLZv5QLb1aBkyoOEG
	 EZJUWmxdZ/Izpuv4URwFf5LbTcZ+qfD4wDz/4MuqI0dA+5ypKPV8Xc3qGWRd6NZgV0
	 ZJTp5aToPknv5YSj6ElRA1PGnDWZ0ZVTHmAeKLRQo/iJ82Z4i7tSTlhbcCyuRF8mtT
	 pOfMVNAANSStrLDZA1ZmxAZ7hNbO7QWUqw6x+8bgUdHn8c/GvOw/pBi9f6HQdQWdsJ
	 PAKh9CWddNsZg==
Message-ID: <7a599324-dc92-0c6a-2411-5e8fa70d5686@kernel.org>
Date: Tue, 18 Apr 2023 08:50:05 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 10/11] PCI: rockchip: Don't advertise MSI-X in PCIe
 capabilities
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
 <20230417092631.347976-11-rick.wertenbroek@gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230417092631.347976-11-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_165011_427659_91F3E1FD 
X-CRM114-Status: GOOD (  14.57  )
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
> The RK3399 PCIe endpoint controller cannot generate MSI-X IRQs.
> This is documented in the RK3399 technical reference manual (TRM)
> section 17.5.9 "Interrupt Support".
> 
> MSI-X capability should therefore not be advertised. Remove the
> MSI-X capability by editing the capability linked-list. The
> previous entry is the MSI capability, therefore get the next
> entry from the MSI-X capability entry and set it as next entry
> for the MSI capability. This in effect removes MSI-X from the list.
> 
> Linked list before : MSI cap -> MSI-X cap -> PCIe Device cap -> ...
> Linked list now : MSI cap -> PCIe Device cap -> ...
> 
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> Tested-by: Damien Le Moal <dlemoal@kernel.org>

Looks good, but I think you need to add also:

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Cc: stable@vger.kernel.org

Otherwise, feel free to add:

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
