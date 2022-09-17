Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3980ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 14:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqP7aExexM0iCQGPEmFwTbi6vYj7mEG8Nzek5Lx5b90=; b=vhUMEJtmXQgGVE
	nSQvWb/pwdJDzl9ls8rtBwnHYR6lQGLEcnZ9qcMHiCUDK4Lf0uqab8UlNHFBshfjXXpQxgjEaqbm/
	6Wsu+uWj0sZ7517ESXpILNkRQDxncC7VlKjWiACji6yYrUPpNtRRr2fG4I/CkF9cYvaThKO41AOYd
	1YGnfe275AuSKv8Vkf/zaetjZDCi0YB9Ffx0QRIFv/aUnbwN71PLGkYYL6xCcYLhYuYdrve8nSUog
	fOq/kYPwK+Tpkh0V1lQzif6ioGP58AzVplfpI+f17pyy6onRkf3JTt8v4l+O9GivUJb3FdTcaoL5R
	+c520XAa2bKUFtmSOTGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZYxF-006Xhp-9T; Sat, 17 Sep 2022 14:38:01 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZYxD-006Xg5-0M
	for linux-rockchip@lists.infradead.org; Sat, 17 Sep 2022 14:38:00 +0000
Received: by mail-il1-x130.google.com with SMTP id k9so12731759ils.12
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Sep 2022 07:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=/pyCf9jgr/gGLY5r0aV5BLXgg8Gpjv3LW/5/ohZeuhg=;
        b=WisMG0jTPnP2xdXMdZZKE7prG5yw34poCEF9EhWlVdGz1PeMBcJbECUVE6G8+RLuj/
         EPkblAEwusha1AZqAIXaFmeR4kvpqbreatZZZCEXVXdSXrhS38yGSWL7iS2gu7AiCxqT
         WpON/F0q/S/umIu0uLKl4hG1zUfTDTW5CYz2GKmp8OmsmEq7D2uDTXMctZd1SpmQEP2G
         5OiNZs9ChDQyMY62VyLH2FuPEUmC5g4PKlMjjjulcIOnh177XJJwhyMNEIe174AbfGgn
         ofClY0ecEUHgMF2ZxgV+BtK0dQXLE13U6Om33EDQbtslVqzITn3pnHvcOQ3xRTJLAqH+
         KHAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=/pyCf9jgr/gGLY5r0aV5BLXgg8Gpjv3LW/5/ohZeuhg=;
        b=t5VzZdnFjKLIQfMOgcEalBWLvQw96EyJkGnJm65KfFypoegmTbAvi++2Z/D1t/n9Kl
         gJCq0yTyr3TcZgemLg9Ktc8QN+PgKofkhgjVM5l5m8lGhx1EIjGP9VdEM38fybGf36G7
         U9ciGBsCAE4Rmm6hoVhtyqE87o8wHa5i8eVbZ1i9UwX+zA7uJtjC7hQgwo4vUhwxmW13
         t2DzmDMb4c7b8xABLqg36QFLUD0GtooH6AoS0d5NCUCbQSN9NjpqWP/fySkEMYNVq29O
         386wQS3GI3tRrtBVSWVbPmwTUfOTZadBET4N9ve5P88OQNAQfPMQHhscS68LjsWh4Fw8
         Z2OQ==
X-Gm-Message-State: ACrzQf1RaVEPMAkc61KdJgYrzWA8vfiUU2/1ldZwEGnIytnK4W39BgvK
	Ay+9bUXDihGiYLcT6jhppHc5iyZ+rbxI/avWBmP1LA==
X-Google-Smtp-Source: AMsMyM4ZgNMoeoCFz916osy451rmg4TnXsBY5Y/SoavT/6MipQjgjKRhbbfF5AFIdTVZyS7qoN/M9H19kXEMr2SDa7Q=
X-Received: by 2002:a92:cc51:0:b0:2f1:4eca:9a17 with SMTP id
 t17-20020a92cc51000000b002f14eca9a17mr4305307ilq.82.1663425476125; Sat, 17
 Sep 2022 07:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220915163947.1922183-1-jagan@edgeble.ai> <20220915163947.1922183-6-jagan@edgeble.ai>
 <3182731.oiGErgHkdL@phil>
In-Reply-To: <3182731.oiGErgHkdL@phil>
From: Jagan Teki <jagan@edgeble.ai>
Date: Sat, 17 Sep 2022 20:07:45 +0530
Message-ID: <CA+VMnFwb0bmvsmAqbfEN12BGsTXfxPs2UimjNf9cAvayKBLrbQ@mail.gmail.com>
Subject: Re: [PATCH v5 5/6] ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_073759_052633_B4037BF9 
X-CRM114-Status: GOOD (  11.80  )
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

Hi Heiko,

On Sat, 17 Sept 2022 at 19:56, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Jagan,
>
> Am Donnerstag, 15. September 2022, 18:39:46 CEST schrieb Jagan Teki:
> > Add pinctrl definitions for Rockchip RV1126 and the pinctrl
> > conf's are included it from arm64 rockchip devicetree path.
>
> I'm not sure I remember the cause. So could you tell me
> why they are needed in the arm64-space as well?

From RK3568 on-wards pinctrl configurations are maintained in common
conf file rockchip-pinconf.dtsi and it is available in arm64 path
(arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi). So even for
RV1126 this patch uses that common conf file as these are common
across all rockchip platforms.

Let me know if I'm missing anything?

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
