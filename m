Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90077C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 17:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+VyjebR49KhxKWznoGdg8NEVRZ9XsXOyKZYzKrPWhI=; b=UtP66uarZmsP4R
	lBMEQG4053a0AIa7EoigBumAvLyDAZiyjQ7ovS8GF2kmsHAzIz+ddO4Bctl86CmUwu4q2mwnacKzY
	1QUi31RwRkOKEEzu+gW3MMri3D5TllL7FocngSONLTrDOmIdVR8WrdvmVOfV0aIc9OM4nkMTLLoH4
	18+e1LDZjIt3abMaDX480a+ECH1eivjpP6Oq3Afyq2xTK+Lf9WJwe0vSnSPKPozkM91ljeKsxV9c/
	upfjFoTbnJBSnQVnu4y15WaEFwgGF/t4n7sd+0s2fDJi13qtNYAXHYyjS8wZbfNa7GAAQvLsdsxUF
	FdoSQgXAD0Q5BIM9k0xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPSP0-003Rqv-S0; Wed, 02 Mar 2022 17:04:38 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPSOn-003Rm8-DI; Wed, 02 Mar 2022 17:04:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 137D6B82104;
 Wed,  2 Mar 2022 17:04:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 358E7C340F5;
 Wed,  2 Mar 2022 17:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646240661;
 bh=Icqzp9SWIKc87+ugA8V1Jg/Egl5KGIZgDSmOGMm1YjM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XlN89rRBvF+GlGzocnWiX3bxrAI2gW6UwYY9sVM2abvIaNKse/VLFty1vRTc36Lnb
 SSdHHvC8+2f2xs+Ai+f5bVGIc8xGogCj6Xyb3IQod3sJNXMpuMbh4JtLyo9FuyGkdw
 QeBMia/6AvkZY4fLDs3RGxSd9SeT98vWiiplnvECmf9Llo3Gs8qymYHZUxLFsgwJYU
 tv+h0w8B4RKHuO09aJMWRTYACMp+HDRufCp5FtTLwnLm4Bcwn/PmxRjlHgSf+8G+tN
 O847KYrkTuVKbaDKHuhpSwE9AdztBEOaKZZFVcGY81gCrxvtANDYA62iBj0dPtefFM
 p1yp2/FLiHc5g==
Received: by mail-qt1-f179.google.com with SMTP id u28so382343qtc.4;
 Wed, 02 Mar 2022 09:04:21 -0800 (PST)
X-Gm-Message-State: AOAM5312PKdiz8VDuudADDZTwWAxhm+4T6/m2a+QPmcDky74sImmwyIF
 Pe34b8vH+qWeazBdCWuVQI7CLh8I5NNz5yuZUQ==
X-Google-Smtp-Source: ABdhPJzVh9qPRrBt75o8AJLwWVKH7Kq5B4Apg3LHn1XCzh/s46oA4VubuT2CvtvTNnOdmGBFZvtsF8c7sASSb8loYU0=
X-Received: by 2002:ac8:4e56:0:b0:2de:7120:61c9 with SMTP id
 e22-20020ac84e56000000b002de712061c9mr24266586qtw.684.1646240660169; Wed, 02
 Mar 2022 09:04:20 -0800 (PST)
MIME-Version: 1.0
References: <20220302143427.447748-1-vkoul@kernel.org>
In-Reply-To: <20220302143427.447748-1-vkoul@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 2 Mar 2022 11:04:08 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJMZ8PHqJk6drNbNHprmfeV9UvJzJnech7sz_JwcdbckA@mail.gmail.com>
Message-ID: <CAL_JsqJMZ8PHqJk6drNbNHprmfeV9UvJzJnech7sz_JwcdbckA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Revert "dt-bindings: soc: grf: add naneng
 combo phy register compatible"
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Peter Geis <pgwipeout@gmail.com>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, Jianqun Xu <jay.xu@rock-chips.com>, 
 Tobias Schramm <t.schramm@manjaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 devicetree@vger.kernel.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_090425_631317_43BE1A30 
X-CRM114-Status: GOOD (  11.69  )
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

On Wed, Mar 2, 2022 at 8:34 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> This reverts commit b3df807e1fb0 ("dt-bindings: soc: grf: add naneng
> combo phy register compatible") as that was wrongly merged, so better to
> drop the wrong patch
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
> I am applying this to phy-next to fix the issue

Reverting will just cause a different warning that it is undocumented.
The fix in the other thread won't apply either if you revert.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
