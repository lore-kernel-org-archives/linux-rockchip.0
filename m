Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9039C71140
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 15:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7gpW2K2Q00T1MlyklUo5JFDnI9tD29+xBDzq/LzeN0=; b=wDqyp2tPxt4nwH
	/R5DnWiq0hxacrUjQywZ8uEq69e0PUpGMw+Qy18OfmH/HBEbNXjoN0MLSJJT0F2zGt/QYbwa5O9kh
	NP6doZOi0h3Mo1gnMNNfxgYtpbD3rvYFuli9B88HA2pLyaVNoRNekDDx0FcNjjL2hetW3aTKYREP2
	+uSqcN7JoLTisq8k0+tXTKOBT5mPjDYLoKf7G8AaKBR6RaGCgQg3e42Po8U+N3rtIH2fpnR9KRQF/
	A4VfOEjLycUbNYvonLw5utqNngulSHmpoq/ENMIE6bfDIhDwBdKQi//Nk0+xAmtP8V757wVTXUVQh
	RBjRIrz0RwMTuJp207Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPNLA-0000000ANqY-1VVe;
	Wed, 11 Jun 2025 15:26:12 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPKN3-00000009pJw-47wc
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 12:15:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=XEEPsmzmcp+YcCPwj94G8UDCWBRJnGic6yDOVxAeHAE=; b=m
	ZN4FZh9L24OpB9JeI7NuNw07YFWoMLzYWcIPbM3145iEFgH+wED3Mqhp2f/645xW
	sCm77SxePdHLwDH8DMTx4PyJb6jwzMsS9+SA5wFcdcWCxGlsvYEgG6Tq8rdkT6fq
	e8hM0tD5sqFYmM5syZhGSBPReUoFqRWUeevNaiA7II=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-145 (Coremail) ; Wed, 11 Jun 2025 20:15:16 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 11 Jun 2025 20:15:16 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Diederik de Haas" <didi.debian@cknow.org>
Cc: "Piotr Zalewski" <pZ010001011111@proton.me>, hjc@rock-chips.com,
	heiko@sntech.de, andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	"Dang Huynh" <danct12@riseup.net>, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re:Re: [PATCH drm-misc-next] rockchip/drm: vop2: don't check
 color_mgmt_changed in atomic_enable
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <DAJNEG81JCU5.35KVU8KAT5MDU@cknow.org>
References: <20241206192013.342692-3-pZ010001011111@proton.me>
 <DAEVDSTMWI1E.J454VZN0R9MA@cknow.org>
 <mArHDRo5bhIAjG8sDOR-kM7DsVdbXxxcC8hfuEEPfUWIdMwNnSUy8ZFoLis66DFSuIEq8TrnAxUGkyo5IUTGw3AG4k3vuVVz0fsoI27BAms=@proton.me>
 <DAH3S8O66J47.3NT18EJCXWKL9@cknow.org>
 <47773829.1fce.1974f732545.Coremail.andyshrk@163.com>
 <DAH60H3HYG7M.3NFXBJ7576RH1@cknow.org>
 <3161fa6a.93d0.19753f8c5e0.Coremail.andyshrk@163.com>
 <DAI0A1Y753FJ.B0NMT8L5VPEH@cknow.org>
 <4b380a57.8ab2.197591815a8.Coremail.andyshrk@163.com>
 <DAISW8MXEU0G.3AMRSKNYQUJY8@cknow.org>
 <4e600374.6dc7.1975df03a2d.Coremail.andyshrk@163.com>
 <DAJNEG81JCU5.35KVU8KAT5MDU@cknow.org>
X-NTES-SC: AL_Qu2fC/qfu0kq4CCZYekfmkcVgOw9UcO5v/Qk3oZXOJF8jCvr+R48eFpmBH7G8futByKSoj2yXyBn8cZ2TJZ7f7I0AXETjxiSJFvoMTH2GUiv6w==
MIME-Version: 1.0
Message-ID: <b25ddc.a29c.1975eea8033.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: kSgvCgDXf5pUc0loyjwZAA--.13358W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkBNpXmhJapTO5QADsD
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_051558_346855_15316D53 
X-CRM114-Status: GOOD (  16.51  )
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



