Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8173606A323
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 07:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qWk5JbLp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=iBEmtcSV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=k9iF8SObaZT9JfQVUdwpBJYIfLdWjxXIE+aIaj/fQFE=; b=qWk5JbLp+KvEeQLdlmpS+NNuZF
	AGxp5zwn9U2HubYyF4vRkcUuFgbiH2416Uh1s5f+77A0u8Q3fzsBWNIBCYdKjs8Q1j52cPgYKm4wq
	JuklG9oZIssTJr3KcJw2+cR0YHVWUSp8nNR9zuf9Y82qnTZK297FDD9DSb4sH4msgUDwPFi0OEqSl
	iH+SOEHS45l+QAe5cMpThNQ+CTpWOPy76DPoBGjgZW8neYUN7loerq96G18YMrGzVJ3Fsubunj+vu
	2p8fq853QwzKOoJ/lgbDShMPx4uw8naXDE+a0oGhSofUkYlhmr4QJmzsijocdFxZLcBtcs4Iphi6u
	8qqCzP7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRm3l-0000000BwlN-35Yy;
	Fri, 13 Nov 2026 07:50:57 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRm3j-0000000BwkT-0pPZ
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 07:50:56 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-3ab1bb9666aso1008131fa.3
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 23:50:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794556253; cv=none;
        d=google.com; s=arc-20260327;
        b=q+bVwJ43T18ZL84pcMj6pjHLoS/WpU7y/H5dSeIm7jolowBFX93OOdJMQgGRQ6D6XZ
         DFPPQINtmOxXmD8JOcmaYOxxwL7STFuc2LEqhycrSQpofMylLHrijnIdbUh/VMwrTtvZ
         1kGBRZ/ot2MOGV5PfDWAAcYR/ioc6jp93qo50FWzq28Z3RwRuVmjH82zse7nQhu9u1rD
         t8hY4yYzgMrHMxrBa04XfkK2zT7PVwccgMpUxaXYH+4/h/OpVgxN+4TguQxGCFHrENAY
         hUGTYVFM22pV48Zu0HGZvKhg2+Q4CtAPQDuFpou/7ot6lL5pviv/aCe8PTK88HtRiIbU
         uHaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=06mx7f1gORAe7RxT0Hl/EBeglXXoMbIOZN2VJUQnHLc=;
        fh=rOh2tjP2TQG7s04iHNv5aQHOEc96IWUDh3P0c/Q3P90=;
        b=b/XLfmaArlnoa0M1F8/XoRIS/F0qwu6Lmhw6HkutjlyV8kBfX+5dMD9rt0P3Hul4Kh
         xeN3zPB/Dk/bqdZ8ed0gRI997p9JAc34zU4gdTh3TVxOvW4MMhZSl5K64NY1QnEgsTCa
         q9/uVqyyzjK8TRgukgqTf8WUotVH+tRYRUtGBAKvUb0Bu2Yg3QL7+u0R9/GNUz+pxmdA
         XwW97wbRie2qpHoEDUgRsLK0lQ/UrvvLfDIMvjps5dVOEBi3gIaSmj89oUdK1eQuTpGA
         BmYut+2CNfz5s3CzZrSVzj0njBWXShTi2dzqNTcGVdueWXzisOGyC3M3w+J9eIMOMCmy
         Z/zw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794556253; x=1795161053; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=06mx7f1gORAe7RxT0Hl/EBeglXXoMbIOZN2VJUQnHLc=;
        b=iBEmtcSVbifvyqfEIxcOT3NDYzqi1jECJw+cEt7fj7GDq/OGEUDQlIu0SIH+9MU6+X
         cqVXDW/YwPO8s76YCdjioeydzIF9dM+vrhfxCS+ZyfF1ySpisBGpjaUi6LrN+2FikRK2
         Pqog8hPppeJXlJUhZ9/RUXuHuMx4kAjYH0vXwasxi48kjq2u9bFCnifSu3sedDNcLtRQ
         XzxYEM/+cCWaIG7AqKnggEYxyRM7beq/whnkjZ+huynroLVinWhqoi3YD73rgS8kP7QH
         CIlJ71BBGbRqQHyp/sBKtiRBP8dqsJ/NTG6tCXjlyCKuKMUIkafwMV5jHa8MAEuwePng
         F1OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794556253; x=1795161053;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=06mx7f1gORAe7RxT0Hl/EBeglXXoMbIOZN2VJUQnHLc=;
        b=CcQSmrbYbBKrjY9SDV5JOZIKR9XHmqw6unD6mq8maRYY7dTpqIQSWm5xuXINWlfkx+
         O4msnf9Q0dBaEmCeQzYiGUsPqBLRgMtRRxE4MIAx0+3nBYzT6i+qivCD8dogJUVOKnEE
         D/nHu6EpY98bcG3FE1UxWqUMCLyH+YvL2cFxwZfgynQzzysQflLIa4Qf1VrttZk7Uux9
         udWtFOxvpfJ1HfWVs3rvLvXpcQS/l9zu0no0UfVIB4CAClnnAv+Ol9q2UcU4OjvvuEH3
         rgIlXlarxLz+XeYlKkMDAU/sYE8VNAGvfMdu25uIY7Kx70mhfvDvSiMOhRax0P8+Apu1
         wYRg==
