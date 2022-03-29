Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75874C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 17:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MWIfLBw19mk4fCVBrCrO44lIRSRf/t+xY3qhH1p3zmw=; b=faSJFSo+4EgiMi
	NSSDAZ9G7fRY9fgCGTFyeDw9SeqtSUz8W6ltplUgM3WVVbvMt5g7yyNGYjKLX+seoEluAb3DBn/lw
	6jeH31tuGBY+K2f2XONWVNgbsJ6oWvJcEUXQG2MhNV9LTRayE6IO+dEcHRrEaHr9mlE5drvlrCY4K
	Cw0UJSYDv8HvgHrWMOjzw/s74z9mhRjLdtQMV2u08XW96EJnW89gTKGFy/YigD6QgdTPEeIUuk/cd
	AdFBEnpyue5sKvMjEtKlI9x9MM68k1/xsvTJDmG/4BpZ/JvXgi1TtuPU3HOhxE14oIfxh0KKryo5r
	y5brmMDE7Ih8WaU0hPBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZFHf-00D1LJ-Qs; Tue, 29 Mar 2022 17:05:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZFHd-00D1Kr-4W
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 17:05:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A850261534;
 Tue, 29 Mar 2022 17:05:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 987BEC340ED;
 Tue, 29 Mar 2022 17:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648573528;
 bh=btnIAVCv9QrTXVbd0X5l88dYSHCYB2PlSI+Hh2kFE3I=;
 h=Date:To:Cc:From:Subject:From;
 b=hfBEUrepDoM6WBQjdSnXhKcCQiQBe2f3XSvo3rIuYEs4oNAaqx4tiXFgk1pLwnGxv
 2cyOHt6pLTum7FiA1DZLt4GNEQN+a5ROw77cxeVmpCW26PTZEyOewVTH8nDcRPN0PP
 SICBZjmNpkLGx9mD8hfuU8R99VYqhIFsaW0FHk92Vsu7u62PxGVJx2ljROHkR2foW6
 N7uWGD/E7f/rSir1I23DsEgUuOROJx6rGLxSP/4SGiEf5BlixdxtDwRInfXe4OE66C
 3MzIAiQ+6EIA1EAzv8qeaRV2Wiokx/N94mm+IZtNAf0lbYkPvzC6NuxYRnRhMYpLUm
 FB6yaj31GYHHA==
Message-ID: <ce367384-3d44-b7a9-06cd-1ca1f2ddf7e9@kernel.org>
Date: Tue, 29 Mar 2022 19:05:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
X-Mozilla-News-Host: news://nntp.lore.kernel.org:119
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org
From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: arm/rockchip.yaml - many separate entries instead of enums
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_100529_622986_100DAE7D 
X-CRM114-Status: UNSURE (   7.55  )
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

Hi Heiko,

I found that Documentation/devicetree/bindings/arm/rockchip.yaml uses
pattern of one board per item in oneOf.

This leads to quite big file, with many entries, although gives nice
description for each board.

I find enum-based pattern, like FSL [1], much more readable and compact.
What do you think? I could re-organize the arm/rockchip.yaml, but I
don't want to mess with your preference.

[1]
https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/arm/fsl.yaml#L191

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
