Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 659EBC27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 09:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmEnNvb7dzmESJ7k8OQxesGsk9IGHJUzYg1ndi4qqPg=; b=3RbSbdJjfMsdjf
	vpePmTw3w1uC5zaCaAo0UBSoZiBkZtlpBWPnAFrc5BrpwNBvOR9T4mKJjd0aa7I98HU8TU5PkYnCQ
	k7yHyBHCKzW3Mql7C03e/sv0+TiWJXzb1OZEQMshAK1XZcZRz+/Ox1NGX0ZgHfxlC01fcVlLONxOn
	/QU1SsKLWJic8AYaSo5nwpip31vXKbGgM76vRlKSaB1SVXlRYrODR6bWYEGyUl3+5PVghszhUqgYU
	5bNq0OzRsSOqM5qnuNg8rFQRv2EnbNG446XNLaIVXxgcxo88dnHCHBgrRNGgsgLAzPkawJEeec6EB
	FDI/CVoYUSiQrU7VX0Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMOyk-000000069VE-3bZI;
	Wed, 26 Jun 2024 09:30:14 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMOyd-000000069Tf-0MHG;
	Wed, 26 Jun 2024 09:30:08 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-70656b43fd4so3869308b3a.0;
        Wed, 26 Jun 2024 02:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719394205; x=1719999005; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cZWxBSiO/iJGBZwpSi/BIu0JIjVhS5+evAWr+FNRzAc=;
        b=NoEF3H2MFpijP/aomrMbg50+i9cBRENe2R51wyJC/oV8D1p/ge3H+xpDzf1jGkNqUZ
         KM8me24ccIPeLdneFq9UXyr9WTcQCQR5utuhHfaYbQ/3+NLj4ciD3MWcCBO2+iioslBr
         8Zsf9u7YdokJad2uLcGBewnKCrZewhNgAZ+YbHR00+WfeSROnLSaSakLJRQgL7Ti0rT7
         0SYzQ8Dm/7ibYmqVoogMcHu4onK+Umwd9FijCcY19SsFz+gK9rcP6aW+dtOOF5cid89M
         Ozxr6tCOgje6TCOqNHlTqCYB+dBXA1VIHBWrthi6muOazfWtF994lVCRKoQVUnXGqpSZ
         uWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719394205; x=1719999005;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cZWxBSiO/iJGBZwpSi/BIu0JIjVhS5+evAWr+FNRzAc=;
        b=LZWl0lJtjC3OfvSkDNaXNvH4NHo2gqutAz0cdIwP5jhooOXvXsCWUG1IxYWg4cHiHC
         0s93YA1DwN/+M8oHRjNwQ71fmRX1hmAjOWhfhc5ZutSn4WBtuHcHuEkwdZyZTtLttAvq
         TZ/Sj1mvYryrLoUbd3TnRasIJ5Bq96/fCTZKsCRGmj2D1F1NS7BTkU9cdiiZ+pFLGZhM
         DM8D33kB9VoItZHi97WlNw16YxfnaFNkuUBaZGm8oRfoN3jqbSFhlBmXBA8GFnDGIwFY
         SmKurO65xsg6NOgobVLZUtB9EFRN5HVcgOhbguQI5XEn5r7ZqR14I5znyNzir1YmBGwf
         7FXA==
X-Forwarded-Encrypted: i=1; AJvYcCU69LarbU165/nVkC/3oEZLPVpVf58L8Dkxn8hW12cYVJCZX8XLKw7xCAmZspKOyib/69sGrtupr97qYdf9feHoSi8lJF1BasGQ+VVjjOkkCZFwihEYZiphqXlmacUNNjArQc/2LB9Tr2XyxT9REFi29+lGIeU6aQs=
X-Gm-Message-State: AOJu0Yzm6TfLETRkOkxGe14qnyvDD63CpyVzaYuMVaCmvAClqWL+B6id
	zUZMSZ8TQzxvsP66P7GhKY5r9rSmYbZd1RH10AJK5kaR+u3wY+bT
X-Google-Smtp-Source: AGHT+IHZLTWWWiK7JVATb724zAbQNSxCuFklY5BX1h7VZKH4cXhxSYQMi7uVau7fHMxpC0LqHr2cAg==
X-Received: by 2002:a05:6a00:2d5:b0:706:5aee:b987 with SMTP id d2e1a72fcca58-706746b601bmr7122207b3a.22.1719394205361;
        Wed, 26 Jun 2024 02:30:05 -0700 (PDT)
Received: from localhost.localdomain ([221.220.128.96])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7068998497esm4994220b3a.15.2024.06.26.02.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 02:30:04 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: detlev.casanova@collabora.com
Cc: andy.yan@rock-chips.com,
	benjamin.gaignard@collabora.com,
	boris.brezillon@collabora.com,
	conor+dt@kernel.org,
	daniel.almeida@collabora.com,
	devicetree@vger.kernel.org,
	didi.debian@cknow.org,
	dsimic@manjaro.org,
	ezequiel@vanguardiasur.com.ar,
	gregkh@linuxfoundation.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	jonas@kwiboo.se,
	knaerzche@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	mchehab@kernel.org,
	nicolas.dufresne@collabora.com,
	paul.kocialkowski@bootlin.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add rkvdec2 Video Decoder on rk3588(s)
Date: Wed, 26 Jun 2024 17:29:55 +0800
Message-Id: <20240626092955.530229-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240620142532.406564-5-detlev.casanova@collabora.com>
References: <20240620142532.406564-5-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_023007_277442_F8F61686 
X-CRM114-Status: UNSURE (   8.45  )
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

I just confirmed that this driver also works for rk356x. I tested it on
orangepi3b with kernel 6.9, and chromium can decode 4K H264 video with
hardware acceleration.

Here is the devicetree patch for rk356x:
https://github.com/amazingfate/build/blob/4c3564bc82b8963246450d3ebe1ad93965e7c22f/patch/kernel/archive/rockchip64-6.9/rk356x-add-rkvdec2-support.patch

Please ignore the change of vpu's compatiable string change. I did that to
disable its 1080p h264 hantro g1 decoder.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
