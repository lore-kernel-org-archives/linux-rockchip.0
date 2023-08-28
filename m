Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18FC8C83F11
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Aug 2023 21:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOEnKN7+F2N+/t7wr1qQsCGqArqRnvEL0lqAa/jHEgg=; b=mkSSPaGtplNG8v
	lPhiAOqE0DoGkfdVwSmcDQIM10aYGhVT3AukVazFyuuuXM9lYzwghKsTdGDV4c/eZ7FP9RBkgXBqn
	niuTqBFAINGjpMI9LggCJvjsSDD4b2y/HurHo5RpLcGT0BTiwEK2nuLdX0k//VmKx9GCThlmL+Zx6
	1RjYO+rhdGhhAVw0jbwTpvpeDzcdo0pQ1Di36+g5n+yec9f0QCYZLnqOXWENV55Ddox9OREGRc68d
	KxvdgcFATWcmtsIowMQM08xUf1vIxIvIFM4c3fglZzVaXoql4iXJ2KAgVJOQhryymO+M7NtFM/45R
	gfWt8DT/6coiz3ybfrnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qajNm-00AH85-2V;
	Mon, 28 Aug 2023 21:02:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qajNk-00AH7A-2m
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Aug 2023 21:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693256564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=P4Hc7lOVUb37Hr8DSGTvFTUMZzvNY/pqjNxxEvyeHyI=;
	b=M8r6rZBU9LrEhYHADcGLbqegvB5OrT+yqsmTY6nOHKHxLQ1nrGK2/uEQXIXFEHg8Q3driv
	pyAtaFjvSwVxaudrN5ZnqTOU51V4wqVUi6EHEJrsVE8xYRAF+SB0PXX16b4vtbsseUfjlH
	Jwpws3KdZAnsQdz9VaC5nCMkUUToLs8=
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com
 [209.85.222.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-100-9P1_5FKQMsqjOIDsHgMZQg-1; Mon, 28 Aug 2023 17:02:42 -0400
X-MC-Unique: 9P1_5FKQMsqjOIDsHgMZQg-1
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-7942c270df9so1432761241.1
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Aug 2023 14:02:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693256562; x=1693861362;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P4Hc7lOVUb37Hr8DSGTvFTUMZzvNY/pqjNxxEvyeHyI=;
        b=AHTKI09ziBmAy5EBvzjBbbfktLcga4jzu8CSDJ7Qyb5LH1Dc+SGxSoMFNjsXmTHUEg
         TFNgRoNyb23ze8vMOMrpYIomKmYiFWWMlkXpkXwfwnmkyGCL2p1rHUBM2cVvE2hKDDJ4
         KIoUiuzKtqp6/BXAh7WT1Fw6d0CfTbrEfA56mvhrUJJBUIKfhA0arpCY6gUKQJAm3zB/
         1FJ5Ydy0fSjmNKhbOfz0+C1yyhLUANwahttx5BKCSUCKc06ZQmrwlkPyu2AaWABkvgp1
         34aArw1R5kcyuyH2ObzrtSLIWHfygS9sYmEBWO1O32RePxMD8qfcdVi3Pk98PCoBno/4
         FVcg==
X-Gm-Message-State: AOJu0YzwNhgU0ezwjhDd6/0SjHKc9M5J0ZBiP+7LX/dSjvJyIVcj+omL
	TKotuVdhRnS8Mv2c2l/yCqJzcbrlmS4weZehg8y9y9LfTRYYOoBPUeGc10iK5Yhx2BnhELn6yHv
	xspYS8bcSSuF7VTZycXlESFsK8rh0gZee
X-Received: by 2002:a67:ad1a:0:b0:44d:4196:f374 with SMTP id t26-20020a67ad1a000000b0044d4196f374mr21657387vsl.14.1693256562235;
        Mon, 28 Aug 2023 14:02:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1O+ulqQs16fLrviLhIDcWj2NFGLF73P8fTFl1IfopkK1Ei1hjIoNJD//dyDhnkd8Fjfj6aA==
X-Received: by 2002:a67:ad1a:0:b0:44d:4196:f374 with SMTP id t26-20020a67ad1a000000b0044d4196f374mr21657332vsl.14.1693256561816;
        Mon, 28 Aug 2023 14:02:41 -0700 (PDT)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id j10-20020a0cf50a000000b0064f732aa45csm2873129qvm.133.2023.08.28.14.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 14:02:41 -0700 (PDT)
Date: Mon, 28 Aug 2023 14:02:40 -0700
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Andy Gross <agross@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Bjorn Andersson <andersson@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, 
	Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>, 
	Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, linuxppc-dev@lists.ozlabs.org, 
	Matthias Brugger <matthias.bgg@gmail.com>, Matthew Rosato <mjrosato@linux.ibm.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
	Orson Zhai <orsonzhai@gmail.com>, Rob Clark <robdclark@gmail.com>, 
	Robin Murphy <robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Krishna Reddy <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>, 
	Will Deacon <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Lu Baolu <baolu.lu@linux.intel.com>, 
	Dmitry Osipenko <digetx@gmail.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Nicolin Chen <nicolinc@nvidia.com>, Niklas Schnelle <schnelle@linux.ibm.com>, 
	Steven Price <steven.price@arm.com>, Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH v7 17/24] iommu/ipmmu: Add an IOMMU_IDENTITIY_DOMAIN
Message-ID: <ftxla3xdnxqknqg4k6qxwh6nquhdpzfmzyuvkzg7gwjxf42p6w@7ek73gnk5mue>
References: <0-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
 <17-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <17-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_140244_977628_A3CA85FB 
X-CRM114-Status: GOOD (  11.30  )
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

On Wed, Aug 23, 2023 at 01:47:31PM -0300, Jason Gunthorpe wrote:
> This brings back the ops->detach_dev() code that commit
> 1b932ceddd19 ("iommu: Remove detach_dev callbacks") deleted and turns it
> into an IDENTITY domain.
> 
> Also reverts commit 584d334b1393 ("iommu/ipmmu-vmsa: Remove
> ipmmu_utlb_disable()")
> 
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/iommu/ipmmu-vmsa.c | 43 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
