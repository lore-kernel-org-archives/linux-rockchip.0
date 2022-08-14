Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D392BC25B06
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Aug 2022 13:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t199ge4xYMd+yJcIdqLdsCke7jEcjjG388KRBs/IMho=; b=0DGBxPL/9b4K0m
	lepjvORLvBL00sbuAozjB7t0uEpmof1BbOsTeUE3COeSNFYL1Pxt1PTl7Y0xtzWAEbDHNwDCl9ncb
	YRf/JhZejWb+WRNczS5ysarZAG2xulVJyuweIme6Xs+eF9MXfx3XNiGSeMjbtSV/zZf6Is1rxAg4P
	Uamh1UIdMnIZvcG5TtfvbeGRYONWBd8kBegwvPBu25FzSyDbc8c6r1fiUFdzV5ie2jqdMGaPndMdt
	BX+7wlj9I7dhqESotj5HzsEpSKjjDJGFGEgbCWKimUcjgoga3LQJBHGd8CisZpCZZH5KC/cehnTmD
	M/EeBDktIbgnVXn/klzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNDOp-006gpp-B1; Sun, 14 Aug 2022 13:11:27 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNDOm-006gnv-1s; Sun, 14 Aug 2022 13:11:25 +0000
Received: by mail-wm1-x32d.google.com with SMTP id r83-20020a1c4456000000b003a5cb389944so2726330wma.4;
        Sun, 14 Aug 2022 06:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=AwhK7wTBXcBXgJI8gYQWdu+no9daQGPqNzLmnBIJk/Y=;
        b=i2DReFLns7Fc0u+ltP6g2mGaoIGlbozNy1cckeaLmSueCXTgtqvrVuhYwrKpJMw2w7
         +jhgnTwrMsvUB72dyJ7jsaZwVrb34oZGho2Zcdk7aC1GXOiAqUemzz3dh3Bd1W4K90+Z
         WxDEus9fCX9hu3/GN4NAVFQV4fZFaAKPjjpyca6kn2E1ugUGatoiEslHnsQDd6zBecNj
         0CAFVi1xlMCiKoSXwPzUMOr9C4cQs+IQ1AcPQELPWOxZatTo7kcDIqp2k+moA8cp3r65
         H3eamcbSIGbvtp2wiby02RbbXOXDVeXsHRHP4RBeJZq7869hbUoZzI6uDqNJYxytZcGJ
         8kjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=AwhK7wTBXcBXgJI8gYQWdu+no9daQGPqNzLmnBIJk/Y=;
        b=7Bkp/OCRfHZbewHG2k1wBK+ZYojchUhvz3otDjltqm+td5txAOvLQCIu+0d2u02s6t
         my5xXty2Xzwb5Ax9+1EN5p3XhulsuUhl11Ouzs+a80ajCL86IQKBI/zjhlx2la/taD4c
         LQezQhL3wNmqPsz+rg8jXTuRt6NbhjNFsO3UYb7nC3nKYA5HcOu2cpo3RbMUUIXJC77a
         NaJHlUH97C66Qw/fsGfprS+OjwpkMmtbtUHoVzu0ynjI9N4i8LGFlh1CiyYYYxI/Y4sG
         rvdlcYA3N9Lh8erslarpfWJnIAaRTFO66nRQhdMK0+lzNolP6d/sM2UUQ7cWpWAEud3v
         fRcQ==
X-Gm-Message-State: ACgBeo2WXrgTZof9BhtwUZYGCnVmjAyLGdeY61dA+DMCYhOxPRGclbYJ
	CfLPW6+n1WqjyDqgUoHux0DmKCshUcf5Ac+5yEs=
X-Google-Smtp-Source: AA6agR5efggXY+S2mxoio8litXwouBnsyAK6zubmq0Kp4pzIcv/kqz9XG5Z24VzuncXXvhfpWZ6fKxiwDXznkK/mSlk=
X-Received: by 2002:a05:600c:1e1c:b0:3a5:b668:4e2 with SMTP id
 ay28-20020a05600c1e1c00b003a5b66804e2mr12767740wmb.112.1660482681273; Sun, 14
 Aug 2022 06:11:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220812143247.25825-1-macroalpha82@gmail.com>
In-Reply-To: <20220812143247.25825-1-macroalpha82@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 14 Aug 2022 15:11:09 +0200
Message-ID: <CAMdYzYqno-kWvUjU37XjTwOQQKbf1uvpU02hHbB4hhVOEDVgig@mail.gmail.com>
Subject: Re: [RFC 0/4] rockchip-dsi for rk3568
To: Chris Morgan <macroalpha82@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, devicetree <devicetree@vger.kernel.org>, 
	dri-devel@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>, 
	"Kishon Vijay Abraham, I" <kishon@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, 
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220814_061124_138767_10EE549F 
X-CRM114-Status: GOOD (  23.71  )
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

On Fri, Aug 12, 2022 at 4:33 PM Chris Morgan <macroalpha82@gmail.com> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>

Good Afternoon,

>
> This series adds support for the dsi and dphy controllers on the
> Rockchip RK3568. I can confirm that for the Rockchip RK3568 this
> current series DOES NOT WORK properly yet. The image on the screen
> is shifted about 100 pixels to the right and does not appear to be
> a timing issue. This behavior was observed on both the Anbernic RG503
> and RG353 portable gaming devices with different screens. These changes
> were also tested on an RK3326 based device (an Odroid Go Advance) with
> no noticeable regressions.
>
> An example of the issue on multiple devices:
> https://media.discordapp.net/attachments/973914035890290718/1007407064647221299/IMG_1999.jpg
> https://media.discordapp.net/attachments/995430498677571604/1003754966932008960/AB25898E-73EC-40A9-BD47-3FB970DDFB31.jpg
>
>
> Given the fact that the DSI controller is identical on the PX30 and
> RK3568 aside from different grf registers I am assuming the PHY is
> likely where the bugs are currently. I'm posting this as an RFC in the
> hopes that someone more knowledgeable than I can help identify the
> problem.

Thank you for this. It will be a few weeks before I'm in the position
to test your series, but what you have described matches what I have
observed in my attempts as well. I suspect the issue is actually in
the VOP2 driver, since the PHY test functions display without
corruption and loading up a 1080P hdmi connection allows DSI to
display correctly.

Very Respectfully,
Peter Geis

>
> Chris Morgan (4):
>   dt-bindings: display: rockchip-dsi: add rk3568 compatible
>   dt-bindings: phy: phy-rockchip-inno-dsidphy: add compatible for rk3568
>   drm/rockchip: dsi: add rk3568 support
>   phy/rockchip: inno-dsidphy: Add support for rk3568
>
>  .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
>  .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  51 ++++-
>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
>  4 files changed, 209 insertions(+), 48 deletions(-)
>
> --
> 2.25.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
