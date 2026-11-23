Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F9F606A31E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 01:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1WA/JTPb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=WkEKM0OB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tOUzwFbLdwG1YeMUZ0ruqHaqvTygRnUYQ3rSC+Zws10=; b=1WA/JTPbTfsDsCLyAWw42VI+Ud
	+zZYF1Ih30pOoZSIqMBE2ocMc5HFAz+3krK5HumRcDEZ+Z68X+MTc2LNYUZvr/8wRrf3MfPQ8fv5O
	qFe4/ekp3krE76zKvVgvkACPue/ZYuFkRpkj0SXSYMw+kj8fvsSWvrFCTodLx3mvr5taJfocDqOT4
	M/LwJt3pOvZNaNKm8xOz/zg6r9KmawSQUgi346t7e5CzUxOttzAlWf73USxpeenaOePI8MGh++3ml
	CJuwSxYLmhdcS0z0KGcrpgFQJVY4gndSGt0uFd9DeZFg/8D24YKeyyJPoi0MbIXK7i7eWz1UO51g1
	UfX9ivQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVJCC-000000026XW-2cDB;
	Mon, 23 Nov 2026 01:50:16 +0000
Received: from mail-dl1-x1234.google.com ([2607:f8b0:4864:20::1234])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVJCA-000000026Wi-1Bqz
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 01:50:15 +0000
Received: by mail-dl1-x1234.google.com with SMTP id a92af1059eb24-14394530ec6so4135668c88.1
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Nov 2026 17:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795398613; x=1796003413; darn=lists.infradead.org;
        h=content-disposition:content-transfer-encoding:content-type
         :mime-version:references:in-reply-to:subject:cc:to:from:message-id
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=HPgiKAKXJD1IfapqnG6OwznXuOp3qOSKSxNr/yY/XDo=;
        b=WkEKM0OBnQI7hDSJiiTuKvr+sbq4dBlNPNrYBB9obooTTlgg39POCRvXNfVicXZsXY
         p/nMrcLTWnxJzo8p+yqshJW3dvFTBnTyLVB+rUwrqndwDtTgLm6pRruRBl1n6Sv/uiUn
         OfJhBV4ULuo1ecwNnPDgOjgbaORCAUr8gIX15RvhuPwl8IWPKGurseVhHpcDqdvVj82U
         8yODFLvXssjV53tandUEG3yBUBzNRSnAxOcpTiN0YOIo6c7cjl20ftLSOqlTVA3SxZM2
         AnKqhifwyVooT/4HbSOU+i3voPmj67wlIhumjt8jqzboq7PAoS6VRlz/GgBMR5HHzg9G
         F92g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795398613; x=1796003413;
        h=content-disposition:content-transfer-encoding:content-type
         :mime-version:references:in-reply-to:subject:cc:to:from:message-id
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=HPgiKAKXJD1IfapqnG6OwznXuOp3qOSKSxNr/yY/XDo=;
        b=ZcALoM+N8l2WRu4lLQyRKkwY7IujJB6+SgxFcW6oJy5pO7wiT7nIkUfcegPmbf1uhd
         IRpjMwl7ONd7WrMPsnZXJ469Rj2+GGeKIajuyvv+o+oJtwS7m1laKkrCToN+xvGtFCx4
         NRHoLaClFGop0KX4AsBuKIyHXANQ4MXulJhs/7+zEzhz+Wa7ks3H3HyIEPuu42qFW8Ij
         Vi7kFWB/GlFXRm9gBMkkJ0U3mdoEi/4xoHVpmYf0CxEROnsyKf6AiKk2GcNZ6gVqtePb
         rHYRie/vlgiru/JaqfIXHW2/BL6V4Iez7WDZpzmKZXBl8xrp+mQI2deBJLJuOPqNWD8b
         5ZRg==
X-Forwarded-Encrypted: i=1; AL+hErFNHsY66zqjjHvPzgJPwxmDQM/uN8ipbR+PKJUaUTxqBhsq3CcFsDI0yfGoEb5eQ/Qr160KSe5+dcuBMNa55g==@lists.infradead.org
X-Gm-Message-State: APuU4Z90HkWviSmm0OgNwurxW5Plxe7ovNNphHzqbHLOCpXFEqHnfEhh
	HkCwMEWH+WihlRhVZRquNSsXOalHVG6d0rTJNx2Z+TjmWhk6VOQLaKrB
