Return-Path: <SRS0=ULk2=FO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6070C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Dec 2020 19:58:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D91B23406
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Dec 2020 19:58:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D91B23406
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=walle.cc
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iJI3WYNg65FMWlGCvNHCk4hrqBaUdf9ZWLPHuURWix0=; b=ZDcXT5JPV2daIZdv1IgryGKpj
	Wp801Co3F7liKXYLjWbSUnmPgBo8i/C8JakPTMh4wOPB+XQC3GCu2uKNtWibueN+jOg8njLxSPkcE
	5y6OnlRTWP2euCIbqejjzzs7kSO6BBSPzE+bncRcjm+jtEWsX4rjd5hSUK0FLy5ZtrMsDFNY/BE93
	tLeYincfdR98iNLtCnYTOGGEhjKLfFb8LXICztgJsDcZLimGjR2Dwtxfpbb9CLMvjeoQzf6xW5upc
	tbT+Riy39/f9jqTaLVyZeAA/XQDigFs/RW5O76MDquWU2yN5Ok/6xkSe8gdMhe8NAfb6jJQsbMn0r
	Xx/ZiaNoA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1knS5J-00016c-II; Thu, 10 Dec 2020 19:58:41 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knS5E-00015h-OC; Thu, 10 Dec 2020 19:58:37 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 7E8E223E5D;
 Thu, 10 Dec 2020 20:58:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1607630307;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fMhg82S0rwUSrDpQiFh0ST2pjTuKrxogeVcd6fb/BYU=;
 b=dnygdpHM2m3GMfxdC9krsKYEPRMHmLSimDuAfuHkp9B+WvhENOP1JGuIC1hgvaWYW8vooR
 cObG9mXNSlEl+RbJyAQXjAEUjMNUxeXXJK+9oWx4GAVScYKHglUMULZJH+oHRC4twGtl11
 /qZ1HdnbCMHzriG18csTWpg2CJ/KS0c=
MIME-Version: 1.0
Date: Thu, 10 Dec 2020 20:58:20 +0100
From: Michael Walle <michael@walle.cc>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express
 drivers
In-Reply-To: <20201210173809.GA37355@bjorn-Precision-5520>
References: <20201210173809.GA37355@bjorn-Precision-5520>
User-Agent: Roundcube Webmail/1.4.9
Message-ID: <194550494fde93c6eb840eabf59bde38@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201210_145837_203743_D30AB8BF 
X-CRM114-Status: GOOD (  13.79  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: kw@linux.com, heiko@sntech.de, benh@kernel.crashing.org,
 shawn.lin@rock-chips.com, Alexandru Marginean <alexm.osslist@gmail.com>,
 paulus@samba.org, thomas.petazzoni@bootlin.com, jonnyc@amazon.com,
 toan@os.amperecomputing.com, will@kernel.org, robh@kernel.org,
 lorenzo.pieralisi@arm.com, mpe@ellerman.id.au, michal.simek@xilinx.com,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 rjui@broadcom.com, f.fainelli@gmail.com, linux-rpi-kernel@lists.infradead.org,
 Jonathan.Cameron@huawei.com, bhelgaas@google.com, jonathan.derrick@intel.com,
 sbranden@broadcom.com, wangzhou1@hisilicon.com, rrichter@marvell.com,
 Vladimir Oltean <olteanv@gmail.com>, linuxppc-dev@lists.ozlabs.org,
 nsaenzjulienne@suse.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am 2020-12-10 18:38, schrieb Bjorn Helgaas:
> On Wed, Dec 09, 2020 at 10:29:04PM +0200, Vladimir Oltean wrote:
>> On Wed, Dec 09, 2020 at 04:40:52PM +0100, Michael Walle wrote:
>> > Hopefully my mail client won't mess up the output that much.
>> 
>> I can reproduce on my LS1028A as well. The following fixes the bug for
>> me. I did not follow the discussion and see if it is helpful for 
>> others.
>> I don't understand how the bug came to be. There might be more to it
>> than what I'm seeing. If it's just what I'm seeing, then the patch was
>> pretty broken to begin with.
> 
> I squashed the fix below into a pci/ecam branch for v5.11, thanks!

FWIW
Tested-by: Michael Walle <michael@walle.cc>

-michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
