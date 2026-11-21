Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E13B606A320
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 11:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hE4cQcU+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pardini.net header.i=@pardini.net header.a=rsa-sha256 header.s=google header.b=Rzg/DfYh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+21h6r4LDKRyf1l4ymPShOmtGuzgfMMQKFUC0+9Cvrc=; b=hE4cQcU+IvOnmoPbr78FCdolgB
	y1wLWDiJB5+lR7IfYP1iGpoqwiwJqJfXpzBUMnsz8XgVnzTbQSEaukBLqDrOtekt3609gqeaHVn51
	U519m93eeilnYDdCreRWct1BW0S78/U8tABG3rDtDzwUK+1TXSQdzCLw/UE3NyZ6iYROZkszk/pPK
	Fq8S8CVLFS/OzLV1dn2mrllg6KS55AHLKQneOTh+m1j6DIvufuV1T7vm8F59Cz8xgt5obO1FjzoYL
	EbN+oV2CYk0g5WV2A7JlJozR9Idzgd+E0hT5q8RJlCLn1DC8tRvsSB6dzHHF+9J3nBmUgSCLNKTbQ
	gePZMXwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUjXr-0000000H7iS-1KRl;
	Sat, 21 Nov 2026 11:46:15 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUjXn-0000000H7gz-3t6M
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Nov 2026 11:46:13 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-6b7ddb99db4so2233558a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 21 Nov 2026 03:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1795261570; x=1795866370; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5bq54PBPl4YCnVxEmHl/CCwjoHYf0FGqHDDIF9WweFI=;
        b=Rzg/DfYhZpx397nB4DF6r2rXo4z5KamGE6WNrPMh4mHNhE2duIY/vDJgzDbaJOlnAZ
         NKmXMcNX1saba4fFI/oGkIpyj4L/F2q2kViuWQgs3LXy1AQe4hUqnJRMcAKgQM12BKxN
         OcFmUNBbIIOE6yTsYt4zAXeIHI2zGykpr6fJpAtfgtxdUrWp4dn1nARja7pfeKIXVbJX
         MZqUWDgL6iFktV4CQCyEixEBxur8nLtCJTPEd/QWoL3daScZVaSCuO1Di3l17qxYXwew
         fjhIoebmhh1WTe4Xxa2ZZx/rkm2rcaCj44CPnpw2IxldKyfdkiapFFEY8AZE2IuTHPz7
         mvDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795261570; x=1795866370;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5bq54PBPl4YCnVxEmHl/CCwjoHYf0FGqHDDIF9WweFI=;
        b=sr0AS9nviypCslFQuXqIJoArEWJ1EDAyZlx2iHOIkk1nRSOkvF+WCkAd9P+czOgQMP
         t7gfpHHKyxK9unkTEXKlJF51HTwM3vuMCroFgJAs5CHO9d1RV7vFPJV9DpaRILICjA8x
         +bcaL5or3H84pzs5zNXRlLC44jPZ4zSwmaCbH4IWzkXgD0g/2Vnv1lm/D0w1sDmPGxJJ
         1bmxk/mKXSXmsFd7kl8bJvZPksTl58sDSwUCuB1gLwiPOTQOVMJpIDxkZu66WrHGWphE
         S4DqN3fwqm6EfA2KmxjjTtXvg5lK08yOLwtvU3azhX+TASWpvBVOCD7ZAw7QlMXYtX9G
         2mHg==
X-Forwarded-Encrypted: i=1; AL+hErHO/OeoP8AA1WEn/CNDrpe6zhSLE3H6uC5CjctPXknruW6oizdtlksmVMQhp0ucQDvPt+UkNi+TMIdJE2ydnw==@lists.infradead.org
X-Gm-Message-State: APuU4Z9HWxcIAGpObliyCTO9p6XQG5eRRth+sEQkss9UT509GA/ezn1z
	CXKqOQO8ukmE5dGc1Bh6lmGu30s2qaGdF6Ks6GPdm5DfhJWZ+1O52mZg404HuV2KPQ==
