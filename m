Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FBDBC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 11:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPu92et6U8sgMHNTZ7Uru0VWxFfAGHBkbyjyzSHDzDM=; b=oW2HXHjdTjVQeU
	sYebj/d9m4ohddpzB0ETLwjiS6az/nVGgzLF5xNYSUWS02QLnhFUoQQjmDDxx3UOLOsJcKP5Mk0Q3
	6Jmh9A6AvYfKUulVd3ChOianWVwdjRv1rnEvPfLIiTD0mNEWqHfwsLflyanSv3NQSiezBnfSf18IG
	TEVKGBmpHAuFda8j51g1tobj7XvfTHWp7ugSKbgLG/7td3Jk5bBvUoVvDPQkIpXBpSnYp+AFSbQgX
	zA+JT8CSfk2zsIt7cI0Oq6K7Y5cAJLD3J1Y5bBvTo3/qnYOFHNu7HGy4trMrmszqoKUv1uwHR9TMY
	M4c9KCM33/WACa6FSW6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZAG9-00C1ag-Fl; Tue, 29 Mar 2022 11:43:37 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZAFv-00C1WP-66
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 11:43:24 +0000
Received: by mail-wr1-x42a.google.com with SMTP id r13so24361936wrr.9
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 04:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=B/lDSRmBt45ew7slN8pGHqNMcMQbF9rbjhPBwDXjCYQ=;
 b=pNjNmuRreTl0CTr39zOVQwrheRMDsU81PfQLCqwPmqVnaGzMEDTBUK0mQlmQ6+0Jaw
 ZHZ9nngJ95xQ09Ws3DREeamVFTVS1JTXo9EiQce4XCdlfNwDNxb72RjcY+CPculwyezx
 QbY9+2blqFt2yejbMciRwZt3ZRedCh9rnnHh5xWmkuVy+TjYLmlEna3WRCfQNeaAXHqT
 VsaZcvzSojKsvcYUpcRU8CLlQEY9SvmYRa90xshcjaT35XnOWpiY8mRQQFswiSSUFNdM
 YR4CIrWNBxoQoWqU3y2UTuw39M70Bzgx5xytJzwQYL/Xr6NLUqzjKEV9wdnoDvg1imAa
 Zq3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=B/lDSRmBt45ew7slN8pGHqNMcMQbF9rbjhPBwDXjCYQ=;
 b=YI2xlThUT4lPT7M7HOFUGNG+aa6unJ+7F2beosiHplS17Dwiz714MPLLb1jXROwKvi
 HEhrBI805Xe/9P/sjWLaM19KBs+TzsRAgUbNNuOZJSQHl6FGlY0Ipm/yZcatzIEcg13o
 8r2E3j0qeEzpy6nbd4/2doh3uzYE5KOXw8p+EkXY3cgAEmNmLoZb3kWrFdhDvXh0P55+
 7j87VGGW7gaIphvzPmBXaXzXc6vmkDMDvF8NIBn5GxJXUNdMVSBH2HjU6lImBSuiuK4X
 LsCYBkIOUJ68SHin5DGyZMWIosGPhgdVjlgBI5t9ZQICkAoarvLJWOWs/o0ISP5urVVS
 ztaQ==
X-Gm-Message-State: AOAM531IotoJYXBO2Xjb3I4W3o9TPogtAxMdrvOruAXKuI7/GsacCDxb
 b34QDkVPCJuadOpD6ll8uK3Fyg==
X-Google-Smtp-Source: ABdhPJypjAXnuentZlRpL2zBiRpa923vpXbWo7NUVcxVtz+EmSJ4zia7oIlJmVSKa0y8npilo+lpCQ==
X-Received: by 2002:adf:fbc6:0:b0:203:8dff:f49e with SMTP id
 d6-20020adffbc6000000b002038dfff49emr30167362wrs.72.1648554201399; 
 Tue, 29 Mar 2022 04:43:21 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 i9-20020a5d5849000000b002058631cfacsm15436766wrf.61.2022.03.29.04.43.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 04:43:20 -0700 (PDT)
Message-ID: <5ea0386f-5322-4efd-c0d0-0ba0ff526bae@linaro.org>
Date: Tue, 29 Mar 2022 13:43:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329111323.3569-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329111323.3569-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_044323_263031_FFA47DA4 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
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

On 29/03/2022 13:13, Johan Jonker wrote:
> Current dts files with RK3188/RK3066 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3188-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 

It's the second patchset without my review. What's happening here?

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
