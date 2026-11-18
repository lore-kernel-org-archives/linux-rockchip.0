Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF19606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 12:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oQnaHbLD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=BA7Z0G2j
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ELjd7gdC9wGhur6bIMvQ5YXHUJ4Y4vd08VUQl5CsiE4=; b=oQnaHbLDvde4peUwdJu0ZP9E3x
	9MjK9he1sGyh1CsFYSC3B8TwjYi9+0lM41/KpKQuCf4kegdOMRz1XARYnTr+JdLZJ5R/NVhAEjE88
	Bd+L4CDGYgvfvtvcMC/z2oZD3OOhVVm7n2pJU42pnoL44mHk+Zj2Qz/xIe8U+/D6eMqClWf9d8lsi
	ZlvY5Md7dAvJMq27Me/IC/fJf5uSCiM5QqyI8J0THnzlcu/Opq1m1JHi+c3FLhFQr1p9tU1JGrDBR
	lbfuke1hp7WH/p/oaO656RHEOgUhgupad0iznVuOsjV00NQqx20LuffoTsmWH0r9C7LmnYUJgwpUH
	MY9Q1DxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTelR-00000008qG3-3QUR;
	Wed, 18 Nov 2026 12:27:49 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTelO-00000008qFK-2vNk
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 12:27:48 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-48e20ed3b9dso732357f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 04:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795004864; x=1795609664; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Q5C/iHN7Lmzj8RXtCSxUA965C7B7NlmPdCiPikMVO9w=;
        b=BA7Z0G2jB76EUGqyOq+5DivelS72d2cD1wSvdsuA8bRlVMv1dOHgqZXFHHecUxUVRx
         hhMU00hXWRK4T8Bjx/Pcf8nZbt69A3hYAvLc8367fNlqfdLjx0XJO0NqcsWIq3tRqq1o
         4tkDvkGYSXdq9QYXZstNI9NCYOxgJnw0d3dU44YHUoRH4x1kx53OmOAeA8myUXEj7RAO
         l3KJWKwTTO75ZNU0zjWolUh29rEOsLmFCXajjSXjV5t4rXYsDEMlccNg4JrwrPQNq2aD
         HOg40Gjmvq405B3G31ykz9+8vj5DujmHnMJ3JUoEWysRZldIbsNMj1tRXWUgfZ6Qtv5k
         z0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795004864; x=1795609664;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Q5C/iHN7Lmzj8RXtCSxUA965C7B7NlmPdCiPikMVO9w=;
        b=Kvnj55jtsLjc4HhMafA30ZhrJ/q9vOCJGsuRmCvCnQmjM8RY/YwKgEM9pCqoCiE7gf
         QXq3E1mF0/WAp/DIF65yLXz5MuUIvXN5mliCn6sA+7HckjRDTd6x+X9H7kquYPC5+w9y
         nVjhc6OF+9B8JAn4etVxIYhpRp2kuqttaDkHuoU9nekdLXPTDSzJ+Uw31rKFsX8Mja0j
         HD7HCkEI+1yT49AmgPOwpY6A2z5nWcgdDYZgnzcPpbgzzM0Q/c7U1GbJBllqQvfyYU0Q
         OE+n6T9K0DyXxt81NAxTECkJl9skB0MY0HELLUIKJ3c60QImHy0++Pg4bkjGLsGWCI6t
         2/hQ==
X-Forwarded-Encrypted: i=1; AL+hErFCLxJL3PM/113FsMY/6NSp9ryMzwABawyQxyiqR8OvJJvdvVw5loIMlf5IeEAIrcc1qHovItKAdU/YbVktkg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8lfxpZV1QqXy2B3OI1itqKYEsbojcyRfVA9+qjs9ewoJ22gM8o
	zsBvhT5e6B0P9kCmkcfecEFdMF8af2JbGvqNOcMVDUWXvafJr1wOtVN4w/URfLoklpU=
