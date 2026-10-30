Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F522606A322
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 11:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lj8GcATV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=TFwjd5+S
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iZW89j6Ecvqok0Xymtdr9fUgAKzf7XpiMXDP0BxNwP0=; b=lj8GcATVnqiV7K6YMD5Vd4cLP4
	nHKe0XrAW7HJb6NxfkEpD6CWHfyuRS4YllOFNq4vJdZCbMUHFIDghh88BvDUCR5ggbgxMZjJ+1ZF9
	ir7H2yj63t7cYPmMr0JVnm8xAHYwiVebtMfdlQ7LyfU5osO+Zj7O4onlFbnpijw7QppIIX/AqbKpk
	LXxXnlB0SfdnbvznnK+8YYS17F2QvlW41+cTEycAnIhGiJS/xxPot3+yHJ+trKlaqmtyYNqksb5m0
	+xoA0GJycQD5AzM1rsix9zjhWq0xLP+xA2uZ3zj2DUC8fwmuZJyYXLe28GHscEineggymPblIeUGn
	knmhqwwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMl2S-0000000BaMz-2cKx;
	Fri, 30 Oct 2026 11:44:52 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMl2O-0000000BaL2-3ykj
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 11:44:50 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2e9995ce866so5299565ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 04:44:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793360687; cv=none;
        d=google.com; s=arc-20260327;
        b=YlToFDS5d4BxD+xTRlzR1bVEgAWtZu9UK6Z1fQvpWvljaLV00jWjL8AO4d6cFZytpY
         2hSSPtaXESS7UTf6ReQ3VnfFVG/8cf8/gQQQpr9aBcParREVBj0eDcoKTQB1o3omiqeV
         P7ZyqTxwbequ0rZPQ+BpCoUQRNqd5VoDEicEXzd/VDV/r+zsoXdJCGWp20BVF85ynHGZ
         Pt0A+tYyJwEo8VtJISqN+vZs5C0TWhIbil4k6boOfbWk6snFOhZQJQWlfmfT3aLxfmA1
         Tgm4H9TYBZLCcOMUBl+5cvDc1euiJ0AQOLbwnUwC3cKbylF9t78P5bVcdktQ51bgOo8e
         fcRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gj1ttizdUersx8xsUhnFSQQTCr6CuiJthd1Zca2e+6c=;
        fh=rdccoy7SN4zzgCpduZW9XdBka7hLElwJNyEBeDQBpNw=;
        b=jmTiFlxVXvwEXYHji8GQvd7Ixu77JtoiF/Yge3EaUu0UkOLJ2fcP6yb4Q0ZPhgA6IP
         VQaeoHrer7vEzoIyOhbiHQOVDyo1u7worx5CfnIteQskXo9v01DeyZbMOLIB7tHWhkRn
         4YA0GYMDM+93yAQN51pAaSDvVTjtXi3YHNiTDfUc2+sAZi46k+EKX7bXrlF3L/8w16yy
         ZY8T9qxhE6e+5RJTj8bwvE5bVFjpuHDaPzqP8Sb1SzukLLidG8V8i2Eg6tpM2bt5l/uu
         9uoHeIyJpkKNNa5f4UyULIKNLcxjkvLilf0Xhqf5tfgFpNQ6zJb3XhHBYSteLrBtwSnf
         Rt5A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793360687; x=1793965487; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gj1ttizdUersx8xsUhnFSQQTCr6CuiJthd1Zca2e+6c=;
        b=TFwjd5+S2Nrdds3Qjf/7qQNDVhzuNcZaV4kFUONKJODfrwbt1gIDaRBF3DXBnMnNoL
         Z+ksxkw8Y8mv/SyHiZ4PTsgqJMA6JgvcWjHqSahXNb7QC/uIPnkNDkaAf/+M5d+8wL7H
         KnyPEEr5h3tXqRGOMx5FOIXxnX46/4pZfWXVjqOPl6s9lkzSkPwXe1QAImbkqxjFahSq
         6u/YFsrFTygVngczhC6O01Y3EqeIPZY8vabfvg80cRxjEhiHhcgZ1v7ztGhMXitvMcwk
         OtmdVyPstsGowGgMK4H85OnlYOhOZGCfESmN1lfRBWZNrIP5juCOkmkzJMZnBim9uHTO
         YkfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793360687; x=1793965487;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=gj1ttizdUersx8xsUhnFSQQTCr6CuiJthd1Zca2e+6c=;
        b=SQi60xdUnofF4/A9K8GGka99wu8ERVWHe6jkkJX3PriUeQbtfPdUYxCRKqaHSuRuIp
         CIg3t1EZiAUWIZhBqPYyJ2V64q1FTcFxyGmKTPiM8ZHPi0lxp6Hc0HMAhkfIbco4id+x
         p+x7pwVS+cchw9gWNKaSw3Hj9H+LIuwpG5V1vF7utWog/05uPZNeqrSLQSSn3FQVufKn
         a2vAZEK6CUr7pXO8q6/1GZlPZA9KQ7NLZLUuZ5V5+YVNdv9ZLB0oGuEKGt58l6isPPS4
         JERjYjBPQnncjGNKV4fVUUwNc8HO2bcRF+YWzXZRWw0JOBRDoTx+YOmjqB2zl4v+DM+F
         9xAQ==
