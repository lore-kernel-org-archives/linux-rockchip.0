Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84B45C369AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 15:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AlOtiQOOcygI3KCg+b5zoBpkI1vC2JAl61GKdWNe7KM=; b=YvU+zCyY0uv7Nj
	bfZPG5NZwaL1iH0K9w6/dW8zUXAgu3Y4VYhwEO3y4ihIiNNbfLzGX13mUfZLuDzmwGuPKtg8nD7CT
	6w0GrZSOBrnm0IaJ6zjcvz0CRuudMC7kFK7/hhzw69AJwIX4eROml4XcdbARMPB8LAbc6p7w8No6w
	nVptxME6OuPGFKveGyKNM8MpnsTrvTutEIwPy8uPIu6gDxAAmcHCVmwCpyL/3VgMuQwj/+/gl6Cml
	/T+irwCDcUeutCapmSI63PvoKaRKDmmDKlChjKs5U105JFz+IKPPseb5f9Fo7cIQXnObiPyrMhR2l
	pIgUGvmRvDvcZrlOy3rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5o71-0000000GokM-413C;
	Fri, 18 Apr 2025 15:58:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5n7b-0000000GWkr-2TeE;
	Fri, 18 Apr 2025 14:55:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5F7845C2C87;
	Fri, 18 Apr 2025 14:52:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A8ABC4CEE2;
	Fri, 18 Apr 2025 14:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744988114;
	bh=Frm0OyEXiFNugmsEtT7iUopntSsaA9tw3r4eeSFnUbY=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:From;
	b=s6KPu1LU/g8obT6chIIPEOIfs15cvyNkdg3BIqXZ6EqPBWW5RtaYX7i04EEkia9Pb
	 StL/4Fzc1ioA5zc9Rh7I0rqEuEezen59ERoS399lhYnv7labcWMHHrHtmEMQl5ByjN
	 zzVDfTQNylcxNYx7ZlWv7xGxfXYF9j6hvuNzUafJwWddt463KxNhXvEjhlZN5CSQh6
	 Is8wYv36J/use3ISNJSXzchH8EMe5uFcHACvo01+bW8cE4RHkytxMdfrpMHGx/tS+n
	 qJX2Z0LID1RsDXKPHUunCf9uDOphDOFwnI66xC5hGnR4DOn5ztA9h7SB5h4RwSrmKY
	 6twznn41rphgQ==
Date: Fri, 18 Apr 2025 16:55:13 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>, Bjorn Helgaas <helgaas@kernel.org>
CC: Shawn Lin <shawn.lin@rock-chips.com>, lpieralisi@kernel.org, kw@linux.com,
 bhelgaas@google.com, heiko@sntech.de, manivannan.sadhasivam@linaro.org,
 robh@kernel.org, jingoohan1@gmail.com, thomas.richard@bootlin.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
User-Agent: K-9 Mail for Android
In-Reply-To: <22720eef-f5a3-4e72-9c41-35335ec20f80@163.com>
References: <20250417165219.GA115235@bhelgaas> <22720eef-f5a3-4e72-9c41-35335ec20f80@163.com>
Message-ID: <225CC628-432C-4E88-AF2B-17C948B3790B@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_075515_670278_309327A6 
X-CRM114-Status: GOOD (  12.87  )
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



On 18 April 2025 14:33:08 CEST, Hans Zhang <18255117159@163.com> wrote:
>
>Dear Bjorn,
>
>Thanks your for reply. Niklas and I attempted to modify the relevant logic in drivers/pci/probe.c and found that there was a lot of code judging the global variable pcie_bus_config. At present, there is no good method. I will keep trying.
>
>I wonder if you have any good suggestions? It seems that the code logic regarding pcie_bus_config is a little complicated and cannot be modified for the time being?


Hans,

If:

diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 364fa2a514f8..2e1c92fdd577 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -2983,6 +2983,13 @@ void pcie_bus_configure_settings(struct pci_bus *bus)
         if (!pci_is_pcie(bus->self))
                 return;
  +       /*
+        * Start off with DevCtl.MPS == DevCap.MPS, unless PCIE_BUS_TUNE_OFF.
+        * This might get overriden by a MPS strategy below.
+        */
+       if (pcie_bus_config != PCIE_BUS_TUNE_OFF)
+               smpss = pcie_get_mps(bus->self);
+
         /*
          * FIXME - Peer to peer DMA is possible, though the endpoint would need
          * to be aware of the MPS of the destination.  To work around this,



does not work, can't you modify the code slightly so that it works?

I haven't tried myself, but considering that it works when walking the bus, it seems that it should be possible to get something working.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
