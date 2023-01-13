Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A36B6C54EBD
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 07:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLcVOi9Lv6p8b7kHmR0Ml55YGboQhfpmfJOu1b7vWzI=; b=wrDTX44BtAER78
	67iooDfYxukfeQjlok7djxI3/Rm9DXGQzaO4Yr1RJ1EhQjZC4y9xSJWOa3e3mpSNytZ4uoxBysE40
	ujTgl161qmZrjx6Xst24J24azUCz52P+2P1oWTo3zCc+9k3nPQFU0c1VUsdw/akF0+MWWeZ4kH1dg
	cgsXVPS5JuTswAYM4lGl4TuSUwIZIkX4+pktYrdsLBm0p7lXH3vWuiYFkQkh+k5bzM8kdiXCl1Y7t
	c24ua07Km6RKjdTrf74Kn3bDifEk8yi40KIm2l/VtghPTSsi5tbFn2sp1mfjNwZoZJ6A8M81YnHQd
	Ya0wNh98fbezf46w3yJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGEFr-000wUi-Jz; Fri, 13 Jan 2023 07:13:35 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGEFp-000wTQ-8n
	for linux-rockchip@lists.infradead.org; Fri, 13 Jan 2023 07:13:34 +0000
Received: by mail-lf1-x131.google.com with SMTP id bu8so31824756lfb.4
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 23:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MAu7No8qt/e/v1T3l96H1YRY9RrDFjfQSEolreIJ/PE=;
        b=GBYbwLJk7yIjaIlQOr1em1Q4HKX7FbjshI8bLNwAouu7Wr/s0KWDvUmt6r+xnWeunN
         A3Ti4quDFtPJqC7SHrR1lBaVLWvxSBo8zQvifEcXb5+T8HSQPxwM+y6mIHePX05oV0RM
         qBNrjEiH8gAYZh7L+XVcwqgd0obzWg1xjYplSmZe3Oh5IzmBCVy3JjXbK4Cz/SpSnBaZ
         RI3ZyDuocVJ4nVMbvynW4Esal4uFUIyDIxhNi/iOSXyQOhVv3fI1gqBN+qMpTIZmxx4l
         og/OcwntyqXlUF/WEmZaD07LHp1RQ8SDEvgbIJJn8JrwMjDloHTxAnShJOjeUwSrNZtw
         o2mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MAu7No8qt/e/v1T3l96H1YRY9RrDFjfQSEolreIJ/PE=;
        b=7lJW8RJ5cepCthkJAihZ3St2QfQuO3qLwCViLZff/89UQln3PqVdfUH1fICaqWkxOu
         60Oz6g0Vw/dc0gZo0tgAxlYXgS3oc8OfFpC5/ICedI82lOJQAffEYuyXio2gs966cj2X
         qcV9FGf0jHSD5Gk1iIMmxCHUCS7i/0tF/I3p38HTG9STKfK8TbVZQTUiKwBk6/gJ7POE
         DYFBJJzQ+emzznYoimAfvwBlkc8T6ZugqdYyGptwf25gJwKz0aJJ+dcmYdL2Ds8OUjSV
         gErufFlhH1Z8q+darv50dKHUaIWkACxKAWEb+4xSK+WzICzPhazAGel/lYDCmUx+Jwe2
         uNuA==
X-Gm-Message-State: AFqh2kopTYmjuMDyOYGnDY1XWJltMGg1l0CwbGDhCEVld0wMgSGwMovd
	DotBBoS9iPOlOUcis52aKtdofJRbO2z0U0QgzXpjlA==
X-Google-Smtp-Source: AMrXdXt3hH2dGv/f25uVCkUiSZ3SoiP77zGi/bYcunYQk+MtWJxq0LKObOyy+eTdMp0bIa6h/rL23NxhoK9iwRhDw+w=
X-Received: by 2002:a05:6512:298c:b0:4cb:23b0:5c17 with SMTP id
 du12-20020a056512298c00b004cb23b05c17mr5129822lfb.648.1673594010894; Thu, 12
 Jan 2023 23:13:30 -0800 (PST)
MIME-Version: 1.0
References: <20230113064457.7105-1-jensenhuang@friendlyarm.com>
In-Reply-To: <20230113064457.7105-1-jensenhuang@friendlyarm.com>
From: Jensen Huang <jensenhuang@friendlyarm.com>
Date: Fri, 13 Jan 2023 15:13:19 +0800
Message-ID: <CAMpZ1qGtcFaaGK=72Qp9MOEDDvcxb_Gpqir7_+ZCL_ke4XrX8w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add missing #interrupt-cells to
 rk356x pcie2x1
To: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_231333_339228_308D8080 
X-CRM114-Status: GOOD (  16.74  )
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

Hi,

I got this error while testing on a rk3568 based board (NanoPi R5S):
  pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
Also I checked of_irq_parse_raw(), it looks like this property is necessary.

BR,
Jensen

On Fri, Jan 13, 2023 at 2:45 PM Jensen Huang
<jensenhuang@friendlyarm.com> wrote:
>
> This fixes the following issue:
>   pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
>
> Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 5706c3e24f0a..b3185e4115d9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -985,6 +985,7 @@ pcie2x1: pcie@fe260000 {
>                 resets = <&cru SRST_PCIE20_POWERUP>;
>                 reset-names = "pipe";
>                 #address-cells = <3>;
> +               #interrupt-cells = <1>;
>                 #size-cells = <2>;
>                 status = "disabled";
>
> --
> 2.38.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
