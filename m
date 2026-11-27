Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93DFC606A323
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 06:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dlwyLxdD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=rhrFcT9/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JbbdcWcSHfa+kD8nNP3cv1urQ+3hiSC2EikRZ+o8QiI=; b=dlwyLxdDWVOKfv78cQzpjQuSmW
	tCtd9g/7mOGvgAdITgV9Ox1LThj1jOzrbDp1xPugCgyhLFV38ymV5IACUf05Ps7MC65vFC+L7f2cA
	Pdpj3ix9z8dhq7lVCk4oqzuFkhg7dZNtZ/t67PwkR3zGO7Py5yuZ8egKCFVnNqUTS9NdLn61x2kb7
	m6jmpvsCVkOCX5prfW/MpqYWpdYjAVzdLYqh243fnWeQrTCBRZXM9c8MOyW+6sKS2Q1Irw30x2vr4
	c2CfF/iIJmxTIPhwXdgRrhnJL7BeoOJuol9gNnltSWskSH6GBEcuFPWlFfKxHaC9N+6OXF4lPpaJP
	it/SCIpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWpNf-0000000F1wq-1k4v;
	Fri, 27 Nov 2026 06:24:23 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWpNd-0000000F1vy-0RKx
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 06:24:22 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-6b86bbbe954so1203639a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 22:24:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795760659; cv=none;
        d=google.com; s=arc-20260327;
        b=nFMpvpsdeMyihtALd6E0+G0bSvc53d1hGkJXRXSnF0OE4HaKo4MTfszojgFiBfcaIW
         eYp2wgMXHAjuQ5qcvJ5AvDnD5/5kQRVAHkAarYZ0WeT6o9zGOWcHY12K8x0hQYtpuV/h
         gLS1G6P7m+ZglcxsLRxFlv8PBr21jcBQNKf1moH6bBlUOHOlG0uB0c9+lOiLjEKimoOw
         CT3kPM40pNerVo2W5xFqNhDKPvqX32jjlEP3jWx6g1XIUfr1yWzMLJ9yVGCvnJm+IvLC
         ZWFjOFQUQmvl3oXrsP+vLxsO695KifjVtCP/byjY/0BKohNnWGDITdCLwjD7nWr9j9Dr
         viEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SBkZFZAfcEuvoK54tInJ2sdXwGuJlWuARWjKskeguWQ=;
        fh=iJFVMqf93AMDeAr5XwRqNu8cyMPFH8s0+kT3Cno0fcw=;
        b=FbRVBjC4mQ26zjgWsMuJ1ce+17TjLNJFn5xqSLiCN7XpLn5OBcBUyr9OCU2rVnL0ko
         1N/er16sDZmfmUQNt7k9yxW8Ksl3E028gTxxhOWwVRvivJ8devCZxmZNFM+4vhpwe1R+
         oN2+GdQHoOU1WeYowGux/lpP3X4jVzmgh+IbarALIWujQ4TXXUfzrOZoc/Jv0OolNOPw
         iJoVxYXJdlB8A++4SXvh42S65fNVWYmGVcrZGZFnxfXRyMiC8tI7mxx8g52eRp4yNvWA
         Hp49oFHwYUjAqH+nw2kzXyKeZuULElZcq4vP74+QMIDOSwvcwS7HLzsaw8Ym7JQQhcWY
         69zg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795760659; x=1796365459; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SBkZFZAfcEuvoK54tInJ2sdXwGuJlWuARWjKskeguWQ=;
        b=rhrFcT9/2QldNSbThaYhFQ9jfhSwk/BoMzT1ERcWsEn26/26pkIkfO4+mRARlaTyg/
         BUAPkkRs0/9H41a7K/w2AsbLwNQv9Cogyg/rbxkrsSvbYL7y++dOMl+e5ID29iU87BzM
         gf5STsAaZqqoKQNolAPV4ILrLQSo6bgqOLneyIcWHlfL58z8pEISH9LkrBy2noxGj5BL
         KH/2HMAfB28utpJAwjhaQJ+hwTaU2WW/rRFRxO3uH5D7NcoFlcAyNcAHnUPAmOQEgt6q
         TRoCuHpN+5KqSgmNWkygpVpwSPlMDa0NtniAFf/SDzy7mVddKb6vAwOKViOafyb/oB0U
         T61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795760659; x=1796365459;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=SBkZFZAfcEuvoK54tInJ2sdXwGuJlWuARWjKskeguWQ=;
        b=FTUMslsluVtbevmEVtoP35ytBcWSmpDWmXXfLpvPLK14OrUJsLNe80BR6oyYcVm/GB
         2G23GulHvLZvGrKzrj45FP6itfjCudB2c8WSbU5QyJONh8UbeK8pO6Xc/Ss2JTUbgiaL
         e9vY9UI7+/MjEMWhuCKPAYMoYyD4cynF4I8zFC3JPUnKS2ujhSReSQKJc6rJtTLa1UhY
         dEu9YLiXcohS2FRu/XMByiQBHvpXym02D7pB+1tAXecaRKr0nD/fEbH1gcPsA6aCpg5d
         5A67ZCoWS3/91crHcBZTUTzIKT9+xG7u3u+0byr6Vk+qtKQs+4kXaZAa4bp0WbcViUHo
         dGfg==
