Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90965D41D67
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 16:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=XfnlQIflbH/Ff9siArp3WfS89mrM27gQdeXSoU1999w=; b=OaJ6KkZ8VwHfMl
	1rBI0Jn9cmtzL+Mj9eusBVsbuu0HWPa3gzw9zPTnr6Y8BVYq8q/8vcPjhaHBedvyJ715M0ZvLYQ8f
	8r8uZVWTmTMvsNn8Csn/Vw6vbhuUHx5Cjd2kms6biBCrtmh/J9HM4w7EOMx59/yxaybElXB+9zX7W
	5kBC3ZgbArdqnIY7YopH3yynY+8xLGQXS4NXz6MbEnoF64Tv14AAcuncrz/qPgRWjpkylnIt+Yn2/
	vFuSTRi8yn5On61w0ZHmkmNXAFWqI8pNIRvvN/V0lGb9VDIxrKG9W6bgq+IAy4tLI7YC/SWzjGtPQ
	d77LMIP2uz/vE49P8h9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTjYK-0000000GuzT-2vYD;
	Thu, 11 Dec 2025 16:30:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTjYB-0000000GulA-3ZLA
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 16:29:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 21BC560137;
	Thu, 11 Dec 2025 16:29:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F088C4CEF7;
	Thu, 11 Dec 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765470593;
	bh=pePWAhUbegTiF58KkopomVFzJg4Dey8vXHM+/TnrM/A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=KbSW91AfhvgfAAy3su1kYwsH6vNlhe/0ACfaXr4F7jsCuRtc7TL3U2F842AHK3ixO
	 nCc2lb+pb3vyLY9EAEilB4KQw39hIEezdk771qhVIZ29xsC40NysKLdByzOFNAzpTM
	 jMGMEOjrf6bxefaxdDKpREppCHvK9tyuEcYGqFrb3VsY4Mmk8PlPp80G3HgXLlCa28
	 qMhv2dP2yLQVa+XhYtB5xnCp5jUNMlcq9TJkeN6tw5HsElM1JhP5EfpdRG0Bqqz89R
	 VXMGCorV8esN6wSz2QbrBl78j3/jGKcRTIitHLHgwGIn1x5FY2JdmHPo/LVk4PsEqa
	 wP7d77zS932Rw==
Date: Thu, 11 Dec 2025 10:29:52 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/2] PCI: dwc: Add L1ss context to ltssm_status of debugfs
Message-ID: <20251211162952.GA3595469@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1764035632-180821-1-git-send-email-shawn.lin@rock-chips.com>
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

On Tue, Nov 25, 2025 at 09:53:51AM +0800, Shawn Lin wrote:
> dwc core couldn't distinguish ltssm status among L1.0, L1.1 and L1.2.
> But the variant driver may implement additional register to tell them
> apart. So this patch adds two pseudo definitions for variant drivers to
> transltae their internal L1 substates for debugfs to show.

s/L1ss/L1 Substates/ in subject
s/ltssm/LTSSM/
s/transltae/translate/

Use imperative mood:
  https://chris.beams.io/posts/git-commit/
  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/maintainer-tip.rst?id=v6.14#n134

In this case, imperative mood means:

  s/So this patch adds/Add/

> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -380,6 +380,10 @@ enum dw_pcie_ltssm {
>  	DW_PCIE_LTSSM_RCVRY_EQ2 = 0x22,
>  	DW_PCIE_LTSSM_RCVRY_EQ3 = 0x23,
>  
> +	/* Variant drivers provide pseudo L1 substates from get_ltssm()*/

Add space before "*/".

> +	DW_PCIE_LTSSM_L1_1 = 0x141,
> +	DW_PCIE_LTSSM_L1_2 = 0x142,
> +
>  	DW_PCIE_LTSSM_UNKNOWN = 0xFFFFFFFF,
>  };
>  
> -- 
> 2.43.0
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
