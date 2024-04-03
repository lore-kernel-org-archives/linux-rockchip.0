Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E4CDCD1294
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 09:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUXZsbNniNwa6luErI+xIiwveiSgsfeCIegqmr0hcOs=; b=QI6AdGZekEjE11
	uhNmsEnisbgIK0Wvw+KhuIb+aY7YSYhGIL/Hjmim2FnLj412hIJiCSmxE7doiz4F5OQr4j/KC3lKj
	i4sePd+dZ5jDgg2KlOkGQKSKZGCZ4r5BF/Tqcy70VbS2IQToNW+HUD60IL8HD8EcR3s91xlquFYdR
	7U+yfkePEXM11wr69ftEta/j0ephaltgAWqJ1obJt0Rke/7gbppWtFibiXpegY7htKcpQ/4EogKsl
	7g0CQk2KzZrawK+rmb5iHHWCBrE4QuXYKA9PX+YCITbdhMlA14Hsjq1LW168JYdiW0NEPYoB6ZPIV
	5OQZ7q3GOF7pU+vgNDmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwrJ-0000000FCCa-3oXd;
	Wed, 03 Apr 2024 09:24:41 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwrF-0000000FC8B-2TXl;
	Wed, 03 Apr 2024 09:24:39 +0000
Received: from harlem.collaboradmins.com (harlem.collaboradmins.com [IPv6:2a01:4f8:1c0c:5936::1])
	by madrid.collaboradmins.com (Postfix) with ESMTP id 0BDBA3782089;
	Wed,  3 Apr 2024 09:24:31 +0000 (UTC)
From: "Shreeya Patel" <shreeya.patel@collabora.com>
In-Reply-To: <20240327225057.672304-1-shreeya.patel@collabora.com>
X-Forward: 127.0.0.1
References: <20240327225057.672304-1-shreeya.patel@collabora.com>
Date: Wed, 03 Apr 2024 10:24:31 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de, shawn.wen@rock-chips.com, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm@lists.infradead.org
To: mchehab@kernel.org, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl
MIME-Version: 1.0
Message-ID: <35e566-660d2080-1-7eb9eb00@16488675>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 0/6] Add Synopsys DesignWare HDMI RX Controller
User-Agent: SOGoMail 5.10.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_022437_790951_AED7B831 
X-CRM114-Status: GOOD (  28.07  )
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

On Thursday, March 28, 2024 04:20 IST, Shreeya Patel <shreeya.patel@collabora.com> wrote:

> This series implements support for the Synopsys DesignWare
> HDMI RX Controller, being compliant with standard HDMI 1.4b
> and HDMI 2.0.
> 

Hi Mauro and Hans,

I haven't received any reviews so far. Hence, this is just a gentle reminder to review this patch series.


Thanks,
Shreeya Patel

