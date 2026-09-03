Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47304C61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 08:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfQtbf7rwnODXUXdDOgxAVSLY2mF35F7wS1vptYCqok=; b=ViihLg46HcGZKs
	FiB1Ef5e47RNG8afL6eser6ROJnnL9vt8maWzPmelP625y/XWSzSZJHfHZUPovA4W6TRv4l5D7kAd
	TaL7OPaO6jbKR03d+mquRkjtNBmT/pKO/4b5qHeZvsgttcUU3PaNPxwWcmCLqIq16TWIu9m2jmC21
	SGow08gPeROwrSW51LlZwdnZOdDjPsvqXGNMAR4b1iB5F37/Lf444mky5X+Qr7+nzyk4gBJHylN8V
	ne9wfpXhkfyOhXAa8YbOMfkRFGfRp2qeudpYHHBLV3CLcgOPgHtrXyRFM0Ipxx5fvAl6AKlGFUbcv
	0+tfDiaRzgO2ZndvFoIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22g5-0000000GlxV-36AQ;
	Thu, 03 Sep 2026 08:20:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22g4-0000000Glx9-2gBm
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 08:20:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C6335602C4;
	Thu,  3 Sep 2026 08:20:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0897F1F000E9;
	Thu,  3 Sep 2026 08:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788423607;
	bh=R/ILnFYwY5kyNXCGppBs9AQYzpP7GN2ZEnkx5tVKRjs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jojqdBLB1KO91UXlx6S2Z+ivdMkRUjlrjCm8sEkobHf08zVo8rx5XQfAPJ1FkZ7rP
	 RUrnKsxdJ0XOJP9TfFpIMXB7yiXRwAEOzB+olh23GehiWTyf5wQjv0uuMudSdDuL+8
	 MaBulRWW7HAyfa+aLEC06b2eNcYjJGrAeJnWN93MpdpIERcEMz83zj2arcyogLviI8
	 ZVkC4z9VTQT3gL8igsLw+vXjeFeyt79wbMJfNB+HUkvZRZ/HuHACixn7pdSSUHDOVo
	 OkimA+qVj+6vbmSX/RHfDTmvs5mZJlWVDStqkGM2UKFddUpu7hvxfxePSCyxfQGY+J
	 xA9QL3F1vn3lA==
Date: Thu, 3 Sep 2026 10:20:03 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 0/2] Two small INTx fixes for Rockchip's dwc based PCIe
 controller driver
Message-ID: <apktsxxgZ3yFclo0@ryzen>
References: <1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com>
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

Hello Shawn,

On Thu, Sep 03, 2026 at 10:44:35AM +0800, Shawn Lin wrote:
> 
> This small series fixes two INTx related issues in the Rockchip
> DesignWare PCIe controller driver.
> 
> Note that patch 2 depends on b376b3ff9cb0 which is not yet in Linus'
> tree, so this series is based on linux-next.

$ git tag --contains b376b3ff9cb0
v7.3-rc1

FWIW, the commit you are referencing is in Linus' tree already.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
