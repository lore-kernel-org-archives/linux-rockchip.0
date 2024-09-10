Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44699ECE582
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 06:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zshOGZSgNSw2OtRiQNk/AWrscsjU5eYeVYgxWb2gCCc=; b=BFwLGgcRgxao75
	rV8aoItDcWcJfk5kqaLeudUSn5rauLYQedz6Y6KJBKNgnvLNv2aW39eUX9Xq+pjKU4J6g9GORaEoD
	K7toEtV17FQ08Ilxu3dRZ2Z3ocUzZAV0tFrCCyWMVUiPlBq9JHhgd/vzktqAliCLEF32cpkcqB0oj
	gqzKCNTRSRGTxZpUyYEM8T4jdrxw5OvbSWX6HC1rRnj4HNmoGBQdcmfy2AxZT0X0rO4nUsyq/QSA9
	qkDuuISm3BYd+zZ8L9VqgxVqL3uSsQJBOcBLO3OZy37OQ1LmdU1XNgoVN7XdaBG8pf5XeU/XEHCtE
	S5aDbEivbvSsY8adtNmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snuRR-00000004SPU-1iUm;
	Tue, 10 Sep 2024 06:33:33 +0000
Received: from mail-pl1-f181.google.com ([209.85.214.181])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snuQP-00000004SH0-1Isd;
	Tue, 10 Sep 2024 06:32:30 +0000
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-20551e2f1f8so51338335ad.2;
        Mon, 09 Sep 2024 23:32:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725949948; x=1726554748;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jECedyLwpWSi/LgRrXCCeEdPK7kyo5RLypA86tH+o+I=;
        b=ljgwqXYDLyDlTwydYTDVDe56t+bajiY+RRFLAVcEIIRSd38lAss71ERRzAS1kcZJEc
         PSkcwhlBpdNI3xoRLccuJzs4P5K6zQdErh+87AfbE2x4vqGw6IhCPMKDvGibNOooo75P
         1kMKCqdy/22pNnmOS/YqpYYtLWt1QQ5/8l0se80V+xT+aIugjuQvNn3RApEnWO8EEPu5
         zjYBpT8t1goI/pF8RauOSkQ6ZE4Me5LTtCSONz9DmQi9qVzBBik6vWxDZzJy1X3dQq5y
         Z0CEeGFAxkH7BH6I90zSNUgyp7Mo5HyCOPJdCVOmfq59VNEoMtPwdy6lguhn3ek6ZviP
         Hybg==
X-Forwarded-Encrypted: i=1; AJvYcCWfNa19MuEwr996UXyB58CVZTSZee1EKsTM3Nc5iYB65KDmb0CMn/S2xK+xKLgfT4zXOM4KInlEU/tX3ouynlYM@lists.infradead.org, AJvYcCXxG6KK8uH0hWOERg5G1MyNqCIXhrNR1DtfxnnGOLfOKJIvfObP6YBtW2dHWBdljeyVCRpzbj98L63RY58deOY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzoXXL+Zvgssdp9k6b0jt1I2sfb1XyW4zAd+ApFBnkcf3JuvtkT
	N5EY1rx6trAO1vAEARBA0LeMBpGQOly2JrZ0FYhyQ+8mrJYI7EucMQuFCXDMhxCPxNzkZ6iY6iX
	I6zIfJCMbCuvUP0yKm+/ev2F6wUs=
X-Google-Smtp-Source: AGHT+IEvMIvaSTbfqXCvRnmgvdVXjOwGK/Qnzvkw/rL/oJbx++LHi2AScRFYedF7Rmc2pswkfRM5I9huGGE8ps5yWv0=
X-Received: by 2002:a17:902:f605:b0:205:76d0:563b with SMTP id
 d9443c01a7336-206f035bc2emr166544305ad.0.1725949947878; Mon, 09 Sep 2024
 23:32:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240909-rockchip-canfd-clang-div-libcall-v1-1-c6037ea0bb2b@kernel.org>
In-Reply-To: <20240909-rockchip-canfd-clang-div-libcall-v1-1-c6037ea0bb2b@kernel.org>
From: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
Date: Tue, 10 Sep 2024 15:32:15 +0900
Message-ID: <CAMZ6RqKA77BWAMxL4_iAcye78JXDGxGQcEd9BJg7uCL9EO11XA@mail.gmail.com>
Subject: Re: [PATCH net-next] can: rockchip_canfd: Use div_s64() in rkcanfd_timestamp_init()
To: Nathan Chancellor <nathan@kernel.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	llvm@lists.linux.dev, patches@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_233229_370969_7E6420A8 
X-CRM114-Status: GOOD (  16.93  )
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

On Tue. 10 Sep. 2024 at 01:24, Nathan Chancellor <nathan@kernel.org> wrote:
> When building with clang for a 32-bit target, such as arm, a libcall is
> generated when dividing the result of clocksource_cyc2ns(), which
> returns a signed 64-bit integer:
>
>   ERROR: modpost: "__aeabi_ldivmod" [drivers/net/can/rockchip/rockchip_canfd.ko] undefined!
>
> Use div_s64() to avoid generating the libcall.
>
> Fixes: 4e1a18bab124 ("can: rockchip_canfd: add hardware timestamping support")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> This does not happen with GCC, likely because it implements
> optimizations for division by a constant that clang does not implement.
> ---
>  drivers/net/can/rockchip/rockchip_canfd-timestamp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/can/rockchip/rockchip_canfd-timestamp.c b/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
> index 81cccc5fd8384ee1fec919077db48632f0fe7cc2..4ca01d385ffffdeec964b7fd954d8ba3ba3a1381 100644
> --- a/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
> +++ b/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
> @@ -71,7 +71,7 @@ void rkcanfd_timestamp_init(struct rkcanfd_priv *priv)
>
>         max_cycles = div_u64(ULLONG_MAX, cc->mult);
>         max_cycles = min(max_cycles, cc->mask);
> -       work_delay_ns = clocksource_cyc2ns(max_cycles, cc->mult, cc->shift) / 3;
> +       work_delay_ns = div_s64(clocksource_cyc2ns(max_cycles, cc->mult, cc->shift), 3);

I was surprised at first to see div_s64() instead of div_u64(), but
clocksource_cyc2ns() indeed returns a s64. So this looks correct.

>         priv->work_delay_jiffies = nsecs_to_jiffies(work_delay_ns);
>         INIT_DELAYED_WORK(&priv->timestamp, rkcanfd_timestamp_work);

Reviewed-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
