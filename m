Return-Path: <SRS0=hTL8=M3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30670C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 15:05:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EBACA60F94
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 15:05:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EBACA60F94
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yTGzJci+6hN60KnfBlsdcwIHceibwtdA7Q+oTWdegkY=; b=EEY42UIsFDZtjVQU6yFp/r9dtQ
	UNuGJQ2IVQlHSDFpAnRCq7Dy84bAahDFmy2CsFdCpKSBJ41K2iigE8DRr/ipI8T4HTgOA6w5M5YrR
	2HJ+B54KTZKIGo8Z6pBc/OKG9CQ8ZHhgODHPUe/nm82Wx019RLehbpwdoJzbBwWEd7JDbEpq9BHg0
	JoNu/EZpFA/mhmy1dXjXpH04rYWDUKlCXweuIc6Qq/ii/Mw/dTXosAJA35w97otr7AS5xdp8ONcS6
	dBxkYcrBI0BdnWMMVTdpvgMLklIBu4A4cHcZ0J8wVfvWiGhSnf0rUiQ5UeoWljTawnEgnni30vpQt
	Q4EnQvqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBISn-006XPA-9a; Wed, 04 Aug 2021 15:05:45 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBISk-006XOI-TN; Wed, 04 Aug 2021 15:05:44 +0000
Received: by mail-ej1-x636.google.com with SMTP id c25so4237960ejb.3;
 Wed, 04 Aug 2021 08:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=apXako6tqUazW99r8dSb/XUslxRiTi4p8nrGsfYfU48=;
 b=UgQ6w8r/cPCgyzxk3fq0RxMllPR0/FM6lcrW/uG7TxyIkyfFYfmpcMNiaKQaq6iNqI
 /p94ftzRdCS/WIjtGrBgczmg1N1Lr/jmo8cNLVaWwQ6zqEgEhcVNKJJHvKaVXmImBUaU
 KIjP9O114HdwkyBS0Xo+zYXR3/YEXqiPurlrgfPahK6kMZL3IW99s/3WETsShna2x9Gm
 3GYpvFrMMkrelXP5zUN/mt8h/QHn/F9iGbS/6rywnPh91KM1M/D8VUuucjaXAj5mp3hP
 IgyCR6GZf1Rm1KxKOytcUiVRUtkMiYV+lxHEvh71H+UMqMDMlLmIEf9xfIZxSOG5s08e
 TOMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=apXako6tqUazW99r8dSb/XUslxRiTi4p8nrGsfYfU48=;
 b=N6jPW4/h9e0upIEq7ZBgAJLRGaF2F4CtwQqf3ODZETg7xVP2PXEVPrNPaqv/T04Qhz
 QdiVNOy4CjY+GbCfN8EBZ+mkDeS0IJU07FHS4T2BELjgpY4+aCsDuDvR3wBnX+9aYdqr
 cJPc6EBQpOhPtZ3yAb4Fry1+rzIHrgB8AtzE0bbmOsj+1OYqXHdxRrgWJZH+6qlr0CgK
 6BOdHjjcH7UEJSRN3n6TH2QT6x/Tc2p02KdP/B+j1prgy5TRRy4Xj1eODmszmLRFQYod
 OA50HUjmEcU4eQeddwa28Ip2LkiYpw+HT74mDOqQA4vqLHStzeRlNQZvpIPsSw72eNlg
 SJrA==
X-Gm-Message-State: AOAM532V62w+2Mo08T2KpRvxHBjGZep4OOZCvSqRtGGgJXKlpGLdn5z8
 Xrlz1MDNraKWceHD4NLK7hw=
X-Google-Smtp-Source: ABdhPJyDlAczSHhxndS5VvIC4kSrfYdJcP9gF+zKKIC0cnlhgK1rvxgZeRGiTG+Mlki6bDtvh1uOEg==
X-Received: by 2002:a17:906:260e:: with SMTP id
 h14mr26075850ejc.258.1628089541336; 
 Wed, 04 Aug 2021 08:05:41 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 h19sm1074852edt.87.2021.08.04.08.05.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Aug 2021 08:05:41 -0700 (PDT)
Subject: Re: [PATCH v2 4/7] arm64: dts: rockchip: enable io domains for rk356x
To: Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Simon Xue <xxm@rock-chips.com>,
 Jianqun Xu <jay.xu@rock-chips.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Lee Jones <lee.jones@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Zhang Changzhong <zhangchangzhong@huawei.com>
References: <20210804130625.15449-1-michael.riesch@wolfvision.net>
 <20210804130625.15449-5-michael.riesch@wolfvision.net>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <6f557e45-075f-9a12-f603-cec8a4dc28a6@gmail.com>
Date: Wed, 4 Aug 2021 17:05:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210804130625.15449-5-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_080543_031466_456E9314 
X-CRM114-Status: GOOD (  16.66  )
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

Hi Michael,

pmu_io_domains is a sub node of pmugrf, so add it to grf.yaml as well in
a separate patch. Place document changes before driver patches for
checkpatch scripts (undocumented compatible string):
./scripts/checkpatch.pl --strict <patch1> <patch2>


  - if:
      properties:
        compatible:
          contains:
            enum:
              - rockchip,px30-pmugrf
              - rockchip,px30-grf
              - rockchip,rk3228-grf
              - rockchip,rk3288-grf
              - rockchip,rk3328-grf
              - rockchip,rk3368-pmugrf
              - rockchip,rk3368-grf
              - rockchip,rk3399-pmugrf
              - rockchip,rk3399-grf
==>
              - rockchip,rk3568-pmugrf

    then:
      properties:
        io-domains:
          type: object

          $ref: "/schemas/power/rockchip-io-domain.yaml#"

On 8/4/21 3:06 PM, Michael Riesch wrote:
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 3e90a8832bb9..834863940eba 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -203,6 +203,11 @@
>  	pmugrf: syscon@fdc20000 {
>  		compatible = "rockchip,rk3568-pmugrf", "syscon", "simple-mfd";
>  		reg = <0x0 0xfdc20000 0x0 0x10000>;
> +
> +		pmu_io_domains: io-domains {
> +			compatible = "rockchip,rk3568-pmu-io-voltage-domain";
> +			status = "disabled";
> +		};
>  	};
>  
>  	grf: syscon@fdc60000 {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
