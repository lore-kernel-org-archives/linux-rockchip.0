Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2C48C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 04:13:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C3BDE22B40
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 04:13:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C3BDE22B40
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jdT66ZkYrxIflvoo06TL3BMLT3U/uy9yf003XhAePkA=; b=UlrC6i5UvXQhrUrEvPMYY3Lik
	+CB36j4sopiSNKJE/9BIhC/TJu1OhruCh9eK6hhy7h1Caj1Nz5lGWSwa3jOHzPGOJKZVrKOGl51PI
	hnkQAtrAQv30ws8xDJI86Y/HrkLphQeE9K9I3Unz/mm2vepIlJGZxpWKkKrPOvNqn/pKdgROkdsq8
	peK27R2/1xpj7m0DEEY8yeR48rVnUptWgdpAp70ZTja/OtrtQXoUv7atJEWregOtomFeFpBM810TE
	Z3Q+gRJ+XpQIXRSVgQlR89biiGxMyq5mTaXkL/yj2ouoxS/ny9/k06olFhOeCnelYjBsok/f7X2dx
	VcX7aBSOg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1km7tb-0000Wv-Mk; Mon, 07 Dec 2020 04:13:07 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1km7tX-0000WR-Db
 for linux-rockchip@lists.infradead.org; Mon, 07 Dec 2020 04:13:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 3F5DA200E20A;
 Mon,  7 Dec 2020 12:12:55 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kU0-frxgQaWC; Mon,  7 Dec 2020 12:12:55 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 1CE5820001F5;
 Mon,  7 Dec 2020 12:12:55 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.188.227])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id 9862DC01B4A;
 Mon,  7 Dec 2020 12:12:54 +0800 (HKT)
