Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F94AD116EA
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Nov 2025 06:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJPJmQcvG0h1m3pxHtdM0ZZTHL0cnpEacVmenqKa+UA=; b=N0p4DzC2AXM6GX
	Sa340k67W+hZaJGEduLvUPbNEaogEsPCjqTbTEftIHnG+5CKH/YIF+WGM2gUuL3LwimDTV5wdS8MN
	HLJAzMj4OPVDlAOCTvDupB1PWHvlYhUN+n7cpkiyZcA6EbnRFwgYayt6CA79PjSAR7La++UiCJOf8
	R+rwXp/ZF5wj6IEoivmHZu/TTc0BFMOe/LjXJ25RXUmuB6Dc191T9sB49wZD/JT7rdUgpIIuVzTPk
	aQzK9EQst7wu90T/tuYU3kFlYuNAV7OQE8PH7GOjhxR/GPh8I7v+oImm7pkQcXwppqhQN++uSgtv3
	orU/tqbJKg5hmreb6lkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPEof-00000001KX5-2AIH;
	Sat, 29 Nov 2025 06:52:21 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPEoc-00000001KWe-1cIS
	for linux-rockchip@lists.infradead.org;
	Sat, 29 Nov 2025 06:52:19 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-640a503fbe8so4773971a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Nov 2025 22:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764399136; x=1765003936; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mY57t/v7l7+q+SXGdGf8+i198PFB2EV4ssC0luXesUA=;
        b=I7sVmNiR6UMamd92nzKl2dX6gWWEhrYtD/kW4x0O+k+D3OE+CZCNVGESWPSTYUHDBc
         wsBJsrruJd8Gz6+Av0ISP4GbpBI80DPBuSYHuWr5y9RMQIDk0ISukiU0WPHH1/p/jY04
         54hIwGTIMV4E2HPffpmkwJURVjd5+TDtzcv+FDcns1yN132K2vtV8/6qXPQ9nJK1Wndl
         2hXLT6mKvqCtlIhqx6Hl3T4D3/jZs46ixPSBr7TVQELAJZpEviw9BfywK9clmisO6Yfr
         jyhtS3KcDPWyHoBG0CZSlR5SBNfHWvJIv91IlOxpTg0VV4hZwp7nftkvQnon+uY9gy/i
         UoTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764399136; x=1765003936;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mY57t/v7l7+q+SXGdGf8+i198PFB2EV4ssC0luXesUA=;
        b=fF2yt29Nl4BBkHCYwOMbPR+n19lAiEKQJwZ2HGlncwMiniDpG+/8D+6Rzr5uMnsM3g
         ywmUM8ciPKfQzS37NYJDQxvulgQ/hRqRM5KKOQIoYW9Gh0WwdN5ags7Ky7//AzM9zo+C
         T9t37qMxg2wpOGTW1yb9Bn+BGLno1x7qHOMpZ/xZ1npWo6vlO4WvBl8mMNNSLbBMavID
         xrhYvQK7zh8KTPNEeHo5lYiowH8t5p0GRsT5wxmBcANuKAle/NHbMJiCRXxqrZ7lY8ch
         aI8kON9RDWF5Z+syqZZmFyMceKZYq+wBZXBd7bRK2uaYLtHQZhjghx4FUDw8nR2N2Ei/
         UWDg==
X-Forwarded-Encrypted: i=1; AJvYcCVb68zGLk9guO3Pg6H+n2ScXvKb8TqKYbjLSahof94d0efv1XSLUFlWDLti47IRzdpSgIeFekoVj4NxlDDpIw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzA14Jpn55XKNmWCIo+S8fpXk/yOxNjYaKTLx6ZuGIuVwqzPpGU
	DvGN58OX0X6mM365MucqySS1/DK0gqGAuTkAClwCCRXmbecZuh4ZNZHfn974dy5NBcrv/v7Ku9k
	6wWMFc38utoc/g2RAZLvscR86qrdvLXAvnYVb
X-Gm-Gg: ASbGnct6m329Pl6fMq11Qzw/YijJNAVT2HqvdgLCWiJo/Gi9NshSswhqCJtusbvF+AX
	1QK/9h8Xzvx9oQBw8C3lSEURheNuulFFq7CAXKUgFS802MsQ8Ga07ul1+HJUlqKUXaafv58sfpW
	g3xonvs7rdYsTBeSu5HuL/KaTpx8aivFag2tjK0QjoI7mVI6c9LycdN/Ws9LEGW5Xi3T/E0R/JL
	aS5Jij/ww/DYKFIWJuIeG0o9PaImW13Chcd1xRmq08qFjwvLjBGRf7Lwc1VzLTDwVC2Ug==
X-Google-Smtp-Source: AGHT+IEWbCpvWmUs2vHbk6WH4VEpZA3VDYQCv5LZHzbValWzg3sRI2GhxxXJjnqqkRLwKiso/m6RqBqq2D87EH2dXfM=
X-Received: by 2002:a05:6402:26c1:b0:647:5c87:8668 with SMTP id
 4fb4d7f45d1cf-6475c8786c8mr5315010a12.14.1764399135812; Fri, 28 Nov 2025
 22:52:15 -0800 (PST)
MIME-Version: 1.0
References: <20251027005220.22298-1-naoki@radxa.com>
In-Reply-To: <20251027005220.22298-1-naoki@radxa.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 29 Nov 2025 12:21:58 +0530
X-Gm-Features: AWmQ_bmJZvas800HhmEpnUFfX62SZoRx2KXDDiwowp2UV_htK6hrUPjWWrOs7bw
Message-ID: <CANAwSgS-OxBoRy4jwb+XkuxYwws3P97eAFaOJAPBvK5gtgHuLg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	knaerzche@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_225218_434029_AAA397DB 
X-CRM114-Status: GOOD (  12.40  )
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

Hi FUKAUMI,

On Mon, 27 Oct 2025 at 06:24, FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
> audio-supply for Rock Pi 4").
>
> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
> [3][4][5].
>
> This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
> and the garbled serial console output on Linux.
>
> The ES8316 headphone and microphone are confirmed to work correctly
> after this fix.
>
> [1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4a/ROCK_4A_V1.52_SCH.pdf p.14
> [2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1730_schematic.pdf p.14
> [3] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4b/ROCK_4B_v1.52_SCH.pdf p.14
> [4] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1730_schematic.pdf p.14
> [5] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4-SE-V1.53-SCH.pdf p.14
>
> [6]
> => led blue:status off
> => sf probe
> SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
> => led blue:status on
> => sf probe
> jedec_spi_nor flash@0: unrecognized JEDEC id bytes: ff, ff, ff
> Failed to initialize SPI flash at 1:0 (error -2)
>
> Fixes: 7ebfd4f6b52a6 ("arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+")
> Fixes: 8240e87f16d17 ("arm64: dts: rockchip: fix audio-supply for Rock Pi 4")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Tested-by: Anand Moon <linux.amoon@gmail.com>

With this patch applied,  I can get my console working.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
