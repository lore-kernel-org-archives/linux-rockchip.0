Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FC09C61CE8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 19:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPlCxA8ZtZ1YbibsgLQLcNeQkfWsBhlKM5RjbRlTkbw=; b=PJ9JBB7vedqQmH
	z7k4GxARuk+KgwG5+NnewqG5QhqRpz+qkYrkzzwQnZWbZLDZvqwlOPw/udlxJa0r8QuMMj663uwRW
	Ujer/n/HDDpG/7gPDUjYacs4tI4y1E6SxkAQN24IVetE9dZDDvrHglSh9oiOPubhZ1mYxpF7p/4YJ
	HSkkWuQoAAx8ojthNJFRHmEcDH5THMt1eRje/CIP79aPKpifgDrOCq9+rkQdQ7yJW+Td4oQr75q5Q
	jcgJIK6kh7v6c//UGfiQa6yLW7TT2HleZXbe7OLPWChYgEMo9ndP1pfnCfiAYDuPHYe0ScyM+1gb7
	qyle0frXBEplGGlGTvdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnnk-0000000EEsT-1AM1;
	Thu, 12 Jun 2025 19:41:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhoy-0000000DMDC-3aGU;
	Thu, 12 Jun 2025 13:18:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C41EA44401;
	Thu, 12 Jun 2025 13:18:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64212C4CEEA;
	Thu, 12 Jun 2025 13:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749734299;
	bh=6SZIFnmbLf8JV1vJNHSiq1P6ecTniyk9z2YoaDHDHKU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=I/9gzw+Sj9bAnBOePZPc+6llemB2Ta47w3C5ZmsoFID2TgBIBwPUCtuC7idEfc3Hm
	 cUqipnOxEDiiIWQngNoN8vo3u0n0OUGO9yA5xGq05aVqU66njci5WVvU8XTyFaHBbK
	 Uw0EE1D+epC9vwieMVa+ezGM7ws02SrNieTt7eRfNStM2sB1tihQAyTjY5p2cDVTDc
	 9rYGohNGO1LKDlrcDqvQZ4oN3PNoqfnCv1WIM9DlrvW/9lLsKWOOA8KMIXFlLxVIsS
	 4AJF6sw8nfalyCk8nmYDE2O9AjtRaE0suu/cVTQjxXS/LIu2HgHsVYGRWorRcD/b/O
	 cpcuuOBf8lGPA==
From: Manivannan Sadhasivam <mani@kernel.org>
To: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	bhelgaas@google.com,
	heiko@sntech.de,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Hans Zhang <18255117159@163.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	robh@kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/3] Fix interrupt log message
Date: Thu, 12 Jun 2025 18:48:09 +0530
Message-ID: <174973424623.20170.44933782990222558.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250607160201.807043-1-18255117159@163.com>
References: <20250607160201.807043-1-18255117159@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_061820_907653_543DCC21 
X-CRM114-Status: UNSURE (   8.44  )
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


On Sun, 08 Jun 2025 00:01:58 +0800, Hans Zhang wrote:
> Detailed descriptions of interrupts can be seen from RK3399 TRM doc.
> I found two errors and cleaned up the driver by the way.
> 
> This patch series improves the logging accuracy and code cleanliness of
> the Rockchip PCIe host controller driver:
> 
> Log Message Clarifications
> 
> [...]

Applied, thanks!

[1/3] PCI: rockchip-host: Fix "Unexpected Completion" log message
      commit: fcc5f586c4edbcc10de23fb9b8c0972a84e945cd
[2/3] PCI: rockchip-host: Correct non-fatal error log message
      commit: 917600e630218ce61aa0551079592cb541391668
[3/3] PCI: rockchip-host: Remove unused header includes
      commit: 1fdb13f92388dfc936624b0a0d6abae362b0ace3

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
