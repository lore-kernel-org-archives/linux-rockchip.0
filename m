Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0676C10F1E
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 13:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XytTD4pyeFwh8O25BfgOw3fIjKqho+KxN/LMpI+y/E=; b=P45gOAMfPMpy64
	anVtUF0R4xIDa7Q7ciDofYrxHuQZCVI9QQ/AFqAwC4q55pk9r4uuWJT2XE4HNpFxlk4bsBNnJJkQU
	ZHNE4Ylhg8q3dyMzXN/mOLBR7gOie4xy9GOjquJ69MK/cew3lUG9iGIGyrnehdpsCs8EXSzyDkdJL
	GKcL4vDPAQWFBBzI/ZT9GnhHa4Pi9u49sJdGW5PM/eLPLoRB8eFViAydmfDDK9vNKG5XOW6nbFTMg
	KK1vJSqcQG5Y1LudAGTh1VXA+LK5WdlJaZ3EIE2MJEWKtp2gPWe9sa1onZ2dZEO69mLTFt1WIBojE
	0CX+Z6pFLsnZUObhCFLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7d5Z-00GHzb-C7; Tue, 20 Dec 2022 13:55:25 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7d4z-00GHQ0-5O; Tue, 20 Dec 2022 13:54:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C6136B812A5;
	Tue, 20 Dec 2022 13:54:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 700C9C433EF;
	Tue, 20 Dec 2022 13:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671544485;
	bh=51j3DYi8PZsu2ybBFHEAX2nCHXBMVEEWlcDfMcYe4e8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=pU6+zDkb5cKgDWZhuAi9MjT8WLszi9Lp07cU4XVZnD+0Tg14V3BB0/q+QyaD8XTWc
	 3orwrwUMh78gDLH6b5vozEXSD/EKiYXt9xBkP9D0mbI+GUmahT4wNxp6MnigbwwoNQ
	 xPWk7rN0ri0YI0hUIGBiVxfNTf2GCjG/sIrA1OWR48GiXc9W9N8Y3omYn8U02Yw9k+
	 qEMA0lO64KDyxB4heR7MkFBxCPRA+KUOGcQgqGZ06Zyqx4541oEqpsHVyqsd/ijVdc
	 EJjAVSKOTyt0mYfUvKaf7iNGngQ8tO4EqEiREcBbV2jKwJuQdckbazPOyV4kNvImDH
	 NAKmRpBo6gLBQ==
Received: by mail-vk1-f172.google.com with SMTP id l17so5774214vkk.3;
        Tue, 20 Dec 2022 05:54:45 -0800 (PST)
X-Gm-Message-State: ANoB5pkK4yjcO3gQnwEMwTMu7Md+jz+OEa4Udi1IajwE5DhT/urqMhHk
	OLVdLxeBBICFung6/PMmiieUzqyQcl88HNtmDQ==
X-Google-Smtp-Source: AA0mqf4CTiHHWgyBY3CrYkE5S3j+xNstE0jPZU+DdqZ/nO+EaBdB9F5/87UaaeM+5CRZufhy9UOUFvc3xxEixGezAio=
X-Received: by 2002:a1f:2c01:0:b0:3c1:1c3b:c4d9 with SMTP id
 s1-20020a1f2c01000000b003c11c3bc4d9mr3491939vks.19.1671544484430; Tue, 20 Dec
 2022 05:54:44 -0800 (PST)
MIME-Version: 1.0
References: <20221219191038.1973807-1-robh@kernel.org> <20221219191038.1973807-2-robh@kernel.org>
 <87bknya5lv.fsf@balbi.sh>
In-Reply-To: <87bknya5lv.fsf@balbi.sh>
From: Rob Herring <robh@kernel.org>
Date: Tue, 20 Dec 2022 07:54:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLo4qZRTOu7UR_AN_jHNgiFZp39dsXYwWnD_njyDQfmAA@mail.gmail.com>
Message-ID: <CAL_JsqLo4qZRTOu7UR_AN_jHNgiFZp39dsXYwWnD_njyDQfmAA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: usb: rockchip,dwc3: Move RK3399 to its
 own schema
To: Felipe Balbi <balbi@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-rockchip@lists.infradead.org, 
	Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_055449_421857_56B24C59 
X-CRM114-Status: GOOD (  12.40  )
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

On Tue, Dec 20, 2022 at 1:37 AM Felipe Balbi <balbi@kernel.org> wrote:
>
> Rob Herring <robh@kernel.org> writes:
>
> > The rockchip,dwc3.yaml schema defines a single DWC3 node, but the RK3399
> > uses the discouraged parent wrapper node and child 'generic' DWC3 node.
>
> Why discouraged? Splitting those two separate devices (yes, they are
> separate physical modules) has greatly simplified e.g. power management
> and encapsulation of the core module.

Sometimes they are separate and that's fine, but often it's just
different clocks, resets, etc. and that's no different from every
other block. If there's wrapper registers or something clearly extra,
then I agree a wrapper parent node makes sense. Otherwise, for cases
like RK3399, I don't think it does, but we're stuck with it now.

Also, we have this pattern pretty much nowhere else and DWC3 is not special.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
