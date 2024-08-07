Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63EBAC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 18:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J6wYbEHE/k4n5lbV6+QbU93oS05fmj7enCrc5RPZ+Zs=; b=G0cfpGNtZA7dy05mgv8/UwRjnS
	1fmXqPGfBFmtiq5qRPDaiAzkW5iaqMfYVp4XxJK6hsLXAP7Tip/bAxs22pPcIZvuKZud4aOJiT/KZ
	P7p1G1l8Ca6yFZB26imLRqT0ypVk0iiG8yXnbwOeWmZkwLIx4zW6V0YCED/CYt2/cHmQsAXTFd3sJ
	fQ8mfFc/iJUJLREZR/jrWynWKzr7Jl9wcoiiaKBRuVG3zUfrvpF4Ul4tBgarpjkTpSdFj1V7K/uyw
	P4ZSt4UrObn3bdBXZiYWGii4QlaZuN/nWZ2iSHf/9MrxWW7iGTRMnktiG0Jk0VmSzXF0G2wJ0c950
	C6RaAGLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sblBl-00000005uhD-2AYL;
	Wed, 07 Aug 2024 18:15:09 +0000
Received: from mail.flokli.de ([2a01:4f8:1c1e:e12f::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sblBC-00000005ubl-2BwK;
	Wed, 07 Aug 2024 18:14:36 +0000
Date: Wed, 7 Aug 2024 21:14:24 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flokli.de; s=mail;
	t=1723054466; bh=xYd/yJ46aF0NP74DrO2K7LXccRJQjOKUym6o/ViLWJ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ihtZZKD4Cuq6t9k8LK9hQLx5XJHBmIRsHUeOjrehazwZyjJ1MEiCC294wG9Gfaouy
	 2qJFXPAw5Ye3H39W9mf+87MmaQASbzTjci9EjxGzxhewP34/TVuwk8Dehr1x32846H
	 q10h4xM3Pq+PEaJzbUhI7N7qHQNfKFEVhacvDPgY=
From: Florian Klink <flokli@flokli.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Kever Yang <kever.yang@rock-chips.com>, Muhammed Efe Cetin <efectn@protonmail.com>, 
	FUKAUMI Naoki <naoki@radxa.com>, =?utf-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@protonmail.ch>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi
 on orangepi-5-plus
Message-ID: <krvprzy3iz5b7n37eo2mb6sol6pcjkxsjdbdi6sxeebwveqtnr@e52cvrlkdjsa>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <20240807170030.1747381-1-flokli@flokli.de>
 <a10e70e2d67b9d63f2296b36b4cb3719@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a10e70e2d67b9d63f2296b36b4cb3719@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_111435_027361_D934B44F 
X-CRM114-Status: GOOD (  11.26  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Aug 07, 2024 at 07:24:27PM GMT, Dragan Simic wrote:
>On 2024-08-07 19:00, Florian Klink wrote:
>>This follows the same logic as 82d40b141a4c ("arm64: dts: rockchip: add
>>rfkill node for M.2 Key E WiFi on rock-5b").
>>
>>On the orangepi-5-plus, there's also a GPIO pin connecting the WiFi
>>enable signal inside the M.2 Key E slot.
>>
>>The exact GPIO PIN can be validated in the Armbian rk-5.10-rkr4 kernel
>>rk3588-orangepi-5-plus.dtsi file [1], which contains a `wifi_disable`
>>node referencing RK_PC4 on &gpio0.
>>
>>Signed-off-by: Florian Klink <flokli@flokli.de>
>>Tested-by: Florian Klink <flokli@flokli.de>
>
>I forgot to mention that providing a Tested-by tag is redundant when
>there's already a Signed-off-by tag, because the latter already implies
>the former.

This came after I sent the v3. Generally I wish people would test things
- though too often it's not. I explicitly tested this to work (with a
wifi module added to that slot being unblock-able afterwards), and
wanted to point that out, thus adding the Tested-by.

DCO 1.1 doesn't say anything about Tested-by, it's mostly legalese about
being allowed to send out the patch, and understanding the consequences
regarding licensing. It doesn't require the person adding their
Signed-Off-By to have tested it.

Florian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
