Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FD15C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1YiloMCCWWrepsXqBBSFPMlZTtuU+YI6SWzzbUo8zI=; b=lOF1Apo7CxhWsr
	2BrofpQ9xLn9ORBexPNmXxCJ/iCOubgN5u6/udIT+FBiesil7uGQxnJemNsiIhQ1E2yEnZsFLHrCs
	0EBsvoKrSyMPJzuJeMKdRGfIbRvY8a7y+bjjnOkbDC/kfiMkCfeLaC2AwzGnjbKkwa9ca4vgyVUJ9
	WkDNTAGA/V3dXQkYVBHWjUKziotKhwlXQ6DjBRIdgPLnoAGHFrD+ecPtmz2XMANrHB0FnTSGG9KnQ
	eOESO5LuOQW0uYMUjfEEcMCIJtz60OLR4GFVh7j9uE4wXpnSC1cD5m2OVkPnSwdd5RAfnPRBQ7EWm
	OmNyr4s79Znlco4vZ2aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZAEt-00C1E8-5C; Tue, 29 Mar 2022 11:42:19 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZAEe-00C1A5-2t
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 11:42:05 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 r204-20020a1c44d5000000b0038ccb70e239so1074792wma.3
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 04:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=fn3HErbG840xG/1DKf1d2N6ycfhrWzL++y+Zz1CDgxE=;
 b=A6EragmFzz3EYNnm8I82VYWua3eXUT9qcZVuJQFeiLO+cc5t2h+KlWVF9LPy7eCWF/
 D6KG0X5veZP48rwSL5Zra3r8CFZW53W0HFFO6XYwfGwUE3eAPS1hzsbYblKMjxt0eWfE
 8aYJxfqvdaA1M6ozoBLp8gODm8f0nKwNnq1fZLyLr8LkymQ2r43oOyKlL+aXqwDVYfPZ
 wmyVWybFtiZ9AuIkXlGA+pGgrIp2nwwHJdwBT7By+EuQqY2GBW/l+lv6ToYTOlCib84k
 cncfkrPcCRDtNjt7YA3+4+wAopwNJPY/giu2SF/OqLxsyMQUbSUaR4TdnQGBgGjjHBec
 h5Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=fn3HErbG840xG/1DKf1d2N6ycfhrWzL++y+Zz1CDgxE=;
 b=Nq0AR8ankYMhKWyR3pgmrRxyjLYKXMRKbRDA8JlAJB+ntUb6SOQ9FhDInNE8k5Efi+
 Cy+agW0j69fo/ZZiQJ1aeby8LT5ww3ILbEOsOY+OlcTNg2fJGdt/RmJitJbZKTbyiiWN
 BsrNxwhve/RpsT0FpU9p/ORRlWuQsCjstEu2lMyEwEISuehDt59wXACmH/DuHemRtvxp
 oVDnzZYYPbwfDyf5/elvJG/iRQjUr5jrcZvoXP8RwPNW53AbOUEtTo2GnaByi39ubM+P
 4vTo8uMoJ+rk+14pU9n/EXavvqd00ixBnGMXpzfqUd/tja3Cwe/4/pPdJ/ON1g9Y6Cwe
 tYDg==
X-Gm-Message-State: AOAM530qTOtSCleDSA2423bnxDaZIaOJOvNH+XC5EtAyHqjeS8xu4viX
 PLQeooWs30S+jmlBwye+feD0Tu1FhPG94Gql
X-Google-Smtp-Source: ABdhPJzOwx9Bn0AwRaBTztslHHWpRbx/LvUGOgOn/gOyid0v0Tw2biM6UgFrN4vigQJNapEEpwX+rQ==
X-Received: by 2002:a05:600c:1d0f:b0:38c:8ff8:e703 with SMTP id
 l15-20020a05600c1d0f00b0038c8ff8e703mr6339433wms.202.1648554122148; 
 Tue, 29 Mar 2022 04:42:02 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 o14-20020a5d47ce000000b00203e0a21c16sm17397744wrc.3.2022.03.29.04.42.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 04:42:01 -0700 (PDT)
Message-ID: <9e1aed7c-a702-2ee7-f3f7-f2f3e2b17e29@linaro.org>
Date: Tue, 29 Mar 2022 13:42:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: convert rockchip,
 rk3288-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329113657.4567-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329113657.4567-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_044204_171173_2A024E18 
X-CRM114-Status: UNSURE (   9.31  )
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

On 29/03/2022 13:36, Johan Jonker wrote:
> Current dts files with RK3288 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3288-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---

You missed my review tag. The changes between v1 and v2 were minor, so
please always include it in your next versions or resends.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
