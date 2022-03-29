Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B673FC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 20:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x4AR7eKRTOYEDfXX8BwlymkJ2S/vn6KMTizQ8wCxfEg=; b=0AfPVyaVlZxglF
	vr2WLmBvofsKd+v+OuL0fP2DM6iX+0Cj/3n8f9ShryZy/p+kE8lfnfKf46IDtWE+ik5aC+oOMDLil
	6qKHEYFqrR2KoPoEuGhMi2HGoUGSCB9RWfngzAw+ZdUbbL1B9ckDywlbTGlp3Z9W9SxxkWZkJN+t9
	/oF8S42BLki7lXw8qnHpwJdZbIvY8infYspGurxdPz3h7hORtLk3uzILj6MtjUueGvUF6VCdHhzDt
	rZis8siZJWNxGovhMLCRjcf9g3mCc/3GpfmGybeZKarswKF3XH3hnSgIFGURNqrPhx8BmPL+W5TMs
	hL5oA/yudfuhU9TMZWTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZIrZ-00DTTh-G7; Tue, 29 Mar 2022 20:54:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZIrX-00DTT0-9e
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 20:54:48 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nZIrO-0006gC-7o; Tue, 29 Mar 2022 22:54:38 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org
Subject: Re: arm/rockchip.yaml - many separate entries instead of enums
Date: Tue, 29 Mar 2022 22:54:37 +0200
Message-ID: <1681233.QkHrqEjB74@diego>
In-Reply-To: <ce367384-3d44-b7a9-06cd-1ca1f2ddf7e9@kernel.org>
References: <ce367384-3d44-b7a9-06cd-1ca1f2ddf7e9@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_135447_343007_11F0F504 
X-CRM114-Status: GOOD (  14.34  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey :-) ,

Am Dienstag, 29. M=E4rz 2022, 19:05:24 CEST schrieb Krzysztof Kozlowski:
> Hi Heiko,
> =

> I found that Documentation/devicetree/bindings/arm/rockchip.yaml uses
> pattern of one board per item in oneOf.
> =

> This leads to quite big file, with many entries, although gives nice
> description for each board.

that was the original intention in doing it this way, preserving the
normal readability while adding machine readability to it :-)

> I find enum-based pattern, like FSL [1], much more readable and compact.
> What do you think? I could re-organize the arm/rockchip.yaml, but I
> don't want to mess with your preference.

I do like the current way as it does only contains one way of doing it.

As far as I can see, the fsl one has multiple types, like the one you
pointed at, for a list of boards + one soc that works for the simple
plethora of regular boards.

But also additional types that do it similarly to Rockchip like the =

	"i.MX6Q Advantech DMS-BA16 boards"
directly below it.


As we have both cases here as well, I really don't like this mix
but instead really like to have only one approach, hence the
one-entry-per-board-family we do in rockchip.yaml [2]

For human readability I really do consider having _one_ way
of describing boards superior to mixing approaches and the
automated parsing doesn't care, as long as the syntax is correct ;-)


Heiko

[2] https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree=
/bindings/arm/rockchip.yaml#L507

> [1]
> https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/b=
indings/arm/fsl.yaml#L191
> =

> Best regards,
> Krzysztof
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
