Return-Path: <SRS0=sE99=EV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DCB9C2D0E4
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2020 18:42:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C91722409
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2020 18:42:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="0pGoRabY";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=vanguardiasur-com-ar.20150623.gappssmtp.com header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.b="b5cuu29/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C91722409
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xlX+5bmsR1gU0RprEyQt/B/zgV6ZFNyWQU9EvLmD1QY=; b=0pGoRabY8d3m6CyQ6Lsq8eziC
	Ix93QRk9kS3ixWv32bKTAje+m0MMrZm6QtNJpqicUmA3zeDm6fUDi+M7lM7j61xex3TSk24PuxKmR
	x4VEC2W/nR5dynVNuwOPxOVzPVIf6kX6Pk7x9P41XI85NNf+cejqXqqPmiLqeXIYCW1MKaNoZaErH
	iTdz9RUmyDVb4TUD1rxYMpwJwO9H+uV9OW57CN9MBA0wMoQUg4+sOb7tCsVQESl6TKOa3BouwFvYI
	YrTQRXbUTbKgAprNdJ9OWDO7t1J0jsTs3wwETSmodjHGZRmSNKFGZQm7cNorU5Nn8QJ205oENAvpg
	5UAK72HuQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keMyd-0003Hd-Ke; Sun, 15 Nov 2020 18:42:15 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keMya-0003Dq-GC
 for linux-rockchip@lists.infradead.org; Sun, 15 Nov 2020 18:42:13 +0000
Received: by mail-ej1-x635.google.com with SMTP id o21so21310402ejb.3
 for <linux-rockchip@lists.infradead.org>; Sun, 15 Nov 2020 10:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j3NR4a8/9IYsdIvIwYYBpoI+6KZhBXWAlMKA7u6ijx4=;
 b=b5cuu29/GTvdAM+pR9cb+2FqBrWKBquc53zLMuER6SpJqFSd9TicgtM5kb5MY0fool
 U3bNCkKls4nBgdPs6spIf5tGs8ooS6HvqPj+dWqGcMr+ZCWt9+0Y8QpXvYUlfSO21++a
 Nw3LupKv/akWPo6bP1XUxfuvgjFFHiMeN4R49N3yDz0tp9vOhtNqytiUcmUGAVTrT4R0
 8dhfnDTYYogKr9GSIF7TFjLzIvQsTyYmNVzwJGLJNA4bWc071agsTN1YrE0/oASQOUwX
 GlHdZkjGLDVG1poC5LtypGdY2PGTwduBCY8mGMZCPjOB6zzDoEhpKCYipnTvnJQltTdV
 FbPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j3NR4a8/9IYsdIvIwYYBpoI+6KZhBXWAlMKA7u6ijx4=;
 b=Rd6Xj8SRsOLrArKimdF7e5ByMc6xxnS7MTdiQwqP0OqKuhGSGSYkn/lFUojQ99damR
 aWZ2EC92JuO4Cahdmx8OTKBgMqiOLxapDjnDmz/q2IsUKEY5rS3f7Gll8nKE6P71iIIO
 MjoExycS0o34CR8vd1ycK0QJePKY4Ln/1ft5azh44qSrZw1bKwUHH7LtXo7cjChsGloF
 Kyj2lPXa6oTKBf4rJ2R3wzmFUDL1PsV0rlDGAwosayxca1cCeKrcfBgStS3WnjmThnCW
 B4sajwB0cDj1Z09JpkO5DO2VBgLwb7CUxXqRpjJep72WCYJSDNh+P91MlEKpO8vy5ITK
 fteQ==
X-Gm-Message-State: AOAM532k/10qEBEL6jjG+qKJ64vUmu7BocWLYLDRuL3cKylmoAasCKaF
 beKptkpKAFrlb7ewgdGySVFm8DnSq7d3+81OGqvXkw==
