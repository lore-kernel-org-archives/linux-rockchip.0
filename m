Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADE9CC54E94
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 14:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=1pq9PHwkDbE4UW1AkxxXcDCs2BZxP05DI1MD68NBEtA=; b=LIoCOeBdixjtqk
	XwsNEamHkpAf5scl2ocRMyvTKjnEpJUxLy5s8XvMrR286QUQJV7LbHRPaxL55Ypub0HdS9ry46f4x
	xDBNel96hOsS+NRl76qTcjXmlrI4SNBOJ9AlHuDdmK5yvprc9ebuTAZMmfGuqy7b2gT7J4TN9NK/k
	2TcvRGAF2XOvLBpwvKEsTQRJjoIKBmlcl/87x40FPNjf7SK45/O999l8ZdJG5zRqBAREXgTjkA7NF
	vGFoWqk9WcHLcLeGknZxU8X/Aw87rCMSTmjCQc3wY8DMz8DB3UUHxCV3jXOi2BhxtKnQICLIAI2Wu
	svbUVRtfWpMgba3IZoSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL3Sc-00BFPw-4q; Thu, 26 Jan 2023 14:42:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL3SQ-00BFN0-F3; Thu, 26 Jan 2023 14:42:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7665861852;
	Thu, 26 Jan 2023 14:42:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96BDDC433D2;
	Thu, 26 Jan 2023 14:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674744148;
	bh=CCnYelU7vTWlPZSDl5BT9muUMJjl8j5MAppunZabsV4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=ehJKrCD8jcjfhoDgsR6ecGQVWtuWDx5JLIwvHsueNlXIxaIYuVjIx9Pv1DPonDJIi
	 SEwF2sFyaI+no5tUS1i9CWP+akisKqLIYBwBtFGv0+AuiYrfpnyr30bCkLXoTrRYiu
	 hsJJYi7r0t6ihexW55XaFpla7rPjYVvBZ+421W8fKfzXfB2Lys1c8hDZ7TQ3dfDaHi
	 sjXRIFp7x8G339EFwAncZTmkwFEonMXS8WIeo/lIDLnUAYkOqeKoY8GDfxNasDQb8s
	 GBrKXLK8JqMcpA676/E+eJTJsi72j2OTEIjowtO4ug5dU7vY0yfQA1o2Rnc+nGv7dE
	 /xg3Eg1MvyDwg==
Date: Thu, 26 Jan 2023 08:42:27 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
	wenrui.li@rock-chips.com, rick.wertenbroek@heig-vd.ch,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH 4/8] PCI: rockchip: Added poll and timeout to wait for
 PHY PLLs to be locked
Message-ID: <20230126144227.GA1271912@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230126135049.708524-5-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_064230_557573_43EB76E0 
X-CRM114-Status: GOOD (  11.83  )
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

On Thu, Jan 26, 2023 at 02:50:44PM +0100, Rick Wertenbroek wrote:
> The Rockchip PCIe controller did not wait until the PHY PLLs were locked.
> This could cause hangs. Now the PHY PLLs status is checked through a side
> channel bit with a poll and timeout. If the PHY PLLs cannot lock an error
> is generated. This is documented in the TRM section 17.5.8.1 PCIe
> Initalization Sequence.

s/Initalization/Initialization/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