X-Gm-Gg: AZFdTZeStjPefI68gH/hUDO3RBOw8LkyS9LrxMlHvo98l9+9bstKmcNH/ukYC9aM3GZ
	zuVNK6jXonD3m5TE9Tota9PRKGmbOiyFukS61Eunn+6+07D7x4I1ECPFPRDtMZtv8XKKLWynweO
	LpQlmdzW3wmLEPrR5ulh5o1KMCYybw6vUxjwHBeyr/dxLR+0ga3er7hITmNRRbhLHpsqltIAqDR
	011amlgdCZRSYz2qrK1gGoUFs3vl/q7rrs9EktK1uSdNu+CLnozcVzQKVlsvRFVG1y225zMbpTX
	5zdN8uL/SMqioGFp4NgX6+474Hk9sSGHFUHTYtGHYROLPTY3mNc9Wrm0G/u9X0qlRyID4/F6Wh1
	Q2M8bFvH/WoDOmoxuVYjEEdwk18jCUDPgFI7f9+IkWBNCH/r6f8CdymsUDyDs/yBvn/nQRBCH8q
	BbFjM9E9BNlhUkf1cBIg5eE5p6PkTsacNRbAMRi8bDLdQF85BQtYNOOJ7Ho4r1pz6aI4Msm114x
	iG7OFOQKf22z6P02n9kZLt4ygMrr1ck2fSm/NrF/At1KsDzkHF6hvHG+AXITdwtWKXA21s/KL+3
	dXjLxNHbHRCAsKNCEEnoqmbwJHK5VH02YjBObol3lcycOMcc3pZs6yYzjTenGI7qyvtviHdrjyV
	twQ==
X-Received: by 2002:a5d:4f10:0:b0:49c:fde4:1af5 with SMTP id ffacd0b85a97d-4a63bbc41c8mr4416511f8f.54.1795004864445;
        Wed, 18 Nov 2026 04:27:44 -0800 (PST)
Received: from ?IPV6:2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183? ([2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a654a8c3a7sm4875705f8f.9.2026.11.18.04.27.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2026 04:27:43 -0800 (PST)
Message-ID: <f91804a6-39bc-4a86-b24e-9588327e092e@baylibre.com>
Date: Wed, 18 Nov 2026 12:27:41 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Daniel Drake <ddrake@baylibre.com>
Subject: Re: [PATCH v17 04/12] accel/rocket: let the core suspend after a
 reset
To: Jiaxing Hu <gahing@gahingwoo.com>, tomeu@tomeuvizoso.net,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com
Cc: royalnet026@gmail.com, ulf.hansson@oss.qualcomm.com,
 abel.vesa@oss.qualcomm.com, sebastian.reichel@collabora.com,
 sidong.yang@furiosa.ai, u.kleine-koenig@baylibre.com,
 chaoyi.chen@rock-chips.com, shawn.lin@rock-chips.com,
 finley.xiao@rock-chips.com, diederik@cknow-tech.com, alchark@flipper.net,
 leonard@lausen.nl, vlwwwwww@gmail.com, jeff.hugo@oss.qualcomm.com,
 rfoss@kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1794615324.git.gahing@gahingwoo.com>
 <2afd051e37b8dd4f10e347a3537b0086973d554c.1794615323.git.gahing@gahingwoo.com>
Content-Language: en-US
In-Reply-To: <2afd051e37b8dd4f10e347a3537b0086973d554c.1794615323.git.gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_042746_789511_7C4801AA 
X-CRM114-Status: UNSURE (   7.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On 14/11/2026 03:05, Jiaxing Hu wrote:
> The earlier test on the ROCK 4D was done on the v15 code: the job after a
> timeout went from all 128 channels wrong to all 128 correct.
> 
> Repeated resets were triggered with a 2 ms job timeout.
> 
> v15 (put, then reset): tested twice; both times the board hung within the
> same second as the first batch of job timeouts, with nothing printed.
> 
> v16 (reset, then put): tested four times; the board never hung.
> 
> So moving pm_runtime_put_autosuspend() after rocket_core_reset() avoids
> the board hanging during a reset.

These sentences (history of the patch series) are commentary rather than
commit message material, they should go after the ---.
See Commentary section in submitting-patches.rst




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
