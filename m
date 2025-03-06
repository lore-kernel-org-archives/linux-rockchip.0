Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42B6AC282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 23:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VuWHxKOtCamSTwFmY5ujtSoB/bEfw+FOH1pRUN/4ig8=; b=FmR9qXIGknVv1S
	XeihrrjG5YivxA3Uz0U9/UzTgxh4F2wWEUHjKFI5SPwqcI6hgdDbnPf5oVmHqiEPlyuE2CUz3NgdS
	siyj8pkymYcE4iCQ0gJQn2iytckvwE1HEO7KcGgyrJFp33yzvZgNhlkMQKnb/PF003Va+pR7rI2g3
	fFu1yT9t9iH02Cka8ip/v96oQF2hmdJYFd9I/bKEdnfrtkAU1dLM++dcy5mljRAtjBAixnJzD8Nqo
	nydGUBY/eSj3QoQgmK8DzqRvLplk0GWcIM7QoEn8mHoXxwvHwKYdw9S/d/+ulv/+jC9EbZugx9hxC
	8pMjNOd8v/Jo0aDUnZ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqKQJ-0000000CTB5-0Auv;
	Thu, 06 Mar 2025 23:14:39 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqKQG-0000000CTAC-2w2c
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 23:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741302876;
 bh=9ebAVhQ0TGXTIyGcuXtNEtXmOIcwu+d1ad+w9Xc0xIw=;
 b=JNkmZ0N2/TO/Driv36dfc/Yq5kEZHYGNi4xXRJ9kGDHzutEm8B95KrbxyqGiqrzAuyP0vFlIl
 SvaQD7VRW0CRJWSB1tDmtwv7GE+eBi7CxR94J7tNC9iXJSfS8HbyTI6KNUHW+3tvxIetyH1M4XA
 juAQKvcsAwsNqkZKWxEYM+w5cfokhOqEeUagpsKk+whSa9f6khRHS2igSCrH6/ehSumC2KbJxj6
 MElKe21ttoQHIKe2a11t4u71aAiaQPU/7+1ULN0I0QOOK3/drVAGi2qUr09tAa6zp4d/RL3CRvO
 RxRSL8YYHVepN/Ctm/MjC+IB1g5Q40fb5k6uXPp8cGRw==
X-Forward-Email-ID: 67ca2c4ec1763851c065cf4c
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <ef815b08-207d-41c2-a2d0-aeab70111761@kwiboo.se>
Date: Fri, 7 Mar 2025 00:14:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] net: stmmac: dwmac-rk: Validate rockchip,grf and
 php-grf during probe
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20250306210950.1686713-1-jonas@kwiboo.se>
 <20250306210950.1686713-3-jonas@kwiboo.se>
 <Z8oRyHThun9mLgx8@shell.armlinux.org.uk>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <Z8oRyHThun9mLgx8@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_151436_782047_E322AFB5 
X-CRM114-Status: GOOD (  10.86  )
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

On 2025-03-06 22:21, Russell King (Oracle) wrote:
> On Thu, Mar 06, 2025 at 09:09:46PM +0000, Jonas Karlman wrote:
>> @@ -1813,8 +1564,24 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
>>  
>>  	bsp_priv->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
>>  							"rockchip,grf");
>> -	bsp_priv->php_grf = syscon_regmap_lookup_by_phandle(dev->of_node,
>> -							    "rockchip,php-grf");
>> +	if (IS_ERR(bsp_priv->grf)) {
>> +		ret = PTR_ERR(bsp_priv->grf);
>> +		dev_err_probe(dev, ret, "failed to lookup rockchip,grf\n");
>> +		return ERR_PTR(ret);
> 
> Did you consider using ERR_CAST() for these, which would look like this:
> 
> 		dev_err_probe(dev, PTR_ERR(bsp_priv->grf),
> 			      "failed to lookup rockchip,grf\n");
> 		return ERR_CAST(bsp_priv->grf);
> 
> ?
> 

No, I did not, I only duplicated the same handling that was done for
the "failed to get phy regulator" case a little bit earlier in the
rk_gmac_setup() function.

I can adjust this (and the regulator case) to use ERR_CAST in a v2.

Regards,
Jonas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
