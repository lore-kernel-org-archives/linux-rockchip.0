Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 263F6C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 09:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUgWe4c9TS7FMSSYqwf2VqjeW4anySCTF4uTHjotaVc=; b=EMuO5YKHtV6PPm
	g58yDAw17myBqvYGBhimJanoGz31W2ZWpVEWgywqyWpm65U/ReXPSxD7yHMLllmzfvkJwu2Dmh/9y
	poVaDRyo/f5vyy5k/s4/PT8ZwxYg/smyzZJT5/b5HCqoxT9E5kB6mDeSOK7+ayDLvGRsBZYeifvff
	+80f21770qScVFnUg73M/+m2pAQWdsSPVw5u4qMjam2J6HdSOiYvQ6yvC39ESxXEhfx6fCmHynqQD
	4ARep2aocPPTDNuNCYGwTfc5JAWG52nI+V33sUhdBdwvCmyszuTKKnWqZ5WsCMt1CjcBNjb47Zdqs
	15xb4efYOHtk1rQJ+7CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setdG-0000000CUv7-3zFz;
	Fri, 16 Aug 2024 09:52:30 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setb0-0000000CUJ8-0UTk
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 09:50:11 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-52f0277daa5so2417766e87.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Aug 2024 02:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723801808; x=1724406608; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CHQ+NPmQVZFS37omHyDmVEDa/txR3YEvhn3ONo2BXDc=;
        b=fPURwNdV7z7Nviox+pwMF4vbGsFQxTyxdOgNAXxzxVSIChnAzX5W9xqCvplaF9fFf9
         YhPqDclD4tzyO8LBb6gvHU1RhkscurywHGBPvPNXol6f6avCVgZsuxX8/fcctaNVUdPH
         kyTsY2ibyX8ZpcdNw1AyZs5+xueTZtVy5GHo8HBWD0/NdXqLnc8N6qvHbJ4b1puiT43t
         Pm6db3NSb8KauR81gA/wonfB1HLYQrXDAKsRnUrDX6mrcZ51D/IW1bIuTVcQ+lmqXFmP
         68kH8ZCU1dZ04yTC1Brpvl0CBFFaPn6hck6PAWXcx8TXbUuRdAP0GX4fmyP4OvvX+FOs
         LNKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723801808; x=1724406608;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CHQ+NPmQVZFS37omHyDmVEDa/txR3YEvhn3ONo2BXDc=;
        b=h5HMRLbzcx6XTd1LoeLX9xJ3YTr3e72rCP+AGJfCvsnGHQ3f5dWjLtTUqL/ku+/qK1
         KYaD6tuazV6GLklzvF6OBQvy80aqFj37MdGou9vLSHFhmdWur5WH/nBhc5kXt0FzQ9St
         VEjRPdDaEOn1C2toxzh+esgPBeOGFiJIS1KEUVheDuj/m8iWGBm9uiCncedYOv1TbkY6
         QIqqCsCrCdQ37/Q11nZyYx5C1Cmud511QT96N0SOew879evO9noZRh2GFpQ0R8Keb2V2
         8NkjWI4FS0Hv3+6hhvfooA5j7D4vYhw8/GtcsFFJ3MorM/zmZe4QcESsE+DodqCHYPCy
         i0tw==
X-Forwarded-Encrypted: i=1; AJvYcCWKKvXPNiBqJPIhhYUT5S4pcfeDJoC+iDbyUhhqVkqrSCjqYMqp7aOS3aP9Z+3IrOAyYowYlbnJPrwAJZGvkp2eWvCx7glP/XalcejcJSe6h15w
X-Gm-Message-State: AOJu0YyVrer2d91h5TszxXOllHIsOudx9kKYqQjMfS4e3lsyxF6AK5U9
	tHGIsM7oPUtsqJYy2mRJpxcfT5I7qSit4T+sprm22p7veJVcpErmEJqYf89tF0g1WbOMOfibE7T
	ARxZQhJ5K+EW+z+ayykV9FOWwxQ7zb8pcxUForQ==
X-Google-Smtp-Source: AGHT+IFNH5mDJnOyEqPzpQTAY1AoSCSs72K9GQZ9BwCbH2cPCtVdHDWdIpfPEJBIGm2rXuUmgdKzj52MPIsWb6Io7f8=
X-Received: by 2002:a05:6512:1150:b0:52f:cd03:a850 with SMTP id
 2adb3069b0e04-5331c6b0a4dmr1426019e87.32.1723801807810; Fri, 16 Aug 2024
 02:50:07 -0700 (PDT)
MIME-Version: 1.0
References: <20240815071651.3645949-1-ye.zhang@rock-chips.com> <20240815071651.3645949-3-ye.zhang@rock-chips.com>
In-Reply-To: <20240815071651.3645949-3-ye.zhang@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 16 Aug 2024 11:49:57 +0200
Message-ID: <CAMRc=Me8OB6auZa0xrs3gBmGQb=UAeCDgczz_t2GLECW7xGQAQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/5] gpio: rockchip: support GPIO_TYPE_V2_2
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_025010_177138_F052828D 
X-CRM114-Status: UNSURE (   6.21  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBBdWcgMTUsIDIwMjQgYXQgOToxN+KAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBTdXBwb3J0IEdQSU9fVFlQRV9WMl8yCj4KCkkgZG9uJ3Qg
a25vdyB3aGF0IEdQSU9fVFlQRV9WMl8yIGlzLiBQbGVhc2UgZXhwbGFpbiBpbiBkZXRhaWwgd2hh
dAp5b3UncmUgZG9pbmcgaGVyZS4KCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
