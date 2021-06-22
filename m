Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7460BC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:32:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 459EC613AE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:32:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 459EC613AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxQ6cpEtYl+P3OU5Q0m1Nce1KWQ/fjzezU6/VVPYTGI=; b=BK2iwP5FWAy1jD
	4PEaGyp4b38aoTeo8qig7AISMv17SR2GDwE5iklw6+8CKuv1xZTQGvWGnj9/z4xvOp1OD+dxT+lEq
	ir3Lvy0xBgSpOFA0MdCxcsZATc44+aTkS8Z8FQwFmdnhu9rpOexqRcFaTW4oyH4DzbV+26SwjyPCp
	xDRDQaeVee+X32u+IG9sKKfjKlVKMDMLYslEJtgMkbuMyLjZTRHCYzzhCaKPpZhtGECST1njWkk6u
	zGcTyJS49mh/DAxJjUFM9uaSC1IG82CHdv2knv64PgQ6Ac9l7JwDp1sUk8F4H/GpQt5ZlAxwVRAHM
	OM5a+ZiSvS3uZYtuc02w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvdhi-006ftM-3b; Tue, 22 Jun 2021 10:32:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvdhP-006fo2-3s; Tue, 22 Jun 2021 10:32:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31FF111D4;
 Tue, 22 Jun 2021 03:32:05 -0700 (PDT)
Received: from e123427-lin.arm.com (unknown [10.57.45.237])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8EF203F694;
 Tue, 22 Jun 2021 03:32:03 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Peter Robinson <pbrobinson@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
Date: Tue, 22 Jun 2021 11:31:58 +0100
Message-Id: <162435790233.26282.6051078947920450608.b4-ty@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20210608080409.1729276-1-javierm@redhat.com>
References: <20210608080409.1729276-1-javierm@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_033207_229102_CE733200 
X-CRM114-Status: UNSURE (   9.87  )
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

On Tue, 8 Jun 2021 10:04:09 +0200, Javier Martinez Canillas wrote:
> IRQ handlers that are registered for shared interrupts can be called at
> any time after have been registered using the request_irq() function.
> 
> It's up to drivers to ensure that's always safe for these to be called.
> 
> Both the "pcie-sys" and "pcie-client" interrupts are shared, but since
> their handlers are registered very early in the probe function, an error
> later can lead to these handlers being executed before all the required
> resources have been properly setup.
> 
> [...]

Applied to pci/rockchip, thanks!

[1/1] PCI: rockchip: Avoid accessing PCIe registers with clocks gated
      https://git.kernel.org/lpieralisi/pci/c/c025f5b2e5

Thanks,
Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
