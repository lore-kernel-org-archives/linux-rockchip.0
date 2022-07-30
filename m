Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B37F6C04A68
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NAwqFYXfoZAwPSGa7Y8pNNVJ5ZdO5Hw4x6AYPB8r2M=; b=FrtUIjOXmQreVG
	+Xyh+FfqeYlLQWCZRsWHFGRq0iklhzs4iY2F5RAeXGp9O0pc+FSiGhjqeyW6AsAMNVXPQbX0c8YGH
	KljWmbyYxwQktgzQGlM8Uv8f54XMZ9doaX44MZyHpY+cQaj8L5BfaUx22mnFcQ3HPd3TndYBdIVb8
	XHyhZfGO5pAoFZHjp8lattwflhmlJ+43S/yyWC3vqJSgqd53i3Qvg8gm3+0aLpj5IMa+gSCaPlufQ
	AiX1cwvIccTaAgbIznGltF1ZBd+8cJ4gTTS9wIjevVdEDk7DobJDg+h9U4tIuDc6IKyEnFNCYvcTN
	imKTIXU6V8VB1fBveHRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHpv3-002fav-JZ; Sat, 30 Jul 2022 17:06:29 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHpv0-002fY0-NM; Sat, 30 Jul 2022 17:06:28 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id z5so10973224yba.3;
        Sat, 30 Jul 2022 10:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=d9jZByFHQCyHogd7tOw0PgH6PJzZQDfjzIJ2GEdJkb0=;
        b=q2KYoe4LNMLDlobLn76ATzjWRjL5WqiMo5wnjXVVnr47rZ8bCp/pH56LiunZLGZV9j
         eUUIeZwnhSXNFlTf65cT6IvQEz44LpdLf1aj0XDQIkDK6LfiyKZr5HwFPuKG02FnkJq/
         jVoJ4USdc/SxsbHc2OfmRDDDfrEEfxqfqtmsalV3YE8nNwDsHi+NdkPovM19otjZp6Kc
         OYuTHc2GILanQ2APU3eJG1uUF/PGGipCz38j1Rp8QcwxeHnLaDPFmOx3yeS2aeyToqNv
         HBm1sInYDbtsnAfHonsXVPP0Gcmcs9Ger2sW1P5o5vf75twyynMWbRa7ArrO0YA/uHrk
         wHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=d9jZByFHQCyHogd7tOw0PgH6PJzZQDfjzIJ2GEdJkb0=;
        b=UWs2FPGICSpIdiiT8kTH4VZdoz4AHbkKjz8VV6W361CWen76ZInbp2YZ1n4cQuGOw7
         uF1d17PgEr+zud1Qvj2JskCgZpzvT4QDTUaqZBmoVU8mlSn6tH9VFRHOWCgQwDnYrvse
         X/rlAwlBR7Vd4VoiJNkylub3dYusvIqIyHobMLtfMF9sqiqJNm74U2Afmo3qIumTEcT0
         lmBDOX4lwA6rUL5wdQcxUG1rZqJNoAjsU5IAB7I8AKjJXADwnfTp5AkWENR/CS0i0JPE
         5LZQaKXmVVax/zCtq+r51iTOV234htlA5X7XhsY709kD08I+zYz8I2P0S4z9UkA2asYU
         elAQ==
X-Gm-Message-State: ACgBeo1MC9J3U139oYGX5RSMCWshZRL2kRAnAR0Y2QzyhKiZZaBFBa9l
	ogaNj83NTu4z9r/hPYR87tJyUIA9Ry99/BBUDf4=
X-Google-Smtp-Source: AA6agR5/t09I7F6CDAX+uVllvGeHwUJ4JzDvCBXaiLEPyPSzdqM/i6i4hRE5J8vI5lU7FJIuSb2GYaZo+AVGk1idM1Q=
X-Received: by 2002:a25:c401:0:b0:670:ee96:38de with SMTP id
 u1-20020a25c401000000b00670ee9638demr6085433ybf.339.1659200782656; Sat, 30
 Jul 2022 10:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <ca9560eb-af9c-3cfa-c35e-388e7e71aab7@gmail.com>
In-Reply-To: <ca9560eb-af9c-3cfa-c35e-388e7e71aab7@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 30 Jul 2022 19:06:11 +0200
Message-ID: <CAFBinCCMinq1U2Pqn2LPjC9c+HqfHjvW81b1ENMxdoGmB6byEw@mail.gmail.com>
Subject: Re: Meson GXL and Rockchip PHY based on same IP?
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	"open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220730_100626_804890_CD8F99E1 
X-CRM114-Status: UNSURE (   9.73  )
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

Hi Heiner,

On Sat, Jul 30, 2022 at 5:59 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> Meson GXL and Rockchip ethernet PHY drivers have quite something in common.
> They share a number of non-standard registers, using the same bits
> and same bank handling. This makes me think they they may be using
> the same IP. However they have different quirk handling. But this
> doesn't rule out that actually they would need the same quirk handling.
You made me curious and I found the following public Microchip
LAN83C185 datasheet: [0]
Page 27 has a "SMI REGISTER MAPPING" which matches the definitions in
meson-gxl.c.
Also on page 33 the interrupt source bits are a 100% match with the
INTSRC_* marcos in meson-gxl.c

Whether this means that:
- Amlogic SoCs embed a LAN83C185
- LAN83C185 is based on the same IP core (possibly not even designed
by Amlogic or SMSC)
- the SMI interface design is something that one hardware engineer
brought from one company to another
- ...something else
is something I can't tell


Best regards,
Martin


[0] https://ww1.microchip.com/downloads/en/DeviceDoc/LAN83C185-Data-Sheet-DS00002808A.pdf

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
