Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 101AAD2CE17
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Dec 2025 07:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geshtkGoaN5PR3Xw+Y0IS5x3jHdiYhC7v67U6mRIme8=; b=jgYhlZV3YSWW96
	u+8OUv9HmNFYbzKGTn6XK/XAGumd1lqcJRoJ6PTzVoQaZKkx1pCpjBoVC5Iu7FuJPTuEpmn8s5JhV
	DVYs8utBawkx402mijIIlRk30vqZTnD09gLnBLZ1Gwqihbibs1G/OWH2pZrXeHOtGZXmM7nkRPZIi
	68xAMoA1k4aXJI81bJ+lilk0bY550P5tR+zoUZG0aiqwf8jCa1wAz2i5mTG83LApLB529JB/FKUnY
	/XY2x/PlyokXCF+Ym3i+0706dlHf6luyvCBbcBuA5qQOB1uQSkT/Tds9PsLOeAvudyAN+d4FF10pi
	1IEk0LBgp0nfTYpSrfKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vS9Xt-0000000BZam-2YVC;
	Sun, 07 Dec 2025 07:51:05 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vS9Xq-0000000BZaH-1pBH
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Dec 2025 07:51:04 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b79b9113651so553226866b.3
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 23:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765093860; x=1765698660; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/6HjmBwKx9RHsKdictkxKGMKvEW4KqB7I2ntbk5moRQ=;
        b=k5owb4W+6lQS2erCj1Cj9pbe12bI+jj0NT+cJtgI666NTesGXrlCXGfFb8iz86ublp
         THV+Qy6EUk+Y1/wb0elde3WsELEPkDUapZ58qbofY88BpFD9Rs4f/5nwmYY9ahwLhjyU
         gqf9Bv6BUuvw5nTm2CDQtNJmwek5bwEQ3MlsV9C9ksFLO7askmXEQ7SnPfc1fMPEaIS0
         qmXnmqwkneGQl1kcoA0CdOnvAkNeZsjM2XvEoEBcLDJKYIidOEd4c6+KUSWBnxa12Umn
         wIRAIA0fhb+gf5RvPSvZoocefBhaImjd6EJ693X7EJIE0YHjUKyNFI6gapk4M1gRLSr6
         8VJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765093860; x=1765698660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/6HjmBwKx9RHsKdictkxKGMKvEW4KqB7I2ntbk5moRQ=;
        b=BTBS0HAq3gbALsjUCV2+x+EIuB6iLVgJtNq/ZRjrhkkrUjMcHkBLdtsRV/kCn8I4uD
         L92cAPY8Sumq/iC0tHTbQwCpnYEGQXVIgBITpy9ljASOF/IDUNopKdoKbE03nNdsam0i
         UIVdDQtQ16OkpiWA7K4bNq7j+/EbvGdY5LzBO34RZipal5gj0R8ePq+J4phXdY/BMtAG
         sghDEQFCmL8/fDnnOmYoEHhqxKdY4dM5jSrd+YjVmFsxkSUHScnrJc8jEIR4lcZqYr2p
         uxSuDKSrwBIbryK9dI9ihmpLzsMS5o2yxjUCzToixCBVYeFsWmUqSNqXx2s+waeo8Ai6
         BhhA==
X-Forwarded-Encrypted: i=1; AJvYcCVhvgddr9Sel9vzixC1v/VsuMQVSs0zUOfx0peroTATVBvTdNs/hrJhf0d0uGJig8aHfdt97il1Cy14nSucSw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywk7szKhRVwefOaglKSoHUnI61vox77gh88DvTi6AEVXmYydYLx
	UB+6JTC0/P9ysJ85xLaNEkM6w5TJTKSUtyB6YpQSQzaId8VLSv8fYJsQR+6ZVg1s6B8JqPWpqRU
	AizzmgpbVkQ2Y1QnqIIqmELT4qaYbAXE=
