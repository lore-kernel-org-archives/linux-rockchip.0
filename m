Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77891D68BCD
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Nov 2024 16:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUlJvqovFACDgAamftrAp4DMi8sByG9SPdV/iAfYO9U=; b=zD947OfQOhr6xl
	SYAqi+6VHKPtnHthRbIY4MmR/iR6qPt3iFg729Zha/41gtmB28UkwOe0vMxIGyfYt9gxIIC2dWKEY
	CvVRIFmy/FSHQtrW7wHZmmu79XL5Wfbq2tHvaWvHmPVRaimE7yNbaYOJFc7ZpNqdZMT+gJO1cMy0c
	qsB5XXCrfKspXsPMrSXRd1uo05zdi99y/fMM/lR1G1fGYtOfvqdprLjJ/jCEKgMDgfHeulgipDghZ
	5W/V2Y4mxddR53QdwomRHXkvX9tJ3ebVsaFM3qOgKiqxhnTbzq5kE7X7b6Mv5IsPN3+OJMG+P9w1+
	biMTQge6s1JWcyL9CaJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBzd9-00000003SJj-1npT;
	Fri, 15 Nov 2024 16:57:11 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBzcE-00000003SFs-1KZ3;
	Fri, 15 Nov 2024 16:56:15 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-53da5a27771so2375303e87.2;
        Fri, 15 Nov 2024 08:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731689772; x=1732294572; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u0nInsxIdNGOgQambcoXqwexeiN04SjXqkKyG9oCO2M=;
        b=IiaDfMsdODD+4LbHplCIpqzCd4rdIpnl2gWMN0YiWwZ+DLFHxNznSnpmBKCn4Po8eZ
         dhu/S6Z5koXiZU+ObAjYEj4pAdHqvirfOZ2w4EDWr95M+UWH2xkqD2xHDyjJBIf09XtI
         gsPiEFC3QNgulwRQWitqfh6/2kl/KaHu/kA34JnKbO5JMhKh/0JL5ZRvVcVt2wXVZ924
         PTGpbaQ1MMlBBZlivadadbjC+N4w/+i3TSp2NpqVXGFPNNhis2lOprp5VwMl4XVe3oVQ
         iXUMQ0d6eQ4u//MY5qfuqAa8vYCdsRcrB3lppPYNZGfsdxR5/oI0Jca3IKmy+rTQKWrO
         gl3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731689772; x=1732294572;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u0nInsxIdNGOgQambcoXqwexeiN04SjXqkKyG9oCO2M=;
        b=pPUe1zjDmbHDQJQLsO16YOIKBd+k/zCK3cABP0CQZ2dMFi05eJau3KeNgoRulLL9lE
         jX3ODJe9QerjXIbfUJ9z1T/z8Xupz5CGUlVnd4/+U/STmI+4bLg5PuC4d2QT9O9Bngeu
         BxMOx6n7DTWt+NIJqR6koZpgCgyZhkcDd2Z0RHLZ1DnAJxYPomc3FN5MhJDhJpxShvVv
         HW9/6X5+IWckSUy22cNxyWUFNuNbu9m6HKrEHOrHuT2FOH1QaPUO457o54+6XQTzjXCz
         Idmb02qBvnrIjRc3/QV2B+XNOUzxiaMgQCyJmU/is4nz/VjQCPuYCNLhH2N2bwb+Y0BG
         iv2A==
X-Forwarded-Encrypted: i=1; AJvYcCUCiTKlUCBfiivzvNxhrmuNXgUust9+4kvSIaPLHDzOe8b35sKcbS2EwhWb4wFffBYL9mIIhlOYzZaRTUaIf5Ns@lists.infradead.org, AJvYcCVAl1aW49zN0Rrhdwrz88FioKSUun57sRhLLeSrYzJCm7OUKzgXmFErJ6wgO6/S2sk8wtvpFtNEGPcMU9JFh7o=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywvju8FraEfMJB+MCgjJTVXc0I/0LhfnHPmGD4HAKz984lg+s4/
	e3eFmepe2w4+yh/pNMtoMVVTOmJTbILX3yBZTb66QR8gkmO23b3um3j9qaS+jTC+jbG4GnjeSqt
	XiMK9j/JPhA9fxzjeD/Lc9Pu1fhw=
X-Google-Smtp-Source: AGHT+IE20zD7t2FLBp8RIdE2sMJJAa9tUAjhCXdCLHXfNc2IobukMtVDq0qK63Ffk2tfmDubFC4R/lr31VQmlVMzCXI=
X-Received: by 2002:a05:6512:3a8a:b0:53d:a283:f290 with SMTP id
 2adb3069b0e04-53dab2a65d6mr1953880e87.31.1731689771303; Fri, 15 Nov 2024
 08:56:11 -0800 (PST)
MIME-Version: 1.0
References: <20241111045408.1922-1-honyuenkwun@gmail.com> <20241111045408.1922-7-honyuenkwun@gmail.com>
 <CAGJh8eDdj5zwENGWHHdZt8ejdVZ=d4GTNzW57rohyL2rvEA_hg@mail.gmail.com>
In-Reply-To: <CAGJh8eDdj5zwENGWHHdZt8ejdVZ=d4GTNzW57rohyL2rvEA_hg@mail.gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 15 Nov 2024 10:56:00 -0600
Message-ID: <CALWfF7+7KSZ2UJUXgS_Pr3=xzMEyjKgZ4BPL47zkmfnM03HUqg@mail.gmail.com>
Subject: Re: [PATCH 3/3 v3] arm64: dts: rockchip: Add Orange Pi 5 Max board
To: Marco Schirrmeister <mschirrmeister@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_085614_353334_DEA57058 
X-CRM114-Status: GOOD (  19.48  )
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

>
> in your v1 patch series you mentioned you do not have access to EMMC
> to test. I am happy to test EMMC, but I had problems with the v2 and
> v3 patches.
> v2 dts did not compile and I was getting errors for the hdmi0 entries
> like "Label or path hdmi0 not found". I assume I am missing patches.
> After removing it compiles but the board does not boot.
>
> v3 patches don't work against 6.12-rc6/rc7 snapshot. The patch that
> modifies the 5 plus dts fails. I again assume I am missing other
> patches.
>
> If you have some info with which kernel or other modifications I can
> use your patches, then I am happy to do some testing.

If your primary focus is to only test eMMC support for the Orange Pi 5
Max, then apply the patches on top linux-rockchip for-next.
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=for-next
That generated DTB should be able to run against an older kernel since
the Orange Pi 5 Plus already works.

It's complicated since the HDMI Bridge support is in the pipeline for
6.13-rc1 but it goes through different trees..
The driver itself is merged into drm-misc next

Where as the DTS updates are in linux-rockchip branch

Also, regarding v3, I rebased on top of linux-rockchip for-next to
include the updates for HDMI and GPU on the Orange Pi 5 Plus.

For my development testing, I used Collabora's rk3588-test development
branch, so all the needed patches were already in one place (since
they test on a Radxa Rock 5B with the RK3588).
https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-test/?ref_type=heads

So for v3, I had to first cherry-pick the Orange Pi 5 Plus changes
from linux-rockchip for-next.

Note: for v3 I held off on adding the USB 3 support for the Max, I was
going to let the Orange Pi 5 Plus finish their USB 3 submission before
trying to refactor the common DTS nodes.
https://lore.kernel.org/linux-rockchip/20241025175415.887368-1-wens@kernel.org/

>
> Cheers,
> Marco

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