X-Gm-Gg: AZFdTZcoFLkZ/6LkdNSQU3Rfy2wxeObteEWScoc1q9PU3nIVJmpmc2sahYWPX0PyMpU
	98kTo6DbPQcBlIca+6F5/ZcRt3xOAZJbAuJqavlmusr2ELbpaKjABfSlJZDzGJy1UbYab9ndYtC
	AE2rIjV8M0qiURCH1eWOfcIzR55jBQZQ39kZC5Oj9QUaQ/nQtCG5PI0HXVmD9GPLr9Lkb/dlIoL
	GtjvZL1fvmz7M9qBn37yE7gstD9VF2o67cQI9GXMp0JVNhpw7jua+Y5vpajeP9/AkhthwALDkqf
	ck6ZLO7uLH/jOiFjlXwztilDy9uufIBlt4Q7o8VCSpSp9u/An0HEHKSAi5Hms59gr3WHoRB5rM7
	St1B3Msno8IorqQ9KbLBHVYFnBRbBocpCNN0r11NP28IxmTJQfJSzaSMJjSZJST/04cvINFGMzn
	2kR/Z2j/4h3wACtpplcimDvia/013L6BxyLaN4lDCRr821LP/Qa6BsqXekV23/xwmaRhpaRgOgm
	eOayOMhpx1/C+mKSJeVXaVBzG0jFreL1EEUhQYV2A54Te2jxmPOywEiqEUd4EKqe/AEBnHI6spJ
	MWumzP9ZUHA+0Oc6rq/rVSjub6hk+NmBFzSEbBQeEPBR8y79NsnJsQZg9LsrCEMRToiV/w==
X-Received: by 2002:a05:701b:230b:b0:1b2:4da6:bccd with SMTP id a92af1059eb24-1b5568feaadmr8740253c88.34.1795398612828;
        Sun, 22 Nov 2026 17:50:12 -0800 (PST)
Received: from localhost ([2a00:79e0:2ebe:8:f002:4621:aeeb:e0e7])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5567e2bd1sm23364703c88.3.2026.11.22.17.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2026 17:50:12 -0800 (PST)
Date: Sun, 22 Nov 2026 17:50:11 -0800
Message-ID: <8c2d4920319771e3f7edb083b2e831a9@gmail.com>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
Cc: Mark Brown <broonie@kernel.org>,
	Jakob Unterwurzacher <jakobunt@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Joseph Chen <chenjh@rock-chips.com>,
	Lee Jones <lee@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	mfd@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] Input: rk805-pwrkey - enable the wakeup interrupt during system suspend
In-Reply-To: <7bec766f-14b1-4eac-96c7-d7f1cf38021d@cherry.de>
References: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-0-cb12621c1fb4@cherry.de> <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-1-cb12621c1fb4@cherry.de> <avUGEQhSKlko0Fm9@google.com> <7bec766f-14b1-4eac-96c7-d7f1cf38021d@cherry.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_175014_325358_87AC3F94 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Jakob,

On Fri, Nov 20, 2026 at 02:42:57PM +0100, Jakob Unterwurzacher wrote:
> On 11/12/26 01:25, Dmitry Torokhov wrote:
...
> > Sounds like this needs to be solved in PM core rather than hacked around
> > in individual driver? Let's CC Tony and Rafael.
>
> How about something like this, copy-pasted below? If no immediate 
> objections I'll post it as a proper patch.
>
> With this, rk805-pwrkey can use dev_pm_set_wake_irq with no issues 
> (tested on RK3588-Tiger).

This approach makes sense to me (and matches what several I2C controller
drivers such as i2c-imx already do), though ultimately it is up to Mark
Brown to decide for SPI.

For rk805-pwrkey, please use devm_pm_set_wake_irq() in v2.

...
> >     Take a runtime PM reference in the regular suspend phase and drop it on
> >     resume. This keeps the controller usable until its noirq suspend
> >     callback, and since it was active then, pm_runtime_force_resume()
> >     restores it in the noirq resume phase, before interrupts of child
> >     devices are handled again.
> >     
> >     Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>

Probably worth adding

	Fixes: be721b451aff ("spi: rockchip: Resolve unbalanced runtime PM / system PM handling")

as well.

...
> > +/*
> > + * Child devices (e.g. an RK806 PMIC with its interrupt controller and wakeup
> > + * interrupts) can still need the bus during the late and noirq phases of
> > + * system suspend and resume, while runtime PM is disabled. Keep the controller
> > + * runtime-active from the regular suspend phase on, so that such transfers
> > + * work and pm_runtime_force_resume() restores the controller in the noirq
> > + * resume phase, before child device interrupts are handled again.
> > + */

One nit on the comment: rockchip_spi_isr() does not use IRQF_NO_SUSPEND
(and pl330 DMA suspends in the late phase), so arbitrary transfers in
child suspend_noirq()/resume_noirq() callbacks still will not work. What
this actually enables are PIO transfers in the late/early phases, during
device_wakeup_arm_wake_irqs() before device IRQs are suspended, and once
resume_device_irqs() re-enables them at the end of the noirq resume
phase. It might be worth wording the comment more precisely so nobody
assumes general noirq transfers are supported.

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
