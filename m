Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66842606A32D
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 20:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GH61edwB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TSv5h/ku
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/uP3rU4Xz+zeZF2cgskoP5fJFIZZRl8JPNZeMahyGI4=; b=GH61edwBCa9KzdOmu1623lQqRm
	ZE/F56nW5tf+rU63gxFXXxlsyggy+xYIVVYhowti5ERvRQlN6lujA5zLLQCtrf/scOG4qMzT1UWjr
	Z3KxaNeN2A0OnYgwkjZQHOhA+7PcV0k0lbtFBf0RaC/wbKLJd9nu4LCKHOuxDgWvYXj4WzVEJRvZz
	WOqycZhe8fJ56qZfl065V80MYjgOxXMNIViFKuB44CEk0UnvaFe9OwghpTHeHerOgqC65c+bg5vnx
	UYG5nB20gfaia91enELspCCdf7WPYDWQbk7LFVwhfr4Ia7GFgT0kS1VkNJGGgpgBF4Y5WQqbSUgsd
	bjAbSDQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxnZ-0000000EO6U-2L2h;
	Fri, 13 Nov 2026 20:23:01 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxnW-0000000EO4I-1kO6
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 20:22:59 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-3ab30d04674so2096061fa.2
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 12:22:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794601376; cv=none;
        d=google.com; s=arc-20260327;
        b=ATpX/achdvT0UOh1otAUumi5OLg4C38kxlMy9nt4ji3+0GNaQ+gl1y++3zkMgBL8Vr
         sAN8/0y8CDFXapNmbYCDYMJhQjeIvvhI1e2npKl3OoL/pTD4dJxc3lAoHaTPqumG8WmZ
         T+Q/0dvCplC1dGCv8MYoX4GQOax+vfr8xso3NS4NV/oGKDRGfv7FeAmO0m6gALA+uFtG
         Diozo7Y8JGPZE9pXbaGzgid2sWw9zZ90GgetgHi4eQh+l/r6ZP5nNsOhVLDlh3gVFz3j
         yXMjKVi+kcoJYMgZoww50sKmkzX/B1xRrgMfnRX4lR0p0xs2rSML3bF7G0p3y2ohXokr
         hqEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AW+nl+4nxASRB/K+GIqpGeSKyCzwpDQjXMxGtCvf3sQ=;
        fh=t8WUaKd2mwAsqp3xgIPEZCdrfS4Wh+s8qfVvS98Co0A=;
        b=Inty3H2jy8Q9Y/VXiDutHNZVr8KKdxmvaZiBC0CWEs42X07u6atSnkAekrv7FPG3Qz
         RSK6fogdm1Q+OYQy88cA8QVAAi3H0knKlvgGZd/NvFuqX5VAOmEMqb3o+//miNRXtSWo
         lKqV8PETWwzbIkL6U1mCuk/Fh88jmV6DVjiEocbvKSAMZ0OfeGNABtw39htvy06pwkwa
         w+tISIKcwKb1YUP7JNMvi3s41ag8nUFjPervdEYowfZYPpE3yU+1sktfwXOC8Tn8eBkF
         akwN+69ccueSOlZ6dATi7SkWERhhyil4rpbGjHHuHhLPmSDPO8Kz5sg2COyXJPkV7mer
         b0Kg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794601376; x=1795206176; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AW+nl+4nxASRB/K+GIqpGeSKyCzwpDQjXMxGtCvf3sQ=;
        b=TSv5h/kuv/Mx8d35FY2hsXGBzA7sXmpv4ww/p6N/hIpaVXH69pyLyYmU4ckzt8RJBo
         BGd2HmKTrWAtV/Otu0ncFK3kHP8poTXBF5x9pD65xXx+d8t2G5kQXa+V6hSeJVRbwth+
         7YPc4yPbyz0IvRkElbpouSaVmRTRlX+YggVPUFVqJCd3c5+r8icQ+0dwAOK2vPMqNB0Q
         zTdoPfW9IaFLxntcxJssyMcgAe35iguP7Ml5HzccXLk7B6u4x0a1UU9RzBvToB3GGhMv
         QjVKy6yka4QIBErN6PYEat4rbJSlydR6MUDOAt9CLMlMpDBudkvqQ9gFoFwUonv0gRbu
         Zjxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794601376; x=1795206176;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=AW+nl+4nxASRB/K+GIqpGeSKyCzwpDQjXMxGtCvf3sQ=;
        b=CzgG9yCWHAR9Aw7uFmPUnmXnWeAYyW4Pz8cDT5+Kh+8zak4bF1jNxcjIZNl8MfHilJ
         4tA1Gt6OjgivcHPbx/2rZr8XU2nbUxJexTneG7OysGFFC/6a5cEO9xM9BhouGwYcwx/z
         Ioba2NMXbDD9F4sRnnrpyWXJ4wie0UhGeQ7MQjEExFVyNykoxO8HQFYcPB1DPFboAkp+
         65+7xTBIbNXiYKefwYfB9JZOdGr167UeYYsZEuQdr0iSnZmJvhf6qAA0zpm1chAxB0jD
         ATJGEwrayjC+9RVE34jybyduXm/7KKNnvDqikn5mauWNXCw09LnmhlQuPRLaorvxVpLk
         wmLw==
