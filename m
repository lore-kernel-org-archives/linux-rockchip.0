Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93941EE01FF
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 14:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ir+auscjx7wGYqlkN27gheIApBwG9LZuVsWFYVblpxA=; b=tau9Jk8IASwGo6
	kiRhHFkX8ELNlhvt5qVl/5s6kqMKYRg1p1W9S7JRV2WCppR27TKHYEkz8F+EWzmEYyhuVODPG8y94
	3KY18MhUQuHxhYtoKK8Ds2TlpQa+CZz2AL017b0zMAZl18VDbQGdbfgEpx9c6IN9daAp4bDMTduKt
	Oce9haacmi1XVOhLE9Wo8AnWo82m7cFJafrwOU4Vflk0BvirdGd2i7t/TEZ04L1WYw8CoVDhLPi5q
	4x75GE0/v9/VouEym93u3RBuuPVL7m9AaByY8lS1izDpKRlDrw9jZfdREBiUVi8uvP92UD6r2A+1N
	WqTzfq6kHMdrnFeOy11w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaacZ-00000004vqQ-2ASi;
	Tue, 30 Dec 2025 14:22:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaacX-00000004vpz-1PdB;
	Tue, 30 Dec 2025 14:22:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AC6066000A;
	Tue, 30 Dec 2025 14:22:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4B1AC4CEFB;
	Tue, 30 Dec 2025 14:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767104564;
	bh=aDLjB01UK3jf7Dq8YDojKtYOpc32gM+BspVDOEkyfFc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eHrY1i2KVVVwolDMtjU8QxJXXRcPMFsEsjLrzfH5PpSSJdKoey6Pl7NHAYgnZg0he
	 v2QjvTLKdiqY1rO2BMhRl80FNLNwdLDPkCvs+7coSSC86jcbDv0QXUCEm/paKc/sdN
	 3BsLGwVimdUKUnl0utu5kxHwp/EP0Mc3A6b8K4G1VNblsW8WEHmZUdFzwiZzWUWiuR
	 qa6G05nmL710k0W6Szg4gvQzyvRAk+l8dZhLp2WVczc+22aNadPoOxCNLIBJTdpkbs
	 b1JU79mz96+JD+buCqYxsS1n4+U4B+8PQVNdvxT6rMIC3rOxDw7zmfk/BEPcb3QHAt
	 MIVmN2kW848JA==
Date: Tue, 30 Dec 2025 15:22:39 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dwc: Remove duplicate
 dw_pcie_ep_hide_ext_capability() function
Message-ID: <aVPgL2AuAMpx76pI@ryzen>
References: <20251224-remove_dw_pcie_ep_hide_ext_capability-v1-1-4302c9cdc316@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251224-remove_dw_pcie_ep_hide_ext_capability-v1-1-4302c9cdc316@oss.qualcomm.com>
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

Hello Qiang Yu,

On Wed, Dec 24, 2025 at 02:10:46AM -0800, Qiang Yu wrote:
> Remove dw_pcie_ep_hide_ext_capability() and replace its usage with
> dw_pcie_remove_ext_capability(). Both functions serve the same purpose
> of hiding PCIe extended capabilities, but dw_pcie_remove_ext_capability()
> provides a cleaner API that doesn't require the caller to specify the
> previous capability ID.
> 
> Compile-tested only. Runtime testing on RK3588 hardware would be
> appreciated.

This patch does not appy on top of pci/controller/dwc

Anyway, I applied it manually, and tested, thus:
Tested-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
