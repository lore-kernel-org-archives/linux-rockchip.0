Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BE7606A320
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 11:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=V2YG4rJ+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pardini.net header.i=@pardini.net header.a=rsa-sha256 header.s=google header.b=aKtzsSx4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oO1a5knExZfIGRmykRsr0QG7IEYoUSfDEGxLMRuX5fg=; b=V2YG4rJ+tOUlkHkfWwMkCW8oLD
	MWX//NWGMDYj6CrzjtWC+RCELWZAGbSt2gLi89FrZIwSWjqTd3bqMU8I9TwTD3Ul7i/EoDICAMVSx
	GvnDiRnCuZ7IkgsCfcaScRCxKiP2Kd+K2fXKHiQM4hLxxLevjNB9QXTrrxT89ZV1N3RQNwUP+faZK
	Pf7bsOkjzmcjlAwpkz1NUNwgGeW8TYlozsA3xeG4ao9bbExFnSS99lM6zV2gDP8VBh64OgflaI/HB
	kh9ZA1saya7+oTpvQcKQwrqD63pkSeA5DRHufrgH6/MhixMKr2kWZWLz2DNvAAQRCjV2gCh8PSGKP
	5aWlCVNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUja9-0000000H7xP-3Eng;
	Sat, 21 Nov 2026 11:48:37 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUja6-0000000H7we-1Ead
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Nov 2026 11:48:36 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-c5154989984so138442566b.1
        for <linux-rockchip@lists.infradead.org>; Sat, 21 Nov 2026 03:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1795261712; x=1795866512; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yRL3JyiAib4oTHNTDKyWbrLU/IIxfk4M2prFXzJ16C4=;
        b=aKtzsSx4dTRXpjGZTJJIq1aUSW/RI8yr3GzKZJ3GnNdl1FFmSOZW0bmzFKo4u5QCUw
         0j64Uc0bkv/gnq8qEieSXzUz8nUJ/zsozJtgcXJBO6qcAqsIha3iRjWEAtM8wnpq+QNI
         +j0LrN21PZlpu70d4+NJj5/0VrfRPTywjbbnPKOLJmRpykSBPYIS6pHanOhxeeF4OGMQ
         CBDtiqZDYJ54iwxg+ZwVWeoptDznVY1mLphNiQaMFlOD/3sjEBgQ5mzG9dellrXsLt4/
         jv3jFrSOKvycq5EIczSufG+FGALaHy5pMI8yfNg2zIJVazadQJW/XZzNnoparGGkBKvm
         DCEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795261712; x=1795866512;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yRL3JyiAib4oTHNTDKyWbrLU/IIxfk4M2prFXzJ16C4=;
        b=w8NIKPk+idpv5blzHq1RCACvYE6sFDBmCXgNN9ik6RrjZYe97e8Tmj7gNvG/cVMWuw
         8UB7PdnO4hfm0SSuf0//zHWcxRLbj0OB0Z4zZxeqD2Rh8RO/3qMlQ6u2iLqXLZMs2GRy
         L03r/4dIeXFGkb4UrKwaAzek42wDc/MIVKQb3PJKKj9akoP8lciaRGb7rMWABAx8jIT2
         Uvu3bWeuAv0nfJHii6duaBVanGJEOUDCTwKKozYiqQGMdVjRKrHcoyTnOAx8nY8tJMdv
         7wPpQobuyiUUPxnu5I+hhSoA1MncIsHSTSum6c86KuCYso0Hdeg3y792wjt3YMvwJCJx
         sCqA==
X-Forwarded-Encrypted: i=1; AL+hErHrMUdHxSMrlrvu2rLyDeILB7hEaIBJeprgePGeSFTynGlRio/p9Bp4rJNUyNSDmfHuYXDZ9FEOckN2QTTiIA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8BwrL693W3uf5s5uS0lkF2k8CQ4dPSuvyFmCET1sDV2LczDs1+
	rPgXHYFjqGlzvF4nCyFZwwyNyuO1v/Qgzl1mH5r+XKdpGW1E4wRaTxWRjUj0tTGeig==
