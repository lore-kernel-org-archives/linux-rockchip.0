Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D03C8C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jul 2022 06:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgfRk+4348BK1++7zBvdZH/WDfIcPkb2vLVpx2DL/SU=; b=JNGOVjmjP5zBos
	sVM3bQDrqnCAJigXkM7VxNNNVzVYqpK5YK1jZ3tNdeTPEigLeMgI2Xq6aDvcqSDAEKvps5myFrytn
	ujPJ7KMOUUHdn6nwbMnTvrd2ybAYsssOBvZkrHpkrSg6BTDmc2n9cfesJUma3ZNXBF+UpkZ8NqcjH
	kvNjq2GRBxrOBtVoheJBJgBOd6nc68a47o3KANv9VOgltuUuFfg5UkHHIHg+h29cpA3P/D0uqYPVU
	JxdSC+F4AXTFXRMDEX+MST9cImG6g7T7GGJSe4O4kjdJaZksjOGAqw/HcsykgNBbO6qpcQKx0dol4
	/VvQY+YVNgSxf4s9d8OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCbYf-00EGfR-VF; Sat, 16 Jul 2022 06:45:45 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCbYb-00EGdA-Re
	for linux-rockchip@lists.infradead.org; Sat, 16 Jul 2022 06:45:44 +0000
Received: by mail-ej1-x634.google.com with SMTP id j22so12414205ejs.2
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 23:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HipZeTSpA19RU4Hp2M0HETtT9n6bH3Wl9VTITl/nWZg=;
        b=B/INUAinjy9qg2+rm0GcFd2JZPcLB2ykUpT7RyUOviN+dr00bzlwJWGwgRSGuR7xA/
         b+ovq7VPpEDXD+AnADORByvN4p9MLbnpuKDtK1GFpRhoZ8l0WTpYMtbTyHWysY/1IYyj
         GtMMNF769f/o/SPNjzHvb2W+oJcdVivUKn88LEXmiFflwLoihUrVB8tswz17gTvK6Lzw
         SG7QE8DSWZw7uh1bKytGT38BchPKccFd/5lkpBbl2iYcCDKvrKMLpSxp0yURefRG9RtA
         dbXaPScCYxzbsvXwlI4ti4fujpbTsBktdzCivgYPDMB1JIMN0xskohR4HOsDALJFBWB+
         sUdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HipZeTSpA19RU4Hp2M0HETtT9n6bH3Wl9VTITl/nWZg=;
        b=sYWp4RO7cdfsqA3Tt1GZ40s5id7saH8UAt8ayYfXYSPe3RYBy5Az4kQsQCe/Pcqc7o
         hjMfojwj0CJjyC51vjPYsCtq/pcPBL6w8toh4N/S565k5mkL+kF3ahUDm8py4WHvkZ1/
         Y+CBn4rpmfz57NCNNNm8ImPH5XWW2mkg8nq11nBKWM95A6W0Kcl0Hk0B5V3LrYs0DD3S
         zQx9/miRLSTrZqrOls2ZvJHv8YJHA0wqSljlFHRoHGmIsIBrXRtnTG2daHwF93bmGxKV
         NXNS6pYOCOIUBNi+hIoAq63TrUi1eit6UPjeuDddHPesl0w6sOhzUvhHHmGHjcFboIma
         aBnQ==
X-Gm-Message-State: AJIora8feufmDuFfBJA8lkAUfjgkprspXfesDxd3VjitKqC9+tflp/lG
	DiMk6Ovvre/pRs8RBF+fxJ8=
