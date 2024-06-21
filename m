Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27B9BC27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 21:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=OdFKJ2E7wBHvOVMn6kU9LyoUjnFuHrfKX9RiiT5t84s=; b=z/XWikhRxO/ofz
	nSGJRdLZh6DYjKO4hqMHrm9AEpEF6vUBL1V/H1P9ZYfjaXMKWLrBHHH580GHfhhzfaIOop59BcThA
	Bd2bDeMaGSwIsM9LcQhy+bditpOf57xm+FNFlO0Ph/dlWqo6cLn2hoVvHve4yWbgul7FD9FODVI1P
	8LjIwgH0628nzxACxcXgUhs3IubptYUxddQcGql2ZPULwIyoq3nlLVZnzATX4iUjME0MqxKO0hrmo
	pD+iBWffB85NB8nR4Ck74yH7wUKocnQHIERORB6IoQWRHCvDGNwBb6e1X6MqoVwNMOvnjFueOLC43
	8mHZzGueeuoUMHbJ93aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKlhP-0000000AbQz-3yhH;
	Fri, 21 Jun 2024 21:21:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKlhL-0000000AbQM-12H3;
	Fri, 21 Jun 2024 21:21:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1729762F68;
	Fri, 21 Jun 2024 21:21:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BCD8C2BBFC;
	Fri, 21 Jun 2024 21:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719004889;
	bh=3Yl0WPJPIj05IofoVrZnhvJaFAT511jGI04C/99sCP0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=ujtG17W2bPpVngw8mYMS2vhlNoGV8bG4R+mqWWGDgLWqO3IsCag1r67m2HjqlK6D+
	 rAeRlLvw+Xf1kPKuIWInOhKw0k2Um2vDQ4I/s4W2eWTqCAdPFMXvc3G2uOmisdfl2/
	 CYQ7nfhiTWbkLdwWAYWI2wPEdX0L2ht0bwQ/31bpbwLeSK+gUn5qQfSJUdT2Lj/q7t
	 V1f7FvZBRanU1zZC2GHwa9nrv9OmZe2w6ZnOR2Q0weBNulhcRdJEeNqoOzzdUMnQgP
	 35avdcfL+q3TMS+YuICIx5zEQ1Nx1zBSuh/qxuyqxncOiUI5n/geDAzn1yeuZMFbJH
	 crKTzcrcp0NKg==
Date: Fri, 21 Jun 2024 16:21:25 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, kernel test robot <lkp@intel.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
Message-ID: <20240621212125.GA1406213@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240621064426.282048-1-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_142131_375241_1353725D 
X-CRM114-Status: GOOD (  12.22  )
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

On Fri, Jun 21, 2024 at 12:14:20PM +0530, Anand Moon wrote:
> Refactors the clock handling in the Rockchip PCIe driver,
> introducing a more robust and efficient method for enabling and
> disabling clocks using clk_bulk*() API. Using the clk_bulk APIs,
> the clock handling for the core clocks becomes much simpler.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202406200818.CQ7DXNSZ-lkp@intel.com/

Drop these two lines, as suggested in the test robot report:

  If you fix the issue in a separate patch/commit (i.e. not just a new
  version of the same patch/commit), kindly add following tags ...

This is a new version of the same patch, so it doesn't need those
tags.

The problem you're solving with this patch is that the clock handling
is too complicated.  The test robot didn't report *that* problem.

Since you'll repost for this, also s/Refactors/Refactor/ in the commit
log so this is in imperative mood:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?id=v6.9#n94
https://chris.beams.io/posts/git-commit/

>  drivers/pci/controller/pcie-rockchip.c | 64 ++++----------------------
>  drivers/pci/controller/pcie-rockchip.h | 15 ++++--
>  2 files changed, 21 insertions(+), 58 deletions(-)

Nice reduction in lines!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
