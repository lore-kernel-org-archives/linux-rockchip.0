Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8918606A335
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 07:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0noPWOLM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Y0urZHh3fnuTOilcRuMCUcW5egqfgTiPMkTohNGkUBE=; b=0noPWOLMPX9CDC+OM5lOnUp3tm
	svkm6S+K15obrlV7y4+zZfSxQ4OoIQuIjQurYUXyiVUiktBdGQW+NIQwH5b10mYmqHUdj3MdPO2YZ
	8isKNpenU4pA9UjigIcIolJ3ZMXTV2FvlwGOTVEcs6lMgcj9mB6U6kkSIZgI24B91jegFa2tAGb2F
	GHMS+M0UqdAJvwFiQOs9hNJRLOO/RpeGGt3MzJ8YFijmxoHx4nS/dbpaNlZxNQwzlXejWrDTh8jGh
	q5sAjyDa9sUBGjt57g8QP/wkmq1tS0S2aUuVINsNpFn3WRuAE19VoTrl7+q79w1Znj3O4uyJQcRxh
	tbbsrsBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUJN3-0000000EHA6-0q2E;
	Fri, 20 Nov 2026 07:49:21 +0000
Received: from mail-ua1-f42.google.com ([209.85.222.42])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUJN1-0000000EH9V-1X30
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 07:49:20 +0000
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-9908c849564so181847241.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Nov 2026 23:49:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795160958; x=1795765758;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=xKnU/TldM314xEN7UqLDGvv/eDTZSOGz68aX0N6/qi4=;
        b=hZHzXZRyUMgf6FDuKiaW0CTt1TG6an5xIkE33hNHZmT5cLIioh1g4NNQwvmk+zHRca
         C2Tk5HLyMw6/Gg90unE22T2Uj13cIQzXKPXvu+tGVN8DKTNkHKAyxa1PTtvnQp0zQJqE
         VF2AdWcwb3T8SU7OTqX/j/jHe5hHjcBxG5vkiRSfadCkMZ5+cDrYL3Da+4J+iRCPUjSV
         FnqeA7zojpf83ncx7uGXSu0kNOsDXvMWrOzwUTUwpxr+d7KNAWVUh4GjyILAeIZZPSAm
         XHW1zvdl5DLOXZqyzsSpej5MVCITddsPkp67Bk76ty4N0uFSLgpRo72s5n+fPXtUN95M
         0UkA==
X-Forwarded-Encrypted: i=1; AL+hErFc3a4gZ4AjjWkjxMy3y+yDKxa/5C2LEnsNtwK8+S7CW2kZ0S5ziYvcd2Nl+SBLsL+TdN8udt+7p/IlJdpz0w==@lists.infradead.org
X-Gm-Message-State: APuU4Z+uUCp8Xt6RpLXcFEQa05z29uua3Jra7axoFr33VNe85TmwLvL+
	g/EtM4jbGOHgg/jw+T4WC0lRER+SNGlqo4glTgSy8z75oNsGeQ3xfyXN6UPnu0ie
X-Gm-Gg: AZFdTZdR7tOBFglErX0/TxozQkL5n+DNqpSY6mnWAH43Kt9pps1hN8kaz4/AHOMUjHY
	cCMjUMNP2X06jJGzR1O6VVWasUJzRG0cqOl1T8tdgQ3UK/DRcUSoy6x1QHn1Vegtvb9cJw674cE
	b5jb/es1MStpHyvd519cQxfynL0iv29JeQOyHzrs2IY4/wVz7OrA0afKV0f1NT3oGO5dw9BmPYc
	BfYIunGSAaljrZpiPto5LgynRg1dPFYbaoT7YX5B93Z581jroyuICaW6gRAiOmnUefW791xtNpM
	acRRaTxUoad109Qndj8ZgU+rD0fY31PDfzfnzZRPpy/X+cduoTE4W65lSmOzmTigbjzaoKCu1cX
	NfpW9vllaT8driBwyacQsLl6nuCauImlEXZv2x+n8raonbiXKcYPyJu9bBEC9P5q9G3n8Fski7H
	KxJXjO1FokLgjK5kOGuUY6Up5D9Joma6mWlNca8HXjUBI3C6DzgBupw6yqOxF72YpOww3GOM/x7
	GpFnag4p5GUe3slFt4yo33x7MvLIJ0mUDjbmpTu0l0/0nd4LMesNqFo4b6m1cP/LZsvv4hnybO4
	3p89uN4xQB5p0rVq39GTLKg7QCYhy1ihg3XoeOFy8LDL4WxqPEkWfaYLScYxs892bTg=
