Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47C30C5AC67
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Aug 2026 12:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57RLXiEzVJXkjWVTo19hXL6gTM2/3yLYFNs72HaRed4=; b=t4bDFW/bY2peVL
	UWqY/47afy+2xsqm7hYcezBLxQ792EV27WwiU+WwynJUZXdFlbTq0+BxfWT3jfYJx7fWuO+1tZ13O
	2Opoq0OcQjYYyldwZ0G//jjJvGBrsaXbFlpGtAQR0Yh0AMXbfH+1et1FzLVThvz/VkWycXucVzCEX
	tDisIVSZrRBR1Db269tYSo/7mnrE3+j60YRDCBaodsQqbRD+q7TNGa2XbYZjcZHCujWuZc8nteAUW
	MkY/cKGee53oiuRpSgxjgUmtPOp8k8u65W08yu+NbTq2hdYhA7JcPb6RYxxv6kW1L+oJ7xVyc6oyN
	7iYBQa96NtoMKj4/CXjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsgL9-00000009MSA-4A0X;
	Sat, 08 Aug 2026 12:39:52 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsgL7-00000009MR8-2WwN
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Aug 2026 12:39:50 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-490791a3e92so438405e9.0
        for <linux-rockchip@lists.infradead.org>; Sat, 08 Aug 2026 05:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786192788; x=1786797588; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/7Z80X9FpgglIlhnFzOdLw8386r1jX4AyfOgEB2R9U4=;
        b=GpieTRhOZAFyuQlUkTeOCvgxSbjAPFKxDZL9J9me90K7WhpaSXsu4EdtkhQtKe1q29
         zywiyaxU6cKUSlvj3kYJZRd3IpGIIz8nInTOfK9wnAmHKpeBB7CENDkguZqxffnkhFgg
         XHvaufRi470FRfRaZ14DYIufORelM9DBgt89FgUQvHegibjxw83kpTF6H3j9JBz1UjZW
         vf6DXzC4+DhPWFEvfqzWYCirZTIvD98S99shrJEi3BwZA9lhmZJv4S7clvIyvj1Edls2
         7iiMKl6gw+csegORkeJwb2qPrk61smYbwS8Dmd4bAXjwFdlihA9F6nuKgRmgcjXOz3Go
         LOVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786192788; x=1786797588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=/7Z80X9FpgglIlhnFzOdLw8386r1jX4AyfOgEB2R9U4=;
        b=BLzmM/hINqZ5RNOmaMxQvS5Z9hC57Xn4IGEEWJ/zdgtrnroqXV5VaUPVh3p3LJw5w4
         BNPlREVVGX3n6eLUAXHwS2ajJhWp5+6r8EaNNHuNO2kY/j5g/av9amUpZhBuaG0qQVZU
         OfgNWLQPPm45X528otORalLfP2CPfJ7A054oKTClKHn0yGeiEhdjdGAtC9QSpYab//uH
         racm3SeXU/fkJjnhYuXbecLx2OWVavHWboLSb2ATd0kdJRYgV8wCDG3aoELEfedG28sn
         cjq9zeCSEwydaOKlH9qtTkZBfwbYJJNLthBN2+yHgqQfo+3lnf3uDN7j2sfxxeKLiGKK
         PKyA==
X-Forwarded-Encrypted: i=1; AHgh+RqpbwVAGMWrKRdZayF/Ml/n4LrvpnKIy0t+Cyw0R/exkVPuni54c8oCxKoDgff4K3FINaI7snO+e6HFDedvjA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyxR9QmrkyqOVXmljrjvoJE73oYBbrbeIoRVVQq4Uq2xIUcLQXP
	51ntwLEgcl1t6cZtZo/+a3wf6s8FUFzIgWAp3cV+YmcI5Yk3a4ZxCUkf
