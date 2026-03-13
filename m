Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEE08107BCD6
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 18:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+9ev9M+jzsMYuh1+jDWHD63TgxLzAvo7Z3wqqx3G2y8=; b=WAWoaBqjy8hBuO
	UKBFyTJh9ol1G4D1LOiFR8CO2b5oRR7yYT0th8aPEtECzLB2tBqSk8qv0XX1qkTceENV8t+prj5H4
	kZ4w7r+0Ph8AHvdc0tQGu+xsYRPgwmrVz9Zp/+lSBiIn3EAfrzxE1X6m6tnHf7Qpqnb45mTefQBhu
	btcfk3147K2UHvizNHG9SqAuFv2bC+q7+CeQq7rqUMHDiZbO1lK67WorKHKVXR2DYoTW+KrN0IC8v
	zVpMdJ6PxK8AQCW3zC0ngkPNdSZl0rT7c423fbFvrS++3oxDTVdf5jhZQcQyw77Aenl7PVUK9y26o
	IF7FpqLvAPSKAAx3qh7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w176F-00000000sko-2CJ2;
	Fri, 13 Mar 2026 18:19:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w176C-00000000sjy-3dUv;
	Fri, 13 Mar 2026 18:19:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CA7F46012B;
	Fri, 13 Mar 2026 18:18:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49944C19421;
	Fri, 13 Mar 2026 18:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773425939;
	bh=2NXO+yF+55T7F+hpfAb0nuG4E5nybIth2x/Lfeit0v0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=WkuBmUY5zECY4w8HigOp4c5Dc0Y7y2nfHD6yuEYwFaBxRHSoHOnEVTjF7hkT0eQkA
	 AFvQ0/U9ShmNbMyzF+0wQhrhDsQwyNxKjC32q2tl+0EsRInNZqjgNxUjA0SajeBrn6
	 kHFj31oHvk4O5GY8i8NmF5RD6dgQrjiCuW1ZNS0TlFAoxlpUagAwvkYpFuqyVtZphY
	 QVlHtHnRkgjRr9/4FntuZCDQbU9JYgsYDVeDARhaRlMuvQRsZqk8X1fkK1i1jrac4k
	 8sYPWv4uyylodoV2LcLxP/nDTVvuq2bcgK0cxCWY0hcOSstFpl3VMDzH3SGAkgADCP
	 f+nDIUI0cgl7Q==
Date: Fri, 13 Mar 2026 13:18:58 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: Koichiro Den <den@valinux.co.jp>, jingoohan1@gmail.com, mani@kernel.org,
	lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org,
	bhelgaas@google.com, cassel@kernel.org, Frank.Li@nxp.com,
	vigneshr@ti.com, s-vadapalli@ti.com, hongxing.zhu@nxp.com,
	l.stach@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, minghuan.Lian@nxp.com,
	mingkai.hu@nxp.com, roy.zang@nxp.com, jesper.nilsson@axis.com,
	heiko@sntech.de, srikanth.thokala@intel.com,
	marek.vasut+renesas@gmail.com, yoshihiro.shimoda.uh@renesas.com,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
	thierry.reding@gmail.com, jonathanh@nvidia.com,
	hayashi.kunihiko@socionext.com, mhiramat@kernel.org,
	kishon@kernel.org, jirislaby@kernel.org, rongqianfeng@vivo.com,
	18255117159@163.com, shawn.lin@rock-chips.com,
	nicolas.frattaroli@collabora.com, linux.amoon@gmail.com,
	vidyas@nvidia.com, shuah@kernel.org, linux-omap@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@axis.com,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v10 3/8] PCI: dwc: Advertise dynamic inbound mapping
 support
Message-ID: <20260313181858.GA1427542@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2b03ebe-9482-4a13-b22f-7b44da096eed@foss.st.com>
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

On Fri, Mar 13, 2026 at 04:59:26PM +0100, Christian Bruel wrote:
> Hello,
> 
> While testing after this series, I encountered regressions on the STM32MP2,
> which I am unsure how to fix. The failures depend on the order in which the
> tests are run.

c0f1506f6354 ("PCI: dwc: Advertise dynamic inbound mapping support")
appeared in v7.0-rc1, so apparently we added a regression in v7.0?  Do
we need to revert this?

> The STM32 ATU has 4 inbound entries. After enumeration, the first 4 ATU
> entries are allocated within ib_window_map.
> 
> On the first run of ./pci_endpoint_test -v BAR3(for example),
> SUBRRANGE_SETUP calls dw_pcie_ep_ib_atu_addr(), which frees only one ATU
> entry (BAR3), because we were in the bar_to_atu case, for the first submap
> but fails to allocate the second submap. So the test FAILs.
> 
> On the second run with a different BAR, SUBRRANGE_SETUP test calls
> dw_pcie_ep_ib_atu_addr() again, freeing the required ATU entry (BAR1) and
> successfully using the second ATU entry (3), which was left unallocated by
> the first test. then now the test PASSes
> 
> Therefore, the first invocation of ./pci_endpoint_test on any BAR always
> fails. Other invocations are fine because the first one has left the missing
> necessary ATU entry free. Whatever initial BAR number is used
> 
> I am unsure how to fix this. Always freeing all BARs before calling
> set_bar() in the epf-test seems overkill, but safe.
> I am also considering modifying dw_pcie_ep_clear_ib_maps() to clear N
> num_submap entries even if ib_atu_indexes was not used yet, since only the
> full BAR is used during the first invocation from bar_to_atu. But the
> question is which ATU entry to select ? BAR+1 ?. This seems empirical.
> 
> I am not bothered by test failures due to an insufficient number of BARs
> (this is already the case for BAR5,6), but the fact that the failures depend
> on the test order is frustrating and show a regression.
> 
> But I'm not satisfied with either of the 2 possible fixes mentioned above.
> 
> Do you have any other thought ?
> 
> thank you
> 
> Christian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