X-Received: by 2002:a05:6102:448b:b0:7d2:cb94:b177 with SMTP id ada2fe7eead31-7d73957a1ffmr780722137.17.1795160957846;
        Thu, 19 Nov 2026 23:49:17 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5ee8b635d0fsm1828364e0c.15.2026.11.19.23.49.16
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2026 23:49:17 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-99ac154431bso120643241.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Nov 2026 23:49:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErG/6CIXkrfJqoGYgcFtBvuu281yaeG8GUMbpe0x3vnIY16QfAGhBZzUOLIDuknm4HI9YlWsvoI/zV/wDaB6Qw==@lists.infradead.org
X-Received: by 2002:a05:6102:6c4:b0:7b3:8f0a:f76c with SMTP id
 ada2fe7eead31-7d7393caab1mr683612137.13.1795160956421; Thu, 19 Nov 2026
 23:49:16 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <cover.1795094688.git.geert+renesas@glider.be> <683b5b189409e5ee04100044fb615b01cb877f3d.1795094688.git.geert+renesas@glider.be>
 <20261119225017.15a7b5cc@kemnade.info>
In-Reply-To: <20261119225017.15a7b5cc@kemnade.info>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Nov 2026 08:49:05 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVbgGV_6yjOip4xT3YhBgaOveHzSRbw9e_cHen9NRZqmw@mail.gmail.com>
X-Gm-Features: Aa3M54rfGlA3UrmhLbFF7B0m1MfxoFvw1pyboKcP24dUngkkG_fWLkpDdrOnbn8
Message-ID: <CAMuHMdVbgGV_6yjOip4xT3YhBgaOveHzSRbw9e_cHen9NRZqmw@mail.gmail.com>
Subject: Re: [PATCH 5/6] [RFT] ARM: OMAP2+: Convert to dev_clk_get_from_provider()
To: Andreas Kemnade <andreas@kemnade.info>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Russell King <linux@armlinux.org.uk>, Paul Walmsley <paul@pwsan.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney+clk@redhat.com>, Jerome Brunet <jbrunet+clk@baylibre.com>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andyshrk@163.com>, Ulf Hansson <ulfh@kernel.org>, linux-clk@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_234919_442266_4C17E235 
X-CRM114-Status: GOOD (  26.06  )
X-Spam-Score: -0.8 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Andreas,

On Thu, 19 Nov 2026 at 22:50, Andreas Kemnade <andreas@kemnade.info> wrote:
> On Thu, 19 Nov 2026 14:40:38 +0100
> Geert Uytterhoeven <geert+renesas@glider.be> wrote:
>
> > OMAP2+ clock handling uses of_clk_get_from_provider() to obtain clocks
> > used for power management, so the latter show up as "deviceless" in the
> > consumer column of the clk_summary file in debugfs.
> >
> > Fix this by using dev_clk_get_from_provider() instead, letting us pass
> > the consumer device, too.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > Compile-tested only.
> >
> > The first change is probably OK.  The second change may fail if anything
> > in the oh->od->pdev->dev chain is not available yet at this point.
>
> Test on OMAP3:

Thanks for testing!

> --- clk-old     2026-11-19 22:44:59.810807920 +0100
> +++ clk-new     2026-11-19 22:26:52.862531880 +0100
> @@ -1,17 +1,17 @@
>                                   enable  prepare  protect                                duty  hardware                            connection
>     clock                          count    count    count        rate   accuracy phase  cycle    enable   consumer                         id
>  ---------------------------------------------------------------------------------------------------------------------------------------------
> - oscillator                          0       0        0        26000000    0          0     50000      Y   deviceless                      of_clk_get_from_provider
> + oscillator                          0       0        0        26000000    0          0     50000      Y   deviceless                      dev_clk_get_from_provider
>                                                                                                             deviceless                      no_connection_id
> - secure_32k_fck                      0       1        0        32768       0          0     50000      Y   deviceless                      of_clk_get_from_provider
> + secure_32k_fck                      0       1        0        32768       0          0     50000      Y   deviceless                      dev_clk_get_from_provider
>                                                                                                             deviceless                      no_connection_id
> -    wdt1_fck                         0       0        0        32768       0          0     50000      Y      deviceless                      of_clk_get_from_provider
> +    wdt1_fck                         0       0        0        32768       0          0     50000      Y      deviceless                      dev_clk_get_from_provider
>                                                                                                                deviceless                      no_connection_id
>      gpt12_fck                        0       1        0        32768       0          0     50000      Y      48304000.timer                  fck
>                                                                                                                48304000.target-module          fck
> -                                                                                                              deviceless                      of_clk_get_from_provider
> +                                                                                                              deviceless                      dev_clk_get_from_provider
>                                                                                                                deviceless                      no_connection_id
> - dummy_ck                            0       0        0        0           0          0     50000      Y   deviceless                      of_clk_get_from_provider
> + dummy_ck                            0       0        0        0           0          0     50000      Y   deviceless                      dev_clk_get_from_provider
>                                                                                                             deviceless                      no_connection_id
>   mcbsp_clks                          0       5        0        0           0          0     50000      Y   deviceless                      mcbsp_clks
>                                                                                                             deviceless                      mcbsp_clks

Hmm, so the passed device is always NULL, and thus there is no point
in making the change.
Do you know if these come from the first or second change in my patch
(I guess the second)?

Thanks again!

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
