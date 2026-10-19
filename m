Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98B25CCF2D3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 08:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4p1kZRMYag/BFiQGpjiiykNmEbmR3TyyoO2Hec5kC5w=; b=mkWYxP0CAaiAOF
	WhbLsb42T9xUyZSxuh6Jf42pukvs/kirYiUZgsEtQPu7o1CT4MnprNPyIclpm0AtXdoTsRoaTLhtV
	rGnOHbcyR6GQEYKx5xLXy+hJRL5l2JhizwFZBffwc77qzN4edhgGEHtgPppyJHq0Yr4Ej5d48wav5
	0F1+zqeLU6+V79J4DJilDH9j0T7kkExrMtfDAo3aC6Pm/F0w42OTiSUeM23sT9Kl0M/Nt0YOoCfuW
	hgyZXKXukq0Gwnw/wIwlCXgDO7BHywNMdiffq3wX10vdQr+wxoUefTb0LFemN3s3vb1sTsGxO/3FE
	BwQwNp8JyHhnGSjJU6KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIiWg-00000006qwP-4B1x;
	Mon, 19 Oct 2026 08:15:22 +0000
Received: from mail-yx1-xb132.google.com ([2607:f8b0:4864:20::b132])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIiWd-00000006quv-3j95
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Oct 2026 08:15:21 +0000
Received: by mail-yx1-xb132.google.com with SMTP id 956f58d0204a3-66fbdb0a5a7so245859d50.0
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Oct 2026 01:15:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792397718; cv=none;
        d=google.com; s=arc-20260327;
        b=enAnzu754Floy2EszqQEVRDgIk1MAMjGZ6dGEMW8Qs7sGg1lIguQO1+xyOfXWC3oMV
         MRBnN+w6m9kVJPtGKfYvzubg/Anp2Fd/MEz6jSWE9m920WEH4ll2RxECqMcmyc6EwQFp
         kXom6OG2GpmyzueNzxYXBw4ZG3WyyCFWRreI/dLf5IXDDpVGYY8aaP0JGJn9FwGdHWhv
         C8k1Z/fceUmJNjtlq5iB86xvDHPGwUmYesruLJmPjMXyFTLAZ8oH6Kq2FfAVccpHBpnr
         r5JFp4T4P5D1qVsBkOAc7zSYV84czPS29j0aXKECTckKyWm/gA8dbVxAdbpSiUKRkDMZ
         gMvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U1X6Ak1b5YnhMEpM33yKsTItIXYeyxlIqpx2Kl/jIFo=;
        fh=VsYz7zxkiwFAK8GOa6U1f5LbDb4xMT2HrVsVaWjy2Ro=;
        b=JOp5XC5fEAjYLwiT5g1vOsNvt3V1tARpAemo6dhvUxCTeEzmFqf7kJ2AvmdZgIh5yF
         k6yzj7V9BroLicGWaJ+0qXz7CCFPGhY+FK/brVcYBzGyecT7NWp/4ed1TkBkJpMZYL0f
         1Ai6dyWhErt33lkrr6EIFctqQm7qAGy3uUYg/gr1OJZqIWnGkJzy3Ep2dlKTc0OuFF69
         NUCgmu6CTnBJl6PEzhWJrrhGCQMLSTi4BlGei90xkvs7RmsiW3g+8IZLbKZ+1pxDbyN8
         G/u3evaTW2ihsh5P4q9QMgtfG9iwvyjgTtTIPLUEoTuluqX+dmSqkyn29DqGvSn39z8u
         6NPQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792397718; x=1793002518; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=U1X6Ak1b5YnhMEpM33yKsTItIXYeyxlIqpx2Kl/jIFo=;
        b=fsm5SSCw8bVv1e+oL1c+Fo3bs0i163BPOjWmRbkPN/IZIzB2pkAzAkPi71WXX9TXkD
         uqf6Vwai4N+nwfLudyrupJozFv62N6pGDuXrCP0BZGBlT7e5tWRwRcAdmaObfcOWdGRL
         lSd4tw6/ywrL4IyOZgY+6vlE5W5qqMkae13aoXt913wUeUlxWuk8eo6PkCMNvuzKYQt6
         gms1b5veaCWQaDpnbmpv73r/VEJtgwwvSVXaKejaqwvNryqR/wncHANYx8Bbqr8hXMtt
         hSgOI18OxdxdH/fh4HtJeGZZ+7V0BdIFywiDHnyCD4c8ctcukB1EQfQwH380r5DLroay
         QlJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792397718; x=1793002518;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=U1X6Ak1b5YnhMEpM33yKsTItIXYeyxlIqpx2Kl/jIFo=;
        b=dhWPxTFfn1Hf/4GlM2C99RlE7/9R8RzMut/VnTZuH0vPjt5nRjeX5Q2pJ+ISr8WT1j
         IKizx1R727jkktmV6IK9TIxQRn7XkX2co0pt3iq9jS+oxjn76mu4Wv9lByHU/EHYLdAG
         XyUT6H5zT+7I9jraBGItZqxIH98DruosZAyOpDTP80AeHk+BpCg0CjAm9qC0Z1kinb2+
         mzV+Fu9RHw5JulVXwgzehaZRUilJ+oi9SA6YvKKA1xwhwA0Sm8Sj6xvCND+wvTilA/cQ
         IHvil6VVkadAGXRGSMxuQhr/LDYOiaLCs9Kdw/ntD2a3VkKJHCyRN6WWVurYDHzfNAjK
         fTjg==