X-Forwarded-Encrypted: i=1; AL+hErFJ0q7tL9FQ3A6paiW9fEzVT0lA6k8YqtuECws5Vnfo8w8v0NH6Qs8MhyhFzJrmVZReNkFMI5Jv4clEZHmO8g==@lists.infradead.org
X-Gm-Message-State: APuU4Z+v9ZZo9wjO1kkqoX4no+FCv9zWxCoNakbZ1rDlyzGteFdz9+aY
	bZ6hJgw6Nv/n3beS6ALsausXWTlMm0HmRv6SDG5vowlBzUPn92Zxks0tb4WOXnBYLGofJHCy9PD
	Kj78IydqQH/tVNLo9J6DHfYt9veYFM8e754T0dbNzGg==
X-Gm-Gg: AYBFou26hEPTNiBb8bCRYHVd+ECl2SVqBU7IBCJlpqJfo+gi35Hot5+ukkLsIsOn79M
	GbtgOB5YJ63nuZrHXJvVAr9PyvVkU3/qAB7l96b2pgaDCUllMUYdr6k4iaxyh4ypBrMr/bvFrUA
	dWUrrPckzvs91mg546hgNdFcdm8ipQwbO3rabweBWzoR+hv7QmSrml3NgCWHcfKMfj+0CkGPHn3
	zJ50vsLiubE7QhpRayakZcSXwl3wbZnxnh0XIMLP4o65v8tK97ykDxywFVy5kztsA77woQ0vk8/
	ni7fH5hUiw9XDIr24+3eAZbTwQnp6/JWL9exUFGmjDgpfDN2xs871zyKV8I5CY28zNMLYN6Cb3C
	CbiUfUq1XL61js2oSsm9JYj205M3pNC2tQTIqwAzRl8x9hOdRCMHv7jpDDnS5bMRCgfdCogg=
X-Received: by 2002:a05:6512:ba4:b0:5c0:da9:407b with SMTP id
 2adb3069b0e04-5c1709e32a4mr633075e87.5.1794556252985; Thu, 12 Nov 2026
 23:50:52 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261112-pmdomain-rockchip-v2-0-5cd942a23df7@gmail.com>
 <20261112-pmdomain-rockchip-v2-2-5cd942a23df7@gmail.com> <avWae91pfLv9vyUv@pie>
In-Reply-To: <avWae91pfLv9vyUv@pie>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Thu, 12 Nov 2026 23:50:41 -0800
X-Gm-Features: AclHuK9R5vFq7A0lmUNr9gzLMEUVHuewMGfBUZJVlzYHcBuFsoRJP4Ryjr6ab8U
Message-ID: <CAEy9hNW0sZBBdRz-LmydcnvnAwcn0TY+DmpsNaRamPY1mVpdBA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pmdomain: rockchip: report domain errors once,
 with dev_err_probe()
To: Yao Zi <me@ziyao.cc>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Kevin Hilman <khilman@linaro.org>, 
	Caesar Wang <wxt@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Igor Pecovnik <igor@armbian.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_235055_251949_05AD9A9E 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> These look like code clean-up instead of fixes, thus should be split
> into a separate patch, especially when we probably want to backport the
> real fixes. This applies for many places below.

v3 will split it into the fix (quiet probe deferral, the pm_qos regmap
error keeps its own code) and a separate clean-up with the remaining
dev_err_probe() conversions, on top of your 1/2.

> I'll drop the second patch in my series and use yours instead. But
> please search before sending patches next time to avoid duplicated work.

Thanks. Sorry I missed your series before sending v1, I'll search
first next time.

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
