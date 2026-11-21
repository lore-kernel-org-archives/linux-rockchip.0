Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECEE606A335
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 11:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xkcXnIpA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pardini.net header.i=@pardini.net header.a=rsa-sha256 header.s=google header.b=f8wpEOph
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+yEo6fXH5evDvq9y+G39Yg6dsWrI/FSaox+ut2mj4oE=; b=xkcXnIpAQo2KjILegBbRop3Aum
	bO9l1AuBMlOU9WAGEhL85Y3LNFpH8piVhmbbQDIWN7B6vR07fHMpX24NOyHhCtOYaw0y81DtKEGlj
	QLK1h55bNxZbWpDWq67xxyurbHqW7LgA45VcuOgasfnsf8ILxQEBEuLVtJMoccEtCo7SvD09IvwqC
	SoBHbgATu5bZd4LN28vR0v1dn9WR8VoHuQBqW1kKPD+ObtSOYmiDLfoCuPvBHnxbXUYzxuBQEz3vl
	/2i42R2K+bZ5q/vlc7HA5AqvQRDKYP9gpr/1DV31sUIhUZ8QEBP5gkH7Fp5G76H2HUc63s0UFeCfO
	UXWj4lPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUjTF-0000000H6fZ-3Rjg;
	Sat, 21 Nov 2026 11:41:29 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUjT6-0000000H6aA-1TbB
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Nov 2026 11:41:21 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-c4d581da0aaso231394766b.2
        for <linux-rockchip@lists.infradead.org>; Sat, 21 Nov 2026 03:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1795261278; x=1795866078; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=V/4tBO2K3lzOYZl1l77yELe15RR3PgBFIIRphRTzGfQ=;
        b=f8wpEOphHkD36NcsU/LllGELe6wVv6azWFB4F55DYGd9enYheqVC4x0HsLNhJ5DD3M
         NoWI5E9ndPK63AdVI7TGBBi3jJ8xBeNuh0MRppXowoUbG5ulgQBXStna3g8XJozoU7tj
         lVdiJK3B3N1jt1YSmMBzgmSqem7o+/h0hSoirRYDsT2Vqspor1LEWWJLA//bfOWPmyzT
         TIJWMfl1pmP6yryZK8APGr20A5P2S6QqYUP7C3/uhmwP+o20MYV6EqycxaldNPuSs0sO
         jz1NWig9lTsrBdjMMJl1TFsq+ULgBnWRkemVeTTXgdsy6LN12ywB/NoqluEwW8s8l7sE
         zn9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795261278; x=1795866078;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=V/4tBO2K3lzOYZl1l77yELe15RR3PgBFIIRphRTzGfQ=;
        b=X1EmWqpqq9znYNQXKeYaFPm/jRAGr3+zxGGuBfkswx2qWotw83ovrKSN/Ugj5W4CuA
         dFfUAY8oVgMfP33Qg/Yu3WAlj6c3pDAcyXihT6Ublzxs3kNBN7qt0cznAVJQUm2OftT4
         rQ+YvqNyBiESNoTQOIAGKLBuoY++yEnrVwmLsj8pbmpouViQIGaP+bWJwIKTf25SRhFR
         vCOsPa1+Zj7wuEpd/eTg+0ryEgDTefsoT9+zFz7qAPevY5NWv33x8ocDEq3Rmzcj0IYj
         2KBfJPRw5ODPP4zMpXkqS1wNC5L89WiCmoq17FrHgS3ZFdVKmAh72jhBJUW8l7Oz6vqf
         3GJA==
X-Forwarded-Encrypted: i=1; AL+hErG0Em4KGjeGba7f4Cp9OqeDrVr2+1Ix55ZRD0sS0EbqHfZX34uH628YBfnSTtGgZqrWCwGuVTGoPs1FIGh1MA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+H3+Lx3LgBQye+B2GeUpvgF0c2maKMI/trGjTsyxo4zoWz4tb6
	nFK++Irwc2VkrXfQkQpKsWGiln0bEEku6UqoxHpHtwltSJnmu4NaBAlxX4xu4kE+cQ==
