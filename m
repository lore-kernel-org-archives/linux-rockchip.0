Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A24FBC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 May 2022 09:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyCX6n/z3Uzl/Y75G0FVqZAfNzKPGvHpi9mw/6ZC8Ec=; b=0+8w7jEhDI+UUr
	x7R1JRpc8Y5qJ0fTj6bDrirVQ7agBtUcP83lGAuLRG9Fs+5pjfwH4eRbm6vOoWhkmds5bIM2r0/LF
	HnQmxZFzwTm/l1zoYfYbH5Ipjikw81ct2X11P1Fn1wpfQST1Im94x1H5ti8wTXZS45015rJbytgAL
	JQXDxAdUGiZWWxpp55E1yaoQJQnYGYd5RcRWXtJz/pYLzp4sC6LYaImxvi0OLiycpbU5DMcN+zrSx
	uNln7SUtu2s+ybP+6M4JSS0I/GQ7+aNPTA18bGXDCqLQjjwcQgNnBaS0Vsc5S+jkbQw7H58YNzWj1
	CJ3xkNikbz9C9eQCVemw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlSlO-000i7q-HA; Mon, 02 May 2022 09:54:42 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlSl9-000i2N-A8; Mon, 02 May 2022 09:54:30 +0000
Received: by mail-yw1-x1134.google.com with SMTP id
 00721157ae682-2f83983782fso142162987b3.6; 
 Mon, 02 May 2022 02:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rm5y2VGJTWFrVHSZWCzBm857+oeS1xdAmQKPrG4us9c=;
 b=G4/pFOkcv8dblCepyt5JRYdgApZbRixM4pMGN8R7c3Aw9LSLIbbel8p7kMM7yYzkxz
 W/tXW3d9FgqOjIXpMLHnTKtv5/M9rvMsgp+jdD+rHrA9Vv/TSfWqarHaIpGyxAiwObc+
 BshyAPoUfHprooVB3xaQZoC1LmuEYmYgTUiECXmk3sqxW1LUFUrymx4ehnSQVK53hgDG
 7sD6hDk/aV91/+YGShTmD6LXlIVgeyhok7SscsTNTnem5O/ulAzuaG8pLtySHsXjfew6
 HLIDj5Rzau5qZ95pmZs+vSEKeFQP6sNmqQik+uZkY0T1NLd9Palt8tdwT89mH7BWPfSP
 RhMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rm5y2VGJTWFrVHSZWCzBm857+oeS1xdAmQKPrG4us9c=;
 b=TLGJIuHrXa5XOSc+tWtFyUZxn7Ff8nUK27JpGuDW+fj6EaDaEZUrrCEJHFkRStKVaC
 UPYaguct+6JmEGWufsTfDK3SnTmpsnFaCwROYEb/egawXstMwgg2eKEQbXIL/qGlCoR0
 NnMW4N0Sl9sW+kab6mbtg6AQ7SHrLl1JJsv/+iKUpkmAaIfDwWkA0oVSvTqvBqz0ATTp
 IZ7mb+AyHQUmpeSQUeooz05qOmD+gd7Ym3uVujzUF9eXhgNABjCMegAH3+Bb+kl/ZBK6
 Pzlg6hvSQiYNgZXTC5D4c8cMLFi0e4F/oapOJFo6Cnx9eUjwMh98aYv7Ol3DmI8q5ORS
 bVEg==
X-Gm-Message-State: AOAM532lEKYeNwK7HwRxQnRnk7y9l1BNn/XXmucEzddFRq9OkRZ43rLS
 8yGvm3pOjCJnROsQtbNZblC4EW7ZmZAi5WABGSNV2h92
X-Google-Smtp-Source: ABdhPJwPlRu37+zQnM1BhvYdKxzN7inRAlkIq4zm7BUcA5W8k7fS4Li/wTQfp6NyJ2HNdki8VA8XGdm5L/vKve6OQmM=
X-Received: by 2002:a0d:d953:0:b0:2f7:d5ce:f204 with SMTP id
 b80-20020a0dd953000000b002f7d5cef204mr10337039ywe.502.1651485263663; Mon, 02
 May 2022 02:54:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220502064551.202613-1-michael.riesch@wolfvision.net>
In-Reply-To: <20220502064551.202613-1-michael.riesch@wolfvision.net>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 2 May 2022 05:54:12 -0400
Message-ID: <CAMdYzYrChKVwuGj=VEc=T4Gez-Bs647GxaeMsdbgvU_6p3FeEg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable otg/drd operation of
 usb_host0_xhci in rk3568
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_025427_418798_E626E6AD 
X-CRM114-Status: GOOD (  19.17  )
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

On Mon, May 2, 2022 at 2:46 AM Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> This USB 3.0 controller of the Rockchip RK3568 is capable of OTG/DRD
> operation. Enable it in the device tree.

I think I missed a conversation here, the xhci0 controller is the otg
port for both rk3566 and rk3568. The only difference is on rk3566 it
is a usb2 only controller, where on rk3568 it is also a usb3
controller. It was set to host only because my original phy patches
didn't support otg mode. Since then Samuel's series fixed that.

Your original patch was correct.

Always,
Peter

>
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
> v2:
>  - As pointed out by Nicolas, this is RK3568 specific. Moved change to
>    rk3568.dtsi.
>
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 5eafddf62edc..bbfe8f3d68b7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -134,6 +134,7 @@ power-domain@RK3568_PD_PIPE {
>  };
>
>  &usb_host0_xhci {
> +       dr_mode = "otg";
>         phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
>         phy-names = "usb2-phy", "usb3-phy";
>  };
> --
> 2.30.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
