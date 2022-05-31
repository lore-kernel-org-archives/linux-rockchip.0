Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54B15C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 May 2022 15:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UvrfdBQHo/0Ui8fL9FZb4203kD3/zfEoNlGMptTC8Y=; b=ROhjAC07L6hnHi
	r1Ruy2YLwb38WUcR/LJr+s0xKr0U0MWPi9kA0Eh697G9VLBJccCCz7Nvn1RMyrLserLCtndrnIWnW
	CLRwZ6BOdZjun9uSnFSytsD5B4P6DpO1otZIWV4FUXMgVUpykDOLEqqYhPxr2fghWfyyKfmJBW9GX
	OsfMpP8Pk3UvznJ7GKNgJG9rE/86p9EzqYMjQ4NJPF8eF5vMNiF79/3AJ/J2/Bo0nfdb/toKDjHAG
	4jagR5h64EIWvfMviaV8yQWuuURRb6TBbgB/KqiRuV5a3LrTYRNFMzFXrHWt/aerYF6tM2NCWn7KY
	a7OnRcyEAnEdu0ob0xkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw3Lb-00BOX8-2z; Tue, 31 May 2022 14:59:51 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw3LY-00BOV8-BF
	for linux-rockchip@lists.infradead.org; Tue, 31 May 2022 14:59:49 +0000
Received: by mail-oi1-x234.google.com with SMTP id w130so17801561oig.0
        for <linux-rockchip@lists.infradead.org>; Tue, 31 May 2022 07:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/ZN3XYzcycmCsCacW8bmcW60HDp42L0uYVb/ImOyReg=;
        b=U9o+bkG40WUIYZVcc3zU5Nu4eZQvbsOJRf+82NIcI2eurDzXRrKyuzSHPWFSE4Mr36
         WCvUfuhvTUqLPsCltkReJ669CNI1o1QfvwYmBEMV3V5gyK1Gdvxsx0St+2aoUo74OTjI
         hnFdNuKAQkLMWxSOhs8RhZzJ/WOrVKrlAg6KUO9aPU4qz0+TyP30q67InhxFfXM+Qd4P
         ogaubtZ2Z5LTeoHxfPD9MZTY0qb+tpIznbF05H98I9vbY7pkvjV/BQix6LGB7HCSA5Tn
         ZESAfrT5A9rXh7F3qGizPFwe1y3JwWdc6M84EW//F36gvi4DKFKBksfHaCX/bEl027Rp
         nw/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/ZN3XYzcycmCsCacW8bmcW60HDp42L0uYVb/ImOyReg=;
        b=ugkO2+Dql0hm27cAb3JRzLu1ib3l2Gn7dNgA16lh55nJLzjcGrP58yrRraxBeTyBjT
         hRiKrP027pxvrIgulBejZduDAkp0Fyex3Kast+GXeXJLIC34OqtDX3ugMnX08N4W2BDa
         gP/DbjeTCDbb779KMikrJVe3wRr37HkQqnLWucsR2N6gk+Q5qRlhItfy6lO/HosRHPVr
         YWNOdtsTJ/Om3YwJouTtx4vFMO+oQW9vcGJvswsf5j/1jE3Ntw31o54Ynn6eiN6Bci2K
         1ez7ECxqkDxBUh0nktz1+MBeBjhl0lY9QjZETeNJOdEa3ij0tPsE1FRfMOq+K025ye7L
         NVeQ==
X-Gm-Message-State: AOAM5306IQLSpoWChrjDVM0UEyWxpDwhmN50a39uoYlHyD5JcGNe3EZx
	W5syzeLfxQHJRR0IdrK9bnWAwZ06ABs/ug8bEmJqCA==
X-Google-Smtp-Source: ABdhPJzxx64dmxnPfDeB3C1YUs+FTmy6inRBZeTpYnAKLKlv7YEbKfRvQ/MzYXNnOIYO+2qGuLYtDHsJ83R+DJYC4MA=
X-Received: by 2002:a05:6808:124a:b0:32c:45f0:5011 with SMTP id
 o10-20020a056808124a00b0032c45f05011mr2700034oiv.217.1654009185566; Tue, 31
 May 2022 07:59:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220523171559.472112-1-cristian.marussi@arm.com>
In-Reply-To: <20220523171559.472112-1-cristian.marussi@arm.com>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Tue, 31 May 2022 16:59:35 +0200
Message-ID: <CAN5uoS8XA9y_ieGYk_QjRkOLKHOSNxOjxeHv_kT1yC_Jak=qSg@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: Relax BASE protocol sanity checks on
 protocol list
To: Cristian Marussi <cristian.marussi@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Liang Chen <cl@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Jeffy Chen <jeffy.chen@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_075948_449537_0A14DC7E 
X-CRM114-Status: GOOD (  17.83  )
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

Hello Cristian,

On Mon, 23 May 2022 at 19:17, Cristian Marussi <cristian.marussi@arm.com> wrote:
>
> Even though malformed replies from firmware must be treated carefully to
> avoid memory corruption Kernel side, some out-of-spec SCMI replies can
> be tolerated to avoid breaking existing deployed system, as long as they
> won't cause memory issues.
>
> Reported-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> Cc: Etienne Carriere <etienne.carriere@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>

Acked-by: Etienne Carriere <etienne.carriere@linaro.org>

Best regards,
etienne

> ---
>  drivers/firmware/arm_scmi/base.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
> index 20fba7370f4e..d0ac96da1ddf 100644
> --- a/drivers/firmware/arm_scmi/base.c
> +++ b/drivers/firmware/arm_scmi/base.c
> @@ -221,11 +221,17 @@ scmi_base_implementation_list_get(const struct scmi_protocol_handle *ph,
>                 calc_list_sz = (1 + (loop_num_ret - 1) / sizeof(u32)) *
>                                 sizeof(u32);
>                 if (calc_list_sz != real_list_sz) {
> -                       dev_err(dev,
> -                               "Malformed reply - real_sz:%zd  calc_sz:%u\n",
> -                               real_list_sz, calc_list_sz);
> -                       ret = -EPROTO;
> -                       break;
> +                       dev_warn(dev,
> +                                "Malformed reply - real_sz:%zd  calc_sz:%u  (loop_num_ret:%d)\n",
> +                                real_list_sz, calc_list_sz, loop_num_ret);
> +                       /*
> +                        * Bail out if the expected list size is bigger than the
> +                        * total payload size of the received reply.
> +                        */
> +                       if (calc_list_sz > real_list_sz) {
> +                               ret = -EPROTO;
> +                               break;
> +                       }
>                 }
>
>                 for (loop = 0; loop < loop_num_ret; loop++)
> --
> 2.36.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
