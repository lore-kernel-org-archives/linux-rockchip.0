Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22CF2C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 18:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=It4ETFa31kdYZR10+zGmDBKACrxeBZ+17rrXtOnBmPU=; b=QTSRIE3LD0lksmvJoPkKJFM3ay
	kb7+LAzT/PvuMixlJ2rPKDZweLE+LZOL/65+5VeI1wQkT3Xp4rI7kVhHkOwDne9XYRQ79H0PcqtZS
	JisbRebyW8u2se3dJ0qF0POwoyOKiLx9dcoQkHjl8szPnRJ78icYVUtFSvB20qLl/DHGdIX0ouPCW
	2e0QrYApwhlsc9JzAVANLQB2U25euRTlaypao17SuxLWUT1XX/xfq1ldCj4vfV88eOBpOaPEnVLLd
	HPHi3Kevq5JNCfPCTHZt6F5uDvStLztbJV6/kqcOzvLlGnUgeUQ0/Flg6tKD79A68WTdpaKZ+ibpN
	enNGY1BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJHXE-0000000CHD2-2ATo;
	Mon, 17 Jun 2024 18:56:56 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJHX7-0000000CH7h-4Bgj;
	Mon, 17 Jun 2024 18:56:54 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1718650605;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BeHab2EB/im2VzcJZs7uIHbMUrPfY1ASvmg3ai5d4lg=;
	b=SdByaSaSguR0ZacLrEThlgoEA1RMADl9oYL7qPU+siL3TzhpVwg6OnnQxXkXomObctXTjF
	+IQGsXHgvND+i9YvSCUWHUzMqdflF7sZM4PN6Tfj/+YFFAGLTlgfkZ/RN9VaKjxVoEJD71
	Wl8U9OwP80ENfJMEs5E5WoB6Vosk1IkGv9jbo+HSqsOksghpzbiHrMFWqEAAa7DAa5QFf0
	krEh/ALdp+RDTLpTmBiAaCJtyT/ZfAj5CMfUYfrv6MvVtg36Zrj/BLPztMIEdqTnbJV4Zh
	KhuqAiM6zFUJA4jPcMsxBMP+yVDdqnHRkfw6W8q06BzaxlUCxmhs6MK6+yx4JQ==
Date: Mon, 17 Jun 2024 20:56:45 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/8] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
In-Reply-To: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
Message-ID: <8840a521e248ba006e65e77f1a9be0a9@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_115650_688467_5CFDFA87 
X-CRM114-Status: GOOD (  37.02  )
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

Hello Alexey,

On 2024-06-17 20:28, Alexey Charkov wrote:
> This enables thermal monitoring and CPU DVFS on RK3588(s), as well as
> active cooling on Radxa Rock 5B via the provided PWM fan.
> 
> Some RK3588 boards use separate regulators to supply CPUs and their
> respective memory interfaces, so this is handled by coupling those
> regulators in affected boards' device trees to ensure that their
> voltage is adjusted in step.
> 
> This also enables the built-in thermal sensor (TSADC) for all boards
> that don't currently have it enabled, using the default CRU based
> emergency thermal reset. This default configuration only uses on-SoC
> devices and doesn't rely on any external wiring, thus it should work
> for all devices (tested only on Rock 5B though).
> 
> The boards that have TSADC_SHUT signal wired to the PMIC reset line
> can choose to override the default reset logic in favour of GPIO
> driven (PMIC assisted) reset, but in my testing it didn't work on
> Radxa Rock 5B - maybe I'm reading the schematic wrong and it doesn't
> support PMIC assisted reset after all.
> 
> Fan control on Rock 5B has been split into two intervals: let it spin
> at the minimum cooling state between 55C and 65C, and then accelerate
> if the system crosses the 65C mark - thanks to Dragan for suggesting.
> This lets some cooling setups with beefier heatsinks and/or larger
> fan fins to stay in the quietest non-zero fan state while still
> gaining potential benefits from the airflow it generates, and
> possibly avoiding noisy speeds altogether for some workloads.

I should be able to test an RK3588 cooling setup with a really beefy
heatsink in the near future, so we'll see how well the "silent zone"
performs in practice and not just in theory. :)

> OPPs help actually scale CPU frequencies up and down for both cooling
> and performance - tested on Rock 5B under varied loads. I've dropped
> those OPPs that cause frequency reductions without accompanying 
> decrease
> in CPU voltage, as they don't seem to be adding much benefit in day to
> day use, while the kernel log gets a number of "OPP is inefficient" 
> lines.
> 
> Note that this submission doesn't touch the SRAM read margin updates or
> the OPP calibration based on silicon quality which the downstream 
> driver
> does and which were mentioned in [1]. It works as it is (also confirmed 
> by
> Sebastian in his follow-up message [2]), and it is stable in my testing 
> on
> Rock 5B, so it sounds better to merge a simple version first and then
> extend when/if required.
> 
> This patch series has been rebased on top of Heiko's recent for-next 
> branch
> with Dragan's patch [3] which rearranges the .dtsi files for 
> per-variant OPPs.
> As a result, it now includes separate CPU OPP tables for RK3588(s) and 
> RK3588j.

