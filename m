Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A74C27C6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 08:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNZdZgaATfenkwlGnwdnTKMCB/4qdBbVOJlTnRy721g=; b=Vq2XljtpiFYCuE
	MjfeGpYuw+wmx/90rX3+AHnzut8BtlzBxgih6wesZiyrnAHN1iEPO4cz5lV/NRiYnd6dkl9MOywak
	uCZvXDxxFFXGP1/v6IpFz1E1W5vTNObfnl1FunIzD2JrItNfjwAQ2uHOUFtSj5PGEhDEKJj78HY1g
	gdN8GgYfS11VRoWt6GtqpwHLrsal+8vRj6Z7MAtALMWJuu3TTdheL2de1uBc6F8xsdqCUCrCOEs2G
	cuAvbPk+Nsrx0In839vntP83hkhJSjXo/DOPKj2Po9Q7+C2L5tQCyGCH9B6a0LI1pKXAmZnECoBNH
	70o0iqMwfjkqRAZPyV9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ7I7-00000009ly1-3LwS;
	Mon, 17 Jun 2024 08:00:39 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ7I4-00000009lxF-2Jl8
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 08:00:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2F9E8CE1003;
	Mon, 17 Jun 2024 08:00:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79517C2BD10;
	Mon, 17 Jun 2024 08:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718611233;
	bh=uV9MpsrDI3F3OJ/6TsLxAXJsBp+2RFNu+1nGc5NktBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=klsYUveLquhL1BuiQ1Vdtl2kLHyzicEazwfIMeCjVQj/GeAGO530gpLmZI8AJCvBa
	 leQ3+LJP79Nw4WMaymPePQkC8ow61VtmUyoXGxs7p5CvcDB71l0+mVLbuR+R9ZGUYU
	 s3OjJXE8c7pziBwME3h8RGltHLf7Rt0iZ2AmRxum4XC8TtA+iKxP6pjRX46c1N9/wY
	 s7V5IP+zBnD20WZjK5/M6n+nt07VdrVLzXZFWTqmxfUjAYStvXxlAbRNAAJ180ckIB
	 QyNlVLlAIxXwXb/Pf3KoZqiTSeSIinEq1jGR6S7aVXRnEIfSYjZgujX0X3swp0I/o3
	 JhVWSj0vO7Erw==
Date: Mon, 17 Jun 2024 10:00:26 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 00/13] PCI: dw-rockchip: Add endpoint mode support
Message-ID: <Zm_tGknJe5Ttj9mC@ryzen.lan>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_010036_795770_9BE8541F 
X-CRM114-Status: GOOD (  12.85  )
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

On Fri, Jun 07, 2024 at 01:14:20PM +0200, Niklas Cassel wrote:
> Hello all,
> 
> This series adds PCIe endpoint mode support for the rockchip rk3588 and
> rk3568 SoCs.
> 
> This series is based on: pci/next
> (git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git)
> 
> This series can also be found in git:
> https://github.com/floatious/linux/commits/rockchip-pcie-ep-v5
> 
> Testing done:
> This series has been tested with two rock5b:s, one running in RC mode and
> one running in EP mode. This series has also been tested with an Intel x86
> host and rock5b running in EP mode.

(snip)

Hello PCI maintainers,

If there is anything more I can do to get this picked up, please tell me.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
