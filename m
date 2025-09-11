Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE9BCA1016
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 08:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXcwkWI3N9PnO4TGVzRNQCnxr3yWxlIMvZQmL9S6ymg=; b=W3Ax8xa0CXwuvr
	2H67w913qeDPKCOj6ozvEANLlgYUZYtJVekWxNzv5jybXYgiznNYF8NiaQtbCCgkWeCTewAG2U9a7
	+YfXiUTP9q3E5jmjDkPIwswD5RBGMkrUU32I+aA8wpl1Fikt1eFc0LrL1Bk4NCQ+kG1ojxMQTbJLY
	Xq9xvEp4dG5fZJ6s5AbcziNG/Ik2ocoGFXGgTma2Y356vuwQcSlR2lkfbOsdPX7hJHZCuGCAlSJUM
	M2kdgkx2YsjcuY27TQiDtEPCytiVlClyAXLY4xWoBM+9iv3SG7PF7bo+Zclc1Fw1ZLjBvW8aholTz
	7bwRP84nVttMjP2FHL3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwcNS-00000001jY0-1DfY;
	Thu, 11 Sep 2025 08:09:58 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwcNP-00000001jXZ-2VrA;
	Thu, 11 Sep 2025 08:09:56 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id D2F3E21AC3;
	Thu, 11 Sep 2025 10:09:53 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YH6VOlBShjIH; Thu, 11 Sep 2025 10:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1757578193; bh=x352PQuhLLNf6YiSW+jdH4w7Z+cRMhcTOsK7TWAibzU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fuDdhKdrSXxaYAPHhpfiXcmtnT926GU+qcEojSTORsEPqoel76uoRXDdpxMUdccPM
	 3UmdTwgzFvn60ZXhAX5BywthCQXxvmGImelUv6ZaGfp4nuXYtsNUqNo8xTm5IOaW/G
	 EcbiT9DdgSXEVhIS9WGpf98wG64U67QT8B7VVxMN8DE6pWrDJ9/5Xy7s1dW47IlxVB
	 L3LFYl+YqsPlv92PV+veJTj17TIsNZNfjgnGlwxZJFlvduseMiq29W9PL005kAdSFG
	 iubM+kckz5QPAUknYQYpa4MG861jZsjXrJw9pRC441mIjRsyqXy+o0QVVZCfuTq9ci
	 JuUyGgUggRtSw==
Date: Thu, 11 Sep 2025 08:09:33 +0000
From: Yao Zi <ziyao@disroot.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: bhelgaas@google.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
	heiko@sntech.de, jonas@kwiboo.se, krzk+dt@kernel.org,
	kwilczynski@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org, lpieralisi@kernel.org,
	mani@kernel.org, robh@kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add PCIe Gen2x1 controller for
 RK3528
Message-ID: <aMKDvcbJ2T-QNYxw@pie>
References: <20250906135246.19398-3-ziyao@disroot.org>
 <20250909125029.2553286-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250909125029.2553286-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_010955_771380_160BC6EF 
X-CRM114-Status: GOOD (  11.24  )
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

On Tue, Sep 09, 2025 at 08:50:29PM +0800, Chukun Pan wrote:
> Hi,
> 
> > +			reg = <0x1 0x40000000 0x0 0x400000>,
> > +			      <0x0 0xfe4f0000 0x0 0x10000>,
> > +			      <0x0 0xfc000000 0x0 0x100000>;
> 
> Aligning the address for reg and ranges will look better:
> 
> 		reg = <0x1 0x40000000 0x0 0x400000>,
> 		      <0x0 0xfe4f0000 0x0 0x010000>,
> 		      <0x0 0xfc000000 0x0 0x100000>;

Thanks, this makes sense.

> BTW do we possibly need this?
> https://github.com/rockchip-linux/kernel/commit/e9397245c4b1bd62ef929d221e20225d58467dc7

I'm still unsure its purpose, but am willing to adapt this change. See
my reply to Jonas' comment.

> > +			clocks = <&cru ACLK_PCIE>, <&cru HCLK_PCIE_SLV>,
> > +				 <&cru HCLK_PCIE_DBI>, <&cru PCLK_PCIE>,
> > +				 <&cru CLK_PCIE_AUX>, <&cru PCLK_PCIE_PHY>;
> 
> <&cru PCLK_PCIE_PHY> has already been defined in the combphy node,
> is it repeated here?

Yes, it should be managed by PHY instead of the controller. I'll fix it
in v2.

> Thanks,
> Chukun

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
