Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B01E3C83013
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jul 2025 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mkqA4gDwhRUtLFt0Gzd9/jmyWsxT7is9t68XokwnYE=; b=TeKQczYifHSZPa
	KsK+A2nmqJRMiXQ3+s0kz1O2SoPlsTrYqnr5ViSDkv8jmKct5QXIjzJFvjFE2m5GicX0upvTzKumW
	+I9KL/GGeDRaN8iSA+GDDFyHp7+xQmgRDNb1Hry2QDo3Jb/F1aNsXUD/RaRlGxXZkf6Yqq8S4CD11
	JKO1epmCnLhcQ5MVvZkKfwGIKSxXAYxxCg/w7XecZfaIvWdlyrhbCcjgclEPi0nU2JkmXfC5ZmbOP
	420fWKeztcISjCiMg7v6d33AYNY1VVXbHZLcRAcYbfccJU86U+6b9XRhBltXPUddIlHHcFYARh+Ib
	o5DNqEv3A6iwdARk7Z+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWutR-00000007yxS-1uF3;
	Wed, 02 Jul 2025 10:40:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWu5s-00000007qJ9-0k47;
	Wed, 02 Jul 2025 09:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1751449770;
	bh=HaDbrpXJ0lT6/Xsy0anDOjZM40zt+N8qVQXlMq+igkE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=f71292rUHg3WI4fUSBFc+KK9z9UY3VGWxdv3y3c+UbrfUwDm0DZ74NzaasxZy7qey
	 b3I3owP50H3fZzi3SJ/tS8dGG9hayAu8pc6ytIHBEP1L3yBw53cQTwvYO6C1mC4i7g
	 Bzqfz8X5QGCOZeiBFF1BBsAlIYdp72hhMFRdR6UFV6ndoOJR0MUONKuknnN3y4PZfl
	 I2hBSlW1TOHwYjd5hg52TmWTB3r0jqeJbyNnYgPvtM6nIXHUcXiMXtUj+V/qLeK7z7
	 Q3s1LLUIXPYiCXHFQuITvmgx72/frRdzu88TA86x1ot0zUb94rh3GIr4gUfFD4XdOG
	 t3Uju+CuhRIqg==
Received: from [192.168.1.90] (unknown [212.93.144.165])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BE03B17E04C0;
	Wed,  2 Jul 2025 11:49:29 +0200 (CEST)
Message-ID: <422d8ca6-00b6-4c69-b261-b0399d12c9d8@collabora.com>
Date: Wed, 2 Jul 2025 12:49:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add analog audio to ROCK 4D
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250630-rock4d-audio-v1-0-0b3c8e8fda9c@collabora.com>
 <20250630-rock4d-audio-v1-3-0b3c8e8fda9c@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20250630-rock4d-audio-v1-3-0b3c8e8fda9c@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_024932_407338_FA963C44 
X-CRM114-Status: GOOD (  24.67  )
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

On 6/30/25 1:19 PM, Nicolas Frattaroli wrote:
> The RADXA ROCK 4D, like many other Rockchip-based boards, uses an ES8388
> analog audio codec. On the production version of the board, the codec's
> LOUT1 and ROUT1 pins are tied to the headphone jack, whereas pins LOUT2
> and ROUT2 lead to a non-populated speaker amplifier that itself leads to
> a non-populated speaker jack. The schematic is still haunted by the
> ghosts of those symbols, but it clearly marks them as "NC".
> 
> The 3.5mm TRRS jack has its microphone ring (and ground ring) wired to
> the codec's LINPUT1 and RINPUT1 pins for differential signalling.
> 
> Furthermore, it uses the SoCs ADC to detect whether the inserted cable
> is of headphones (i.e., no microphone), or a headset (i.e., with
> microphone). The way this is done is that the ADC input taps the output
> of a 100K/100K resistor divider that divides the microphone ring pin
> that's pulled up to 3.3V.
> 
> There is no ADC level difference between a completely empty jack and one
> with a set of headphones (i.e., ones that don't have a microphone)
> connected. Consequently headphone insertion detection isn't something
> that can be done.
> 
> Add the necessary codec and audio card nodes. The non-populated parts,
> i.e. LOUT2 and ROUT2, are not modeled at all, as they are not present on
> the hardware.
> 
> Also, add an adc-keys node for the headset detection, which uses an
> input type of EV_SW with the SW_MICROPHONE_INSERT keycode. Below the
> 220mV pressed voltage level of our SW_MICROPHONE_INSERT switch, we also
> define a button that emits a KEY_RESERVED code, which is there to model
> this part of the voltage range as not just being extra legroom for the
> button above it, but actually a state that is encountered in the real
> world, and should be recognised as a valid state for the ADC range to be
> in so that no "closer" ADC button is chosen.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Enabled CONFIG_SND_SOC_ES8328_I2C and confirm playback works fine:

    $ speaker-test -D hw:ES8388,0 -F S16_LE -c 2 -t wav

Unfortunately the recording doesn't seem to be functional:

    $ arecord -D hw:ES8388,0 -f S16_LE -c 2 -r 48000 -d 5 -V stereo /tmp/test.wav
    Recording WAVE '/tmp/test.wav' : Signed 16 bit Little Endian, Rate 48000 Hz, Stereo
                                    +00%|00%+

    $ aplay -D hw:ES8388,0 /tmp/test.wav

However, the headset plug detection works correctly:

    $ evtest
    No device specified, trying to scan all of /dev/input/event*
    Available devices:
    /dev/input/event0:	Logitech USB Receiver
    /dev/input/event1:	Logitech USB Receiver Mouse
    /dev/input/event2:	Logitech USB Receiver Consumer Control
    /dev/input/event3:	Logitech USB Receiver System Control
    /dev/input/event4:	adc-keys
    Select the device event number [0-4]: 4
    Input driver version is 1.0.1
    Input device ID: bus 0x19 vendor 0x1 product 0x1 version 0x100
    Input device name: "adc-keys"
    Supported events:
      Event type 0 (EV_SYN)
      Event type 1 (EV_KEY)
      Event type 5 (EV_SW)
        Event code 4 (SW_MICROPHONE_INSERT) state 0
    Properties:
    Testing ... (interrupt to exit)
    Event: time 1751449448.185340, type 5 (EV_SW), code 4 (SW_MICROPHONE_INSERT), value 1
    Event: time 1751449448.185340, -------------- SYN_REPORT ------------
    Event: time 1751449448.289477, type 5 (EV_SW), code 4 (SW_MICROPHONE_INSERT), value 0
    Event: time 1751449448.289477, -------------- SYN_REPORT ------------
    Event: time 1751449449.329482, type 5 (EV_SW), code 4 (SW_MICROPHONE_INSERT), value 1
    Event: time 1751449449.329482, -------------- SYN_REPORT ------------

Tested-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
