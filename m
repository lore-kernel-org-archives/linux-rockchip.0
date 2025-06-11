Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 328B6C677C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 14:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yunKzlTRk/MqHHFoN8YbLshBhNk+/mMP7dI47q8OsWo=; b=t+9uWmlrY7Ln4J
	+V5GFKHRhdlW4OmFI8hMZfzGemF2eyMNye7MOIc3FXEyyk/FBKM/OZIQcna4cTr+l5tzafCv7kRiw
	ieq7NeVLZVGhFnpOWvqJQCsObdCnKtd1PEvsWaK4/FkHL2w6vX/83o0BEdcxZdHkXXLUh5qlPGz4q
	XAs+2ksgTkH4JHpXuzamqQhxYGug46SwsoAhX3adusTTRJHKl6NSRr3cgRmeL80jrOmenYWSXFgsY
	lmr9v1z9F6bYZJcfBIp+6HuwDDINVise56CO/KBKcRQVtKz1m66ObxxJ2CwaP5TY/Gz7zQzIged8p
	ZCNsl/JJpEC0E+DmtihA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPMlB-0000000AA3y-3HIJ;
	Wed, 11 Jun 2025 14:49:01 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPHwV-00000009VIB-1aSr;
	Wed, 11 Jun 2025 09:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1749634821;
	bh=oW4XgX/lmD63EJZeg/21ZPWf1q1qDffFRs1xh6RK0tk=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=AIOCDZdJNc4cvOI+9dR4QtiyWejVsnTsx76OJcpPK2K47PYK1K25nHnx7NC15UZWg
	 U9iGg3zXSwKKrJstGNXHeDB23pm48ImbKGlYG1lleu82ZHF8IMyGMJg8CoSFiMOB09
	 llPZk4oMAaRxc2xD98eB9goX51LHvtnwlnwATWVveVXNtXOc7Cfm9S6nwsYZXbfqDG
	 HA4RJSB5h6KeYuPVxfELN8+upjB6gR127HILGMeipNd1WbkfAHOPr61vUR+JENTSmt
	 JzjqERVGHb5WeTn4mDzbcXqS2kGco68WwNBPjsFQYfXHpcbeJnE9wkx4DkdjOxORI8
	 55Km+HNivIKsw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9D1AB17E36B3;
	Wed, 11 Jun 2025 11:40:19 +0200 (CEST)
Message-ID: <3827d632-6407-40bf-9b7a-148b0c46bea8@collabora.com>
Date: Wed, 11 Jun 2025 11:40:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v2 5/7] iommu/mtk: Remove iommu_ops pgsize_bitmap
To: Jason Gunthorpe <jgg@nvidia.com>, Alexandre Ghiti <alex@ghiti.fr>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Albert Ou <aou@eecs.berkeley.edu>,
 asahi@lists.linux.dev, Baolin Wang <baolin.wang@linux.alibaba.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
 Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
 Janne Grunau <j@jannau.net>, Jean-Philippe Brucker
 <jean-philippe@linaro.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Matthew Rosato <mjrosato@linux.ibm.com>, Neal Gompa <neal@gompa.dev>,
 Orson Zhai <orsonzhai@gmail.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Robin Murphy
 <robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>,
 Sven Peter <sven@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Krishna Reddy <vdumpa@nvidia.com>, virtualization@lists.linux.dev,
 Chen-Yu Tsai <wens@csie.org>, Will Deacon <will@kernel.org>,
 Yong Wu <yong.wu@mediatek.com>, Chunyan Zhang <zhang.lyra@gmail.com>
Cc: Lu Baolu <baolu.lu@linux.intel.com>, Kevin Tian <kevin.tian@intel.com>,
 patches@lists.linux.dev, Niklas Schnelle <schnelle@linux.ibm.com>,
 Sven Peter <sven@svenpeter.dev>, Tomasz Jeznach <tjeznach@rivosinc.com>
References: <5-v2-68a2e1ba507c+1fb-iommu_rm_ops_pgsize_jgg@nvidia.com>
Content-Language: en-US
In-Reply-To: <5-v2-68a2e1ba507c+1fb-iommu_rm_ops_pgsize_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_024023_591960_E85EA756 
X-CRM114-Status: UNSURE (   7.02  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 09/06/25 22:41, Jason Gunthorpe ha scritto:
> This driver just uses a constant, put it in domain_alloc_paging
> and use the domain's value instead of ops during finalise.
> 
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
