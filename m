Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5AA4C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 11:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYDP/LctDbCQgfDiP5oV7QL53QPqaFjNd4FPusrRAIc=; b=wetm10l7s2Kqot
	bejTsYkR43oI8j8LVgnr0PXFDmj+IbFKaOqLIqOV/7ZOx5ukOkkIX4JIFdp/flfAb307iqWZSKQAC
	5JfJYwDv/W7xQcEkff5KQ70BeSCbyR9nGryUCUNIYiFZuM4gfVhFqyU/2mGXc3rc5b7jmrFuQVuRz
	YEviIXC5uMiMHBNrm/v+BEzglktH58OJupXPGohlgIEATgOwxjkSVbbDtTBUqr0q0YpAZedfvC2mF
	+2GjSWvZAHjBoek7MtZLtuyHp/UiRwH/V4RiD4cN03wIWm4DOULrAoG91aI83QfvCyQ5hitiR/a1a
	BDpfcv97tVZAPIKzU2rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJwd-006meZ-Ay; Fri, 15 Jul 2022 11:57:19 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJwa-006maR-Iy
	for linux-rockchip@lists.infradead.org; Fri, 15 Jul 2022 11:57:17 +0000
Received: by mail-ej1-x633.google.com with SMTP id oy13so8600806ejb.1
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 04:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qbK16Gbm94nbzaReVK0X7evWgKmmaW9SJjy+LYIFtn4=;
        b=jfBLjYyRASV7mMdiUXspW7Opso/aSZihTIYAPpHd3l1yAH8qgoHujxz2PFeWkw32/w
         IQ13kd+LbCq+U9oOm1RpwqQycvLz9VBoeYN9gV4lv4QbKTOGjtSUUnxOpJEMSBFvz/hO
         uY/MP9TwIJkCKFpb4Zi16YOHm7kLgHKZT2+X5xSbig36lIVGmBmf7ujlW+Sjtd1PaOaL
         aiSLIvgXrzCBnkCG9FO3v91jLOzh0MJDb6kgAQ9qzWG2+qESYEtEatAb5jPf+ZwhzGGz
         a0sEL+Dea+w9B+H85ohoh3aISrSRknxewWgRcgb2WWIn3xTI6yt9bnTcxl4d+l5HLE4J
         6aew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qbK16Gbm94nbzaReVK0X7evWgKmmaW9SJjy+LYIFtn4=;
        b=5SAbtRqS18T/5dr6lPNU5oNR836MbYLREg7qt3MY/xqpvOBDKcprmo2b2NCl+Jlv6+
         0ccGgzM/7Zc8g1IvTA7PY6LPM1Gp6juDp4G9SBeKcQ+uXwNLEAXyhrVCOdC+NyYxLMpa
         wEoYL+gD5t1SN5EP7z8Z74VPyzDK7btxsEtUU/ktNnM97Ud7cRZGj80zLqlqcxARjzIM
         yagXbfBp7NgPaGKzQojpQxQRD0qQ8KmGiuHVvCKTDbFACDncUw9+Q7P2GF9K5rYJxHHL
         KLtF7iiVQ4xtquQUfCB8MvV8wcBrJ9PGRe8i3bhPokn44d+4Km8J87qSR9HMARGyjp3O
         rDVw==
X-Gm-Message-State: AJIora/QZUikDutjEfHbOPgBtEwt1cjlBn6V8o9qTQnT6k7hcuCJFkJ8
	lafZWXhfPkd6kBES/iyPfvFfnJSte4l9G+McBlnBgCuW
X-Google-Smtp-Source: AGRyM1uB44efMwdgCPmEY0TptcIfhmj+nZIYRITbZ20616qp8vlU5GISCeFCeHP40vySRcA8iZ2JN1n/6+iS91VJaUk=
X-Received: by 2002:a17:906:7e43:b0:72b:52de:b039 with SMTP id
 z3-20020a1709067e4300b0072b52deb039mr13558541ejr.198.1657886231753; Fri, 15
 Jul 2022 04:57:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com> <20220630230713.10580-49-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20220630230713.10580-49-laurent.pinchart@ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 15 Jul 2022 06:56:57 -0500
Message-ID: <CAHCN7xKVzrExUvK+fEKiTXV71J5K-VOcqxVFrew0f2dN5mjAOQ@mail.gmail.com>
Subject: Re: [PATCH v2 48/55] media: rkisp1: Add match data for i.MX8MP ISP
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media <linux-media@vger.kernel.org>, 
	"open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Helen Koike <helen.koike@collabora.com>, 
	Paul Elder <paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_045716_643909_815BC55D 
X-CRM114-Status: GOOD (  23.80  )
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

On Thu, Jun 30, 2022 at 6:27 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> From: Paul Elder <paul.elder@ideasonboard.com>
>
> Add match data to the rkisp1 driver to match the i.MX8MP ISP.
>

I am testing this series on an i.MX8MP with two Sony IMX219 cameras in
4-lane mode.
From what I can tell, the ISP_1 doesn't enumerate if ISP_0 is already
enumerated.  My guess is that the name of the ISP is hard-coded so the
second instance isn't able to load because the names conflict.  I
don't see any errors, so it's just a guess.



> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 +++++++++++++++++++
>  include/uapi/linux/rkisp1-config.h            |  3 +++
>  2 files changed, 25 insertions(+)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index f2475c6235ea..a41f89807dd7 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -496,6 +496,24 @@ static const struct rkisp1_info rk3399_isp_info = {
>         .features = RKISP1_FEATURE_MIPI_CSI2,
>  };
>
> +static const char * const imx8mp_isp_clks[] = {
> +       "isp",
> +       "hclk",
> +       "aclk",
> +};
> +
> +static const struct rkisp1_isr_data imx8mp_isp_isrs[] = {
> +       { NULL, rkisp1_isr },
> +};
> +
> +static const struct rkisp1_info imx8mp_isp_info = {
> +       .clks = imx8mp_isp_clks,
> +       .clk_size = ARRAY_SIZE(imx8mp_isp_clks),
> +       .isrs = imx8mp_isp_isrs,
> +       .isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
> +       .isp_ver = IMX8MP_V10,
> +};
> +
>  static const struct of_device_id rkisp1_of_match[] = {
>         {
>                 .compatible = "rockchip,px30-cif-isp",
> @@ -505,6 +523,10 @@ static const struct of_device_id rkisp1_of_match[] = {
>                 .compatible = "rockchip,rk3399-cif-isp",
>                 .data = &rk3399_isp_info,
>         },
> +       {
> +               .compatible = "fsl,imx8mp-isp",
> +               .data = &imx8mp_isp_info,
> +       },
>         {},
>  };
>  MODULE_DEVICE_TABLE(of, rkisp1_of_match);
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index 583ca0d9a79d..40677d47825c 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -140,12 +140,15 @@
>   * @RKISP1_V11: declared in the original vendor code, but not used
>   * @RKISP1_V12: used at least in rk3326 and px30
>   * @RKISP1_V13: used at least in rk1808
> + * @IMX8MP_V10: used in at least imx8mp
>   */
>  enum rkisp1_cif_isp_version {
>         RKISP1_V10 = 10,
>         RKISP1_V11,
>         RKISP1_V12,
>         RKISP1_V13,
> +       /* TODO Choose a better version for this */
> +       IMX8MP_V10,
>  };
>
>  enum rkisp1_cif_isp_histogram_mode {
> --
> Regards,
>
> Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
