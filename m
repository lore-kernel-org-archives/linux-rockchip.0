Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6604AC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 10:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xj/H/OJ9ooqKQIF9AG888KCcgaPj9AsPdP/qVxsJhI=; b=qvqeYBICtCwTD+
	3ITxamM8N07HBCW2bGeJihr95U35N4/RY08NmdZVWZ2wOZ+qwdTDzrgo2cIdGFZf0zO9JjfVQZ/5N
	uILOWiGx0qWqViGxLOmVK2n5cVdY/t4fYxsQLNkggAcpTHfgVmBHSKQk/AKhQQ/0I4R3IhjrrRZTv
	RIscT6XEDGCPJM02R3dX3dEbvdVyETIHjC0MnpHBXWmoP6gsgXFMihf4oHM+o/O2WylluQRBYrZl6
	eBMOj7VIbjUgi/CZEprY9FHuE+alT/rvaM1mVp8DUlsnNoWd3DYzIylbQOYMdR3FHQH408t2v/F27
	DW+QXw2KT1Rcxsw/n99w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9kbb-0038mM-8B; Mon, 26 Dec 2022 10:21:15 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9kbW-0038kH-Kt
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 10:21:13 +0000
Received: by mail-pl1-x631.google.com with SMTP id 4so10415458plj.3
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 02:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WASqzSCgjeGT/fukiuS6QON6/I6X0QmINUoYRtI17JY=;
        b=osa9H8a2saD9qFdVr+mysKOx/tnQaHlyzQXXRSGAIS2ixIJ2KrxjTCn7vxcuAZK+Ip
         OIgXvqHMcXFbaSqqiOQsbWYvxVrd2F3sDLcNScOGK/1lE9zuH5R3zYj9+8OBNX2Emv/1
         UJM35rjr7UbrHIUzXkxjw9BfDsMr6oq9d5Lvnnkh08WPXdFT87tYqYQoWjzJytvrLmsk
         yv422BcRzTjF+q3fn3XsbMStMgqjj1tp/RxjBIcoWTIeh9xiLBCrtTITmSlfVxB5FT+v
         GsQMpF0ecifaTP1hryKuOqq0VNwSoXN+zzCSSnbH/HynkGH5OuhmRyp+IIV4eITqQuO7
         TiNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WASqzSCgjeGT/fukiuS6QON6/I6X0QmINUoYRtI17JY=;
        b=KGBLOFcwQUSYgwyaC0Py4Vh3lV0RzXTrEm4sZou/bDBML8VBiWjL1gDO5AWiynTS/S
         701k8Y3NF5MUGn1QV9KMo6SZ+LlAfXHqLYziHlhLn7XQKjitODKmOQHXx5PDAAdDwUtx
         b3VnyriT6bsKlemVEXFh7zofmsk/EXEB03zuYbjd9knVbg8JJuzxO8QhO4h08Ps5Ufdt
         PR8QMlnG9/G2I1jnIzaAJmt+W51enFsODmHqveG1Ug4DPS78yHok/ctHHPWP+bmKMeGM
         9Eo/pUsKH3a1mRXRc6UeBzVQiGf9/4in9cIRkh6vFAHQ4jB+i0xlO/hu6M4/4SCcmseL
         31zg==
X-Gm-Message-State: AFqh2kri8SL9lS63CGynzKF/Tbfu3P8f7WC55ZPUsxCW+1pllib5wCNj
	Ujh9e7LR5hSkwW8SUXf9P2RmtSFL9uiG5AyWP52YeA==
X-Google-Smtp-Source: AMrXdXvdKwcLsuJS3kb5PPVbhahfhIzd1JkGVuX5RoTbk+ukjSOnB8pJu2t1iBGNfLjl9R2ATsYkspQGHhdv8HEX7JA=
X-Received: by 2002:a17:90b:1955:b0:224:0:8766 with SMTP id
 nk21-20020a17090b195500b0022400008766mr1785678pjb.199.1672050069589; Mon, 26
 Dec 2022 02:21:09 -0800 (PST)
MIME-Version: 1.0
References: <20221226063625.1913-1-anand@edgeble.ai> <20221226063625.1913-4-anand@edgeble.ai>
 <CA+VMnFz3JTJt7pYsMcKgt+cqbHNg=f0Tofrp-wgcj-51wkdxUQ@mail.gmail.com>
In-Reply-To: <CA+VMnFz3JTJt7pYsMcKgt+cqbHNg=f0Tofrp-wgcj-51wkdxUQ@mail.gmail.com>
From: Anand Moon <anand@edgeble.ai>
Date: Mon, 26 Dec 2022 15:50:58 +0530
Message-ID: <CACF1qne=B535bH1aqjUa6MY72kML4zjvf61_LuE1jTrjEfW_eg@mail.gmail.com>
Subject: Re: [PATCHv2 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable
 Ethernet for Neu2-IO
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_022110_803841_C6E705F1 
X-CRM114-Status: GOOD (  16.02  )
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

Hi Jagan,

Thanks for your review comments.

On Mon, 26 Dec 2022 at 15:22, Jagan Teki <jagan@edgeble.ai> wrote:
>
> On Mon, 26 Dec 2022 at 12:08, Anand Moon <anand@edgeble.ai> wrote:
> >
> > Rockchip RV1126 has GMAC 10/100/1000M ethernet controller.
> > Enable ethernet node on Neu2-IO board.
> >
> > Signed-off-by: Anand Moon <anand@edgeble.ai>
> > ---
> > drop SoB of Jagan Teki
> > ---
> >  arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 37 ++++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> > index dded0a12f0cd..bd592026eae6 100644
> > --- a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> > +++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> > @@ -22,6 +22,43 @@ chosen {
> >         };
> >  };
> >
> > +&gmac {
> > +       clock_in_out = "input";
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&rgmiim1_pins &clk_out_ethernetm1_pins>;
> > +       phy-mode = "rgmii";
> > +       phy-handle = <&phy>;
>
> arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: phy@0: '#phy-cells' is a
> required property     From schema:
> /home/j/.local/lib/python3.8/site-packages/dtschema/schemas/phy/phy-provider.yaml
>
Ok, I will update this in the next version.
> > +       assigned-clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
> > +                       <&cru CLK_GMAC_ETHERNET_OUT>;
> > +       assigned-clock-parents = <&cru CLK_GMAC_SRC_M1>, <&cru RGMII_MODE_CLK>;
> > +       assigned-clock-rates = <125000000>, <0>, <25000000>;
>
> Keep them in sorting order.
ok,
>
> Jagan.

Thanks


-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
