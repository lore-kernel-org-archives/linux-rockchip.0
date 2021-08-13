Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17A4BC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 13:47:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C661E60232
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 13:47:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C661E60232
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UWAd81OE8UTLtDJ2sZw3f9jFCzDgOrId+fQFsXhRt40=; b=a9GStxKWxWAaSC4UImwIheLUHv
	+h9EEOhyeo6SaAkks+DcxcSO1lzLDJHV42tp2XdPo6XWGOq9O+z3Ul/DgLOv6FRQqYPHfVl+H+WWo
	WdgZ42b+iJ2Qf2Yi2MHjjn71KIpOMU+h6Juvd72NKBDnaEtosODX0WIRDfFGahzBUBsdEn74qw2WG
	cUxWdLQyMI6Rvqajz3Nu1iXKVh0A8JRm1cVR6r77LIMc4PePWGx6t4omkuGUqNKftURQD0tRLOPC6
	pG2fzigx7mdcKbbMuEALtQAXBT1iIIWlcrec3IdS4EpHPuYzBce7v2OTDvUOJVO9EiPfY3//sxjbP
	5iFq0L8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEXX9-00Chp5-U6; Fri, 13 Aug 2021 13:47:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEXWx-00ChnU-Ek; Fri, 13 Aug 2021 13:47:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10B301042;
 Fri, 13 Aug 2021 06:47:24 -0700 (PDT)
Received: from [10.57.36.146] (unknown [10.57.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A3EF43F718;
 Fri, 13 Aug 2021 06:47:21 -0700 (PDT)
Subject: Re: [PATCH] PCI: rockchip-dwc: Potential error pointer dereference in
 probe
To: Rob Herring <robh@kernel.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Simon Xue
 <xxm@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, PCI <linux-pci@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 kernel-janitors@vger.kernel.org
References: <20210813113338.GA30697@kili>
 <01b7c3da-1c58-c1d9-6a54-0ce30ca76097@arm.com>
 <CAL_JsqJ4Dadf00pJxEDd14zbWyN99s1A2L4fxZSkZddeg2pV6g@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <81b9a25d-f12f-90e0-0b05-b5e396f14c08@arm.com>
Date: Fri, 13 Aug 2021 14:47:14 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJ4Dadf00pJxEDd14zbWyN99s1A2L4fxZSkZddeg2pV6g@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_064727_615466_93651940 
X-CRM114-Status: GOOD (  18.16  )
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

On 2021-08-13 14:34, Rob Herring wrote:
> On Fri, Aug 13, 2021 at 7:55 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2021-08-13 12:33, Dan Carpenter wrote:
>>> If devm_regulator_get_optional() returns an error pointer, then we
>>> should return it to the user.  The current code makes an exception
>>> for -ENODEV that will result in an error pointer dereference on the
>>> next line when it calls regulator_enable().  Remove the exception.
>>
>> Doesn't this break the apparent intent of the regulator being optional,
>> though?
> 
> I'm pretty sure 'optional' means ENODEV is never returned. So there
> wasn't any real problem, but the check was unnecessary.

In fact it's the other way round - "optional" in this case is for when 
the supply may legitimately not exist so the driver may or may not need 
to handle it, so it can return -ENODEV if a regulator isn't described by 
firmware. A non-optional regulator is assumed to represent a necessary 
supply, so if there's nothing described by firmware you get the (valid) 
dummy regulator back.

Robin.

>>> Fixes: e1229e884e19 ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
>>> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
>>> ---
>>>    drivers/pci/controller/dwc/pcie-dw-rockchip.c | 5 ++---
>>>    1 file changed, 2 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
>>> index 20cef2e06f66..2d0ffd3c4e16 100644
>>> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
>>> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
>>> @@ -225,9 +225,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>>>        /* DON'T MOVE ME: must be enable before PHY init */
>>>        rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
>>>        if (IS_ERR(rockchip->vpcie3v3))
>>> -             if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
>>> -                     return dev_err_probe(dev, PTR_ERR(rockchip->vpcie3v3),
>>> -                                     "failed to get vpcie3v3 regulator\n");
>>> +             return dev_err_probe(dev, PTR_ERR(rockchip->vpcie3v3),
>>> +                                  "failed to get vpcie3v3 regulator\n");
>>>
>>>        ret = regulator_enable(rockchip->vpcie3v3);
>>>        if (ret) {
>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
