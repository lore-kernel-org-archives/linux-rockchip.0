Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96060C05027
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 19:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIMRQ8Fh3d3WX2XbmiNMTTe/R/qZJeo3XiuTTXIW9ew=; b=AwrsBN2uDv4Bli
	7f3+zZKv5KQ57Xqgtz/9eae6c54BrP/oeKUTHKbDl+C5APmcGvB60LpFAvZa6mwbuf3Okxq9YJ84c
	SU/6+wY7ylZdGfHvrJ0ky8vPK37JzajN4uKH6JItSPC0ihmdcq4FRF9jgNM3CsR4Yu45BkfqX1KF9
	YKbFS0R/LXIWknCT9tRDGP0ScUY2ywauXySE5Ywxdk8ld9Zos1qaXbhFpVL9j/RsceyBLEx70ja4a
	1+fkkJtvEgK2cFzO2JZo2SogA7TlIf+LPraas0qC0hpaqD5bJ55oJdqQSHSp575OSbbkt5rF+mH4i
	7Jf1tAgtq1BvUdj7xpRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO1LD-003M3x-Tc; Fri, 03 Feb 2023 19:03:20 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO1L1-003M1G-Do; Fri, 03 Feb 2023 19:03:09 +0000
Received: by mail-ej1-x635.google.com with SMTP id qw12so18029184ejc.2;
        Fri, 03 Feb 2023 11:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=29jIzExya+RWfAW2Qbt80/MjJ8msw/RiyH3xynOp0go=;
        b=oMo2cuU46YEgGPpTn9tuc/nAV/JSYX82IVQ6fcR+rdup7Ro+7QIAvMc7u6RiSGRj8k
         lp9nfSG/RpNEUhNlVlr3aHuBI3aSguVow4NcnE/ewGe34lBGVWV/kqNWsJOy1OnK0t3L
         NZOTslwltVza66DDVjiccIrt9Mj1iqvf0MvFj5aktxMyYaVyCUNmLfbTYpETGvQoZZLl
         Zlo8M52dFVI2lLPRKKBBQ/2yVXzejK05Re6uVMSp9ZwTa2kwn4pNA69mS2AJNWjKeppQ
         bpYZT5kzF3xGiYl5fSPXLPZdkqxZ5TeagP+owJI5o0IjNhddaRbAOFg5AEXmSVoieJpR
         VfXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=29jIzExya+RWfAW2Qbt80/MjJ8msw/RiyH3xynOp0go=;
        b=KR6YT0NDBj/HX/snzo+rW9kd9R8saQtROk50e9tv9dHinAQHrW76Ahtap3LhMgHpu4
         8GXd/2FPar0Zk0UAV8PJgSsELScWLqKX5yLYbHXrzmpoCO7/QBxnJuELrTdPOg3Apabf
         TeKz8lNDmUesxYcIkWqRZoz8gI+f8azPTDfhBjslgEUNhFrIOHIBxlf0UdDyvZkOJDve
         RBtpvKElVhfQaPai1rkHZ63KcvJpiec24PjomM2FAAd5zuNe/46ZYKC8KocC02odKhrY
         WhPVOKpUX41MlEobEUhUQemQ8iydhyenbUaYhlL9HMs0hS7+JA6z5XjVjYCGtfi0T0BU
         jskA==
X-Gm-Message-State: AO0yUKXnhXKrzdxhVGAyB4JWi0NOWEOEEx9KX4XxDKrdeh7hW5RlyTIy
	WpkrS5stc9aVSoHWF4PaSnU=
X-Google-Smtp-Source: AK7set86/Odr/8QqbXvAfvz/JdLTn2GEOFrSEDN8hur+e37l2t1Wm16nqqBVtmjhNt40O7gBxDbSww==
X-Received: by 2002:a17:907:d68c:b0:88f:8ae1:8bca with SMTP id wf12-20020a170907d68c00b0088f8ae18bcamr6189194ejc.62.1675450979058;
        Fri, 03 Feb 2023 11:02:59 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id f17-20020a170906049100b00871f66bf354sm1710990eja.204.2023.02.03.11.02.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 11:02:57 -0800 (PST)
Message-ID: <87f5097d-1cd0-e09f-e759-8592a9165ea6@gmail.com>
Date: Fri, 3 Feb 2023 20:02:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v6 01/17] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
To: Rob Herring <robh@kernel.org>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, airlied@gmail.com, daniel@ffwll.ch,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
 <20230203182119.GA615242-robh@kernel.org>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20230203182119.GA615242-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_110307_488909_710A54C1 
X-CRM114-Status: GOOD (  13.65  )
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



On 2/3/23 19:21, Rob Herring wrote:
> On Thu, Dec 22, 2022 at 03:22:14PM +0100, Johan Jonker wrote:
>> Convert rockchip-lvds.txt to YAML.
>>
>> Changed:
>>   Add power-domains property.
>>   Requirements between PX30 and RK3288
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>
>> Changed V3:
>>   Filename matching compatible style
>>   Drop "Regulator phandle for "
>>   Specify properties and requirements per SoC
>>   Sort order and restyle
>>
>> Changed V2:
>>   Fix title
>> ---
>>  .../display/rockchip/rockchip,lvds.yaml       | 170 ++++++++++++++++++
>>  .../display/rockchip/rockchip-lvds.txt        |  92 ----------
>>  2 files changed, 170 insertions(+), 92 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> 

> What's the plan for these patches? Don't see them in linux-next still. 
> Do you want me to take patches 1-8?

Hi,

The display patches normally go through the DRM git.
Patch 2 must merge with grf.yaml.
Heiko has merged now 3 PHY related patches to grf.yaml first.

[PATCH v6 02/17] dt-bindings: soc: rockchip: grf: add rockchip,lvds.yaml

See current
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=for-next&qt=grep&q=jonker

Not sure what Heiko's plans are.
Patch 2 replaces  only a description text and some accolades removal, so not "too" important.

I urgent then you could merge without conflict:
1, 3-8

Patch 2 requires some adjusted now depending on the grf.yaml current next state.

Johan







> 
> Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
