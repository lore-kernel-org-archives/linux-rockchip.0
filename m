Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7223C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 05:21:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F4F664E61
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 05:21:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5F4F664E61
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TwF645yUrEy9g3kE2dfbmsamctWcV/tE8+tRo14Q4/c=; b=J7rJ6LNDCV7ZKerf8P3WBA4Nn
	AI9jDISsOAxQ2+GMSJxhSuzORpv9nF3JFKiJt6zfpadN6LdCIYDUvxmKhSZkT+Atg0Rt4zKJzbYdi
	EuhhKImzKppEwJT7emaWMo21kbnGmrYHGIdtH5iwV5F5typVrdm2PY/+8JULWURPKGwX8Ryjsug+b
	ooA91bCV6utvvweuCYaQhjfZWps1Vdu3V+oyBCHPDJR4RjGf0K4pP7kQwCBo0ZVoHo9S03H8tqkTb
	zrPZhLr79wKmhRVxk0c+q2XhzJhHOo0AfLWQbiOpMgqh5xrPaKGuL3HTGXgX4k1EogtrqTRTGWdid
	vTiJoZE2Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lN7ZD-006Yw9-Dk; Fri, 19 Mar 2021 05:20:59 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lN7Ye-006YqD-7U; Fri, 19 Mar 2021 05:20:26 +0000
Received: by mail-lj1-x230.google.com with SMTP id u10so10431665lju.7;
 Thu, 18 Mar 2021 22:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+KD7NBAK+4Rp9SsLbxbAqM6nGsZ0UIVgR+zzJ73WPa8=;
 b=VKgAsSPp7XJZsRpn+a7h46waRIltfczCpXv1GgDwjp6+Myford91fYemGNfZdVcgE1
 hdZq0HCsI2BK+wLJXjx2WWGdSbd4L5Qg2dEJrYq+PI7lIZA791TN07CV+8fzxeN0rWYD
 O8JNQcv18rjB6SuMWaIgyG9edG5H2DFAm4Rw0P0DUxFHJlLMis+J1lNs+JJjmoW323Wx
 E52/49bjdvH1Btp8wqm371jH4BTE/eMaMRQqiagX9eM2it+/FK4peQmMD69v6bCZne9T
 Ppm3/ds8Gp85SiJxFO+ZY4uz3URKU5YrWwxYgQcD//uRv5zh6VvSco+QPI8/NOIc4Zfn
 Jw7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+KD7NBAK+4Rp9SsLbxbAqM6nGsZ0UIVgR+zzJ73WPa8=;
 b=pEFxNq1L5vI1J7WHwSXGFp3i2YZcYdK7P0qLFnHbSOnNfbsBn/XPIV1N9jDDDO51qX
 c4fGRHoIqvkYW1KMVRi/GG188KJjUlIvWBBC0frA157jVqtEh57yVeZOyf+hY8AUOwv8
 YdO6UJc5j9+7N8wyB6wlxR21lQA/lYoKRRHbkeh56mDigVm2P6BOYHdNMYqnuAEqnXAa
 4c8C/uxNedhwBJNX3vPWYh92SmNSSzgJGxp+azOBjk/7svcvP0qM39e5+9qM7KhMOM00
 u6GtGjvY9m0euPWSZgangbt9KtA6+5rbOatVJNICYsOA+sbRuE8Metv3Jleb/TkKkDUE
 c3qA==
X-Gm-Message-State: AOAM53213Py1rKV0aHnBSSh2K6sJbJHkAlClGlEsP0HCflvH6bP9Pxky
 VC21jw1DRIH8Fe5/8YmZoUBw62WTCBWKPPR6jfc=
X-Google-Smtp-Source: ABdhPJxvT7sa2Q3Z5WwT1E+D8H+Ezxins5VaY6wNnxwe7OVa/ao4zxTDjbQbbrizDX/iwBMXzK2nwfLDVht34eGQVhs=
X-Received: by 2002:a2e:5c7:: with SMTP id 190mr7608722ljf.164.1616131223387; 
 Thu, 18 Mar 2021 22:20:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210319051047.27619-1-cnsztl@gmail.com>
In-Reply-To: <20210319051047.27619-1-cnsztl@gmail.com>
From: Tianling Shen <cnsztl@gmail.com>
Date: Fri, 19 Mar 2021 13:20:11 +0800
Message-ID: <CAOP2_Tjo+5tOEJ-oLCMqref1JtA13FP91urxe86H6bhK=QsKng@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>, 
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>, 
 Geert Uytterhoeven <geert@linux-m68k.org>, Johan Jonker <jbx6244@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 David Bauer <mail@david-bauer.net>, 
 Jensen Huang <jensenhuang@friendlyarm.com>, Marty Jones <mj8263788@gmail.com>, 
 Tianling Shen <cnsztl@gmail.com>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_052025_124176_11583853 
X-CRM114-Status: GOOD (  15.58  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Sorry everyone, please ignore these patches as I forgot to update them...
New patches were sent.

On 2021-03-19 13:10, Tianling Shen <cnsztl@gmail.com> wrote:
>
> Add devicetree binding documentation for the FriendlyARM NanoPi R4S.
>
> Changes in v5:
> - Dropped the empty PCIe node
> - Dropped useless `/delete-property/`
> - Renamed LED nodes
>
> Changes in v4:
> - Correctly dropped `display-subsystem` node
> - Dropped meaningless `pwm-fan` node
> - Dropped wrong `sdmmc` node
> - Disabled `i2c4` and `uart0` as they don't exist in the design
> - Format fixes
>
> Changes in v3:
> - Dropped non-existent node `display_subsystem`
>
> Changes in v2:
> - Disable display for NanoPi R4S (reference commit: 74532de460ec)
> - Light "sys" LED on NanoPi R4S (reference commit: 833821eeab91)
>
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index c3036f95c7bc..4a6f772c1043 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -134,6 +134,7 @@ properties:
>                - friendlyarm,nanopi-m4
>                - friendlyarm,nanopi-m4b
>                - friendlyarm,nanopi-neo4
> +              - friendlyarm,nanopi-r4s
>            - const: rockchip,rk3399
>
>        - description: GeekBuying GeekBox
> --
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
