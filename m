Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33A7606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 10:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AbOjqMPx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=iicYlt8P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TCGS74zzo1aooo1d93ypEVt4FUHToKVahwmdmrbezU4=; b=AbOjqMPxD6M5k1WomK8FhXSACd
	19MkeedBcBQEtFZsHSu3qU23YcaXzqwhdlhl/BpyiGnIpDbrtps1bgurhNrLFYYisFMaEAlke9o/I
	rUfFRg4IGGlQe6YfE9+4k28H7ZArzkp59BJXqvAIqv0j6KBdVcY2loY4pKQvCXNaoBJoTvboF/w/Y
	6enHRn1vMrKJ4AilzJfvVjXUSweFMOnwNjV+DbuReGjk6gzk6OnWnmHeOnBggK59aeBoHRxJgcEQx
	50SbbdWBqAkcYMU94KAscCpy/dl1Xix5pDsyIAGqAiM5ogW5n8nBuuj74ZX50Qfshv1AO73eE+rAr
	K8CGNY5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR53w-00000006GV3-1yKe;
	Wed, 11 Nov 2026 09:56:16 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR53s-00000006GUJ-08G5
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 09:56:14 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-33c10faf6easo46492eec.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 01:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794390970; x=1794995770; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=etMBeFFvTZ16JTCJaXFRCqu9zDzZcOqbu475oSnC7og=;
        b=iicYlt8PGNBhUbBmjVRXr6cqXSsEkeqm1yl21IT9r5su9gGjbU9NMF5UvpGlL2FXvl
         uY7KjQQBpubP3kiVxD8G3qiKasDuwJBkfsdeTDevyeQ5VAmjWIN38bQktKlPId/40Ph+
         7IRFvbO9++KMIinZfzTr1ZeAGaC45dqfnJoK5PFkB/nDZnX/wkUbRmXKkyHdMS/3FLm/
         MjqMbfdAxFk7T7i3OC5/7z7WY1yA5gkUiNWK6eYO0FZFNkvfELjUaRRSnycn7ueJePD6
         21yJIzh4Xr+swHSQPumNdeNRVcWb4s33Ha50RX3z4CUxTdRCQvdF0gmF9JKGEybmCzF0
         TKgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794390970; x=1794995770;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=etMBeFFvTZ16JTCJaXFRCqu9zDzZcOqbu475oSnC7og=;
        b=Gcx7YQbCBtau+uXcj614IeTK+OpC9pPbP4nNAgYZiE0z8a9ScTO7zpOryP5o3v+fOS
         /+sXWuRI5EIw5TaQk+9QHXnu6Q2kENr+NQKYx9wJ9cID0sqgH7uqPithT4nAdOKX2OOy
         T349FXLQKZ6FzpspzGRKoK9n7ra8JR7g7irZaumKrW+pgqndJN3p/KWndFVQJuTvS/VR
         wpGTMnHT/Ba0rIQIHW9Vpvzzo50PUavTYi52/WFssEHFmQQGIXhCq6KoMDJsL+aeObSW
         s6xNj6aRkmxFpUaUyUQVlplbYnC2n61BvhSLsNYSN28at05726wRPnXL4Rwr5qPvwViQ
         pk6A==
X-Forwarded-Encrypted: i=1; AL+hErF0TchoEWjYoox12h2d4v5LGMC1wXbkpiRyUDaVrVWCEhlk0W6wD4i8QPwh2BOeoe3zaHj5xSNZRapqT4peIQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8hOlTC7HVy7uwvXY+B6952P2bmXFOh0rcKneQ71WXntvRBew6d
	E2OsVJ6zQ4I0MV5UCy5GPedn6+f4433aLup7wbtT5Uvzr9Z0PL/AW8/l
