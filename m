Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42810C49EA7
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 18:07:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DCAEB613F3
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 18:07:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DCAEB613F3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=AHb5wThHnxKebIfx1GrMqetmfUYJ0HZ+amSkfCn9i8k=; b=F+lzos/wfYbTf9
	o0r4yew3Y680wInLjf74205ddCE6I/280p4YbMq8N1XYexLkqgPYScOTdsCqifg13dLJO6ugapC+/
	UCtRnTlC/91UsXAd0jWcIQ3TMBsUKNkqNaxlIkJyFu0m/OmPGCQXc3SZvQzSucHuxUYqJIsfh7vpy
	UJ1wzWt/PDIhA05E2xEy/y8Ey6vcHB3VnojTS2axu+5kfL6F27sSzDpYy6w1M9v3TAtTvpdRS1waq
	7CQBmASl4egSM2ErAYgUb0teJ4QIRY6ReWm9zNETvrhHDYMIEJOOzYwyjRZ4ceWgrDt6pOTLn4lKp
	nkd4JQzXFzH//1P9GSkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwTlB-00Fo9W-BA; Thu, 24 Jun 2021 18:07:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwTl8-00Fo83-8y
 for linux-rockchip@lists.infradead.org; Thu, 24 Jun 2021 18:07:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 156DE613C2;
 Thu, 24 Jun 2021 18:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624558045;
 bh=pjMUPrrv0IdP4953FNP37zcXZsFA4aLGtJ+obsfpazk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=neRWxIrqAWWOEkcLHfsWvPPyu8qHYf6O9+nesgtq1VQP8radZCRQXZ+6VtdUNm3oM
 Jp1zCSR/ylOCpKO5BlnlUOIO9weCvaYDoXX3gjSTGd8jp1Sa1D98qOuliarKECNB6+
 dkHjIORbEU19r8Tu9ljhk7hpIEvvIWVL4ewuBZ/TevsuSdCb22xCwD4RS675vQQmqV
 vceDnsfcanJD99jLvxstqp93LMtoYINKrJJ+jPhPG53JwJcnx8OiJZmcR8BCVJKJyX
 R/Ol8oQQwbhgxUsOUYuP7uXFkCyHNCbZd92VHTzEZWd7zXidEx7t7NgzIldikW2ICX
 KkRRor4L7EWEQ==
Date: Thu, 24 Jun 2021 13:07:23 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v10] PCI: rockchip: Add Rockchip RK356X host controller
 driver
Message-ID: <20210624180723.GA3543267@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624021548.447301-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_110726_409203_C974E22B 
X-CRM114-Status: UNSURE (   9.95  )
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

This needs a new driver name.  We already have a "rockchip" driver
(drivers/pci/controller/pcie-rockchip-host.c) and this one needs a
different name that we can use in the subject line and similar places,
e.g., something like:

  PCI: rockchip-dwc: 

Using "rockchip" for the other driver might have been a mistake.  We
should probably use something a little more specific for this driver
to leave room for Rockchip to produce future hardware that may require
a *third* driver.

On Thu, Jun 24, 2021 at 10:15:47AM +0800, Simon Xue wrote:
> Add a driver for the DesignWare-based PCIe controller found on
> RK356X. The existing pcie-rockchip-host driver is only used for
> the Rockchip-designed IP found on RK3399.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
