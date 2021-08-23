Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EED06C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 18:42:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7112E610C9
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 18:42:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7112E610C9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7Knk37nXOu8l3bNu6xE6EmgtKPPaqjkBfPRmIMiq9M=; b=UbNZ2JKP/cQ/yd
	Bjui4nPB/Oeim7gI7O/sCSIevWlBEmXnEC9PxRdlvjUR8nRw+sf45WiLj7h9InrfnB836Oy687U6O
	SmdNZf2J8cZKMmipXvqzJ4hi7dkpzf9lc1VuRFwOUSbmrgIntsjzCi6QOBp5IZczaUOB69Rny2c/Z
	QDW45BJ3KtqJe7ZYrMk/5AcKvtEsuojEq0xGyuVPlD1ftgz6ZHbRJDDong2ptWg1DdM/R1CsJNON7
	pxaAuhKyUhdssTORhWz6A5UWsGHAnSHf3NUfnO28qCKGyb59BHFQFVBd3TLtmRb6oZ45OTawIEG/Z
	AY3mobNDmd1xKwm7lrAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIEuH-000KuV-NX; Mon, 23 Aug 2021 18:42:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIEtt-000Kpo-HG; Mon, 23 Aug 2021 18:42:26 +0000
Received: from dynamic-046-114-139-102.46.114.pool.telefonica.de
 ([46.114.139.102] helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mIEtq-0002Jl-Fu; Mon, 23 Aug 2021 20:42:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Re-add interrupt-names for RK3399's
 vpu
Date: Mon, 23 Aug 2021 20:42:14 +0200
Message-Id: <162974163915.2977894.410070798189660023.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210822115755.3171937-1-knaerzche@gmail.com>
References: <20210822115755.3171937-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_114225_635802_221226BB 
X-CRM114-Status: GOOD (  10.25  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sun, 22 Aug 2021 13:57:55 +0200, Alex Bee wrote:
> Commit a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
> intended to remove the interrupt-names property for mmu nodes, but it
> also removed it for the vpu node in rk3399.dtsi. That makes the driver
> fail probing currently.
> Fix this by re-adding the property for this node.

Applied, thanks!

[1/1] arm64: dts: rockchip: Re-add interrupt-names for RK3399's vpu
      commit: 6b9b7968ff78d5b9a079da2f8decba873af54192

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