> Features that are currently supported by the HDMI RX driver
> have been tested on rock5b board using a HDMI to micro-HDMI cable.
> It is recommended to use a good quality cable as there were
> multiple issues seen during testing the driver.
> 
> Please note the below information :-
> * While testing the driver on rock5b we noticed that the binary BL31
> from Rockchip contains some unknown code to get the HDMI-RX PHY
> access working. With TF-A BL31, the HDMI-RX PHY doesn't work as
> expected since there are no interrupts seen for rk_hdmirx-hdmi
> leading to some failures in the driver [0].
> * We have tested the working of OBS studio with HDMIRX driver and
> there were no issues seen.
> * We also tested and verified the support for interlaced video.
> 
> [0] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/trusted-firmware-a/-/issues/1
> 
> To test the HDMI RX Controller driver, following example commands can be used :-
> 
> root@debian-rockchip-rock5b-rk3588:~# v4l2-ctl --verbose -d /dev/video0 \
> --set-fmt-video=width=1920,height=1080,pixelformat='BGR3' --stream-mmap=4 \
> --stream-skip=3 --stream-count=100 --stream-to=/home/hdmiin4k.raw --stream-poll
> 
> root@debian-rockchip-rock5b-rk3588:~# ffmpeg -f rawvideo -vcodec rawvideo \
> -s 1920x1080 -r 60 -pix_fmt bgr24 -i /home/hdmiin4k.raw output.mkv
> 
> 
> Following is the v4l2-compliance test result :-
> 
> root@debian-rockchip-rock5b-rk3588:~# v4l2-compliance -d /dev/video0
> v4l2-compliance 1.27.0-5174, 64 bits, 64-bit time_t
> v4l2-compliance SHA: d700deb14368 2024-01-18 12:19:05
> 
> Compliance test for snps_hdmirx device /dev/video0:
> 
> Driver Info:
>         Driver name      : snps_hdmirx
>         Card type        : snps_hdmirx
>         Bus info         : platform: snps_hdmirx
>         Driver version   : 6.8.0
>         Capabilities     : 0x84201000
>                 Video Capture Multiplanar
>                 Streaming
>                 Extended Pix Format
>                 Device Capabilities
>         Device Caps      : 0x04201000
>                 Video Capture Multiplanar
>                 Streaming
>                 Extended Pix Format
> 
> Required ioctls:
>         test VIDIOC_QUERYCAP: OK
>         test invalid ioctls: OK
> 
> Allow for multiple opens:
>         test second /dev/video0 open: OK
>         test VIDIOC_QUERYCAP: OK
>         test VIDIOC_G/S_PRIORITY: OK
>         test for unlimited opens: OK
> 
> Debug ioctls:
>         test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>         test VIDIOC_LOG_STATUS: OK
> 
> Input ioctls:
>         test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>         test VIDIOC_ENUMAUDIO: OK (Not Supported)
>         test VIDIOC_G/S/ENUMINPUT: OK
>         test VIDIOC_G/S_AUDIO: OK (Not Supported)
>         Inputs: 1 Audio Inputs: 0 Tuners: 0
> 
> Output ioctls:
>         test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>         test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>         Outputs: 0 Audio Outputs: 0 Modulators: 0
> 
> Input/Output configuration ioctls:
>         test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>         test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK
>         test VIDIOC_DV_TIMINGS_CAP: OK
>         test VIDIOC_G/S_EDID: OK
> 
> Control ioctls (Input 0):
>         test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>         test VIDIOC_QUERYCTRL: OK
>         test VIDIOC_G/S_CTRL: OK
>         test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>         test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>         test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>         Standard Controls: 2 Private Controls: 0
> 
> Format ioctls (Input 0):
>         test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>         test VIDIOC_G/S_PARM: OK
>         test VIDIOC_G_FBUF: OK (Not Supported)
>         test VIDIOC_G_FMT: OK
>         test VIDIOC_TRY_FMT: OK
>         test VIDIOC_S_FMT: OK
>         test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>         test Cropping: OK (Not Supported)
>         test Composing: OK (Not Supported)
>         test Scaling: OK (Not Supported)
> 
> Codec ioctls (Input 0):
>         test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>         test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>         test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
> 
> Buffer ioctls (Input 0):
>         test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>         test CREATE_BUFS maximum buffers: OK
>         test VIDIOC_EXPBUF: OK
>         test Requests: OK (Not Supported)
> 
> Total for snps_hdmirx device /dev/video0: 46, Succeeded: 46, Failed: 0, Warnings: 0
> 
> Changes in v3 :-
>   - Use v4l2-common helpers in the HDMIRX driver
>   - Rename cma node and phandle names
>   - Elaborate the comment to explain 160MiB calculation
>   - Move &hdmi_receiver_cma to the rock5b dts file
>   - Add information about interlaced video testing in the
>     cover-letter
> 
> Changes in v2 :-
>   - Fix checkpatch --strict warnings
>   - Move the dt-binding include file changes in a separate patch
>   - Add a description for the hardware in the dt-bindings file
>   - Rename resets, vo1 grf and HPD properties
>   - Add a proper description for grf and vo1-grf phandles in the
>     bindings
>   - Rename the HDMI RX node name to hdmi-receiver
>   - Include gpio header file in binding example to fix the
>     dt_binding_check failure
>   - Move hdmirx_cma node to the rk3588.dtsi file
>   - Add an entry to MAINTAINERS file for the HDMIRX driver
> 
> Shreeya Patel (6):
>   dt-bindings: reset: Define reset id used for HDMI Receiver
>   clk: rockchip: rst-rk3588: Add reset line for HDMI Receiver
>   dt-bindings: media: Document HDMI RX Controller
>   arm64: dts: rockchip: Add device tree support for HDMI RX Controller
>   media: platform: synopsys: Add support for hdmi input driver
>   MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
> 
>  .../bindings/media/snps,dw-hdmi-rx.yaml       |  132 +
>  MAINTAINERS                                   |    8 +
>  .../boot/dts/rockchip/rk3588-pinctrl.dtsi     |   41 +
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |   19 +
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi      |   56 +
>  drivers/clk/rockchip/rst-rk3588.c             |    1 +
>  drivers/media/platform/Kconfig                |    1 +
>  drivers/media/platform/Makefile               |    1 +
>  drivers/media/platform/synopsys/Kconfig       |    3 +
>  drivers/media/platform/synopsys/Makefile      |    2 +
>  .../media/platform/synopsys/hdmirx/Kconfig    |   18 +
>  .../media/platform/synopsys/hdmirx/Makefile   |    4 +
>  .../platform/synopsys/hdmirx/snps_hdmirx.c    | 2726 +++++++++++++++++
>  .../platform/synopsys/hdmirx/snps_hdmirx.h    |  394 +++
>  .../synopsys/hdmirx/snps_hdmirx_cec.c         |  289 ++
>  .../synopsys/hdmirx/snps_hdmirx_cec.h         |   46 +
>  .../dt-bindings/reset/rockchip,rk3588-cru.h   |    2 +
>  17 files changed, 3743 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
>  create mode 100644 drivers/media/platform/synopsys/Kconfig
>  create mode 100644 drivers/media/platform/synopsys/Makefile
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Kconfig
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Makefile
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_cec.c
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_cec.h
> 
> -- 
> 2.39.2
> 
> _______________________________________________
> Kernel mailing list -- kernel@mailman.collabora.com
> To unsubscribe send an email to kernel-leave@mailman.collabora.com
> This list is managed by https://mailman.collabora.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
