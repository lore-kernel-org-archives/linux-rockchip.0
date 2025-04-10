Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2695C369A2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 07:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WW1M5fFVWEPWN/dDytZwIuSXdplXrGhYpN0HHyhziwA=; b=1w089DporTWmJD
	km59oLyPCqQqWBcSUxSzCAeFwRc3/jhOSP6PRsXA3CBSMdtMaRnrxeuBPwG+7qGhtUO/79JeI+fN7
	88d0Dudd0EIC0pzFMxwpeAxxb5PUSmJ76kHQ3sEX+zrVfLkjQPFWqelgD33m0Yx3AzdGypttRapWu
	67rGpfeE3mY0RAMtMzv+Vc10V28aodUr1/HFNwZY/6YffPF9GBK0KUT2ZfF65Kwm+FfLrOfIiLUOP
	oDI35wPummdtcmx75GeCzjS7E1UohFGPt5ticb5jEduILAMSVru/5ZLpX/ZzaVlKUAOVoel4KkLMX
	2YmkDhK/ZNHIU+fmdqdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mid-00000009dCM-1HRc;
	Thu, 10 Apr 2025 07:53:03 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2m42-00000009UBo-2KzG
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Apr 2025 07:11:08 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5e6194e9d2cso938171a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Apr 2025 00:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744269064; x=1744873864; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3OcYzRuci4DVDvTV5wL2NFanwr7+BVH3bP+rdckE45M=;
        b=yUs/O4dwK1DNXbpsQedSsErMEAN7SOtI0a8OqOXOE27FikQyIKhlT5d4gLKHT0jv8g
         gd0FnHwqeCJM3uZwlLzoXzvTXhoLa5wHnMMcKa3zjwkvIlcyMcE/6c4HnVbBtaANv9Iv
         p2JRdNmVeP8QXfq9q4A1gWLATNzuFmV56HPSS3BJiB5s9jR/UnF5n9OYy1mk5WA9XRov
         9aNPYipgq+GSW4clzCpRR9NFyuDDN4nqgJuJ8Ivzo0GPoizF24hO7SnUQBCL0J1y3mbU
         wWreQZ4/SCTEKGhq20/+i91oRaxoa8ORn0QpK/0AkxeeXTe62a0LBJhVJOMqG2kbV+0n
         LLgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744269064; x=1744873864;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3OcYzRuci4DVDvTV5wL2NFanwr7+BVH3bP+rdckE45M=;
        b=EBXezZ3QV0jAT6SAmHwsJYCtE5ujFGEC/vP795dgAY19jGbdNOIKwz5eLLUYWNMHo7
         9S4hVsbhgD5VdLbxhfvIjx4Olg1qzDhWm/MAIZ0maiaogqzA4vojGKOpmhXp+1nD9gwy
         4hGrk+pwnaufs/Yvag4b4JyfM/49QAoVpHEGsrNgwEdx2kFWqWbmKNX4EQxjmhjDBdqi
         jo4zXAwqJgYIrrnzAihuFK5TACLKTOAtSN6tiJtulIp6N6a7IkJKD0Kcambe8gkzYggl
         4++WbuHFnLy+RPG88dl5TNzgKO84FcsSbJ7FivermykPAzA8Dg2BNb6xC0PROlQ4dVKt
         RRKg==
X-Forwarded-Encrypted: i=1; AJvYcCUZuR6A41MHrrd6s+mq3FSvZnT8AEKkypdVfxKfg9hLbPliXJbcMeavI4Bat3/WiPKr1jq+NYGh+4umDUcpag==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4zCUxwXwNQ/xTpVJfIfillG9j30GlyxzUVxO2TpfsHB5vyisu
	hmNj0P9Q6x9vK8sWzqXPr2NlYwjObIQQSWvB2yb+2a0HQurWGkEpq9AfC3+FrEo=
