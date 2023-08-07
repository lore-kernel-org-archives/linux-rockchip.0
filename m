Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AFF5EB64DD
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Aug 2023 08:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQy+J3FYUyo5ZApUVJYbLV7FkoVu/El7UDk1OruOzY0=; b=qafeDYhKLFQ/vg
	bw57U81W7+/WF8qudir6/Ki5OBC2Nq6OGSGqsBzj/8M8AuE7zAoqhbitniA96yE72F6xZi9TynZiB
	9IundR94rOE3jpevljPHpxic3RGBCqX1oPuoeGL6RMxmWvysuOevR+bBZ70ryw1TIJOSpGN7T9m/i
	Hjkf4tMoPZSJkAubJuUEy+jafj3/wZOLBAHSqRQKZ/nScPT/fTjVHV3DGjxQQjZQ+7ipWpY4paHOm
	9bqNQO+N/yu0KENLgx4f+my2vvBJtAZyRWZUIy39eSxIOyP9sodJfWAJhb4XFC9OmVYgGO85P/BYn
	zu/SqioMwzWXZntEPPuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSvnh-00GTtn-1S;
	Mon, 07 Aug 2023 08:41:17 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSvne-00GTt1-14
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Aug 2023 08:41:15 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5231f439968so3819811a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Aug 2023 01:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691397672; x=1692002472;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FiBr4qX4MDbW0bMa0nAPFtANFmRzjD74lfH4gfwbvd0=;
        b=iWuFcNfomzzwUernqbjgnHDmBrxPuIdUyl+xhLNUfhmAumSwMafnFExzEChBJ+4S/s
         u4Fo6hpOHrgOqGV06jmqPnZtzU9BhNo/+5YzUOI+2hRYuG7eiw+HuJd6CsVpVZidHgNI
         cozJDgPKoDh9UFbmr53PofIQRClu2SWCr3ZhjbKVKE3wwo9/usoXH5N6CpLxb5njgJbs
         ZHZKcpMMlVDkswUaVLAIlfDLcRIdNJBtIDOYBma6dxkuwf0u9bI0xesAk9VgZY5BaFNb
         +9LNUl8PqK1KxO9HLlEvUcpkaZcNd2dBtGqK3yPxklaZGoDwvw0mm1qY35bJAZE5Sqbs
         b4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691397672; x=1692002472;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FiBr4qX4MDbW0bMa0nAPFtANFmRzjD74lfH4gfwbvd0=;
        b=OUENg15tbz+3CUIS8EJkZR2n8Bb76gPqtMJix4qeE2wLtDi+r+GGNuX2UjWyznvwWs
         bDGj+P7YjYw1U0Dcvi//cOjNwbhdXr2OGipNe7bSco1RttC0x5caJuYeMWkdkJDz5+MZ
         BIWJK0hzhnkN4rxZJGne2rY/9xu44MsEag6IenSbAp7s1Fl/f9hbMCDgTI34HCCGObS5
         o4SFdaD4NoVxX6f09FzT7OzTwqNrJtjvFCzDJRfK+ZXlnldFG2DbBJsSlDLJEsJK4V6x
         mUtFkh5ycVaA7/kRTdt76Hmg34y18HcXoNUTkHHaiGq5CdpVYKs9HQqogVzHyR40er9J
         hNYg==
X-Gm-Message-State: AOJu0YyTmtmQ8dUCF220xa2tYuF9U55mHw2CWLyQanejSNAJYT3ynTru
	k/cFpG+xu13bgTobmWOwkV2B4g==
X-Google-Smtp-Source: AGHT+IE9kWCdDPfh1ysGqzXA+sR8LgRcYRK5cY280j1rlxyyCD7yEz8BYDWSnuErnViUGY4Xfb5luw==
X-Received: by 2002:a05:6402:6c1:b0:523:2da2:1ec4 with SMTP id n1-20020a05640206c100b005232da21ec4mr4356059edy.11.1691397672230;
        Mon, 07 Aug 2023 01:41:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id b4-20020aa7dc04000000b005224f840130sm4794190edu.60.2023.08.07.01.41.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 01:41:11 -0700 (PDT)
Message-ID: <f3c68353-720b-bacb-a4c4-fdce81fa4d13@linaro.org>
Date: Mon, 7 Aug 2023 10:41:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [RESEND PATCH v3 3/4] dt-bindings: clock: rk3588: export
 PCLK_VO1GRF clk id
To: Conor Dooley <conor@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
 heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 huangtao@rock-chips.com
References: <20230804025101.28438-1-zhangqing@rock-chips.com>
 <20230804-colonial-balsamic-c97491ebec12@spud>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230804-colonial-balsamic-c97491ebec12@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_014114_388210_00544C3D 
X-CRM114-Status: GOOD (  13.76  )
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

On 04/08/2023 17:38, Conor Dooley wrote:
> On Fri, Aug 04, 2023 at 10:51:01AM +0800, Elaine Zhang wrote:
>> add PCLK_VO1GRF clk id.
>>
>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>> ---
>>  include/dt-bindings/clock/rockchip,rk3588-cru.h | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
>> index b5616bca7b44..864a321ab362 100644
>> --- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
>> +++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
>> @@ -733,8 +733,9 @@
>>  #define ACLK_AV1_PRE			718
>>  #define PCLK_AV1_PRE			719
>>  #define HCLK_SDIO_PRE			720
>> +#define PCLK_VO1GRF			721
>>  
>> -#define CLK_NR_CLKS			(HCLK_SDIO_PRE + 1)
>> +#define CLK_NR_CLKS			(PCLK_VO1GRF + 1)
> 
> I only got this patch & not the rest of the series, so no idea what's
> going in those patches, but since CLK_NR_CLKS was put in a dt-binding
> header, is that value not now part of the ABI?

Technically yes, practically does not matter because no one should use
it. More bindings make the same mistakes, so it could be just dropped.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