X-Gm-Gg: AYBFou2HrmdJI/emPnb1N4Xg7Tvgkz0Eu6Os0+hedUdX7+X3seD9oOc42hlQaX1KVDP
	LVfvciCKMG/mHR6IrDP6KdPOecnqvbO/Z9aOr7ThSk8oWpNGknsKsuyu9YPbp8TMZ8dqZhOxwHF
	eO+6e/Z8C+wBGBWUzcbGIwzqOZls95GCEsDYmQVjlN3n4LwoHehzqTNe7ddUue/kZAko2mGKp8k
	+l3ZsQOgsUnZ0RMiV75DTA9wImYSV4XvHWVRh1CZZ1BdQoGVwXSP5P8U/4gmtcygnSS9hDjiTjF
	vtHsugfeSRLJ2uqjHBWiVZLVqbzG6lPxNaJv9ArrcKTt5RQdwfcQUxblqV8pq1bP6KcZNII1aBs
	xlOc9iufLg755kEqIaCgxxu/B1jbKM+97HbuTwcWnq2o+LVTfdqdTzU7rF3qr+D28ENYy+DgyAo
	pL7eePpobWTt7/TE9lGJxbPuOJ/Umqx/640YCZOg1zinqpVyQLC4S2Uk3VIHmO2+KX8nTTulDZ0
	KnnNnQ54yQlqk5knptTryA90cStyGBswC8Nt4MvVtkZfXAjfRdbKGaNtdXkEeT/TMXeSauHMn/x
	McveUXZZymc0jH3lzau5TY/EjhbRaBoOM+GLRdRZOoUUW7S+aQLfTacYo3KcNYCyvQeEhYA=
X-Received: by 2002:a05:7300:5621:b0:36d:cd5d:d809 with SMTP id 5a478bee46e88-37684af683dmr3732846eec.1.1794390970156;
        Wed, 11 Nov 2026 01:56:10 -0800 (PST)
Received: from [192.168.1.205] (2607-8700-5500-a805-0000-0000-0000-0002.16clouds.com. [2607:8700:5500:a805::2])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-37520bf3e18sm28141912eec.16.2026.11.11.01.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2026 01:56:09 -0800 (PST)
Message-ID: <72a2f21b-fd6b-427d-afa6-b15dc0729650@gmail.com>
Date: Wed, 11 Nov 2026 17:56:00 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] drm/bridge: dw-hdmi-qp: serialize HDMI audio callbacks
 with PHY enable/disable
To: Tim Surber <me@timsurber.de>
Cc: Igor Paunovic <royalnet026@gmail.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andyshrk@163.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Maxime Ripard
 <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261110215535.2658927-1-me@timsurber.de>
Content-Language: en-US
From: Frank Zhang <rmxpzlb@gmail.com>
In-Reply-To: <20261110215535.2658927-1-me@timsurber.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_015613_802931_30116D32 
X-CRM114-Status: GOOD (  26.73  )
X-Spam-Score: 0.4 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,FROM_LOCAL_NOVOWEL,HEADER_FROM_DIFFERENT_DOMAINS,
	HK_RANDOM_FROM,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/11/26 05:55, Tim Surber wrote:
