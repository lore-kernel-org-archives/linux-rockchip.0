Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30D8BC52D7C
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 18:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gvTBsQObSLhoot09ndsNSNgtRjo6WNofy56fbszYJaA=; b=RBA1H9MNMCR6FO
	FmUpYapFFkIpS8gmknzabIijoWzotFsPV4ZDXpfO9Fi04Sf4dWIunYlvLKMvRqNA9dmdgNvYWxdRZ
	VzpBgtNbrKLpbF+141atSKnE5uZ2Q1DBfrtfQOKBVLbpAomH1YkE4NvBq9NKicChTIqD5EE1MXb2k
	pok+LxIUn8+D8VHKwc8hsD8oux/EY5TtVDHWjJmQCSB1BtQznP0CU2+KdQZRJKNrbvYOBN3JgpBbB
	dvp9SHrvsPS3X+jqVdW8ZAh1GO3kVxfqwH712xr/7j0QzMgo/0Ma8dv4EMFknHla/AAv64bapOB7o
	R0mHHZdvBFcy5mTSydsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfkPv-0000000GxCK-3VXK;
	Sun, 18 Aug 2024 18:14:15 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfkPs-0000000GxBr-4Bn4;
	Sun, 18 Aug 2024 18:14:14 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-454b3d8999aso10427881cf.1;
        Sun, 18 Aug 2024 11:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724004851; x=1724609651; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lx41hX8slHGqhq4v8T55HkEzecCy+7NRWvJePT1xy54=;
        b=PPpQcGwZqZ7oehwaMd2xpXFF6nlG4hB/LhGe6k8ny+QTNQdjDKB6JXEf5SpTFON0Tf
         LzZeBlR/piJ1F2qF6IEpXFAVwhR34qXf+0T+UdKfZo56C3z2I/iXW9szmnZfu6szyShs
         nHTg12Y2tB755xdgpiiNtIxzMam3qRS8riqOS6WN7jKqOENL64kl7RVEwmXQsTdVurBN
         o4eQIo0obqQP8fiN1OSzA7d565ENat5g/6ybYK33+9TALApBbuRsFIcWWOVr/1+GdHH/
         xNSj2aB6MS/IkA0Uq1rojhkREgaGNmudK/MTznzAKcg8dJ6G7b4Xyda1Qx8QyaV5XrGm
         Q+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724004851; x=1724609651;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lx41hX8slHGqhq4v8T55HkEzecCy+7NRWvJePT1xy54=;
        b=uMMSNPFml/m0uTrDsjIdaRhhbL3pMUIcZaITYKQwRxKLSd2/4QJ4X/tJvEl15LTnyh
         gwAKfSrjeG6sf1p4Ss8KxMfSAgUQJ9qQ1McMtohoiIbs9LBuRidV+isxyYWvahJgSH9v
         KavDR+tW6+DWWJ1grVsx0ecraHzlYWocEvAOMepKrDBwhfx52SX8pVUSx5i5dieBsMnS
         fZqF29FDBJpmoNadU7uhFc3TqXmyPPRTV64wqxQOT4GMwgrvpBEH58aItvavm8Ovrfa8
         83+K8Z7oujvXFwsxwU+JOKQfuAMNVg07bFTalAXQEYnwEbyRMG+MnAgUzaOn2apgOa4y
         8UOA==
X-Gm-Message-State: AOJu0YytR+P6UdF8LHmimac1/mbyX53yzitEkO6LYzjSaZpVv9CW18AC
	ZHjohS2BjtNGj2/Kptp4rxCAaR2fYd0Fx3rMEEedKnW9MqzJicY0ggWuOH4BoptWxfsvNvb88Et
	Do77oVhnglF/vKN0BcZVnOUIRTMevr0w7
X-Google-Smtp-Source: AGHT+IEBL625KcD1kpuBiCMK4VjFg/m1u/6ZmbtETY/JKUjKcrCFAc4j1uJJDGmQV/5EKd7mTqAbcleQO/3GhMql7Pg=
X-Received: by 2002:a05:622a:428a:b0:44f:edad:3a23 with SMTP id
 d75a77b69052e-453743a9f1fmr105192001cf.48.1724004851046; Sun, 18 Aug 2024
 11:14:11 -0700 (PDT)
MIME-Version: 1.0
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 18 Aug 2024 20:13:59 +0200
Message-ID: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
Subject: [BUG] Rockchip SPI: Runtime PM usage count underflow!
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-spi@vger.kernel.org, 
	Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_111413_139912_7E8E3DB2 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
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

Hi,
i am a user of the CONFIG_SPI_SPIDEV device.
It stopped working between 6.8 and 6.10.5.
The SPI bus itself reports no errors to userspace, but no devices
appear connected to the bus.
The platform used is RK3328.
The only spi-related message in dmesg is:
rockchip-spi ff190000.spi: Runtime PM usage count underflow!

Please, can somebody review this issue?

Regards,
  Vicente.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
