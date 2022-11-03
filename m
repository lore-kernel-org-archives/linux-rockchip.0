Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C677C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Nov 2022 15:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YutJUTtE/QoQuyCK9OoJVOmarum+Wldsnu7pF/cT2Y=; b=W6+gVg7D6O2pe9
	zNSKb+p81Fww/Z/nWxN6WH6uCJZVO7inVtH9J4uCTkXNQhppqPbSgcQiHc7AzP8p0MA4NUTDSjFp6
	zBJ0Vkoa0M3go75oXIphnkoMo4+ZIa44xi4lSZz4jKELMTj8GulQb8JCw7oHRrbgG5UjLxwBKrfAi
	wPdt8Yi7MLzvt0Ze2Ls4SqSEMBbr203CwrLxcMim806L5CS0c6OGVBEO1Qnrqfw7UsoaIMuzz91mc
	Y1nD+QJg2N2G6dZOvmfzPt9cFsgV+BmT3nJVkMf1uFRTGyHdh0FFfPaNe5Hcf9T8wMaPMTYnPqr9L
	0EinE2K+CbaVH3W76UkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqbh2-000Bbw-Vc; Thu, 03 Nov 2022 14:59:44 +0000
Received: from mail.8bytes.org ([85.214.250.239])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqbgm-000BYl-9f; Thu, 03 Nov 2022 14:59:29 +0000
Received: from 8bytes.org (p5b00664c.dip0.t-ipconnect.de [91.0.102.76])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id D14EA260033;
	Thu,  3 Nov 2022 15:59:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1667487567;
	bh=HTUsTy233yIiWp1C/zye7Xevk8uy5uBNvs5YyKtRlG8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vgU5PXg7bRQqqMVptuQYq7DSJ2v4CNm2bjBLUi2vPE1EtDSFc5eSR5BsvYGnr233D
	 T1ajeSHHA/rZGPXI0lEh0RiQ3uyNETgw7obyVgskGbrk2lPkU4XIp7xx/TkPyD9PLt
	 c2AeARe2Cj8iJNdaXae4dTfOXEc16b6ND03m7xEdWWQ60EGaF1NHEihnu1nFLJ+lVG
	 Uxqp9laxJUJ5YIApjFc1l55WhdkqaHqfUUqwQN8L1jSplQWmBbrW7U5jxD6Wulkfh6
	 7dSEBqrq+szAgQDbURXddZIh2t7i7MpVcYOIMpg0Wr6yGV1S/SMCOuaRDVG4xy5tW7
	 EnQBWG71lZTKQ==
Date: Thu, 3 Nov 2022 15:59:25 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH] iommu/rockchip: fix permission bits in page table
 entries v2
Message-ID: <Y2PXTfk4Et7r5/QD@8bytes.org>
References: <20221102063553.2464161-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221102063553.2464161-1-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_075928_584523_A324406D 
X-CRM114-Status: UNSURE (   9.21  )
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

On Wed, Nov 02, 2022 at 07:35:53AM +0100, Michael Riesch wrote:
>  drivers/iommu/rockchip-iommu.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)

Applied, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
