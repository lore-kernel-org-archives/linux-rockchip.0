Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2942ACCF9EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 23:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=PdtPSAVexLE2CqV1JlIwTcW+tjHYYemx3eNEpiANvLY=; b=KkG4YmPPdCO2uu
	AQrJ7WBeZfpyeMGRQUSR5U3PVDtohQn/Tjb+ooi/klIq/vu2ZQU+RlIUau1TpkAX0wTLD8QCSzrNO
	gfHa0p8Hge3rmuiHMeU61latCojGpKAkGfKG3bXcFEJUHtNwol8JJy6n0CIhQ7RYQMXdcE4FcQJck
	ZigNVxHryHiEWdqYCUSvsM9JBIxVnASd8trGUc3F+slwjdLXK6T3C76QIBn3mdxx6CHOx1gLMMX5P
	LNYmD0DwvkdX2sFHWX2NbNiOR1VVDnFD6ariLhZ72ZFVRZa2glx6kLgNmGH0H+elN5YkKn2VtBqb4
	CLzy3UkM0rlRv3cqFz7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEFFx-00000003DRe-22rL;
	Wed, 29 Oct 2025 23:07:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEFFw-00000003DQl-0IaJ;
	Wed, 29 Oct 2025 23:07:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 33918604F7;
	Wed, 29 Oct 2025 23:07:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC80AC4CEF7;
	Wed, 29 Oct 2025 23:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761779222;
	bh=6vtKfxLVHTckjyhMiXXMCWIG6JF1eGfVHEoUuMCzogg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=gUI24iy4PvwhwVEtAqpZpflxITkrGPyFwTkQHs8g6/9gVrcq2yrVfmYPolTzeIwAc
	 Alt/9YmvQPr43cYuqfYYWIYkVq8bzThVJ67NmhMgrsfcEuK2m9bUbQGNIsFkZQdIKI
	 Y6Lm/jo35rqeVCt7nbxEwZ1a/PPbLpD4ofCmMIvH5tm8jYSPnCUYpOg9u3gkB+bQ5T
	 DgwHHVmB8IQChz8wVvM/Os3oKQDpT32d7F3AYDwwIKUd1sJ7itSwvvVFIy85aT5eFM
	 X2PDbbGo0ImSP4Q6L+BpIfgnnhjPel1z9WfQT+GSNHuXVLwRSpTgpjwUtg2OsrcIZI
	 4lKsTfPql6oKw==
Date: Wed, 29 Oct 2025 18:07:01 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Jingoo Han <jingoohan1@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v4 1/9] PCI: dw-rockchip: Rename rockchip_pcie_get_ltssm
 function
Message-ID: <20251029230701.GA1601620@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251029-rockchip-pcie-system-suspend-v4-1-ce2e1b0692d2@collabora.com>
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

On Wed, Oct 29, 2025 at 06:56:40PM +0100, Sebastian Reichel wrote:
> Rename rockchip_pcie_get_ltssm to rockchip_pcie_get_ltssm_status_reg
> to avoid confusion after introducing the .get_ltssm operation support,
> which requires further processing of the register.

If you repost for other reasons, please add "()" after function names,
including .get_ltssm().  Then you can drop "function" from the
subject.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
