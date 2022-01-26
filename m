Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66F16C2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 09:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/y+IZC15smwwMUy+J1ZZUuZrpEXsUT/sWGYmDKR9+s=; b=SHXgP6051KynJW
	XzqI6XaKEC8vsNQuDRgBLvk4p00UWhY3Uju8JR7dGbq0h8qEUrYtObAnAoxi7Zjp8z1tEp832PcYv
	y2Czm705+lELL40WiHbCDX58BV9TpYqu4j/4b+miCSJveA0sC4IXpxmecmY7rnmNEl19TcXYxLgTC
	n5gmxeaMGwzIKcur51GvWi9o9J/hRlz5EmMk+N+aUpz5lKyAgsAMkmogBDKqAMT5bnCdj8Ex4L+Gc
	tFK8ory3dL7ej278q1+OLBC5iZO4/cT9BTwQIJko/0eZ+z+s3l5rInq6SgfjBJnuBAXwht6M8d97A
	+xAtjCdVwLIjov3XD6Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCenh-00B2Eb-7v; Wed, 26 Jan 2022 09:41:13 +0000
Received: from mail-ua1-f49.google.com ([209.85.222.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCenM-00B29P-37; Wed, 26 Jan 2022 09:40:53 +0000
Received: by mail-ua1-f49.google.com with SMTP id m90so42417362uam.2;
 Wed, 26 Jan 2022 01:40:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hAy2zgm466oxNuRFWuwR8M0eUPIcptlYMjnsJ3k50hs=;
 b=VMuHO4EnmdtMJncFP47ac8qtH7ajTzzQN/8WRKGYQ7+Y28y1duwc2fzbgDRqye8fgb
 yVJ587XVit/4Jf9zgNlqkCG1lSE2Y/riCWDS1tTvuCo7DkUVwlKgMdzeSPOlor/3gzHc
 VPrX5LmKCGpXcSPKqvuX8OTP2nPufHuON+DX8FP40mVc75CUxnbuBcGj10y/VHPj7VMO
 3lnhY6RDtgR4KmQudTs0fNER1QB4JFb8a+8N8ZcdKXZk55sdh0XhdFv2C0YHfZixh/ta
 EaXtw8SfSUHF+7IxHCjUTJ107POGAQwKwGDlEkX4KGPkmA4GGdBVm8JN++FKEHtPPm3O
 17Zw==
X-Gm-Message-State: AOAM533a+PMGgYffdyZbFJSY1EqbB4BQr0QCtV9uF1bsEx/3lbenPgnh
 syo4yOlq/4OdPH3FU3ZfjlCzlFMt4r/1CmJi
X-Google-Smtp-Source: ABdhPJyIAyK8Ftc4perXo5DXmm01IQWQy9W3bVL8LytSyw+CwqxYeeHE+NfMYt1XTB2YHg3mzYz1nQ==
X-Received: by 2002:a05:6102:534:: with SMTP id
 m20mr5099963vsa.35.1643190050653; 
 Wed, 26 Jan 2022 01:40:50 -0800 (PST)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com.
 [209.85.222.52])
 by smtp.gmail.com with ESMTPSA id q4sm1941630vke.15.2022.01.26.01.40.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Jan 2022 01:40:50 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id f24so42200892uab.11;
 Wed, 26 Jan 2022 01:40:49 -0800 (PST)
X-Received: by 2002:a67:a401:: with SMTP id n1mr5189111vse.38.1643190049539;
 Wed, 26 Jan 2022 01:40:49 -0800 (PST)
MIME-Version: 1.0
References: <20220125171809.1273269-1-daniel.lezcano@linaro.org>
 <20220125171809.1273269-6-daniel.lezcano@linaro.org>
In-Reply-To: <20220125171809.1273269-6-daniel.lezcano@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Jan 2022 10:40:37 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXZEYNjFh2T4beWdfn8av_qXaPbg4yFk=9whESnLBaFAQ@mail.gmail.com>
Message-ID: <CAMuHMdXZEYNjFh2T4beWdfn8av_qXaPbg4yFk=9whESnLBaFAQ@mail.gmail.com>
Subject: Re: [PATCH v7 5/5] rockchip/soc/drivers: Add DTPM description for
 rk3399
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Rob Herring <robh@kernel.org>,
 lukasz.luba@arm.com, Heiko Stuebner <heiko@sntech.de>, arnd@linaro.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_014052_175591_71CE11A1 
X-CRM114-Status: GOOD (  27.56  )
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

Hi Daniel,

On Tue, Jan 25, 2022 at 6:18 PM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
> The DTPM framework does support now the hierarchy description.
>
> The platform specific code can call the hierarchy creation function
> with an array of struct dtpm_node pointing to their parent.
>
> This patch provides a description of the big / Little CPUs and the
> GPU and tie them together under a virtual 'package' name. Only rk3399 is
> described now.
>
> The description could be extended in the future with the memory
> controller with devfreq.
>
> The description is always a module and it describes the soft
> dependencies. The userspace has to load the softdeps module in the
> right order.
>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Thanks for your patch!

> ---

Can you please insert a changelog here, especially if you don't CC all
parties on the cover letter?
Yes, I can get it from lore, but it's easier for the audience if it's included
here.

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
