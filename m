Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A819C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 14:01:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B60006023D
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 14:01:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B60006023D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HSjyVQALjvo1hZRJxew9PWaCR7i1NeNXMTOm9fdKWWU=; b=It/jgV6DYzRmkw7kEEds01+V25
	jFoDK3rUAqRkio3gUBv1dw1fHN7K9uaTzGW4xb0mmtrnD+XnB0nOHQ62Ylqsa2KqV9OtPMPyxNI1n
	JYYkUKhW6lJAkzbe02OJhfj+l86d4qsMXqfUQhHm/5vHRMLrzIS5DcHm+vueqQ72ECRWDsn/9Sz1l
	bfPA94VRhiYRSxBJK4+hAflTcvkuHDrcPZ72FbEDNd8PoYPuUYMvP5rj/ywLmdCfGoeR6GqPx/Ho/
	nQkrY7bLGXpKot4Y3GNoh4pPBFiaz0ID7TK/Aoff3CHhAjVJfxE5lXcs6bAE8jd0Ntm8F20/erH1F
	RqZgHS9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEXkb-00Cjx7-NE; Fri, 13 Aug 2021 14:01:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEXkO-00Cju9-Vk; Fri, 13 Aug 2021 14:01:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3EB551042;
 Fri, 13 Aug 2021 07:01:18 -0700 (PDT)
Received: from [10.57.36.146] (unknown [10.57.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EC0A3F718;
 Fri, 13 Aug 2021 07:01:15 -0700 (PDT)
Subject: Re: [PATCH] PCI: rockchip-dwc: Potential error pointer dereference in
 probe
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Simon Xue <xxm@rock-chips.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel-janitors@vger.kernel.org
References: <20210813113338.GA30697@kili>
 <01b7c3da-1c58-c1d9-6a54-0ce30ca76097@arm.com> <20210813135412.GA7722@kadam>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2917a1c8-d59b-43b1-1650-228d20dfc070@arm.com>
Date: Fri, 13 Aug 2021 15:01:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210813135412.GA7722@kadam>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_070121_119967_172CB4BA 
X-CRM114-Status: GOOD (  19.22  )
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

On 2021-08-13 14:54, Dan Carpenter wrote:
> On Fri, Aug 13, 2021 at 01:55:38PM +0100, Robin Murphy wrote:
>> On 2021-08-13 12:33, Dan Carpenter wrote:
>>> If devm_regulator_get_optional() returns an error pointer, then we
>>> should return it to the user.  The current code makes an exception
>>> for -ENODEV that will result in an error pointer dereference on the
>>> next line when it calls regulator_enable().  Remove the exception.
>>
>> Doesn't this break the apparent intent of the regulator being optional,
>> though?
> 
> Argh...  Crap.  My patch is wrong, but the bug is real.

Yeah, I guess this probably wants to follow the same pattern as 
rockchip_pcie_set_vpcie() in the older driver, where it's the regulator 
API calls which get wrapped in checks.

> This code should follow the standard kernel idiom of returning error
> pointers when there are errors and returning NULL when an optional
> feature is disabled.  The problem with returning a Special Error code
> to mean "disabled" is that someone will use the Special Error code to
> mean an error.
> 
> And that has already sort of happened, because _regulator_get() returns
> -ENODEV which would will cause the Oops I described in my patch.
> 
> Ugh...  The correct thing is to convert it to NULL/error pointers.  I
> have not looked at how hard that is though...

Indeed I've thought before that it would be nice if regulators worked 
like GPIOs, where the absence of an optional one does give you NULL, and 
most of the API is also NULL-safe. Probably a pretty big job though...

Thanks,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
