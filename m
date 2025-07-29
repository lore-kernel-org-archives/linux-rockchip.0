Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C992C87FC9
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jul 2025 21:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cF2qWniXf/VBOSzQbQ83RQIU5pozPRc2yPJW33dSMaw=; b=xkUB8zg4zcP/6I
	oj8tdM7zeBn0PGyvxKfWfYQXD6oTp5MEEwiA12ptYpdrCORzAaBAdMbXrdiKFXSwtG1V8V1prM0AS
	NkfYEpQy2ao22RIPL9i+y7jwPmcvH3pnbJM3HcPiKzfhIQ7W0OBn8dyIsmChNLdRBJk+SnSbOhyXG
	TzmCFISiEYFWGLzwdSsWoBNX/fVmEL/N8mQfHLI49Mz+YvqC/kgceux+7J3TSSFxS99iJCU94Yk2M
	nDUwI8j/f9gFT4T2dYwvhog2v0fO7jte5uYE3JbcY3m9TOzHohbqJI97U8X0eU4Y9ecU/5GAVQ+94
	akIc1QVvyYl1Jgi4yKFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugrT9-000000005og-2Jt1;
	Tue, 29 Jul 2025 21:02:43 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugrN5-0000000059S-188h
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Jul 2025 20:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1753822585;
 bh=v+EFRhrySWl3zLJ7XlS9rNLMc1j/yRIrm57mAagtY1s=;
 b=mJrbyA1ble6/nphYpMi34e8bAqPqrjQGgsPeFyY4KyRAgI1tkIn7eAuGDYeB+82rC/vHjZFrA
 yN/GVOlAu/RqrLUeumdgzkvC6O/lwisuWV41gJvfdfXNnTwxdg9SID9GNKgrOVKGz1/DIEIpwEn
 DRmDLVGfO1Q5YhzCafBn6qsT6pUDqgPV1/7LHWeghQLe32BioUnJRwfTE/kyaz+ikdan3KQ3bzU
 CGZOJBnpvI9g9IzgoiRkyRcLhRXW04FZA0bXNoHYhdKDfL8yoY+L26roMGpGtdLLNcTHrhXl5u0
 QPzN1HBsHOup9caWsgaferOETO1mQ2qgLx8KcQxVfAXQ==
X-Forward-Email-ID: 688935605983c8a2f4b4a751
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.8
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <db1f42c3-c8bb-43ef-a605-12bfc8cd0d46@kwiboo.se>
Date: Tue, 29 Jul 2025 22:55:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add RTL8367RB-VB switch to
 Radxa E24C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: "alsi@bang-olufsen.dk" <alsi@bang-olufsen.dk>,
 "andrew@lunn.ch" <andrew@lunn.ch>, "conor+dt@kernel.org"
 <conor+dt@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "heiko@sntech.de" <heiko@sntech.de>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "kuba@kernel.org" <kuba@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "olteanv@gmail.com" <olteanv@gmail.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "robh@kernel.org"
 <robh@kernel.org>, "ziyao@disroot.org" <ziyao@disroot.org>
References: <5bdd0009-589f-49bc-914f-62e5dc4469e9@kwiboo.se>
 <20250729115009.2158019-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250729115009.2158019-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_135627_356529_C6B61DC4 
X-CRM114-Status: GOOD (  20.73  )
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

Hi Chukun,

On 7/29/2025 1:50 PM, Chukun Pan wrote:
> Hi,
> 
>> The issue is with TSO and RX checksum offload, with those disabled on
>> the conduit interface (gmac1/eth0) my issues disappeared.
> 
> I did a test today and the same problem occurred when running the new
> kernel on my rk3568 + rtl8367s board. This problem does not exist on
> older kernels (6.1 and 6.6). Not sure where the problem is.

I had only tested on a next-20250722 based kernel and on a vendor 6.1
based kernel. And similar to your findings, on 6.1 based kernel there
was no issue only on the newer kernel.

I will probably drop the use of "/delete-property/ snps,tso" and include
a note in commit message about the TSO and RX checksum issue for v2.

> 
>> With a 'mdio' child node 'make CHECK_DTBS=y' report something like:
>>
>>    rockchip/rk3528-radxa-e24c.dtb: ethernet-switch@1d (realtek,rtl8365mb): mdio: False schema does not allow { [snip] }
>>          from schema $id: http://devicetree.org/schemas/net/dsa/realtek.yaml#
>>
>> With a mdio node the driver is happy and dtschema is sad, and without
>> the mdio node it was the other way around.
> 
> On older kernels (6.1/6.6) only realtek-smi requires mdio child OF node.
> Commit bba140a566ed ("net: dsa: realtek: use the same mii bus driver for both interfaces")
> changed this behavior, both MDIO interface and SMI interface need it
> (rtl83xx_setup_user_mdio), but the dt-bindings has not been updated.
> I think this needs a Fixes tag.

Thanks for finding this, and yes I can see that commit bba140a566ed
changed the behavior of the driver and probably broke out-of-tree users.

My current plan for a v2 is to:
- include a new dt-bindings patch to allow use of a mdio node
- include a mdio node in the switch node
- add a Fixes tag to the driver patch

Then leave up to maintainers to decide if they want to accept this patch
or not.

Regards,
Jonas

> 
> Thanks,
> Chukun
> 
> --
> 2.25.1
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