X-Gm-Gg: AR+sD10izGo7j+p0vL8DhQB7AeDsoxiFNLfHeHi8hlDOHKMSMNbbFIjnWqNa9hiJeJ+
	rDr62K7HrP7L+u1Q6Xdb3BLt3xxpGUH2PCYNrEoM4see6njJw3OVHkNnKC+Hk2yAuge2yO5cPD9
	iqqfRhDJoViAXiz7yvoUQOWQkM0k1RHPPy3typugAOzb5JaqNKtrlPmpgSVnfFWiFv/aiktVs7T
	Y8dLd9HGJyuwfaILxGQYnXqDazimV+dprd0Z0wfnGTaF19/MrW4viWdYheHWopjbtWGvl8wGNT4
	WnVmIn1bGqBkOph778FcLNIdeAzek8FlVjItPCfVCc8c49s4XtUzwmfBFUfeTMUkhAkKrrHIdYi
	PRp80/Om8tYRht2sLZxTXpEfGDUhnE8lIr7N9wp1R3BUTPxwgVzizS2C5S6P2etvsgedKOKQh/T
	ooa4r/+xM6m0CrMci6j+OgBbZwigRNzKlSWd7O+Q0dbcwz41EcYJLpsHbJOSaT5nzd8jSFy/8QE
	qejJ0uI3yANpZdXHWFJHVqryxCYnqor98h+Xndhx+1DVsIgiIlXhuvu5npJ1CpHWQ36jg==
X-Received: by 2002:a05:600c:4ecb:b0:499:59a1:96f7 with SMTP id 5b1f17b1804b1-49959a19770mr126652915e9.1.1786192787600;
        Sat, 08 Aug 2026 05:39:47 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8E20009911270F4BEC2300.dsl.pool.telekom.hu. [2001:4c4e:1b8e:2000:9911:270f:4bec:2300])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4995ea2e038sm115426525e9.14.2026.08.08.05.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 05:39:47 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@flipper.net>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v6 7/9] accel/rocket: add RK3576 NPU (RKNN) support
Date: Sat,  8 Aug 2026 14:39:24 +0200
Message-ID: <20260808123926.23903-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260807211629.1573228-1-gahing@gahingwoo.com>
References: <20260807211629.1573228-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_053949_659248_1AC2928F 
X-CRM114-Status: GOOD (  18.48  )
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

Hi Jiaxing,

No need to apologise - you found it, and you found it properly.  Diffing
an ordered trace of every register write against the vendor driver on
the same board is the right tool for exactly this class of problem, and
a 12 bit versus 16 bit field in a header derived from another SoC is not
something a reviewer was going to catch by reading.

I had gone through v6 with the RK3588 side in mind and had a list of
comments on the poll path in 7/9.  Most of it goes away with the
polling, so I will not spend your time on it.

One item outlives it, because it is not part of the poll machinery.  In
rocket_core_init(), the new multi-power-domain attach returns without
unwinding rocket_job_init():

> +	if (core->soc->multi_power_domain) {
> +		struct dev_pm_domain_list *pd_list;
> +
> +		err = devm_pm_domain_attach_list(dev, NULL, &pd_list);
> +		if (err < 0)
> +			return dev_err_probe(dev, err,
> +					     "failed to attach NPU power domains\n");
> +	}

The path immediately above it shows what is missing: rocket_job_init()'s
own failure path puts the iommu_group reference back before returning.
If the attach fails here, the scheduler, the ordered workqueue and that
iommu_group reference all stay behind.  Since RK3576 still needs the
attach in v7, I expect the same shape to survive the rewrite.

Smaller, and it may disappear anyway now that you are splitting 6/9: the
commit message says nothing changes for RK3588, but struct rocket_core's
clks[] grows from 4 to 6 there while the two extra names only arrive in
7/9.  Either a line in the message or moving the growth to the patch
that uses it.

For v7 on my side: once the poll is gone, the only change my hardware
executes is the job_lock move, which you are taking out of the series
anyway.  I am happy to run the series on all three cores here - probe,
multi-task jobs, all cores in parallel, a forced timeout and reset, and
runtime-PM cycling checked against a bit-exact oracle - and report what
I see.  I would rather send you results than a tag that covers less than
it looks like it does.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
