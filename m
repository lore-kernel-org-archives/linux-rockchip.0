Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89FE5C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 07:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8zKCssy2OPlLbjr+h/ojgU8Et5OELB4YRJ2fZsMCZn4=; b=tEuBOHu5iylOLfqUFDXe4ETO09
	1ivFfBQi8+LVyeHMha0Bl4j7bR8TnzV5avKB8cFQP+MAZDQ2kPNbQ95kDFmfxuDx8o6dpCH9XYppc
	vXiD+CQXJhYuWLiDhtllGZO6OF3M6f6PxUovxINDss8eNtr2t74l28KCoa3LQzLPn8LZAeQghuTg+
	lJ1QnZUdmXwDB52a/l5aICxi+G13Jy2m2Xi6WNmp6d8sM4QTif0rEagCCt82Bsl6ZnWl3KtU6rB8K
	sMYkO9H/uuWzbdC2Oqiezou59pu59MyJwLfX3FXJtBWxKLtvI/UZY1sDz6m68EM/MZCAr//0XSHWC
	jeSSBjxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQJf-006Z9r-33;
	Tue, 05 Dec 2023 07:58:04 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQJc-006Z88-2F
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 07:58:02 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40bd5ea84d6so16841555e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 23:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701763077; x=1702367877; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6yZ/VcoVbuPE7IS/Acx3sYefHrc8lhnBqcqEkq1L8A0=;
        b=Nr+2oX8IRgw5VN41y4m//Nx3ycZ4vun8FODb9nu3lI+NGqPXyUjnWdCJmbF8QdLdof
         ko2o+BCYXx7kTnugVgLXxBjoKqAOHsQcwwoRIYytsoekox1cwoeRciurQuki2NWXE0Rv
         8A/cCE1C+CBdCVU7DLSPhtuXKR7WmSyztP1w5vOkfKQGHRJAKW+NSgrqpTDZpsyXz6tc
         FeHV26f7RFnsoQTmY4drlluhDkbYYJL6fLU5+A2n1ybLQyqLp5EdEnGTaD1Iwc296yN8
         MHQlbqA3rB2+1AY82o73QAAmQTVm90Hqj9sffj/tfpZsow8Eu4kenYQP6vJf2LJTnHEM
         q4fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701763077; x=1702367877;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6yZ/VcoVbuPE7IS/Acx3sYefHrc8lhnBqcqEkq1L8A0=;
        b=a9bAu4dSom87fOu5IQzhqkNIRtdu52KoMVO8sV7I2pjGoGM9Ei4R13/ia0FixvSzK7
         kKtb25voEkoK/1EblZGCsBcE/UN2RHitAW8UZk/sZfovPDlglPcxS8wSlFRA/mb8WalB
         iT2BDy8kEKCL+ZpY+PMpMi25aEZFqMn68zJsr+DFCb7c2xqZUBbe0aW6mb02dwwE0+rS
         yQpzyWs9AEroRibH3ACQ+UjOLmXmPZkDyLdRILGmMa4MXaI9ikZuNUMg1idJcYOg5d7Q
         HDsvNfFxUzN8bXJJMGLPgj5oQE40n1EYV8rfxXa8XpnApOxbv99JtYt1ENt31UCOEYtv
         XGgQ==
X-Gm-Message-State: AOJu0YzKNHsB+3fRMTbOtAOuQTqR6i8SEztrJBQrlhTD7oo5sFYXcwEF
	JkZ0IdHB4SI+qjgMXaBlP8vbHQ==
X-Google-Smtp-Source: AGHT+IGMUPO9d6IrvhXxXUIgi62nJFBXjjWYh5z/w4DQ0n2j8KHJb9zPfh20zYGiTu/FmyDUv0/+Xw==
X-Received: by 2002:a05:600c:2e51:b0:40b:5e4a:2351 with SMTP id q17-20020a05600c2e5100b0040b5e4a2351mr264525wmf.83.1701763077338;
        Mon, 04 Dec 2023 23:57:57 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb? ([2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb])
        by smtp.gmail.com with ESMTPSA id fm19-20020a05600c0c1300b004060f0a0fd5sm17803498wmb.13.2023.12.04.23.57.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 23:57:56 -0800 (PST)
Message-ID: <8f0f5965-2c41-414e-84ba-95da76082234@linaro.org>
Date: Tue, 5 Dec 2023 08:57:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH V2 02/10] drm/panel: himax-hx8394: Drop shutdown logic
Content-Language: en-US, fr
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, javierm@redhat.com, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
 <20231204185719.569021-3-macroalpha82@gmail.com>
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro Developer Services
In-Reply-To: <20231204185719.569021-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_235800_735527_88E850A8 
X-CRM114-Status: GOOD (  15.14  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 04/12/2023 19:57, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The driver shutdown is duplicate as it calls drm_unprepare and
> drm_disable which are called anyway when associated drivers are
> shutdown/removed.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   drivers/gpu/drm/panel/panel-himax-hx8394.c | 17 -----------------
>   1 file changed, 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> index 3823ff388b96..d8e590d5e1da 100644
> --- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
> +++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> @@ -390,27 +390,11 @@ static int hx8394_probe(struct mipi_dsi_device *dsi)
>   	return 0;
>   }
>   
> -static void hx8394_shutdown(struct mipi_dsi_device *dsi)
> -{
> -	struct hx8394 *ctx = mipi_dsi_get_drvdata(dsi);
> -	int ret;
> -
> -	ret = drm_panel_disable(&ctx->panel);
> -	if (ret < 0)
> -		dev_err(&dsi->dev, "Failed to disable panel: %d\n", ret);
> -
> -	ret = drm_panel_unprepare(&ctx->panel);
> -	if (ret < 0)
> -		dev_err(&dsi->dev, "Failed to unprepare panel: %d\n", ret);
> -}
> -
>   static void hx8394_remove(struct mipi_dsi_device *dsi)
>   {
>   	struct hx8394 *ctx = mipi_dsi_get_drvdata(dsi);
>   	int ret;
>   
> -	hx8394_shutdown(dsi);
> -
>   	ret = mipi_dsi_detach(dsi);
>   	if (ret < 0)
>   		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
> @@ -427,7 +411,6 @@ MODULE_DEVICE_TABLE(of, hx8394_of_match);
>   static struct mipi_dsi_driver hx8394_driver = {
>   	.probe	= hx8394_probe,
>   	.remove = hx8394_remove,
> -	.shutdown = hx8394_shutdown,
>   	.driver = {
>   		.name = DRV_NAME,
>   		.of_match_table = hx8394_of_match,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
