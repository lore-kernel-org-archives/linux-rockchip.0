Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D7CAC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 14:20:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0254C2222A
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 14:20:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0254C2222A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=INtZw9N0P25zWfvUhMZ/DucZXEeUAj41XzZ74bOTPbw=; b=QgeDI/c0FPEt04ZUfs35meRR4
	dRJh3gntcUxcVd6KNkksYfitkIH5V7ySCdzi7khmkwyNGNN/K1tCb583HzNLdWDolCOJJy3jKy/jT
	1h4sFCc+vteEO/3CDM9EpLtAkipJscDui7Zl0vC/h3Jy+AooRXBbi1hk6IyYnjGrn+alp61LHJJnE
	cGkrsKyWPq4tfWgMTqMp2siQ68Mpp2Shu3TRc1/fGdCmTjkj7OpBiFSOzQBTjPMBF0PTvAMOs8/W3
	9y58nILCowJpA9sDqyMxexqKS5mA8QVZSFLjd6LCS14kHjal4kI5phuohUE8y9nQR8EWQxOR3ATqC
	Qt6ohgJSw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1VOR-0006Xi-Ee; Mon, 18 Jan 2021 14:20:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1VOO-0006We-AL; Mon, 18 Jan 2021 14:20:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F1911FB;
 Mon, 18 Jan 2021 06:20:24 -0800 (PST)
Received: from [10.57.39.58] (unknown [10.57.39.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F9CE3F68F;
 Mon, 18 Jan 2021 06:20:23 -0800 (PST)
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: rename thermal subnodes for
 rk3399.dtsi
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
References: <20210117150953.16475-1-jbx6244@gmail.com>
 <20210117150953.16475-3-jbx6244@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c92467e0-3901-4a1c-3857-6ef055acc381@arm.com>
Date: Mon, 18 Jan 2021 14:20:23 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210117150953.16475-3-jbx6244@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_092028_425003_1655D5D8 
X-CRM114-Status: GOOD (  17.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-01-17 15:09, Johan Jonker wrote:
> A test with the command below gives for example this error:
> /arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml:
> thermal-zones: 'cpu', 'gpu' do not match any of the regexes:
> '^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', 'pinctrl-[0-9]+'
> 
> Rename Rockchip rk3399 thermal subnodes so that it ends
> with "-thermal"
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/
> thermal/thermal-zones.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 2 +-
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi        | 4 ++--
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> index c88295782..b20774081 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> @@ -126,7 +126,7 @@
>   };
>   
>   &thermal_zones {
> -	cpu_thermal: cpu {
> +	cpu_thermal: cpu-thermal {
>   		polling-delay-passive = <100>;
>   		polling-delay = <1000>;
>   		thermal-sensors = <&tsadc 0>;

Passing observation: why is this DT not just referencing &cpu_thermal 
directly to add the board-specific parts (and not repeat all the SoC 
default properties) anyway? Cleaning the whole thing up might have been 
a good idea :/

Robin.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 4e94b7ebd..3de493ad6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -761,7 +761,7 @@
>   	};
>   
>   	thermal_zones: thermal-zones {
> -		cpu_thermal: cpu {
> +		cpu_thermal: cpu-thermal {
>   			polling-delay-passive = <100>;
>   			polling-delay = <1000>;
>   
> @@ -805,7 +805,7 @@
>   			};
>   		};
>   
> -		gpu_thermal: gpu {
> +		gpu_thermal: gpu-thermal {
>   			polling-delay-passive = <100>;
>   			polling-delay = <1000>;
>   
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
