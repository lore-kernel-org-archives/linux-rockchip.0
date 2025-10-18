Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B42CFCCD184
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Oct 2025 05:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kMzomyIZ0a/j4VS+hvhsz8OtI1DVKtKf6U9bz8lOII8=; b=bGYnljFw3M9hN2FxnRIN4KVxJL
	VO/DAyiIguQg+Bi5FSJZ52yIog3ieTeQ1sLbTThtWvafMhuhxN7z+HZug/55POOzwni2FeEvsQY9x
	k5UXIaDK2bnUloLHJsvqu6VbC46QFebsDMOohyi19KmUBX3e29bn2H1ZniqrVtGOOMRoXVfXKK5TY
	NQA00x7dqBNuCAbnni+Liz2XA9OdARZyCGFOxhjNqg1/hEI9+fgOgPcXI921u0wY07uEjUfTzv0qK
	XugziucckW+Bs/R9dcG5QsAE1KeMogYXRCKvp881B03n8t0bZSMK4q6bRs1seaVMv5KdZnHW8wdUE
	z7mhNvUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9zrO-00000009a2F-2Otd;
	Sat, 18 Oct 2025 05:52:10 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9zrM-00000009a1Z-0Pk1
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Oct 2025 05:52:09 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b5b823b4f3dso455247666b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Oct 2025 22:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760766726; x=1761371526; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IkVWF0ngwpu5gjmUkFjpcBqAffFGeLSngYlAxMCWNV0=;
        b=iu48dSjBltVMX2WjszzZFiyUPfJkCDFTTg6gfHPR/NMpWppaPCsqezC7CB1mEfmjT5
         EuMyLKn8qXklwVtVKg8HIpf7jwarxmXWGTeuXz7WvoukA+hKCEYqOtaBd4yGzK9jNU7t
         Wvrh2u6qrwBaocOM5dj/H6Z6s+g/PwHtq6IvQBhZgS68Wrj0xT11fSzC7Wz9dQbEel2U
         mKqZHAOoAwvVsYFXXiznJjSFgKmCyMX4UJ4Vcyzey0+USCcN68Qh7XL4fjj7ERo2v27g
         9PJXNuas31ZdXNzqLTC/h7qGM7/PL+glA4iFiR3JQt78meQfnnkEMGWhDHMzsnbRbKnn
         EkAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760766726; x=1761371526;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IkVWF0ngwpu5gjmUkFjpcBqAffFGeLSngYlAxMCWNV0=;
        b=rC/IxjpRjuhNhub8R5Zlw/2vTiVHc/5TboHpzTz83YDPaA+MAUsAOOcOkDe9WV23k/
         J4YbyhNJLfkFtAeffWX+7OVp8b1Nu7hBLI3JVKkI5sOm+/lBlwqg22B+rr/KfrGc+Oc0
         BsyPW17FQIZ+assLag0IzV+EENZlKzZPIkUCDX7Tnek/aR3FyCT2QzgNTtcw8SVtvC6k
         eEva3TL9py6bADfvxwflmVultbiScRf+714tBOglAhXa5yyG8WydClbhwq1f/dg+B/jw
         js/ea7BOtlJ06X1L/FNY/3UpwzKHny37iMGW12ZQM+Tq6fQXO9G2+qrYpO/tNlF4eIdP
         NGNw==
X-Forwarded-Encrypted: i=1; AJvYcCVlOhqT4Een0MKGzyYObGll3AjC3RBwqY4qfrpYXmndup26K0XQlIWJJe22Qdbx7TDuyVMNvTL2jU6hPociVw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yydwli01x/6uk/XILvO8oPBX9mzZ9dHbsUTl4TkwzJrqm7gf15U
	kj1o0MwbBYXWiVEn3k8ak267bbcDjhQ2zT6KxlQmLmxmJ+2oHnQOkWs9hu3BMOJjl3V9OO7JuXB
	0PlxuhonK5SJmunYwKxRJ4ZqRcYcZcZI=
