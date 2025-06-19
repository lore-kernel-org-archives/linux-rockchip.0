Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12422C7115E
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 08:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OdteISg5KjM7SJZrz28JwlOJ1f2CSw6wHKXt4d9nBbY=; b=ouQZ9H/Bmw/GPF
	1JxTPi4QHbgn2EY00MEN40bgFF+8iWXutuNiAIjmhp03/FayILUFSDG5hQ9EmvnoMmo1fotlRssnd
	G8MMzOhUPum4sq/hKjLMTL26jfYBCOqU7G3CmFwHivAfDs02rwXa9Bo4Bccy1ynTJjL8QRj7PrMXI
	4sgtaZPqC3H1JjPJVAlYaIV+s4yRf/6ahS31/97MI+kAlHusTKC8XA1qhG2anIp6dvc2qjhCSunoQ
	12thzVRbL4n2HPcI/sLTAc2EHTKeZ6jOlo38Om4wsChm3PRodkbg9GziZVITbEh6C8g++Yie+w7Fg
	IDj1QzuDANqKQ/bgir1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSB3H-0000000CVdn-06Vn;
	Thu, 19 Jun 2025 08:55:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiC-0000000CRHZ-1nCT
	for linux-rockchip@bombadil.infradead.org;
	Thu, 19 Jun 2025 08:33:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=L6Kp9os+xz5VTdOcLDt+j5wxoDnuHFI6sku8Lw3uoFk=; b=XvHFyZLfTgnQ89/tict77mUj/O
	NL8GPV/0CFiaPp4hq/Z/N+Mzi/jEXMXc8Tu5BnEbRRtlEl+lUrHWSx0C1526adkjkLU/ItF9lCp1o
	EGD4uiOjr9Ioe7/Jm5+hSP0lnudY5jAli2w34MlasO9OjrJEp9EAQsPD6TE9wug/W46jjcmINFQMJ
	DmDIaQrOSq6u4MBBBwymlOk7/qjMuiJlbJUq/z5P7Sc4UfKhif28tRt5P5TthasIdsyrysTL36uXq
	8Oh6wqcOC0+BVNg08BdLE7E36OC2uMdeycSO9uk2b6al9kBShB6+b2PzlfFgIe90fQbIbwRLh+Ale
	16dJwV+A==;
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAi8-00000004NnH-0fZK
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:33:32 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3a6cd1a6fecso222195f8f.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322005; x=1750926805; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L6Kp9os+xz5VTdOcLDt+j5wxoDnuHFI6sku8Lw3uoFk=;
        b=e4KMqlLEq6QTFkvFhRehWJLHrFljEthg8dI+OmQa4IGNeJxc8OTumaTo2J/TQUbKWc
         CJ1GD/9bMqsD0zL0Ju94rOy+v7exEzWzWFrGI9GkekP8KrZ2DciAt0eEaXY+IHY1WR9J
         SvEvq8aixAvngKwRRWv2J55QLNwpOwp3MBb69fPNmD5tOR+4bAlUDwoYV/iER0+XG2fC
         z74fkyuY5rzvz4ot4wMOPFclxjXuVC2XjBg8+AWXfBDlI0IHhs8UfhMcp98KB38yvdhP
         WuvrpnFuRn08YOpYS18Nh6cj/Da3Tq2ST1UjzoCwEqP0YxysFOjccdKs/ipQufvwj5dp
         +5Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322005; x=1750926805;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L6Kp9os+xz5VTdOcLDt+j5wxoDnuHFI6sku8Lw3uoFk=;
        b=t50GP0YwJbnSFpHtMV5n29l5lWB/rsCnDxY05Q6gMjfQyihLVBJMjfHF2KykNiotcr
         Mesa5zMYTYSa0T8n5iKdJrF7YK6mXiKowQ7ujrTWFo75DsbSgwjorDhg8R1qsoa0bIr1
         v9RrwjoVMiMPoM74s6YkIrWwZQEcMu4blTQg+Z5jpx2Qiu4psIIBCW35HfYwQiSFgnKZ
         cDOJHIy2MrGeBSZYRyd20sIO5ivp3glFxDmy1i35RihDX0wfZ9yoyqBsY9LTd8juG+dO
         Eu2Z/WNW64DBNxSzKma44PZBXaN+nWq1DNCjonxdRwUSidFj1lrtJ6hME8MQ2Vk1978F
         KMTg==
