Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CE9FD42B8C
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 14:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pocTDBbz12bpIp+maWN+4jhq4U6JtQVA9WrYAQM6MQg=; b=a+yk7wo4lhrLFS
	IXMRB7wvVC5Kt16JD0R05SkKDr5tIl7MLxg+odzwqHbpU3uyAk5SGo6bAcservR2wKt+sjy/msRkZ
	fDdxKbHeaAfSIopBuVpijZaGL0JX8jpj4nxJL0qSU0UJYkODUEDoz0A04L2Km06V32iGpjPmtRiwm
	BZF3cKZU29OAupShDyCzjM8Dc249EjIRUOvgFab3XTdRR19RI8mOGGLV6fFR+iGfzC8HnwCNB3Pfb
	g/UWkqkEV9Z3UPQ/tkbpvhU7EI2JuUk7zNBvUJxdAvcJTaLHhMqVuc8YSAxru4t+hz1yLcHqCct2O
	qwIeNTBc3yt9z7uAjhDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAs8v-00000003o17-0ouh;
	Tue, 12 Nov 2024 14:45:21 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAs0f-00000003mDj-0j2E
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Nov 2024 14:36:51 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-6ea8419a57eso60190597b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Nov 2024 06:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731422206; x=1732027006; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cgmhvMmvsAX1eZX0S9Wvwi35LFfEY0JKL1PQexUj2Y4=;
        b=RDpB7erhODxaf7+45FkamZXezkjMgc8li56nkg0g4nDhEqZXq0hhY/P3KIziNaEPyQ
         XHJI/Rb8rfsQlhYh0crgign4tdgyuCMZ7LEaNGUdgVqBsKTa34hVHR+5rHdDyfTsWrtx
         VRXMLfhcvaJB3WGMmr/VOIhLP4bBY56YWbQfp7vkarULtzCACuSVudaRyZqRCUmjszAd
         Zd+NWLkHwrE+a1X8Quhl71rtWFyfnUj8TAf0c5QGbnTYEm4AAKrKnwymNA1o7iY7hbks
         Sf8R1BUrYfvOlllTqGHcV8GYcsBfMnbT1oRrBd94soQ9X6tu4+par6YFQfKfsWRGgoiD
         hfGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731422206; x=1732027006;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cgmhvMmvsAX1eZX0S9Wvwi35LFfEY0JKL1PQexUj2Y4=;
        b=BIfW/RGBv5uzPht9dxJDZzYNJ+lrhbcI12PIWjnwpYaHBPrSLhcYjYeLkRrdgMYaAB
         wsrmmWxegv3H6iAD32R+J5b0ZPCldQfvpB30UPWdBrzgMAcWtF4C60Q1M32Sg2DkCUg9
         HaLeG4oehYaz/33WOy2ohyu6Y1FiO85hWCUf8iwMh+QEpVZQbfuZw3gVnTZ/mb2QYQja
         Ip/lfQeCBfUELS9TsmZdPzG5eumlGYdc3Sz2FWl1s84qMgesFnRT8y4I0CD2kF+u+Zhb
         yzfPauoRd7TcyPsRJXpzV1eA3abCfPK6dudeysUPjTcRZMf1HHKvBGCywZwCh0rkt5tt
         wdQg==
X-Forwarded-Encrypted: i=1; AJvYcCVgevhGrd8a43kRmzmnRxUpqV4BfU3k/1EPuCeivB6PxVdeTlpYu6I97Hi9DpPxAijPGHDHoeNQQ4cCpKB3CQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXBiv2nE5YaXZ4+3iO29avFfao0gnGCgFnASuLTpdgr2bMcUUX
	usie0AHC0PIrN/txlFqU7KHxV1LVlecLep0z0mYG4xGbaL0xy9hTlkrnszL0k95sM4llmpLCOID
	xK7q6bMpzT5QzHgjf2l7ru9peH/iy2FpGZrjGhQ==
X-Google-Smtp-Source: AGHT+IH9rSK+tLCTRixNouZv18mLFyvn8FHIuZnQADkcw+GhR4qfmbtPJ/eLDOrbx7U/Aj+xJlWgGqMHWo5EW1qAGx8=
X-Received: by 2002:a05:690c:6885:b0:6ea:90b6:ab48 with SMTP id
 00721157ae682-6eaddd98875mr166222807b3.18.1731422206552; Tue, 12 Nov 2024
 06:36:46 -0800 (PST)
MIME-Version: 1.0
References: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com> <1731048987-229149-4-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1731048987-229149-4-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 12 Nov 2024 15:36:09 +0100
Message-ID: <CAPDyKFp0LKaqhdybGow7T72Vac52=bP3PjYL2920=SJzmYB06Q@mail.gmail.com>
Subject: Re: [PATCH v5 3/7] pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_063649_236249_62807536 
X-CRM114-Status: GOOD (  24.94  )
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

On Fri, 8 Nov 2024 at 07:57, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> From: Ulf Hansson <ulf.hansson@linaro.org>
>
> For some usecases a consumer driver requires its device to remain power-on
> from the PM domain perspective during runtime. Using dev PM qos along with
> the genpd governors, doesn't work for this case as would potentially
> prevent the device from being runtime suspended too.
>
> To support these usecases, let's introduce dev_pm_genpd_rpm_always_on() to
> allow consumers drivers to dynamically control the behaviour in genpd for a
> device that is attached to it.
>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
>
>  drivers/pmdomain/core.c   | 34 ++++++++++++++++++++++++++++++++++
>  include/linux/pm_domain.h |  7 +++++++
>  2 files changed, 41 insertions(+)
>
> diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
> index 5ede0f7..2ccfcb7 100644
> --- a/drivers/pmdomain/core.c
> +++ b/drivers/pmdomain/core.c
> @@ -692,6 +692,36 @@ bool dev_pm_genpd_get_hwmode(struct device *dev)
>  }
>  EXPORT_SYMBOL_GPL(dev_pm_genpd_get_hwmode);
>
> +/**
> + * dev_pm_genpd_rpm_always_on() - Control if the PM domain can be powered off.
> + *
> + * @dev: Device for which the PM domain may need to stay on for.
> + * @on: Value to set or unset for the condition.
> + *
> + * For some usecases a consumer driver requires its device to remain power-on
> + * from the PM domain perspective during runtime. This function allows the
> + * behaviour to be dynamically controlled for a device attached to a genpd.
> + *
> + * It is assumed that the users guarantee that the genpd wouldn't be detached
> + * while this routine is getting called.
> + *
> + * Return: Returns 0 on success and negative error values on failures.
> + */
> +int dev_pm_genpd_rpm_always_on(struct device *dev, bool on)
> +{
> +       struct generic_pm_domain *genpd;
> +
> +       genpd = dev_to_genpd_safe(dev);
> +       if (!genpd)
> +               return -ENODEV;
> +
> +       genpd_lock(genpd);
> +       dev_gpd_data(dev)->rpm_always_on = on;
> +       genpd_unlock(genpd);
> +
> +       return 0;
> +}

We need and EXPORT_SYMBOL_GPL() here too.

[...]

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