X-Gm-Gg: ASbGncvgGyZmJpGY34bKPAsVkCoX7HQ2x5r85CXg3d18deQJxJIXg9uEepUnZHaldCD
	pK85Gan9XiJuobOK3IxB0F3n6J7hKzTedkCGOMpWpFG1ULcarUjCztQAWQp4n/BN/fpOITYTRuo
	3rehywnX5oitL9SDhO5Kyrjd+ShnDphYi8cp0+0oi04KBbFRQeNzcX3rXg0zoojKBAoJbezfWfX
	oXu2dmAC0NzTRej//iGc3vALiEC3PtPJLMAEbMm0+iKo+DI8E9wAcsAvly4WJ1vX3xYaz6THwHC
	ndkL8BP4v9HWGEkcbKtLNxIDv3H8VApIpmhrU9ugyLdm8+VjKnc=
X-Google-Smtp-Source: AGHT+IETfspJRi9jQhAHy7G+NAIq/HN8GQhfewV/oWn/J+Tx4X7F7gfIyNI7Jkc9sjEejt3cHqWuJA==
X-Received: by 2002:a17:907:da0:b0:aca:a1d7:a830 with SMTP id a640c23a62f3a-acabd185e69mr120878666b.13.1744269064280;
        Thu, 10 Apr 2025 00:11:04 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:ae8a:4fb8:9c71:6be])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb3fcdsm219989266b.107.2025.04.10.00.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 00:11:03 -0700 (PDT)
Date: Thu, 10 Apr 2025 09:10:57 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
	Conor Dooley <conor@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-mips@vger.kernel.org, imx@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 09/19] arm: dts: qcom: sdx55/sdx65: Fix CPU
 power-domain-names
Message-ID: <Z_dvAT7LdR7xbH45@linaro.org>
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-9-076be7171a85@kernel.org>
 <03011a33-174b-4027-bdd2-043aa685380b@oss.qualcomm.com>
 <CAPDyKFoZ7NfN+pkCPnusvTOEaxbQhr=1FJqzdDGrLcKAzBpGyQ@mail.gmail.com>
 <66f8d957-f7a5-4aec-b8e7-5bcc7ff7f569@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <66f8d957-f7a5-4aec-b8e7-5bcc7ff7f569@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_001106_714318_CDA1D1C5 
X-CRM114-Status: GOOD (  21.71  )
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

On Wed, Apr 09, 2025 at 08:35:29PM +0200, Konrad Dybcio wrote:
> On 4/7/25 6:27 PM, Ulf Hansson wrote:
> > On Fri, 4 Apr 2025 at 22:41, Konrad Dybcio
> > <konrad.dybcio@oss.qualcomm.com> wrote:
> >>
> >> On 4/4/25 4:59 AM, Rob Herring (Arm) wrote:
> >>> "rpmhpd" is not documented nor used anywhere. As the enable-method is
> >>> "psci" use "psci" for the power-domain name.
> >>>
> >>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> >>> ---
> >>
> >> "psci" is what we want here, but these platforms require some more
> >> massaging..
> > 
> > So this isn't for CPU performance scaling?
> 
> Nope!
> 

Huh, this is definitely "perf" (= cpufreq) and not "psci" (= cpuidle).
If you run blame on this line you get to:

commit 0ec7bde7b590f8efa5823df3b52b32dd373060ff
Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date:   Thu Apr 8 22:34:45 2021 +0530

    ARM: dts: qcom: sdx55: Add CPUFreq support

    Add CPUFreq support to SDX55 platform using the cpufreq-dt driver.
    There is no dedicated hardware block available on this platform to
    carry on the CPUFreq duties. Hence, it is accomplished using the CPU
    clock and regulators tied together by the operating points table.

https://web.git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0ec7bde7b590f8efa5823df3b52b32dd373060ff

The OPP table looks like it's supposed to set SDX55_CX performance
states according to the chosen CPU frequency. MSM8909 has a similar
setup where the CPU is supplied directly by VDDCX and we describe that
with "perf" too [1].

What I don't understand is why the name "rpmhpd" does not appear
in any driver. The MSM8909 setup goes via qcom-cpufreq-nvmem, where
"perf" is directly assigned for cpufreq scaling. I can only think of two
possible reasons:

 - The power domain is implicitly attached to the OPP table(?), because
   there is just a single power domain defined on the CPU, or

 - This was never working correctly.

For both cases, I think it would be best to change the power domain name
to "perf" like Uffe suggested.

Thanks,
Stephan

[1]: https://lore.kernel.org/linux-pm/20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