> Hi Frank,
> 
> On Tue, Sep 15, 2026 at 06:34:33PM +0800, Frank Zhang wrote:
>> The crash occurs when HDMI audio callbacks access registers after DRM
>> atomic framework disabled the PHY.
> 
> I reproduced this on a FriendlyElec CM3588 NAS (RK3588) and tested v6.
> The bug can be hit in more situations than the reboot case in the
> commit message. The details are below in case they help with the
> commit message or with the stable backport.
> 
> Setup:
> - rockchip for-next at c3baae5f1 (7.4.0-rc1), arm64 defconfig
> - HDMI TX/RX audio DT enablement for CM3588 on top (HDMI-IN series)
> - Debian forky, GNOME 50 / Mutter 50.5
> - HDMI0 TX looped back into the RK3588 HDMI RX, so playback on HDMI0
>    can be captured on the HDMI-IN card for a functional check
> - netconsole to capture oopses
> 
> Without the patch:
> 
> 1) Display off, then open/close the PCM
> 
>     Mutter switches the outputs off (CRTC fully disabled):
> 
>       busctl --user set-property org.gnome.Mutter.DisplayConfig \
>           /org/gnome/Mutter/DisplayConfig \
>           org.gnome.Mutter.DisplayConfig PowerSaveMode i 3
>       cat /sys/class/drm/card0-HDMI-A-1/enabled   # -> disabled
>       speaker-test -D hw:HDMI0 -c2 -r 48000 -t sine -F S16_LE -l 1
> 
>     hw_params fails with -ENODEV (prepare sees tmds_char_rate == 0).
>     The close that follows still reaches clear_audio_infoframe:
> 
>       Internal error: synchronous external abort: 0000000096000010 [#1] SMP
>       pc : regmap_mmio_read32le+0xc/0x24
>       Call trace:
>        regmap_mmio_read32le+0xc/0x24 (P)
>        _regmap_bus_reg_read+0x68/0xac
>        _regmap_read+0x60/0xd8
>        _regmap_update_bits+0xfc/0x14c
>        regmap_update_bits_base+0x54/0x80
>        dw_hdmi_qp_bridge_clear_audio_infoframe+0x30/0x40 [dw_hdmi_qp]
>        drm_bridge_connector_clear_audio_infoframe+0x20/0x40 [drm_display_helper]
>        clear_infoframe+0x50/0xf4 [drm_display_helper]
>        drm_atomic_helper_connector_hdmi_clear_audio_infoframe+0x64/0xcc [drm_display_helper]
>        dw_hdmi_qp_audio_disable+0x1c/0xa4 [dw_hdmi_qp]
>        drm_bridge_connector_audio_shutdown+0x28/0x4c [drm_display_helper]
>        drm_connector_hdmi_audio_shutdown+0x1c/0x30 [drm_display_helper]
>        hdmi_codec_shutdown+0x58/0x7c [snd_soc_hdmi_codec]
>        snd_soc_dai_shutdown+0x54/0x80 [snd_soc_core]
>        soc_pcm_clean.isra.0+0x5c/0x1e0 [snd_soc_core]
>        soc_pcm_close+0x34/0x60 [snd_soc_core]
>        snd_pcm_release_substream.part.0+0x88/0xe0 [snd_pcm]
>        snd_pcm_release+0x58/0xc8 [snd_pcm]
>        __fput+0xd0/0x300
>        ...
>       note: speaker-test[1576] exited with irqs disabled
>       note: speaker-test[1576] exited with preempt_count 1
> 
>     The task dies holding the ASoC PCM mutex. Afterwards the
>     close_delayed_work kworker stays in D state in
>     snd_soc_close_delayed_work(), so audio stays broken until reboot.
>     One of my runs ended in an SError panic instead of the
>     synchronous abort.
> 
> 2) Display turned off while a stream is running (the wider case)
> 
>     Start playback on hw:HDMI0 with the display on, switch the display
>     off through Mutter as above, keep playing, then stop the stream.
>     Playback keeps running normally (state RUNNING, hw_ptr advancing)
>     and nothing is reported to user space. When the stream is closed,
>     the board dies: SSH drops, nothing reaches netconsole, and it
>     reboots only through kernel.panic. I reproduced this twice.
> 
>     No application error is needed for this. Playing audio over HDMI
>     while the desktop blanks the screen, or while the sink is
>     unplugged, and then stopping playback is enough. I suspect this is
>     also what most users hit in practice, more than the reboot path.
> 
> 3) HDMI output never enabled (HDMI1, nothing connected)
> 
>     Opening and closing hw:HDMI1 repeatedly fails with -ENODEV and does
>     not crash. The same holds for WirePlumber probing HDMI0 at boot,
>     before the compositor enables it. The register accesses only fault
>     after the PHY has been initialised once and then disabled, which
>     matches your analysis.
> 
> With v6 applied:
> 
> - Case 1: the open now fails cleanly ("Playback open error: -95,
>    Operation not supported" from the new startup check). No abort,
>    and the system stays healthy.
> - Case 2: playback continues after the display goes off, and the
>    close completes cleanly. No hang.
> - Case 3: unchanged, -ENODEV, no crash.
> - Functional check: after re-enabling the display, a 440 Hz sine played
>    on HDMI0 is captured correctly on the HDMI-IN card through the
>    loopback, so the prepare/infoframe path still works.
> - Stress test: for 2 minutes, HDMI0 was toggled on and off 114 times
>    (atomic commits disabling/enabling the CRTC at random 0.1-0.9 s
>    intervals), racing about 2950 open/play/close cycles on hw:HDMI0
>    with random lifetimes. No oops, no hung tasks, nothing new in
>    dmesg (lockdep was not enabled).
> 
> It may be worth adding the "stream open while the output is disabled"
> case to the commit message. It is much easier to trigger than the
> reboot race and makes a stronger case for the stable backport.
> 
> Tested-by: Tim Surber <me@timsurber.de> # FriendlyElec CM3588 NAS (RK3588)
> 
> Thanks,
> Tim

Hi Tim,

Thank you for the thorough testing and suggestion. I'll update the 
commit message and send a new version as soon as possible.

Best regards,
Frank


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
