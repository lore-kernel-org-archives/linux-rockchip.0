Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49C78C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:01:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB9FA61042
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:01:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DB9FA61042
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rm5yAU3b/wW3vpPXTPf9HHCFOEbeac4mkKftDTKPTDg=; b=ASpgqoA6POeLZB9FqNOeYdKV9c
	hs1yyuS+Y1zQ4Cdy83XjQQk6INN+g1RwcPqJZYBiy7NF+32+gTr8o6gyE/XwdUF22j+VdjbaA2Pz1
	+dCQG6VnSNn3zYA51SmwfC5TqCwxezSlWBLcHLVx/t9E7D+/Ue/EOaznmo9UFgy4iVarulhvxoGWB
	CTfLo+sMHdjmRm1pLA2JKkRdtLn+NUMGdOTPRmVw6Tux9qZ3i6u1tbP0WfOjkfiO2FLFnNaOSLT7I
	Th/9xdcYohOsGX7V2MVe3wI8o/gIgFd62tM7unzRKCHKidVcTHVaAkRfR0imZC+HJKtMRPieIl2k4
	aXZr7Ayw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEYgK-00CsIx-LG; Fri, 13 Aug 2021 15:01:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEYg4-00CsFF-Ng; Fri, 13 Aug 2021 15:00:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29EBE1042;
 Fri, 13 Aug 2021 08:00:54 -0700 (PDT)
Received: from [10.57.36.146] (unknown [10.57.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0BC443F718;
 Fri, 13 Aug 2021 08:00:51 -0700 (PDT)
Subject: Re: [PATCH] PCI: rockchip-dwc: Potential error pointer dereference in
 probe
To: Mark Brown <broonie@kernel.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Simon Xue
 <xxm@rock-chips.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel-janitors@vger.kernel.org
References: <20210813113338.GA30697@kili>
 <01b7c3da-1c58-c1d9-6a54-0ce30ca76097@arm.com> <20210813135412.GA7722@kadam>
 <2917a1c8-d59b-43b1-1650-228d20dfc070@arm.com>
 <20210813143250.GA5209@sirena.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <566c26bb-c488-8c86-f47e-6a748b9b6c77@arm.com>
Date: Fri, 13 Aug 2021 16:00:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210813143250.GA5209@sirena.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_080056_872011_24EAE050 
X-CRM114-Status: GOOD (  15.76  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-08-13 15:32, Mark Brown wrote:
> On Fri, Aug 13, 2021 at 03:01:10PM +0100, Robin Murphy wrote:
> 
>> Indeed I've thought before that it would be nice if regulators worked like
>> GPIOs, where the absence of an optional one does give you NULL, and most of
>> the API is also NULL-safe. Probably a pretty big job though...
> 
> It also encourages *really* bad practice with error handling, and in
> general there are few use cases for optional regulators where there's
> not some other actions that need to be taken in the case where the
> supply isn't there (elimintating some operating points or features,
> reconfiguring power internally and so on).  If we genuninely don't need
> to do anything special one wonders why we're trying to turn the power on
> in the first place.

Sure, once you get into it, regulators are arguably a rather deeper area 
than GPIOs, so in terms of the NULL-safe aspect anything beyond 
enable/disable - for the sake of keeping trivial usage simple - would be 
pretty questionable for sure.

A lot of the usage of regulator_get_optional() seems to be just making 
sure some external thing is powered between probe() and remove() if it's 
not hard-wired already, so maybe something like a 
devm_regulator_get_optional_enabled() could be an answer to that 
argument without even touching the underlying API.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
