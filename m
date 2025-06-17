Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28741C71136
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 12:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pYKG9+V2whC3P2zSkkoVq7aZrAR5UJnoLz3Wm1xK6aw=; b=JgqnswAaIssWSR
	CVbK5XcVhRq5kJHfGCPDwE9HuACsFZ0l86nvekkOP3AzMVs5Hph1WOo8FLcy1sL7E4HYYgucdJhTB
	woh60a3MFMCQqLYovrRtpxdp2rkkPRqVXS/sbcP34PjLxcz0wOKj4FncfiDdfSzwyjm788ec8yfg1
	YE/XvdpufqPP25m+zr/syUVqLy8p/I4zuZ2fuklSqD/STYyu51Ta1Uxr92nn5PL739e1xm6z8aoIn
	00oWLZV0FY32Q/6CH+vIP9Ir8npB9hfi/lPBy7jJqy9qFZZi5nfsaZWQWDMDIA+im8hkJ2u0wkXGD
	Fy3IJWaim4TTbHzJcd7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVgW-00000007E7A-41Vn;
	Tue, 17 Jun 2025 12:45:04 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVMp-00000007AvN-3CAD
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:45 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-451d7b50815so47719495e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163082; x=1750767882; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0aOiT8aWvV9AtVi02w4ktGyvJjNxDzIlcv3Oau2aYCg=;
        b=Mibn+8ZVkjgAsH7xR5ZWkxUzj79UegXnmrhabPdNxRI6cG+y0oDE7u7FvW3j2+vRNJ
         baKlMUiQmj+41sJsmOT756PKL3uzdRGACgKL6QYBAxbzCURfRwQVX5uQeqlh9JWE5CRl
         SNIN9nlvCiBGcfFsN4DJteEt+FzcycOBVjvi0NO541Vxu5Ijs5kjMEO25o+cCq6waQ3n
         VUFVj/XsbZ89JDMvn9eCwsnFCLlgvfnBEDs4JS/76ycMmJ64KM2uTngOFwiX2XZfRvwb
         bjljGSlnCfJsalX/K754pZ6ZmE949tx8vD3rLg5l7VCNDlaulsLj1ewC5fzJ8oj8Y3tA
         a4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163082; x=1750767882;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0aOiT8aWvV9AtVi02w4ktGyvJjNxDzIlcv3Oau2aYCg=;
        b=LtnNRk/8g9f34YAIbZXWEeuPo9f9WMYRlfIrBFL+q3xMOh8YqmzPAVcnr7kUOqJ9zV
         8J3r0iccz+JMZ/AT6H2cxzXQW2blRsqCILvTJKebmMjhqP66gcnGKr3AQLwYa29udu0r
         FZtqEuhNoq/ciquSiCG/+3jW/yH5brfYOyDrn3A5+/I75aHUUEpERWNTjgS6QmS2e1Wz
         TgcVFFDzsDyaSGEwYOuExra+viXufU2gqhmXW++/D/VNOa1r/fuDXBws7rdcXZZRHjMV
         CQkQ4jcLT9a6dF/Df2Rss+SH/QWu8Jp6TrtUXlNb7lDRF9zP/o/zW35GCppDvQAQI+EQ
         b5ww==
X-Forwarded-Encrypted: i=1; AJvYcCX7vxz7LJEOw4JHt6yWokl24MCw7Yq90GI21Ds28UAHSg5ExherS3SBD9JOMkXEvGvwQJIqpUEi4jRIOzD+DQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzpE2UXmDJdtBmUzkKaX5snyVOmWQRFx4ZBR9DhozGyo4qKjgib
	Ct6oQaHlYbADUu6CSKSBeQv44wJny2IlE14eVHdf4F9kaMODqpcKYv4RaclvvdLMW+I=