X-Forwarded-Encrypted: i=1; AJvYcCXmtM0O216ID3izbqKQXW9AoQthjCINE6mUDe3XtCY901cVXWqr30mjKvwwavES3+g71KmGeWMkN0JtMHSpNA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7G3fGKQml+D/JKlsocr6zn4MiLCAobYQqpGlIFC/4p2poomI+
	yq9G5flU1FmcdUQzg/1QFT9NMl1j9V2ata/QvTKUI8qGWO1Vq3opvNsiHa38sU97qSw=
X-Gm-Gg: ASbGncsvyXiqYL4dEas9mKLjEkh1Of3fOAey2eboT2RPHr49XVest3IR5mAhaesMkJy
	7t/zJHxT1n5vytO3moZGNH96Dr+mRHjN9jxnX6mI7SCXj7kRT6dn+z7WMRrjsBK27VN7zJrQSnE
	v8BA8m0AS11T/l8OnmlRWC232NPLy2H584wVL6mgwE5ANzUBzvWpVsYHrC8TdIaH+d1Tv87QUTg
	LOyaID/SOhczCXQ37RzGpSdeZxSQxOSJzU+ndKjjB9u7toEm33shKW+MLuJ0t4XQS2jp5uGOUzA
	8/gGhs4Ku0oXkMgWYbYl1Ndh0qeL2CHJfPx0EOufntOfCdezRaIN+3Ic
X-Google-Smtp-Source: AGHT+IFYckMm6TqdR+SMt29zt/hysoGmTKQvGlottOkHITi2OJ20YHyb6IYgKfQEgRh6pcZHDimpKw==
X-Received: by 2002:a05:6000:430c:b0:3a4:f787:9b58 with SMTP id ffacd0b85a97d-3a572e9c412mr17795119f8f.58.1750322004914;
        Thu, 19 Jun 2025 01:33:24 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a63a42sm18828151f8f.28.2025.06.19.01.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:33:24 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [PATCH v2 00/12] gpio: use new GPIO line value setter callbacks
Date: Thu, 19 Jun 2025 10:33:13 +0200
Message-Id: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEnLU2gC/4XNQQqDMBAF0KvIrDsliTZGV71HcRHsqAPFyERCi
 3j3prlAl+/D//+ASMIUoa8OEEocOawZ5lLBuPh1JuRnNhhlbsrqFueNw7jwhpF2lFSMpMnZprW
 uawzk6iY08bvMPobsheMe5FNekv6lfwaTRoWdqltVO6cnb+4vXr2Ea5AZhvM8v1gCtuG5AAAA