X-Forwarded-Encrypted: i=1; AL+hErGhjKZ6HoZCfQhhKxQv3tfbrQgE3rTRJQvivleb00rI1vZoejG4C1r2EUMKx2r4XMLOf9Tg7W4bDd61lEaS7w==@lists.infradead.org
X-Gm-Message-State: APuU4Z8iIwShuLcU4PTOK9VYCK1nEe4eMU07gZDDsf0U7RWcm3idMOtV
	NFYxKLBedRTkSkjYEMNbZTnPDRH6tSzbU2DF+zeXnMAZSOfZec3UU4jRADEUPQKl7eFv8pInhZY
	+Olbq4/bVycFWoP+FaW6Y6yrNyGOR4XE=
X-Gm-Gg: AZFdTZehByAhI0GpwEELuTmrhXyYg92O1ypy0VEVICvBO2iH9VmOGAh4GGO2jEFoREF
	RiKjmeTcFpZt76QILUv4UlRV7MY/s9t98lOBrskiiSSMis5H4Iem9R8F8WlhA11tUE3HJsk6d0P
	4Wmokwt/pWuOKKxtbNzsGtWjBrGaYpiQrbgUs0u5VP3DQl3e2a63e+ixBsoB55NLow9dqhO74G4
	C8hF06Fn4yOEsvggNJ/f1VQVZbQ8UaKvxPtooJsT1heU7dZwpxIZvWi8L0eN6m98l4xgGVN8idE
	8jdC6Uit/+KRnmlbyo8qqrTkQtjgdYmxGEpPjNxHAl9cRtMDDZiT3tt2rWYQaVb1NIZR4cvonRY
	9w4enJdR9DRJK4q+GJqj0L+JOmsPfsnNvOkRsHzy/CHWMLjEHrWUoKOOv+8AEHC7Ri5bX4IY=
X-Received: by 2002:a05:6402:c521:20b0:6bb:3e3f:2cdc with SMTP id
 4fb4d7f45d1cf-6bb3e3f2fecmr4072358a12.2.1795760658224; Thu, 26 Nov 2026
 22:24:18 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
In-Reply-To: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 14:24:06 +0800
X-Gm-Features: Aa3M54ovbh04_f0CIR-_hXe0njTveJM5wqr9aBZi2LAaLZkChYM5oN2Bhm_6rKk
Message-ID: <CAPwA33K7f2EbtH8rqihnxB8RkB1PzJTmDyGJ39ojROuTYwK0Dw@mail.gmail.com>
Subject: Re: [PATCH v7 0/9] phy: rockchip-samsung-dcphy: Add the MIPI D-PHY receiver
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Sashiko <sashiko-bot@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_222421_189721_2DB34967 
X-CRM114-Status: UNSURE (   6.59  )
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

Hi all,

Michael, I kept your Reviewed-by from v6 on 6/9, 8/9 and 9/9, as the
v7 changes there follow your suggestions. Are you fine with keeping it?

For v8 I only plan to drop the Tested-by tags from 1/9 and 2/9.
Please let me know if anything else should change before I send it.

Thanks,
Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
