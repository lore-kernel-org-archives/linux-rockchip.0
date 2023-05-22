Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B3A3C77B73
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 May 2023 15:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ExyyX579Mhy6iRzCHVNNQx7lFhMrlAmiUFTKF6EkVw=; b=y8Qx1s3OMLo3e+
	dPvWf0JJEX8USdgpLCO81/5xFlteF+b3vDwwXLc3uKnpTnwJX+RtnN4A9zVM+deN6Buyj8w/qMIdV
	iQMKHhrSeTP3NzgHjavHaqcq372maozbzhdp6nVe0jjFigMOkL3A5FNd7Pb3M7qlVbKpy02G1C3oe
	yCHBv7kRvYHfwP5At7Ed3y1jqLhY3Pz4udpM6sLzxJlUHCINZ2oINq7pyzioleETttaOGYsHZA0xp
	IkiMJlAHakzaUMnQXXmkDbSLkPfDErDKugqXygf578QOgE/YzG2OtRV3nwJHQ+rwR7jAhelgERy+D
	eOe5Ww+ithAguydTiM1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q174S-006wZD-2U;
	Mon, 22 May 2023 15:03:36 +0000
Received: from mail.8bytes.org ([2a01:238:42d9:3f00:e505:6202:4f0c:f051])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q174O-006wXM-1w;
	Mon, 22 May 2023 15:03:33 +0000
Received: from 8bytes.org (p200300c2773e310086ad4f9d2505dd0d.dip0.t-ipconnect.de [IPv6:2003:c2:773e:3100:86ad:4f9d:2505:dd0d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id C073B2434D7;
	Mon, 22 May 2023 17:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1684767812;
	bh=W2Fq+gkFMlwVicsPZzZGJ6rF+QXMXtfRpZ84MkbCh8A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0MdHcxe1Ncak+rCXaDuSrhO3D3GtmxFkIB+AKd5MCKFu3BNrETgFP64UOYdl+/XXV
	 tZ3iIojkktIoVlXIFSSBMeNV+qGhABiXTGTN2USBjxpQwsa5UN2qK21S663pQpOrzW
	 mCdurgyAlqBU9+T4CeUwPfJ2qVGgFPbljvyRygev/H6YApL9LjCP5U74Rs4jvBU1hS
	 W3tc2c45jSG2MF4qnhSjrpYyIhx2dJAGMhXtO2XLGkDGVh9JyM8vOQjTWxPN+QLFnR
	 E/d5asUmAFxFk5+gX6z+qBzk8+i374nyL8ZEBVXnojRHn2oYT/wTNUMaq4AXX0J+km
	 FNmRthkkBVTtg==
Date: Mon, 22 May 2023 17:03:30 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Chao Wang <D202280639@hust.edu.cn>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <maz@kernel.org>,
	Olof Johansson <olof@lixom.net>,
	hust-os-kernel-patches@googlegroups.com,
	Dongliang Mu <dzm91@hust.edu.cn>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iommu: Fix unwind goto issue
Message-ID: <ZGuEQifvdEgRyrp9@8bytes.org>
References: <20230417030421.2777-1-D202280639@hust.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230417030421.2777-1-D202280639@hust.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_080332_869760_98DD77E3 
X-CRM114-Status: UNSURE (   8.53  )
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

On Mon, Apr 17, 2023 at 03:04:21AM +0000, Chao Wang wrote:
>  drivers/iommu/rockchip-iommu.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)

Applied for 6.4, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
