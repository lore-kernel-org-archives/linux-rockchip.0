Return-Path: <SRS0=yk8M=FG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16FC6C64E8A
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Dec 2020 08:37:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8621C22202
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Dec 2020 08:37:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8621C22202
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JPvdLTcvcbKO81kDnZ+BR+fitDhExvajghM2A/08xOk=; b=VyFgVrsYVfWQNGcUMxx4UQ0rc
	v3QwH66nMHIv9zAi0YbEWkM8NI8XCRSaYaNTgaS7xy+irwsw0SXsCyZVR38L1h2PeN694E8rgxizZ
	zYysOvg6oRLJDKmYRIvh+0enc1TJf4UNlL94MPDrshriIHX+L0595RGOUceXtu+Qk4N4NWdqrG6jW
	CuhFs2lez9DD79fN0IO/+BSZl7YwojlHTZ8hT4sdKeMqfd74Jx/xKmoiMYwv3bWQ1dK40+8DYpQ63
	GyBVbu5sJQ2jJYE/oBVQPOziMjr2Wcmk97DFiGDPYHCYwxgYYxSVkAODWRRXqBHAz1YypvPTh2z3G
	kDP9Mg/xA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kkNdG-0003Uw-Kc; Wed, 02 Dec 2020 08:37:02 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkNdC-0003TI-5g; Wed, 02 Dec 2020 08:36:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id ABFF72015B9C;
 Wed,  2 Dec 2020 16:36:54 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fnejSr34lf9O; Wed,  2 Dec 2020 16:36:54 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 881B42015B84;
 Wed,  2 Dec 2020 16:36:54 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.188.227])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id 6EC46C019F3;
 Wed,  2 Dec 2020 16:36:53 +0800 (HKT)
Subject: Re: [PATCH] phy: rockchip-emmc: emmc_phy_init() always return 0
To: Doug Anderson <dianders@chromium.org>
References: <20201201031015.23314-1-chris.ruehl@gtsys.com.hk>
 <CAD=FV=Wyk9BYR3cnfm=9tBh=XBxEP=udMTeaEYPzAqa5m8x=yg@mail.gmail.com>
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Message-ID: <f8a21465-91d0-9967-e559-d8f91f795028@gtsys.com.hk>
Date: Wed, 2 Dec 2020 16:36:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAD=FV=Wyk9BYR3cnfm=9tBh=XBxEP=udMTeaEYPzAqa5m8x=yg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201202_033658_418775_1F17783B 
X-CRM114-Status: GOOD (  26.99  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On 2/12/2020 12:05 am, Doug Anderson wrote:
> Hi,
> 
> On Mon, Nov 30, 2020 at 7:10 PM Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
>>
>> rockchip_emmc_phy_init() return variable is not set with the error value
>> if clk_get() failed. The debug message print 0 on error and the function
>> always return 0.
>> Fix it using PTR_ERR().
>>
>> Fixes: 52c0624a10cce phy: rockchip-emmc: Set phyctrl_frqsel based on card clock
>>
>> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
>> ---
>>   drivers/phy/rockchip/phy-rockchip-emmc.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
>> index 48e2d75b1004..75faee5c0d27 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
>> @@ -253,6 +253,7 @@ static int rockchip_emmc_phy_init(struct phy *phy)
>>           */
>>          rk_phy->emmcclk = clk_get(&phy->dev, "emmcclk");
>>          if (IS_ERR(rk_phy->emmcclk)) {
>> +               ret = PTR_ERR(rk_phy->emmcclk);
> 
> I'm pretty sure your patch isn't correct and it would break use cases.
> Is it fixing some bug that you're aware of, or you found it via code
> inspection?
> 
> Specifically:
> 
> * The big comment block in this function says that the clock is
> optional and that we're ignoring errors.
> 
> * The printout in this function is "dbg" level, which is an extra
> indication that we aren't concerned with these errors.
> 
> Arguably the code could be made better.  If you want to improve it,
> you could check for just the error we expect if the clock isn't
> specified (probably -ENODEV, but you should check) and treat all other
> failures as real errors.
> 
> 
> -Doug
>

Hi Doug,
  I reviewed the code while hunting behind an other bug, with hs400
and yes I saw the comment that they don't care about the problem
if the clk_get() return an error, and set the rk_phy->emmcclk = NULL
regardless, not using the ret variable but define it isn't useful.

If return a error code break something on the other hand, better it
hit it rather then suppress it in IMHO.

Let me follow the caller of the function and see how they treat the
err != 0.

If something is in danger, I will be effected with my rk3399 rollout :)

Chris


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
