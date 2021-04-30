Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AF8C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 20:29:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC4706145A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 20:29:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EC4706145A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qZajfrmHHROyhYaKOyh4RsinRDpu7ZKpqeWaA9VF3Zo=; b=RQGmAmgYkVpR2dMZ6bNsN8nJc
	3nD3fvW0o+TNzGclKVc7JmSxr1JM2KBqosRXR8SYgJPVfpR1FXFIsdbVRT1+hc5RwmahUkpz4/WwJ
	Z014muqC7hT1uAPpRsFGaORxFqM1+JjaAbUuEFrFTGo1U6l7vGxfzhsyZu5dZRKW+Roi6eitwj0ZN
	ih3IKptAkozMySuUX+j1fFEECmapKB9rXsuC3UZITt5VjgTIZx0QDY+qxV+8oDGWLNV6E0jUzZ3dj
	JE5A3XI/ms9EwnHYQ2WzuTSq8RyA5flN69+JRxDi5M1W36K0YL2I22Cx4Mxc3Csh9dBHkORLWh0gN
	c8cQYcrjQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcZlc-008WiO-Fr; Fri, 30 Apr 2021 20:29:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcZlB-008Wd3-Jl; Fri, 30 Apr 2021 20:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=Wrp/1A4Vx3OcbB2pr/PEDNHt/zuDZ0QGymHwI8CKIHg=; b=ZufeHkUXh4xwX3uq5XO6W7qsOC
 oB5K+Cq1ljQHt4af294gIBUaYeAguMpJ6+SjIWhoUqYWiuxA8BFr1nkNgtcYlf1Qpl5RdyHoTo8Op
 WDj5aBOpPhxDzcDjYPbIIk/bwKzBUN2xv5VROo5stjXThBL7GtpGhU/y/1X8GmJNP51P3jKHlpDvg
 OPlb7dOfwU+cqlWAFD/7x3pcwnponNneDaWjFwmgazaDN/mzBf7ARgwrrq9Y/rmBfWMvGVJYjwNqn
 9vRyOPGGpEOMQudh3zgafVghbU1SIT6NOuZN9Fts7Kw/E+RqCsXNxSm5WyeGs9w3BOM6N6veM6BvS
 Ryse6n7w==;
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcZl8-001eJa-UZ; Fri, 30 Apr 2021 20:29:12 +0000
Received: by mail-ej1-x630.google.com with SMTP id a4so13739180ejk.1;
 Fri, 30 Apr 2021 13:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Wrp/1A4Vx3OcbB2pr/PEDNHt/zuDZ0QGymHwI8CKIHg=;
 b=EY+IEzBUu9oW5ND5WvGXq8irviGV51BVZB/O3Zuztl09Q1rCW+7Ytf+kbvQ8J/IONX
 sa5FRjyjdK7CfM7edv5v87pTGvSmtSQhm/I9n/IFA6ydKhNL6Pdy4S7zNIWx3F5XKMh4
 QqQYDMQ4KB08czfy3KaNmEagCc92tSObszTsL7tWA9k1Rm/bt/u17BnmBG3fF2J1dwok
 rDWwmQvPFWagsI4tIfva00Jqe4fYsPb56e+ZqYE/EDGbUVI0Pd0mayzLN8H4j3z7lFKg
 H3PpdOHA4dygCIzqWgRCYQBdIVQTC1H7N0gtUv0BcKjlu+mONsymqkgR3tItKiXoHXVg
 tKKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Wrp/1A4Vx3OcbB2pr/PEDNHt/zuDZ0QGymHwI8CKIHg=;
 b=D70NuibLPEpdJTULUK3FItEZ/ywmwY6Ytrue6Yr4rsS+qpv8kdDlF384uKu3huPQO6
 ZjthI+teYH+SlifQFFqifT++agmxPvmbVQYcsiJ6HPvZmJ1IqMfIFNbuHCXZv8YLa+H8
 jeeTsES6nxhA0inbSeKKXvOr41XIO1dG+T49ZBeLZKtrySW9HDXIzczbuSbWrZJ6FoHj
 atfXGuisvKVj7Odb8O5rOWm+2DjErWX0wnmHbATPaP0axBheQMI+vMRBd/YW7rtuReEo
 dEPdEm0OCXvWF+c6qwu5aPpD1KrsSk23O1ROV7NOJ4Eow2f7srZ/XCD+OmaVewsNxTe7
 We1w==
X-Gm-Message-State: AOAM531qIYS3x2hxAR392muhiMOlmhzLHdmRlueR/iw5rsJwn0CTFzp0
 rodKWVsdqwzJ3g2MefLR1DY=