X-Gm-Gg: AZFdTZdDZbCXqVmtjiXsRuf5GE2Ayc7LW+SSapZRu88UbIB0lpxkbonUutaKS3qBT0j
	hW1nAJBNWIGEdhiisNpV51Tnbg+Nby/v3ENi6YSV0MnGzkK1yt7PPeH8DnZoboE88sUi6+CQbZ8
	Z85vX/QM4FFTaQMKJUrNKTaeCRJqSZ0papzLV/8IZQ2oC7Wiu5VNt0iytj0cbS7pJoJk/87l5LB
	ipVF3HN3SlVjEK7dvCzAtGZ4DyYky+oC4KAd4leVE9ytFkd+OeYAeJbJZ3JH7D8RmZidX5PRFRq
	E1uZIU87gwsL37e1tRqmID1+A5nG6gB2cgYxgA5MPafpSDTAnBzIIC2zweJ+kpRXnI6v2mCxvta
	PjeygMPiEj0KF8j+lmfs9q/sZPz9N/IOACZvbq/DE4MDv03+XiQ+znv6WraduWdIgGqtnSxbH9T
	hGQCeuZxcLYfLtVhT5aY8biz/eAotxS3Aw4b0dDNY2lpSfdELreFliExrA5YtuHzENRVT/0ItkZ
	fhDWZQQ9h7nRVG7d+2LN8wKKgoOT7kXKBq1iDdgPc0sbA00rdazD89FrtQUzHMtwikGXdhdjea5
	+/8pKiOElLwROKTWKxQpQQvV7LTXmdhEn4T8xvMpG18Wn3VPsvOk/NYfq3qWMpEKRXKRK+dSy4R
	HgLbLo2YrZgVxYNR+OtUmApQUAir7+JRPI9Sg1WEMs9PPvlGLXsZaGZhnpaehu9csaVi7/pAhJh
	y1
X-Received: by 2002:a17:906:eb15:b0:c24:4128:c19f with SMTP id a640c23a62f3a-c513a5ed086mr409503766b.11.1795261712641;
        Sat, 21 Nov 2026 03:48:32 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:409e:13f1:8f3d:aa19? (2a02-a466-4d7a-0-409e-13f1-8f3d-aa19.fixed6.kpn.net. [2a02:a466:4d7a:0:409e:13f1:8f3d:aa19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513afecbb5sm193756466b.71.2026.11.21.03.48.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2026 03:48:32 -0800 (PST)
Message-ID: <139cd117-9a75-4304-9e3d-94c47476443e@pardini.net>
Date: Sat, 21 Nov 2026 12:48:30 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/connector: Cache out-of-band hotplug events
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, Dmitry Baryshkov <lumag@kernel.org>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
 Igor Paunovic <royalnet026@gmail.com>, Alexey Charkov <alchark@flipper.net>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20260821-drm-connector-oob-hotplug-cache-v1-1-e92e146fdc7b@collabora.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20260821-drm-connector-oob-hotplug-cache-v1-1-e92e146fdc7b@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_034834_373477_58B0E400 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 21/08/2026 16:55, Sebastian Reichel wrote:
> When the USB-C state machine finished negotiating DP AltMode before the
> DRM device has been probed, the out-of-band hotplug events fired to
> early and are lost. Without replugging the display or reloading the
> USB-C driver, the DRM driver assumes nothing is plugged.
[...]

Thanks for this! Tested on a Mekotronics R58X-Pro (RK3588,
FUSB302) on v7.4-rc3 with dw-dp v12 and usbdp part3 v18.

With an Apple USB-C Digital AV Multiport adapter (A2119) plugged in at
boot, HPD arrives about 2s before dw-dp binds. Without this patch DP
stays disconnected until a replug; with it the display comes up at
boot.

Note: I used the rebased copy from your rockchip-devel branch, since v1
no longer applies after the drm_utils.h rename.

Tested-by: Ricardo Pardini <ricardo@pardini.net> # Mekotronics R58X-Pro 
(RK3588)

mvg,
Ricardo


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
