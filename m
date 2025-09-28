Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74FB3CAC5BB
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Sep 2025 17:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsbqQyf5NSQCsmpY4TOKz9AogZXqIYamKdyjm3SZ9Es=; b=Mg47tGqm2wGll7
	TD+iGKymqRnZ196GG3MYg79ATsSKbuLytALEUxhFyqSyHnMaMfQk6y2O+iXFOM4816LwhsmpD3iM6
	h+1OQqOh3K7Y8We2clgPnM6lUbPJr+G8TJn/NfrG6elF9u2jfxYfxqyIIWaZfT/ZGeLkK5tA/Krwg
	TBoV5gLZcgQ+J+j0Tu+F3JVMAGonCCUq/SOFjiiafcDkq9T6qikVGEa3mq6vaDgdCnQn36LMc5lHc
	NYljEN9df6A8z3koJaIwd2MsozrwxDEAw0H5lX3+gMX8Lg9KMWl/PGkD+YrfmZUznSUkdk/gWN5B/
	K+Yzao2oz9Ge86wpRzTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2vVG-0000000GwTE-3OHH;
	Sun, 28 Sep 2025 17:48:06 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2vVE-0000000GwSI-0M1g
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Sep 2025 17:48:05 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-b5565f0488bso2622443a12.2
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 10:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759081682; x=1759686482; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bb144XaT3ozq0w1qVMTiSOGlsjiwTNHYJ14plQdks2w=;
        b=iLEljCnGxwrJzRnYp2+9PtFXEZ6OXf9mZE1bScUHmpeVg9Y+NcwD7Qan/Uvm4cNwR/
         jkdPg/Gz3tMdynXPp0wWdclNs/2oMNfvTduWW5WyzBiU1NVmEByzmpGjZuBEBYDp77hT
         eZGaRbPk6FsURVIpNWpk1j+CatMsyE2YgMKC0KTgq9vOyIAhrBJJJKrEce8sTaZnaiic
         hoGjhbk62wR/lD+i0/06dzoR0rjXv5vCKzLyXz1+OzqfMElHB0aIglo4ZVrp/wAWYM7L
         lS9Ae/IrrE7CJnVeWnQUDRIptAMwpNFE1op+bEBZYJzDcCMfS0bDY50JJJfX7I/LLj5N
         5jBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759081682; x=1759686482;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bb144XaT3ozq0w1qVMTiSOGlsjiwTNHYJ14plQdks2w=;
        b=ROyFAqy2N0/HrpIpo04SHLaO6BwjSGdv5ZDEexQjWtwHAdPOWk6sSVMql26dprmOQc
         uWpVkcm5Fk1VpxANNt1GSLRHG4ELE7LOwgfpYCgp22Ifw6ttImRc63DfMIbGnqNR89eW
         AUCNCRzn1OAvyu157M6bXogy0oDQP+Xvi/Qq/Y9hMBqL5CV0FbTNk9FmA1AUZJ1cNGNO
         qp+CO5bS7hDw+BNtD0gwO6xEN990q/FoInQ159CI14lrzEBIXLJL3YkXeueqLMKSznLU
         /TRz35xjY/xSmqhtfdxaTfcKsOSx4sedHuYthSHke5vNSSQ+J9pPJBJ/Jh809NNf85br
         SgdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXf5V6wFcz4E8dy1Em00o14p1LDX1UKucsE+JasU5xJXS+Y+wMjlI24Xn5oWN/juMDv7EYXM3SxMoMlcFJe5g==@lists.infradead.org
X-Gm-Message-State: AOJu0YyYv5P/xbP1WK/NRqn+QCX5vYsDj79b4h2TfFhpu7hRO/9FgMAM
	mt6Ltt+FSaoEq3iuVjJr7dUGhPRZMtR7z9XSazHy4tzzF6jIljcrNt59uQMl3JFFbgQoeYyB1AI
	ZajjwFYW1+OtGm4Bc/bLpQusiIKO69cU=
X-Gm-Gg: ASbGnctW3AB1dOXZ7hp+Cq2MAXoJ8yVmnNgO2iSynymPhXZIbCcMPT3h/ED9WQ2hqtO
	mtziwU8ueZChKVWJuKQfDeU9t+knP68ejn6ps28njymISnmoX/0PmfSba7CrguLtMZIg/ctVccj
	ROwWI0xVndhcH6ozO8fxpaRD0ozv7Y7dvQbe6W3zPO6DfGxEy/8Jbc87O2/GJ5V2gdjRO0bdPsw
	6KgtHagva6HDGxFONE=
X-Google-Smtp-Source: AGHT+IGIhTRX0vPWXRnKGbM7/t9PfWgMfG3icRhXm/bikRRYDgSLLR3zWm4hL7da1xUZ+6JNLVBVdbp7N1oWnUBqBMY=
X-Received: by 2002:a17:902:cf0d:b0:27d:69bd:cc65 with SMTP id
 d9443c01a7336-27ed4a96a83mr141161955ad.45.1759081681919; Sun, 28 Sep 2025
 10:48:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAOprWosSvBmORh9NKk-uxoWZpD6zdnF=dODS-uxVnTDjmofL6g@mail.gmail.com>
 <20250919-lurking-agama-of-genius-96b832-mkl@pengutronix.de>
 <CAOprWott046xznChj7JBNmVw3Z65uOC1_bqTbVB=LA+YBw7TTQ@mail.gmail.com>
 <20250922-eccentric-rustling-gorilla-d2606f-mkl@pengutronix.de> <CAOprWoucfBm_BZOwU+qzo3YrpDE+f-x4YKNDS6phtOD2hvjsGg@mail.gmail.com>
In-Reply-To: <CAOprWoucfBm_BZOwU+qzo3YrpDE+f-x4YKNDS6phtOD2hvjsGg@mail.gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Sun, 28 Sep 2025 20:47:49 +0300
X-Gm-Features: AS18NWDPKklTiLrxKFeYvofRAgeM8OwBQfBPUfJA357z4XaPxxHtrQTv3DSxvMw
Message-ID: <CAP1tNvTD2uhK79VB_PT0JByv_VVy245WH-3a1ZaG1-Khw5_vaw@mail.gmail.com>
Subject: Re: Possible race condition of the rockchip_canfd driver
To: Andrea Daoud <andreadaoud6@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, kernel@pengutronix.de, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_104804_125542_6DB7A587 
X-CRM114-Status: GOOD (  13.97  )
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

Hello.

> > > Could you please let me know how to check whether my RK3568 is v2 or v3?
> >
> > Alexander Shiyan (Cc'ed) reads the information from an nvmem cell:
> >
> > | https://github.com/MacroGroup/barebox/blob/macro/arch/arm/boards/diasom-rk3568/board.c#L239-L257
> >
> > The idea is to fixup the device tree in the bootloader depending on the
> > SoC revision, so that the CAN driver uses only the needed workarounds.
> >
>
> Thanks, it is not easy to correlate this because I am currently not using
> barebox. I'll try this later.

I think this can be done from the userspace.
Build the driver as a module, get the SoC version, then modprobe it
with an alias for the desired version.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
