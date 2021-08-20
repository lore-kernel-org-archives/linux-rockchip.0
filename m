Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D80FCC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 14:49:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 976ED61102
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 14:49:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 976ED61102
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sSwvN6YT1wXoXU3W2Y5eWtaRHST1E6r/bdrRg2EunY8=; b=t3/VIsT6k89ZbAWny56IlbkHFt
	nHidp2yZozunLDcvhmh939nkpD9HbRJs/ONGno6ytbFWxcbAM5O4zoGPeHYXMb+ZVENunoMoZ4M3n
	WE2tKZ8OZw7scqaiWierb6edcyDcHUs0BIwDElTPbxW72s5cCD9G6Z01HWPnu6dXa0vq2e/pinSnb
	o0rYPm/PIL9DygCNKLlS4HKIkb+4I/v7ceFQolkZgra+Mvmqe/1b4/hSyk1eJJM8nJqbxflAB16RN
	b4GI7ZnIm6E0UOOKAUu4b8mnm8ucN+6eDN5MBLfdC0/DBB740oRGe4GYQjY0Hjd6mkppjceslM5UD
	ue8lHPqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH5pu-00BQYN-RH; Fri, 20 Aug 2021 14:49:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH5pe-00BQUx-MX; Fri, 20 Aug 2021 14:49:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DA3511FB;
 Fri, 20 Aug 2021 07:49:17 -0700 (PDT)
Received: from [10.57.15.112] (unknown [10.57.15.112])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A67A3F70D;
 Fri, 20 Aug 2021 07:49:16 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: rockchip: remove cap-mmc-highspeed property
 from mk808 &mmc0 node
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, paweljarosz3691@gmail.com
References: <20210820131920.1831-1-jbx6244@gmail.com>
 <bf6cba99-da3b-a6fe-4e4b-f4ea6e3c6e63@arm.com>
 <c52b4cf0-d018-f6b4-8728-41551b8bf62b@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d3b574f5-b49e-60be-1559-b98e0832bd62@arm.com>
Date: Fri, 20 Aug 2021 15:49:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <c52b4cf0-d018-f6b4-8728-41551b8bf62b@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_074918_867765_53B62BE5 
X-CRM114-Status: GOOD (  12.59  )
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

On 2021-08-20 15:41, Johan Jonker wrote:
> 
> 
> On 8/20/21 4:17 PM, Robin Murphy wrote:
>> On 2021-08-20 14:19, Johan Jonker wrote:
>>> On the MK808 only a microSD slot is connected with the SDMMC Host
>>> Controller,
>>> so remove the cap-mmc-highspeed property from the &mmc0 node.
>>
>> Why, does it do any harm?
> 
> Harm not. Example rk3066 u-boot:
> 
>>>>> sd_select_mode_and_width
> sd card: widths [4, 1, ] modes [MMC legacy, SD High Speed (50MHz), UHS
> SDR12 (25MHz), UHS SDR25 (50MHz), ]
> host: widths [4, 1, ] modes [MMC legacy, MMC High Speed (26MHz), SD
> High Speed (50MHz), MMC High Speed (52MHz), ]
> trying mode SD High Speed (50MHz) width 4 (at 50 MHz)
> 
> I would say only advertise host capabilities that are under normal
> circumstances occur. How realistic is it to use a TF/Micro SD TO SD Card
> Extension Cable Adapter (giggle) for a deprecated mmc card?

Well, if you want a far more realistic example:

https://www.hardkernel.com/shop/emmc-module-reader-board-for-os-upgrade/

Who are we to dictate what "normal circumstances" are, and what do we 
gain by removing support for modes that could work fine and at least be 
useful to someone on occasion?

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
