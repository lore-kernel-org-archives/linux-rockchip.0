Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 080E4C43327
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 23:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i64AOHKgF58jr6nlbkpZRIm3I6KpgY1zX9uQ/SInofM=; b=vC1N8T7zKshYA7
	n3MRsQCNf08FA/5yGPmIzFDSfCNTHiOBrz+Cvaa1fAY3GNA/uKYelKzD7YJn7JR0wGqeTKstaDATn
	sxf0YqgeG3P1m/pMhEuHE4bcIr6KgC6qDOlKUCvSyCgGtflGEKm5ozeYbQe2vzp9+7aRKGmwNhAgg
	9dKHprfGQ2P/97BaLFGJ6XdhEHc1+B4160HLwYy77lZkLqNE0Y9fgyA7zv+ImkYYsAmxqTUeJ1SSE
	rGglbbFwqXbhQfgDNm7OROdMPS9xrs+UzvSiCU/3RpanINGVmC4Z1VrX6RkqIC84vc9/aruIAV6tG
	pJ3T/nZ3FENv5SwRRpaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weLrw-0000000FbCF-3G9l;
	Mon, 29 Jun 2026 23:58:28 +0000
Received: from flow-a8-smtp.messagingengine.com ([103.168.172.143])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weLrs-0000000FbBo-29ZA;
	Mon, 29 Jun 2026 23:58:26 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailflow.phl.internal (Postfix) with ESMTP id 0BA48138039B;
	Mon, 29 Jun 2026 19:58:21 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Mon, 29 Jun 2026 19:58:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm1;
	 t=1782777501; x=1782784701; bh=ntoVNrERxl6CnLB0Obl/d+Xz+xme4tJI
	lufgMOjhiwA=; b=v8s/eY4L5HFOcjqnQZ823UAS/LHyaUEm85qu0XmCc71uXnG2
	cvkOxCYPzFLBCTTDnPAcBSYZzJ2+yE6N4fPa6sEGIBJIYZcOAN8qpj2nfzQLi9F5
	jV1vvPyEhEYVlWNvh8/BzDIhVuyYzX2LsFle0pATeuiAfDmcO3X28y0E1iNUPJEo
	v25JyyyfCNSgY9W7bLDK2Py5B4SD2vS47HoLtwLlZyt9XfpB5i8DFFy195aCWoC2
	x+AKL61GGQIyWrIINs+YyoIPvM9+DgmiU0kab1MThff7LoEH0Es/Wytho4Ztqxwh
	iCSNYBGhKHSWeVvvsd1OdF/pOZcK2ttl+46V3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1782777501; x=
	1782784701; bh=ntoVNrERxl6CnLB0Obl/d+Xz+xme4tJIlufgMOjhiwA=; b=R
	MKRqs/flHUni4dlOeHuhwjnnYx/qu2zwQCJtPfIIEPz3gE6dP2SS+kO/SxtUM2p+
	fXsMgk2rDlTf/sTkRba30Ghras5RPXULAH1/GPHEEhmblWPHjyqELBYhA/qibNmQ
	ECYEK6oVYBifehsJjj32qWlobcGKFSrZa0HHgz9Iqwgpdu9YvkzR7VNNHw/jTwz+
	bqoNgLB8cMrHpQ6+9NaoaPyDNO4HCQS72/HZv8UteAS8Rigl8p00Y6G1kFdS+1jK
	6qPb3zwn5qYMTokX9EPzqE5AEbRmeo/zQ0VssHNfuoJG0EVsyiXKgURmOHD0sUV1
	H0rRl8dpjOEVmRoTwUZ1Q==
X-ME-Sender: <xms:mQZDaluSBeKP6-3dxlZW1Qy-wiZuV30hOCgoY0KTdW_FR9USmttnIA>
    <xme:mQZDaqsTDIOLYRFhhc3J9nrb24WnM6JX0P1jalpuT12eGcDRrsNO7C0AiHmIdhI6S
    wZZ_GAF_hVaMLpQHvr5u3l1DmczGXIt02C9zTRQlweayP0y6j60MtE>
