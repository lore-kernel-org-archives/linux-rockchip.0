Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57802C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 16:37:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6141D61354
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 16:37:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6141D61354
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=slVVGpJxbGxhivT9za1hiNFTBWcq3zUi1K64I0H8Py4=; b=Nc5OAPzn+Ci7TQGiRDazGTULN
	pzU99cAu+/D9cVWEXYyfSyMXNINZnDR0stoK5WxotOvMPxIy0qUuUO93vIwDK/EFhYqTtb8bYMdNX
	DdA1Han+AQhU3N09VhzPrqrMHXnJn6uDIdGY7HL9/QFuIetNV7tpPUlSQhhQmdEqANdrzaXa6tGH3
	6AsqH0vB5b9wZwi3nZdg9UGpnpqgs7yMUeKyz4DClMH9N7aBDZY4yf777YcKEJ16YZOBZDLJV6V/l
	sUDjrV7qrvo3u+/9zMZLdo9b2VCg6i24JFOq0MZYt+frs1aTFZ1uTIGUd6kIDdPEsSjfdmBGcVwEZ
	iJHngg7RQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhaot-008WBI-D8; Fri, 14 May 2021 16:37:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhaoq-008WAe-TC; Fri, 14 May 2021 16:37:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=uMiTSgAJ9Itk0koP+OG9U1rDJwfEibvr75OF/rlAgR8=; b=QI0yqwY2UyTEr8FhauQ8BbgmJ0
 UDBBQjkZcBn1BwzRvATd/1uxrTGqZ01mza5EbVNKibZxpbeWtbDXliWhkszeNyX9/Dm14GaiFzPSo
 M4zE9eZEQ6UHJi6mlKKoSi3Q8pWjcdUiTuYZve7AYJefPKmEwrsqQXFUsbmuVvOAej/bzLMigGvzc
 WQRRpbVbALyToPvpFVbybkxJQllGwOZ6Dtuz5M8Zoo4Whb+R9dNjqjLxmz3Vgow5JIj39fntXLZ1D
 0uTKpQxMqLlZJGHP2jkP21in8Q6JDLVh404bvcRPvuU0IrwfjKBslJfrJ1+nRGGnYQyfOqrKrUau5
 s79yk27Q==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhaoo-00C7h5-H3; Fri, 14 May 2021 16:37:43 +0000
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhaoi-0003p9-LK; Fri, 14 May 2021 18:37:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, linus.walleij@linaro.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 vkoul@kernel.org, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 cl@rock-chips.com, linux-arm-kernel@lists.infradead.org, kishon@ti.com,
 huangtao@rock-chips.com, zhangqing@rock-chips.com, jay.xu@rock-chips.com
Subject: Re: (subset) [PATCH v5 0/4] convert grf.txt to YAML
Date: Fri, 14 May 2021 18:37:35 +0200
Message-Id: <162101023435.2009214.882597722137585064.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210512122346.9463-1-jbx6244@gmail.com>
References: <20210512122346.9463-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_093742_581647_2B1399AF 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 12 May 2021 14:23:42 +0200, Johan Jonker wrote:
> Changed V5:
>   changed compatibles for rk3066/rk3188
>   add rockchip-usb-phy.yaml
>   move and restyle grf nodes rk3066/rk3188
>   remove applied patches
> 
> Changed V4:
>   revert separate schemas for each 'if' subset
>   add additionalProperties
>   move properties to top level
> 
> [...]

Applied, thanks!

[2/4] dt-bindings: soc: rockchip: convert grf.txt to YAML
      commit: f2ffa8f9e32d38f5c37e3c61c5b02d434057f3db
[3/4] ARM: dts: rockchip: move and restyle grf nodes rk3066/rk3188
      commit: a082a4ba218457fd52256e4357184b58d3fcaa49
[4/4] arm64: dts: rename grf-gpio nodename in rk3328.dtsi
      commit: 19486fe587b8ed17daf87a6419b51e3a65ce565c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
