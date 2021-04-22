Return-Path: <SRS0=DOys=JT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ED12C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 18:21:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 141F56103E
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 18:21:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 141F56103E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Crv/TiGpuzom5h64JUyx8J8M5jGMRQfKvqm0f1SmQk=; b=VKONwnqMZsXLWNfBVStVdhn/A
	8I0J5zw6xpYWbYnRH6EeZNnLxHumP8ivjC7ACubpDqsQtnSzXlkHJJKPdNQl/l4Qh6j6y16bsxqhX
	qQMidequxHiCvl2Wf+IFSkmUoTQ87EVqlhGnU7iQKQjappJO3U//6JFcUsJzDmVqWaCU53Q9wN0hT
	qyaYvYXlRN5GHx/DlVknl9qCc60kn/b5E4f8txt0xmKWq+Tz91pf70+3XDsh+fvsvmYtf0j6kRkvb
	Ju6vD+XbTWanQ7mJmUzQjECQN3bEWR5lbJIYEn6ZE7MoJY57TAizMeSRrqtiodtAz9e8Ub46D6eR5
	gbqDxeUUg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZdwv-00HERc-CZ; Thu, 22 Apr 2021 18:21:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZdwt-00HERW-Al
 for linux-rockchip@desiato.infradead.org; Thu, 22 Apr 2021 18:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=S+VWEip63guxY/ZoIKraaHATegxVS3lrY2EymxIelJc=; b=2drjOAc0pYlqQN3ICqUP/OTMtg
 Rhc39v4ixmqDGI2CExIvQuc2dOckfax8SbRGkXJHoMU3QHUdO7JjvnDJpwg3ndW7Y2Ygrnopja00P
 5+Mp5184iFluyg/M4a9sTiRM+2PGDx1bNeA1RMWWTMHODzsRbWOusJk1n3VSi0TyXsJN/3mP6UXXZ
 nWijlk8TI72D9kUHtT2iBmSwOUHjaEQvuHjH3ezV+/5RWRHtwhKGk7YfshKXGmkJfUqVcCtNdf3Pb
 qHjlIi8Jw6QnLGzmx1jbl3W4gy9yE/+GT3oKM4vqR3g7aWABA5+0xMJtEkc4xQd4aYHiGWwLRRv/e
 r9W38anA==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZdwq-00Duo6-Ki
 for linux-rockchip@lists.infradead.org; Thu, 22 Apr 2021 18:21:10 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lZdwh-00021a-Lc; Thu, 22 Apr 2021 20:20:59 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Zhang Rui <rui.zhang@intel.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCH 1/2] dt-bindings: rockchip-thermal: Support the RK3568 SoC
 compatible
Date: Thu, 22 Apr 2021 20:20:58 +0200
Message-ID: <4689477.1oUyQt6lIG@diego>
In-Reply-To: <31c2e531-96d0-a1c1-644c-28c60eb40cf4@gmail.com>
References: <20210421200445.32977-1-ezequiel@collabora.com>
 <bf0771cec69e11bf4622421a3aa8f2092da42429.camel@collabora.com>
 <31c2e531-96d0-a1c1-644c-28c60eb40cf4@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_112108_712592_AAD03B46 
X-CRM114-Status: GOOD (  37.93  )
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

Hi,

Am Donnerstag, 22. April 2021, 00:12:45 CEST schrieb Johan Jonker:
> On 4/21/21 11:56 PM, Ezequiel Garcia wrote:
> > On Wed, 2021-04-21 at 23:25 +0200, Johan Jonker wrote:
> >> On 4/21/21 11:06 PM, Ezequiel Garcia wrote:
> >>> On Wed, 2021-04-21 at 22:46 +0200, Johan Jonker wrote:
> >>>> On 4/21/21 10:04 PM, Ezequiel Garcia wrote:
> >>>>> Add a new compatible for the thermal sensor device on RK3568 SoCs.
> >>>>>
> >>>>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> >>>>> ---
> >>>>>  Documentation/devicetree/bindings/thermal/rockchip-thermal.txt | 1 +
> >>>>>  1 file changed, 1 insertion(+)
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> >>>>> index 7f94669e9ebe..346e466c2006 100644
> >>>>> --- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> >>>>> +++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> >>>>> @@ -9,6 +9,7 @@ Required properties:
> >>>>>     "rockchip,rk3328-tsadc": found on RK3328 SoCs
> >>>>>     "rockchip,rk3368-tsadc": found on RK3368 SoCs
> >>>>>     "rockchip,rk3399-tsadc": found on RK3399 SoCs
> >>>>
> >>>>> +   "rockchip,rk3568-tsadc": found on RK3568 SoCs
> >>>>
> >>>> This is still a text document.
> >>>> rob+dt has now scripts that check for undocumented compatibility
> >>>> strings, so first convert rockchip-thermal.txt to YAML and then add this
> >>>> in a separated patch.
> >>>>
> >>>
> >>> Is it a showstopper to convert devicetree bindings to YAML for driver submission?
> >>
> >> You now that hardware best, so try to fix the documents as well.
> > 
> > Well, not really. I'm just forward porting the driver from downstream kernels,
> > so we can support this new SoC. Not really a hardware _expert_ for all the
> > devices I plan to be pushing.
> > 
> >> The new norm is YAML, so aim for that.
> > 
> > I am aware of that. In fact, at Collabora we encourage all the kernel
> > developers to convert to YAML, if/when possible.
> > 
> >> Try to submit a complete package of YAML, driver (and dts nodes) for review.
> > 
> > The devicetree for RK3566 and RK3568 is under discussion, in fact it was submitted today.
> > Rockhip is leading that, and doing a great job already :)
> > 
> > Meanwhile, I'd like to merge the small drivers (thermal, pmic, dwmac, io-domains and so on),
> > so they are ready when the devicetree lands.
> > 
> 
> > Most if not all of these devices just need a new compatible string. It would really delay
> > things if I aim to convert all those bindings docs to YAML first, so let's please avoid that...
> > ... unless it's a new hard-rule that DT maintainers have agreed on.
> 
> Every driver group has it's own delay time, so better do it right in one
> run.
> Mostly people tend to 'forget' documentation and then someone else has
> to clean up the mess. So I propose that the person that submits a new
> driver also fixes the documentation. The norm is now YAML, so this serie
> has more work then other, so be it. Others can help you with it if you ask.

personally I feel this approach being a bit too strict.

While it is definitly cool to convert everything to a yaml base in a
hopefully short time, being overly strict can also stiffle participation.

This is especially true if a series only adds a single compatible to an
already existing binding. So depending on the time constraints of the
contributor they might very well refrain from submitting another version.

In then end though, it's Rob's decision on how strict this conversion
is to be taken.


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
