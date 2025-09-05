Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E087CCAC580
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 18:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuqGf16+h78JbAuSRLp2asxDvLGRPa+aTWdg16596m4=; b=L9pd52Txg7EZad
	UhLEMX6WxdgtNQxomFg9g8IUubicu0kOk6B30Z3xVee/cUHIi0q+ztwdzu/rXR8S8KhW8dtt3qY0n
	bljBoJ8CxcB8UIyitObv+fg13MSoWi7Pka5W+COLAXrYr7P7oBQEyNuJc0sMWMt5PfmptpSq8nDf/
	kPjzg1YelZhn5dzS7j3QLx6VeAsCPOb7wcxZqhBxizYBDk9zfY9IxTwDg9wMwY5ejvU44C+BYDeX+
	hkpkdFnoQJ5w41Dwcjw3+zOg+WhQv+47f32XxVEJn/EwkNtekr3RSsKR/Qsmb7MI6LA2cdXJjw4vd
	HENq3miBc6adtvNjtQPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubA2-00000003mt3-0nzz;
	Fri, 05 Sep 2025 18:27:46 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXQ5-00000002HjO-1q0b
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Sep 2025 14:28:07 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-723bc91d7a6so20786587b3.3
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Sep 2025 07:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757082484; x=1757687284; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iMW3bYd4LW3JWRnFP3mkUjQVIbwOYp4N45RelcvLep0=;
        b=OeW7PN8yB4QeX213xL09d6y6ybeSAsKp4OMzCPLbItgya/Tt52rLNE6M9G1rys/Q3i
         PAz42AmOsbK6xSU69AAmwbbsC/j2LV1lqYBSMfDdCAvnkKd2Z1oXk+eeb1vuX4CVHMqD
         oYEblaItmt6ZFX9BnpbEfqQ6PZ4zc2ZdCNNZMDRuZA1d6/hzI4d8gApaxAmDbof1Cfj5
         bW9mHoUWuRO+FnYwvm0d+97hX3nn8VoX666Phdva0sT++h5IF8hJdTUMxGbTZRYQbup6
         UR4wxDxZxGAFsz0oQZA036G86G8hHQnAyPAysEQ2zYl7MqFEb5zNj/At2yRyOsoqEfhc
         dpOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757082484; x=1757687284;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iMW3bYd4LW3JWRnFP3mkUjQVIbwOYp4N45RelcvLep0=;
        b=L3GZTe+jgdoZxZsN/+/fXdJbL+u2gDA0e0l9UbmPunfpQQx+hfBuEWIr69DI7ZC/Y/
         14WSEa7hK3mSXvUh+TM6Mx2Zb7LmzcjhIxVzXxrdDRahKB4ftYRfyuLv4qEwdGRJOr0K
         mhcdpVTAQoCCGVKy6lP5krZmfrYxqHEnXiKo+lASCrG9LeqnilXE5hIcAsBMSKnnxP+4
         75uHKcLtyMjIw/utQSDsDnZj1JGiBC5D94kUKy5cJbSX84Sd1GoCAXJA9EpCMi2Yt3lY
         ryQrMzQ+MZGqBqvRxfjp5F+B9EHQEE+7NgigF1L8AQJJuGOg4dFpY2ht9hGtrTkpZK2V
         lNUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYSFDjOTeKE7t8NmF6nLJeVQ9D+3vFhNZYeEtVn+xPEOseJHj587u3iWNRQdV/K5gJSJqWyEyPgFwvWbK8iQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxZzjNWU3HRtcpNswE9YV2alXHswEJNAdIxcSC+Jl88Joje2MEc
	DoaU7RxGh9qyfq9MYZmQIiSaI34Te5GEBa3faG+9hQnOhy1JsD95h4sH2ziz83TSE28oYYi/xEn
	/ISvqT51AEY4cPiQ9utyfslHesYxOxsN0h8KfYkziUg==
X-Gm-Gg: ASbGnct66iFP3pHrdL9ZklIx0i0K8xf1jE3xSBDvmCPcWcMHOX7s69Rvpqguyxo1aH1
	9QhBShWcWVf6Bi4UK8WNGkRsqf8tnmtP0+gq21zQRG8/+pEFc8uiy772VelJv81BKRPNY8f3Uqw
	4gF+uRki6TMoVc9ITjxlIS/PmkcurXvShFJi5MVehB8nJBg6TOE8YanGKOZSHCmuxptTtXa+kJE
	rE0hDCvor9hW6BNyv8=
