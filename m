Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4967CD4335B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Nov 2024 13:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqJM93QC2VB88LEnpRzKz3mcXG0cZ5Jj2seZGQQKGiY=; b=2HC+Owk3//5tIL
	hPhPYgj4BmZEm7B4yK1r8AgddjrWK9MFMFSK8feVLfyLE1aj0KyZo4Mb+Tynqf2Zz6Zo4wlyxiba+
	5yUl8O0b+LoazvixI4I6adSDFASz6jnt4KAWozwqf6DtQ7++zflOGZJnIXuWQ2S0uNGm/oaw9n/kv
	Uyj41ChUKLEzoW9eRosfqLJl5TG2+KXkg2ObChMvtoZtEqrQgxzcVtbiWWUekINyV0UpSTED9SVmz
	dB6d3oaKijuVhhCJFGtvIcmGJ/ONNhwKhW6vSAUI5TSKEq2MfthvNvFqaVEegsEO7PqF3OEJLq2VR
	OkpUQQ34ApIzKpdG+2JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t928B-000000071DB-2YAI;
	Thu, 07 Nov 2024 13:00:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t926O-000000070qF-4Aym;
	Thu, 07 Nov 2024 12:59:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3DF015C1349;
	Thu,  7 Nov 2024 12:58:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BC64C4CED0;
	Thu,  7 Nov 2024 12:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730984347;
	bh=O2jEPTTUJi8YuBrD4uo+6+5CJE7GCRdzMd3WNJyIb5Y=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=iD63z4HWcMWir7bHC1m9R+CT/cgDL1VVsJnEYKSEV2jU7HGI+2dVFuZypj0yOnSMM
	 mn3gjCdYb+BdncyjpsM7aAENfKfDqDXnjHN+2pZzXcAtNKO7WmYhwE7RzeUBCUKw2h
	 Nup1Iz0s1HgQ3Gb4OUa/iOOIVQiZ4CeVgWd2UBMnORr7GbcAdAEXM1MgcLuoSUbXms
	 X6tG5gVUTPfyBUebk8mkJuHitQAqBK1utoJ6fBjCahU4wIHzJtNHElOGwm7LDcPfaW
	 MRn8cczXOJQV1BRqGDf6dCM2YXKLjO2zUv3syEb+P+BmVoRQB7n7BShvU1hPmmuX3Q
	 BivsrE6XS583g==
Date: Thu, 7 Nov 2024 13:59:04 +0100 (CET)
From: Jiri Kosina <jikos@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
cc: lee@kernel.org, jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
    conor+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net, 
    srinivas.pandruvada@linux.intel.com, bentiss@kernel.org, 
    dmitry.torokhov@gmail.com, pavel@ucw.cz, ukleinek@debian.org, 
    devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
    linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org, 
    linux-iio@vger.kernel.org, linux-leds@vger.kernel.org, 
    stable@vger.kernel.org
Subject: Re: [PATCH v9 1/9] HID: hid-sensor-hub: don't use stale platform-data
 on remove
In-Reply-To: <20241107114712.538976-2-heiko@sntech.de>
Message-ID: <nycvar.YFH.7.76.2411071358210.20286@cbobk.fhfr.pm>
References: <20241107114712.538976-1-heiko@sntech.de> <20241107114712.538976-2-heiko@sntech.de>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_045909_101506_892F8258 
X-CRM114-Status: GOOD (  16.91  )
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

On Thu, 7 Nov 2024, Heiko Stuebner wrote:

> The hid-sensor-hub creates the individual device structs and transfers them
> to the created mfd platform-devices via the platform_data in the mfd_cell.
> 
> Before e651a1da442a ("HID: hid-sensor-hub: Allow parallel synchronous reads")
> the sensor-hub was managing access centrally, with one "completion" in the
> hub's data structure, which needed to be finished on removal at the latest.
> 
> The mentioned commit then moved this central management to each hid sensor
> device, resulting on a completion in each struct hid_sensor_hub_device.
> The remove procedure was adapted to go through all sensor devices and
> finish any pending "completion".
> 
> What this didn't take into account was, platform_device_add_data() that is
> used by mfd_add{_hotplug}_devices() does a kmemdup on the submitted
> platform-data. So the data the platform-device gets is a copy of the
> original data, meaning that the device worked on a different completion
> than what sensor_hub_remove() currently wants to access.
> 
> To fix that, use device_for_each_child() to go through each child-device
> similar to how mfd_remove_devices() unregisters the devices later and
> with that get the live platform_data to finalize the correct completion.
> 
> Fixes: e651a1da442a ("HID: hid-sensor-hub: Allow parallel synchronous reads")
> Cc: stable@vger.kernel.org
> Acked-by: Benjamin Tissoires <bentiss@kernel.org>
> Acked-by: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>

Acked-by: Jiri Kosina <jkosina@suse.com>

Are you planning to merge this together with the rest of the set, or do 
you want me to expedite it? I'll be happy to apply it separately as a 
proper fix.

Thanks,

-- 
Jiri Kosina
SUSE Labs


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
