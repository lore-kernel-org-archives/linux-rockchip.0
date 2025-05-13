Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C9B8C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 08:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SfNPVHa3ybh3w3gtUKQT9vg6fTR326JlJvQ4nkMpkR8=; b=37S822o/HFvR9z
	Yfcsf+tXUB3RD29OBFqBU4zT5jeNOxmNxgTXyQotIreHWrtI1OmmIuIAiaH24bpnr45JDtUF5fVn2
	72hztJ1yd3yFxWtbBGBoIy1n0RYJijLveb51Hm9Opfb57K+V+tmo9M9JAzXeRPq+4ObjnaPyTE+9+
	a0zOou74C41tSqhnf2MinXr3Q8eM/lMmJtwf90o47XFkDE2W5g9fsdFBIYs6pMt71h8B2IOSy7+Et
	+ySJxb5EgnjKui/FmwmFLq4RQb8d8LWOVhZZ6XHkmnC2Z3dFRcAB/qLbkajG7FNdWADhJeEL1R7aj
	gHQ3tb85O2cmTJ+drZdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEkeq-0000000Bj0b-10zk;
	Tue, 13 May 2025 08:06:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEkcr-0000000Bik5-1Rte;
	Tue, 13 May 2025 08:04:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 60EC560007;
	Tue, 13 May 2025 08:04:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 131B3C4CEE4;
	Tue, 13 May 2025 08:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747123472;
	bh=7I1gwSaGTujG4gf8FypyquviBk2E4QA6iyS8EFE6L6o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pYAwYSA98xROfFniPKW3Fnq8c74xOH7tQB+7DL1Y3zkoNSUZa186JCYkIIk7ybc78
	 7AbBU7MdRy2DIyGDFmaL67xunDbaKOH+e49iBT1rl38dlT7eXLtzI7CwfKdBPKzKMz
	 NYF9WFAsOL28v3+dWBFFLxX7AH9Bc3wffNb3cnv/7RBbOkniVAw03ynnpN42vMcEy4
	 CqQQBhbnGtNA8ZcO3oukS9kXVQWDWe0gJRRikY2FbxSbgUiLCHbKiGxJOAtoGM+GJM
	 tGLoKBIu5QCyByqotji/y2HAziWoVDAk2DJ7knsHN3BZxI/ELVUPPeR4oA351WZ0pU
	 ZlYmsSP8YGZvQ==
Date: Tue, 13 May 2025 10:04:25 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, manivannan.sadhasivam@linaro.org,
	yue.wang@amlogic.com, pali@kernel.org, neil.armstrong@linaro.org,
	robh@kernel.org, jingoohan1@gmail.com, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/2] PCI: Configure root port MPS during host probing
Message-ID: <aCL9CStLrGEY2MEH@ryzen>
References: <20250510155607.390687-1-18255117159@163.com>
 <20250510155607.390687-2-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250510155607.390687-2-18255117159@163.com>
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

On Sat, May 10, 2025 at 11:56:06PM +0800, Hans Zhang wrote:
> Current PCIe initialization logic may leave root ports operating with
> non-optimal Maximum Payload Size (MPS) settings. While downstream device
> configuration is handled during bus enumeration, root port MPS values
> inherited from firmware or hardware defaults might not utilize the full
> capabilities supported by the controller hardware. This can result is
> uboptimal data transfer efficiency across the PCIe hierarchy.
> 
> During host controller probing phase, when PCIe bus tuning is enabled,
> the implementation now configures root port MPS settings to their
> hardware-supported maximum values. By iterating through bridge devices
> under the root bus and identifying PCIe root ports, each port's MPS is
> set to 128 << pcie_mpss to match the device's maximum supported payload
> size. The Max Read Request Size (MRRS) is subsequently adjusted through
> existing companion logic to maintain compatibility with PCIe
> specifications.
> 
> Explicit initialization at host probing stage ensures consistent PCIe
> topology configuration before downstream devices perform their own MPS
> negotiations. This proactive approach addresses platform-specific
> requirements where controller drivers depend on properly initialized
> root port settings, while maintaining backward compatibility through
> PCIE_BUS_TUNE_OFF conditional checks. Hardware capabilities are fully
> utilized without altering existing device negotiation behaviors.
> 
> Suggested-by: Niklas Cassel <cassel@kernel.org>
> Signed-off-by: Hans Zhang <18255117159@163.com>
> ---

Looks good to me, but since this I'm the one who suggested this specific
implementation, it would be good if someone else could review it as well.

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
