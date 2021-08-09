Return-Path: <SRS0=9QTE=NA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08ADCC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Aug 2021 14:39:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA43761004
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Aug 2021 14:39:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AA43761004
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMYZZ3UX4CyDsqzvOjj7ngErmCUsiW5ieBvldWvQNQ8=; b=ttegv73UeYR9EE
	Id7VMOqWHNMvuFAu40iKzXN56ugAQkl5BtrP6645XBbu463e346N6+9zFbsdBPiTao+XfZJLsFOXW
	N1dYqX4npfW4uusWflT48MfpcsyGhfGFlmB/0dnOwzyWIlSH509T3kaJkesZ+WmaVO49CJB6/CJmn
	PvIoj+1cF2gppnrPBgQm5nBSqd7x4WdiEKU3gs/rKODuEThNCUhMbVgGQiC3pn7AfdAbouI89KKc4
	BXpBv6o3E/jPZGUjS7w1q8nxLXD/+mr9cRglAnFWPEWJjpkt8YxFS4INPZj+72O6W8fEWCdidaS9m
	Xtf2JO3AiqfYjOu84Mxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD6R7-000w9h-Ab; Mon, 09 Aug 2021 14:39:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD6R5-000w98-BC
 for linux-rockchip@lists.infradead.org; Mon, 09 Aug 2021 14:39:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A57C61040
 for <linux-rockchip@lists.infradead.org>; Mon,  9 Aug 2021 14:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628519966;
 bh=1ihZ2r+7Mr+u9hu6BG8YAHj+316a13abVADO3tMi+5U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=m81bRfhj2Ga/1o07fPBKAAMRT/NuWWIsGXjOV9ZcvblF3VSWEt4HHjIiFb52A4Suo
 NNwZdC3HLv+6CryXWYuhlgWusVHqN1dqjaO+cVGMaote05SH2VceXdJpcTKDjFgbio
 M1XHUD3WqB1exZfutPPGe5tDGW8auJ2ZLqVUJBsS13WCJ1IWWyGsge1qE4+Nl5F00w
 o8UkOweQjCtxB01M+GmCj6UD2ZXyRNgSwkJVVoRZSUaUXE7QGjhdtzU2glz+kOVRnt
 bC0c8dObBh7wcFJtPpBzb9eZTXP90VNnBg1whMkXZ7DsY6Whx0tw5tC4Ln/ZvDTtW2
 zz7jFeRwY2XUg==
Received: by mail-ed1-f41.google.com with SMTP id n12so1085245edx.8
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Aug 2021 07:39:26 -0700 (PDT)
X-Gm-Message-State: AOAM530l7kDozfQPGXMagTMG1pvq6wjwfsmnQLBNa0S8/9hnVfFEWBQa
 K/jdMmyxyQIqwluSweB4fBflGOEICtLKbqvh9g==
X-Google-Smtp-Source: ABdhPJzB8Z+clDtufI8TAGx9E2xZjWgkEt6Cn39QWZwhkUxrlr7yCVT7FkzqSfuAX1zne9+n2xkutY6VnGcBuZO6x08=
X-Received: by 2002:aa7:c603:: with SMTP id h3mr30164744edq.165.1628519964968; 
 Mon, 09 Aug 2021 07:39:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210625065511.1096935-1-xxm@rock-chips.com>
In-Reply-To: <20210625065511.1096935-1-xxm@rock-chips.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 9 Aug 2021 08:39:12 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+b9adwUav8Ny43hsdB_mVPaKcV4wSJYydGuA1f5u-YQA@mail.gmail.com>
Message-ID: <CAL_Jsq+b9adwUav8Ny43hsdB_mVPaKcV4wSJYydGuA1f5u-YQA@mail.gmail.com>
Subject: Re: [PATCH v11] PCI: rockchip-dwc: Add Rockchip RK356X host
 controller driver
To: Simon Xue <xxm@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 PCI <linux-pci@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, 
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, 
 Kever Yang <kever.yang@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_073927_441963_3E74E7B8 
X-CRM114-Status: GOOD (  12.33  )
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

On Fri, Jun 25, 2021 at 12:55 AM Simon Xue <xxm@rock-chips.com> wrote:
>
> Add a driver for the DesignWare-based PCIe controller found on
> RK356X. The existing pcie-rockchip-host driver is only used for
> the Rockchip-designed IP found on RK3399.
>
> Tested-by: Peter Geis <pgwipeout@gmail.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>  drivers/pci/controller/dwc/Kconfig            |  11 +
>  drivers/pci/controller/dwc/Makefile           |   1 +
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 276 ++++++++++++++++++
>  3 files changed, 288 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
