Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D94AAC25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 21:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=K8+xLJuMXoWhbDSCU5MTRniHObIBSokoWEaz3dpkSO4=; b=0/R+I8Z8xNm1Qn
	A7VRPRlubGFCyQVR3H7Qc07m41Yt6zbO7OnaYvg3hgYjPgtfD+VN0ckRl5cruKXh/aoZayenUSEyP
	bdvlmPXOulyprdQoGmKQ9Z9V3IOYrm0jJW6W+hUM52m645JwIggfM0lLn5jALZgwCTX+3I9CqnPHp
	d8+m/krVeKift54IlmoYZwy2vyBPdS/WTo2aLMDQEsjTOi/ZmlkZga3goGdb/rEjY8viAP2w1o3yt
	0otCjcbILiKQwllV+v8eS+0nQqY9q9U5CEYnVB3j7I25LQm7fVlhM5ZtB71zOHk7m5eI0Yvm3x2i9
	ROVFvVaQRIYXsDEAuBnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Lx6-00000002t6u-0rvu;
	Wed, 15 May 2024 21:14:20 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Lx2-00000002t48-0otK;
	Wed, 15 May 2024 21:14:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 483F4CE17C8;
	Wed, 15 May 2024 21:14:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 593B9C116B1;
	Wed, 15 May 2024 21:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715807653;
	bh=it91atMIvH+S1hh7KTPixQTxjOewGFSIV5K2G3BKGP4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=ck9f3UoZ7IOwB+QGO0+yu15XrGwC9cBQEGWnqlv0GwfLTbEH7rufz5R/udo4XPZca
	 CAiykIzMjc9wY3/EdWhe9RSR7bfFLoZ7cTcUTXtkFuKFlSXtCAK9JZXU9DaOetuHgz
	 +Yv3Hqk+1tyy/9LrgvnQ40sNRe+MYrvuqyXeiV1ZhVZKfSUydoCHaT9mhyW5O8/XuJ
	 94xi6F9fbTrpPMhYAwbsFXi/E7NifU8UGa8MUeY1RlFWT/LcPtUJAcAOzAaD6ovi8r
	 jdIBCzkF05zqGGqOkLnexiqvizpSh4K3hRQ/ONhviccFQRKNpSzOta1+/lkJ9yhFsm
	 NRa5EksIpAuaQ==
Date: Wed, 15 May 2024 16:14:11 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0/2] rockchip rk3399 port initialization fixes
Message-ID: <20240515211411.GA2138954@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240413004120.1099089-1-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_141416_435616_E424FD47 
X-CRM114-Status: GOOD (  11.72  )
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

On Sat, Apr 13, 2024 at 09:41:18AM +0900, Damien Le Moal wrote:
> A couple of patches to have the rockchip rk3399 host controller port
> initialization follow the PCI specifications around PERST# signal timing
> handling.
> 
> Changes from v3:
>  - Fixed commit messages as suggested by Bjorn.
> 
> Changes from v2:
>  - Use PCIE_T_PVPERL_MS macro in patch 1 (and remove useless comments).
>  - Split second msleep() addition into patch 2 as suggested by Bjorn.
> 
> Changes from v1:
>  - Add more specification details to the commit message.
>  - Add missing msleep(100) after PERST# is deasserted.
> 
> Damien Le Moal (2):
>   PCI: rockchip-host: Fix rockchip_pcie_host_init_port() PERST# handling
>   PCI: rockchip-host: Wait 100ms after reset before starting configuration
> 
>  drivers/pci/controller/pcie-rockchip-host.c | 3 +++
>  drivers/pci/pci.h                           | 7 +++++++
>  2 files changed, 10 insertions(+)

Both applied by Krzysztof with Mani's Reviewed-by to
pci/controller/rockchip, but his outgoing mail queue got stuck.  It's
really too late, but trying to squeeze this into v6.10.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
