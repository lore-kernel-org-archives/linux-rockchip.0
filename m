Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6AACC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 21:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WzIi9FqHKYcLNWXbqaG07tBmjytfjZzy+/b1COATo0=; b=qV+l1sKSOlhdev
	EJ92/6z51gukhkE5V/g3u1D9eiksnEK0vyXFY7Ubim/Wbe1pkhyWvFIPuDpYTDfFUo6KhO1EGjHXG
	fmqci8wduHl+xdA7L8Xp+D3HSkvTmQr/9EgcTznQbhKHw/6jb4YoVI9A2emOb4YVABp3tNcKuw+hz
	//awtirUITuYfj5JrclHI9Jk0f7J+U5P2/3XcJkw5V3YdY6ZssXGYMBbRxcGnf9zH5JqtXtARkbOj
	nqt5zSbC2nKRELM40xCy/+tfDMSAEH4Se275bB/CUtJdnywZyIB4B3xZFeOU14FEQsLT4g6LvcQQk
	OnJ/MCxaiAeRDQlS7XDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOnha-00EBFu-3y; Mon, 28 Feb 2022 21:37:06 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOnhW-00EBEf-97; Mon, 28 Feb 2022 21:37:03 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id j12so23265615ybh.8;
 Mon, 28 Feb 2022 13:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=49RK8fagkzciDmeTkIUa5Y3PaFfL+9gEC9qTeysrkEw=;
 b=Ghc7xyANaUfo3Im8KlGsbHeju/J021WzlgH1XO1+kLhmTwKg6MNa/M/s0wk0QZGJD2
 WjUQcbo2GTyyM6cVHIIb9e9UJTP337Megzc732e3+RfgCvGsevshLw4O34Gev3WM9Iof
 jZ9ksLwhVpDHok8/b5/Ly+5YDywsL852fI5vux7vHc+fQI8lZCjYNvPK673nxBFRIfl4
 7e3X/tHZc+ya/S4KDiIWv0NZha6Npmbx8L7oja3t6QFEaRjqZXocKTnUfcBt7Ucn1/ln
 vA5Un2vuavYPXjxyxs5n/554nrZ76YNRQrSFbKgxNC70ATbbWqtoqSc7npPg4n7T2cNi
 tuVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=49RK8fagkzciDmeTkIUa5Y3PaFfL+9gEC9qTeysrkEw=;
 b=IDrCXmE2l39c5hp9mTfHblt5lIs+paiViYFk/BLXGXQEJ5SBMABzwCJTWv4JNZdRFT
 0HONptQgkPfYKKA3d93Y5rEXcctHv4xTbGY9CcOTi7hV0l9jOiErePCyg8XACB6+wpWv
 4NbtSfmHSSduJ2JmeSumKU0ns4Ru+hBcvi0jV1Cqy9Y0XZCl9C50+OU4sQP+BjYCCXnc
 MYb/CUuBizmjqLdtfXndvoj86NLXJJLwICjKpvQ4WYj47FoW2xPJo/xT1zvqB3Y4olJq
 Ut32I4pRKlq72AeCnM6FxE/94oxEHuHHgKW0SQoMZPlxzkymjlWjkmo3T+WwckDkp0OQ
 6+yw==
X-Gm-Message-State: AOAM532LjiU9xOhsQsDs5ruvHFdyA9ZFvWhwSKmPbHcJZowl4291d54+
 dd1CCjiliFCG4ysO1CzB/MuSCOi8ecm7sVcnHnM=
X-Google-Smtp-Source: ABdhPJwiasc5SG6oyWvTcvWy37s6zd5KJrMwEeLlNDItpQ1esBIXssG8lOe7GAJYo0dA1LW/S2a+CMvmww/+rJBVEx4=
X-Received: by 2002:a25:268c:0:b0:624:b515:5859 with SMTP id
 m134-20020a25268c000000b00624b5155859mr10899928ybm.232.1646084220065; Mon, 28
 Feb 2022 13:37:00 -0800 (PST)
MIME-Version: 1.0
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
 <20220208091326.12495-3-yifeng.zhao@rock-chips.com>
 <CAL_Jsq+1ixfw4+pwPcM5azPdC_4_bYCPu50jUvKnVMr6dSncpA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+1ixfw4+pwPcM5azPdC_4_bYCPu50jUvKnVMr6dSncpA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 28 Feb 2022 16:36:48 -0500
Message-ID: <CAMdYzYryTb4Gvv3XENgUOSrutr7S-5a7GOMRahXWWZOeL1qKWA@mail.gmail.com>
Subject: Re: [PATCH v8 2/4] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
To: Rob Herring <robh+dt@kernel.org>
Cc: Yifeng Zhao <yifeng.zhao@rock-chips.com>, Vinod <vkoul@kernel.org>, 
 "heiko@sntech.de" <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>, 
 devicetree <devicetree@vger.kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Liang Chen <cl@rock-chips.com>, 
 Kever Yang <kever.yang@rock-chips.com>, Lee Jones <lee.jones@linaro.org>, 
 wulf <wulf@rock-chips.com>, David Wu <david.wu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_133702_359791_E13CE5BF 
X-CRM114-Status: GOOD (  21.26  )
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

On Mon, Feb 28, 2022 at 2:18 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, Feb 8, 2022 at 3:15 AM Yifeng Zhao <yifeng.zhao@rock-chips.com> wrote:
> >
> > Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >
> > Changes in v8: None
> > Changes in v7:
> > - remove u3otg0_port_en, u3otg1_port_en and pipe_sgmii_mac_sel
> >
> > Changes in v5:
> > - modify description for ssc and ext-refclk
> > - remove apb reset
> >
> > Changes in v4:
> > - restyle
> > - remove some minItems
> > - add more properties
> > - remove reset-names
> > - move #phy-cells
> > - add rockchip,rk3568-pipe-grf
> > - add rockchip,rk3568-pipe-phy-grf
> >
> > Changes in v3: None
> > Changes in v2:
> > - Fix dtschema/dtc warnings/errors
> >
> >  .../phy/phy-rockchip-naneng-combphy.yaml      | 109 ++++++++++++++++++
> >  1 file changed, 109 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
>
> This now fails in linux-next:
>
> /builds/robherring/linux-dt/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:
> syscon@fdc50000: compatible: 'oneOf' conditional failed, one must be
> fixed:
>  ['rockchip,rk3568-pipe-grf', 'syscon'] is too short
>  'rockchip,rk3568-pipe-grf' is not one of ['rockchip,rk3288-sgrf',
> 'rockchip,rk3568-usb2phy-grf', 'rockchip,rv1108-usbgrf']
> From schema: /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> /builds/robherring/linux-dt/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:
> syscon@fdc70000: compatible: 'oneOf' conditional failed, one must be
> fixed:
>  ['rockchip,rk3568-pipe-phy-grf', 'syscon'] is too short
>  'rockchip,rk3568-pipe-phy-grf' is not one of ['rockchip,rk3288-sgrf',
> 'rockchip,rk3568-usb2phy-grf', 'rockchip,rv1108-usbgrf']
> From schema: /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
>
>
> The problem appears to be that patch 1 was applied incorrectly and the
> compatibles ended up in the wrong section (the one requiring
> 'simple-mfd'). Patch 1 probably conflicts as my bot will just skip the
> patch if it conflicts which is why this had a different error report.

Good Afternoon Rob,

This is fixed in the first patch of my rk356x dwc3 enablement series:
https://patchwork.kernel.org/project/linux-rockchip/patch/20220228135700.1089526-2-pgwipeout@gmail.com/

Very Respectfully,
Peter Geis

>
> Rob
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
