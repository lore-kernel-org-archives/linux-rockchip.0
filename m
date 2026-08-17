Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4ECBC5DF66
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2026 09:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vm7kYzsmJy60QkUkgb90MHrNDW2JxXVo8NP5kXvbRuw=; b=eBxp8xt296Ldwx
	Ccrg1ucZbKrB+YMmQeM8mNzKOjNlWyyT4NMH9o6K0PXhsaX7LTSOqYN3789A7WX/UC7kGyDRlwQu9
	7YLkQIy+4LglmEXliiNWYgDhe39SL3Ema2VIFWvMgT/Z2S2NCztmz9BdBpLJI5XlmZ4wGVo3AWlMD
	4X5N+wMgqPLNqfwcNz89t5gSP+tspVzWqbDDDIf45ZMQIHVbPsMQFoZvB7GPX0KlZT9ebxBkCt3H/
	Cyd58JDe81rqXLW0mP8OOHids9vGAHz+GSvZpDNagEFI2BzH7h0QVdz2zW607GtOKwYA5azwEx9Tu
	ZJ2Nywx/8JADWsX46nvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvtsN-00000005prM-1Q0F;
	Mon, 17 Aug 2026 09:43:27 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvtsL-00000005pqD-0RYz
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Aug 2026 09:43:26 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4957739c22fso888205e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Aug 2026 02:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786959803; x=1787564603; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iJxT22zdZziRjbZwbed7OeV6jhdxmd27WO3H1gy/w60=;
        b=dfyotExjc/ttGbgLxTKZMcX0pGCmSHuVsTm4+UvB5muGDjty59izHQ+V7V0Mh1r0e4
         Z2PyaRlObXPt4X3BA9Aj5EtBm6hhk5eqCTvhtWnX5Xj6Dk9ltrU0gErUtgZoPiNPTNjZ
         Lk2dFpbmFa2x8C0i4TOko1kW05Yun3YWlAIDHDVyf6kc89zDM+PK3YANi5f6p+qrI9dW
         uSf7ZKcnEX3T0h8rV4E/TS2pmRVuu/tTCgiY+DWZFCyp/yNxUzvn3gg49UfPzl3kBCGD
         4oefAtWGE2hRQoEFptlIIjjePqt6mXR+piiwaR4GABXXMQVX2Otxl3N6GeWGVJBi5cOa
         ZhJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786959803; x=1787564603;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=iJxT22zdZziRjbZwbed7OeV6jhdxmd27WO3H1gy/w60=;
        b=NbEseR62DYHoxNBavZcKuSArL/aPuAFuqoYep7TQgQ7R+qmwsosn+obEOxSmReNtGb
         x5UPE/A/pFFQY9HJYiJz9Z/AjGEIVniZm7nG/SXBsOpn+81oLYR3mQFPq0rLaTSGaMjh
         5eg5tRtrPuHDwu1dp9J6vPZvZ+8vm8pwRotT4PFMiaO08sGpKmmqZ9TSbQUpqpak3kV1
         4MmYWkPCKJ4vVrG6rqY1KUWKt55jtmIYBda62oP6FxWFIY0xwk6qBf9krDEUa7ZCnOs9
         y1lWbaQF9qCvrt6tvoS+C+25lwp1C8wqgyJ2rOY+xKIBLUVEVjyiKEBHbqzcKl4HD+th
         Fp1Q==
X-Forwarded-Encrypted: i=1; AHgh+RoiRv0JPGsQcX4CKx2jUDCIA8mz7lIbar2JgFJXIx/lbaTyk1sDu6ve6dWA3WNBBO185qwoO2w0pwcpA8Cqmg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyxjbIwY6BeoUPiPCWxivCCn5h2oRS4V1NfRHi2vFF9/fjNHQCe
	npFahlsoZFnsmij9/dKVaL6W+DRMr5giZZoyO51DQE9DK2l2fjjRcblp
X-Gm-Gg: AR+sD11XewZrMsYhPmZ5L6RKmuDL1Q2S8jFS2AUdUfK5295T3b42SMXxNJGawLlZLPK
	ifryHPONx0ZomiLDi38Ghp2Pf899149CMJNqUQxZirHHU1UeRRM1k3h8wK6iuJss2i7mfqZuxcA
	zOE4TIqT/gwUW4tdRMrJxqY7uFsJoN+VcQN7oQgA0FRmIt1X++Vwj3i0Wquotomajt14PeRUByL
	1UAY6zXjfv1+F9OCV+3Qg10v/joKQ6hy8/tsoq5PsAqEg5oJeAsDUK0i8TWeapE7n0216b23FKA
	mGZrb1k2ZpeCvOAj+KNkL5u8yKLA3v/llk+1KNfBpTwWkjxOBBzE2B/7AO3nojVOGUmxux2ZDxF
	RbVpNG2PvLYXaS8unrQNPt1pZ2lllu3uaht10WWCchY8Gc2hl1l6WL07sc7Ajgrth79/k25dTk5
	Wg98XRvQTnDr5w+45rH9hifxZUz2VoF18svX1u2wsJngE1212OLvLLGKRbhU/b0DibRUpivOGzp
	iHA6hrsjL7UAU57MyerttQPN4jLuqNjB8X+NqBQEYGnwpfcDHdJ4ijbxCpJcUc18F3HpA==
