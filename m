Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2718C27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 09:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZFJtvlDz+g5K9tf3nn5QrswpayG3tSnqWeDS4k6Qjg=; b=Vc9ah7I7KLHYdO
	cAhfyc/HGgjY8NKSoM769hYAq3E+PPo7H2JGIfkMn54ECdOm2aEMZFB71EdTTog1RqPH5URwWOZ/V
	vcHXgZTlBcOR3uVisGOR06//iC0oxiuFu7dc/CjHhU+sAhQ5ay/kHlnsueaunNAugcQsw5RHBZNwM
	JwKxjNJiVOOoCS5OFAMmWRWaps4Y/e3i7i9HMLHSirDKjzFUKL05gT+ndMyTlyRKcmBCbstfaxE+B
	VHVSgrAqgqaOZKKClqlJ38fun9CV/xP+5/tA2srmn/fTvmrSUhv3ki8t+eRLt5Esgqq3CtXQYPQBH
	dm9gZylrVs7TiGvGu4Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFWEa-0000000DP0C-42tF;
	Fri, 07 Jun 2024 09:50:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFWEX-0000000DOzd-3Gdk
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jun 2024 09:50:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CA5D961F21;
	Fri,  7 Jun 2024 09:50:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82E0CC2BBFC;
	Fri,  7 Jun 2024 09:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717753804;
	bh=akjruwrkh3WPGkPm5XOY0XEKEarFR0VOfCvlpit9/ek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OJz999IFl1R2Wv1WpGcamcd26uiBC8bgKjv2D0/k3c/2dxRb6z9gvkUv9sZ427y15
	 hM4bpYCEJOAeaY8H15myrOiJ72h2GW9lgce1l9cvek3Ax5TubupbgSCfTS0oHPXKkb
	 DtYCP+8q+sXRCl/SsUbj5bpvzVfOMUrCzHRPuME9D+nClgE7XQ5oqQYBx2502mexB4
	 jQ+GsienBD+TirjkdCuz+oC3CxeksciiMp5qYcyaBntQ8iFhCKaym8zjzWvWpVuryU
	 CiQsjtNzICfCKWNcOnelZDglN3I9A2fh9C/3Zy9eK/+YY9B5vQeB5XHajdhSQDeHzO
	 doy3fofa+ItFQ==
Date: Fri, 7 Jun 2024 11:49:57 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
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
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 03/13] dt-bindings: PCI: snps,dw-pcie-ep: Add
 tx_int{a,b,c,d} legacy irqs
Message-ID: <ZmLXxUa_6WTde7OC@ryzen.lan>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-3-3dc00fe21a78@kernel.org>
 <20240605073402.GE5085@thinkpad>
 <ZmCQak-m7RWRxiix@ryzen.lan>
 <20240606062538.GA4441@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240606062538.GA4441@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_025005_906641_F7973766 
X-CRM114-Status: GOOD (  12.24  )
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

On Thu, Jun 06, 2024 at 11:55:38AM +0530, Manivannan Sadhasivam wrote:
> 
> I think you misunderstood what I was asking. I was just asking if we still want
> to keep the term 'legacy' for INTx IRQs in DT binding or not, since we recently
> got rid of that terminology in PCI drivers.

I still don't think that I understand :)

In snps,dw-pcie.yaml we currently (6.10-rc2) have:

const: legacy
(for the combined IRQ)

pattern: "^int(a|b|c|d)$"
(for the individual IRQs)

So we will need to support these indefinitely.

What is it that you would want to rename?

the combined irq?

Doesn't sound like a good idea to me, as we would need to support two
(perhaps that is what you meant).

But even if you wanted to rename it, it would be hard to come up with
a name. Perhaps intx, but that would be super confusing since we already
have inta, intb, intc, intd.

I think it is best just to not touch the binding.

In kernel macros could (that have already been renamed from legacy to intx)
doesn't really have anything to do with the DT binding IMO.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
