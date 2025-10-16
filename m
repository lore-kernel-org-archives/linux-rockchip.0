Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66804CCD199
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 17:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=kE0bqLuZ9PsxGwadbV4FSKlmmVgc3vaqX9Y2BZUL55g=; b=ETg1TCX+xhmPO/
	zHriwaKKuYlrjU+5XXfy5Krw5XmrYT47+3IsFBrxYtEcUkHGkqvDrS/jEwNWK2EqT3K66GOCUvaUU
	i5n+B17gsetF+BB317eGj8jjMGDEga7jicNXkCyMU9Mvz+DINlddmLbN3As5ogis3ZBJNltHJEQ5U
	2zPOq9X5jF7ZFMgDoDfVI3ieJ0QKsPcWBi7kqjoYKz6LdJraOyRsJzl1e7J+/NHMqKsaYSV0pE+uV
	c4d6j4ACjblYxW2mU0qT0TaojJEmrs9QrkGD65eRVf8ViCHQP6MMZPij9m2OdYjF4qmTx6pcndBdN
	5+PoUxbkZjoI4tm4vA5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9SAf-00000005d7i-0nDI;
	Thu, 16 Oct 2025 17:53:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9SAd-00000005d6b-0grx;
	Thu, 16 Oct 2025 17:53:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CF9CA455F4;
	Thu, 16 Oct 2025 17:53:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92A09C4CEF1;
	Thu, 16 Oct 2025 17:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760637226;
	bh=bcq7dWKKhPAJAQH1BkuW4iJjxEE0ztxwKDkUSRYWSvk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=C7r4WbKNN5UzgAT8kp68WroN3O01umZ1ew9BKhuuFHuHpBQLWVNDtMdGpDWYqQwFg
	 1PZcA/RF64UIaOYvaxJ4H5Jqh8zCoIjBg4+fMpUcQMITsiO3/LNf/W93ZVqp3RZGE4
	 cqlrmH8bwxOBbIIuHD8J+qcEwKPj81L6U9RlKlu2e2Mx0dnzs2Qa+2ZOi5K3NMBi4d
	 +D+2YlqWLHUsqIxOP9j2Gqn7nIZ7FGWI58/tj4VfTdIq4CkNTfTz4uPDlq3c75AWXW
	 Hv+e3JqAgWzzqGvjxstRhsHmLY+JvQ68SKt5pBuanBwXSNzQ60yX+EXvqZfVRG0ysS
	 FFPkiW2/0H+9w==
Date: Thu, 16 Oct 2025 12:53:45 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>,
	Diederik de Haas <diederik@cknow-tech.com>, stable@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Disable L1 substates
Message-ID: <20251016175345.GA993781@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251016172504.GA991252@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_105347_223562_C4148964 
X-CRM114-Status: GOOD (  12.73  )
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

On Thu, Oct 16, 2025 at 12:25:04PM -0500, Bjorn Helgaas wrote:
> On Thu, Oct 16, 2025 at 11:04:22AM +0200, Niklas Cassel wrote:
> > The L1 substates support requires additional steps to work, see e.g.
> > section '11.6.6.4 L1 Substate' in the RK3588 TRM V1.0.

> > +static void rockchip_pcie_disable_l1sub(struct dw_pcie *pci)
> > +{
> > +	u32 cap, l1subcap;
> > +
> > +	cap = dw_pcie_find_ext_capability(pci, PCI_EXT_CAP_ID_L1SS);
> > +	if (cap) {
> > +		l1subcap = dw_pcie_readl_dbi(pci, cap + PCI_L1SS_CAP);
> > +		l1subcap &= ~(PCI_L1SS_CAP_L1_PM_SS | PCI_L1SS_CAP_ASPM_L1_1 |
> > +			      PCI_L1SS_CAP_ASPM_L1_2 | PCI_L1SS_CAP_PCIPM_L1_1 |
> > +			      PCI_L1SS_CAP_PCIPM_L1_2);
> 
> I suspect this problem is specifically related to L1.2 and CLKREQ#,
> and L1.1 might work fine.  If so, can we update this so we still
> advertise L1.1 support?

Hmm, looking again at the spec (PCIe r7.0, sec 5.5), it looks like
CLKREQ# is required for both L1.1 and L1.2 (but not L1.0, the basic
L1), so ignore my comment here.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
