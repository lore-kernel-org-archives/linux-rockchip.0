Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E05B7C678DB
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Mar 2023 13:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPNnG38Cw7pN3ABbDNPSGltpBdFWsdsIrpqrRNjYuvg=; b=jB2waC9SuDnNaM
	GlU7ohXajCaSJY0Uq9R9H/8i+ITliXWFUbXNpM10xK0Sy0ManQ2lGf7mmRgXcmlH3tjUczn2a8Z1T
	+vVIUd1hzBNhaZ15Ffo8Ouq4nCxVL+PSBQCfyprKlTOtoeOREGpsGkOV0sdnLH1DSUt7rpf68KUQd
	6pAzMs1/TiSyKzjSmUZ7+msDnBjKSup06ODRqL0Ep1zAFB84nw1adzTayvCXT6kO1xQtfjDj3HpDI
	vXUrHX54r+tIov7m2VAhSMcseWuDdMEUduaY3WUzOI7gycdhq0LSuhkNGwMa2ZnDyC67z37NnatYr
	SSI2gzJDZjJzO6IEA16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYoeo-00AHMo-Jp; Sun, 05 Mar 2023 13:44:10 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYoem-00AHML-0D
	for linux-rockchip@lists.infradead.org; Sun, 05 Mar 2023 13:44:09 +0000
Received: by mail-ed1-x532.google.com with SMTP id o12so28174888edb.9
        for <linux-rockchip@lists.infradead.org>; Sun, 05 Mar 2023 05:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678023845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y1SgqfrtDVGQPAzb2J+1WJCdpCcTnMueLvLPfe9hIh8=;
        b=lqVeGEmPeWwVvpebdZVQow5Hop2TgcPziwE/c70C6Z0miRvkT8z67GKMIMNzeoyzU4
         7pcl6buYqWjII2iOsSFNqQJ2+sPp1RqLlQRN7SSk6kIjHRf0IxeYMZyq/xloenebMWsW
         z2KK7d6+/gvVvRMJ0qAmpDJ/6VDl/cIfe1sNM303j9fCr5kKoAvaxgj4e2D9NKvhCNx+
         BsrOSj91dKq7qZFJhvcb4n2jQLjTYcQcNqcfumP+gZI3wKiG/6E4C/s8ciyGsAlg8dng
         tDxcRqK9G/KJi6wFc9/Lg5Wu8neSq0FXsSUWl9ED/6MHKJFp3XF4sazMt3DVu3ZK2OH9
         kkQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678023845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y1SgqfrtDVGQPAzb2J+1WJCdpCcTnMueLvLPfe9hIh8=;
        b=xGpMM/C0HwzmJD3lJwTJ+hSmNgHiq5MFGsVJ0ddhrm7UJXGHePXTYIn8BLQjuGbcbg
         cardzCkwx49J1SsnyAQNykJbY+iX+1KLUc9+OD4omutxn0muoQbn6DaAd6mfrrXOn0lk
         HAkjJLckXoFRdnPAQgIEJKy644oyQG/J6lZDgzig+686KorKQNiGs+6dAgr+NMrQVece
         +mctpiJs31V5hHw6RBzGTbydm0JbOnQ+MZ3e1MyRIOT7C2+gm7b1x+t5HSE2Q+AsDmXf
         O1EynD/++/zWlLB2uqGepgW48F7cZkyVk+QnWqvEa0RMCQ20Ea56A7iGnli7MW4p0bb1
         rEUw==
X-Gm-Message-State: AO0yUKXjSvdHHtxXEC/34V2ilB0tQJONSQU/MtQ9msAKlLAT/cW/zdih
	wb03k6KYI3ULZNhuKciWb2QW1d9jNcCWyVoLtnM=
X-Google-Smtp-Source: AK7set/D0QwDOOXy8GsQrk0nIiCLFDLIhwInpOhvfEZjHG8lHOxtrWwFdPapvil2lBBKVJ4MHrPnL5uHXvft3cxRo9E=
X-Received: by 2002:a17:906:7cc6:b0:8b1:7682:3181 with SMTP id
 h6-20020a1709067cc600b008b176823181mr3236282ejp.9.1678023845564; Sun, 05 Mar
 2023 05:44:05 -0800 (PST)
MIME-Version: 1.0
References: <20230304164135.28430-1-strit@manjaro.org>
In-Reply-To: <20230304164135.28430-1-strit@manjaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 5 Mar 2023 08:43:52 -0500
Message-ID: <CAMdYzYoxti1ZU-xvc66bVx5TmRfUJK=Zx17pHSvaEELuRE95Uw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Lower sd speed on soquartz
To: Dan Johansen <strit@manjaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230305_054408_083521_3C60C8E1 
X-CRM114-Status: GOOD (  17.90  )
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

On Sat, Mar 4, 2023 at 11:42 AM Dan Johansen <strit@manjaro.org> wrote:
>
> Just like the Quartz64 Model B the previously stated speed of sdr-104
> in soquartz is too high for the hardware to reliably communicate with
> some fast SD cards.
> Especially on some carrierboards.
>
> Lower this to sd-uhs-sdr50 to fix this.
>
> Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")
>
> Signed-off-by: Dan Johansen <strit@manjaro.org>

Makes sense, considering the problems we're having with other boards.
We should probably stop using sdr104 altogether on Rockchip, at least
until they release a chip that improves on the limitations of pinctrl
speed. Considering the frequency cap it isn't that much of a hit.

Acked-by: Peter Geis <pgwipeout@gmail.com>

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> index ce7165d7f1a1..102e448bc026 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> @@ -598,7 +598,7 @@ &sdmmc1 {
>         non-removable;
>         pinctrl-names = "default";
>         pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
> -       sd-uhs-sdr104;
> +       sd-uhs-sdr50;
>         vmmc-supply = <&vcc3v3_sys>;
>         vqmmc-supply = <&vcc_1v8>;
>         status = "okay";
> --
> 2.39.2
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
