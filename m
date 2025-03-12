Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71301C28B2F
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AutLHmQ68qoPsrxKIrtuAmgseNSt78COJUAxIrbEZYg=; b=X6xOTK8cK0zwuw
	p44HFd7WnHhExuD1kdbmiyNt30//cFEmwnSzMEqPHsomApSYMzhfG6Sc68qbJpRlg36+XCdMyNYyb
	xY+lgbGip1yB4ahsYbVRqB6VBavGehd6jgQc1ghCqQa2hBuT1p2VYgQsiS+O+xnywT/+ZiMNJuPm8
	yhJU2W8hnYjOQ7Ijbz4x+PJKMjEh2feLSu5KUj5dColavjV4QaxMKcH1BeeKi3sdgT9y9kF0tBwvx
	eVD4CZnGptzisZAFppF2bv72jioFPAcTxA58tuM/orIeqgIc1K9cB3yaN2kpMCRs/DAkA3ncJ30KG
	ywftQgkWPfD/jjSn3Xxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsNt1-00000008pyz-41h7;
	Wed, 12 Mar 2025 15:20:47 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsMnk-00000008f9Z-46u5
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 14:11:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741788675;
 bh=FK77bkIxkuIQ2RaZVUX+w+kEVUOJvqyQlYfCNDo4oio=;
 b=N+5GQbs5G3Aw8QEJUeFTaEMHtZs15hVCWNh9aPKODwgqs8nWCRZ7p+iRq1CD7jt/hp8PvbKbS
 O+zJtDFV4D9+7ORk+gew843oMij1JzUPsl+4elkue83BPHVdsZK8O4FIHFH3jRTfHT7KhJVyxrh
 x89YUvIo9G2boOL7PuptH6VZ4i9Vg7sZo09AYehXCyVBq6pNUgRnm6xj4QSlOfq42gSL/fx2mmI
 snu4vOgXbxbxxRTv4XR3YqUO1+dqDejyIW/1mEid7bEZDA9sxU6BzCHBZXNSk2cmpS/6Vv63UHl
 d4mhSXdff2xryC4jpVD+Sn0teD5dzoa17+TsSWMjs3HA==
X-Forward-Email-ID: 67d1939ea3842b4a6f18c3e1
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <a5ec9062-ca57-4748-8c0f-fb5b9c75fa28@kwiboo.se>
Date: Wed, 12 Mar 2025 15:00:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH 0/2] arm64: dts: rockchip: Add pwm nodes for
 RK3528
To: Heiko Stuebner <heiko@sntech.de>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Yao Zi <ziyao@disroot.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20250307120004.959980-1-amadeus@jmu.edu.cn>
 <174176555637.249409.2785731072183565436.b4-ty@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <174176555637.249409.2785731072183565436.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_071117_068254_F89865CC 
X-CRM114-Status: GOOD (  11.00  )
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

Hi Heiko,

On 2025-03-12 08:45, Heiko Stuebner wrote:
> 
> On Fri, 07 Mar 2025 20:00:02 +0800, Chukun Pan wrote:
>> Add pwm nodes for RK3528. Most rk3528 boards use pwm-regulator to
>> supply to CPU, add node to enable them. The PWM core on RK3528 is
>> the same as RK3328, but the driver doesn't support interrupts yet.
>>
>> Unlike other SoCs, pinctrl-names need to be in "active" state,
>> I'm not sure about this, but otherwise the pwm-regulator will
>> not work properly.
>>
>> [...]
> 
> Applied, thanks!

The pinctrl-names should be changed to "default" and not "active",
something you can fixup or do you want a patch?

In commit 96d8d3253246 ("arm64: dts: rockchip: Fix PWM pinctrl names")
similar issue was corrected for current rockchip boards.

Regards,
Jonas

> 
> [2/2] arm64: dts: rockchip: Add pwm nodes for RK3528
>       commit: 2973d077aedfc114affab96c3b2c7286163cc8c9
> 
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
