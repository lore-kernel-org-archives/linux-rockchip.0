Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C2DFC3DA42
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jul 2024 14:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1otSoqBgIcpuF5RooDqecXKfZzoPLtMUWyjbjjPErWU=; b=vr/gM4EgWp7De0
	540mMIBB06tbExNLwQ/q8MY15hzSHnGU4yhilMETLYaO4h9bbv6dR5YiRY/8/5DfWEUSFmmmF0Cv0
	1x9vjnawza8rttTWBDzpeofHT/yM7FYYh3qDAE3UVudAJ1KYTYoRx9f4iWwMe91iFULcoKODN53Ze
	UNG6BRxkQDk688A/+1JMFubAe6P99ijsPVXYEN6vCZzcAVFgDB01/Da7CVC/zUOUJ255Fj/xOfI1R
	GL7ON9NN9yW9STW9hi/dWL6AZJy2vZ5sHtUkqWdGPj59AqP87ErvJ9zac7U1NBVejqlbzfbVBue6f
	q3lO2Jqvme4Q+AcLO2Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSeB4-00000002jE8-43gf;
	Sat, 13 Jul 2024 14:56:47 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSeB1-00000002jDK-1iz8;
	Sat, 13 Jul 2024 14:56:44 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-58b447c511eso3634517a12.2;
        Sat, 13 Jul 2024 07:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720882601; x=1721487401; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O+QJ0SsewdKDJPXCT3dbpM5KdZdtJLQpdDMM4UU/jY8=;
        b=MkgK9SQI/qDkkQNoBvk7Bng2yFpCeWQPPfTEAZrL7biYkR+cOYSQcwBT52soa5p+8c
         xn4xZUt4ACen1vFrHXUDXPwPUA1+rOm3EXO3qCoUBGtMYPVDOn+Y+dBCAzwr2zy8D6Sp
         PZaOeheKl7oPomsrLJJTzV2MdudpyAl2mTstq3iEK9IrxCPXGJ0fT5nYW1IJIg/YNhBI
         /ktj4CfYlQA2rZLgaY1/WSwJc9PLn3JtQX3jSOlSjVHMfggqpwD49tBfeNrjW3fsPmCP
         fxnjgjUH7E+StFKJt0SO3Iv2p6QUmQaEHB1rxHJLpqxN1ZBFpkdvxbbRgiEfrqHmSIpq
         5IoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720882601; x=1721487401;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O+QJ0SsewdKDJPXCT3dbpM5KdZdtJLQpdDMM4UU/jY8=;
        b=q0ZqEYNVA1Ov4NtKM6nv9I/Mkc4UMYcydqk/ikZGn/JlTupjWLyoHr/Kti1KAnc6uG
         3uh4v3SWNV7LYAYO9NowmpsSLGGPy9nnJctAXw1GBc6iWSf/bcO7vaBFXPsw+cVwzYRK
         bH8MxUy7SfOqq+nRQz/6/gmrNviHf/DRXujy7wmTWPXjRR8Mc7fAUplHbpJyRHjxC0r8
         TuHX9T3VIqQrxCMtKbd7oeAUT7aYh1++hl0wmD6gwxoqcAOFf36pYwPC24udbhOEt+lZ
         QRVUJzlR51HfeKoFPAaO9Tc/AgaVDlpTFiB7Rb8s0lkZ2UOOBxZCWx/isXaFT/TSofcD
         Veag==
X-Forwarded-Encrypted: i=1; AJvYcCWfugvF7hVCd/8JtQuqVtto0HOcFTXx9ZxlVK4pqW4pea+YaTLup4DtflHTu7LWgVl6LPs0AtBDB7XLKQkxF6RLwj2XzG/2bdekw9s6wM7TDKLBFW3/2gGyVY4AkLvE1zZNt9/o/HFsPe7rTYyrRZRFz9oSGC7HA4Y=
X-Gm-Message-State: AOJu0Yx3CUx4HCUjlW2akWKd/rNnw1Qu77zbrg3eV6QaH2zu69h2kzcR
	ajSLy+Mf+zR11cgekPpLtr6fAlm/fEg2zTXNwmCM7PjsxBm280c=
X-Google-Smtp-Source: AGHT+IEBrxJbGg84mCAvITBimIZyse3/RhpYf/0B/ael0HmzbuRV66syKLkU7uKd0X4UqYujCyLMsg==
X-Received: by 2002:a50:bb62:0:b0:599:4d6c:d71c with SMTP id 4fb4d7f45d1cf-5994d6cdbffmr2986279a12.40.1720882601102;
        Sat, 13 Jul 2024 07:56:41 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:4389:8fa7:e8f7:707b? ([2a02:810b:f40:4600:4389:8fa7:e8f7:707b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-59b24a76fefsm860047a12.16.2024.07.13.07.56.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jul 2024 07:56:40 -0700 (PDT)
Message-ID: <969642dd-fe5f-4dfd-baac-21e75e30a271@gmail.com>
Date: Sat, 13 Jul 2024 16:56:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add sdmmc_ext for RK3328
To: Diederik de Haas <didi.debian@cknow.org>,
 Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>
References: <20240710132830.14710-1-didi.debian@cknow.org>
 <20240710132830.14710-3-didi.debian@cknow.org>
 <72718d8d02c25993c138567c96340792@manjaro.org> <2735059.JVtD0IzA6d@bagend>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <2735059.JVtD0IzA6d@bagend>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240713_075643_483975_3EE8C760 
X-CRM114-Status: UNSURE (   8.23  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Am 13.07.24 um 16:35 schrieb Diederik de Haas:
> Hi Dragan,
>
> Thanks for the reviews!
>
> On Saturday, 13 July 2024 15:45:12 CEST Dragan Simic wrote:
>> Looking good to me, cross-referencing the RK3328 TRM and the
>> downstream RK3328 SoC dtsi checks out.  Though, it will remain inert
>> in our codebase, because no supported boards use it, but that's fine,
>> we're still improving the correctness of the RK3328 SoC dtsi.
> Indeed. But it's hard to argue with technically correct ;-)
FWIW: (upstream supported) ROC-RK3328-PC has sdio wifi connected to this
controller.

Alex

> Cheers,
>    Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