Thanks for the current iteration of this series!  I'll review it
in detail and perform thorough stress testing on my ROCK 5B as soon
as possible.

> GPU OPPs have also been split out to accommodate for the difference in 
> RK3588j.
> 
> [1] 
> https://lore.kernel.org/linux-rockchip/CABjd4YzTL=5S7cS8ACNAYVa730WA3iGd5L_wP1Vn9=f83RCORA@mail.gmail.com/
> [2] 
> https://lore.kernel.org/linux-rockchip/pkyne4g2cln27dcdu3jm7bqdqpmd2kwkbguiolmozntjuiajrb@gvq4nupzna4o/
> [3] 
> https://lore.kernel.org/linux-rockchip/9ffedc0e2ca7f167d9d795b2a8f43cb9f56a653b.1717923308.git.dsimic@manjaro.org/
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
> Changes in v5:
> - Rebased against linux-rockchip/for-next with Dragan's .dtsi 
> reshuffling on top
> - Added separate OPP values for RK3588j (these also apply to RK3588m)
> - Separated GPU OPP values for RK3588j (RK3588m ones differ slightly,
> not included here)
> - Dragan's patch:
> https://lore.kernel.org/linux-rockchip/9ffedc0e2ca7f167d9d795b2a8f43cb9f56a653b.1717923308.git.dsimic@manjaro.org/
> - Link to v4:
> https://lore.kernel.org/r/20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com
> 
> Changes in v4:
> - Rebased against linux-rockchip/for-next
> - Reordered DT nodes alphabetically as pointed out by Diederik
> - Moved the TSADC enablement to per-board .dts/.dtsi files
> - Dropped extra "inefficient" OPPs (same voltage - lower frequencies)
> - Dropped second passive cooling trips altogether to keep things simple
> - Added a cooling map for passive GPU cooling (in a separate patch)
> - Link to v3:
> https://lore.kernel.org/r/20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com
> 
> Changes in v3:
> - Added regulator coupling for EVB1 and QuartzPro64
> - Enabled the TSADC for all boards in .dtsi, not just Rock 5B (thanks 
> ChenYu)
> - Added comments regarding two passive cooling trips in each zone
> (thanks Dragan)
> - Fixed active cooling map numbering for Radxa Rock 5B (thanks Dragan)
> - Dropped Daniel's Acked-by tag from the Rock 5B fan patch, as there's
> been quite some
>   churn there since the version he acknowledged
> - Link to v2:
> https://lore.kernel.org/r/20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com
> 
> Changes in v2:
> - Dropped the rfkill patch which Heiko has already applied
> - Set higher 'polling-delay-passive' (100 instead of 20)
> - Name all cooling maps starting from map0 in each respective zone
> - Drop 'contribution' properties from passive cooling maps
> - Link to v1:
> https://lore.kernel.org/r/20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com
> 
> ---
> Alexey Charkov (8):
>       arm64: dts: rockchip: add thermal zones information on RK3588
>       arm64: dts: rockchip: enable thermal management on all RK3588 
> boards
>       arm64: dts: rockchip: add passive GPU cooling on RK3588
>       arm64: dts: rockchip: enable automatic fan control on Rock 5B
>       arm64: dts: rockchip: Add CPU/memory regulator coupling for 
> RK3588
>       arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
>       arm64: dts: rockchip: Add OPP data for CPU cores on RK3588j
>       arm64: dts: rockchip: Split GPU OPPs of RK3588 and RK3588j
> 
>  .../boot/dts/rockchip/rk3588-armsom-sige7.dts      |   4 +
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      | 197 
> +++++++++++++++++----
>  .../dts/rockchip/rk3588-edgeble-neu6a-common.dtsi  |   4 +
>  arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   |  16 ++
>  arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts   |   4 +
>  arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi       | 190 
> ++++++++++++++++++++
>  .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |  12 ++
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |  34 +++-
>  .../arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts |   4 +
>  .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi |   4 +
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi           |   1 +
>  arch/arm64/boot/dts/rockchip/rk3588j.dtsi          | 141 
> +++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts   |   4 +
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi          |   1 +
>  14 files changed, 577 insertions(+), 39 deletions(-)
> ---
> base-commit: 5cc74606bf40a2bbaccd3e3bb2781f637baebde5
> change-id: 20240124-rk-dts-additions-a6d7b52787b9
> 
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
