Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75043C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 14:01:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 275AE60E97
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 14:01:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 275AE60E97
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIrR037CxRWMRO4CsLzvbvQOEdxo+YLVP/nZ1A2LzeM=; b=k4EWcuaFLcNyNk
	td+aODE92Eeuok0wsFZH6coFohyfQy78fwR7il64111gWDThf6onX550jr5bW7orZVVe/wFeT3UFs
	+UsfNMTVtCrErNcsdgsK0IpKVtXudk3opDqYB3M3AD8Hytc99lUDvZ9eLvGYcWe8+ShqvVzB0WAlU
	qRaITL0MMSuFjsFoHLj2Iq2ZjMZuFG3Mu+DlAfTABvXmqBWDPlALtFanjSrn47ICr97JRFkgIaGNr
	93HwMfxsFodQ90WVRfrKCSslzNmvez2jumq9nYwC3xKbHpJMFlUMpaPO1GIGbdApZsqixcLfJNiX2
	BnAaBvaIjJWgwnCUXMJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maeoR-00H398-8L; Wed, 13 Oct 2021 14:00:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maeoN-00H38A-Kp
 for linux-rockchip@lists.infradead.org; Wed, 13 Oct 2021 14:00:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C866D6E;
 Wed, 13 Oct 2021 07:00:49 -0700 (PDT)
Received: from e123427-lin.arm.com (unknown [10.57.53.207])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ABE123F694;
 Wed, 13 Oct 2021 07:00:47 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Simon Xue <xxm@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kever Yang <kever.yang@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v9] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Wed, 13 Oct 2021 15:00:42 +0100
Message-Id: <163413363029.8588.8606291946135635809.b4-ty@arm.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210818093406.157788-1-xxm@rock-chips.com>
References: <20210818093406.157788-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_070051_790345_DBEB2418 
X-CRM114-Status: UNSURE (   5.11  )
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

On Wed, 18 Aug 2021 17:34:06 +0800, Simon Xue wrote:
> Document DT bindings for PCIe controller found on Rockchip SoC.
> 
> 

Applied to pci/dt, thanks!

[1/1] dt-bindings: rockchip: Add DesignWare based PCIe controller
      https://git.kernel.org/lpieralisi/pci/c/af7cda832f

Thanks,
Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
