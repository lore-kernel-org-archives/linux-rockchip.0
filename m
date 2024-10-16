Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEDB4D2068A
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 00:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHmbJX5VA/2tBXLr9yUmeFSIFbC/XUxfVGI2nDnwtKk=; b=iXLWjN3d25KUfM
	wv2k6n8oRjNTGuu9pyvSfWThNtiyaWQFOZ+sXlVIBhERFbXWYf3f+CqNz/DdMjFDVtPt6zbZNQCFg
	X09m6YpdHONqsDGjJcWXi6Luqb1yl5Ht9W4VBLe7XwEnuFRiu2wKvGGHAYMjCOzaKKxLfMF/BJUDr
	jzQkofJPm2DUYq+lbx8R1XnK6SESUdTTx3TDT7kk1iT64o73CeFiSNhF6EUbURXO4mrMuDqUUezSG
	38SQhcrCXtpvVBds+jnFIoPe/frmqiwqOrSG6wtNQ6dcKb2nmLl4ehh4TFNk5Mt5xx7QNhYXg/5yA
	SxSvksoLDob4u3Suq4Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0s8S-0000000A1wQ-0z1i;
	Wed, 16 Oct 2024 00:43:32 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0s71-0000000A1nQ-3jRR;
	Wed, 16 Oct 2024 00:42:05 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4314b316495so6199965e9.2;
        Tue, 15 Oct 2024 17:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729039321; x=1729644121; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GvcX0gGeep0GUuFVn3JiQ4Xt9Q6qGunv1EzUF9AFO/8=;
        b=LqGmBFFdO4m367UthlU6wZGmveiSuV0/P92BlSsGmf8VuyQNPE8Cvultx2T607vT/N
         X2hsuTao+G1lQ8omy1tBXgW8xpAhAq0+Wwe2vMOgFVJ88Kj4ftFOR4UnrlfSTVIcJD6g
         T3aS/4a3RSQlxdseTspCK2KeTc1EmzsfPYRWpWlizCaINFDpU8V0fr5XZ2aFffBkHHWe
         Ja/KqebCH5qGqzkhbqOhs77Mk3OYP+SqYga/uIrSbq6tTM9oZTDCg/5Z5i+Zfv7hDHzE
         Kr7W6BjYlgDQpuvnr051XgYYDTiK1sEyabtvOR3Ut7PmWoYO5oVtogG7Fgpkk0ZcEnpU
         2G4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729039321; x=1729644121;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GvcX0gGeep0GUuFVn3JiQ4Xt9Q6qGunv1EzUF9AFO/8=;
        b=LvWxRelkSamGqrafUI6fKH12aLL/WCiDQ0wSTgRrqLjpFuf0KYLG/2YCxkBKh4KS5W
         E+T1jM311Blb+IhGJuVGXETtujY+GXRyo8CnbQAhoBj2KaIP1i6JNzgDBWqLQ8fgq35K
         KEpWg//3xFjANhDCA3dDu0wh/YZgLtAI9chE5AEI0xqJqyjPCuNeKNt/yg5ENY2jZOZf
         0Q41vkpr+Ya3oUiCAPSBcwQC1zuN1WjRvHQBU74EQhGd7QdY2IAD41ScNtNDYD0T6ct0
         1OHp5jtbbipZUIqH+7Ymu4ML7z+RZytxevQebOkKsK2k+thi1vx1wBeNT/jPEYt+gaF9
         kKew==
X-Forwarded-Encrypted: i=1; AJvYcCU6/lh/6DJPT4uBE+pMdvCK/FyNMj4BzMrfqeVVF/t7rA9tbQXWCvNLYCLoghv4GRQEwiSoAybOlqj/tMg75II=@lists.infradead.org, AJvYcCXgv+EYa+a1OXcggsl4H1PHVfUJzzwH6WjTEDdrHYmwZX5LloyzcVhl5s8/2A9fDG7cRko98zpDrahAodrpJ5mi@lists.infradead.org
X-Gm-Message-State: AOJu0YyQ9+u07MYXnXnFSy6wEZbGsTBt9+TURXIl3ZjgWDyBcYg2eS3y
	78ZsfLYmWmzp70byzuFy2aIWSApuRhDKRAyfMB3jt7iM5c86Le9NMzCOakmgFfrubjLSDH3Q8TB
	OuILm0Fjgs/gDXKMcN+cfKFNYO6U=
X-Google-Smtp-Source: AGHT+IErA0JGeWcAknCGVEPwXfu/nx8v5bP7gX5Pgx/kAAKv1urxza1nggwKBv/4ZtWjALceGSIICkf/jqP9FPFZMvo=
X-Received: by 2002:a05:600c:1c9e:b0:430:57f2:bae5 with SMTP id
 5b1f17b1804b1-4311df42aa5mr122976905e9.27.1729039321310; Tue, 15 Oct 2024
 17:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <20241015192905.28969-1-cenk.uluisik@googlemail.com> <20241015192905.28969-2-cenk.uluisik@googlemail.com>
In-Reply-To: <20241015192905.28969-2-cenk.uluisik@googlemail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 15 Oct 2024 19:41:49 -0500
Message-ID: <CALWfF7K5vGL6GPMWdi0_kwXPabKv70LSoGwK-QxL+Br+PDowqw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] arm64: dts: rockchip: Add rk3588-orangepi-5b
 device tree and refactor
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chris Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>, Andy Yan <andyshrk@163.com>, 
	Tim Lunn <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Jing Luo <jing@jing.rocks>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_174203_948845_638C051C 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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

> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3588s-orangepi-5.dtsi"
> +
> +/ {
> +       model = "Xunlong Orange Pi 5";
> +       compatible = "xunlong,orangepi-5", "rockchip,rk3588s";
> +
> +       vcc3v3_pcie20: vcc3v3-pcie20-regulator {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
> +               regulator-name = "vcc3v3_pcie20";
> +               regulator-boot-on;
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;
> +               startup-delay-us = <50000>;
> +               vin-supply = <&vcc5v0_sys>;
> +       };
> +};
> +
> +&pcie2x1l2 {
> +       reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> +       vpcie3v3-supply = <&vcc3v3_pcie20>;
> +       status = "okay";
> +};
> +
> +&sfc {
> +       status = "okay";
> +};

Regression tested on the original Orange Pi 5. Still works after the refactor.
The microsd card is accessible from /dev/mmcblk1 just like the
vendor's 6.1 kernel.
NVMe works
SFC works

Tested-by: Jimmy Hon <honyuenkwun@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
