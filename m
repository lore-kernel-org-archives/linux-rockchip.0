Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63889D4335D
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Nov 2024 13:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMtPPBVY+VEr5UW1nQRN8KzTjMZu8/yrjEDCd4CBViU=; b=2llYpahf7Q0ElU
	WbDK+//EDuICLnfA6ldOSpTqALpBNoWMiE0II76Zkl2Vx93QfsQsGT41ufiUR5NqwepHoSk3je6Nl
	m7VZQQj7gwRx7plFcCjPoz2780vbwNX/M+aSZEI6Ed/hwIgoClqmcdlo+DJlUy5AjjzLuyeOtr45N
	eFko4IExxA3Ngp70gApkvLoQ/PMVqP3QrZpNNy2AnYbcwODj5ChH34h1FZd7ueZklk2exmWbJEzm2
	NoFhpzHhMsFHM64tQ5GfKHm7BblVyR1ZaFIkSzr9XBOyTIgz4C2CMgpmz/pEybMT7GVlTP2sVlBaY
	oGgHIaAfubOSPP5DPM0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t931k-00000007Chh-1cDV;
	Thu, 07 Nov 2024 13:58:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t92uz-00000007BWk-3nfE;
	Thu, 07 Nov 2024 13:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HX5GOJc4ky/+VuvmS4Zsp8lqZ9shMfpMhaTLW2ZnQSg=; b=UL9C46wIqeoRxhjiykWkxyJJxP
	LxD3vx0burgeau+IFu4BtQ1bd4iQaUyO8wGDlQFjSSzjVim1OAyTgxSELRPGo8NRGhfsf9CjlP9N3
	HZTKi77yo+zIhDj1Fs+nyPuU3dJSBv53oWw85C7IQpdGW8nNn4/cUfpr347PIVIKysgAkAn8oUyuK
	Hctki9lGI0O4ZDVyFcaMj6PkPZrhXzkcqblrCpgJ74TIT4fuuiap/C/FQxWP4HkbUq7YQae/QqSKN
	PeMmvMI4MJH0LmDVpHAvSu/9Jl/cXF/ipe+/DuG8tzexcAe7/T3M8DSjsk+1OcFjFznnygLIABiM+
	ihKq9SpQ==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t92ua-0006Xa-JT; Thu, 07 Nov 2024 14:51:00 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jiri Kosina <jikos@kernel.org>
Cc: lee@kernel.org, jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
 srinivas.pandruvada@linux.intel.com, bentiss@kernel.org,
 dmitry.torokhov@gmail.com, pavel@ucw.cz, ukleinek@debian.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-leds@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v9 1/9] HID: hid-sensor-hub: don't use stale platform-data on
 remove
Date: Thu, 07 Nov 2024 14:50:59 +0100
Message-ID: <4934964.GXAFRqVoOG@diego>
In-Reply-To: <nycvar.YFH.7.76.2411071358210.20286@cbobk.fhfr.pm>
References: <20241107114712.538976-1-heiko@sntech.de>
 <20241107114712.538976-2-heiko@sntech.de>
 <nycvar.YFH.7.76.2411071358210.20286@cbobk.fhfr.pm>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_055126_014693_B438ED06 
X-CRM114-Status: GOOD (  25.09  )
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

Hi Jiri,

Am Donnerstag, 7. November 2024, 13:59:04 CET schrieb Jiri Kosina:
> On Thu, 7 Nov 2024, Heiko Stuebner wrote:
> 
> > The hid-sensor-hub creates the individual device structs and transfers them
> > to the created mfd platform-devices via the platform_data in the mfd_cell.
> > 
> > Before e651a1da442a ("HID: hid-sensor-hub: Allow parallel synchronous reads")
> > the sensor-hub was managing access centrally, with one "completion" in the
> > hub's data structure, which needed to be finished on removal at the latest.
> > 
> > The mentioned commit then moved this central management to each hid sensor
> > device, resulting on a completion in each struct hid_sensor_hub_device.
> > The remove procedure was adapted to go through all sensor devices and
> > finish any pending "completion".
> > 
> > What this didn't take into account was, platform_device_add_data() that is
> > used by mfd_add{_hotplug}_devices() does a kmemdup on the submitted
> > platform-data. So the data the platform-device gets is a copy of the
> > original data, meaning that the device worked on a different completion
> > than what sensor_hub_remove() currently wants to access.
> > 
> > To fix that, use device_for_each_child() to go through each child-device
> > similar to how mfd_remove_devices() unregisters the devices later and
> > with that get the live platform_data to finalize the correct completion.
> > 
> > Fixes: e651a1da442a ("HID: hid-sensor-hub: Allow parallel synchronous reads")
> > Cc: stable@vger.kernel.org
> > Acked-by: Benjamin Tissoires <bentiss@kernel.org>
> > Acked-by: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
> 
> Acked-by: Jiri Kosina <jkosina@suse.com>
> 
> Are you planning to merge this together with the rest of the set, or do 
> you want me to expedite it? I'll be happy to apply it separately as a 
> proper fix.

This change was more or less a surprise find, because I wanted to make
the platform_data pointer in the mfd_cell struct const and this the hid
sensor hub stood out as doing something strange ;-) .

So patch 2 of this series actually depends on this change to not cause
build errors.

But seeing that we're after -rc6 alredy, I would assume the brunt of the
mcu series might need to wait after 6.13-rc1 anyway - but I guess that
depends on how Lee sees things ;-) .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
