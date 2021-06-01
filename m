Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A5DDC47080
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 12:52:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D639F6138C
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 12:52:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D639F6138C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S5sjwB1XoPAm3innRw1klzRAGgCJtvsac/GRud3Kz2Q=; b=ijGSqy6y6STkBpklQStNWyHYgR
	M3RFkNMrSzE75elNih+9asGweTypKgP9bBTbLC5+uN4WuDxCo09P2DNAGgcngfVs51+ko7aps5p2j
	UwTVN8eP9+zFl+7xKcWUx5Xx+zKTtqGq8lfRni3EsWoD2m0rGjEyeylDJulgyRZfG9indwiIM6XY4
	7Vng+E41ACW3j++iRkHK1UfDwUMdcYpgvvtdZH98f7qjQDWL3DJ94WutflK3RwBD8dBZoNK5jvARK
	jvANHrhUY8U9FaM5Bz+I042ati+9WUJiI886VcgHjJmocRx+1IAZ46DfgzMFtGzVqgYW6nk9DxAjr
	aC3T1KVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo3t6-00GcKn-DC; Tue, 01 Jun 2021 12:52:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo3sn-00GcEO-O0; Tue, 01 Jun 2021 12:52:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61F926D;
 Tue,  1 Jun 2021 05:52:32 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A6CDB3F719;
 Tue,  1 Jun 2021 05:52:30 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] PCI: of: Improvements to handle 64-bit attribute
 for non-prefetchable ranges
To: Punit Agrawal <punitagrawal@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 wqu@suse.com, robin.murphy@arm.com, pgwipeout@gmail.com, ardb@kernel.org,
 briannorris@chromium.org, shawn.lin@rock-chips.com, helgaas@kernel.org,
 robh+dt@kernel.org
References: <20210531221057.3406958-1-punitagrawal@gmail.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <75da0524-7588-4ace-a135-69236f2d1d5e@arm.com>
Date: Tue, 1 Jun 2021 13:53:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210531221057.3406958-1-punitagrawal@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_055233_875906_BBBB387F 
X-CRM114-Status: GOOD (  18.73  )
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

Hi Punit,

On 5/31/21 11:10 PM, Punit Agrawal wrote:
> Hi,
>
> Here's an updated version of changes to improve handling of the 64-bit
> attribute on non-prefetchable host bridge ranges. Previous version can
> be found at [0].
>
> The series addresses Rob and Bjorn's comments on the previous version
> and updates the checks for 32-bit non-prefetchable window size to only
> apply to non 64-bit ranges.

Many thanks for the series. I've tested it on my rockpro64, and the NVME works as
expected:

Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>

Thanks,

Alex

>
> Thanks,
> Punit
>
> Changes:
> v2:
> * Check ranges PCI / bus addresses rather than CPU addresses
> * (new) Restrict 32-bit size warnings on ranges that don't have the 64-bit attribute set
> * Refactor the 32-bit size warning to the range parsing loop. This
>   change also prints the warnings right after the window mappings are
>   logged.
>
>
> [0] https://lore.kernel.org/linux-arm-kernel/20210527150541.3130505-1-punitagrawal@gmail.com/
>
> Punit Agrawal (4):
>   PCI: of: Override 64-bit flag for non-prefetchable memory below 4GB
>   PCI: of: Relax the condition for warning about non-prefetchable memory
>     aperture size
>   PCI: of: Refactor the check for non-prefetchable 32-bit window
>   arm64: dts: rockchip: Update PCI host bridge window to 32-bit address
>     memory
>
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi |  2 +-
>  drivers/pci/of.c                         | 17 ++++++++++++-----
>  2 files changed, 13 insertions(+), 6 deletions(-)
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
