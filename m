Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D522C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 18:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/C2TYmK7AvNF1WMhMQekZVytLcwW/ZzbH66eyFftRkQ=; b=XC/i5SgdwPRJoO
	TzRpzw0wooF6caKeAbpj15u2I1mhUUIsIdogyGd3JWenMCvRHjo2gd9tyNDw67pOsZ6bm5PchntW2
	hGlpO5uaz9O/5SRITUkqc4hce8Jc7Ryg0XCzCYcp7Xyd9jcVrDLHONZRvaD9IvSOWxRVdLs7GHjLk
	XbckrI71jIDtrFblEQM7BGDv/lvL2L6/Gs7Ny782dD31RAmJBy+xKgPVDVh7jMYGyfH4j4c5V3NMb
	mijXyRQV9/wX7YnQzgUOnNv6iyUOChyzWbkfhYlRdcsak2P20rPm14kUHFGO9p6MuBmF4oa1UAr5O
	AYO9CstNYbG4E44aqGGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbo6g-002EkY-Sc; Tue, 05 Apr 2022 18:40:46 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbo6e-002Ejd-4o; Tue, 05 Apr 2022 18:40:45 +0000
Received: by mail-ej1-x62c.google.com with SMTP id i27so21466186ejd.9;
 Tue, 05 Apr 2022 11:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vbMPbp7aUefqeHa6gEgmXUlWTRHZ3oMWVTDKwmVUOh8=;
 b=KJEMIj4e7Nkf5NRQSkeGOdWSQ/71GPeTAtj19TfSQfaw192KiobZULMM0yawIDtQ+1
 kRjZ1hHKMIFz5w9uzoszb/2UfxMFLVuhv1pcx3l2FbrdwFg0o9IdUwBssH6gMmasF+sC
 tAYmb4Zc+PawW5CU655i1OQPBPDNcC4ClfHWIMZ2+DO3B8slsGym7/pz3iqIyZLr1GZ5
 MLbeRvJiT+5mT7bKd/c/7BGNhUV9FRT6Rbo4IITF2Ehl994/2iaeC7VBC13O0Owz00Gp
 EuxD4peu6TSeWZYYpDmgXNCmVOuyQzE+ikHq9qi/Eo1WQKNiWby277cISSVlNRAYEi5t
 uS3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vbMPbp7aUefqeHa6gEgmXUlWTRHZ3oMWVTDKwmVUOh8=;
 b=irS2GI49I5TjmrqSmTzcxtY0mGftXmKLoHYbzAF6wS9lnvXCDwm/EQ1Hid/OtiLCpU
 yDbnoT84sIiq9xDfyDRTtkQ/E8DxstDj75TlPTIFRobasY1ns7yDqlk45HJebC3kKf+J
 3ONdgsrQLb8kY+ZCBvXtoi1x6pWyGfTyzqGbSVu1MN9C878AcgWBVt3fvKhUJ/fRCHHa
 Y6YsNMsJ7Q312xQwWmI6Dcnb8EU/5D8S5yKrpmu04egIsVH3jcBxXnpjgJu5Wt1nIoyc
 JUwrU6DxvLLVvDZtuAM2BQpjWdC3wHzJNWNeRTkDLpYH3ZDpgjvP7TiodFFgouNM3C+5
 SuZg==
X-Gm-Message-State: AOAM531wcK/QUG4QFNlEhzgQnDjxzldJG1it2t85PDQCvYBMjtKE0hH9
 KIIsjMnPasJEIQhWxYlDGYQ=
X-Google-Smtp-Source: ABdhPJyyOku7BguihhRDVr/2uQVz3QRhlNTGjiETo2Ny1XHm1wtZufdXrCu7Vy7i491eGogKd7Bkqg==
X-Received: by 2002:a17:907:6e14:b0:6e7:f589:b7b4 with SMTP id
 sd20-20020a1709076e1400b006e7f589b7b4mr4991013ejc.222.1649184040612; 
 Tue, 05 Apr 2022 11:40:40 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 dm11-20020a170907948b00b006cf488e72e3sm5795532ejc.25.2022.04.05.11.40.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 11:40:40 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [RFC PATCH 0/8] media: hantro: Add 10-bit support
Date: Tue, 05 Apr 2022 20:40:38 +0200
Message-ID: <4386971.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <b6987a9a-56af-f63f-b60a-37df141d6e89@collabora.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
 <b6987a9a-56af-f63f-b60a-37df141d6e89@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_114044_222783_78BB1F16 
X-CRM114-Status: GOOD (  16.07  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Benjamin!

Dne torek, 05. april 2022 ob 18:07:41 CEST je Benjamin Gaignard napisal(a):
> Le 27/02/2022 =E0 15:49, Jernej Skrabec a =E9crit :
> > First two patches add 10-bit formats to UAPI, third extends filtering
> > mechanism, fourth fixes incorrect assumption, fifth moves register
> > configuration code to proper place, sixth and seventh enable 10-bit
> > VP9 decoding on Allwinner H6 and last increases core frequency on
> > Allwinner H6.
> > =

> > I'm sending this as RFC to get some comments:
> > 1. format definitions - are fourcc's ok? are comments/descriptions ok?
> > 2. is extended filtering mechanism ok?
> > =

> > I would also like if these patches are tested on some more HW.
> > Additionally, can someone test tiled P010?
> > =

> > Please take a look.
> =

> Hi Jernej,
> =

> I have create a branch to test this series with VP9 and HEVC:
> https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/tree/10bit_=
imx
> 8m Feel free to pick what I may need in it.
> =

> That doesn't improve fluster scores, I think more dev are still needed in
> GST before getting something fully functional.
> Anyway I able to select P010 pixel format if the input is a 10bit bitstre=
am.

What kind of improvements do you expect? Actually, this series is designed =
to =

change nothing for platforms, where 10-bit format is not added into the lis=
t =

of supported formats. I think reasons are quite obvious. First, not every =

device may support 10-bit output. Second, as you might already figured it o=
ut, =

registers in this series are set only for legacy cores. I have no idea, wha=
t =

needs to be done for newer ones, since I don't have them. Anyway, I tested =

this with fluster and only one additional test passes, because it is the on=
ly =

one for 10-bit YUV420.

Best regards,
Jernej



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
