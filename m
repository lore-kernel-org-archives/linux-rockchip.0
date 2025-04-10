Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DF0AC3601E
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 06:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ooBtnWwcoraGzTCz94GJXXmKvaeVt0HLoi/JNq70rs=; b=mPG/2EBaMpjq6D
	XYSLdoD3vQTm/dU+pe4byLmGBIUud+ER4MEafOKEBL2t9iNA73zy4a7Tv+q5wPQcOyU7ALYf0iOOF
	exnop5VwkjTpZeXI3uuAMV4+ZXyTOMWA07cozLGL+wseqUCJNSc8UcLkzohQeJIgYunwUvp3t5CtS
	WOxo2dWEcUzpnkJO8L4dWXrDSFCXe8VJOkLX9Jz2nQjviisO+VNJif5Uvthm6+74+LzdX3m0OvQNe
	t9C1ZiC1+nrnYX6m2QNHxo4UkCFo6ruLZ0bAnke/589kkPBrDBrsl8UW54aPvTn+TfXZQgHk/tTNK
	XgYW2bfMiuaYj0u4U58g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2l82-00000009Kx9-3Wbl;
	Thu, 10 Apr 2025 06:11:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2l7w-00000009KvP-0lUq
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Apr 2025 06:11:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DFA565C4788;
	Thu, 10 Apr 2025 06:08:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C00CC4CEDD;
	Thu, 10 Apr 2025 06:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744265460;
	bh=3lb3qTLZNUsCDKDV9CruPjuMvm0ZBdGUEuDqG4gvEaI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f1wn5RFY0/JiNyPjObptry22vfIMMV/FGlnPe9HvuJaYHF6Xy4b7KlPWXATFDBZuj
	 rH1NTlvFgdFYPPIVC1S+dymVHgXGMWEOP+0ufaJl9M0airBt8jkhiayPF8f9O/dWX+
	 BqMsGAQuLWD2iJzX+yXkgkHOG+uiUHXKLOvvc+h2hg5MxD9ttDFS9FimCRPq8sivbb
	 DGhfnXQ0dCMd8eJ4iW487sU79QlCTu0JmdsjIC1eHQ68BDjMh00p+U8T0cg9iC3Smu
	 4xnG/nUaq3Aq+cOnUuxMPmGbrKkoKeuL/UHNvF/Tz/MmxvBpwS4lUzPykV1VOeM+d/
	 bpv24rEqAzfdQ==
Date: Thu, 10 Apr 2025 08:10:56 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check from
 rockchip_pcie_link_up()
Message-ID: <Z_dg8GkmQNvJxIJ6@ryzen>
References: <1744192308-238386-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744192308-238386-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_231104_282549_A459F356 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
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

On Wed, Apr 09, 2025 at 05:51:48PM +0800, Shawn Lin wrote:
> Two mistakes here:
> 1. 0x11 is L0 not L0S, so the naming is wrong from the very beginning.
> 2. It's totally broken if enabling ASPM as rockchip_pcie_link_up() treat other
> states, for instance, L0S or L1 as link down which is obviously wrong.
> 
> Remove the check.
> 
> Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
