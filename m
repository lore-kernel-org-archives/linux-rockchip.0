Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62444CD6E60
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 10:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=meOLNv+H0eXzRCqIi1p2sLI9E8PYq2ibowcKrMMOTdc=; b=RTcgfKz2JbR5JJ
	rCTQBxhvLsDcV55hi0flPY8pOQ14vnHSgYG+FhyNHEimG5W9aYNmHiQYy1Zfi/Vqb7JaaxmAu8D8e
	3Pf4WeWc8ZH5japycfFwTcV987++XhVNyMhVl/JqI6DGRzILUo5zX0edJAZkryWKUnT8KRb0dAPAG
	i7XMovLskdqJT0GNIbyudxzl24yEJKLv6Mwq9opaa8VFJCxIDAOa65BtTpfIJLfal6xr1pn9Tn1BW
	QUZqqcKfjkcbzyqjpHOfFauZYDLHfJS0tJZqZ3q6CJnjqEuNwUW0Kf0XoM9mDLJtF47dIE7DofFK5
	/2oEJjiDhD3y2GhF6ESw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTzWR-0000000AZxB-2xv8;
	Mon, 01 Jun 2026 10:05:27 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTzWO-0000000AZwS-1E9g
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 10:05:25 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2c0c379e8ffso7825645ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 03:05:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780308323; cv=none;
        d=google.com; s=arc-20240605;
        b=MivSkO8UckAc1QQyiDp8ARrRMwt+ru5PfF/DbiSNxbZayRh4VFiXaUB23pTGfzPjvO
         OeE/1Piaz08GfpH0NW6Tzfzcjj9ppG1vFXOlh0Wvo9k3cYBnMRCgETF5nIjjZsSEiGOq
         EGXoVECae0JzAhGMD1xkCwR0zAEygCp77oJy1qhQtNPTtgqzcxslePzMN0ILy2y9OPYd
         BEcwVzs3cpYq5xLkLdn5/qVNN/PdpbMtdOFK5NOpOiJxng1p9Tj6WakSP4/gZfbeVAc7
         XvKBJtsTJ8seS9eCVbf3XyiQMdwjw1zCh70QDiALXt6jD1Jjo17uZ84fYJwS5oQHL2+Q
         cxDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BdswV/H72I0eIbl7Z3IhvzcEqMAO/9EWXcrHd21kKTE=;
        fh=W+7NDDN6M4Y9hcVY9TxlvhxYKtPFr3qMhl0oe+MhidA=;
        b=kFjoq73p40cFvfjGaAXJL7tiE4i785qyJDsxrTBC+VJcmxDuxffqSDBoroiFL+CejG
         1+r7mwYXXw48a/h60xAmo38e3RiHQ+153FuFKgP3fbRwy692pD+Du1Qs+Ybur6LvcrcY
         tAnJpEsFq/H+piJwCgSUYk25f3bLwKOki000PuRMdmQY+ro7PBXSgnxC9mY1QeSXQLRe
         xDd9bdpsgpH9FDyGqcqWl/jqxmz+y6iWKgYCBeYV213CCBUkF1PpHAv+Mgzq78h85Iba
         5hJ+uHZrGCY3/qvlWbiw8UBAaCjQ14Qr6mzr2jopQTEWqkyIbPlr1ArBkKO6Z4GjPUnu
         3Qqw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780308323; x=1780913123; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BdswV/H72I0eIbl7Z3IhvzcEqMAO/9EWXcrHd21kKTE=;
        b=VitslqZe2m+70nVBEIVrERuOESpeTTQBU0Ra+8myIcvjXx6BeXrzSVDuhNAsd7db5u
         OwdF2aHq6pcQCN8wkGhIF2eGdJIanFKv4Ju8UheXnVRei+S2hkQQVZvOZJZCGpdDfh6Z
         /y9E3rygyobQqwo2IQa+1C5ohRHlh2hQ20JHyLolgxh1OUgUUq+byK+Sq55Sat6iGj/R
         jq+NOi+1q9yW3/5982RzHuEOMWRWrWJjJ6HsM/eILdcl24QOqtrY2FwlRY39XqTN5TPs
         5XLHDvUMikmL7N0MNneodzz6MmLLdEB98HZKton5ac8gfsKmVHCgIPuLVyLeUoyLeGb4
         CKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780308323; x=1780913123;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BdswV/H72I0eIbl7Z3IhvzcEqMAO/9EWXcrHd21kKTE=;
        b=ENmnkl+Dgpsl2pbPLyJbBz4hlfD6Bk7NQ+J7qwzl1+GhTjRfbZg0aQ6J2RbV/oKZYi
         n2Cp9+brvfdfhtcPpML1eiZJaILWgoLD1wwwnPU0HRmGMqWkuTR6lxMuOjk3zU+K5LU4
         qfARDU8JkleqmpiZoR8+odYfzAm4XLCt8Q+qgYGZZ82TnFonpYvdosewxwDvhcnE8CCl
         KoEeXX16QS5GEtdLkRHfFKUrI4Lj/XZ7HPqsJayrZoQqJS2zCQ4kPAMh4SSU1TtxmLs6
         YkVZl/R0kFAqPD9PIFj4wjUwo9avdpFVQIibp/VrQFwXKXI4Qaw8Q+ye0tnZbLa6FOhY
         pOyw==
