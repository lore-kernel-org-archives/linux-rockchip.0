Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D59CC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 19:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9W3zNqXuqB/WJ/76rv7LhmPJZBJRpOLXviZNwvjhB1E=; b=35XA27DjszEY8A
	0lDOS3hVgjv601qRmp61HIKY63F8GMtqggpBAqR/1HtOBNKIw4mIrlIWL6JIwG+LUw7xL5E2YjYxu
	+orVSSvpK/HZqwv8uUYBFei+QulLa8K4e+Pl5hS6E3fcOpuW2WkkQ907pd84zoaTZJVITLs97WGWB
	QXidAbgGLmpqPU0JyCYiGkFH6z2uSG/2vDplCSo5Jvv/DP/o3UWgYcTZOaltDnAZrlQSA0dDqbreq
	bQOHLeroSf/MnknvW/muGs+nu8PVIhVERmOWHEA/y3GULsDS05tjM2OMRnmQMIrGzKXyvBrEjbY3T
	iM7q97GV/8cPvlRo/j1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofnyM-00AqiW-RL; Tue, 04 Oct 2022 19:52:58 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofnyJ-00AqgV-HX; Tue, 04 Oct 2022 19:52:56 +0000
Received: by mail-wm1-x32a.google.com with SMTP id iv17so9588050wmb.4;
        Tue, 04 Oct 2022 12:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Lf/FF/9SYo3o08dhujm/+mRrD5yIfHmp24VtbgWfiQg=;
        b=JTNqoucW88MzuWpMd8jGLVmbLlrQflfsQPSZY3xPlLZRf467EDEbKym7aqC/352q3N
         7csvxiGvkksL22I9qDHVMqVx5zDETp34UOItMDJ8+UcNWhjZxgfODniCZqKzpKOtW6rZ
         EIkG9BlK8EGb/L8RWTR/6z6ZDn1YEhiZQKxs503c0u7LN1zQBbTrmQw8Rv32EqBHXO/x
         +WJRIPzYQCqSkfe/pnUb68IXvHX5jyV90ka2LgPwNDMc2wwS7ryxusogLQtYKCKiu2TB
         0IfzgfutreVTCvv4y/GVVfQ5XjrJhmPt/AmYTq1W70K6b9Dr7xxiDJcFYyyAG15zdYTN
         +Hww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Lf/FF/9SYo3o08dhujm/+mRrD5yIfHmp24VtbgWfiQg=;
        b=7KwgOABvISI/0+W+iY1zSKTMueoaFGHY/PH+cSFrHfzx5ygyYRwdxvmtJLu+EEj+iT
         3lSBeXEOzqzZfCy6iSYDK+Lw5i9S6U1U0JM6D9lJlhRp+2t2Z2cmD7UIZ3V8NeKexUEi
         Rt/rPPix/bH0kQZQQJra0FVfi2ktix7GXScsP4+tg5xVb9gKIANDVbRYogRWLyIj8Vox
         GqPoS12twIxTPGooOVBWk3LSTQ2fapJBGCaAcxBji/fiDEPRFTlMI4EcpI0ByDBOzO+6
         0YpoM/nhJ2NfKQeBhPVwNPsEaTl4LXWPvbeU1VcJiSX7pdvgDElIKqLiaoikrYcKK95L
         HyLQ==
X-Gm-Message-State: ACrzQf15XpQaXMUvfKa8Gn8NJ2beA1EzwiiVgDumION917+YlFnENEhv
	UCc0FUNx22mG9qDh/BJhndZJd4GLY7xWi6Vr57Q=
X-Google-Smtp-Source: AMsMyM5KAxvPsCr915qNm4tjN1FikabH8pJ6QcbZUzjDv/SeQZ3uRiIkxPKdpS91YdpI3Ql6sayY9PXhDMclIOa3Lxk=
X-Received: by 2002:a05:600c:2191:b0:3b4:868a:aad3 with SMTP id
 e17-20020a05600c219100b003b4868aaad3mr963035wme.112.1664913170920; Tue, 04
 Oct 2022 12:52:50 -0700 (PDT)
MIME-Version: 1.0
References: <20221004144304.536023-1-megi@xff.cz>
In-Reply-To: <20221004144304.536023-1-megi@xff.cz>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 4 Oct 2022 15:52:39 -0400
Message-ID: <CAMdYzYou74UoPFeLx-5Od6rXe+8Fr9AjRv6fuiaqDMXhiufmYA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: Fix PCIe register map and ranges
To: Ondrej Jirman <megi@xff.cz>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Michael Riesch <michael.riesch@wolfvision.net>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Frank Wunderlich <frank-w@public-files.de>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_125255_609724_4114DC24 
X-CRM114-Status: GOOD (  26.41  )
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

On Tue, Oct 4, 2022 at 10:43 AM Ondrej Jirman <megi@xff.cz> wrote:

Good Afternoon,


>
> I have two Realtek PCIe wifi cards connected over the 4 port
> PCIe bridge to Quartz64-A. The cards fail to work, when nvme
> SSD is connected at the same time to the bridge. Without nvme
> connected, cards work fine. The issue seems to be related
> to mixed use of devices which make use of I/O ranges and memory
> ranges.
>
> This mapping is designed to be more straightforward, inspired by
> dt-bindings docs for sample pcie3x2 node:
>
>       reg = <0x3 0xc0800000 0x0 0x390000>,
>             <0x0 0xfe280000 0x0 0x10000>,
>             <0x3 0x80000000 0x0 0x100000>;
>       ranges = <0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000>,
>                <0x83000000 0x0 0x80900000 0x3 0x80900000 0x0 0x3f700000>;
>
> I noticed that this is crafted so that there doesn't need to be
> any translation other than dropping the high dword bits, and I
> modified the ranges for pcie2x1 to follow the same principle.
>
> This change to the regs/ranges makes the issue go away and both
> nvme and wifi cards work when connected at the same time to the
> bridge.
>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 319981c3e9f7..e88e8c4fe25b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -855,7 +855,8 @@ pcie2x1: pcie@fe260000 {
>                 compatible = "rockchip,rk3568-pcie";
>                 reg = <0x3 0xc0000000 0x0 0x00400000>,
>                       <0x0 0xfe260000 0x0 0x00010000>,
> -                     <0x3 0x3f000000 0x0 0x01000000>;
> +                     <0x3 0x00000000 0x0 0x01000000>;
> +
>                 reg-names = "dbi", "apb", "config";
>                 interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
>                              <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
> @@ -884,8 +885,8 @@ pcie2x1: pcie@fe260000 {
>                 phys = <&combphy2 PHY_TYPE_PCIE>;
>                 phy-names = "pcie-phy";
>                 power-domains = <&power RK3568_PD_PIPE>;
> -               ranges = <0x01000000 0x0 0x3ef00000 0x3 0x3ef00000 0x0 0x00100000
> -                         0x02000000 0x0 0x00000000 0x3 0x00000000 0x0 0x3ef00000>;
> +               ranges =  <0x01000000 0x0 0x01000000 0x3 0x01000000 0x0 0x00100000
> +                          0x02000000 0x0 0x02000000 0x3 0x02000000 0x0 0x3e000000>;

Have you verified these ranges do not regress the NVMe drive when it
is connected directly to the controller? The reason we went with the
configuration space we did was because the original space from
downstream caused errors on NVMe drives when reading large amounts
(>1GB) of data at a time.

Very Respectfully,
Peter Geis

>                 resets = <&cru SRST_PCIE20_POWERUP>;
>                 reset-names = "pipe";
>                 #address-cells = <3>;
> --
> 2.37.3
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