X-Google-Smtp-Source: ABdhPJxAt2dj92DfDt2oqNsfz41XMH2DtL5eUnp9y/euqFMmCoP8t44Z9IiPP2cDzoVqTDKRg4mUpgxvJjseH0GtbU4=
X-Received: by 2002:a17:906:9459:: with SMTP id
 z25mr11756137ejx.88.1605465729115; 
 Sun, 15 Nov 2020 10:42:09 -0800 (PST)
MIME-Version: 1.0
References: <20201115111002.d7x2a4ephofohd7o@basti.Speedport_W_724V_Typ_A_05011603_06_001>
In-Reply-To: <20201115111002.d7x2a4ephofohd7o@basti.Speedport_W_724V_Typ_A_05011603_06_001>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sun, 15 Nov 2020 15:41:57 -0300
Message-ID: <CAAEAJfAeHVx0xpDKj=jEnt3zq_SwxT5Y-ccJ7rPJgm0K0WFUMg@mail.gmail.com>
Subject: Re: Working with the OV13850 camera sensor on the NanoPC-T4
To: Sebastian Fricke <sebastian.fricke.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201115_134212_856592_57484985 
X-CRM114-Status: GOOD (  30.25  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 15 Nov 2020 at 08:11, Sebastian Fricke
<sebastian.fricke.linux@gmail.com> wrote:
>
> Hello,
>

Hello Sebastian,

Let me first add my colleagues Helen and Dafna, who maintain this driver,
and who will surely yell if I stop making sense here.

> I am currently trying to get the OV13850 camera sensor
> (https://www.friendlyarm.com/index.php?route=product/product&product_id=228) to work on my friendlyElec NanoPC-T4.
>
> I have problems with connecting the RkISP1 ISP to the OV13850 sensor and I am not sure,
> where the problem could be. The device tree seems to load correctly and
> I can detect the sensor as a device on the i2c bus:
>
> root@nanopct4:~# cat /sys/bus/i2c/devices/1-0010/name
> ov13850
>

OK, good start :-)

> And the driver module is loaded as well:
>
> root@nanopct4:~# lsmod | grep ov13850
> ov13850                28672  0
> v4l2_fwnode            28672  2 rockchip_isp1,ov13850
> videodev              266240  9 rockchip_vdec,v4l2_fwnode,rockchip_isp1,videobuf2_v4l2,hantro_vpu,rockchip_rga,videobuf2_common,v4l2_mem2mem,ov13850
> mc                     61440  8 rockchip_vdec,videodev,rockchip_isp1,videobuf2_v4l2,hantro_vpu,videobuf2_common,v4l2_mem2mem,ov13850
>
> The driver reports using dummy regulators instead of the requested ones,
> I am not sure yet if this is part of the problem, as the driver doesn't
> bail out after requesting the regulators. But from what I currently
> understand, these warnings mean that for some reason my system didn't
> map these regulators but acts as if they were there.
>
> More info below, I hope that someone can help to find the error I made,
> thanks in advance!
>
> -----------------------------
>
> I attached the two patches I created:
> 1. For the device tree I combined a patch from Helen Koike (which is not merged yet),
>    where she adds the isp0 to the rk3399.dtsi file, with my addition which
>    activates the mipi_dphy_rx0, adds the camera sensor to i2c1 and
>    connects the pads of the ISP with the sensor. I followed the
>    documentation for the ISP part and got most of the camera sensor
>    parts from the BSP Kernel:
>    (https://github.com/friendlyarm/kernel-rockchip/blob/nanopi4-linux-v4.4.y/arch/arm64/boot/dts/rockchip/rk3399-nanopi4-rkisp1.dtsi#L52).
> 2. I ported the driver from the BSP kernel of friendlyElec:
>    (https://github.com/friendlyarm/kernel-rockchip/blob/nanopi4-linux-v4.4.y/drivers/media/i2c/ov13850.c)
>    I changed a few lines in order to have the module compile correctly.
>    ```
>     +#include <linux/compat.h>
>     -       sd->entity.type = MEDIA_ENT_T_V4L2_SUBDEV_SENSOR;
>     -       ret = media_entity_init(&sd->entity, 1, &ov13850->pad, 0);
>     +       sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
>     +       ret = media_entity_pads_init(&sd->entity, 1, &ov13850->pad);
>     ```
>

Keep in mind that, with some exceptions, the upstream community
doesn't provide much help with downstream/vendor kernels.

> ----------------------------------------
>
> I was able to create an armbian image for the media_tree (https://git.linuxtv.org/media_tree.git/):

Ah, upstream is better :-)

> root@nanopct4:~# uname -a
> Linux nanopct4 5.10.0-rc1-rockchip64 #trunk SMP PREEMPT Fri Nov 13 15:08:05 CET 2020 aarch64 GNU/Linux
>
> When I boot up the board I can spot the following messages in the kernel
> log:
> [    7.216307] ov13850 1-0010: driver version: 00.01.01
> [    7.216322] ov13850 1-0010: could not get module information!
> [    7.216565] ov13850 1-0010: supply avdd not found, using dummy regulator
> [    7.216761] ov13850 1-0010: supply dovdd not found, using dummy regulator
> [    7.216846] ov13850 1-0010: supply dvdd not found, using dummy regulator
> [    7.219535] ov13850 1-0010: Detected OV00d850 sensor, REVISION 0xb1

OK, good.

I can be wrong (since I haven't looked at your driver) but this
usually indicates
your sensor is powered and properly configured to at least read
some CHIP_ID register.

The regulators are likely always-on in your sensor module,
so maybe probably that's why it works.

See for instance arch/arm64/boot/dts/renesas/aistarvision-mipi-adapter-2.1.dtsi
for an example of how regulators can be declared. There are other ways,
it's just an example.

> ...
> [    7.352292] rockchip_isp1: module is from the staging directory, the quality is unknown, you have been warned.
> ...
> [    7.356178] rkisp1 ff910000.isp0: Adding to iommu group 4
> ...
> [    7.357637] rkisp1: registered rkisp1_mainpath as /dev/video0
> [    7.357816] rkisp1: registered rkisp1_selfpath as /dev/video1
>
> ----------------------------------------
>
> And this command (try to stream 50 frames from video1 which the mainpath
> on the RkISP1):
> root@nanopct4:~# v4l2-ctl --stream-to /home/basti/test.raw --stream-mmap 50 -d /dev/video0 --verbose
>
> I get this output:
> VIDIOC_STREAMON returned -1 (No such device)
>
> And this kernel log message:
> [16939.667867] rkisp1 ff910000.isp0: No link between isp and sensor
>

This error seems useful. It would indicate your sensor is not
connected (software-connected) to the ISP.

See below.

> -----------------------------------------
>
> Here is the output for media-ctl -p:
>
> Media controller API version 5.10.0
>
> Media device information
> ------------------------
> driver          rkisp1
> model           rkisp1
> serial
> bus info        platform:rkisp1
> hw revision     0x0
> driver version  5.10.0
>
> Device topology
> - entity 1: rkisp1_isp (4 pads, 4 links)
>             type V4L2 subdev subtype Unknown flags 0
>             device node name /dev/v4l-subdev0
>         pad0: Sink
>                 [fmt:SRGGB10_1X10/800x600 field:none
>                  crop.bounds:(0,0)/800x600
>                  crop:(0,0)/800x600]
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Note that here the rkisp1_isp entity sink pad 0
should be connected to the bayer sensor, but it
seems not connected to anything.

I can be wrong, but I don't see your sensor
appearing anywhere in the topology.

See for instance, the example in the driver
documentation:

https://www.kernel.org/doc/html/latest/admin-guide/media/rkisp1.html

And note the section where the topology is set, connecting
the imx219 sensor to rkisp1_isp sink pad0:

"media-ctl" "-d" "platform:rkisp1" "-l" "'imx219 4-0010':0 ->
'rkisp1_isp':0 [1]"

So I would say you are very much on the right track,
but you still need a bit more work to construct the capture pipeline.

Not sure if this helps, or makes things more complicated, but instead
of  v4l2-ctl, I would personally start with libcamera, and work from there.

Cheers,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
