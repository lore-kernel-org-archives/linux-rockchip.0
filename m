Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06DC5C4829E
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 09:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvnF4dHc/AZGzyDdIwHWncyMWaVeGrDIXgvkaAjmJR8=; b=xgpnSiQYHnWQNH
	f864UawN8PhrjZgmvOMXJaQxQ4yA1EKKV2aSVupTBrQEiuQ/2b6yhTVA/ESRujnZrFOzL4kq5+m4e
	yL1C615ub7Z+Fmc74gelfvTZZzkFmYvppSlArbJNOcuUmZHo9aF/7JveXYtaArG9mCcrEOp6BORIz
	zxccYrEgZBjEp46a4D2KpxIFN3BnQ/9Q5SUFhE61D90tXPdgUPYkVh6C3W64UzKw9GqQLwNe355fS
	GkqnjyMSH1rvxc3tNtPMebA/qFC207iYyX5CXcRY9xuKwRap9QPn0A8S0qlQ0Vm1rHlp32J59cfpt
	yF8TVYdHyRZaZernjMIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbdW7-00000007POX-3GxD;
	Sun, 18 Feb 2024 09:31:23 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbdW4-00000007PNn-2kqX;
	Sun, 18 Feb 2024 09:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1708248681; x=1739784681;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=H/OSay05+csAHwBP0A3xim8Jfufbq4gn0ZbQ5TgLGOo=;
  b=ZwLqtAdQf3L1uAgmUZsC0so3KlsOrxEErmePCRBwIcT6VfgU71u43txs
   vfA7+DPKywGzFT8+aqZJHxXy20+D2sNmiMyr3wA5fSb8lCsT4ImRaXbdh
   Kue3+PDZYXjkvzGITZ0sFAcmTpw31CYR6ThrBNqLl+R8KUHknbYB+twTX
   v9dZ7DjvFRzcj+5QR8/JFdbIjvIdjrmVTCnmXjaSYLL0W85RG8llFo+tP
   v9hKb4PqRRJHompML8im2vQvouPsKMJ186b69tl0N9ZIK7hiFr7kJu6YT
   S1BcXMdbvuWw5T1J2enarz0FkdhFU3LB4gFQkg1/mw7kVVPLSQJ+LnAtl
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10987"; a="2200309"
X-IronPort-AV: E=Sophos;i="6.06,168,1705392000"; 
   d="scan'208";a="2200309"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2024 01:31:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10987"; a="912682691"
X-IronPort-AV: E=Sophos;i="6.06,168,1705392000"; 
   d="scan'208";a="912682691"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.254.209.212]) ([10.254.209.212])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2024 01:31:09 -0800
Message-ID: <7b18a339-d0e3-4347-a20b-8fca9bbc7eb4@linux.intel.com>
Date: Sun, 18 Feb 2024 17:31:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: baolu.lu@linux.intel.com
Subject: Re: [PATCH 1/4] iommu: constify pointer to bus_type
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Rob Clark <robdclark@gmail.com>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Yong Wu <yong.wu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Thierry Reding <thierry.reding@gmail.com>, Krishna Reddy
 <vdumpa@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, virtualization@lists.linux.dev
References: <20240216144027.185959-1-krzysztof.kozlowski@linaro.org>
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <20240216144027.185959-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_013120_820685_2C3FB937 
X-CRM114-Status: UNSURE (   8.95  )
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

On 2024/2/16 22:40, Krzysztof Kozlowski wrote:
> Make pointer to bus_type a pointer to const for code safety.
> 
> Signed-off-by: Krzysztof Kozlowski<krzysztof.kozlowski@linaro.org>
> ---
>   drivers/iommu/iommu-priv.h | 5 +++--
>   drivers/iommu/iommu.c      | 5 +++--
>   2 files changed, 6 insertions(+), 4 deletions(-)

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