X-Gm-Gg: AZFdTZc1gm3y73j2/aqvadwNb+mzM/i2Hs5axwZRx6Gw0TZME/g+HsktPh1rcp22TOS
	HHBT2urgkPs4TAxBtXc3BQ8UrDocFqB7FXManXU5Bb3iimSTNFdmK7OH05aEMhiDFht7+F+4lrA
	eJrDbBAZqPVvIcjQ2jNaR767TePuhthwLtYlZBDmoG5XL8uRAb37zU9T3zjaDrbKGvdZYgd0Xk1
	MErH3IZX2lGgsyBwDJy+XaLvMPeYwQTH/TNXRR1Lmx0LdQ5FqokTWwVxx1jQQe6Q2kjayWTJzyK
	+7a85FBnko/pav0/YnOW2kaNmFphacK6mjwbsEyM71KBvFoKKSrg3zYix/ck1PbqvkXLUUPmgd8
	rENmmXcO/yz1KZTxxZNNHjlMZh+Wu4QJ4eX4Smb1xuAKysRQIdO2mVBglbTFc1FaFSD+K+eofH0
	XMgRBwzpmGxSRy/G0ZF9Ta1JijKHNhwLoiy8BDD2EdObZXvmLzforQF/d7hRimKz8D4EHaUyrFK
	jKkg/7SSlgNUzR+wQEb4V6w+XECZamKMYKqPRoWAMvR/c69zBGNW5xu8n+KquTz2j0dsC5FMe1P
	t/f2MqPHi4wDHf0lZxrLgfuYC7muNSpmSnhlFfpwbSu3R4AFe0bXsjbcwSkZtiz3a6O5/ufXi4U
	wik6eUO9kHoRaC3MDHr4A7khGrd/HK6S+LflCBWKUgSoNUU6OnFu1XDQeC36bMKUcwa7PS0YI/A
	Wa
X-Received: by 2002:a05:6402:134a:b0:6b9:c43e:19fb with SMTP id 4fb4d7f45d1cf-6ba37d632e0mr3291804a12.25.1795261570200;
        Sat, 21 Nov 2026 03:46:10 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:409e:13f1:8f3d:aa19? (2a02-a466-4d7a-0-409e-13f1-8f3d-aa19.fixed6.kpn.net. [2a02:a466:4d7a:0:409e:13f1:8f3d:aa19])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ba854bed08sm173298a12.30.2026.11.21.03.46.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2026 03:46:08 -0800 (PST)
Message-ID: <9e4c3ed3-812c-4ad4-aab8-b1a783cec95e@pardini.net>
Date: Sat, 21 Nov 2026 12:46:07 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 00/23] Synopsys DisplayPort Controller improvements
 for Rockchip platforms
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andyshrk@163.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20261114-synopsys-dw-dp-improvements-v12-0-d42d3dc5bdd4@collabora.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20261114-synopsys-dw-dp-improvements-v12-0-d42d3dc5bdd4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_034612_020323_DD493B1C 
X-CRM114-Status: UNSURE (   7.66  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sashiko <sashiko-bot@kernel.org>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Yury Smirnov <yurymonzon@gmail.com>, kernel@collabora.com, Chaoyi Chen <chaoyi.chen@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 14/11/2026 06:00, Sebastian Reichel wrote:
> This patch series updates the Synopsys Designware DisplayPort bridge
> together with the only existing user: The Rockchip RK3576/RK3588:
[...]

Thanks for the series! Tested on a Mekotronics R58X-Pro (RK3588) on
v7.4-rc3 (it needs 941e3acfb358 from linux-next to apply there):

- dp1, full-size DP: Dell U3415W at 3440x1440.
- dp0, DP alt mode through usbdp_phy0 + FUSB302 with an Apple USB-C
   Digital AV Multiport adapter (A2119, pin assignment D, HBR3 x2):
   1080p60 on a small HDMI monitor and 3440x1440@50 on the Dell's HDMI
   input. Works in both orientations, and out-of-band HPD retrains the
   link after a flip. With the adapter plugged in at boot, this also
   needs your "drm/connector: Cache out-of-band hotplug events".
- Audio on both outputs to the Dell's speakers, over S/PDIF
   (spdif_tx2/tx5, simple-audio-card, mclk-fs 512, DAI 1). It also
   needs a clk core workaround I am not sure about: AUPLL's assigned rate
   rounds to the current rate, so the S/PDIF frac notifiers get
   PRE_RATE_CHANGE without POST_RATE_CHANGE and leave the muxes on the
   gated fractional divider; no DMA requests, EIO.

Tested-by: Ricardo Pardini <ricardo@pardini.net> # Mekotronics R58X-Pro 
(RK3588)

mvg,
Ricardo


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
