Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 158F8CD1290
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=9NtlUinMN/S55DLtGal0h+q2Jx/nVvhwk/gp9kmp330=; b=ZJ2gIEr+5W6NGn
	gTlll0gddXGE2oevhw1A8H414+mYQn8XcNOf6n68d3P63a+0v2oWw5B/hiYk0Arlt5DyJCXtCVrfI
	e6bE5aAyCtNGxJgXlDkq8182b7V+ziXK/xZL0mzYj5lmiGCrEFDWFfhP3P6bQl0GTRT84R992ztmu
	CjWJS6jAVhCw9OVSc55jIZ6wJmyiKgxaT59cGbPh3EnuTvl4+YT8ZSYBV/PPRB0Sg10pfJyNSye1x
	4JbltHppYYdp/Pezt0r0eGWi6ZMWqn1CuvyG9IbWnsIg4X4Z4KrYQmPyay/ZQ5QZ1U5tka1DMCq//
	9H0itazRiugelP8PyPLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBaw-00000000RNw-3Wsp;
	Fri, 29 Mar 2024 12:44:31 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBYI-00000000Qcg-470P
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 12:41:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2F12DCE2DCF;
	Fri, 29 Mar 2024 12:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0E4AC43394;
	Fri, 29 Mar 2024 12:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716104;
	bh=MGQMjrN3E2cMAmaQFYgStNUss/TX0AOz9m6LyxdKvac=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=LBrJM5JjwDG56aGa3eKVxxOz/QbYBaYP6BylgRJi3X1JlzXptSeS9sKqcpqzSSp6e
	 9Oljam7968p/0jUwr+I9B3KEw7kWlzf0Crv5MxzeclSUU/+VGgfzqt9JY+t8QlFlh6
	 QWwPLRi4ONjICITTlZuKhA2qUIeN+/O2OM6zjgM6tswWoA7Kpuj4e0SXG54pYvE0Hf
	 IOPh5DKl4MLubbYr95z/nd3/goz6ok6LFxSnQKYkLkSPz2yHtzGm6i95nBgYv9yZKd
	 PlGbXyTuRO/9OVQdcG6BnigfB0V1HDdgAAYCEq87aPkyhoNaKjSZxuWOgzg083TayI
	 DoUeyd78ldTLA==
Date: Fri, 29 Mar 2024 07:41:43 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 00/19] Improve PCI memory mapping API
Message-ID: <20240329124143.GA1638894@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_054147_569091_72238995 
X-CRM114-Status: UNSURE (   6.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Mar 29, 2024 at 06:09:26PM +0900, Damien Le Moal wrote:
> This series introduces the new functions pci_epc_map_align(),
> pci_epc_mem_map() and pci_epc_mem_unmap() to improve handling of the
> PCI address mapping alignment constraints of endpoint controllers in a
> controller independent manner.

>   PCI: rockchip-ep: use macro to define EP controller .align feature

s/use/Use/

>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSIX hiding

s/MSIX/MSI-X/ (also in commit log)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
