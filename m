Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C8B2C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 18:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zovzAOxgtVBtXf8WxVfbQHovl5hOxxsBgJqlYwO3bro=; b=mBAuD4jaCN9BTy
	o5BMW8q00GrJZpJn/zm/jqNTXSDIMkPAN6dkdMFLM3spcblM300G/6TM6XUGB+GKVvzFCHSILiTLJ
	eAck1WIVZlnge2KvytOtDbd7uv9+9HTzzlz6bYqdEoUGXLspcaUY+P2uV0y5oTyDRgrdlUl94SVCv
	tEfYl2HM+q3BST6oXWLhnIScK0Oz9EhWxZ3Q32Ox3bM7pwKo2U6gS4R3cAWhqzCVummbz6VJUF5mJ
	6LoIYixZvgzzjC2m3p6QVwtRREOWx4MMk/1YXfVx0h7VPBDf+XiNuOk+f8uuAN82m0B9UXE6i2I3I
	MoqXNyA/fqAagG9BsEoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sblLx-00000005wTu-2eCW;
	Wed, 07 Aug 2024 18:25:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sblLO-00000005wNJ-1kO2;
	Wed, 07 Aug 2024 18:25:07 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sblL6-0002jz-NF; Wed, 07 Aug 2024 20:24:48 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>, Florian Klink <flokli@flokli.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Muhammed Efe Cetin <efectn@protonmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 =?utf-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@protonmail.ch>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi on
 orangepi-5-plus
Date: Wed, 07 Aug 2024 20:24:47 +0200
Message-ID: <4124439.ReJHH8Nr61@diego>
In-Reply-To: <krvprzy3iz5b7n37eo2mb6sol6pcjkxsjdbdi6sxeebwveqtnr@e52cvrlkdjsa>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <a10e70e2d67b9d63f2296b36b4cb3719@manjaro.org>
 <krvprzy3iz5b7n37eo2mb6sol6pcjkxsjdbdi6sxeebwveqtnr@e52cvrlkdjsa>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_112506_516736_12FED928 
X-CRM114-Status: GOOD (  20.13  )
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

Am Mittwoch, 7. August 2024, 20:14:24 CEST schrieb Florian Klink:
> On Wed, Aug 07, 2024 at 07:24:27PM GMT, Dragan Simic wrote:
> >On 2024-08-07 19:00, Florian Klink wrote:
> >>This follows the same logic as 82d40b141a4c ("arm64: dts: rockchip: add
> >>rfkill node for M.2 Key E WiFi on rock-5b").
> >>
> >>On the orangepi-5-plus, there's also a GPIO pin connecting the WiFi
> >>enable signal inside the M.2 Key E slot.
> >>
> >>The exact GPIO PIN can be validated in the Armbian rk-5.10-rkr4 kernel
> >>rk3588-orangepi-5-plus.dtsi file [1], which contains a `wifi_disable`
> >>node referencing RK_PC4 on &gpio0.
> >>
> >>Signed-off-by: Florian Klink <flokli@flokli.de>
> >>Tested-by: Florian Klink <flokli@flokli.de>
> >
> >I forgot to mention that providing a Tested-by tag is redundant when
> >there's already a Signed-off-by tag, because the latter already implies
> >the former.
> 
> This came after I sent the v3. Generally I wish people would test things
> - though too often it's not. I explicitly tested this to work (with a
> wifi module added to that slot being unblock-able afterwards), and
> wanted to point that out, thus adding the Tested-by.
> 
> DCO 1.1 doesn't say anything about Tested-by, it's mostly legalese about
> being allowed to send out the patch, and understanding the consequences
> regarding licensing. It doesn't require the person adding their
> Signed-Off-By to have tested it.

While the DCO may not say it, everyone else will simply require it though ;-) .

Aka no maintainer will apply a patch without the submitter having tested
their change. This is just implicitly expected.

Like if it comes to light later that the change was not tested before
submission that creates quite a trust-issue between submitter and
maintainer on future submissions.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
