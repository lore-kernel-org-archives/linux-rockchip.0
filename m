Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4826BCFA466
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Nov 2025 14:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNftdtfzO0IZ45WNMyv9FRwl46LYMxKKzqcTlaOk0Ns=; b=bYCi1Xk2eCCUfW
	h1MBMjjbhPeCq8UyBxLiVYDa9NgqVnmvuSVGyJIpkArSszce7NSG6iHK4OvEnwRWOD3kSLMuxdo0T
	HHneia6pwAhlp8u0KAxj8DaPjBjL6xzVfw1NjeCQo27lCrLkhDQeYZOckYwUfVTamIqY0CWxyYlrg
	bzPMu1zbo5g/ApM3WJCY6qA2Y3e9yYcc6bR386z94LI4fZqo3JQEi1dVUfZnfJIMy3rLQFFoouDPa
	QUs3a6tWl8k7fmbsX15XV0YmMIouszj06wytqQlyucKRPZmKbgnV2RHS6VWGCT4o3uYGfYPNCAvg2
	XzcXhFWyrBLe98g3obRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNX9e-0000000Bo1V-3La9;
	Mon, 24 Nov 2025 14:02:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNX9d-0000000Bo16-3khG;
	Mon, 24 Nov 2025 14:02:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0EE2760167;
	Mon, 24 Nov 2025 14:02:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF81CC116C6;
	Mon, 24 Nov 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763992976;
	bh=a33jXfKWV+tqd3DAXr4TASNxV2asp4jDlbK8KxdNQOQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e/hgYIy5IZoVv36JC+jRAqpdwANOi0RBMs4xIVOj7TdREitlfpOcNyp1ih6Wu+6o+
	 2Q/Cq8TiwmjUPhTdVruO8tJx7Oo4SKI30Ev7qqnSXz8tGpSumZU/E8QiYk+RFrOpyd
	 oXf/14nxkqp/kLTv4peMcyYcOdSH4bLmJnmbtspZdvLnO1CzdgnDG63+PeWfdDbjY6
	 D1/h34qRh0R4eVmBZwB8iY/7rCk/m2b48OA04YV2AnVQ4Y8fo4lxElUQnKQOfmgBS9
	 ORMBPLITDD4RodCl94oRW4fD5Syw1ax/SOHg7e2RHCr+EJJU6C3QMhogwIJ9kfYsdS
	 eyryjhyrdkoOw==
Date: Mon, 24 Nov 2025 15:02:51 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 0/6] PCI: dwc: Revert Link Up IRQ support
Message-ID: <aSRli_Mb6qoQ9TZO@ryzen>
References: <20251111105100.869997-8-cassel@kernel.org>
 <mt7miqkipr4dvxemftq6octxqzauueln252ncrcwy6i2t7wfhi@jtwokeilhwsi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mt7miqkipr4dvxemftq6octxqzauueln252ncrcwy6i2t7wfhi@jtwokeilhwsi>
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

On Mon, Nov 24, 2025 at 06:07:44PM +0530, Manivannan Sadhasivam wrote:
> While I suggested to revert the link up IRQ patch for rockchip earlier, I didn't
> expect to drop the support for Qcom. The reason is, on Qcom SoCs, we have not
> seen a case where people connect a random PCIe switch and saw failures. Most of
> the Qcom usecases were around the M.2 and other proprietary connectors. There is
> only one in-house PCIe switch that is being actively used in our products, but
> so far, none of the bootloaders have turned them ON before kernel booting. So
> kernel relies on the newly merged pwrctrl driver to do the job. Even though it
> also suffers from the same resource allocation issue, this series won't help in
> any way as pwrctrl core performs rescan after the switch power ON, and by that
> time, it will be very late anyway.
> 
> So I'm happy to take the rockhip patches from this series as they fix the real
> issue that people have reported. But once the pwrctrl rework series gets merged,
> and the rockchip drivers support them, we can bring back the reverted changes.

FUKAUMI Naoki, just to confirm:

Neither my suggested approach:
https://lore.kernel.org/linux-pci/aRHdeVCY3rRmxe80@ryzen/

nor Shawn's suggested approach:
https://lore.kernel.org/linux-pci/dc932773-af5b-4af7-a0d0-8cc72dfbd3c7@rock-chips.com/

worked for you?


If so, I don't see many alternative but for Mani to apply patch 1 and
patch 2 from this series.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
