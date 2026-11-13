Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3631D606A331
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 20:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sYgs4hSJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=PewIO0Eg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=fOw+wygM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3zcC5Qmuu0QcM4Wpl5yZms28YqmxgVu3YBprth7mPMM=; b=sYgs4hSJUP8Jj/VqB1rF1UfVYU
	3Qw0+Ek56QXoaRuby0Fogiel69Wb5tRMb4yJZsN12hdGdhF/Xc++iicEA1yytbA3Dl56XcrWjxn/n
	4ABO/DmyupyfuCwYucBUVZ4BYDKUYNKvKs82TXXgecUm75pJLuaiuyRKdz9CYEXETU7JT7cYSlckl
	JFM/9Qrin4d7+zkJ4KXFnEorlMsH9/xw4iiTqRjZJcKeQCklHx8yf7SrNm4YMhDndLU+e1qFuB98r
	W86ECa0ZX0d0NxCV8NOkwA+Sw2aA84Iv0Atl+qOR1qAmRTtM60Q9uSeBzDmEsRmDRccNx4caYtbgu
	BfYVQliA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxmn-0000000ENlw-1LmP;
	Fri, 13 Nov 2026 20:22:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxml-0000000ENko-0xbE
	for linux-rockchip@bombadil.infradead.org;
	Fri, 13 Nov 2026 20:22:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=xtumAuvNbWuwUXK0cxJRs7l5/r2sAahJH/6uzW92HAc=; b=PewIO0EggX0biFdBIs7o5Fqgsx
	Ycckl6YnHT//AiMB27iKBfPmjh2TAY96A7vZ5FF2MALM4r4+YmcMgSB8SHPbL2EsKbsGTNakCsjFy
	D1P9TLfgl9y5UIJaGy8oIVPDxGro9ExvcY+/zELDdQvo9frJBLFGAtGnhHiky+GjCtINnRByDDudL
	ZU0RIcigXCzl9r/+F0Busmj94SbxVi1rYMzXgQBGHJbcUIsHHGHLWugj8ldZPEFMpjjotzi8EFoaL
	npporxqTJaolj99FAPJYaBvqbRHx7gtMrrweweCWZRgcJ+IhowJkLMSlIjFTyn9rfTL7mlFdKGNGG
	+Dzyk/IQ==;
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxmi-0000000BnY9-1DPS
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 20:22:10 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-3adfb0c9e3cso2651271fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 12:22:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794601325; cv=none;
        d=google.com; s=arc-20260327;
        b=ChepTWjo/mGPBvbwY6b/lkzkoSgXieS5XkjyTPpsUDpDZCeB8oQdBU0Vi3V7OmkUNq
         7QZXxy2X0SlxLsgws1UQk/uWCcICVt4mcSRnaNEt0H2Vxl0ttfwRYuIc7B2bAzYiMdka
         yvXgDJgvXjStH8KOj0BHJ1MIz7E6D1vKRWEBBiuZ4oU6UPh3Jyiud8GmTD08zRkaE+ID
         T5oX29/hCv+pLipxFrejTmmxmGDy+L7DSFANztioOk0eL2ZyHnqlc8FpEMgVZT3Q2YVl
         O9zlRIAbZuP/XfcWd0IraJxoH2tVoxpbr2n8zpg/9im3VnZ6KmB/t89UbH8rBnTeoWJG
         F5rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xtumAuvNbWuwUXK0cxJRs7l5/r2sAahJH/6uzW92HAc=;
        fh=l5mBv8ZrDZ/KC3xefEaI3LaDxLY7deN6TZ4bP1vjbZY=;
        b=djIUnxPvMNu6yX4f6Tw6pSVKnTR5IA9FV0iY3DJNawfPJSoDyJkjwjJW25+8kAuqkG
         pi1MKJmCHh/vMpUBb9yaVJq1nh+tXcjuLJxqrHYGGguIkyLOYg92e0OPUY1YaGQ6LUNX
         URi4EK/hyqLkAB0FFOoeXTCF4qvQxqwfE6nqNKKhWL3NSNMAZZhhjOiTUiaF5p8Ar8l7
         k74SUh7SrTzTI00VN3s6PmeFKHFAgfx/ftK8/iA3MZX88Km5cVSlNiezFhd8V8aFr6+S
         T56xxf4UkHhZAYWAphiFNQep7wP0w42pr9kC/AwJ7gXY+xTk44A8Ts32CNJyq9qQOl6G
         i/JA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794601325; x=1795206125; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xtumAuvNbWuwUXK0cxJRs7l5/r2sAahJH/6uzW92HAc=;
        b=fOw+wygMkVmZMWAl7BBWqgRhKjaN3uPtCLuUVxIkFYNVRlF+PcBfW9llYNeWEnkGz+
         VTrfZs6BmUOF7wmqjrctDDVkqjOcwMFD/8LOcecgiP+u0M6Ms8OD30jkoKTivqUv0qaZ
         y4Z3VTOrL0fIS3q9QVUkZ13KHa/s6gg93hApYFWYzjly68M1EUds4Lopm0BWaqyNCz2R
         guFeiRV/MZqWgDGEQTBCuqIwCuAVFxPuxk+rtwaGwbyOK5wXwsittfQSMiOkQ0YhAw/h
         ygQ8p8Af+oDatyw1PP34xRxS9WGlRJyemBwbb4REXi1MnR0062czOYUQgd7bsEyLwlc+
         85JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794601325; x=1795206125;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=xtumAuvNbWuwUXK0cxJRs7l5/r2sAahJH/6uzW92HAc=;
        b=iKYGSq9yjUHVOtzUSsRCFga1dxaBkqGYPVOETJtVvBNw74Dt3lesLMG12MvXSoD8dk
         Za5J6TV8LUKzKHqSbbhOrPyTKb+InnzTbvQD1xFHiracWRp+MGckq6jt0HEzW61aj3l1
         lxbTE0MnIJqHfRJDK/p963sW25jgE9vfdbEL70IgABRasl+bfuLH7XcJaUoA4+3tk/lo
         w0XQbr/TnFQe6rV8UULnnL4KpRBrRMFRHNFqQ+xw4cI6U9cjzpJLRnnkhaoNvl2ClLNg
         7soT3TFt/ooTl9H1bR5/rpy8c3FeXIOdtu6pEdzd+vfa+p3PodVBHxOWAO6ABLvwfVQ2
         XtQQ==
