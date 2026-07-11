Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E39B4C43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jul 2026 04:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KF8118skkFi0D9pvuze3FfwGCGsk1We3VAia1pFzrHw=; b=oXQjzOUEA4d1hS
	aoMLs9etbVVdHbOQJs0EPePIRuRrRdwT64q23jhg7rFlgnaqSukRmtQ5chRFxvgCA3JjIOuiC8GH7
	BUbBcWazebrXsxsjV/2v/5l+95iLTYeKstnH3q8r64EMSjwF/6c1polAErfgRtCfIgkdqPSja/G9Y
	wAM6QuZL891mx4m1pyvnzLZN9aFtqJvO8el4KqgBZdpD56AcO/XaH6QadlJC59AQu034RamxuWNTQ
	k5zxEIOlUJ3tcwiRtfYsJXXTVUfchDCwAVd6Rg9i6J1XsfgKpZEc/Us1yHfVJ1j8JRxsV90IAaYBd
	BCG3KGHM0OWRk/bVqnWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiPeo-00000006Cwd-18sk;
	Sat, 11 Jul 2026 04:49:42 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiPel-00000006CvQ-0B6S
	for linux-rockchip@lists.infradead.org;
	Sat, 11 Jul 2026 04:49:41 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-8486ac3f347so1949897b3a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 21:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783745377; x=1784350177; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qesMdHKmyxw3NJ4a67qnIHpz73OEBeBHn6uWkzO1uyM=;
        b=ojy68frid4JlfDR2nn8rSAt92jT8B3cNedtXYQxUrDE6jAvZk//n62HcxOJ1U/5/mb
         Am0xFQ2rWf6ZmbUqScTaj1sQe8nO5CVaaPNilxSu26KVxUAVSV87+AFBRrvamLrxI7Fr
         NPW1P5/0Rb4utY8EOyO8mVWVn+p/AZO+/CoraGfwkIKSRBJHahguWjrwUrZu4rMVhU6u
         mtu8jXQ5k2TcJBCNP4QxIFI/XpOWgxl4Sc0KrK+VklYtLswiBGp2iR00IUNUfSXhyFCn
         qVVdaMVLqTR/p6smkCmy3VcQQmCaOREF6qDPNRpQH4rhoJ/YYbs14uDoy71n51H+jCvg
         0Zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783745377; x=1784350177;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qesMdHKmyxw3NJ4a67qnIHpz73OEBeBHn6uWkzO1uyM=;
        b=SLr8/sLq7seAcH6uAexoF787VizlyKEDwajj+10VAooby/m/nfZ5R+Tp5kihKVbxNN
         eccUYZcbsZIMfGznmSKcte0ihNEcFLpp1HnLOR8Ab7m1JUDzOtUJh+ueXgLlyu8efOl2
         ycZSGIOuuda0PuQLHCEgXypBi8mKusnlmldYrpWMDtf7uXbyy8DozZ27r5ob4oTHcTVu
         /ngm/U9AhVmeTF7yzJmgUOz8zkLnbS4ZcsIPPe95awPK492Z6z8oaXgwGxMlux0KMHVf
         vpcV7b4zfALBddzApnJUBKLrVgtSoXyghytcNyohLdMhs7M/WJZBD0yh2hzi5L0FemFO
         thcw==
X-Forwarded-Encrypted: i=1; AHgh+Rq8/Gw7yJIUKvvbi9WQ3j5jAc/YXVaC6232GQH5ZruFqq3z3qSjc2xfG9uVRR6aP8jS6jNdQ90rIEamH/CdSg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxeXefzpeYFlhHfLYFhRG9QrJihD0NC+YGClompWhUmqw2ub6SC
	JxbkQMBuyspvgofqZwfZoyBnE0Ksu3vo2a7E/RMXD7tg6oSPYYCxdoYV
X-Gm-Gg: AfdE7ckYolrvqMmfBOv6ZU3ugUESKz4wOx2FxH5pqrVCR65cTQRWmf3L4RHWLCwbRdH
	2ZQCQPi9TlzNsoKz8HpX0zN6xR5uiBc3av32Ie5PFzMt4iT7D4L11kzxloN1+T/I5t1cRKZS2zV
	wmtYSeVVnDC5OBdcWFbeXGx/H3GoAl2bf/a7LPlpyQ3kSO6CEzWZEuT2Bn7Q2SX32btTEaPtb1O
	VTd63B6swul0HlxFlxEWcurzO5ZDxctAkHrY/izZ5Oc2xpduxTdVUOBl+4+VT1CpmdWCmP9QUlJ
	ls9pBRpjr9cgUMpg9VUIcqvpRqxF/z355xc88/fPZKRDc07bpFNLgvgY75IKOpxD9itFAJQrC44
	k4oa9gae2TlAEG7lsYCbp34u7W2l/T2o/IN4tb3mFohEVRzfSwLb4wNK89b/dGlne+aRE7eTRhK
	z+7T5xSnUPbs9qHiLM1qSgXU4BMORdLwi4tSdhrtke0x5KLh2xNeluEg==
X-Received: by 2002:a05:6a20:734f:b0:3bf:6763:f0d0 with SMTP id adf61e73a8af0-3c0f085657fmr7458822637.4.1783745377459;
        Fri, 10 Jul 2026 21:49:37 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:d42f:71b6:335c:aceb])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-311a6115e61sm25970082eec.22.2026.07.10.21.49.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 21:49:36 -0700 (PDT)
Date: Fri, 10 Jul 2026 21:49:31 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Andrew Lunn <andrew@lunn.ch>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Gregory Clement <gregory.clement@bootlin.com>, 
	Frank Li <Frank.Li@nxp.com>, Robert Jarzmik <robert.jarzmik@free.fr>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Greg Ungerer <gerg@linux-m68k.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Hauke Mehrtens <hauke@hauke-m.de>, 
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Dominik Brodowski <linux@dominikbrodowski.net>, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com, linux-m68k@lists.linux-m68k.org, 
	linux-mips@vger.kernel.org, linux-sh@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH v2 09/10] Input: matrix_keyboard - replace linux/gpio.h
 inclusion
Message-ID: <alHLK4O77khiKwtW@google.com>
References: <20260710211954.1373336-1-arnd@kernel.org>
 <20260710211954.1373336-10-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260710211954.1373336-10-arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_214939_075773_E2470632 
X-CRM114-Status: UNSURE (   8.97  )
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

On Fri, Jul 10, 2026 at 11:19:54PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> linux/gpio.h is going away, so remove that since the driver already
> includes linux/gpio/consumer.h.
> 
> Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Adjusted the subject (s/replace/remove) and applied, thank you.

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