Hi Diederik,
At 2025-06-11 18:56:31, "Diederik de Haas" <didi.debian@cknow.org> wrote:
>Hi Andy,
>
>On Wed Jun 11, 2025 at 9:41 AM CEST, Andy Yan wrote:
>> At 2025-06-10 19:02:11, "Diederik de Haas" <didi.debian@cknow.org> wrote:
>>>On Tue Jun 10, 2025 at 11:07 AM CEST, Andy Yan wrote:
>>>> At 2025-06-09 20:36:41, "Diederik de Haas" <didi.debian@cknow.org> wrote:
>>>>>On Mon Jun 9, 2025 at 11:15 AM CEST, Andy Yan wrote:
>>>>>> At 2025-06-08 20:53:37, "Diederik de Haas" <didi.debian@cknow.org> wrote:
>>>>>>>On Sun Jun 8, 2025 at 2:10 PM CEST, Andy Yan wrote:
>>>>>>>> At 2025-06-08 19:08:50, "Diederik de Haas" <didi.debian@cknow.org> wrote:
>>>>>>>>>On Sat Jun 7, 2025 at 5:32 PM CEST, Piotr Zalewski wrote:
>>>>>>>>>> On Thursday, June 5th, 2025 at 10:13 PM, Diederik de Haas <didi.debian@cknow.org> wrote:
>>>>>>>>>>> Since kernel 6.14-rc1 I have the problem that visual output is no longer
>>>>>>>>>>> shown on my PineTab2 and a `git bisect` pointed to this patch/commit
>>>>>>>>
>>>>>>>> I have conducted tests on both rk3566-box-demo (with drm set to y)
>>>>>>>> and rk3568-lubancat-2 (with drm set to m), but I was unable to
>>>>>>>> reproduce this issue. Could you two please share your kernel
>>>>>>>> defconfig and the corresponding kernel startup logs?
>>>>>>>> Additionally, both of my two boards tested with HDMI output. What
>>>>>>>> kind of display interface does your board use for output?
>>>>>>>
>>>>>>>I wasn't able to reproduce this issue on my PINE64 Quartz-B (rk3566) 
>>>>>>>with HDMI output either, but the problem is present on a PineTab2 [1]
>>>>>>>(also rk3566) which uses a MIPI DSI connection to the display panel.
>>>>>>>
>>>>>>>Kernel config:
>>>>>>>https://paste.sr.ht/~diederik/aa747ed170aa01cc759fbe1ffd9cebe8c887b10b
>>>>>>>
>>>>>>>dmesg kernel 6.14-rc1:
>>>>>>>https://paste.sr.ht/~diederik/733fbf8bb7f6aee8b68cf5a652157d445462c24a
>>>>>>>
>>>>>>>dmesg kernel 6.14-rc1 with Piotr's patch:
>>>>>>>https://paste.sr.ht/~diederik/db1af672cfb611acbfbdf35adb6f170e5c38febc
>>>>>>>
>>>>>>>Both dmesg outputs contain a suspend-resume cycle.
>>>>>>>I'm using a USB Wi-Fi adapter for the wireless connection.
>>>>>>>
>>>>>>>[1] https://wiki.pine64.org/wiki/PineTab2
>>>>>>>
>>>>>>>Happy to provide more info and/or do some tests.
>>>>>>
>>>>>> Can you apply the patch in the attachment, reproduce this issue(without Piotr's patch), 
>>>>>> and then provide me with a copy of the kernel log?
>>>>>
>>>>>Same test as above, but added ``dmesg | grep "vop2_"`` at the end as well
>>>>>
>>>>>dmesg kernel 6.14-rc1 with Andy's print_lut_0609_1710 patch:
>>>>>https://paste.sr.ht/~diederik/ac356ee8b0f7e772c7310293d99d95644f59a4ee
>>>>
>>>> root@pt2-scmi:~# dmesg | grep "vop2_"
>>>> [    4.996281] rockchip-drm display-subsystem: bound fe040000.vop (ops vop2_crtc_atomic_try_set_gamma.part.0 [rockchipdrm])
>>>> [    5.005207] rockchip-drm display-subsystem: bound fe0a0000.hdmi (ops vop2_crtc_atomic_try_set_gamma.part.0 [rockchipdrm])
>>>> [    5.006798] rockchip-drm display-subsystem: bound fe060000.dsi (ops vop2_crtc_atomic_try_set_gamma.part.0 [rockchipdrm])
>>>> [    5.021204] vop2_crtc_atomic_try_set_gamma  gamma_lut: 0000000000000000
>>>> [    5.021219] vop2_vp_dsp_lut_disable dsp_ctrl: 0x0000000f
>>>>
>>>> It seems that dsp_ctrl: 0x0000000f , this value is not what we expected.
>>>>
>>>> The expected is 0x00010000.
>>>>
>>>> Could you please do an experiment for me? When there is no display on your screen, 
>>>> execute the following command and see if the screen can resume displaying:
>>>>
>>>> ./data/io  -w -4 0xfe040d00 0x10000; io -w -4 0xfe040000 0x28002 
>>>>
>>>> I have placed the io tool in the attachment.
>>>>
>>>> You can use command like bellow to read back to confirm if what you write has taken effect:
>>>> io -r -4 -l 0x100  0xfe040d00 
>>>>
>>>> you may need to make CONFIG_DEVMEM=y so that you can write the register by io command.
>>>
>>>I renamed it as ``andy-io`` and performed the test:
>>>
>>>```sh
>>>root@pt2-scmi:~# echo 'just (re-)booted into my PineTab2; screen is blank'
>>>just (re-)booted into my PineTab2; screen is blank
>>>root@pt2-scmi:~# uname -a
>>>Linux pt2-scmi 6.14.0-rc1-00001-gfbe17d9b77b0 #18 SMP Mon Jun  9 13:17:28 CEST 2025 aarch64 GNU/Linux
>>>root@pt2-scmi:~# ./andy-io -r -4 -l 0x100 0xfe040d00
>>>mmap() failed: Operation not permitted
>>>root@pt2-scmi:~# grep CONFIG_DEVMEM /boot/config-6.14.0-rc1-00001-gfbe17d9b77b0
>>>CONFIG_DEVMEM=y
>>>root@pt2-scmi:~# ./andy-io -w -4 0xfe040d00 0x10000
>>>mmap() failed: Operation not permitted
>>>root@pt2-scmi:~# ./andy-io -w -4 0xfe040000 0x28002
>>>mmap() failed: Operation not permitted
>>>```
>>
>> This is my config about DEVMEM:
>>
>> ~/WorkSpace/linux-next$ rg DEVMEM .config
>> 1014:CONFIG_NET_DEVMEM=y
>> 3069:CONFIG_DEVMEM=y
>> 7280:CONFIG_GENERIC_LIB_DEVMEM_IS_ALLOWED=y
>> 7542:CONFIG_STRICT_DEVMEM=y
>> 7543:# CONFIG_IO_STRICT_DEVMEM is not set
>>
>> CONFIG_IO_STRICT_DEVMEM should not be set to y if you want to access an IO address from usersapce.
>
>That last one seems to be the culprit:
>
>root@pt2-scmi:~# grep DEVMEM /boot/config-6.14.0-rc1-00001-gfbe17d9b77b0
>CONFIG_NET_DEVMEM=y
>CONFIG_DEVMEM=y
>CONFIG_GENERIC_LIB_DEVMEM_IS_ALLOWED=y
>CONFIG_STRICT_DEVMEM=y
>CONFIG_IO_STRICT_DEVMEM=y
>
>My kernel config is based upon Debian's and in commit
>ef7e196951aa ("[arm*,powerpc*,s390x,x86] Enable IO_STRICT_DEVMEM")
>
>I found "can be reverted using the kernel parameter: iomem=relaxed", so
>I added that parameter and rebooted:
>
>```sh
>root@pt2-scmi:~# echo 'just (re-)booted into my PineTab2; screen is blank'
>just (re-)booted into my PineTab2; screen is blank
>root@pt2-scmi:~# uname -a
>Linux pt2-scmi 6.14.0-rc1-00001-gfbe17d9b77b0 #18 SMP Mon Jun  9 13:17:28 CEST 2025 aarch64 GNU/Linux
>root@pt2-scmi:~# cat /proc/cmdline 
>root=UUID=42bbb627-189b-49e3-ae42-699815dc2cbb ignore_loglevel ro rootwait earlycon console=tty0 console=ttyS2,1500000n8 fw_devlink=off iomem=relaxed
>root@pt2-scmi:~# ./andy-io -r -4 -l 0x100 0xfe040d00
>fe040d00:  0000000f 00000000 00000000 00000000
>fe040d10:  00000010 00000000 00000000 00000000
>fe040d20:  00000000 00000000 00000000 00000000
>fe040d30:  01b70010 00500370 00100510 10001000
>fe040d40:  00000000 00000000 03b00010 00500370
>fe040d50:  05120004 00100510 00000000 00000000
>fe040d60:  00000000 00000000 00000000 00000000
>fe040d70:  00000000 00000000 00000000 00000000
>fe040d80:  15110903 00030911 1a150b04 00040b15
>fe040d90:  15110903 00030911 00000000 00000000
>fe040da0:  00000000 00000000 00000000 00000000
>fe040db0:  00000000 00000000 00000000 00000000
>fe040dc0:  00000000 00000000 00000000 00000000
>fe040dd0:  00000000 00000000 00000000 00000000
>fe040de0:  00000000 00000000 00000000 00000000
>fe040df0:  00000000 00000000 00000000 00000000
>root@pt2-scmi:~# ./andy-io -w -4 0xfe040d00 0x10000
>root@pt2-scmi:~# echo 'screen just turned on \o/'
>screen just turned on \o/


Do you mean the screen is turned on(that you see the display on the screen) here ?




> root@pt2-scmi:~# ./andy-io -r -4 -l 0x100 0xfe040d00
>fe040d00:  00010000 00000000 00000000 00000000
>fe040d10:  00000010 00000000 00000000 00000000
>fe040d20:  00000000 00000000 00000000 00000000
>fe040d30:  01b70010 00500370 00100510 10001000
>fe040d40:  00000000 00000000 03b00010 00500370
>fe040d50:  05120004 00100510 00000000 00000000
>fe040d60:  00000000 00000000 00000000 00000000
>fe040d70:  00000000 00000000 00000000 00000000
>fe040d80:  15110903 00030911 1a150b04 00040b15
>fe040d90:  15110903 00030911 00000000 00000000
>fe040da0:  00000000 00000000 00000000 00000000
>fe040db0:  00000000 00000000 00000000 00000000
>fe040dc0:  00000000 00000000 00000000 00000000
>fe040dd0:  00000000 00000000 00000000 00000000
>fe040de0:  00000000 00000000 00000000 00000000
>fe040df0:  00000000 00000000 00000000 00000000
>root@pt2-scmi:~# ./andy-io -w -4 0xfe040000 0x28002
>root@pt2-scmi:~# echo "screen is still on ... don't see any changes on screen"
>screen is still on ... don't see any changes on screen
>root@pt2-scmi:~# ./andy-io -r -4 -l 0x100 0xfe040d00
>fe040d00:  00010000 00000000 00000000 00000000
>fe040d10:  00000010 00000000 00000000 00000000
>fe040d20:  00000000 00000000 00000000 00000000
>fe040d30:  01b70010 00500370 00100510 10001000
>fe040d40:  00000000 00000000 03b00010 00500370
>fe040d50:  05120004 00100510 00000000 00000000
>fe040d60:  00000000 00000000 00000000 00000000
>fe040d70:  00000000 00000000 00000000 00000000
>fe040d80:  15110903 00030911 1a150b04 00040b15
>fe040d90:  15110903 00030911 00000000 00000000
>fe040da0:  00000000 00000000 00000000 00000000
>fe040db0:  00000000 00000000 00000000 00000000
>fe040dc0:  00000000 00000000 00000000 00000000
>fe040dd0:  00000000 00000000 00000000 00000000
>fe040de0:  00000000 00000000 00000000 00000000
>fe040df0:  00000000 00000000 00000000 00000000
>```
>
>For completeness, I then closed the lid and opened it again:
>
>```sh
>root@pt2-scmi:~# dmesg | grep "vop2_"
>[    5.128785] rockchip-drm display-subsystem: bound fe040000.vop (ops vop2_crtc_atomic_try_set_gamma.part.0 [rockchipdrm])
>[    5.138031] rockchip-drm display-subsystem: bound fe0a0000.hdmi (ops vop2_crtc_atomic_try_set_gamma.part.0 [rockchipdrm])
>[    5.139641] rockchip-drm display-subsystem: bound fe060000.dsi (ops vop2_crtc_atomic_try_set_gamma.part.0 [rockchipdrm])
>[    5.160937] vop2_crtc_atomic_try_set_gamma  gamma_lut: 0000000000000000
>[    5.160950] vop2_vp_dsp_lut_disable dsp_ctrl: 0x0000000f
>[ 1931.879232] vop2_crtc_atomic_try_set_gamma  gamma_lut: 0000000000000000
>[ 1931.879245] vop2_vp_dsp_lut_disable dsp_ctrl: 0x00010000
>```
>
>Cheers,
>  Diederik
>
>>>> [   73.750524] vop2_crtc_atomic_try_set_gamma  gamma_lut: 0000000000000000
>>>> [   73.750542] vop2_vp_dsp_lut_disable dsp_ctrl: 0x00010000
>>>>>>>>>> patched vop2_vp_dsp_lut_disable function so that dsp_ctrl is set only if 
>>>>>>>>>> GAMMA LUT EN bit is set. I checked that this also does not break the gamma 
>>>>>>>>>> lut functionality with emphasis on out-of/into suspend behavior.
>>>>>>>>>>
>>>>>>>>>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>>>>>>>>> index d0f5fea15e21..7ddf311b38c6 100644
>>>>>>>>>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>>>>>>>>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>>>>>>>>> @@ -897,6 +897,9 @@ static void vop2_vp_dsp_lut_disable(struct vop2_video_port *vp)
>>>>>>>>>>  {
>>>>>>>>>>  	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
>>>>>>>>>>  
>>>>>>>>>> +	if ((dsp_ctrl & RK3568_VP_DSP_CTRL__DSP_LUT_EN) == 0)
>>>>>>>>>> +		return;
>>>>>>>>>> +
>>>>>>>>>>  	dsp_ctrl &= ~RK3568_VP_DSP_CTRL__DSP_LUT_EN;
>>>>>>>>>>  	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
>>>>>>>>>>  }
>>>>>>>>>
>>>>>>>>>I built a kernel with 6.14-rc1 + this patch and can confirm the screen
>>>>>>>>>has output again :-)
>>>>>>>>>
>>>>>>>>>> I will wait with sending a patch because maybe Andy has something to add 
>>>>>>>>>> to this.
>>>>>>>>>
>>>>>>>>>Sounds like a plan. It could be that this issue surfaced an underlaying
>>>>>>>>>issue and if so, fixing that would be even better.
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