X-Forwarded-Encrypted: i=1; AKwUvByVf2QaPo3comskXrZLCIOaFCCLeBpiKMnnkiuaxMoGrdpyBAEaaxA/5QumyUBntxc3p8a/Q59FR8uRnAyLMA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKqRi46euP3TBFIL0HsFQVDH8VtPTK/fHxocsC3AZK2G0WBSx8U
	4KVlugcUMekSg1qhCHcZe2ogxQkNITDaAjeu6Ax/kXWamQ1EzjiUuNddm5852YYUu1x4J/q6I+f
	Cy6dJurS7miABSRlQrBbbvbF9BNpN7Fs=
X-Gm-Gg: AYBFou1msrJHfjfWimVdVw0+kqVLMiYdnAOKgYRQm3eTToLOo1Qw7op66wjF2i8uuAJ
	olvdUO7ENk9xgDsEaVSeWUuGpGSaNqUvgYJMOJokVCF9jNQFPDlo/lMYnqA4om7NhD8ydh49Gpc
	cuiZ7yQcx/kN0yBOVd8W7VnhGmONQundLQWU4NQQE2XqSH8qexUVIMXtCGZP4z6W281LZDVzCko
	GocBXSoJrLna4spFNxgniWqeBjMY9UGA2yG1KlR9P3CUU741Sy/vgrBuLZF1B+PLc72h1ArUuUJ
	AmWUjMkoMo21ADB8JvN2FVXXaEmA9IvR6ieTmqCFCdgUOfICSVWnZg==
X-Received: by 2002:a05:690c:686:b0:853:bc96:d834 with SMTP id
 00721157ae682-8b0f2149354mr41098877b3.2.1792397717882; Mon, 19 Oct 2026
 01:15:17 -0700 (PDT)
MIME-Version: 1.0
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com> <20261016140115.GA1798470-robh@kernel.org>
 <20261017-gainful-goldfish-of-climate-bef863@quoll>
In-Reply-To: <20261017-gainful-goldfish-of-climate-bef863@quoll>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 19 Oct 2026 16:15:03 +0800
X-Gm-Features: AclHuK9_kQhXB8k-ejh4iETHQ_pbinYeRno2QSundTfXAhMLFdEsJrbL5fs5ZiY
Message-ID: <CAPwA33+bR1BF9KeA9my07Yz7gXW7TXq8EPhwQ4GvHMSFDk+uWw@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_011519_937438_9C3825E6 
X-CRM114-Status: GOOD (  14.42  )
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

Hi Krzysztof, Rob,

> Existing OS should ignore surplus cell if the driver is coded properly.
> Same as adding new properties or new front-compatible.  The question is
> how the existing driver behaves?

As you pointed out on 5/8, the xlate checks args_count != 1. The DC-PHY
driver was merged in v6.15, so every kernel since 6.15 fails on a second cell.

1. Keep the second cell. Add the patch as follows:

- if (args->args_count != 1) {
+ if (args->args_count < 1) {
    dev_err(dev, "invalid number of arguments\n");
    return ERR_PTR(-EINVAL);
  }

+ if (args->args_count > 1 && args->args[1]) {
+   dev_err(dev, "only the transmitter is supported\n");
+   return ERR_PTR(-EINVAL);
+ }

  With Fixes: and Cc: stable, the stable kernels maintained at that
  time (currently 6.18.y and 7.2.y) keep DSI working with the new
  dts, and the receiver fails cleanly instead of getting the transmitter.
  But EOL kernels (6.15, 6.16, 6.17, 6.19, 7.0, 7.1) stay affected.
  It goes in with the series, since two-cell dts only exist after it.

2. Use a flag in the upper bits of the existing cell, as Rob
    suggested. Existing kernels are not affected, unless a board enables
    the DC-PHY CSI-2 receiver on 7.0 or later without this series.

I will write the impact clearly whichever  approach is selected in
the related commit messages and the cover letter.

I think the cell approach is easier to read and more symmetric in the
long term,
but it breaks more. Which one do you think is better? Thanks.

Best regards,
Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
