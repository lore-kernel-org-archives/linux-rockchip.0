Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D902CC4363A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 13:51:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 61F432076A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 13:51:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FEH3Oebq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 61F432076A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kQoPo6sYwdBndpteU+Ym7PVxH5eTiXjAmNvo6ySNUIs=; b=FEH3OebqvCpSYy1MtDlqK1YQh
	tRlhMaHJslClCpcNyyhIgpDhBS4NxGJgMETvK+Fo3Oh+rVT4rn9jOrG+UARJRzMCyvwJOLjtgcOYf
	I9ATWH/0+hFh5qKxpeXIefZ9dViAjRPfPZI+tAURP0SW08YP7dr422z4Qb99OHv0hFbs9GDWmhsO4
	jL06qAINVPqMr/3sgk2IJBPoobzNFAW1xms7nNJBMEBAoTHNTFX7bWytACVpARlcaqU1yfSyJW8Ws
	I6oDBhAxLps8PRRzzSqY9myJsLCVP50NE0fVO1C5ktvI3EAScrAGVsSjVVWOzRo969eQ0fLekzfM2
	Yxlrdqdww==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kY8Ky-0002ui-P4; Thu, 29 Oct 2020 13:51:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kY8Kt-0002sm-0t; Thu, 29 Oct 2020 13:51:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED001139F;
 Thu, 29 Oct 2020 06:51:25 -0700 (PDT)
Received: from [10.57.54.223] (unknown [10.57.54.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9BDDC3F719;
 Thu, 29 Oct 2020 06:51:24 -0700 (PDT)
Subject: Re: [PATCH] iommu/rockchip: check return value of
 of_find_device_by_node() in rk_iommu_of_xlate()
To: "yukuai (C)" <yukuai3@huawei.com>, joro@8bytes.org, heiko@sntech.de,
 jeffy.chen@rock-chips.com
References: <20201029092202.900218-1-yukuai3@huawei.com>
 <98dec09e-08a1-6550-fa4e-85a8104b90e1@arm.com>
 <35ff5111-1270-fc88-788c-4fb9e38faa85@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d5442e6b-2a6b-a8f9-2056-2c0c81e88a01@arm.com>
Date: Thu, 29 Oct 2020 13:51:23 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <35ff5111-1270-fc88-788c-4fb9e38faa85@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_095127_146777_83E44C29 
X-CRM114-Status: GOOD (  16.16  )
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
Cc: linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 yi.zhang@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-10-29 13:19, yukuai (C) wrote:
> 
> On 2020/10/29 18:08, Robin Murphy wrote:
>> On 2020-10-29 09:22, Yu Kuai wrote:
>>> If of_find_device_by_node() failed in rk_iommu_of_xlate(), null pointer
>>> dereference will be triggered. Thus return error code if
>>> of_find_device_by_node() failed.
>>
>> How can that happen? (Given that ".suppress_bind_attrs = true")
>>
>> Robin.
> 
> I'm not sure if that could happen...
> 
> My thought is that it's better to do such checking to aviod any possible
> problem.

->of_xlate() is only invoked on the specific set of ops returned by 
iommu_ops_from_fwnode(). In turn, iommu_ops_from_fwnode() will only 
return those ops if the driver has successfully probed and called 
iommu_register_device() with the relevant DT node. For the driver to 
have been able to probe at all, a platform device associated with that 
DT node must have been created, and therefore of_find_device_by_node() 
cannot fail.

If there ever were some problem serious enough to break that fundamental 
assumption, then I *want* these drivers to crash right here, with a nice 
clear stack trace to start debugging from. So no, I firmly disagree that 
adding redundant code, which will never do anything except attempt to 
paper over catastrophic memory corruption, is "better". Sorry :)

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
