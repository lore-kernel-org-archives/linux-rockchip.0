Return-Path: <SRS0=eRos=EL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6170DC55178
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 17:37:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EAEA8206CA
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 17:37:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="WA1AlfCo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EAEA8206CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AI/edZhrgtQprT92xi1AMouh3AZuYYh++4Uz5TrTgd0=; b=WA1AlfCofI3guEwVBKKGWxaHW
	gTEJqJP+P3wwPDIkfO5m8pLyqNGY5A9VEVl4K1vZJu9XUNjLOEYgMGMQCGOK/L2Z0QROxUP2Z5JHX
	yy1mX9HvwNjzDu+yEU4Gz/9MJaxghKaTAhxiOnRsDtKBTBDBIDmGEgrGGUNYbNS5Ozgotev0+z3J6
	1x97oO9Exkd2egBDw4MazD8zYOC/BD/9owVz35+RHaBhg2YR2KGRc/oSjTz17+Q+FU8/4bUuNTPSc
	vrr/TW+1pYNqQyeqNC2KLUhbSOD0dgFQi2+UUNZOoSYE0zGucy6f3YfkDVrLIMlK/m2GkAYwff2fW
	tX+sZryXQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kajCn-0006hn-Mq; Thu, 05 Nov 2020 17:37:49 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kajCk-0006gS-Js; Thu, 05 Nov 2020 17:37:47 +0000
Received: by mail-ot1-f66.google.com with SMTP id k3so2166081otp.12;
 Thu, 05 Nov 2020 09:37:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SXNYkLqUKc8MTYanbRLkQs7GYK94sIP+QM0jXos7oP4=;
 b=tx51ZhC54zKQzlY+ZWYyVR+yK7StheWCHl3qIc287t6EHd73KB2NQy+OuHplYBe0yE
 ujNqhUOyAIBBG9WEQdfw4fSDlJJ5mOrdFv5L8Pl1lYKr8KdN9So8r0t2kZgFPQ5bDXIP
 wNqz7E2FG+Fkd8R060KPrV8L7u370zCgv7QUZnZSBLYYH1NCAqHOM3c8NgjS2rMysU+o
 twcAdcMD1gBZ7kg/qZLnq56fJ0xhNsRyf6s5kScH4uo/w8e7+mwBuRu3uYIF+R17M7HI
 +r15YeoURly8k6yfC8clhlGz5QYOLfidn1wy5vQ9u82lSRtcjDKnzTXOZ1WPyN2NXVPK
 iMSg==
X-Gm-Message-State: AOAM533cXlPdfthaQqyREraNYr0UrSDshnmykG81S/252E8fsoZKtJYW
 aZEZv4bas7MjoQSZ8Na5GRmj62usSQ==
X-Google-Smtp-Source: ABdhPJxAI1k0VyZC87x5xf42TVt2elJ+4+m1P3SWlidqO1VtVuRTtTfa4RTIGmga6gHm4DtZwSpt8Q==
X-Received: by 2002:a9d:12b2:: with SMTP id g47mr2337033otg.354.1604597865604; 
 Thu, 05 Nov 2020 09:37:45 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j10sm503462oii.14.2020.11.05.09.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Nov 2020 09:37:44 -0800 (PST)
Received: (nullmailer pid 1526952 invoked by uid 1000);
 Thu, 05 Nov 2020 17:37:44 -0000
Date: Thu, 5 Nov 2020 11:37:44 -0600
From: Rob Herring <robh@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] dt-bindings: arm: rockchip: Add Kobol Helios64
Message-ID: <20201105173744.GA1526923@bogus>
References: <20201102150658.167161-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201102150658.167161-1-uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201105_123746_703071_892794B2 
X-CRM114-Status: GOOD (  12.94  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Aditya Prayoga <aditya@kobol.io>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 02 Nov 2020 16:06:58 +0100, Uwe Kleine-K=F6nig wrote:
> Document the new board by Kobol introduced recently in
> rockchip/rk3399-kobol-helios64.dts.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
> Hello,
> =

> Heiko pointed out in irc that I missed this bit when submitting support
> for the helios64 board (last submission starting at Message-Id:
> <20201014200030.845759-1-uwe@kleine-koenig.org>).
> =

> Best regards
> Uwe
> =

>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