X-ME-Received: <xmr:mQZDaiaKXC3v0RK_n7k7uRKLanjcoEkW0Ynaj3uQGwXdvyRJ9nlk3vd6xHlSeNwReywIoC38Dirstc3cHFJimVEGnsusng>
X-ME-Proxy-Cause: dmFkZTE1nPznX32V2kRYPd7dlOJ1rQMxQ97lS3kACD5+oEF3K9KIS5kEvZ60kMOO9SW4/K
    QPw1fJ0Uyhmt7TDZBpmrns6QqSMdNA56CqP8WoSfum8fnJ6ROXsuIW1V0IRazJ9YoofPdA
    sTTZjseo2amkBTK2yB8676gAjYCnTj4WiXvzDEoqMGHljUjgOtAHWVMwabts+S3qWRtyzK
    4E9/EeTGdZ7uavjZ/gsD8IHy6BDQ3FsBKJrzbjVNgjW3Z/maBbDFLwVIvKVTB+FB58t2Nf
    6IC6zRUoalXGvpiS7NeraM3cciwz14beoWbfR17QqVpm8xj9z6j1i325oVQMRhakNlULd5
    LZDHjkZMhVaJOCK5sNu7C567TC6G74BcKbIUFX8Y7L5R/J5HFqJpTz5QFRAfF6pNDZXMRw
    NNT721SX2qmWOzpsbLjvz7baHpP6tE5XnMymltgojO/d+aMQ8ZSVKdM2OoEzaoH016syXZ
    LXR91cDsgFgly6bjeAUpymfC5EHpfadwr1qHn8fxadSgempnoWd6aBNScmoRMpmKbMNqfw
    SOO/eYhVEtRjJvkDcQZ5ZyEDYkQzi3vZqOB51rSkn6prTNuNuxVGEjwdaA6cQo5MEz4nhz
    PKvXIWkmhe258dVI/0CMIo7RXUSN9DEF8/fLk8wWAe6GpwU+34F0ICv2ylcg
X-ME-Proxy: <xmx:mQZDasgnrDakzWEqB7_AjeS2c_t5Xc3WBZuoKa0aZ4s3n7SEHjJv-Q>
    <xmx:mQZDavUcRf_YCMSZCbYUJMoSGXurxjrs99xK4QubABtZxnkbGNT_Mg>
    <xmx:mQZDauVcra2E5kWpNBgjezjqhXIgqwPYvcnnMt7uQ1KIYOQ6F3GKDw>
    <xmx:mQZDajhAFNO6LVldX5NJt5ll8F8-azSI6SjWkRx169oeJqn6IZVlXA>
    <xmx:nQZDaqvpp383SrPNL_mk4gMnSCyGdO9-6LDFSBkbgsdwZ1j1U-4qLPWs>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Jun 2026 19:58:06 -0400 (EDT)
Date: Tue, 30 Jun 2026 08:58:04 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?= <u.kleine-koenig@baylibre.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mark Brown <broonie@kernel.org>,	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,	Justin Stitt <justinstitt@google.com>,
	Raag Jadav <raag.jadav@intel.com>,	Sohil Mehta <sohil.mehta@intel.com>,
	Dave Hansen <dave.hansen@linux.intel.com>,	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,	Len Brown <lenb@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>,	linux-kernel@vger.kernel.org,
	Yemike Abhilash Chandra <y-abhilashchandra@ti.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,	linux-media@vger.kernel.org,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,	Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,	Danilo Krummrich <dakr@kernel.org>,
 driver-core@lists.linux.dev,	Jonathan Cameron <jic23@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
	Pei Xiao <xiaopei01@kylinos.cn>,
	Shashank Balaji <shashank.mahadasyam@sony.com>,
	Ben Horgan <ben.horgan@arm.com>, Johan Hovold <johan@kernel.org>,
	linux-usb@vger.kernel.org, Nikita Kravets <teackot@gmail.com>,
	Hans de Goede <hansg@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	platform-driver-x86@vger.kernel.org, devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org,	Daniel Scally <dan.scally@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Minas Harutyunyan <hminas@synopsys.com>,
	Tianrui Zhao <zhaotianrui@loongson.cn>,	Bibo Mao <maobibo@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>,	WANG Xuerui <kernel@xen0n.name>,
 kvm@vger.kernel.org,	loongarch@lists.linux.dev
Subject: Re: [PATCH v3 00/16] mod_devicetable.h: Split into per subsystem
 headers
Message-ID: <20260629235804.GA414914@sakamocchi.jp>
Mail-Followup-To: Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mark Brown <broonie@kernel.org>,	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,	Justin Stitt <justinstitt@google.com>,
	Raag Jadav <raag.jadav@intel.com>,	Sohil Mehta <sohil.mehta@intel.com>,
	Dave Hansen <dave.hansen@linux.intel.com>,	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,	Len Brown <lenb@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>,	linux-kernel@vger.kernel.org,
	Yemike Abhilash Chandra <y-abhilashchandra@ti.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,	linux-media@vger.kernel.org,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,	Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,	Danilo Krummrich <dakr@kernel.org>,
 driver-core@lists.linux.dev,	Jonathan Cameron <jic23@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
	Pei Xiao <xiaopei01@kylinos.cn>,
	Shashank Balaji <shashank.mahadasyam@sony.com>,
	Ben Horgan <ben.horgan@arm.com>, Johan Hovold <johan@kernel.org>,
	linux-usb@vger.kernel.org, Nikita Kravets <teackot@gmail.com>,
	Hans de Goede <hansg@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	platform-driver-x86@vger.kernel.org, devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org,	Daniel Scally <dan.scally@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Minas Harutyunyan <hminas@synopsys.com>,
	Tianrui Zhao <zhaotianrui@loongson.cn>,	Bibo Mao <maobibo@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>,	WANG Xuerui <kernel@xen0n.name>,
 kvm@vger.kernel.org,	loongarch@lists.linux.dev
