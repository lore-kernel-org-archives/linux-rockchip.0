Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9A2F1125807
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 13:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFHoYags3eKRDEXGoXC1zhk8ZsYwpLq3ZytlNKOQ94U=; b=Qfkym+bGKGFjbJ
	fmCXb0xchJ6svi+Yra5pVHuuuWssTz5iMA2SqW6mJ3MSYjhsfFV8yFPitJdSfCzfgwtv90+KccDzk
	EtXxGBYenrEFzZ6IZCvHn40VqpW55ixhZ7CdkMUZQdTd/gdfvUfcwvYMakJ3rvv25dGSbLvoNYiCg
	e8jbilUE/f2PipXUz3cfwWbBYAnDW5NT6XTaX9e2uzieEwsz2JrqAdKJmC9kosKOSMW595CEr+4xP
	dGsfPMfIvs7VGdpa0LuzR4xVkQ3GLM60T4Ae9EhFEb22QU7YQsXvWhbLmg/RW1hgNEv+ApwRmcPRI
	X5kcIC5Us4iLsR5eJkfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JWk-0000000BdEu-26rz;
	Wed, 11 Mar 2026 13:23:06 +0000
Received: from mail-ua1-f50.google.com ([209.85.222.50])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JWh-0000000BdDK-3pu6
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 13:23:04 +0000
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-94acb3d6cceso7780973241.2
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 06:23:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235382; x=1773840182;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=34DR94e/1PAvLLEaib58vFA4GW0m5SGe6jvxchEhMek=;
        b=EUsiuiwgJr1M5VuSexWGbrs1sIuJNOu8nAmYZV74EXpnmd9cT41QhZKpB4g9iYnUpB
         3FSiuIIupU624x7WDWMnobTlkPgVOTOjLP6KK6QTTZ63DaSEjzlvV2nlcQtTN/Q4p6+C
         sNpxM3YJz+W4/k5gzL9Ek7mX8Nhn9thDeZT9dKU9VHLzIAUM2CkAWz9T33KdKv5sT6+a
         rw/dZIRFIGjsKg6qWIrnyri2+zVzoLRaC2y/1my28jFHkyayuWAXzbIyykbNTI6xVJSI
         0rxNqTmq1E8dmSPtjGGOx7d/PWmK4dxMr3WDHX4sL8sHnEWPCg0wcuzavsjz8dUJ0plQ
         CUQg==
X-Forwarded-Encrypted: i=1; AJvYcCUTtHSIM9kWyNRc1NTWxvG7pVkfoxXRdTj+SHHVKJioNGfuxjnIF7sMXj2Li9509xn1xVxJTlmvk0gGNm1Hmg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwZgm9bkMd7rsoJzXZY11b3hAPaTfyJQUABSgdy4ddUWAgvuA8B
	F5EEzolr5KFt8la+F85HLybZhYgkjo0qr2Z+fLN7sFIVQe11gsAQkOZiwzmz20IW0gc=
X-Gm-Gg: ATEYQzxyeTzsqSStr4jEHtYR4ZhOUU885Ureaa1ijUt59pl1SG+3AYCWftO+dgByAnv
	LI6I/c/n7ArRK4q9cT+/KFDpebD3L6XHbcKSoKMN2XRh/TiC7cz2DK96nhNKA5eQgzw5if8dPpg
	qce9KgRLUowKM2i+isev1dMa/YpH9e3VkhTQUpjQ6YrKSM5B4fB09luKz0ClzELCWvGvr8wqk7K
	4Q7DT/ccOj5GqIixMT2vxsORAq0gHpAtTiEcXpqdC1eoVdrZb19HiWg0iwyIIbQ3cA2pVEUDUJ1
	VcicSB+OzuBx/JWNf7Vg5Z1qNziRib9mOixJx5dnVTuUcOO0f//weRmcV1T5KgjxudrrfyV+CqU
	xrI5WK555exAcMuPC6ZVuIdm/Dntr4dfHnRKAJxNIYmOvJJZiPqi52cG8BGuB8j3UnBX/Me6XH3
	I5OqSTV2t4vYZB4KcctvGDuz+Gg2PBbGgPsuX/nRSonleg/TGiS28b41J1xSDzkrV0
X-Received: by 2002:a05:6102:370c:b0:5e1:866c:4f8a with SMTP id ada2fe7eead31-601def4dc13mr1002554137.20.1773235382438;
        Wed, 11 Mar 2026 06:23:02 -0700 (PDT)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94ecfedb663sm562622241.9.2026.03.11.06.23.02
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:23:02 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-56739adfa1aso10529788e0c.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 06:23:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUpYrscSBQOSxIJ9Da9Eb0uy4g2lKUxgitfTIZdxz0GkLgjMGRCLYV5nd6YOENX+EFTfBzdxlMIc45AAaWySw==@lists.infradead.org
X-Received: by 2002:a05:6122:1d05:b0:55b:7494:177b with SMTP id
 71dfb90a1353d-56b4752d806mr922396e0c.10.1773234967338; Wed, 11 Mar 2026
 06:16:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de> <20260310-b4-is_err_or_null-v1-36-bd63b656022d@avm.de>
In-Reply-To: <20260310-b4-is_err_or_null-v1-36-bd63b656022d@avm.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 14:15:56 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXQ8Q4jvkgFRJYhghz2BZRDC-9Mk6DbXxuaOc6C9DFHZQ@mail.gmail.com>
X-Gm-Features: AaiRm52J84H77ROK64ZWWtJfaiCpnFeKyoSRmPbi-NC8CN6Ju1TJEFxJU9gZQQ8
Message-ID: <CAMuHMdXQ8Q4jvkgFRJYhghz2BZRDC-9Mk6DbXxuaOc6C9DFHZQ@mail.gmail.com>
Subject: Re: [PATCH 36/61] arch/sh: Prefer IS_ERR_OR_NULL over manual NULL check
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com, 
	bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr, 
	dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org, 
	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-block@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, linux-btrfs@vger.kernel.org, 
	linux-cifs@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-erofs@lists.ozlabs.org, linux-ext4@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hyperv@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-mips@vger.kernel.org, linux-mm@kvack.org, 
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, ntfs3@lists.linux.dev, 
	samba-technical@lists.samba.org, sched-ext@lists.linux.dev, 
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
	v9fs@lists.linux.dev, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	Rich Felker <dalias@libc.org>, John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_062303_960638_BD9A9D98 
X-CRM114-Status: GOOD (  14.94  )
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

On Tue, 10 Mar 2026 at 12:56, Philipp Hahn <phahn-oss@avm.de> wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
>
> Change generated with coccinelle.
>
> To: Yoshinori Sato <ysato@users.sourceforge.jp>
> To: Rich Felker <dalias@libc.org>
> To: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
> Cc: linux-sh@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