X-Forwarded-Encrypted: i=1; AKwUvByKRwEswra56/S7vyfMTFqkMVMTREWVCxOMC3e2Eth0ndMcAQvWUj/Em+C2mt/Xa1dElT5tiIYiKiJk+PxJAA==@lists.infradead.org
X-Gm-Message-State: AFq9FYJHIW9m9OcUx1qL/n3s7YWfIIMlWhDIVF29xJxSvL+AFqKTmSHE
	EQCWDm/fwMZEYkJilbCmiZOrAO29Oj+rfLdgugReqCX7+z1CrO10MX8ODM6HQJIV2immOsmoN1V
	Aszn8tvzeKcO0fRTG+SZmj+usxJUOQvDkdvZhf90hVA==
X-Gm-Gg: AYBFou11H5JWYwpJVlHetUY9Ruffjnt2yhpDIP58LYOOzyurT/1NFVRbL46BZkj0T77
	we7CSlgM6JNvlWiNkAQDJOw424Ye0aHhQKlD1nhYfqvJCUyde+/07geIQH0yka1S8PX+pQGywtq
	swZziLEwFYce6p+2xh3m2geVJuor2lwSgVZr0k8SkpGRGdEk9d2/R/PzVA5UOC6C/ySZsw+3RDl
	zpZLDvQjSl2AXIoUDr+0gDkhqmJE1/rUVfcVf6s0Le5B1wuQb/mqGNY5fPDJkfJFQnuJ6KJVAPl
	8CZ5c4fgsU4cuB6bO7bteCq3vIkL/OOotsLFYOWE6GXD596pZh38IIZw8KoPOaSrsBwgmlCmw9J
	NJcnt2s7Jp5qeAcj/tWdIK02ehr58sJLNFYBG
X-Received: by 2002:a17:903:37ce:b0:2e9:6333:fbb7 with SMTP id
 d9443c01a7336-2eb364f49fcmr22277985ad.51.1793360687631; Fri, 30 Oct 2026
 04:44:47 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com> <20261014-dw-hdmi-qp-yuv-v5-9-6fab0fe43a9b@collabora.com>
In-Reply-To: <20261014-dw-hdmi-qp-yuv-v5-9-6fab0fe43a9b@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 30 Oct 2026 11:44:36 +0000
X-Gm-Features: AclHuK-Q06xdaUmiDGoTsq9LRujvtZmp-FKJhNsOOxfBrNNarZ1Qbmr7JOv-ovk
Message-ID: <CAPj87rPEz=Y+dZayouddZRn2ZHSVNk9BAjBqz34PJyjDRba5=Q@mail.gmail.com>
Subject: Re: [PATCH v5 09/15] drm/rockchip: vop2: Consolidate HDMI PHY PLL
 clock parent switch
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Daniel Stone <daniels@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com, 
	Andy Yan <andyshrk@163.com>, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_044449_014230_44962C3C 
X-CRM114-Status: UNSURE (   6.54  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On Tue, 13 Oct 2026 at 23:51, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> +                       if (!vp->dclk_src)
> +                               vp->dclk_src = clk_get_parent(vp->dclk);

Why not do this at init, where we setup the rest of our clock tree?

The rest is:
Reviewed-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