X-Google-Smtp-Source: ABdhPJzx0kI7Y5mCHmBcgoMkoXDcdMXPnCoSKVhqyWYiLS59obUrogmNsVukVf6Nz96RySLz4B/BRQ==
X-Received: by 2002:a17:907:1b1e:: with SMTP id
 mp30mr6448680ejc.532.1619814548930; 
 Fri, 30 Apr 2021 13:29:08 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 da25sm2568034edb.38.2021.04.30.13.29.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Apr 2021 13:29:08 -0700 (PDT)
Subject: Re: [PATCH v4 07/10] dt-bindings: soc: rockchip: Convert grf.txt to
 YAML
To: Rob Herring <robh@kernel.org>, cl@rock-chips.com
Cc: heiko@sntech.de, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, maz@kernel.org
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081321.17855-1-cl@rock-chips.com>
 <20210429212413.GA1794356@robh.at.kernel.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c4130ba7-5f28-57e9-f391-89b6539fb29c@gmail.com>
Date: Fri, 30 Apr 2021 22:29:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210429212413.GA1794356@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_132911_027216_DF91AF44 
X-CRM114-Status: GOOD (  17.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 4/29/21 11:24 PM, Rob Herring wrote:
> On Thu, Apr 29, 2021 at 04:13:21PM +0800, cl@rock-chips.com wrote:
>> From: Liang Chen <cl@rock-chips.com>
>>
>> Current dts files with 'grf' nodes are manually verified. In order to
>> automate this process grf.txt has to be converted to YAML.
>>
>> Add new descriptions for:
>> "rockchip,rk3568-grf", "syscon", "simple-mfd"
>> "rockchip,rk3568-pmugrf", "syscon", "simple-mfd"
>>
>> Signed-off-by: Liang Chen <cl@rock-chips.com>
>> ---

[..]

>> +properties:
>> +  compatible:
>> +    - items:
> 
> The '-' is the source of your error.
> 
>> +        - enum:
>> +            - rockchip,px30-grf
>> +            - rockchip,px30-pmugrf
>> +            - rockchip,px30-usb2phy-grf
>> +            - rockchip,rk3036-grf
>> +            - rockchip,rk3066-grf
>> +            - rockchip,rk3188-grf
>> +            - rockchip,rk3228-grf
>> +            - rockchip,rk3288-grf
>> +            - rockchip,rk3288-sgrf
>> +            - rockchip,rk3308-core-grf
>> +            - rockchip,rk3308-detect-grf
>> +            - rockchip,rk3308-grf
>> +            - rockchip,rk3328-grf
>> +            - rockchip,rk3328-usb2phy-grf
>> +            - rockchip,rk3368-grf
>> +            - rockchip,rk3368-pmugrf
>> +            - rockchip,rk3399-grf
>> +            - rockchip,rk3399-pmugrf
>> +            - rockchip,rk3568-grf
>> +            - rockchip,rk3568-pmugrf
>> +            - rockchip,rv1108-grf
>> +            - rockchip,rv1108-usbgrf
>> +        - const: syscon
>> +        - const: simple-mfd
> 

> 'simple-mfd' was not in the old binding. That implies you have child 
> nodes, and if so, they need to be documented. I imagine that will mean 
> splitting this into multiple schemas if that's the case.
> 

Hi,

Question for rob+dt:

Given that a number of txt documents still are in need for YAML
conversion. Which is a bit beyond the author of this serie.
The core rk3568.dtsi is needed for other series to base on.

To speed things up a bit and reduce the work load:
Is it possible to add the grf compatibles in use first and do the rest
of the subnodes for various SoCs later?

Is it possible to add for now to reduce notification output:

additionalProperties: true

and then later:

additionalProperties: false


===

From build log:

#address-cells
#size-cells
reboot-mode
io-domains
usb2-phy@100
mipi-dphy-rx0
pcie-phy
phy@f780
edp-phy
usbphy
lvds
power-controller
grf-gpio

===

Example for rk3399:

	grf: syscon@ff770000 {
		compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";

		io_domains: io-domains {
			compatible = "rockchip,rk3399-io-voltage-domain"; //
rockchip-io-domain.txt
		};

		mipi_dphy_rx0: mipi-dphy-rx0 {
			compatible = "rockchip,rk3399-mipi-dphy-rx0"; //
rockchip-mipi-dphy-rx0.yaml
		};

		u2phy0: usb2-phy@e450 {
			compatible = "rockchip,rk3399-usb2phy"; // phy-rockchip-inno-usb2.yaml
		};

		u2phy1: usb2-phy@e460 {
			compatible = "rockchip,rk3399-usb2phy"; // phy-rockchip-inno-usb2.yaml
		};

		emmc_phy: phy@f780 {
			compatible = "rockchip,rk3399-emmc-phy"; // rockchip-emmc-phy.txt
		};

		pcie_phy: pcie-phy {
			compatible = "rockchip,rk3399-pcie-phy"; // rockchip-pcie-phy.txt
		};
	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
