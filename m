Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7243AC282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 22:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iCX4LFdTiAcVSLTLhd0PjdJ9Se6w3o67XUFvmIGVTI=; b=uEOOHnA01GWV+U
	DOFWSm+mbm7E/m88vvM/bP748YzYGFanuBWeuZ/yVNiCvhhB3alcwwB4JQp4AGrUlwq3SjbHnMwnP
	n9QuhzHqN303DHrPdL7s8bzUShwIXuWqqHWr5764BuC6s8viLmy5t9t0ZlWT6XPQ3bVHgUip2KH8R
	klyx8AOuALGkLZRhPI+66Ej7JQrmIpwuAcq26kigFiyhcHC5XbshgUlCvzj6wNMWbdIFpXec/R6Qh
	M/lgB2j1zkEtN47bJHzW/L6W3qZvXcGaNCFAe8ssnbbResZL6W5ejGp1y0EIZW/pSuC6Xk91GLy+f
	EPOSBxxbunh3IzGS4GVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqK5y-0000000CPyb-0ccB;
	Thu, 06 Mar 2025 22:53:38 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqK5v-0000000CPxu-2s6H
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 22:53:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741301614;
 bh=BL399FFBDZ59QPzqtz+58fHUwMJC7+0wO+ycM6zcMQI=;
 b=iLvFTOS1rKWtnuzsH63gmdQJl3v1p61z9K5Gw6lclRCg/pPdZagDff3itldNJEyfU4Bu5DjXD
 /c5PI5qFisP5ahh65qIA1sjGwlrkdq9qSgazshzKsvZrARthy1AIUguZgr3l+zZ45tODlC2J0Cp
 jPD51WlpoQI/Jjr6AqUzmXuRAQQz6ah0oT8OMngQsSlJ01Vk1HTTVlpguL5KHDVArAPK7/B57vI
 WfeSzpdvgqr5VuTRMYtRYfC6suVcNW22LRPSZ8lH+TzwVikr5j2tgHQn+A2yQ/W5QghJw2vWBj5
 QnBaTUj2dlpJQw+gj0DqvE4VmDVc9/+T6r6eBPncURFQ==
X-Forward-Email-ID: 67ca276cc1763851c065c79e
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <24a8691f-9faf-4657-b819-183fec3d1a15@kwiboo.se>
Date: Thu, 6 Mar 2025 23:53:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add compatible
 string for RK3528
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
 Yao Zi <ziyao@disroot.org>, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250305214108.1327208-1-jonas@kwiboo.se>
 <20250305214108.1327208-2-jonas@kwiboo.se>
 <20250306-frisky-spiffy-bullmastiff-ad9e49@krzk-bin>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250306-frisky-spiffy-bullmastiff-ad9e49@krzk-bin>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_145335_818519_590DC36F 
X-CRM114-Status: GOOD (  12.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Hi Krzysztof,

On 2025-03-06 10:36, Krzysztof Kozlowski wrote:
> On Wed, Mar 05, 2025 at 09:41:02PM +0000, Jonas Karlman wrote:
>> The SDHCI controller in Rockchip RK3528 is similar to the one included
>> in RK3588.
>>
>> Add compatible string for the SDHCI controller in RK3528.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
> 
> No power domains here? Post complete support, so this won't have to be
> changed in near future.

To my knowledge this should be complete support. However, there are some
rx/tx tap num and strobe delay num configuration that needs to be tuned
to fully support the faster HS400/HS400ES transfer modes.

For that we could need something like the PHY output/input tap delays
described in mmc/sdhci-am654.yaml. Still unclear to me if the different
delayed used by vendor driver is SoC specific and can live in driver or
if they instead are reference board specific and could be part of the
device tree.

Regards,
Jonas

> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
