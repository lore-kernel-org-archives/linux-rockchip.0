Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DCCBD41D67
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 16:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=WUpCwTWfZMQd7p+FLB5H8DxAN+nBlJSHqjZQq4J/vrI=; b=beFIiTCwiuPk0B
	q+mV7gNgn25bmAa90+zPLB0YckmABN6AOaa/WlROaEwWtPt0O4qAbsbyzNogQNSDMg98hjgu7ncqn
	q/9VA5JJbiKGWBnizis4hrOT9YvA/wpTVCznpJdVfmSI53giPaQyB1ZtWiqlqDFTMuKLaBidn5YOx
	bwB/eLN6bvhAMstA+BBxYRrP6OAROl8kj2Mw36N7msy9WvHIqMOvECdW2STYQiuq5KuwyCcSuR5UL
	JTONuFdxEMZIH4Iz1G/tT8Uc+69DfzF7fUkk/bta9bPv6HtDPeNYdXgg+lkxBK//JifSe7PokmAVp
	r+800U0f4kdohBdUZ7Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTjYQ-0000000Gv70-1T7u;
	Thu, 11 Dec 2025 16:30:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTjYG-0000000Gus4-3AQf
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 16:30:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 26BD26013A;
	Thu, 11 Dec 2025 16:29:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2F9CC4CEF7;
	Thu, 11 Dec 2025 16:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765470598;
	bh=P6KIEwi85VmWfN2nW2wZR6OCmL+ECYNt7WGle1jHtTc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=eoDFl+qQ+iFhvl1GJNL2NC78r2wdhwIYDa8w9Qbsnp7Jq3xUouJsyBW3Ph6L+lpf1
	 kJMWjT+gAesEQh+vpw1bHbeKAWxHkX+Ndu8WsudHTqOb73kCNfDBAqVX4rJkgiGsHg
	 bVUEfgmFwyQlpaZS2MDXgCYsOypk9tbBX/F5980OO5k9o/k1BzuFD9zDAhjkOer8vE
	 IsDdSbKPZOY/ydCqh0Y7Al6UcHj9FNfRGjnBlDR0sK2XMC1jBN3Gij1wd5IYJzkmqU
	 16aKQSVGskyJvfNlN2jnvt9WGInJs9oxyXsdUiNLsSS6Bpz/5nUb6qyX+XWvI8Hy61
	 x188uFsYgrxJQ==
Date: Thu, 11 Dec 2025 10:29:57 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 2/2] PCI: dw-rockchip: Change get_lttssm() to provide
 L1ss info
Message-ID: <20251211162957.GA3595695@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1764035632-180821-2-git-send-email-shawn.lin@rock-chips.com>
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

On Tue, Nov 25, 2025 at 09:53:52AM +0800, Shawn Lin wrote:
> This patch renames rockchip_pcie_get_ltssm() to rockchip_pcie_get_ltssm_reg()
> and adds rockchip_pcie_get_ltssm() to get_lttssm() callback to in order to
> show the proper L1 substates. The PCIE_CLIENT_LTSSM_STATUS[5:0] register returns
> the same ltssm layout as enum dw_pcie_ltssm. So we only need to tell L1ss apart
> and return the proper value defined in pcie-designware.h.
> 
> cat /sys/kernel/debug/dwc_pcie_a40000000.pcie/ltssm_status
> L1_2 (0x142)

s/get_lttssm/get_ltssm/ (subject and commit log)
s/This patch renames/Rename/ (imperative mood)
s/and adds/and add/ (imperative mood)
s/ltssm/LTSSM/
s/L1ss/L1 PM Substates/

Wrap the commit log to fit in 75 columns to allow for "git log"
indenting everything.

Indent the "cat /sys/..." example two spaces.

> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +static enum dw_pcie_ltssm rockchip_pcie_get_ltssm(struct dw_pcie *pci)
> +{
> +	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> +	u32 val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_CDM_RASDES_TBA_INFO_CMN);
> +

Wrap to fit in 80 columns like the rest of the file.  Or possibly
reduce the length of "PCIE_CLIENT_CDM_RASDES_TBA_INFO_CMN", which
might be excessively descriptive.

> +	if (val & PCIE_CLIENT_CDM_RASDES_TBA_L1_1)
> +		return DW_PCIE_LTSSM_L1_1;
> +	else if (val & PCIE_CLIENT_CDM_RASDES_TBA_L1_2)
> +		return DW_PCIE_LTSSM_L1_2;
> +	else
> +		return rockchip_pcie_get_ltssm_reg(rockchip) &
> +			PCIE_LTSSM_STATUS_MASK;

None of these "else" uses are needed:

  if (val & PCIE_CLIENT_CDM_RASDES_TBA_L1_1)
    return DW_PCIE_LTSSM_L1_1;

  if (val & PCIE_CLIENT_CDM_RASDES_TBA_L1_2)
    return DW_PCIE_LTSSM_L1_2;

  return rockchip_pcie_get_ltssm_reg(rockchip) & PCIE_LTSSM_STATUS_MASK;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
