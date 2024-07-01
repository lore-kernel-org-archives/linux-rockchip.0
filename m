Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 202E0C30653
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jul 2024 09:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3J+VEHXGZDKA+0ZGkfsqgl2t7lnMicuYx/Tj2WbjEV0=; b=cPe5+x9vUte9k9uyk6e0w007jt
	Nvvx2qdN+o0I2mHjmuIQeNP6CAZNWVYAJDa+QqW8BZZ/2RxbhSoZ5U8IkIergFMrY9EK60FCZRNXf
	r0x8bgP7PQKUtzHDuNod+Z80o0WfjQrXBT4hnZIeHqIjbBlXptvPod3V5KnDq7dbQKfe0SonzOoR3
	/D0X/oYTFOqi5Qe56u+lKJnILKubWGZ9lD835Rs7O9pgrvYoXrOFlZ7CIUHemjbXo/0DZLTSi20O5
	YZPmAwNTQEeOp5hXdT2lKmqYocvPZoT7wx/Xd8IqdVD/CY58wcTc8cC2OLlO8SiavGiEo6AwdhAgl
	pPQv+M8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOD1C-00000002NrB-2GxH;
	Mon, 01 Jul 2024 09:08:14 +0000
Received: from out-180.mta0.migadu.com ([91.218.175.180])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOD17-00000002Nn5-0jOC
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jul 2024 09:08:13 +0000
X-Envelope-To: dri-devel@lists.freedesktop.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1719824884;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IWkD76VR7famEn8Nbe0wkLmIlzygXCHVCmau7jj4g+s=;
	b=oOVgyjTY4hXNXt3d48GL4BdGmMVTjrOg1/GHXbiO+wXTF7dgcS74XcXdgs4UR2eVSOuqkL
	lZt4E3IYv3zIA26m2e2B91XNpj1vL3X1jrpl/a9aHmTBpoikf8SpVeaxxajabkclUgNctv
	y9u/UjqaYWXR0PiEwxR3D5uDmEaWJQJ2diOoqRorX4H1SWReuNX76tYjfgVOWqeJnZAsWm
	azJkxZF7N6JWaKOiyP8rqmlVVo/VYD4Z3/1h9amxpkX7y+O0b6HYtb1Nz6+2q9UZHOCdHr
	SpfvAHF2DPWL//afSG+P6vnbQN0p1B3PW7saz2/QNfcCb6CYv2429OgHT5answ==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jonas@kwiboo.se
X-Envelope-To: jonas@kwiboo.se
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Jonas Karlman <jonas@kwiboo.se>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH 00/13] rockchip: Enable 4K@60Hz mode on RK3228, RK3328,
 RK3399 and RK356x
Date: Mon, 01 Jul 2024 11:07:50 +0200
Message-ID: <2528743.FZeJfPzi8P@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_020811_656321_39053AC2 
X-CRM114-Status: GOOD (  16.24  )
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
Content-Type: multipart/mixed; boundary="===============3117242019031247515=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3117242019031247515==
Content-Type: multipart/signed; boundary="nextPart6101972.8Rv6zO9TrO";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart6101972.8Rv6zO9TrO
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Mon, 01 Jul 2024 11:07:50 +0200
Message-ID: <2528743.FZeJfPzi8P@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
MIME-Version: 1.0

Hi Jonas,

On Saturday, 15 June 2024 19:03:51 CEST Jonas Karlman wrote:
> This prepares and enable use of HDMI2.0 modes, e.g. 4K@60Hz, on RK3228,
> RK3328, RK3399 and RK356x.
> ...
> This series may not fully depend on but was only tested together with
> the series "drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID
> cleanup" at [1].
> [1] https://patchwork.freedesktop.org/series/134727/

I only just now realized this part of your message and consequently
I had NOT applied the referenced patch set.

> I have tested 4K modes on following devices:
> - Asus TinkerBoard (RK3288)
> - Pine64 Rock64 (RK3328)
> - Radxa ROCK Pi 4 (RK3399)
> - Radxa ROCK 3A (RK3568)

And I can confirm that this patch set enables 4K(@60Hz) resolution when
connecting my Rock64 to my 4K TV with my self-build 6.10-rc5 kernel.
It selected the 3840x2160@60Hz resolution, but ``swaymsg -t get_outputs``
also reported a range of 4096x2160 resolutions.

In contrast, my 6.10-rc2 kernel which is quite similar, except for this
patch set, does not mention any 4K resolution at all.

So AFAIC you can already include:
Tested-by: Diederik de Haas <didi.debian@cknow.org>

Next up will be a test with my Quartz64 Model B (RK3566).

Not caused by this patch set, but I did encounter several 'interesting'
issues while testing it. As most do involve display/hdmi, I'll mention
them to have it at least publicly documented.

Summary of those:
1) With Debian's 6.8.12-1 kernel I got a stack trace and (initially) no
output at all. After some time (due to no signal) my TV turned itself
off (standby) and when I turned it on, I did see a console...
First line of stack trace:
WARNING: CPU: 0 PID: 432 at drivers/media/cec/core/cec-adap.c:1085 cec_received_msg_ts+0x52c/0xbb8 [cec]

2) The 6.9.7 Debian kernel I then installed did not have the stack
trace and did show a console, but in 1080p. But I have a 'vague'
recollection that the stack trace issue only happens sometimes.

3) All the kernels I tested had the following errors:

rockchip-pm-domain ff100000.syscon:power-controller: failed to get ack on domain 'hevc', val=0x88220
gpio-syscon ff100000.syscon:gpio: can't read the data register offset!
hdmi-audio-codec hdmi-audio-codec.9.auto: Only one simultaneous stream supported!
hdmi-audio-codec hdmi-audio-codec.9.auto: ASoC: error at snd_soc_dai_startup on i2s-hifi: -22

4) And they also had the following warnings:

rockchip-spi ff190000.spi: Runtime PM usage count underflow!
dwc2 ff580000.usb: supply vusb_d not found, using dummy regulator
dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator
hdmi-audio-codec hdmi-audio-codec.9.auto: Only one simultaneous stream supported!
hdmi-audio-codec hdmi-audio-codec.9.auto: ASoC: error at snd_soc_dai_startup on i2s-hifi: -22

Those 'dummy regulator' messages got repeated numerous of times, 36 in total.
The hdmi-audio-codec only appeared after logging in, so likely 'triggered'
by the start of pipewire.

Cheers,
  Diederik

PS: and now Q64-B is really up, will report that separately
--nextPart6101972.8Rv6zO9TrO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoJx5gAKCRDXblvOeH7b
bkliAPQLar1+3rYv8f7tdO2HFwuvGYEydoJbxV2lyIWeArMCAP9L9r5vAsl9k9fH
qizWhtOGi2kgAjnCmKgjh1LZrH1VAQ==
=CEwJ
-----END PGP SIGNATURE-----

--nextPart6101972.8Rv6zO9TrO--





--===============3117242019031247515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3117242019031247515==--