X-Forwarded-Encrypted: i=1; AFNElJ+hKzs9bxcl1zNSMTs7wYOhXL5eoF1Y3HwroI3IQyD/wj2dkkrz2N7tWaJluQOQKFlU7LPJIg4dRfXz0DnL/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxY5kzkastxx7rB7GUdvgCq45aynuhYWWABZd4f94w8i8Vv5jW/
	IXYgCrCm/0WhRns9BRJjB02Jv8arevyZlpfv+keAZLzs9m4t2QNIFHq6v0uxHLWKRxxtziXNpCx
	IgvEXZMO5y0/HyAk2j7oIdCGZpqGDqMo=
X-Gm-Gg: Acq92OETkMkv55lFL8eVoHoE5uD0vW2NQ2EWna8NZoLuz5/6prof+ZnPpp2CfXj8tvp
	HvmfstcT/C91YKpJAvIDmm8ETulDrMKFdUM2Gp0O9Tpz6Z4nSvgi0ijuX9aP+Krj/TlKsuNU0aZ
	joEdfd+kBjx+0UAbRwmevYjxjH3LNS1/8mj+A9pQHAkh0Y/Tki2LGoOm75uUbuWYRkBiM9KNnqM
	9geTzTvew+hg7+bfTThloDBzTdVeUMkPzAvpGbEuy6od93W2baLTfQbOxgezVW9/cdEFF3zkEW9
	QKhzolBBbVh2PpjKlpfqQZWIw/O9L2vHvPFsJUvYnkn9NvZF
X-Received: by 2002:a17:902:d483:b0:2b2:4260:109 with SMTP id
 d9443c01a7336-2bf3684aeb9mr121794295ad.23.1780308322810; Mon, 01 Jun 2026
 03:05:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260522100318.73474-1-phucduc.bui@gmail.com> <20260522100318.73474-2-phucduc.bui@gmail.com>
 <20260530-adventurous-basilisk-of-happiness-def6fa@quoll>
In-Reply-To: <20260530-adventurous-basilisk-of-happiness-def6fa@quoll>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Mon, 1 Jun 2026 17:05:11 +0700
X-Gm-Features: AVHnY4K0HX288K_cD5Sf10SY7BujkeLaPeGOHP02VGsc25wWrKbaxn-vW53Y2o0
Message-ID: <CAABR9nHh5WbC+A-7KV9jKEUbmK8WHgpf=VUk0DJqFrhhQFRpwg@mail.gmail.com>
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: rockchip-spdif: Correct SPDIF
 clock descriptions
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: broonie@kernel.org, lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, 
	heiko@sntech.de, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_030524_326362_24B1721D 
X-CRM114-Status: GOOD (  14.75  )
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

Hi Krzysztof,

Thank you for your review .

> So example is wrong?
>
> What about all the users?

I only updated the internal description text to match the existing clock-names.
The clock ordering (mclk followed by hclk) remains unchanged,
so external .dts files and the example section at the end of the
binding are unaffected.

> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
>

Thank you for the guidance. I will address this in v2.

> > The clock descriptions are currently swapped relative to the
> > clock names used by the driver.
>
> Why would order of clock names in the driver matter here? I do not
> understand that explanation.
>

I inferred that 'hclk' is the bus clock from the driver, which uses
devm_regmap_init_mmio_clk() with 'hclk',
and this matches the description found in several Rockchip datasheets.
However, I understand that the binding should be described
independently of the driver implementation.
Therefore, I'll drop this description in the next revision.

Best Regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