Subject: Re: [PATCH] phy: rockchip-emmc: emmc_phy_init() always return 0
To: linux-rockchip@lists.infradead.org, Doug Anderson <dianders@chromium.org>
References: <20201201031015.23314-1-chris.ruehl@gtsys.com.hk>
 <CAD=FV=Wyk9BYR3cnfm=9tBh=XBxEP=udMTeaEYPzAqa5m8x=yg@mail.gmail.com>
 <f8a21465-91d0-9967-e559-d8f91f795028@gtsys.com.hk>
 <e6d351f9-232c-ebab-2f4e-bf2ff4dc8238@gtsys.com.hk>
 <CAD=FV=UjwK7qz-SOJNpZbq4bABWgDunZ0Yjk+Z9zs=wSH=sy-A@mail.gmail.com>
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Message-ID: <1288be76-7599-92dd-561a-636872dd0186@gtsys.com.hk>
Date: Mon, 7 Dec 2020 12:12:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAD=FV=UjwK7qz-SOJNpZbq4bABWgDunZ0Yjk+Z9zs=wSH=sy-A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_231303_881011_D67A011D 
X-CRM114-Status: GOOD (  32.91  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 5/12/2020 1:53 am, Doug Anderson wrote:
> Hi,
> 
> On Thu, Dec 3, 2020 at 7:01 PM Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
>>
>> Hi,
>>
>> On 2/12/2020 4:36 pm, Chris Ruehl wrote:
>>>
>>> On 2/12/2020 12:05 am, Doug Anderson wrote:
>>>> Hi,
>>>>
>>>> On Mon, Nov 30, 2020 at 7:10 PM Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
>>>>>
>>>>> rockchip_emmc_phy_init() return variable is not set with the error value
>>>>> if clk_get() failed. The debug message print 0 on error and the function
>>>>> always return 0.
>>>>> Fix it using PTR_ERR().
>>>>>
>>>>> Fixes: 52c0624a10cce phy: rockchip-emmc: Set phyctrl_frqsel based on card clock
>>>>>
>>>>> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
>>>>> ---
>>>>>    drivers/phy/rockchip/phy-rockchip-emmc.c | 1 +
>>>>>    1 file changed, 1 insertion(+)
>>>>>
>>>>> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c
>>>>> b/drivers/phy/rockchip/phy-rockchip-emmc.c
>>>>> index 48e2d75b1004..75faee5c0d27 100644
>>>>> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
>>>>> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
>>>>> @@ -253,6 +253,7 @@ static int rockchip_emmc_phy_init(struct phy *phy)
>>>>>            */
>>>>>           rk_phy->emmcclk = clk_get(&phy->dev, "emmcclk");
>>>>>           if (IS_ERR(rk_phy->emmcclk)) {
>>>>> +               ret = PTR_ERR(rk_phy->emmcclk);
>>>>
>>>> I'm pretty sure your patch isn't correct and it would break use cases.
>>>> Is it fixing some bug that you're aware of, or you found it via code
>>>> inspection?
>>>>
>>>> Specifically:
>>>>
>>>> * The big comment block in this function says that the clock is
>>>> optional and that we're ignoring errors.
>>>>
>>>> * The printout in this function is "dbg" level, which is an extra
>>>> indication that we aren't concerned with these errors.
>>>>
>>>> Arguably the code could be made better.  If you want to improve it,
>>>> you could check for just the error we expect if the clock isn't
>>>> specified (probably -ENODEV, but you should check) and treat all other
>>>> failures as real errors.
>>>>
>>>>
>>>> -Doug
>>>>
>>>
>>> Hi Doug,
>>>    I reviewed the code while hunting behind an other bug, with hs400
>>> and yes I saw the comment that they don't care about the problem
>>> if the clk_get() return an error, and set the rk_phy->emmcclk = NULL
>>> regardless, not using the ret variable but define it isn't useful.
>>>
>>> If return a error code break something on the other hand, better it
>>> hit it rather then suppress it in IMHO.
>>>
>>> Let me follow the caller of the function and see how they treat the
>>> err != 0.
>>>
>>> If something is in danger, I will be effected with my rk3399 rollout :)
>>>
>>> Chris
>>>
>>
>> I check my case, the dts properties emmcclk is defined for the rk3399.
>> (checked it I do not have an error, clk_get() works)
>> If clk_get() failed and we propagate error<0 to the phy-core.c which then
>> not increase the phy->init_count, but throw error message that something goes
>> wrong.
>>
>> Someone should explain to me, why we should cover up an error.
> 
> If you want to change this I'd guess you'd want to change the bindings
> in a backward-incompatible way.  The bindings
> (Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt) say:
> 
>   - clock-names: Should contain "emmcclk".  Although this is listed as optional
>                  (because most boards can get basic functionality without having
>                  access to it), it is strongly suggested.
> 
> Since it's officially listed as optional then the driver needs to
> function without it.  It was a long time ago, but my guess about why I
> needed to list it as optional was for the whole "device tree purity"
> reasons.  In other words the goal is always that old device trees
> should continue to work, so if you're adding new properties they need
> to be optional.
> 
> It seems highly unlikely anyone actually has a device tree that
> doesn't specify this clock, though.  If you want to cleanly go through
> and mark this as required everywhere I won't personally object.
> 
> -Doug
> 

Doug,

Yes, seems unlikely to me too, the definition for emmcclk is in rk3399.dtsi and
therefore in all the rk3399 boards I find in the dts/rockchip/.

To be backwards compatible, and keep it optional, I can check if clock-names is 
defined and if not, set emmcclk=null and return 0.
But if emmcclk is defined and an error returned from clk_get(), escalate it.

like below.

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c 
b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 75faee5c0d27..47126f9af31d 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -85,6 +85,7 @@ struct rockchip_emmc_phy {
         struct clk      *emmcclk;
         unsigned int drive_impedance;
         unsigned int enable_strobe_pulldown;
+       bool hasclockname;
  };

  static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
@@ -251,10 +252,14 @@ static int rockchip_emmc_phy_init(struct phy *phy)
          * above expected use case, EPROBE_DEFER isn't sensible to expect, so
          * it's just like any other error.
          */
-       rk_phy->emmcclk = clk_get(&phy->dev, "emmcclk");
-       if (IS_ERR(rk_phy->emmcclk)) {
-               ret = PTR_ERR(rk_phy->emmcclk);
-               dev_dbg(&phy->dev, "Error getting emmcclk: %d\n", ret);
+       if (rk_phy->hasclockname) {
+               rk_phy->emmcclk = clk_get(&phy->dev, "emmcclk");
+               if (IS_ERR(rk_phy->emmcclk)) {
+                       ret = PTR_ERR(rk_phy->emmcclk);
+                       dev_err(&phy->dev, "Error getting emmcclk: %d\n", ret);
+                       rk_phy->emmcclk = NULL;
+               }
+       } else {
                 rk_phy->emmcclk = NULL;
         }

@@ -373,6 +378,7 @@ static int rockchip_emmc_phy_probe(struct platform_device *pdev)
         rk_phy->reg_base = grf;
         rk_phy->drive_impedance = PHYCTRL_DR_50OHM;
         rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
+       rk_phy->hasclockname = of_property_read_bool(dev->of_node, "clock-names");


Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
