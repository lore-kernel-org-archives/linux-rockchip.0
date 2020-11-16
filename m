Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF75C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 11:31:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 16417206D5
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 11:31:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RnFr1iKN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 16417206D5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yMXQ88e7Bxlicf2ccrVPGBvPItz2b9xutfwnDp9IQJU=; b=RnFr1iKNBmA8xn1stavEpekvO
	jlpONxz6pB1slm9Kj8+La5boLEBfE5MbQnuz6AENrBBnAm6kmnJ8jN657uqwggTDeNg3J8x1G70Kh
	loEvcUcgHNKv5Zui05TsXFIsGdD38anLl7KQNML2KoFGHtSDUqUPKcKN8MWyqcKFqYnDsBP2P3osq
	4l0cBu27S+an3MsduN82oxfi/iFWbe6pXHgPLyecqVsrABp9Z6sGJEIocyKzCE671sfWBHaVgoxgn
	kEczZpFdTEoUu3touDBR4AiIsauyU6BxL4N0nvFP/QhjaWU2HD9ZxmwFWP+a6IMQWTkXDc++jpIDE
	uaEjtXgdA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kecjb-0000h7-Pq; Mon, 16 Nov 2020 11:31:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kecjY-0000fy-La
 for linux-rockchip@lists.infradead.org; Mon, 16 Nov 2020 11:31:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 657E11F46F86
Subject: Re: Working with the OV13850 camera sensor on the NanoPC-T4
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Sebastian Fricke <sebastian.fricke.linux@gmail.com>
References: <20201115111002.d7x2a4ephofohd7o@basti.Speedport_W_724V_Typ_A_05011603_06_001>
 <CAAEAJfAeHVx0xpDKj=jEnt3zq_SwxT5Y-ccJ7rPJgm0K0WFUMg@mail.gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <8daa1bf3-bca1-594e-f0ce-692ede0aac2d@collabora.com>
Date: Mon, 16 Nov 2020 08:31:34 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAAEAJfAeHVx0xpDKj=jEnt3zq_SwxT5Y-ccJ7rPJgm0K0WFUMg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_063144_903278_54B22363 
X-CRM114-Status: GOOD (  37.85  )
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
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

