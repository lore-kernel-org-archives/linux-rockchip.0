Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67D30EB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 07:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82QhMT8l1bOsU1ELXHfylBKiC2jSN9kwtQbpZiQB0ac=; b=pL3bgBzdjFEk3H
	UVZGfhMrt5nIuLDw5ipi3fsDkXmXl9k+90amkThdmPz7Ch2DN4IO9QBw263qFAfeYbFuiryZPPp4V
	/iIbWbRSe6Yhthm9xzrZ3d6AFwwmH1yL6hwxGhbf5aQmrsolxa7NK6Pqkn7rhE+oij8PCCqrY2JYO
	FMv4cR3hXqAoFPgSVpW7wThX7OVZ2ix+BTes5Ld0uRO6Dhg5lrnhT9APfw1aXxhkb0nbJ4X62OYAD
	/qjzhrHpkyC6Yufw9wJJkBvztOW50Iv9p+zprhBPHmk46jKlbvrmQapVy3h457PiblEUSHkf+Hnd4
	CKTqcDPAusnCr/1KOsIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEtD-00HGsd-2C;
	Thu, 22 Jun 2023 07:37:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEtA-00HGrV-0t;
	Thu, 22 Jun 2023 07:37:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0FC90616CB;
	Thu, 22 Jun 2023 07:37:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F3CAC433C0;
	Thu, 22 Jun 2023 07:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687419474;
	bh=7My5TbCKzY2U2rW5PVXxJ8ZYOpqZiHwu3YsTNzSNpn8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KVVuYw+zM4Mlc4gRuAIEOU2NvYPn8hwwnsozQk3kWeyHgrY6MyOXIS/8RTKOcbiZJ
	 Pu9f/UeN0RMZtbISEEbFm1ewDDRPkizeCAk9Y9Ot1OTTjts5Ju4V5IDd173cvmNQbX
	 ExwLoo/k1NkxxQ6vtqckVYXFn0pNlSxleg8kEQgSeko1fSUPDL2fD76jbnL1TTVgBD
	 QyqrIGmQNTTgrLsd39R6BCYkwL57HPy8OpAFWi04Btjg1WlH1WucDMQ327YOJj3Zwz
	 uH1frTtB8C4G2qPMHsTsHPZVAhf+ClU2D+ODUT3riZBIvA5BXevtAE2ctiW7lv+sVV
	 u/SHqpHb+VH0A==
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: alberto.dassatti@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	xxm@rock-chips.com,
	dlemoal@kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Corentin Labbe <clabbe@baylibre.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v5 00/11] PCI: rockchip: Fix RK3399 PCIe endpoint controller driver
Date: Thu, 22 Jun 2023 09:37:45 +0200
Message-Id: <168741944967.107568.16531340809111423642.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_003756_422638_A0368CA3 
X-CRM114-Status: GOOD (  17.45  )
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

On Tue, 18 Apr 2023 09:46:47 +0200, Rick Wertenbroek wrote:
> This is a series of patches that fixes the PCIe endpoint controller driver
> for the Rockchip RK3399 SoC. The driver was introduced in commit
> cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> The original driver had issues and would not allow for the RK3399 to
> operate in PCIe endpoint mode correctly. This patch series fixes that so
> that the PCIe core controller of the RK3399 SoC can now act as a PCIe
> endpoint. This is v5 of the patch series and addresses the comments received
> during the review of the v4 [1]. The changes to the v4 are minor and none of
> them change the logic of the driver.
> 
> [...]

Applied to controller/rockchip, thanks!

[01/11] PCI: rockchip: Remove writes to unused registers
        https://git.kernel.org/pci/pci/c/92a9c57c325d
[02/11] PCI: rockchip: Write PCI Device ID to correct register
        https://git.kernel.org/pci/pci/c/1f1c42ece18d
[03/11] PCI: rockchip: Assert PCI Configuration Enable bit after probe
        https://git.kernel.org/pci/pci/c/f397fd4ac1fa
[04/11] PCI: rockchip: Add poll and timeout to wait for PHY PLLs to be locked
        https://git.kernel.org/pci/pci/c/9dd3c7c4c8c3
[06/11] dt-bindings: PCI: Update the RK3399 example to a valid one
        https://git.kernel.org/pci/pci/c/21a2960d5ea2
[07/11] PCI: rockchip: Fix legacy IRQ generation for RK3399 PCIe endpoint core
        https://git.kernel.org/pci/pci/c/166e89d99dd8
[08/11] PCI: rockchip: Fix window mapping and address translation for endpoint
        https://git.kernel.org/pci/pci/c/dc73ed0f1b8b
[09/11] PCI: rockchip: Use u32 variable to access 32-bit registers
        https://git.kernel.org/pci/pci/c/8962b2cb3911
[10/11] PCI: rockchip: Don't advertise MSI-X in PCIe capabilities
        https://git.kernel.org/pci/pci/c/a52587e0bee1
[11/11] PCI: rockchip: Set address alignment for endpoint mode
        https://git.kernel.org/pci/pci/c/7e6689b34a81

Thanks,
Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
