Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A784D1CDC6
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 05:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/FgptrQ+q34QoeZ+UyAtYV81uYSPdQn51kWOSKfvwA=; b=prRT7vNzkUjtLb
	8dG3qTCsMK+9G2FsfcAvWw8rZEJ8ZFW/B5XYiLFMPAF4DhdJfgoyvDV6yyROEDMgzQZlToYxLswKC
	N8TC3S8tU08shoMRG3HFNa4fVAr+5WHmLiN88eFn+IBnHSH7ov+pojUXLRuGBryKS5e9nyYChvyCW
	YG8XK06VDw1rQ1v0L4Su3bF0DGCYzBxICqPraoircBR8Ef4ljA9DawRuAhmT/wOI3xucG8eTqQAUy
	8wctV48c8yA1e6d29gt0TagcAgai9oRgUabOX5jFKGlW5rg5PyIO6P44e85kq5aq2ANe3gZLOC886
	szKhV98xrxowXZrMx+kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSqPF-0000000Dqsr-3D6u;
	Tue, 09 Dec 2025 05:37:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSqP4-0000000DqrB-3OI0;
	Tue, 09 Dec 2025 05:37:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3529C41708;
	Tue,  9 Dec 2025 05:36:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57C90C4CEF5;
	Tue,  9 Dec 2025 05:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765258608;
	bh=2RDv4DcIrTBucTjjuk5VLFq9dvjMqEKn4KbLFw9RQ3g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZMXVtuAFLOJ+SsbKDzzcbohGJRut2sSqU8ai3zrpchO1F1eqwyfiGhM4gT3woR3pF
	 pY/JWYmW2Lp3nwtWVfRRWEHwmWdgigBYR5Qf2JlboV0XoYYGhhND6Jh5VcVmxd9l64
	 GwT/zblmSesZFEuW/hJnJp5lcq4bPlCkrxYnfESxh79OKibdZAC5vhtkH2bvu58Ld9
	 /SCiT6/MIV82mKEecnhrFdjGymKKcqyebul7ZTgauQivImDCLEH+SltzFhEctzUaLy
	 21/TzgPVsX9H6i9+vq8AQ3PrcV7jskjZ+nsVRprhD/mYCoQKZ/YEVKfj0BNdVmMwFB
	 CejkKw80MROSg==
Date: Tue, 9 Dec 2025 14:36:44 +0900
From: Niklas Cassel <cassel@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dwc: Make Link Up IRQ logic handle already
 powered on PCIe switches
Message-ID: <aTe1bA7lcVzFD5L7@dhcp-10-89-81-223>
References: <20251201063634.4115762-2-cassel@kernel.org>
 <f1059d5d-3fa5-423a-8093-0e99b65d5f4c@oss.qualcomm.com>
 <aTev28wihes6iJqs@dhcp-10-89-81-223>
 <dad4957c-ca13-4742-b46d-03f0478911d5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dad4957c-ca13-4742-b46d-03f0478911d5@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_213650_881700_0E30F299 
X-CRM114-Status: GOOD (  13.92  )
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

On Tue, Dec 09, 2025 at 10:57:18AM +0530, Krishna Chaitanya Chundru wrote:
> On 12/9/2025 10:42 AM, Niklas Cassel wrote:
> > 
> > So I don't really understand your concern with this series, at least not if
> > it goes on top of your series:
> > https://lore.kernel.org/linux-pci/20251124-pci-pwrctrl-rework-v1-0-78a72627683d@oss.qualcomm.com/
> Hi Niklas,
> 
> If this series goes on top of the our series i.e pwrctrl rework series, I
> don't have any concerns.
> My only concern is link up IRQ never fires if this patch goes before series.
> 
> - Krishna Chaitanya.

This patch missed the v6.19 merge window (and so did the pwrctrl rework
series), so as long as Mani queues up both for v6.20 (with the pwrctrl
rework series getting applied first), I think we are good.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
