Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5006C369A4
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 09:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3E7h0i7sk6Gjo3jDCcMHtR+tGckVx/AF+ztmKxJhKU=; b=4zZYbTJwxz8WCY
	EFLJ7OWSy7KIQ39QC7MFyhlSKr4fAUcdVXr3KuSD21y7GcnnGQ0WjEVBwqD6XskH1FDHFunjIi7E3
	gBkYL5hnuEXb4w0J2rV9ksheXsr6qSNUB0I+/mMP8qNAc+nBhBhnEQwXG0fjpNa+0WmH+SSJUikj6
	egoaq/mxao2hiht0hwCqhTCA5SSLNha+QhrsESxeu5HC1u2HyjGnTaYNQ5st9vCf+mKvv+Fyhwl5h
	aI4WH0CuBQPdegpaVDAyc2Fycv/oqpdqGoE1w9Lf4BYgQlL7CU8o6BqEUL23+ayBLn2qXq4FILiz9
	RcgpZL4jmLAe1dEfNJhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nr3-00000009s7Y-1RCU;
	Thu, 10 Apr 2025 09:05:49 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nfa-00000009pE0-3uYn
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Apr 2025 08:54:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 91B8BA49AA9;
	Thu, 10 Apr 2025 08:48:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72E8EC4CEE9;
	Thu, 10 Apr 2025 08:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744275237;
	bh=OfkMO8sGSlJHq96r1UtN9ITYye3UhRVwLEpYzTkkmlE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=swNgFMrWfDycN+qXDY98b/FeV6036ZLTMdp51e8IXVxH5Vs/DugXxHAtbAb7Pw8N6
	 vkh9QYqxYnVF+C3BnoO8cYFoiMoEV4P7GbAQA0bQserYwcRHNtM+CoahxTwS1sEBfH
	 zqWpV/J8ws1Yss7b9Zl9Ny6gjQfUt6UWS/kYHAv/9unr90dd3RRSeSSjvssK7l0v4X
	 oZvoHK6XtjTgKt2GIOVBcwm+jg4/RSAY/IevEodkWGV5zn3ciZ/ic3rB6szbxNQE7U
	 QrJZc7Yde7gyPurvrjBd+vYSNW9AKax2BkrbQlw4/XviKLXJQ5N2er7IKcO7zvgCbK
	 zuhS/Nz+Xh3Fg==
Date: Thu, 10 Apr 2025 10:53:53 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Enable L0S capability
Message-ID: <Z_eHIXpBcnxJP6sa@ryzen>
References: <1744248981-43371-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744248981-43371-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_015359_045717_6D778492 
X-CRM114-Status: GOOD (  10.91  )
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

On Thu, Apr 10, 2025 at 09:36:21AM +0800, Shawn Lin wrote:
> L0S capability isn't enabled on all SoCs by default, so enabling it
> in order to make ASPM L0S work on Rockchip platforms. We have been
> testing it for quite a long time and the default FTS number provided
> by DWC core is broken since it fits only for DWC PHY IP but not for
> other types of PHY IP from other vendors.

I also think it makes sense to split this to two patches.

Modifying N_FTS is completely different from enabling L0S, so please have
a 1/2 patch that overrides N_FTS and a 2/2 patch that enables L0S.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