X-Google-Smtp-Source: AGRyM1saRfPcbaDjRVaouZrq4KMzTQAX3XsnE5QnaIvE2GmgTu8NcxyvQIIRQeM0tpNFOnh7T8pZrQ==
X-Received: by 2002:a17:907:a076:b0:72b:4ad1:53ba with SMTP id ia22-20020a170907a07600b0072b4ad153bamr16305373ejc.685.1657953938701;
        Fri, 15 Jul 2022 23:45:38 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-118-115.static.t-2.net. [89.212.118.115])
        by smtp.gmail.com with ESMTPSA id vp21-20020a17090712d500b006feba31171bsm2889352ejb.11.2022.07.15.23.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jul 2022 23:45:37 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>, Sebastian Fricke <sebastian.fricke@collabora.com>, linux-media@vger.kernel.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: knaerzche@gmail.com, kernel@collabora.com, bob.beckett@collabora.com, ezequiel@vanguardiasur.com.ar, mchehab@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, Yury Norov <yury.norov@gmail.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 0/6] RkVDEC HEVC driver
Date: Sat, 16 Jul 2022 08:45:35 +0200
Message-ID: <2107456.irdbgypaU6@jernej-laptop>
In-Reply-To: <f05896551f8545af3c7352a6bd38248e038b61d2.camel@collabora.com>
References: <20220713162449.133738-1-sebastian.fricke@collabora.com> <7be996ee-9977-129b-08e2-12bde7ac9cd7@arm.com> <f05896551f8545af3c7352a6bd38248e038b61d2.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_234541_943492_CF3E2BA8 
X-CRM114-Status: GOOD (  55.38  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Dne petek, 15. julij 2022 ob 17:36:01 CEST je Nicolas Dufresne napisal(a):
> Le vendredi 15 juillet 2022 =E0 12:04 +0100, Robin Murphy a =E9crit :
> > On 2022-07-13 17:24, Sebastian Fricke wrote:
> > > Implement the HEVC codec variation for the RkVDEC driver. Currently o=
nly
> > > the RK3399 is supported, but it is possible to enable the RK3288 as it
> > > also supports this codec.
> > > =

> > > Based on top of the media tree @ef7fcbbb9eabbe86d2287484bf366dd1821cc=
6b8
> > > and the HEVC uABI MR by Benjamin Gaignard.
> > > (https://patchwork.linuxtv.org/project/linux-media/list/?series=3D836=
0)
> > > =

> > > Tested with the GStreamer V4L2 HEVC plugin:
> > > (https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/=
107
> > > 9)
> > > =

> > > Current Fluster score:
> > > `Ran 131/147 tests successfully               in 278.568 secs`
> > > with
> > > `python3 fluster.py run -d GStreamer-H.265-V4L2SL-Gst1.0 -ts
> > > JCT-VC-HEVC_V1 -j1`
> > > =

> > > failed conformance tests:
> > > - DBLK_D_VIXS_2 (Success on Hantro G2)
> > > - DSLICE_A_HHI_5 (Success on Hantro G2)
> > > - EXT_A_ericsson_4 (Success on Hantro G2)
> > > - PICSIZE_A_Bossen_1 (Hardware limitation)
> > > - PICSIZE_B_Bossen_1 (Hardware limitation)
> > > - PICSIZE_C_Bossen_1 (Hardware limitation)
> > > - PICSIZE_D_Bossen_1 (Hardware limitation)
> > > - PPS_A_qualcomm_7 (Success on Hantro G2)
> > > - SAODBLK_A_MainConcept_4 (Success on Hantro G2)
> > > - SAODBLK_B_MainConcept_4 (Success on Hantro G2)
> > > - SLIST_B_Sony_9 (Success on Hantro G2)
> > > - SLIST_D_Sony_9 (Success on Hantro G2)
> > > - TSUNEQBD_A_MAIN10_Technicolor_2 (Success on Hantro G2)
> > > - VPSSPSPPS_A_MainConcept_1 (Success on Hantro G2)
> > > - WPP_D_ericsson_MAIN10_2 (Fail on Hantro G2)
> > > - WPP_D_ericsson_MAIN_2 (Fail on Hantro G2)
> > > =

> > > Not tested with FFMpeg so far.
> > > =

> > > Known issues:
> > > - Unable to reliably decode multiple videos concurrently
> > > - The SAODBLK_* tests timeout if the timeout time in fluster is lower
> > > than 120 - Currently the uv_virstride is calculated in a manner that =
is
> > > hardcoded for the two available formats NV12 and NV15.
> > > (@config_registers)
> > > =

> > > Notable design decisions:
> > > - I opted for a bitfield to represent the PPS memory blob as it is the
> > > perfect tool for that job. It describes the memory layout with any
> > > additional required documentation, is easy to read and a native langu=
age
> > > tool for that job
> > =

> > Can I point out how terrible an idea this is? The C language gives
> > virtually zero guarantee about how bitfields are actually represented in
> > memory. Platform ABIs (e.g. [1]) might nail things down a bit more, but
> > different platforms are free to make completely different choices so
> > portability still goes out the window. Even for a single platform,
> > different compilers (or at worst even different version of one compiler)
> > can still make incompatible choices e.g. WRT alignment of packed
> > members. Even if you narrow the scope as far as a specific version of
> > AArch64 GCC, I think this is still totally broken for big-endian.
> > =

> > The fact that you've had to use nonsensical types to trick a compiler
> > into meeting your expectations should already be a clue to how fragile
> > this is in general.
> > =

> > > - The RPS memory blob is created using a bitmap implementation, which
> > > uses a common Kernel API to avoid reinventing the wheel and to keep t=
he
> > > code clean.
> > =

> > Similarly, Linux bitmaps are designed for use as, well, bitmaps. Abusing
> > them as a data interchange format for bit-aligned numerical values is
> > far from "clean" semantically. And I'm pretty sure it's also broken for
> > big-endian.
> > =

> > This kind of stuff may be standard practice in embedded development
> > where you're targeting a specific MCU with a specific toolchain, but I
> > don't believe it's suitable for upstream Linux. It would take pretty
> > much the same number of lines to use GENMASK definitions and bitfield.h
> > helpers to pack values into words which can then be written to memory in
> > a guaranteed format and endianness (certainly for the PPS; for the RPS
> > it may well end up a bit longer, but would be self-documenting and
> > certainly more readable than those loops). It mostly just means that for
> > any field which crosses a word boundary you'll end up with 2 definitions
> > and 2 assignments, which is hardly a problem (and in some ways more
> > honest about what's actually going on).
> =

> Thanks for the feedback, in multimedia (unlike register programming), we
> don't really consider bitstreams as bitmap or bitfield. What we do really
> expect is to use bit writer helpers (and sometimes a bit reader though we
> try and avoid the second one in the  kernel). Its more of less a cursor (a
> bit position) into a memory that advance while writing. A bit writer shou=
ld
> help protect against overflow too.
> =

> When writing lets say a chain of 8 bits from a char, a proper helper is
> expected to be very explicit on the ordering (write_u8_le/be or something
> better worded). I would rather like to see all these blobs written this w=
ay
> personally then having a cleared buffer and writing using bit offsets.
> =

> Perhaps I may suggest to start with implementing just that inside this
> driver? It isn't very hard, and then the implementation can be reduced
> later and shared later, with whatever exists without deviating from the
> intent of the existing API ? I do believe that having this in linux-media
> can be useful in the future. We will notably need to extend such a helper
> with multimedia specific coding technique (golomb, boolean coding, etc.)
> for use in stateless encoder drivers.

I don't know RKVDEC, but at least Cedar has integrated bitstream parsing =

engine. Is there something similar in RKVDEC? That way HW could be used =

instead of SW implementation.

Best regards,
Jernej

> =

> Nicolas
> =

> > Thanks,
> > Robin.
> > =

> > [1]
> > https://github.com/ARM-software/abi-aa/blob/main/aapcs64/aapcs64.rst#bi=
t-f
> > ields> =

> > > - I deliberatly opted against the macro solution used in H264, which
> > > declares Macros in mid function and declares the fields of the memory
> > > blob as macros as well. And I would be glad to refactor the H264 code=
 if
> > > desired by the maintainer to use common Kernel APIs and native langua=
ge
> > > elements.
> > > - The giant static array of cabac values is moved to a separate c fil=
e,
> > > I did so because a separate .h file would be incorrect as it doesn't
> > > expose anything of any value for any other file than the rkvdec-hevc.c
> > > =

> > > file. Other options were:
> > >    - Calculating the values instead of storing the results (doesn't s=
eem
> > >    to be worth it)
> > >    - Supply them via firmware (Adding firmware makes the whole softwa=
re
> > >    way more complicated and the usage of the driver less obvious)
> > > =

> > > Ignored Checkpatch warnings (as it fits to the current style of the
> > > file):
> > > ```
> > > WARNING: line length of 162 exceeds 100 columns
> > > #115: FILE: drivers/media/v4l2-core/v4l2-common.c:265:
> > > +               { .format =3D V4L2_PIX_FMT_NV15,    .pixel_enc =3D
> > > V4L2_PIXEL_ENC_YUV, .mem_planes =3D 1, .comp_planes =3D 2, .bpp =3D {=
 5, 5,
> > > 0, 0 }, .hdiv =3D 2, .vdiv =3D 2,
> > > =

> > > ERROR: trailing statements should be on next line
> > > #128: FILE: drivers/media/v4l2-core/v4l2-ioctl.c:1305:
> > > +       case V4L2_PIX_FMT_NV15:         descr =3D "10-bit Y/CbCr 4:2:0
> > > (Packed)"; break; ```
> > > =

> > > v4l2-compliance test:
> > > ```
> > > Total for rkvdec device /dev/video3: 46, Succeeded: 46, Failed: 0,
> > > Warnings: 0 ```
> > > =

> > > kselftest module run for the bitmap changes:
> > > ```
> > > $ sudo insmod
> > > /usr/lib/modules/5.19.0-rc3-finalseries/kernel/lib/test_bitmap.ko [  =

> > > 71.751716] test_bitmap: parselist: 14: input is '0-2047:128/256' OK,
> > > Time: 1750 [   71.751787] test_bitmap: bitmap_print_to_pagebuf: input
> > > is '0-32767 [   71.751787] ', Time: 6708
> > > [   71.760373] test_bitmap: set_value: 6/6 tests correct
> > > ```
> > > =

> > > Jonas Karlman (2):
> > >    media: v4l2: Add NV15 pixel format
> > >    media: v4l2-common: Add helpers to calculate bytesperline and
> > >    =

> > >      sizeimage
> > > =

> > > Sebastian Fricke (4):
> > >    bitops: bitmap helper to set variable length values
> > >    staging: media: rkvdec: Add valid pixel format check
> > >    staging: media: rkvdec: Enable S_CTRL IOCTL
> > >    staging: media: rkvdec: Add HEVC backend
> > >   =

> > >   .../media/v4l/pixfmt-yuv-planar.rst           |   53 +
> > >   drivers/media/v4l2-core/v4l2-common.c         |   79 +-
> > >   drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
> > >   drivers/staging/media/rkvdec/Makefile         |    2 +-
> > >   drivers/staging/media/rkvdec/TODO             |   22 +-
> > >   .../staging/media/rkvdec/rkvdec-hevc-data.c   | 1844 ++++++++++++++=
+++
> > >   drivers/staging/media/rkvdec/rkvdec-hevc.c    |  859 ++++++++
> > >   drivers/staging/media/rkvdec/rkvdec-regs.h    |    1 +
> > >   drivers/staging/media/rkvdec/rkvdec.c         |  182 +-
> > >   drivers/staging/media/rkvdec/rkvdec.h         |    3 +
> > >   include/linux/bitmap.h                        |   39 +
> > >   include/uapi/linux/videodev2.h                |    1 +
> > >   lib/test_bitmap.c                             |   47 +
> > >   13 files changed, 3066 insertions(+), 67 deletions(-)
> > >   create mode 100644 drivers/staging/media/rkvdec/rkvdec-hevc-data.c
> > >   create mode 100644 drivers/staging/media/rkvdec/rkvdec-hevc.c





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