X-Gm-Gg: ASbGncvD3Pq8lnWCpHXqSqwITWNqKdTDywfSiN3B31+x0Ws5whQOPEyy4VifH6GOlSm
	IVAnUZ37bN0fiI8xXbEdw7WME+ako6pmUjCQTQrosL3RhjZgLl0ffSbOqlIl4DUJkylePu+q7XZ
	6SiMYjs9XJYA7gth5pmoJZ+evqC/gSYZKWgDp78XyhhBLg42h4+9YfdPrupPnAGQ5BqfM1CVI6v
	A6vAWLTx1XGyx+rzCI8clNeWdWwJgYu5pARwV8Nga8C579RzHLsNFh5NQ+pKgUD1TqwE2xKHJhk
	tRSSacMscGKHqnHBbVfoixMO3BMjUj0ahcA/L7GjTSi5HxFD5WdkCVge
X-Google-Smtp-Source: AGHT+IF+mB5SqbWQ/IXeYHMObyrSVvwo7MdGf15Ymmh88YebHVybFE0gf/vBSiFaY6F9NM4JITbNiQ==
X-Received: by 2002:a05:600c:5305:b0:453:9b7:c22a with SMTP id 5b1f17b1804b1-4533cb56708mr128208385e9.30.1750163081796;
        Tue, 17 Jun 2025 05:24:41 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:41 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [PATCH 00/12] gpio: use new GPIO line value setter callbacks
Date: Tue, 17 Jun 2025 14:24:22 +0200
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-0-903703881fa2@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHZeUWgC/x3MQQqAIBBA0avIrBtIMbWuEi3CppyNiYYE0d2Tl
 m/x/wOFMlOBSTyQqXLhMzbIToAPazwIeWsG1auhN9Likfj0gRMWujDX30iSnNHWuFEraGnKtPP
 9b+flfT82d1slZgAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2023;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=RLnOLguCkXn77LVyLm/6OTIhPoN1Dit0JrVu41r0fmE=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6CDET79f1o2CbISvL3vLRy6ELTLtQKnb084
 knXSnThFB+JAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFeggAKCRARpy6gFHHX
 cpf1D/9lK1akx62CUxztvvy7rfND61EV2eVXetZwZCru69u+80k0krblUEs+OzEEsNomzQQjunB
 t6oGVkODsx9MDCHGMisesmtpssyc9U9ZL9/3Phkj46EdmTFQA4Jv4qP+XwlamMBQXIy1zf3KWOV
 Dx7s9uYPiEhyWDXW1IMHpJksogNn4kOOG9CYb7oZaaHR8S9i9Mujk0yqG77pOgFCF+oWy9cp1qj
 lYsB08HLcanT6fAWkXZ1Ll5rleE9+beB9+HKLi7p1Y31IvlsQ1/D67xx525vqjPeFM1EJ76Igl0
 /FnoKItV4ubW65epwmmWbi/UKTiSP+lU7u6zXY0eEOWuMkrg/uBakg7An2VYYSjtiz5w4e8LjPC
 r1eSzfsmrjHDC8HrNVwbnj9Ashn2tRis9fXAZ7+p7LodRjS6RLKebeav4NUPp3jCDyCGz44Sl82
 KxZktKjqp+0hnXOg2ATa3Ck8pHHtIgTiGXBQF/msz98sLdJq0YdtHn+9Ad2YfzcfYbTvSvq4WgO
 GRO30/0rIKexr/ctI8lBGNh/9MlBpeHFiEpr2CZsmCuht2vy38g0TzZJ8r0tBvYL39W2BdS5SEp
 kjk+/W1gC4lU3DDhbBHQVXR+laf4oumYx342Rjvm8paGhaf+h0T/XKk99JFDuDdPXicCCHnyKRO
 arX7wibv6dGhGwQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052443_804492_610BB5DC 
X-CRM114-Status: UNSURE (   6.81  )
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
 drivers/gpio/gpio-reg.c           |  6 ++++--
 drivers/gpio/gpio-rockchip.c      |  8 +++++---
 drivers/gpio/gpio-rtd.c           |  6 ++++--
 drivers/gpio/gpio-sa1100.c        |  7 +++++--
 12 files changed, 62 insertions(+), 39 deletions(-)
---
base-commit: f3763403a6bbc3a18379fe4c415bda899a111d55
change-id: 20250617-gpiochip-set-rv-gpio-e1e864768942

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
