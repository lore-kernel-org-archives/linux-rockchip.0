Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7DB2C001E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 00:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+R1vX1i9v9D2PltlRh8mZmqgHnRh7wQ2cFU6MgaLtSE=; b=aUsoz8K6zmTDYG
	EFIpoJ60ePEir9P/QjxgYwQbMXzvKbEdCVMOLfHKV+CNz+r0IJY6/rp3DoPKz9+BxEOzJbojbGWs1
	MBr9wRHqLIKU6Jj995C0yNXxKtqn2dNiBF9WRvm5paO3zaEFfmVm8BMmnTnX66OmbewVL9i9Drscc
	wOj2xd4QFAE+xBzhIYkEzQ8BR+bkilBzoIkwdOlrpRkAkRiOhsxpz9TwZPbseT2BcyFzHSG3FxA9N
	HDd+1E/m1IeAsZb2vosKHvgarJwbdffKRkX4IsRy6qQHggo+TERljya+ekZ0lxD+Wcmh62z5YTtHW
	gvReeaoO2U3FpEd2eADg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVi0s-000bMV-0V;
	Tue, 15 Aug 2023 00:34:22 +0000
Received: from mgamail.intel.com ([134.134.136.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVi0o-000bLa-1X;
	Tue, 15 Aug 2023 00:34:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1692059658; x=1723595658;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=VSM1w+2GQF5FWr9+uAkx0UUWSnoPqxj5esYUGnBEoIA=;
  b=lOFIMV5FVj8Sjgnrw5mYRoVZrKNVbgFlxwCaWgJF+kKCue6BfN7fAhqB
   uU73BSqaDJ/VmIF925TGcdtnaYRWfoRqCjkPHRPlWFGBs3FNvao9kvCZK
   kXVgYnNQREjUzI0e3bh/u5S5b6PP3K0NwwPFinqSiPXFf9T4ywvDe2do6
   UGM2MnUip7Wn3g3zcReARwnRtABJVNKhYBpO1mMUBDak4deibRladsitZ
   s2Zz1Ic8qoHP34iyY1FTADcBDRwn+ZcH0TlyXpf8s9pDCQ2YPdWL1Yuxf
   AterZllGgWV+dEsRbm2zatq9u0vOxb6WNu48RZMBuFksT2h9VyE6g0Drq
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="374938108"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; 
   d="scan'208";a="374938108"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2023 17:34:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="823660205"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; 
   d="scan'208";a="823660205"
Received: from wanglu5-mobl.ccr.corp.intel.com (HELO [10.254.215.149]) ([10.254.215.149])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2023 17:34:05 -0700
Message-ID: <8f3ce115-7489-640a-b1fb-a6fb6cfb1682@linux.intel.com>
Date: Tue, 15 Aug 2023 08:34:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Cc: baolu.lu@linux.intel.com, Andy Gross <agross@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Bjorn Andersson
 <andersson@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
 Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>,
 Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linuxppc-dev@lists.ozlabs.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Matthew Rosato <mjrosato@linux.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>,
 Thierry Reding <thierry.reding@gmail.com>, Krishna Reddy
 <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
 Will Deacon <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Dmitry Osipenko <digetx@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Nicolin Chen <nicolinc@nvidia.com>, Niklas Schnelle
 <schnelle@linux.ibm.com>, Steven Price <steven.price@arm.com>,
 Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH v6 07/25] iommu/mtk_iommu_v1: Implement an IDENTITY domain
To: Jason Gunthorpe <jgg@nvidia.com>
References: <7-v6-e8114faedade+425-iommu_all_defdom_jgg@nvidia.com>
 <7b6b8118-813a-f4cd-1067-d209d2b40025@linux.intel.com>
 <ZNo7eqMZEDBf7VKn@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <ZNo7eqMZEDBf7VKn@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_173418_576849_28DC4217 
X-CRM114-Status: GOOD (  11.16  )
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

On 2023/8/14 22:34, Jason Gunthorpe wrote:
>>> @@ -443,7 +459,7 @@ static int mtk_iommu_v1_create_mapping(struct device *dev, struct of_phandle_arg
>>>    static int mtk_iommu_v1_def_domain_type(struct device *dev)
>>>    {
>>> -	return IOMMU_DOMAIN_UNMANAGED;
>>> +	return IOMMU_DOMAIN_IDENTITY;
>> def_domain_type can't be used for this purpose. But this seems to be a
>> temporary code, as it will be removed in patch 09/25.
> It looked OK when I checked it, mkt_v1 is really confusing what it
> tries to do, but it should call probe_finalize and basically do the
> same hacky thing as what UNMANAGED was trying to accomplish.
> 
> Did you see something else?

No.

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