X-Received: by 2002:a05:600c:8714:b0:498:8e6:d463 with SMTP id 5b1f17b1804b1-4998792fee6mr180593925e9.1.1786959802911;
        Mon, 17 Aug 2026 02:43:22 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8FC50027494B64639367E4.dsl.pool.telekom.hu. [2001:4c4e:1b8f:c500:2749:4b64:6393:67e4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482a5b783basm2546509f8f.30.2026.08.17.02.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 02:43:22 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Muhammed Subair <msubair@hotmail.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Ulf Hansson <ulf.hansson@oss.qualcomm.com>,
	Ulf Hansson <ulfh@kernel.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: RK3576: rockchip-pm-domain fw_devlink device-link failures for nested power-domain nodes
Date: Mon, 17 Aug 2026 11:42:53 +0200
Message-ID: <20260817094258.23332-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <DU0P190MB244579F0C395F1F41CA729A8BCDC2@DU0P190MB2445.EURP190.PROD.OUTLOOK.COM>
References: <DU0P190MB244579F0C395F1F41CA729A8BCDC2@DU0P190MB2445.EURP190.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_024325_174967_6D6EA6E5 
X-CRM114-Status: GOOD (  15.88  )
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

Hi Subair,

Your diagnosis is right, and the answer to your first question is: this
is not RK3576 missing anything. RK3588 does the same thing.

From my Orange Pi 5 Plus on mainline 7.2.0-rc7, one line per boot:

  [    2.215019] rockchip-pm-domain fd8d8000.power-management:power-controller:
      Failed to create device link (0x180) with supplier spi2.0 for
      /power-management@fd8d8000/power-controller/power-domain@12

Same driver, same 0x180, same nested-child path, different SoC. And the
trigger on my board is a different property than yours: power-domain@12
and power-domain@8 here carry `domain-supply`, so the supplier resolves
to the SPI-attached PMIC regulator rather than to `soc` via `clocks`.
Two different properties on two different SoCs producing the same
message is a fairly strong sign the cause is structural rather than a
per-SoC DT omission. So I would drop your option 1.

On the flags, for whoever picks this up: 0x180 is
DL_FLAG_SYNC_STATE_ONLY | DL_FLAG_INFERRED, i.e.
FW_DEVLINK_FLAGS_PERMISSIVE in drivers/base/core.c, and that value is
taken on the branch where the fwnode declaring the dependency is not the
device's own fwnode:

	if (con->fwnode == link->consumer)
		flags = fw_devlink_get_flags(link->flags);
	else
		flags = FW_DEVLINK_FLAGS_PERMISSIVE;

which is exactly the nested-child case you describe. Worth noting that
DL_FLAG_CYCLE is a separate bit, so a cycle-tagged link would print
0x380.

More usefully: this has already been explained on-list. Sebastian
Reichel answered the same message class for RK3588 on 12 June 2026,
replying to Diederik de Haas's reports on nanopc-t6-lts, nanopc-t6-plus
and Rock 5B (identical 0x180, power-domain@8 and @12, suppliers 2-0042
and spi2.0):

  https://lore.kernel.org/all/aixze8zFboY3huSf@venus/

His explanation is a cyclic dependency arising because all domains are
provided by a single power-controller device: to probe the regulator you
need the bus controller, which needs its power domain, which needs the
power-controller, which needs the regulator. I would read that message
before going further, and I would not treat this as cosmetic. He is
explicit that it is "neither super bad, nor completely harmless",
because the kernel ends up missing dependency information and pays for
it in extra -EPROBE_DEFER rounds. He also says fixing it properly needs
substantial restructuring of the Rockchip power-controller driver, which
is a rather bigger answer than any of your three options.

One last thing, and I mean it helpfully: I think you have mailed the
wrong people. Your To: list is get_maintainer.pl output for
drivers/gpu/drm/rockchip, which is why five DRM maintainers were on a
power-domain question while the people who own it were not. For the
subsystems you are actually asking about:

  drivers/pmdomain/rockchip/  ->  Ulf Hansson, linux-pm@vger.kernel.org
  drivers/of/ (fw_devlink)    ->  Saravana Kannan,
                                  devicetree@vger.kernel.org

I have added linux-pm and Ulf here, and dropped the DRM maintainers and
dri-devel since the topic is not DRM. If you follow up, consider adding
Saravana and devicetree as well, and run scripts/get_maintainer.pl
against the files you are asking about rather than reusing a recipient
list from another thread. That is most likely why this went five days
without an answer.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
