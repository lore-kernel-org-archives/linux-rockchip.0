Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62743C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 14:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyUfyzwQHvIxGZZ4AeL/QS/hpuz9EedyLaC25MGhzAc=; b=nKS0/KOrLxZ1sR
	K3E5YJd2fs7WkTxPJ7uiz2ejbTtQUP8XLVX4l8C1tjo1KGNNz5jSK5FM+99q1Nm7Keja7B3db7zR6
	vDwOZDq3/drV79HB7D1xmkCc6YnU5ne2hii7bD3txxqgeYzLfWEI65IcVECVh/E4SwKzxBFPO7UHc
	wdUu1WqpcxZBYcgPod4X77dxY0kVMBGB+k5wVmsA53Kb9Cj/HLWJUlhIAJop361c70UZzll7R11Nr
	rvhiWjaTpDZ+vqnteXm150eEO8iRJdF59MeehHzGVLH/8kxcOIafIdBaYNJ2D2W5r+eqRe37IeGYA
	Z9+m/IyR5Fuab+9RoR9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzfsY-008d3F-PI; Fri, 10 Jun 2022 14:44:50 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzfsN-008d0m-Jk; Fri, 10 Jun 2022 14:44:40 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-3135519f95fso104371767b3.6;
        Fri, 10 Jun 2022 07:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Qb0dJUAgFFXX4Dg6+w1YYRuiD/eZfRK5F9qQcEX45xM=;
        b=k4qvTyrZGhV7+NAh4OXu5yRhfp0e+S3P5nlRXt21GAvFBHxtH29hcS0MxO1WYwYQ41
         Gf573kp9Q5jy/nxGCb+nfMJgYapk42mSetkiwbKtFM18qIwq0kjFwvwIxhrhjOmk7s/8
         FC6NLu5VAjXR++7FsPlJ3av2bQu/c75Tkc2RDrx0LDz5FtAXY9nv+zIAyMJxn16/7yFv
         IkSFcEHecg81Oc9CIF0zbBA0IUz6CXW16dA/coIne0+OggQkpHjgPd/uoff9lH/+FdtI
         duZUtd+pKk4/opzrrpQppLdl9YlLWnbiqDH9NjMVKkOMKNmQ/UmecphkToa946HCHB4a
         7eKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Qb0dJUAgFFXX4Dg6+w1YYRuiD/eZfRK5F9qQcEX45xM=;
        b=ujFOBAKbwi94anZ6qzIeTcnCzeJjXQyEllBh2wb4bEazQ8YEiWXRm6HMrnhghufIe5
         4LbD2ehnh17fIFlMxrOprSDg6QPFuseJewiVVEvpK0ivKRGxZAdrHvdnnbnLPeYbWrgC
         yKsVQk4eKYCFQbgQcQiMddNsjPu1I+oQ9hoWA9WpeT2J7R/MBfB9IZQ0gQRJo7wrzyEb
         Yc5xsQ5iL2avNsJdX7PdlxwVOrP3Bh9qS3x6r+s9iZPKfNer077a37SyK4is7DXxuXod
         Nyb3Wsix2WoKd4DzK7GG0sa7wzH5tgfpvTmmUTUDXwJCu+NlRRPKTNtDHQOSu2jFn7JT
         cp+Q==
X-Gm-Message-State: AOAM531Wg7Ti5Z7apqwNeFO0Ky6UuFIsZP+O1XLMCC0IYRmwyVXmZN8Z
	vOkIzQgn6dtcnCuggmpuHsdSuR47kFwbyNoAfFA=
X-Google-Smtp-Source: ABdhPJyustZFV7Nw6780j32l4lEe73oN8XdNN/IxZJ73iS3S7npKgY1mfGpredBDvi5ka701E9cDxLYZFVb4jz4QJqs=
X-Received: by 2002:a81:5294:0:b0:30c:7780:d0e2 with SMTP id
 g142-20020a815294000000b0030c7780d0e2mr49875426ywb.241.1654872277737; Fri, 10
 Jun 2022 07:44:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220610132601.160088-1-pgwipeout@gmail.com>
In-Reply-To: <20220610132601.160088-1-pgwipeout@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 10 Jun 2022 10:44:23 -0400
Message-ID: <CAMdYzYqJ2S8K2NCH1uQ2xDjTfLmePPv5TzgeXZa0EG6XdGQzBQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SoQuartz CM4IO usb
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree <devicetree@vger.kernel.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_074439_685845_4B099134 
X-CRM114-Status: GOOD (  17.67  )
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

On Fri, Jun 10, 2022 at 9:26 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> The SoQuartz CM4-IO should support otg mode, however it currently
> defaults to device mode when otg is enabled. Force it to host mode to
> retain the previous behavior.

It would seem the role-switch issue is more widespread than originally
thought, affecting other boards where automatic control should work.
Please hold this patch while I investigate further.

Thanks!

>
> Fixes: bc405bb3eeee ("arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x")
>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> index e00568a6be5c..56764fae9f9d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> @@ -169,6 +169,7 @@ &usb2phy0_otg {
>  };
>
>  &usb_host0_xhci {
> +       dr_mode = "host";
>         status = "okay";
>  };
>
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
