Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B536C3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 15:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17NinkZmc1qzacp5a0bSAc1NH2VQUV52dbLWOJLCZf0=; b=NJ+4EoWTfI+uvD
	P7xHPlVjkFt+1aZrSfbMiQ1CvgxKYzN8TyDh6llGsZaeJIQ9fuSQKfchMYubFaLKCQ+WJTJwirTsx
	iHKwbn3KUodsqGrz5ZATIYP8j+C8wYGy5Rw2a2MCe2oGEVQcJiV/ThF7V2fOrZ4kSfaqoHWQZP3cD
	+6KKEBgg0fdVyKfZGZJi5I3fBEijut4THpchhl+mC8mM9zh5LoZugFlKuFFU1pPxfgf7HC0vu9PAO
	8KResXmShXwVLo5HIgxIWgme4qw1zpSPGAKFB6xe7/7PAi9yqFNaJeMLjyd/BPEb1IljBHRQIS2Lx
	rDJowddhDFBz9pDAfwsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZB0Y-00000001eXs-2q3k;
	Wed, 31 Jul 2024 15:12:54 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZB01-00000001eMp-0Hvf;
	Wed, 31 Jul 2024 15:12:22 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1fc587361b6so41836455ad.2;
        Wed, 31 Jul 2024 08:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722438740; x=1723043540; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g7QMclGH2TxOtxr0vvWT8YB638709+b/1APHP7s32Gs=;
        b=IbWO3BloeltH15hHgV0sCs3+adupdxBOibraq5Ucq0h/3pCF8a5kNzGxyLHCb/lADf
         62q2wSDC1vKbVvD3ftwMzfz26ArE5/AVo+9qCWvuPIRwY4m260RBFHFFmKiEPoYna6Zx
         aqwCD+UnmH8Pj41a7M/OnE1gsgJ4OpvUnJXidJB0FuSFIb5EntWPUQzWFHvAWtbqnOEi
         t0FROdYeVnvEHzuVGZIRosPjUYvc0hsbDvQzuxdZvJz4XY4+VT0tutUiXmnQsFxHAKM7
         CFi/r9LsUeZobJGrzoifnqwgy7Yldor/KOTDZeo5G4vp6D1mLvDSxO4XET7nhLXENijv
         tnSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722438740; x=1723043540;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g7QMclGH2TxOtxr0vvWT8YB638709+b/1APHP7s32Gs=;
        b=IzAgdJ/2w0ffsHNvUDqMUSp5v/tSxv4IwqL2ylQn/gzb9/mzDqJTQz74afW5ggxPvR
         mfUpw7YgGEaFW6leE7vZs5kYMtG6wMd7yXmPsH2j7h0a0rScRq+Gqr9m9P2njxy2vjXp
         N/NL4q0fVvKwcXNpByMlwrKPdbtAvRtXKjFqSuj6UxUHx8eHxoNKzh/oybGYW/Zcztky
         fb6cDxcoYD9gkeHxAHIsAOamGDwzxSnYcH5g5FckmLyor51oitxKLTGW+7tLE+xBeVOq
         EURi33bsSQgOH2sSM/nVJALZw2AlYnPhGlsbiQXrxP3y6PvE486T7veNdvHj6ukauG85
         Dgmg==
X-Forwarded-Encrypted: i=1; AJvYcCVfkb7gFF3C0rJvr7bu12JVgjlfojefN592LHuZ+EQjJAqKeOEqpWrIh7m+7C3NkTmtEGwk1bd5EZhGlJif2VbhWsKbHXGb3WGdlFF1T+SG0a1Ov75/dGHmPhlnRSQPCGOPINXfxugaVs+o8p9jDQdR4kcE/HJfLTE=
X-Gm-Message-State: AOJu0Yx5/ROEwyKFICmb3L04XPay7ueN2lfMIjORPPgPqip4GLYSN39c
	428x+PBZtwEQHeoRfltguCW8rzuBszb7eElHMjvdd0KO4Dn9u7ZJ
X-Google-Smtp-Source: AGHT+IGuuLV/I6m/cx7VRfU+gmepK2aLMG/Hbrdi2xPZt7Fze6quw1img0IlEQlVitL3iOAEUcrp5Q==
X-Received: by 2002:a17:902:ce83:b0:1fa:2401:be7d with SMTP id d9443c01a7336-1ff047e4585mr136680845ad.8.1722438739461;
        Wed, 31 Jul 2024 08:12:19 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7edd813sm121600575ad.170.2024.07.31.08.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 08:12:18 -0700 (PDT)
Date: Wed, 31 Jul 2024 08:12:18 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 4/8] hwmon: (amc6821) add support for tsd,mule
Message-ID: <5d5c44cd-6320-4fcd-9409-f3fc97bc5389@roeck-us.net>
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
 <20240725-dev-mule-i2c-mux-v6-4-f9f6d7b60fb2@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240725-dev-mule-i2c-mux-v6-4-f9f6d7b60fb2@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_081221_147447_7A45D1FA 
X-CRM114-Status: GOOD (  12.21  )
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

On Thu, Jul 25, 2024 at 03:27:50PM +0200, Farouk Bouabid wrote:
> Theobroma Systems Mule is an MCU that emulates a set of I2C devices,
> among which is an amc6821 and other devices that are reachable through
> an I2C-mux.
> 
> The devices on the mux can be selected by writing the appropriate device
> number to an I2C config register (amc6821: reg 0xff)
> 
> Implement "tsd,mule" compatible to instantiate the I2C-mux platform device
> when probing the amc6821.
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>

Applied.

Thanks,
Guenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
