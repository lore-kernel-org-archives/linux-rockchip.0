Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A875AC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Mar 2023 11:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjrC1TANlcQxFLmiYZ+24ZJQZIvJ51x5CPOdJdq8tsY=; b=qDbnXV15P8TAyj
	qD1fQGMGIq9mZDYIUzypqVrK8bHBc8hmmSnUHErkOs0FLLSKR9UMcd2LPG9COi1d7sb1xUpZZ5+/D
	9A/tp5YtPlPvOzwiwAXoKWA4Up1VIyOVPFubEqXewJuHt/929yGVJDhkswPQHjpe/LACBFXS5/lpm
	GatxxJZMpS/rrwI+O1sjIqtCc/qFR6ra46tRJPHCQvhx0QS7FgqH1M2v7ngpiP0LNjPY+DVHb3Ij8
	vKjHzFo7IOyvhzqjKZoxrLlLTFi6TWFt5M+qkKVSKin74BgnOfSuD1NuT7uZR2sY3dKhUmBuX5sUr
	Q440SHyGB1VoNUs2P0OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pg2Rc-006dcH-2F;
	Sat, 25 Mar 2023 11:52:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pg2RZ-006daf-1V;
	Sat, 25 Mar 2023 11:52:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DBEBB60C36;
	Sat, 25 Mar 2023 11:52:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64E77C433EF;
	Sat, 25 Mar 2023 11:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679745136;
	bh=S81O2f+uuTmPTwheCDEyFysXHkEUR3+b1qgwrMEBup0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IBYsba9Jyohl3v3hp+AEXp1EQUKY2GwfXLyl5PGKVRIPu4L44xbzNe7B5YT9p/UBD
	 kEgiOXQiikTN8ur7MS71R/V1P9JcYTMc3KpNRRU3wi0tDUPj5X1VG9yIbGvyha15Zb
	 0HPnT2s6a2KBgAMMvt74cLaKOqlHk7RMIg9aSR9dEwbu4bupwEIjHMpQ67KxMKHEfh
	 smLCsNP8nttxHMdi2u0kJiyma9N6Jd/+8uS+CI9mS8i29itoXO/1P62/k982V1POQD
	 n91in6GS40x5LyYb8i80lhVy00zmydqCvSM6Yx40REXVTLszTnhGbG9Az5DkGdDF/K
	 E6+wXhNfSoXcQ==
Message-ID: <b2fce18f-62e7-a374-2300-02ff2ae9935b@kernel.org>
Date: Sat, 25 Mar 2023 12:52:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/4] dt-bindings: Add doc for FriendlyARM NanoPi R2C
Content-Language: en-US
To: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Yan <andyshrk@163.com>, Peter Geis <pgwipeout@gmail.com>,
 Brian Norris <briannorris@chromium.org>,
 Chris Morgan <macromorgan@hotmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Maya Matuszczyk <maccraft123mc@gmail.com>,
 Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230325074022.9818-1-cnsztl@gmail.com>
 <20230325074022.9818-2-cnsztl@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230325074022.9818-2-cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_045221_543144_65CC75F3 
X-CRM114-Status: GOOD (  10.12  )
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

On 25/03/2023 08:40, Tianling Shen wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R2C.
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +


Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