X-Google-Smtp-Source: AGHT+IHckmRAJE89FXWWeCt002oCNhs7ilFvKi54aN2hkL9SOdLB58eIP1SZS8Ne2VJD5q2m/6tTefKqLCBLkhBMdCQ=
X-Received: by 2002:a05:690c:f86:b0:71f:b944:103e with SMTP id
 00721157ae682-72276543df1mr262928937b3.47.1757082484124; Fri, 05 Sep 2025
 07:28:04 -0700 (PDT)
MIME-Version: 1.0
References: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
 <CAPDyKFpAOLiBOoAhv+GQcobU_g_AWrB9iyOGmodROLtRmR30JA@mail.gmail.com>
 <3332408.jE0xQCEvom@workhorse> <3556261.BddDVKsqQX@workhorse>
In-Reply-To: <3556261.BddDVKsqQX@workhorse>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 5 Sep 2025 16:27:27 +0200
X-Gm-Features: Ac12FXzti6CwQKzMNnrf9BUUJQxR_BOv1AT1PonXIWLFU5Biyc2yW9uocDffvw8
Message-ID: <CAPDyKFpSY+FeKh7ocjQ_nGNZA5+3tWAL8e7ZNKXKNFP-yoiu_g@mail.gmail.com>
Subject: Re: [PATCH] pmdomian: core: don't unset stay_on during sync_state
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_072805_492243_039BA859 
X-CRM114-Status: GOOD (  28.17  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

[...]

>
> Okay so I believe I have found the root cause of the regression. UFS is
> innocent, disabling UFS just happens to avoid it due to how the timing of
> things works out.
>
> The real issue is that the NPU power domains on the RK3576, which are
> currently unused, have an undeclared dependency on vdd_npu_s0.
>
> Declaring this dependency with a `domain-supply` and adding the
> necessary flag in the rockchip PD controller to use it does not solve
> he problem. This is because the rockchip PD controller cannot acquire
> those supplies during probe, as they're not available yet and their
> availability depends on the PD controller finishing probe.
>
> That's why it acquires them in the PD enable callback, but the NPU
> PDs are never enabled because they're unused.
>
> This worked fine when unused PDs were still turned off quite early, as
> this meant they were turned off before regulators. Now the unused
> regulators are turned off before turning off the unused PDs happens.

I see, thanks for sharing these details. What a mess.

>
> I don't really see an easy way to fix this with a patch that's fit for
> an rc cycle. We can't request the regulator early or even just add a
> device link, as the regulator is not around yet.

Right, I will work on a patch or two that allows rockchip
power-domains to opt-out from genpds new behavior and to keep using
the old one.

I think we prefer to do it like this (should be quite a limited amount
of code and okay for an rc), rather than reverting for everyone.

>
> Marking vdd_npu_s0 as always-on would be abusing DT to work around a
> Linux kernel shortcoming, which is a no-no.
>
> What we need is either a way to register with pmdomain core that
> certain PDs need a late init for additional supplies, which is then
> called before any of the unused regulator power off functionality is
> invoked by the regulator core.
>
> Any ideas?

Yes :-)

I would suggest implementing an auxiliary driver, along with the
rockchip_pm_domain_driver. The main job for the auxiliary driver would
be to get the regulator in its ->probe() - and if it fails because the
regulator isn't available yet, it should keep trying by returning
-EPROBE_DEFER. See more about the auxiliary bus/device/driver in
include/linux/auxiliary_bus.h and module_auxiliary_driver().

Moreover, when the rockchip_pm_domain_driver probes, it becomes
responsible for pre-parsing the OF nodes for the domain-supply DT
property, for each of the specified power-domains. If it finds a
domain-supply, it should register an auxiliary device that corresponds
to that particular power-domain. This can be done by using
platform-data that is shared with the auxiliary device/driver. See
devm_auxiliary_device_create().

Furthermore we would need some kind of synchronization mechanism
between the rockchip_pm_domain_driver and the auxiliary driver, to
manage the regulator get/enable/disable. I think that should be rather
easy to work out.

Do you think this can work?

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