X-Gm-Gg: AZFdTZdcVobo2p+xtVLXmXofNHWJfiEwByT0xVHbuooajLrDFBY8gpn9DKWPq6Qka2I
	F2u+61U5qB+EseaWmDmrQT7z3yabsERpjCQssovkm+q/hiD/aivV32wEbcdhCj3A5QEYVQ4SG/+
	iqh8QX90Fyq1izIHxv/WEADPCgpitmMCOTmQiI5PFF/MixVOpxM7MFhWEDyf90yvbiVQJp2iM4z
	vZa7/H/FHrClp1SkyQoXpvw51ln0RGytqrmiwBk6X0SBabz82PGM5dECc5s7jotPizes1KDrL53
	AhYrswYeQK6A82R7F+6N/2LLrA0jgaIa1nFrHI8jX8e36eISf14+cQPJ9fQU3tm+DtaGO8pS/Wb
	ss9V+Fhd8uIX/Kr+NkGfH9fDkQRGMASeN1q3nHCkNHXZdSqBB9gjP58X6uSL9SaTuEN4zAjugKA
	Q8ZcTVmwsEVSY6ctPKGHj8XZM+FuMpmA9TIa94V4UZc3myMPUkm3vWZDW04r3o+pls6HYek1Gep
	EjBQLyKfcXgxiZbeH3wHVNsJkeaDTwYQACtAE3y+I7d/RbKwTZSjJkMzRWnpN3waAqElK4vAUDh
	TlIqe+99GBGaxeSeuN1wkKTDpAvvTK1fv89TROFOnNQGMJjmb8EDfa9QuPi2YuVIeW3Ss9bSq5h
	4Ew6oqnNzVY6tFcArm+PNpCg1V1J1jbrH+chELTbRR2ryCNeRA3ppoWs6yHrfp6YAW3F8regOhz
	1G
X-Received: by 2002:a17:907:c17:b0:c4d:31ad:9dd5 with SMTP id a640c23a62f3a-c513ac86e26mr558143666b.42.1795261278496;
        Sat, 21 Nov 2026 03:41:18 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:409e:13f1:8f3d:aa19? (2a02-a466-4d7a-0-409e-13f1-8f3d-aa19.fixed6.kpn.net. [2a02:a466:4d7a:0:409e:13f1:8f3d:aa19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513ae688f8sm195387666b.25.2026.11.21.03.41.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2026 03:41:17 -0800 (PST)
Message-ID: <8588725f-9758-4261-8766-5af518ec4f3b@pardini.net>
Date: Sat, 21 Nov 2026 12:41:16 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 0/7] phy: rockchip: usbdp: Fix runtime muxing between
 USB3 and DP
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Zhang Yubing <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Alexey Charkov <alchark@flipper.net>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Yury Smirnov <yurymonzon@gmail.com>
References: <20261119-b4-rockchip-usbdp-cleanup-part3-v18-0-fb325e336494@collabora.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20261119-b4-rockchip-usbdp-cleanup-part3-v18-0-fb325e336494@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_034120_418735_53C0FD53 
X-CRM114-Status: UNSURE (   5.43  )
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

On 19/11/2026 20:40, Sebastian Reichel wrote:
> This (final) cleanup part depends on new DWC3 glue driver series
[...]

Thanks for the series! Tested on a Mekotronics R58X-Pro (RK3588,
FUSB302) on v7.4-rc3, with dwc3 glue v19 and dw-dp v12, and with
mode-switch + orientation-switch on usbdp_phy0:

- RTL8156 2.5G USB NIC: 5 Gbps in both orientations, also across
   flips while plugged in.
- Apple USB-C Digital AV Multiport adapter (A2119, pin assignment D):
   DP on 2 lanes plus USB 3 at the same time. 1080p60 on a small HDMI
   monitor and 3440x1440@50 on a Dell U3415W (its HDMI maximum), with a
   SanDisk Extreme Pro at 5 Gbps on the adapter. Works in both
   orientations, and the picture comes back after a flip.

Tested-by: Ricardo Pardini <ricardo@pardini.net> # Mekotronics R58X-Pro 
(RK3588)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