On 11/15/20 3:41 PM, Ezequiel Garcia wrote:
> On Sun, 15 Nov 2020 at 08:11, Sebastian Fricke
> <sebastian.fricke.linux@gmail.com> wrote:
>>
>> Hello,
>>
> 
> Hello Sebastian,
> 
> Let me first add my colleagues Helen and Dafna, who maintain this driver,
> and who will surely yell if I stop making sense here.
> 
>> I am currently trying to get the OV13850 camera sensor
>> (https://www.friendlyarm.com/index.php?route=product/product&product_id=228) to work on my friendlyElec NanoPC-T4.
>>
>> I have problems with connecting the RkISP1 ISP to the OV13850 sensor and I am not sure,
>> where the problem could be. The device tree seems to load correctly and
>> I can detect the sensor as a device on the i2c bus:
>>
>> root@nanopct4:~# cat /sys/bus/i2c/devices/1-0010/name
>> ov13850
>>
> 
> OK, good start :-)
> 
>> And the driver module is loaded as well:
>>
>> root@nanopct4:~# lsmod | grep ov13850
>> ov13850                28672  0
>> v4l2_fwnode            28672  2 rockchip_isp1,ov13850
>> videodev              266240  9 rockchip_vdec,v4l2_fwnode,rockchip_isp1,videobuf2_v4l2,hantro_vpu,rockchip_rga,videobuf2_common,v4l2_mem2mem,ov13850
>> mc                     61440  8 rockchip_vdec,videodev,rockchip_isp1,videobuf2_v4l2,hantro_vpu,videobuf2_common,v4l2_mem2mem,ov13850
>>
>> The driver reports using dummy regulators instead of the requested ones,
>> I am not sure yet if this is part of the problem, as the driver doesn't
>> bail out after requesting the regulators. But from what I currently
>> understand, these warnings mean that for some reason my system didn't
>> map these regulators but acts as if they were there.
>>
>> More info below, I hope that someone can help to find the error I made,
>> thanks in advance!
>>
>> -----------------------------
>>
>> I attached the two patches I created:
>> 1. For the device tree I combined a patch from Helen Koike (which is not merged yet),
>>    where she adds the isp0 to the rk3399.dtsi file, with my addition which
>>    activates the mipi_dphy_rx0, adds the camera sensor to i2c1 and
>>    connects the pads of the ISP with the sensor. I followed the
>>    documentation for the ISP part and got most of the camera sensor
>>    parts from the BSP Kernel:
>>    (https://github.com/friendlyarm/kernel-rockchip/blob/nanopi4-linux-v4.4.y/arch/arm64/boot/dts/rockchip/rk3399-nanopi4-rkisp1.dtsi#L52).

If you take a look at this patch:

    https://patchwork.linuxtv.org/project/linux-media/patch/20201020193850.1460644-10-helen.koike@collabora.com/

You'll see that the dts of the isp has

ports {
    port@0 {
        ...
    }
}

which differ from the patch you attached, and I guess this is why your
sensor is not being detected by the rkisp1 driver.

Please check:

    https://git.linuxtv.org/media_tree.git/tree/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml

>> 2. I ported the driver from the BSP kernel of friendlyElec:
>>    (https://github.com/friendlyarm/kernel-rockchip/blob/nanopi4-linux-v4.4.y/drivers/media/i2c/ov13850.c)
>>    I changed a few lines in order to have the module compile correctly.
>>    ```
>>     +#include <linux/compat.h>
>>     -       sd->entity.type = MEDIA_ENT_T_V4L2_SUBDEV_SENSOR;
>>     -       ret = media_entity_init(&sd->entity, 1, &ov13850->pad, 0);
>>     +       sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
>>     +       ret = media_entity_pads_init(&sd->entity, 1, &ov13850->pad);
>>     ```
>>
> 
> Keep in mind that, with some exceptions, the upstream community
> doesn't provide much help with downstream/vendor kernels.
> 
>> ----------------------------------------
>>
>> I was able to create an armbian image for the media_tree (https://git.linuxtv.org/media_tree.git/):
> 
> Ah, upstream is better :-)
> 
>> root@nanopct4:~# uname -a
>> Linux nanopct4 5.10.0-rc1-rockchip64 #trunk SMP PREEMPT Fri Nov 13 15:08:05 CET 2020 aarch64 GNU/Linux
>>
>> When I boot up the board I can spot the following messages in the kernel
>> log:
>> [    7.216307] ov13850 1-0010: driver version: 00.01.01
>> [    7.216322] ov13850 1-0010: could not get module information!
>> [    7.216565] ov13850 1-0010: supply avdd not found, using dummy regulator
>> [    7.216761] ov13850 1-0010: supply dovdd not found, using dummy regulator
>> [    7.216846] ov13850 1-0010: supply dvdd not found, using dummy regulator
>> [    7.219535] ov13850 1-0010: Detected OV00d850 sensor, REVISION 0xb1
> 
> OK, good.
> 
> I can be wrong (since I haven't looked at your driver) but this
> usually indicates
> your sensor is powered and properly configured to at least read
> some CHIP_ID register.
> 
> The regulators are likely always-on in your sensor module,
> so maybe probably that's why it works.
> 
> See for instance arch/arm64/boot/dts/renesas/aistarvision-mipi-adapter-2.1.dtsi
> for an example of how regulators can be declared. There are other ways,
> it's just an example.
> 
>> ...
>> [    7.352292] rockchip_isp1: module is from the staging directory, the quality is unknown, you have been warned.
>> ...
>> [    7.356178] rkisp1 ff910000.isp0: Adding to iommu group 4
>> ...
>> [    7.357637] rkisp1: registered rkisp1_mainpath as /dev/video0
>> [    7.357816] rkisp1: registered rkisp1_selfpath as /dev/video1
>>
>> ----------------------------------------
>>
>> And this command (try to stream 50 frames from video1 which the mainpath
>> on the RkISP1):
>> root@nanopct4:~# v4l2-ctl --stream-to /home/basti/test.raw --stream-mmap 50 -d /dev/video0 --verbose
>>
>> I get this output:
>> VIDIOC_STREAMON returned -1 (No such device)
>>
>> And this kernel log message:
>> [16939.667867] rkisp1 ff910000.isp0: No link between isp and sensor
>>
> 
> This error seems useful. It would indicate your sensor is not
> connected (software-connected) to the ISP.
> 
> See below.
> 
>> -----------------------------------------
>>
>> Here is the output for media-ctl -p:
>>
>> Media controller API version 5.10.0
>>
>> Media device information
>> ------------------------
>> driver          rkisp1
>> model           rkisp1
>> serial
>> bus info        platform:rkisp1
>> hw revision     0x0
>> driver version  5.10.0
>>
>> Device topology
>> - entity 1: rkisp1_isp (4 pads, 4 links)
>>             type V4L2 subdev subtype Unknown flags 0
>>             device node name /dev/v4l-subdev0
>>         pad0: Sink
>>                 [fmt:SRGGB10_1X10/800x600 field:none
>>                  crop.bounds:(0,0)/800x600
>>                  crop:(0,0)/800x600]
> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> 
> Note that here the rkisp1_isp entity sink pad 0
> should be connected to the bayer sensor, but it
> seems not connected to anything.
> 
> I can be wrong, but I don't see your sensor
> appearing anywhere in the topology.
> 
> See for instance, the example in the driver
> documentation:
> 
> https://www.kernel.org/doc/html/latest/admin-guide/media/rkisp1.html

Just to complement what Ezequiel mentioned, to better understand, you can
check the topology with

    media-ctl --print-dot

and copy the results to https://dreampuf.github.io/GraphvizOnline/

You'll see there is no sensor connected in pad 0 of the rkisp1_isp node.

> 
> And note the section where the topology is set, connecting
> the imx219 sensor to rkisp1_isp sink pad0:
> 
> "media-ctl" "-d" "platform:rkisp1" "-l" "'imx219 4-0010':0 ->
> 'rkisp1_isp':0 [1]"
> 
> So I would say you are very much on the right track,
> but you still need a bit more work to construct the capture pipeline.
> 
> Not sure if this helps, or makes things more complicated, but instead
> of  v4l2-ctl, I would personally start with libcamera, and work from there.
> 
> Cheers,
> Ezequiel
> 
After correcting the topology, you should configure the stream as indicated
in the docs:

    https://www.kernel.org/doc/html/latest/admin-guide/media/rkisp1.html#capturing-video-frames-example

Or use libamera with, for instance:

    cam -c 1 -C


I hope this helps.
Regards,
Helen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
