Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F329AC44501
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jul 2026 07:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksfmYCjQtl4r8gttiJD9kVXSIw81HsDkiifocvKxTjs=; b=CUfHtAAlG3yZYQ
	oICHncTUDfQFw12YGv654QokCR3cRPUQAJvm2iq3d0RBAixhD3hTkexFubecxzwlxJDjMPb3Q1ECd
	xZaZ9c3ydbro/97ywVqMlqgFMNzGU57nc2S7eYPJ41wWim0NHh04w/BoidBNAL8mQY+3aYpajhNSV
	stJbaZzTwqMqns2A/t+mPiBTaXL9lSJ51UPFKl9SCvQxBtyyqtP3oGSHUWskM5ps5BhmHw1PkT0V8
	wSaWaeQ+eX4ZGapBH40r8recVYRHU7kdF5MTzv7170OXx73VOcu0Io20kfCQ43E6+uLbe6DJP3CQd
	o2ZgUYeCK0D1O+IMx6ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiSEH-00000006JpS-43HR;
	Sat, 11 Jul 2026 07:34:29 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiSEF-00000006JoO-3yrY
	for linux-rockchip@lists.infradead.org;
	Sat, 11 Jul 2026 07:34:29 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5b018fe8318so1309065e87.3
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Jul 2026 00:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783755265; x=1784360065; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aBafLctpeA1AoyzErbEa9EGgxzwRbfKFWoPKc6c7bv4=;
        b=AKV2hVNJx40YInVxrPSOjsFiZJ60kAq4HIjdmsqBjnaTuHCeSSmLQskhqBH8aIJKvj
         57E1OTI5ofmylhm+P3MnNQB10+ZS16wIu0392S3xn6iPJT6z+kHLAFk67S1lctpJTt5W
         QQNAlCxyI25efJPFPOIBmNxySGXvI4u+dI5b3+zgUMZ5Di6yojc6HwP+5Z/Txi/7ncGX
         G1qzJ8JCS5Vi3E2t/bT8xuJuUxXKWIF7489zIXw5EIUtQmMbSbpqLVvdcCv+SYV1tOdc
         6WIi7Iicvf4NJ7yswUKdScZBt6MYoBM6Wngm9rO4cGwVciwaRIFxGE8lERHvIt5vtTy1
         53Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783755265; x=1784360065;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aBafLctpeA1AoyzErbEa9EGgxzwRbfKFWoPKc6c7bv4=;
        b=ll0xKGct8rbOdDLrI5w0qq2BKHtKivIjwUdH0b9+R+2EpRYKigiToO7iurlpo+HEHi
         VNVZY+YgvrKGJcrFK2vkzQ329ovo+NL3xPvhQx56kB36+iLT6uX6nxmWfPsTbMVha1lA
         d1t48ZJLvoo2U2rL6xXE3NhdZOOsdH54p/2eHrn8LOHEFu+SGomrm0Tl41XXhShp8o+H
         hvpcCw9+aAyczKDT9sbaQcAS5G7ptyPpH2YO17IrhElHG3RxuUuoEFBO9jzTlKNwqFwK
         Cnc1IZerUk52WMz36Magv9xgJT5QaTHjqPs+FBxp2Nug58Z0iXdlWqe8VXMpPGDtDtWk
         go0Q==
X-Forwarded-Encrypted: i=1; AHgh+RoN1j+pLNc/uVdEadFulyRsOoFB3ZsrFkx8YmHg6t+xCGzFP0zH+Ei6qH1537gW3ENE8A1BI89m0mB0KFMGCA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJ7lldQRtDn/b+YjVKRv+96Hl408+Ep77tOJqjo8A6a4bxh4l2
	tT1eZLtvERaBwczMcVJT8qfNsGR+o+XwdtUnYlvk14wSolQ96Dn48OLD
X-Gm-Gg: AfdE7cnUhj2p8k4ViD0QGcxf9RVlvJZD0Po6yyzkidJIgDAq9o9AszGdi6nRBEpnWK0
	IFzPHyBnB2EPdhhpRrPD6jFzMUz432w+wg+YFsIAOv4ERSvx/WrdrUm74FMWCSIIzuRtJ9foxvW
	yp3fLyILqAEY7+EXOrSZv7d7rjkLNT0LkfFzoQmS4Qrsi2aRGarsuD+cJLVMxIsLlxfz3yzlF9W
	CApRA8ot8co9n9uCrU3eP2DASnKKD9GWAoFDxkSM6NeoHXRtxX59XahiETAz3NIQTQvLEq+/K1s
	S/uOwa4zSQQRpnUVKMZkIKTfrUskgxa55m0/kKUGqcc7N6z4oK1sRtssxr1xhK8oryyLyN+u+dA
	QMIpixeeNTVnW20aLfToqk88lubnkGL1sTxdlktPFbx9+HjFtDb/wpmc3bqloBA1mNP3YUHCENI
	yyhJ1utx9XgZf6gedIGpTYjeUWxMCMnNHuiCjsqMcqB5nvtJubPgTfnEPEz2nIwd/5LWfogg==
X-Received: by 2002:a05:6512:3f8:b0:5ae:bf45:e3be with SMTP id 2adb3069b0e04-5b0236689cdmr321070e87.21.1783755264967;
        Sat, 11 Jul 2026 00:34:24 -0700 (PDT)
Received: from ?IPV6:2a00:1fa0:4322:18e2:4e2b:60a6:4ce2:33fb? ([2a00:1fa0:4322:18e2:4e2b:60a6:4ce2:33fb])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b01ca9dd41sm1117527e87.48.2026.07.11.00.34.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jul 2026 00:34:23 -0700 (PDT)
Message-ID: <de1d491e-159e-41c2-b145-4d09db091031@gmail.com>
Date: Sat, 11 Jul 2026 10:34:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/10] ASoC: replace linux/gpio.h inclusions
To: Arnd Bergmann <arnd@kernel.org>, linux-gpio@vger.kernel.org,
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>, Frank Li <Frank.Li@nxp.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Krzysztof Kozlowski <krzk@kernel.org>, Greg Ungerer <gerg@linux-m68k.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Dominik Brodowski <linux@dominikbrodowski.net>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com,
 linux-m68k@lists.linux-m68k.org, linux-mips@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-input@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
References: <20260710211954.1373336-1-arnd@kernel.org>
 <20260710211954.1373336-7-arnd@kernel.org>
Content-Language: en-US
From: Sergey Shtylyov <sergei.shtylyov@gmail.com>
In-Reply-To: <20260710211954.1373336-7-arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260711_003427_999732_B62EE0EB 
X-CRM114-Status: UNSURE (   6.37  )
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

On 7/11/26 12:19 AM, Arnd Bergmann wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> linux/gpio.h is going away,s o use linux/gpio/consumer.h instead.

   s/s o/ so/?

> 
> Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>[...]

MBR, Sergey


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