X-Forwarded-Encrypted: i=1; AL+hErH8DNqI+NJKwNQvuhDF8iSpbTr7KWT0NNdo1C2qL603kTNxld/cs4pXLbRL+DflypOLj7kdvZnH4DQp1mZ/Wg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/78waJPsWUB1h+KrNOePAYRUTZhUCtLZhsTtkyF93TVIVCo9u/
	ChNDLdUxrILA3FY+t/e/G3qfWNskv5CA1rBlWKoIrS3M6ORsh1zs5LEP9+Nydqyblay7fCBASMW
	EB/SUYnwtWsXdKWqSP1C2aBHdYeP/Pww=
X-Gm-Gg: AYBFou2cNu18CuDOknFcJcRrSEc3a0f4kKCYes/sJJZwLLS9Uq80eZExP+CnL/cK0hN
	Zu9xi3l45S5A3bn2iM0j3WMRI1XhTFDYNpwGCtUXnqz3BCTe4ZOxevuYuh4ljkneSVfmnMhcZcv
	FO4pNUEowhn93FZUVRuLvSqqO/QMfMA1970pnk+DADsnhplG3KPLC8UnwNDqXExgak4Xw2wxA9Z
	tBJ4gub/LAnjGc8a1sdzngGKxeRREQHG19UmgoiEwJ6kEggUTA3kQWDUAJVPoGEAeepVbKobx1L
	Zun26lFWLGcz3RQehBkUj197xkqjCTYyrEHJqDQwUJuyojubwrE2FpsQr8e1sd6ndWuXspYbUw9
	+Clv7t8IjuzaX5LWlhBLs+BEDZDb/O27jEJ1LmFHQ0arweKM/K1LsEIfLDfr+Js0yeZf/NHg=
X-Received: by 2002:a05:6512:39d4:b0:5bf:a48b:7827 with SMTP id
 2adb3069b0e04-5c1705f074amr1901758e87.2.1794601376064; Fri, 13 Nov 2026
 12:22:56 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261112-vop2-fixes-v2-0-8218c1cf8ac8@gmail.com>
 <20261112-vop2-fixes-v2-2-8218c1cf8ac8@gmail.com> <72fb3540-e08e-40be-8f3d-63727063be6a@rock-chips.com>
In-Reply-To: <72fb3540-e08e-40be-8f3d-63727063be6a@rock-chips.com>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Fri, 13 Nov 2026 12:22:43 -0800
X-Gm-Features: AclHuK83avg87MErP1c1PWVXkGZUeHXXf76PgTC3e-PET4yuVzF7UOnIAvMmRRg
Message-ID: <CAEy9hNXox_rE9XUOKe=0zedpTR-sfpz4sum34s_DW12bM52q-w@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] drm/rockchip: vop2: Don't use uninitialised
 dividers on RK3588
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andyshrk@163.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Piotr Zalewski <pZ010001011111@proton.me>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_122258_474654_B061B53D 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Damon,

> I think we can drop the previous divider initialization, and configure
> the correct dividers for specific interfaces.

Thanks, v3 does it this way. One difference: if_pixclk_div isn't set
for DP and DPI today, so v3 sets it to 1 there as well; nothing is
written for it in those cases. HDMI with DSC isn't supported by the
driver, so dclk_out_div is 1 for HDMI.

v3 2/8: https://lore.kernel.org/r/20261113-vop2-fixes-v3-2-08ae37e83b5c@gmail.com

Best regards,
Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
