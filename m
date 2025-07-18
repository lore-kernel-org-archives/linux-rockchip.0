Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0280C83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 08:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkitkSxmWGxvNsHkKOr0+ZTmpL6LKrRa+1N52VIDRT4=; b=YWbmsmkiMFBw+a
	YERhSqHD23LK49/jjqbDVRqn2+aulqBBNnDOR/8jjBGxh/g+MrSZ5tMZYNgZ9Jrvh75mkBJQxbg0r
	IBcLLU6BjX765ZLHV8ivKytTy5mqKnHQXDNt5z85DM8ENfTpyLkjbRcyZzzCeQmuQu3WNjfq97Rcy
	FSSnaYXtPN87mjusBPrsQ3GCrQ4QUHvEcsIadOoO6DiC1dNDuRAXaLtxgXVIfFAAHJRkmLtvnQE8K
	R5MQ6M1l0QgIVMpxmvb41fuVcUIX+1X8FxkVXe6tQ0qKEefffQ5NnUZs82Ka5P73g2wpyDH29gh0G
	AKo8ITAnTDDfyqufQxXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucg1y-0000000Bxk6-0MM2;
	Fri, 18 Jul 2025 08:01:22 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucfxK-0000000BwZg-11i5
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Jul 2025 07:56:36 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3a54690d369so1446228f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Jul 2025 00:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825393; x=1753430193; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yIkRard6W+E126nlrFH68FBbJJING0uBmwMIZSswXsA=;
        b=ESsFpS+gfaJ7LYwX2UJrgLRCdvwdIJBni/LoQDwflaHPRze5RRMhg7CirBYVxisl8i
         BLi7i1KFwn2n/f7xdCkCTNcRTCwbmSbru3pjMTHTAMlibiWmqlnzn0+xTdtrUq4MVu5V
         Hjuy4hG+Yx5ONAxuGYutUnRO26lhuE8D3BytdBntAqsCdTXv22QwO5VNu/K6CnzV0Hot
         KBhNXFKYaHu7RMV7Kshz48le+DPA5OCi/M+JfvyauayA5ZEuQkJJ+7x5jLe3GeWKL2Jl
         d7HVV63f0fMYdlyUg2ckOsWcORx7SIZ8QM9GVnK/P12GwHKeS/0JG7j/OlWSj8Se+HDc
         ZjAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825393; x=1753430193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yIkRard6W+E126nlrFH68FBbJJING0uBmwMIZSswXsA=;
        b=JK7VDr2InP18iSjxffEPkZdbLyGgCCPDu2GWYhbdXRXUT9U2KKxmj6hZJEeuueJHKb
         imi/pllK3VR0+Znnelxw7Bbo43CigOg34KS4H/LqaBdzpORq8IH1P+6WOwUWEEVI8Eys
         h0bqiVD2QsMegPCgDn85zajnaaKiagIgnRunF8x94WZsXCUiJSbNn24Jj5E7onyXscLP
         Kv2JIXL+9BBLv4fcT9B2i/FDEbRNTDxcHCDR13b3njkANCed6nqiWlz3bEwM0/16EdP8
         YNjmvBJl1Quo5XjXebwyUY5EfGHCdm/BfvYOPEpizjQIyOKGjOediv2LV+G2Ov+bJHF4
         yYRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnf4I2n0PlYNDKvT8NGtloCapR6L8JYb/5rgjprrwxDwnEcedqSpU+2avNOUTTqp/+o/bLR7D0NlrA4x48Lw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyx1Tpn0q5Ak61a4MECoM7QrrR1Gqf73RmhU1XFvPcI+Tr8d4rt
	vH97+rpFa7TyUoppswNmwoL8gO3GzLmcZ0oQSFT/Y3tJlAZYDsvVXfjctOFT7Um2Lb8=
X-Gm-Gg: ASbGncsiAwMcKGBmnujauLcM3KkM2hoUiNyJPkqrh+5DE+DMdN7WiAsbMN9ABuBMt1j
	CyjvtwBIo1+0qkbeBfVlQ2wNIrPUIHOGh6okp0Si6AHQbdiyWFVzGLk0IALxc5gCuWvSmkgDL08
	vALlU9NdwB6p0FGLEpfN5eyss+PSgSC4FEnriVe3JA54W2gMKgIhOrwEoNZv4D+nbytlF3Tez9I
	+RVb0OVJI6hy1gh9ClHJJgVLQ8ojb7WyrnC+uzinlbHWscfaITbcleHC8vRBH00Vf969when3yY
	1CCUhPG2baeqfWd0xDX//mSNQhrOGaXH97hiDIahnnH/Hs6sqj201j5fsC7KoRIHATUm2IRwaUf
	LxzkQ+iW2C8CWpnnqVyVM
X-Google-Smtp-Source: AGHT+IFR7z0xrtW7kV+L/PWsVn19Mve34KO13llGmq0De9UTBvi6IEowVSVAnjHLfBTTi45HhGu+EQ==
X-Received: by 2002:a05:6000:1a85:b0:3a4:ef36:1f4d with SMTP id ffacd0b85a97d-3b60e4f2c6amr7520566f8f.38.1752825392621;
        Fri, 18 Jul 2025 00:56:32 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:32 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Lee Jones <lee@kernel.org>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v2] dt-bindings: gpio: Create a trivial GPIO schema
Date: Fri, 18 Jul 2025 09:56:01 +0200
Message-ID: <175282531516.45055.8482528409833116992.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714201959.2983482-1-robh@kernel.org>
References: <20250714201959.2983482-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_005634_293187_A3C3B99B 
X-CRM114-Status: UNSURE (   9.89  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:19:51 -0500, Rob Herring (Arm) wrote:
> Many simple GPIO controllers without interrupt capability have the same
> schema other than their compatible value. Combine all these bindings
> into a single schema. The criteria to be included here is must use 2
> cells, have no interrupt capability, have 0 or 1 "reg" entries, and
> have no other resources (like clocks).
> 
> Note that "ngpios" is now allowed in some cases it wasn't before and
> constraints on it have been dropped.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: gpio: Create a trivial GPIO schema
      https://git.kernel.org/brgl/linux/c/2ace85b5bbd065a4e037970154854dc2b41d7b31

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
