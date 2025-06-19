Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62C57C7115C
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 15:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5atHashePMJHBhNJObDsMwbr5SVCmpxjtO8mLeY6q18=; b=GJFFh2Beum6dny
	1c1+67b3WG36kBre4AS/fgpT7hP1lQfn8aLLW15tR/TcamaRxtcVbu+5fdmDP3PAg6+dNWmI2I/NO
	uBKRgiQOdMsulUffv1xI6blWAD2QcO0+uwZavFXljxNjdPdwaRAZ9qenCdJnk8HRvn4Jb9IpQKsF+
	fYvkcb25dJSCnWTScfuB8FJBO1DjdhVqz23uXionYePub+Gto1vR5iUXvEtTEeLJkX8PuCFhtsmRE
	viQfkd3o/+/Hpdw2i4CDWTfuz8P1v2jXIaw72MuH3yScoX4VzaGLUk9btGLC9nZZxbPjr0upJPu8w
	4IO6AFgN7OJvihlfm2ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSHVE-0000000DXBJ-2j9z;
	Thu, 19 Jun 2025 15:48:36 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSEkj-0000000D6Dn-45Yx;
	Thu, 19 Jun 2025 12:52:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AC2E2A54422;
	Thu, 19 Jun 2025 12:52:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E7DAC4CEEA;
	Thu, 19 Jun 2025 12:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750337544;
	bh=p9Kau10uglpH75TFRcHGcWbbB8CHO/pVjhJTQAlCcVw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WiOvT/D5zxTuexZvAyuVgsA0F+9yZIE6u3Zgr6ALQOfrvBis0ZINnwvApXTdKxGYW
	 fZKk6eOiHg1g5eXjM2was9KnhC7QWn/uWu7W4B/iCBQiVnr4DQZOLs1hDynZjQD6TM
	 CAE1nSXC4JXZd6ib2Z9TgDbh0sNIgzCEkeHwKy057ffn4QHb//5hyRPQ5tD3WPWtUj
	 P9qQt6MHNnUfO2Fpe7dtRrfVwdGSu9Dx9YBPpgKz40yxJam5kT+gKbYcuWY6px1sCN
	 7FOYfCx0/UhmZ1SO5ekxBLrVkedIho7AZxPMM/AMTMGantP1JoRnYICkQhxPqBhhxR
	 41NflEXNBbfTg==
From: Manivannan Sadhasivam <mani@kernel.org>
To: lpieralisi@kernel.org, bhelgaas@google.com, kwilczynski@kernel.org, 
 shawn.lin@rock-chips.com, heiko@sntech.de, Hans Zhang <18255117159@163.com>
Cc: robh@kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250607154913.805027-1-18255117159@163.com>
References: <20250607154913.805027-1-18255117159@163.com>
Subject: Re: (subset) [PATCH 0/2] PCI: Consolidate PCIe message routing
 definitions and remove driver-specific duplicates
Message-Id: <175033754020.15449.12159303573503323127.b4-ty@kernel.org>
Date: Thu, 19 Jun 2025 18:22:20 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_055226_086864_0ACC8129 
X-CRM114-Status: UNSURE (   5.97  )
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


On Sat, 07 Jun 2025 23:49:11 +0800, Hans Zhang wrote:
> This series consolidates PCIe message routing definitions into the common
> PCI core header, eliminating redundant enums in the Cadence and Rockchip
> drivers. By using standardized macros (PCIE_MSG_TYPE_R_* and
> PCIE_MSG_CODE_*) from drivers/pci/pci.h, we ensure alignment with the PCIe
> r6.0 specification, reduce code duplication, and improve maintainability
> across the PCI subsystem.
> 
> [...]

Applied, thanks!

[1/2] PCI: cadence: Replace private message routing enums with PCI core definitions
      commit: f28413fe0899591492d8ca3cdf5fd35558d9c05d

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