X-Forwarded-Encrypted: i=1; AL+hErG1L0mgPKCSA3hUpMeCsupa3JDuzZDTwHy/yght0jTt0KBWNAnBhXAUuOB2UPVPopTogedca2X/U7jodRFLLA==@lists.infradead.org
X-Gm-Message-State: APuU4Z9FjCiSkkNM5C8yMs28i6MwsURVOofh2fvil/u2+z24Fn7x5IgL
	dzXCAg9KTifY1M0PMZjyo8I0ole9bXqC2a9VAuzlvujifzEAdYpcyjH5b09gWgoXqJaW6X4BQNx
	2V7s9uektzYn1ehhhZ3oPvOFO4tGsPXU=
X-Gm-Gg: AYBFou3G8OCmeqky3twW1k9SAAHtymTli0aweaU6Ar01B4kHfBkM/AToHZVFAMkdU/t
	trHp78rQNNrs+7Z7Uq8iNqo1lx3YtFBoI0XWecd60JaD7B0REEX/7W4NLrKvE90pnkWWXWesXXf
	80VmdSM/MyoyrOHRuHZFlUUMnz5jP+5nf1qax3SQNMvdA2j1OBosX5wVYid61Ee4bNroqCcZBkR
	kmOPUNDvNk8eVbsFUaKe78m3ZSNdWpOI+VThufqkvthseXIvtEZ6/RCPZNoHU+ONc/bp8x4rqjO
	0Y1p10RTNWI7kYJ1uFNJ17NeNSsUrq93AoMzDGZBBnpi0OFBoXK6eULiR5imXOv5VHcS9hD0dXe
	OK8SrS455wY7sRrV6WHEXFHPCVrqbovYNIGjPSaUBT7RbDdWf52PhzmR8C6rk297gkRQ3tvI3h1
	cDj7NtIDVmWUVnT+AB
X-Received: by 2002:a05:6512:1322:b0:5c1:57b9:90b2 with SMTP id
 2adb3069b0e04-5c170746a13mr1720283e87.1.1794601324638; Fri, 13 Nov 2026
 12:22:04 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261112-hantro-robust-v2-0-18561fd48838@gmail.com>
 <20261112-hantro-robust-v2-2-18561fd48838@gmail.com> <c97eef1ba88daf83d231d2ecc78b47fcf524385c.camel@pengutronix.de>
 <f212840b-92fd-4d97-a6a7-2768a55483f7@collabora.com> <CAEy9hNU2ox76TFKtdisqUHDxZ=3gPVBDBcjz_W8RtCpCpK5d7g@mail.gmail.com>
 <b3fa092ec9390cf5bfe2f4338af68327be70e6e1.camel@pengutronix.de>
In-Reply-To: <b3fa092ec9390cf5bfe2f4338af68327be70e6e1.camel@pengutronix.de>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Fri, 13 Nov 2026 12:21:52 -0800
X-Gm-Features: AclHuK_r_rPrVJRj0pkug0EuQb97pNCsN4qnHk9bddNHOrBile8NMgFa-B299mE
Message-ID: <CAEy9hNXNaAdcL4NMmNf7sETknV+jQBp-inqFd-qAPut041GjJw@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] media: verisilicon: Don't hold the VPU in reset
 after remove
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Hans Verkuil <hverkuil@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sergei Khomenkov <shomenkow@gmail.com>, 
	Tharit Tangkijwanichakul <tharitt97@gmail.com>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_202208_190407_12634B29 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
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

> Would that more correctly describe the hardware though?

Yes. The IOMMU is inside the AV1 block and the TRM has no reset for it,
only these four. v3 adds them to the vsi-iommu binding and node.

> So this likely would require exclusive reset controls with
> acquire/release.

v3 does that: both drivers get them as released exclusive controls.
vsi-iommu acquires them to deassert on probe, hantro for its probe
deassert and for the timeout pulse of the encoder cores. Remove still
leaves them deasserted.

v3: https://lore.kernel.org/r/20261113-hantro-robust-v3-0-82383c722ad2@gmail.com

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
