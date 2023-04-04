Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3D8BC761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 19:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FKm1AUnaVArG1Ar8rGzemjO7TsTTP/SZDbylUlkabg=; b=4E+pMgsRLDG5CJ
	K5EM99RWotbVcYxirqDfxjm1Gkdu7z5YMTEgGO8g4svS+hn05D69aNON6cNJWtWHaiQcGhKFhXZkt
	XOfw85ekeotYMZM4hkEo/xlY28y63qpVWdFcq955s1HVfqxRw67pqD9bmdyHFosQIFJ8jjLQVBKV6
	RcwOwjzoOw+7JMBmWwQDVITLrPFWXi3EVpTMiFbW6EaBlZCbQPO1gT0NCJtXdFMS1Dbcv30N9izZo
	IMczr3ePohEnYgvM48PEnOiUTd7lOLpJ9bWUZgre+9MLD8+mcGNsDm9b3tzaqOrhrFTa9fwPZIilG
	FPPkHSqr93Qkp09IDq0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjlvY-002ZC4-1n;
	Tue, 04 Apr 2023 19:02:44 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjlvV-002ZAY-0S
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 19:02:42 +0000
Received: by mail-ed1-x52c.google.com with SMTP id ek18so134735434edb.6
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Apr 2023 12:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680634960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yw5X/z4gzVpoCSKVcfq9MyB5/tYZSDGq7aTy4vsluK8=;
        b=p81NpqTRiWIYUax0xjnu2q64cUiRW+AXxMLFzyoxCihC3kiw5TZQddcwsme0FjdxNH
         UGqoafTBxhJ1njM7UhF9jiuqA7rnB2WsStf8p7fxyMwyMxTKurmA3k2STQpZxpefrWI3
         HA+xYAhn1mA88K35w4iFJaflVLRRdr5dLgNHGIwUikfXkaYxkP9OwXIgSX5UzwksiEa0
         yoS6XBFIylNNi9OoVba4UAa8+L4d7COOQVRtwAeynPkUDB/MTgv9QwF7VM+rHTbQSqDf
         Eu+wVXlsUaKBhrOeDcdJgsfFg2owwwtSGGMWfGuJdH7UbAsal8VGpY7Gb+z+Oceriihl
         /kVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680634960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yw5X/z4gzVpoCSKVcfq9MyB5/tYZSDGq7aTy4vsluK8=;
        b=vGmyYKKWEVNXSYwqhkkTMBrwGPfTFu/nN5BZ3DsL+Iqo7Dyzylb7Unv2nDI5cvyHdn
         8sSnT539sJg2wTBGaWSL8U4/ssYXjvnqctdBmWYVa32q6UNEkE/tVfkH8/0ABvt1mV0L
         YeeWeKkm2RQv8hae4ChKdgihF5khT846ggj+c9ms55xskTnbMgs+Col1Qbaqueg7rjZM
         9/kp668fD7dXLqz5QSiW4ABd7gaGNFf32FKjaTDbAMrWT4y661EYBGfN5JUGd2cOr6og
         WFYI6eqx4N1K6JNWvp+C1zly41683nESFMc4jq6bFaRMZjwIdm36UKHBr/GgUD9kvsmC
         93Xg==
X-Gm-Message-State: AAQBX9dFlL/VpvTgzYyYUaZbpM3KavcNmaWC6xfLC4XXDgr/Otrfwhwp
	GTkZrOQ19ftUA51M0G/XK+qmeA==
X-Google-Smtp-Source: AKy350Z2iXkWLR5Nn7m0PeRSz1c5znwSPs8FvKhjoUJ4OsomkYvuZp7mPyk32vQkhEbtFStUEicfIQ==
X-Received: by 2002:a17:907:c201:b0:8b1:75a0:e5c6 with SMTP id ti1-20020a170907c20100b008b175a0e5c6mr506790ejc.18.1680634959752;
        Tue, 04 Apr 2023 12:02:39 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7467:56f4:40b7:cba8? ([2a02:810d:15c0:828:7467:56f4:40b7:cba8])
        by smtp.gmail.com with ESMTPSA id 20-20020a170906101400b00947732c6521sm6355205ejm.79.2023.04.04.12.02.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 12:02:39 -0700 (PDT)
Message-ID: <baaf63d1-272f-d326-cf6f-b6150afe34e2@linaro.org>
Date: Tue, 4 Apr 2023 21:02:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable RTC support for Rock 5B
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Christopher Obbard <chris.obbard@collabora.com>
References: <20230404174121.38727-1-shreeya.patel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404174121.38727-1-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_120241_177035_DC7E80E9 
X-CRM114-Status: GOOD (  13.54  )
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

On 04/04/2023 19:41, Shreeya Patel wrote:
> Add DT node to enable RTC support for Rock 5B board.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> Reviewed-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 95805cb0adfa..fcb5af09e49b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -27,6 +27,31 @@ vcc5v0_sys: vcc5v0-sys-regulator {
>  	};
>  };
>  
> +&i2c6 {
> +	status = "okay";
> +
> +	hym8563: hym8563@51 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
