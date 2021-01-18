Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7B2C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 16:48:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2816A22285
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 16:48:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2816A22285
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pADnc8wYrBG5FQmFsifCU4k9yEMVU2ID4+BDTFEJz8U=; b=KAYn87mcl1O1iamkqJde1gsgL
	Hp97/Z2g7gm/u/wUXnJoFYaq0mdl87wMkJX/PmHq2GHyiHT3SOOoy37WiDZDYUGxZbildSPBSICqZ
	oq1MOkfFNNSokPMW2iJP2Unh7BvNa7LzpfLyOjf5GaCxIU5OUdvQADkFR35D6RjAxYnTrc5o6E5UC
	ADO6H05KxOPg1jA43eqArKLD64eyJmA8SMPsD+8ka5NpOzeufsrYeAJ1yXS4FDNxtGxo2BkQGEEE8
	dbMhP4gW/VEn2UV6gu1i9YtMJMX5s8OTbUhx+FjLMfChj35TzqTCt6cpMnjwZQs9/W+JqfY0y5m8l
	TtmS1kmlg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Xhv-0007Ce-Lj; Mon, 18 Jan 2021 16:48:47 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Xhs-0007Bc-Ca; Mon, 18 Jan 2021 16:48:45 +0000
Received: by mail-ed1-x532.google.com with SMTP id f1so4206715edr.12;
 Mon, 18 Jan 2021 08:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MdavDPScT8OMhzBsegf4N4uuSFdYSkhFpD+67Vj7XX4=;
 b=rjR+0plW0jpyDPgI6e9OUdyRjou3VeQ4qpxqBG4i+DV6JbdbOvKLk63j4OWwBKmW8R
 M9Cx5VPfOMI1eTNEhutT7gh4rcGKXVvX+bvhAm4f/LBHg0T59erwISKG2qvBSfPqnji4
 gyqbBXlutXpdB8Hw2x2L+XimtM5305BezpSXAcq5Gqxr2W/PoSpTbhwjDx49u24F2cUi
 Enh3cXAf2WxwL5a3RW0BtK1Ho3cdTruGR6IXrNpgkEkvaszjs3COnsX0NhZPhNePFut9
 +TJK4lsKmLMFdR/T5Sb/QgiwwIGrpL8K8XH5PLoATmTEM7tgOljPnWLFlKvTnzNE9Ltj
 DFag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MdavDPScT8OMhzBsegf4N4uuSFdYSkhFpD+67Vj7XX4=;
 b=b4/l4IpeoCYnCy9ADSIEb2m2uFejfUvEJ2XbBGlLgnbJo24bXuagODlh0+gswHrSoI
 e9Jzr+Aa7FN8tOQcpyWotrH/S0HMPwb3fiECer7jjgFbZTlC9dHnogH4Nk+O5tUSVvpT
 66KyDahxjlEttkfgpeI9UFAKWVuwOf0D5bve0FfGIO8FaQM9ahCBBlOQlpFDicKo5QZw
 +cIvDzEUkKv+Rv3eRDlgIrk2DxR8y6bIPXIB/Vnx3J1YoBmEwp+evRtYwU2MlBGYdc3r
 TJUAYQ3gGj6pIWsdQnKk8z+dr4DOm1PLMoSQPPUAF6L72uYIN5LElXFzJPda7FWmdbyc
 QfzA==
X-Gm-Message-State: AOAM530BRDFab7HYS3Ib+L9MMyMuHGEiM9dVdNtLahtA0H7Br+da3tg/
 UaTMONJfn2FRqOTK5gH6zwc=
X-Google-Smtp-Source: ABdhPJzpYtzVUi2XrlE1b/f2Q7A5d5j6NrtBFUvOylh6ry9hP/bQDkPOSi1NNGAvQoaDbG4A2SJGFw==
X-Received: by 2002:aa7:ce87:: with SMTP id y7mr262073edv.211.1610988516027;
 Mon, 18 Jan 2021 08:48:36 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 m24sm9618925ejo.52.2021.01.18.08.48.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Jan 2021 08:48:35 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: cleanup cpu_thermal node of
 rk3399-rock960.dts
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
References: <20210118163306.8693-1-jbx6244@gmail.com>
Message-ID: <c6dfa1a7-4a61-2e80-fe43-add1af611395@gmail.com>
Date: Mon, 18 Jan 2021 17:48:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210118163306.8693-1-jbx6244@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_114844_454937_FD3385BA 
X-CRM114-Status: GOOD (  19.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Sorry.
This can go in the bin...
It needs more cleanup...
See question below.

On 1/18/21 5:33 PM, Johan Jonker wrote:
> The cpu_thermal node in the rk3399-rock960.dts file does not
> reference &cpu_thermal directly to add the board-specific parts,
> but also repeats all the SoC default properties.
> Clean the whole thing up and fix alignment.
> Place node in the correct alphabetical order.
> 
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 75 ++++++++++++-------------
>  1 file changed, 36 insertions(+), 39 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> index b20774081..bff8a73d9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> @@ -63,6 +63,42 @@
>  
>  };
>  
> +&cpu_thermal {
> +	polling-delay-passive = <100>;
> +	polling-delay = <1000>;
> +	thermal-sensors = <&tsadc 0>;
> +	sustainable-power = <1550>;
> +
> +	trips {
> +		cpu_alert0: cpu_alert0 {
> +			temperature = <65000>;
> +			hysteresis = <2000>;
> +			type = "passive";
> +		};
> +
> +		cpu_alert1: cpu_alert1 {
> +			temperature = <75000>;
> +			hysteresis = <2000>;
> +			type = "passive";
> +		};
> +
> +		cpu_crit: cpu_crit {
> +			temperature = <95000>;
> +			hysteresis = <2000>;
> +			type = "critical";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map0 {
> +			trip = <&cpu_alert1>;
> +			cooling-device =
> +				<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};
> +
>  &pcie0 {
>  	ep-gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
>  };
> @@ -125,45 +161,6 @@
>  	status = "okay";
>  };
>  
> -&thermal_zones {
> -	cpu_thermal: cpu-thermal {
> -		polling-delay-passive = <100>;
> -		polling-delay = <1000>;
> -		thermal-sensors = <&tsadc 0>;
> -		sustainable-power = <1550>;
> -
> -		trips {
> -			cpu_alert0: cpu_alert0 {
> -				    temperature = <65000>;
> -				    hysteresis = <2000>;
> -				    type = "passive";
> -			};
> -
> -			cpu_alert1: cpu_alert1 {
> -				    temperature = <75000>;
> -				    hysteresis = <2000>;
> -				    type = "passive";
> -			};
> -
> -			cpu_crit: cpu_crit {
> -				  temperature = <95000>;
> -				  hysteresis = <2000>;
> -				  type = "critical";
> -			};
> -		};
> -
> -		cooling-maps {

> -			     map0 {
> -
> -			     trip = <&cpu_alert1>;

The trip property points to "cpu_alert1", while in rk3399.dtsi that is
"&cpu_alert0"
What is correct here?


> -			     cooling-device =
> -					<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -					<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> -			};
> -		};
> -	};
> -};
> -
>  &usbdrd_dwc3_0 {
>  	dr_mode = "otg";
>  };
> 


				map0 {
					trip = <&cpu_alert0>;
					cooling-device =
						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
				};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