References: <cover.1782682124.git.ukleinek@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1782682124.git.ukleinek@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_165825_082075_AC8AC7DB 
X-CRM114-Status: GOOD (  25.36  )
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

Hi,

On Sun, Jun 28, 2026 at 11:58:35PM +0200, Uwe Kleine-K=F6nig (The Capable H=
ub) wrote:
> Hello,
> =

> v2 is available at
> https://lore.kernel.org/lkml/cover.1782490566.git.u.kleine-koenig@baylibr=
e.com
> .
> =

> Changes since then:
> =

>  - rebased to v7.2-rc1
>  - rename the directory containing the new per device-id headers from
>    "mod_device_id" to "device-id".
>  - Adding Acks received
>  - ASoC patch (formerly patch #3) dropped as it was already merged as
>    commit 83d53eca7e55 ("ASoC: rockchip: rockchip_sai: #include
>    <linux/platform_device.h> explicitly") in v7.2-rc1.
> =

> This series survived an allmodconfig build on alpha, arc, arm64,
> loongarch, m68k, mips, powerpc, riscv, s390, sh, sparc, and x86_64.
> (Well, some failures, but I see these also on vanilla v7.2-rc1.)
> =

> There are a few headers left that include <linux/mod_devicetable.h>, but
> these can be addressed in the next dev cycle without much impact as all
> the much included headers are covered here.
> =

> I will apply this series to
> =

> 	https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git devic=
e-id-rework
> =

> which is included in next to expose it to the build bots and testers (in
> the hope that there won't occur much merge conflict with v7.3 material).
> I will add review tags and address (the hopefully very few) build issues
> that might pop up. My plan is to let Linus merge it end of the week for
> -rc2.
> =

> Best regards
> Uwe
> =

> Uwe Kleine-K=F6nig (The Capable Hub) (16):
>   mod_devicetable.h: Split into per subsystem headers
>   media: ti: vpe: #include <linux/platform_device.h> explicitly
>   driver: core: Include headers for acpi_device_id and of_device_id for
>     struct device_driver
>   driver core: platform: Include header for struct platform_device_id
>   usb: serial: Include <linux/usb.h> in <linux/usb/serial.h>
>   platform/x86: msi-ec: Ensure dmi_system_id is defined
>   of: Explicitly include <linux/types.h> and <linux/err.h>
>   i2c: Let i2c-core.h include <linux/i2c.h>
>   platform/x86: x86-android-tablets: Add include defining struct
>     dmi_system_id
>   platform/x86: int3472: Add include defining struct dmi_system_id
>   usb: dwc2: Add include defining struct pci_device_id
>   ALSA: hda/core: Add include defining struct hda_device_id
>   LoongArch: KVM: Add include defining struct cpu_feature
>   media: em28xx: Add include for struct usb_device_id
>   Replace <linux/mod_devicetable.h> by more specific
>     <linux/device-id/*.h> (headers)
>   Replace <linux/mod_devicetable.h> by more specific
>     <linux/device-id/*.h> (c files)
> =

>  ...
>  drivers/firewire/core-device.c                |    1 -
>  drivers/firewire/net.c                        |    1 -
>  drivers/firewire/sbp2.c                       |    1 -
>  ...
>  drivers/media/firewire/firedtv-fw.c           |    1 -
>  ...
>  include/linux/firewire.h                      |    3 +-
>  ...
>  sound/firewire/isight.c                       |    1 -
>  ...
>  1649 files changed, 1575 insertions(+), 2544 deletions(-)
>  ...
>  create mode 100644 include/linux/device-id/ieee1394.h

I have no objection to the above changes relevant to firewire subsystem.

Acked-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>

Consequently, unit drivers just include include/linux/firewire.h to refer =

to 'struct ieee1394_device_id'. After merging the changes, I'll post more
patches to modify the following unit drivers, since they are left from the
patchset.

* drivers/media/firewire/firedtv.h
* sound/firewire/bebob/bebob.h
* sound/firewire/dice/dice.h
* sound/firewire/digi00x/digi00x.h
* sound/firewire/fireface/ff.h
* sound/firewire/fireworks/fireworks.h
* sound/firewire/motu/motu.h
* sound/firewire/oxfw/oxfw.h
* sound/firewire/tascam/tascam.h

By the way, the changes touch so many files. If it takes more time to
apply, I think it better to make steps to modify across several kernel
generation. For example, getting rid of direct reference of
mod_devicetable.h from drivers at first (in the case of firewire
subsystem, for 'Replace <linux/mod_devicetable.h> by more specific
<linux/device-id/*.h> (headers))', then adding these per-subsystem
headers and applying relevant changes.

Of course, I don't mind to apply the v3 patchset as is in upstream.


Thanks

Takashi Sakamoto

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
