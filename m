Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49A63C19F2A
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Jul 2022 19:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exx1nB3EaG1YzCpdw6K9a/EEH6UhkNVmPQJp+upKm9I=; b=04tU2o+n/T939m
	oCn6KDIiuhiiDrCZOmslm1f+dKAdx0dNfTPrCOv7LgPhqGGIIXdWMvqajekPJvneQFm0eSZhsZmKF
	SgUvYLOYDz8wL4YhoAks9+x0L9CZQh4KhFKtQBpXJRUD9ajl307D9lxbCPVW7s0hoysxx+fvMWTes
	ug95/NYqUkqBwsLQ8yhtOwCRvD0f1aBGnm5q5SyqER8Yv/E4IZGRl01bq+vkwRWXOjuxrTJrLOTqo
	fj7EK9kT61w3A6EQ7WGGnk4N5a7b+FAsKzuAWZ1EPs0sXLA3SvCsfOn2Vr8CmBZc212xdFzDWqJpI
	5Xa06/xcl0yvyJZBsudg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHsBE-003lZY-51; Sat, 30 Jul 2022 19:31:20 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHsB9-003lWj-TR; Sat, 30 Jul 2022 19:31:17 +0000
Received: by mail-ej1-x62a.google.com with SMTP id uj29so625374ejc.0;
        Sat, 30 Jul 2022 12:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=IyGAUs/XewcJpkze6PPx60tftl/vExnGSdxM5ltgvok=;
        b=DH9Egj9rvw3hIeuoTU4OD/zsK0GWATY3lkJ/19ic0aKtozTPHay6G7n4o5PILIEWwj
         97bjmqu+FL/MsMbXzyIyxfhIKgpKmMiuTwsHV5lVVw0jzyLJDRoOpv9EFeAl7pC8xDoR
         WOSpvJ/qoUQyUpfbtuR7dK4gHu/4hlzjX+Qsw2toPAKREbXtX8/EtHS9x5xzR1gy6C0Q
         1YDFhTo7h+4ShF8+UjARjEUIonRSwCqJA087SnFOn9547AFNbkQm9pJFqcjLj25/Zm0C
         41GW2Sp6hh6ORlwbrsx39ZD6tvM8qq0g8w5g2+efJdxFatxcRwB+d+3VbT4UEhJG9VVy
         TsvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=IyGAUs/XewcJpkze6PPx60tftl/vExnGSdxM5ltgvok=;
        b=6YN2tVSA6mCq7CEcPfJ5nanXkfBgf0yj6Gw5RdR5A0smAdpSCONaJJKoJpVGGT37tp
         20aI26bmE2s7UzGHsrxgRLsUxI1BYQJ9QHs2To97PiLrANsOYAEpR981LY7MiO/zBbUG
         0E2vWbeMfi7/2klCqzj16MScVnx3Uyv39f/IV0LYj7M0HxVB47RxtD2H3s2YeG1CbFH5
         +znxTx/AVJ54q4+ltSLmz8v+v6K1a/ZP6WL+ibssDzDRwEtFyIRPOeDMIZvWXYOFFq7k
         2UBZiMTecXTjDADnWnqhD53q7O1YfFp9gkGduGvxd5b53r/1PlNwG+6qnbWz2JftQzsa
         7TOA==
X-Gm-Message-State: AJIora8NAVGJBR/98uMyQ1wEoKn7MU1eNCKx2M3yE8UU9dfzXVnddpXk
	yhIwn28yVco6svIoDDIbFbA=
X-Google-Smtp-Source: AGRyM1t0HFkPzzWwYa/FYFGFkF9xd/BHdmhgs56/HijKFuMQ1e98bCVZP4ooKQJAg1sv8dqYqYBjrQ==
X-Received: by 2002:a17:907:7b92:b0:72b:67fb:8985 with SMTP id ne18-20020a1709077b9200b0072b67fb8985mr6756364ejc.569.1659209473708;
        Sat, 30 Jul 2022 12:31:13 -0700 (PDT)
Received: from ?IPV6:2a01:c23:b9c0:f700:d5b:898b:b7ca:1bf3? (dynamic-2a01-0c23-b9c0-f700-0d5b-898b-b7ca-1bf3.c23.pool.telefonica.de. [2a01:c23:b9c0:f700:d5b:898b:b7ca:1bf3])
        by smtp.googlemail.com with ESMTPSA id f15-20020a17090631cf00b006feba31171bsm3255474ejf.11.2022.07.30.12.31.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jul 2022 12:31:13 -0700 (PDT)
Message-ID: <88d6ef05-f77a-57a2-f34a-e3998a8d70d4@gmail.com>
Date: Sat, 30 Jul 2022 21:31:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: Meson GXL and Rockchip PHY based on same IP?
Content-Language: en-US
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
References: <ca9560eb-af9c-3cfa-c35e-388e7e71aab7@gmail.com>
 <CAFBinCCMinq1U2Pqn2LPjC9c+HqfHjvW81b1ENMxdoGmB6byEw@mail.gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <CAFBinCCMinq1U2Pqn2LPjC9c+HqfHjvW81b1ENMxdoGmB6byEw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220730_123116_007798_9D0FAF97 
X-CRM114-Status: GOOD (  14.03  )
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

On 30.07.2022 19:06, Martin Blumenstingl wrote:
> Hi Heiner,
> 
> On Sat, Jul 30, 2022 at 5:59 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>
>> Meson GXL and Rockchip ethernet PHY drivers have quite something in common.
>> They share a number of non-standard registers, using the same bits
>> and same bank handling. This makes me think they they may be using
>> the same IP. However they have different quirk handling. But this
>> doesn't rule out that actually they would need the same quirk handling.
> You made me curious and I found the following public Microchip
> LAN83C185 datasheet: [0]
> Page 27 has a "SMI REGISTER MAPPING" which matches the definitions in
> meson-gxl.c.
> Also on page 33 the interrupt source bits are a 100% match with the
> INTSRC_* marcos in meson-gxl.c
> 
Great, thanks for investigating!

> Whether this means that:
> - Amlogic SoCs embed a LAN83C185
> - LAN83C185 is based on the same IP core (possibly not even designed
> by Amlogic or SMSC)
> - the SMI interface design is something that one hardware engineer
> brought from one company to another
> - ...something else
> is something I can't tell
> 
> 
> Best regards,
> Martin
> 
> 
> [0] https://ww1.microchip.com/downloads/en/DeviceDoc/LAN83C185-Data-Sheet-DS00002808A.pdf


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
