Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7AFAC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 02:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VROl9kPXOyPt3TfgDAD/IS4sck5lBU8e81J8y4np9fk=; b=ecQmz3+GBNrl7K
	gy4RpGMU2319WesQOcg6Pi8/fBQbmqyYy/dTaqISJIWGa5ccgxVoTcKUtNp1GRB2duT94S2O12YWo
	1UDgeAlgWZIN9aJ24LY+VNAZN+4sQBgwaDwCy+gD0UlhQoa4AitvVOk/yYAmOcNEjsjOBopl3uW1i
	nJJUjlPQq5jVu94WIXL43Bi/NJg0nScIIXsmOiJIzoR/6JGFC2TjAeEGCRGtqmKuueh6hjFNbjxpx
	cCXmLs7Z1XK1BF3vCJOwwoYWKGdnUrGdlESstDu7vv5X1fZbwzl4bc4peNAwSHSHpAyx47m9J3YBr
	ty6fdWFni6Lu+Xyl6Igw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxfSb-00D2yw-MF; Wed, 23 Nov 2022 02:26:01 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxfSY-00D2vs-CK
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 02:25:59 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-142faa7a207so6611270fac.13
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Nov 2022 18:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Zw39ngUcmQvDqOuODh6f5fgg1Tkhlor4Osj6vAaQPgk=;
        b=LyMSsK8Z1M8Dsqcn3MpyNfrFPnXUZI4Pat9aGmcNsrtALmgEi2Oa1HntUeThOl3ohO
         WIlIuHhIpZwS44QDoJmu5LXA0l+ti5Je7FIZ0R/gAHByQFGlHcKJlzGecUSZh5m41TZq
         r8Pk2cPAEZUeIE3ntC2ZJE4QO0pB4eRX/Z/u/TKB/0shNzUZwFHZP4T+A2a0FQYDGpEg
         ZEH5aPDQCox7atyQD+dGQpGFvGQcgMV8oDkMxz8AF1FBmtbqGHKAHK4XnQO4MyEGJbwL
         2rEd9sgnKtOktC1iWdXUqfIBknAvyTkc7eaLrjNQz9uYEICCUphF1E8aa6NLZFt3UWWV
         pfxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zw39ngUcmQvDqOuODh6f5fgg1Tkhlor4Osj6vAaQPgk=;
        b=ko+Tx3s5T3qVOOBYprZw95sNy9mcvmOPp+C3nTuIc1r/8YECvpTn7nrsst0GHqsbel
         lH2x4wm7IanEYMCJFo2HWru8ulu59wSq0dah5qAsuY8YQKPfp7zkxCNHzWXcJJXFcr4c
         U/1V9vzlHKifX5BckLkR4syRywOQPxa6sLJHWKlzmPvmAePLGqHus2Wt+oQeKIbiK5fz
         3MH3zivKf9iMiQlgASGGm07YBep6gkwGB2BVQSzudU6VhAizorN3UMMOi2HlHdMursBm
         9evJw2WhvCky45k4iXRvEISSY7NJaTJRzpanxg4ld97pwauvdlRtqsvXks20Rn5hKrvv
         FRvQ==
X-Gm-Message-State: ANoB5pl9ixB/bVf6n+KPe4Z1WiX3PYLXKcZfPz1hN7TIAQ2VC4kkcGhN
	g+Pb2QKBsNFqAOCOWRHhjzI=
X-Google-Smtp-Source: AA0mqf6HYLxsWJRnkmjbfwppF6y0CgmNIaHbnL/ciIoZ4eSjVa7kgz5UkaVgTo6qfGxIquN4R74ApA==
X-Received: by 2002:a05:6870:70a3:b0:132:75f3:1920 with SMTP id v35-20020a05687070a300b0013275f31920mr14736628oae.4.1669170356043;
        Tue, 22 Nov 2022 18:25:56 -0800 (PST)
Received: from wintermute. (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id j23-20020a056870169700b0011f400edb17sm8563059oae.4.2022.11.22.18.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 18:25:55 -0800 (PST)
Message-ID: <637d84b3.050a0220.bdd9e.1456@mx.google.com>
X-Google-Original-Message-ID: <20221123022552.GA14877@wintermute.>
Date: Tue, 22 Nov 2022 20:25:52 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	=?iso-8859-1?Q?Jo=E3o_H_=2E?= Spies <jhlspies@gmail.com>
Subject: Re: [PATCH v4 0/5] Add more RK3326 gaming handhelds
References: <20221117215954.4114202-1-maccraft123mc@gmail.com>
 <166915627084.1689466.2745573507429780699.b4-ty@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <166915627084.1689466.2745573507429780699.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_182558_466316_B3E854E6 
X-CRM114-Status: GOOD (  14.66  )
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

On Tue, Nov 22, 2022 at 11:34:12PM +0100, Heiko Stuebner wrote:
> On Thu, 17 Nov 2022 22:59:49 +0100, Maya Matuszczyk wrote:
> > This patch series adds Odroid Go Advance, Odroid Go Super(without
> > display) and Anbernic RG351M.
> > 
> > RG351P uses almost the same motherboard, and I'm not sure how to handle
> > it. RG351P DTS file would look exactly the same, aside name change.
> > 
> > --
> > 
> > [...]
> 
> Applied, thanks!

Late to the party, sorry about that. For what it's worth I was able to
test this for the Odroid Go Advance at least and everything tested out
okay. I do see a potential sound regression that is unrelated to this
change I will have to chase down though...

Tested-by: Chris Morgan <macromorgan@hotmail.com>

> 
> [1/5] arm64: dts: rockchip: Move most of Odroid Go Advance DTS into a DTSI
>       commit: 04ea3e30386e632c028654409e9a86c4c6b7accb
> [2/5] dt-bindings: arm: rockchip: Add more RK3326 devices
>       commit: 76eeb9b665d72ee53e5e93f154b23536f9d1c9c0
> [3/5] arm64: dts: rockchip: Add Odroid Go Advance Black Edition
>       commit: abba44b3e7c3f7530b607e8d2e2db96e6460fc73
> [4/5] arm64: dts: rockchip: Add Odroid Go Super
>       commit: 2f217d71aa89504abc9ab95286b807efaa03e11a
> [5/5] arm64: dts: rockchip: Add Anbernic RG351M
>       commit: 4e2347dbd618f88865408709cb7c06ab1f5f3f4a
> 
> Best regards,
> -- 
> Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
