Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E40CCD1AF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 20:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEHug4iOPpCy5YQ2C2REdUFd1foDI6KSx5R3CxkTrdo=; b=EWpEU4rfb5YNuz
	1JoefPme79afpQnrgSl+NzOTWmvejhPducJHuLFQ7MwLyF4fozKMMIy2TlO74yOWAmE/Nr7F76qPz
	9Xei7X7M7kP7edeSGBHKQPi34dOseIPF8pmKizcVD4akalHS1ZNZG3ZERy7R7ev780ytnhQ2xhHyI
	NN0mGJvWZMWsMCnSE/lepFxkyUM1ExclRjT65R/dH3fMz69sOvzYYmXexF84Detwb39xBP4Gjjyp1
	9cO/il1PWW0rMQfuusvwEaYBdHIiPAhb9yHMy8zLIEnsjeWz89jTfoRX6ffGu54Ey6XIkPMbkn0AL
	5pblOdmCx3dHX+XgkDAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBIaj-00000000Y4b-1eaG;
	Tue, 21 Oct 2025 20:04:21 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBIag-00000000Y3a-3rTM
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 20:04:20 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-471b80b994bso42664315e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Oct 2025 13:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761077057; x=1761681857; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZQzRxP70PLLgRI/lGvNNccN0nmOHhv5bSnfp1ZsL9lA=;
        b=Ngx8jgxiO08KgpzP5z2YIfjKlgrAkqRtCtVRATjhQUO2yghh1pJIwrB16vXe8usFd/
         3ZM2oMfg7eqikhTbnZ+wMTjUIlM5V4xfcBOvSX8j38A6M4zxYb29U0EwmPI6HJcxBMIL
         /idleVg0D+3zjGifnraQWAKYljoIlAsHllDZiZnaRuOlRA6dadY203APQeZex5V14JVs
         RJGCaKAb3IbTYvQOWLDlCbdu6913fyNX/rC85e8uvSF7nG2h/L2SnIKklne5P0NxHuVL
         b/a9cqFeMtGeFxMWZWqpv7NDFxBqIhkNHlA8ZKLq3qEajiLcZ7WQuriVgZptMNyQaU5t
         XCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761077057; x=1761681857;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQzRxP70PLLgRI/lGvNNccN0nmOHhv5bSnfp1ZsL9lA=;
        b=YjbXYZwnwyYVf5DV3d4zToi+Vps09J0xeqhpTtsfaLvQGmPCXLtSv3cjQos0mejxrc
         /Pd8UCLYyC3kdCeMUfkwc0/HvsPWBDJgiUbtPKDnKtmzZsyKPmGTmGpkesT/f6p4dkls
         ek5SXkSXa2x/LX7mCUBiD30nmqDzTzj+pTE+5OWCpzeyXsz/shE3TVzAFr4EnGIv+SsQ
         uEMSrJs7RM3c2fqeUxPqFVetL1RVB4Rrc3Ec73epJpVzcL8KL0O4LnaQrZ4nxO2Huh/v
         79w1yptl2aIE3mf4Ij8fZRfVW5+axN5CgZvqypHAVa/dPU23PgfdTwxJ3eSHcc5ff5ax
         S/lA==
X-Gm-Message-State: AOJu0YyMmnZhY39+Gb+1Ak+5lfKetpo3gCWREJrnU5PlitN452d4uFjc
	M3xFNyRULJ/Nw+Cb8FyIkqSRddWHJBA5PhcVYRvKEH9MbRbzmBN+byJ0
X-Gm-Gg: ASbGncvXqSrfE55n6o+3f0Zb+cI0J9okoTvD/hAxfRDQW9zFRlh3Igue/c8f4ehzbtx
	mYn4MPPxVw6L6t7Xhdu1RiKwSwwhznXCSMuUy8491nO/1Hx8qtL80CQX9LqgsXF8pr8tuj69bpX
	YiudUKR2fCneINd/lDCsgXdreGuAWopDaZzLIcSPGSlCP6aEdIa/vZKZJ7QOMAp/GFO2c67eEQS
	wDc3XDvps/YIl/ebImAfhSWf3rtm6j+po3yD5aEqWgOb5oIL2+3ytROoU39qwdFnrZ+HizGSqc7
	z5/y5S9SpOOadpO/9zsVKi2miPu48gYDC/adsx8yJec2ODwH7ug4Mb2Z8gGxWSCmYm51AKX6hfW
	9JewfgZbG82BOYLZ4yeCxymLBOWU+GPg8uvVPKU0EhDRIf65gtU2rBVknYpZD9la8GZO4RazpTx
	scoXwILeqYVuSvuWD72NfjjpMj+JxDsHcmI/tPDDFp2fU/EbKIiCCIR+8sgein4I0=
X-Google-Smtp-Source: AGHT+IGgH4ctz7p2J/ZEdFVFtj3TJqVhCdGBRWMOn5stZShMySDMLrVW8iVCPrKMdAhubupHZGM/EQ==
X-Received: by 2002:a05:600c:190f:b0:470:feb2:e968 with SMTP id 5b1f17b1804b1-471178b125amr134048625e9.15.1761077056673;
        Tue, 21 Oct 2025 13:04:16 -0700 (PDT)
Received: from ?IPV6:2a02:8010:6606:0:a968:3f3a:bae8:f51d? ([2a02:8010:6606:0:a968:3f3a:bae8:f51d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47496cf4cf7sm22165465e9.8.2025.10.21.13.04.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 13:04:16 -0700 (PDT)
Message-ID: <1066e578-f543-4233-b556-ae458c9327a1@gmail.com>
Date: Tue, 21 Oct 2025 21:04:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Change DLL_STRBIN_TAPNUM_DEFAULT
 to 0x4
To: Shawn Lin <shawn.lin@rock-chips.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org
References: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-GB
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_130418_968289_6191E972 
X-CRM114-Status: GOOD (  15.03  )
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

Hi Shawn,

On 20/10/2025 02:49, Shawn Lin wrote:
> strbin signal delay under 0x8 configuration is not stable after massive
> test. The recommandation of it should be 0x4.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index eebd453..5b61401 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -94,7 +94,7 @@
>  #define DLL_TXCLK_TAPNUM_DEFAULT	0x10
>  #define DLL_TXCLK_TAPNUM_90_DEGREES	0xA
>  #define DLL_TXCLK_TAPNUM_FROM_SW	BIT(24)
> -#define DLL_STRBIN_TAPNUM_DEFAULT	0x8
> +#define DLL_STRBIN_TAPNUM_DEFAULT	0x4
>  #define DLL_STRBIN_TAPNUM_FROM_SW	BIT(24)
>  #define DLL_STRBIN_DELAY_NUM_SEL	BIT(26)
>  #define DLL_STRBIN_DELAY_NUM_OFFSET	16

This patch gets the Foresee A3A444 eMMC on my NanoPC-T6 board to work reliably
in HS400 Enhanced Strobe mode; before this patch it would suffer from I/O
errors in HS400 mode as discussed in the other thread [1].

Tested-by: Hugh Cole-Baker <sigmaris@gmail.com>

Thanks,
Hugh

[1]: https://lore.kernel.org/linux-rockchip/52537005-b8a3-c202-770c-599efc6a4d17@manjaro.org/T/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