X-Gm-Gg: ASbGncuToZCw9/TnAwKnc6Ge/z5nydLznHTh1lqHgTFFCfTA4EBnOO/aS3JfjhOe4Gd
	z4LpdEMy1W9+y7XYA5r9jHEOjV/QbCLRuND3KyEwOr8eSLnD0kWR89/sd9s+Xu0aGhPJCr+sown
	CwpCKW9cLEqr7rLvpgndP6wHmYzgzY+aTIpZrdgqk+Df3d9O/kkUgNqgk6IglJEcAZp7+gu1ZF4
	P/Ez6pehZ0iFju1mU2lVefXUdehuliRyUTGsVVAo8lt8y8NJ/R7MGPClz1qS9D5L1ODUw==
X-Google-Smtp-Source: AGHT+IGk8+T7H+GuNusI/FR7C0nUTfMeK8sMlbisuGybJ8C75u/fNDxhnMLp8v9UaI8jcD3KVtzvbuAlMDLgfoc82tM=
X-Received: by 2002:a17:907:3ea3:b0:b70:b700:df98 with SMTP id
 a640c23a62f3a-b7a242efe10mr423357466b.5.1765093859430; Sat, 06 Dec 2025
 23:50:59 -0800 (PST)
MIME-Version: 1.0
References: <1764809428-183623-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1764809428-183623-1-git-send-email-shawn.lin@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 7 Dec 2025 13:20:43 +0530
X-Gm-Features: AQt7F2qnZjImmge44gJ3dCMPIWRFLa2Z9SmGfhvqctrOQ-Ll_Kah1Lo2eMbTnvU
Message-ID: <CANAwSgSn_6g1a=LYqKGom+FyhJ+qqbi5qRMKCxAoe5Q2nsN5sQ@mail.gmail.com>
Subject: Re: [RESEND PATCH v3] arm64: dts: rockchip: Add PCIe clkreq stuff for
 RK3588 EVB1
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_235102_604163_D85380BB 
X-CRM114-Status: GOOD (  19.07  )
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

Hi Shawn,

On Thu, 4 Dec 2025 at 06:21, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> Add supports-clkreq and pinmux for PCIe ASPM L1 substates.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>
> Reviewed-by: Hans Zhang <hans.zhang@cixtech.com>
> ---
Thanks, are there plans to support this feature on the remaining
RK356x and RK3588 SBCs?

Thanks
-Anand
>
> It belongs to a series that adding L1ss support for Rockchip platforms.
> The driver changes has been in mainline via 6.19 merge window, so just
> resent this patch with collecting tags.
>
>  arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> index ff1ba5e..c9d284c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> @@ -522,6 +522,7 @@
>         pinctrl-names = "default";
>         pinctrl-0 = <&pcie2_0_rst>, <&pcie2_0_wake>, <&pcie2_0_clkreq>, <&wifi_host_wake_irq>;
>         reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
> +       supports-clkreq;
>         vpcie3v3-supply = <&vcc3v3_wlan>;
>         status = "okay";
>
> @@ -545,7 +546,8 @@
>  &pcie2x1l1 {
>         reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
>         pinctrl-names = "default";
> -       pinctrl-0 = <&pcie2_1_rst>, <&rtl8111_isolate>;
> +       pinctrl-0 = <&pcie2_1_rst>, <&rtl8111_isolate>, <&pcie30x1m1_1_clkreqn>;
> +       supports-clkreq;
>         status = "okay";
>  };
>
> @@ -555,7 +557,8 @@
>
>  &pcie3x4 {
>         pinctrl-names = "default";
> -       pinctrl-0 = <&pcie3_reset>;
> +       pinctrl-0 = <&pcie3_reset>, <&pcie30x4m1_clkreqn>;
> +       supports-clkreq;
>         reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>         vpcie3v3-supply = <&vcc3v3_pcie30>;
>         status = "okay";
> --
> 2.7.4
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