X-Change-ID: 20250617-gpiochip-set-rv-gpio-e1e864768942
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2273;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=JA2MdK9R8F/cOt9CUzPZz/x8ehY+74kE0g6wA3wRlHU=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoU8tNX/mWswsFP4HvzFmsSabfA47FF7DtFw8Jl
 09zIyLDComJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFPLTQAKCRARpy6gFHHX
 cunRD/9vOYV44Hogp+oRtgtxtMzTmPR/jtz8WK4sNlre2T2WIXXIQVGwBDZYkLX/9JO0IggsrRg
 5KbC5YjZhcef6xGufV58QXSUwtr57RBdAz0mKoSnP9zZYAxoud22AmqWm0GuKUdfGyQwLAk/N27
 d0f6rQAXmiMWYB7QNcdYjKAXY9l9EUaRvZsg7h1EaBimz+TWvZgwZ0INAxZfonXhOSKOW/+fI8F
 arO6dq6dIqMPBHz9CIX33WGKstSq64w9ROgBHTT6+s4lMOFbQ2EuCmyH65UwYJrv5ZgKSvkemnB
 KMixt+xY3bUqavu/BU/1qeuDHQfltZKqyDFT6RUgilXBhsNdHasaMyhTWOt56OANNSgRZWLVrj6
 VLcpaoIuvdqpXnXwO5ufD6Vke6/p+ejZtlcK0L56OFESwJrtdGk+gxGOnomrjm/5LRyfkO+1QoO
 B1LhRJ5UUQoFO3mPkLGTTYuFwd05KDeTi67lRDefrekAuXDtQw+5+8WIzMcJCdPYYHzztt82F2p
 sxoGc3Qt42sTzluSykzvqyoV2ZMWnerxNKjKzBDoRwuycmN1G80nrXKvps9jDb+Fob8U9s02dRy
 d2hqXFuSm8UPq6hoQqa6BMjC4dnlW+FmcwPA4yS6T3lU1oIh01M2TxTv3Fq8EBjFcZFsem6jjK2
 LGqnxwEzBeILlaw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_093328_703213_3D480A5F 
X-CRM114-Status: UNSURE (   8.52  )
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

Commit 98ce1eb1fd87e ("gpiolib: introduce gpio_chip setters that return
values") added new line setter callbacks to struct gpio_chip. They allow
to indicate failures to callers. We're in the process of converting all
GPIO controllers to using them before removing the old ones. This series
converts another round of GPIO drivers.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
Changes in v2:
- fix a NULL-pointer dereference in gpio-reg: use the correct function
  pointer when calling the setter callback directly
- Link to v1: https://lore.kernel.org/r/20250617-gpiochip-set-rv-gpio-v1-0-903703881fa2@linaro.org

---
Bartosz Golaszewski (12):
      gpio: pca9570: use new GPIO line value setter callbacks
      gpio: pcf857x: use new GPIO line value setter callbacks
      gpio: pch: use new GPIO line value setter callbacks
      gpio: pl061: use new GPIO line value setter callbacks
      gpio: pmic-eic-sprd: drop unneeded .set() callback
      gpio: pxa: use new GPIO line value setter callbacks
      gpio: rc5t583: use new GPIO line value setter callbacks
      gpio: rdc321x: use new GPIO line value setter callbacks
      gpio: reg: use new GPIO line value setter callbacks
      gpio: rockchip: use new GPIO line value setter callbacks
      gpio: rtd: use new GPIO line value setter callbacks
      gpio: sa1100: use new GPIO line value setter callbacks

 drivers/gpio/gpio-pca9570.c       |  5 +++--
 drivers/gpio/gpio-pcf857x.c       | 17 ++++++++++-------
 drivers/gpio/gpio-pch.c           |  6 ++++--
 drivers/gpio/gpio-pl061.c         |  6 ++++--
 drivers/gpio/gpio-pmic-eic-sprd.c |  7 -------
 drivers/gpio/gpio-pxa.c           |  6 ++++--
 drivers/gpio/gpio-rc5t583.c       | 19 ++++++++++++++-----
 drivers/gpio/gpio-rdc321x.c       |  8 +++++---
 drivers/gpio/gpio-reg.c           |  8 +++++---
 drivers/gpio/gpio-rockchip.c      |  8 +++++---
 drivers/gpio/gpio-rtd.c           |  6 ++++--
 drivers/gpio/gpio-sa1100.c        |  7 +++++--
 12 files changed, 63 insertions(+), 40 deletions(-)
---
base-commit: 9da895e97057ad946b2e727694af3fa5ee51d527
change-id: 20250617-gpiochip-set-rv-gpio-e1e864768942

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
