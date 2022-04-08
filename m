Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E26C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 13:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lR+7z51rFHwGBGRnMHBXhWfAYsnfee0f0N9cuj3Eqng=; b=Dn4BzgcP0MGvrq
	lFyTXTg8ASjs95l/YNQJ+oBqSVi4ijkSKXIzbXDH861nWCrMiWhJEeJ8ykNiu3NGqF4d1bO3l9zi+
	VBazFn9iQIWH6G3NiXQ5PmbQfOJpcZSVNT4AQ86JalwGHTf+REIE5b9O4Trcaw26hpNB/8BkE3b3Y
	HTjks/RlREnONptamGMf5SMCdbRG9wqvUdxyosZp9OpthLw7w1lrMEgXb4X967CD4ftXKvgkCUlFn
	fHroJvGH164jqqjygxJVAsNRXIWJcEDzSy4sd25Wbsxva4dC3QD8wFF3LfMlosFxknxtZRlhJ0ZQp
	YlTCK/5NKBTB+Knc+uYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncouJ-00HSbb-U0; Fri, 08 Apr 2022 13:44:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncou3-00HSN4-Lg
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 13:43:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC2CE113E;
 Fri,  8 Apr 2022 06:43:50 -0700 (PDT)
Received: from e123427-lin.arm.com (unknown [10.57.11.200])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 52F193F5A1;
 Fri,  8 Apr 2022 06:43:48 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 kernel-janitors@vger.kernel.org, linux-pci@vger.kernel.org,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] PCI: rockchip: fix find_first_zero_bit() limit
Date: Fri,  8 Apr 2022 14:43:43 +0100
Message-Id: <164942539812.30278.5716796264039659479.b4-ty@arm.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20220315065944.GB13572@kili>
References: <20220315065944.GB13572@kili>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_064355_808193_3D32213B 
X-CRM114-Status: UNSURE (   4.40  )
X-CRM114-Notice: Please train this message.
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

On Tue, 15 Mar 2022 09:59:44 +0300, Dan Carpenter wrote:
> The ep->ob_region_map bitmap is a long and it has BITS_PER_LONG bits.
> 
> 

Applied to pci/rockchip, thanks!

[1/1] PCI: rockchip: fix find_first_zero_bit() limit
      https://git.kernel.org/lpieralisi/pci/c/096950e230

Thanks,
Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
