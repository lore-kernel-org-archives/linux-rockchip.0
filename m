Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB0AC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 01:29:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 93E7321E92
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 01:29:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 93E7321E92
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=89Bk5YwxH2eAqYMp02kP+Yh2P1Sz4P5Ozax3dg9Oo/U=; b=Ds1m1Gu7KM6QLeGqD7xgp8KTz
	caO6gtPUqOafRf10b9forfA+TvpPtKvqimN83yWG3gjBFL14Eu8xpUP0koR1OXofy0t0jE3u5epet
	WWDoBaPHGE84MXciaTSx6UPfNelNM4zQOo4v/DfWpJQKJP89WhtCeXnp6LXVn06bTH2fy1LZnBxna
	EomnlRNkRX/SYpciI8arhvAM5Sd/2Loap7Yr68jV5i4nVWdI3hG8UQE4K0kInFlIpI2UGQ4b0qAOG
	fa5kxBQDPA/ohZIhTvRqx3aUTyeBOCP65eUJ+hZ7Gv0EV1Ba8cGqaqvM7JAuprCRhAL956zjuD2lw
	WvWKUGxtQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmoIW-0003q2-UH; Wed, 09 Dec 2020 01:29:41 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmoIU-0003pc-BQ
 for linux-rockchip@lists.infradead.org; Wed, 09 Dec 2020 01:29:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 346D2200E7E0;
 Wed,  9 Dec 2020 09:29:28 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8iN3Ermle6wW; Wed,  9 Dec 2020 09:29:28 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 1CAAD200E7DE;
 Wed,  9 Dec 2020 09:29:28 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.188.227])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id E99A9C01F98;
 Wed,  9 Dec 2020 09:29:27 +0800 (HKT)
Subject: Re: [PATCH] phy: rockchip-emmc: emmc_phy_init() always return 0
To: Doug Anderson <dianders@chromium.org>
References: <20201201031015.23314-1-chris.ruehl@gtsys.com.hk>
 <CAD=FV=Wyk9BYR3cnfm=9tBh=XBxEP=udMTeaEYPzAqa5m8x=yg@mail.gmail.com>
 <f8a21465-91d0-9967-e559-d8f91f795028@gtsys.com.hk>
 <e6d351f9-232c-ebab-2f4e-bf2ff4dc8238@gtsys.com.hk>
 <CAD=FV=UjwK7qz-SOJNpZbq4bABWgDunZ0Yjk+Z9zs=wSH=sy-A@mail.gmail.com>
 <1288be76-7599-92dd-561a-636872dd0186@gtsys.com.hk>
 <CAD=FV=XkdnLt9PHM+TNWtDw5R9D1uqrJp2KoXpTG8oCQ=ECA3A@mail.gmail.com>
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Message-ID: <302d718f-31d7-ed9a-725a-483ab52694ad@gtsys.com.hk>
Date: Wed, 9 Dec 2020 09:29:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAD=FV=XkdnLt9PHM+TNWtDw5R9D1uqrJp2KoXpTG8oCQ=ECA3A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201208_202938_607105_BB3D4321 
X-CRM114-Status: GOOD (  10.50  )
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 8/12/2020 12:29 am, Doug Anderson wrote:
> Hi,
> 
> On Sun, Dec 6, 2020 at 8:13 PM Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
>>
>> To be backwards compatible, and keep it optional, I can check if clock-names is
>> defined and if not, set emmcclk=null and return 0.
>> But if emmcclk is defined and an error returned from clk_get(), escalate it.
> 
> ...but how is this different than just checking for the -ENODEV (or
> maybe -ENOENT?) error return (other than being more complicated and
> requiring more code?)  ...or, perhaps even better, just use
> clk_get_optional()?
> 
> -Doug
> 

Hi,

yeah! good hint. Let me rewind, and use the optional function call.

Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
