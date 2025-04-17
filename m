Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71B76C369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 06:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQBn24wcM8qz0qjrSxehnILNNSYCo4dC5slU0m2FdV0=; b=EEwiiFlg10xuU9
	ttt+55V9Fw9Z/eTkipQEyX8lXSnE0QAhjVvPsbyyMAPWkJXvpoV3vC2nsW5wHeGDAE8gl/7Z56j0w
	exrFeZctgk3EEmdyLOubD6KeR7r5mkj8D71r1c/OXJVLAfVz410dKEziOrTr3qv3uj8KTR6T8oUXU
	QJNTcaKsrHpZQEn0EVR+yessLle/vOR3c09BdNAyZCujBaiT0+sQJjpQc0hcZTrhNCrFgxr1djCQ0
	EdTt2E0QoXLvZ/sDFn4mJatApZ2Iv0mCJSIMIG2Gc2H8uuxssTij9GzC9kDazGUqEgN5lnx3ayOW4
	3sOpnpNea9mTRbeAT8jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5IgU-0000000Btnc-1Cb6;
	Thu, 17 Apr 2025 06:25:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5IgT-0000000BtnR-240d
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 06:25:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 08BBD6842A;
	Thu, 17 Apr 2025 06:24:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E896BC4CEE4;
	Thu, 17 Apr 2025 06:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744871112;
	bh=CkcZHT9S/DrOH9gULoFqAN3BPOa15S+qzPUMMh9rsQw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ng2Ma1fpZMD8295uxEY0tvRt6DA1jOxpOt4npjV08qFCdiq7M6flqMQC935JmBLZU
	 jiSEfy5t04UtIFPLA7POCceFmmb+ICU2bn0b4cmsQ/BqbQruWeNg8SsQWHPJeQ5ILO
	 DYrL8kQMZUdO2BFjG/bajIX/JC7IhBljpEzisexO+oBmACRl6s3ACkSNZnSE/8AoA1
	 LgB0yfkow0zFL1v8YwECCodalfiX+eMZhELRkpVLcxoG0QO5+WDhbAmpZBDtOtgAGE
	 IsXqBGwd1YMIrSc7/PzIKVgI5HVx0bVD0a4GcGF1L9b40Fa1uLh83aIt0hsCAwJRik
	 X72laD0f7RuOw==
Date: Thu, 17 Apr 2025 08:25:08 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 3/3] PCI: dw-rockchip: Move
 rockchip_pcie_ep_hide_broken_ats_cap_rk3588() to .init()
Message-ID: <aACexEN4wEv5fIMC@ryzen>
References: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
 <1744850111-236269-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744850111-236269-3-git-send-email-shawn.lin@rock-chips.com>
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

On Thu, Apr 17, 2025 at 08:35:11AM +0800, Shawn Lin wrote:
> There is no reason to call rockchip_pcie_ep_hide_broken_ats_cap_rk3588()
> from the pre_init() callback, instead of the normal init() callback.
> 
> Thus, move the rockchip_pcie_ep_hide_broken_ats_cap_rk3588() call from
> the pre_init() callback to the init() callback, as:
> 1) init() will still be called before link training is enabled, so the
>    quirk will still be applied before the host has can see our device.
> 2) This allows us to remove the pre_init() callback, as it is now unused.
> 3) It is a more robust design, as the init() callback is called by
>    dw_pcie_ep_init_registers(), which will always be called after a core
>    reset. The pre_init() callback is only called once, at probe time.
> 
> No functional changes.
> 
> Suggested-by: Niklas Cassel <cassel@kernel.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