X-Gm-Gg: ASbGncub1lSdzAWLNRxnmFnzC+3MpzUCyAlBJMInerZn6v6ZqkddWKV+omUUnkJXdOH
	YTcaegDfS/DpjoBHMNYR3629OalM0/T+v3VVrQz9LwVqSpLhBezBkgfSQxhhY5KsWHtf8AAzw+6
	jnV68T4FP1V2M1UiO5Wl/uUzfkL2eQf23HZoGZS3qhYcjHabH5sgazSnMGdQ7fog+f9ivt86ZbF
	6mRfzT4bue7CmTjLHT9XhzHl6bvZIpCrnr9hq9MgwFSUthczG+/y7msNaQ=
X-Google-Smtp-Source: AGHT+IHuqMvBUAMmL2+i6khAnSMhUO84EZpiF6pSY+Ggw9UrirqcHM0DEhpRmnuNAVMZheRxglA2Cg7yTmFpgfufuzs=
X-Received: by 2002:a17:907:980f:b0:b3c:3c8e:189d with SMTP id
 a640c23a62f3a-b6474b37113mr708732666b.32.1760766725511; Fri, 17 Oct 2025
 22:52:05 -0700 (PDT)
MIME-Version: 1.0
References: <20250905112736.6401-1-linux.amoon@gmail.com>
In-Reply-To: <20250905112736.6401-1-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 18 Oct 2025 11:21:49 +0530
X-Gm-Features: AS18NWDdHdJKGAdSzak2dkZBd_DEUB1KqNHSK63I8rxE-Co_iHsMbvelUCu7ZEc
Message-ID: <CANAwSgSYvTJ=8hv_BrrF1v7u3hq5AB_BSfT7wj0-LQF87dQMUQ@mail.gmail.com>
Subject: Re: [PATCH v1] PCI: dw-rockchip: Simplify regulator setup with devm_regulator_get_enable_optional()
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_225208_161177_A5B7B789 
X-CRM114-Status: GOOD (  12.73  )
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

Hi All,

On Fri, 5 Sept 2025 at 16:57, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Replace manual get/enable logic with devm_regulator_get_enable_optional()
> to reduce boilerplate and improve error handling. This devm helper ensures
> the regulator is enabled during probe and automatically disabled on driver
> removal. Dropping the vpcie3v3 struct member eliminates redundant state
> tracking, resulting in cleaner and more maintainable code.
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 23 +++++--------------
>  1 file changed, 6 insertions(+), 17 deletions(-)
>
If we compile the kernel with phy and regulator as modules,
I observe this message.

[   25.473960][   T55] platform 3c0800000.pcie: deferred probe
pending: platform: supplier regulator-vcc3v3-pcie not ready
[   25.474071][   T55] platform fe0a0000.hdmi: deferred probe pending:
platform: wait for supplier /i2c@fdd40000/pmic@20/regulators/LDO_REG9
[   25.474124][   T55] platform regulator-vcc5v0-usb-otg: deferred
probe pending: reg-fixed-voltage: can't get GPIO
[   25.474171][   T55] platform fdc20000.syscon:io-domains: deferred
probe pending: platform: wait for supplier
/i2c@fdd40000/pmic@20/regulators/SWITCH_REG1
[   25.474218][   T55] platform cpufreq-dt: deferred probe pending:
(reason unknown)
[   25.474264][   T55] platform regulator-vcc3v3-pcie: deferred probe
pending: reg-fixed-voltage: can't get GPIO
[   25.474343][   T55] rockchip-pm-domain
fdd90000.power-management:power-controller: Timed out. Forcing
sync_state()
[   37.744968][ T2415] psi: inconsistent task state!
task=2280:(udev-worker) cpu=1 psi_flags=4 clear=0 set=4
[   37.849725][   T50] fan53555-regulator 3-001c: FAN53555 Option[12]
Rev[15] Detected!
[   37.990008][ T2216] SCSI subsystem initialized

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
