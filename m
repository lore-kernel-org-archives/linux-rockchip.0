Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9392C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 16:35:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A3EAB60F3A
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 16:35:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A3EAB60F3A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CDn5rW7jEH7M8L8oy/p6piLf9Yk5Jtk3l9NWAtbpM1I=; b=MRNVSid9IVx34hCqZhEb9NosOb
	/yTF9DcOG/Yxy1NT6maM7WkxctSCEocjVGOz7OKemAybM2o3//gR3Xo7SjUIxtN3cyyGZVwuA9dbd
	OKnyk7aSHXoYqNxvaT1PZJ+m59KB4pG1iHXQ+7wmiGEGWnSW1VcgwTzqAxIKoRl9naMY9PVeHSQK6
	TcRReykVYv/oHLd4T1lq58f84Rnw3AKzRKqA1i256R7FRPyOcR9Nd69nmdUdxHuecpw+382HApXCW
	aiOrg1MsIJVI/ps9Eeuwgvc/pQYs4PzYkl0Aq+iRoVHMEj0oHJz/6V4Wm8nNFpAq0//NfmTBXHly9
	Q/6Ai7zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT5Dq-0098eq-6O; Wed, 22 Sep 2021 16:35:50 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT5Dn-0098cY-Ik; Wed, 22 Sep 2021 16:35:48 +0000
Received: by mail-wr1-x429.google.com with SMTP id t7so8542836wrw.13;
 Wed, 22 Sep 2021 09:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XdQgCWF+HbG2xPtwVWVByVbos5CxGYFvNsMZE3cxEp8=;
 b=JlrBGgWRjSNrAFP2UtKXrI5eKubObLSYQAXO9P1SFT661XJ0iXdB6D2OSKjk4o2BqK
 YnKVQavDm81Er7abThInPnhii2sd+fKmz4ReYpp+Hq4BZH4YzFsofaoZmd560yhWRsya
 xgZsW3wqrjwQ2iqf8kzkUMloY/u0Qxnm0uAhjE8R6zWizV6nEDAMjVAO078OktsG0X6n
 XSxw/eAZRj09tSUBKtFJHNVHCrjvCA6ooACft9G+tePoP2+1F0sdoN+q4K71GVNgdanc
 stBkDvSOcU8CnUFaPPFP5Cu9B+gCgCfFRlj9zmOsm0kN/j1iA031nRwnjCqIsVbldlKb
 s8ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XdQgCWF+HbG2xPtwVWVByVbos5CxGYFvNsMZE3cxEp8=;
 b=mgdmORa/iLXVUnFq1CQhSWY/Nou97KwGaS6AWngvywiFPay5BI1C49VW/CxEGUBMv6
 o9K5oZl0DP0iCi4SBHRsJjvtiO3PgN+5d6hJpwrdQTfkMHl/L3R8b0ElXzWGewPkbYA6
 ZHPyABYUGzY8aYrMN+jPRbcgF/h0yy+X0Rc34gHK9f2g5Q3phkJp8Pbg1Gg3Yg4LSRZZ
 i4MeezwDWX7R/Yr6qe7YRrVEpIEduLUhftDDhsQumlEeXI9Cx/lHznV0RLovHttqtHYv
 Ere9AfLj9VKtby/x0dgl0/V9xcaoKK7FdDJwTiDGlcefQyDQcxYLn/IrJUsevwRo0RVw
 svHA==
X-Gm-Message-State: AOAM533lDjcxXBSNhjTBslqoUz8L/PKYsjUMIBYkeuOWF6I52N83jGvM
 mRy8JFU8jkWqBO6uvehAJAY2Tcdn7Q==
X-Google-Smtp-Source: ABdhPJwVxjQpNqvuAwLwUaVV8QWAF0/MVmZ7ssPoivZ0DMahLg1fiWqMHLnVwcAMUFpfKJhOcE3iYA==
X-Received: by 2002:adf:d084:: with SMTP id y4mr585418wrh.249.1632328544941;
 Wed, 22 Sep 2021 09:35:44 -0700 (PDT)
Received: from ?IPv6:2a02:810b:f40:4200:c404:3070:bbbd:746b?
 ([2a02:810b:f40:4200:c404:3070:bbbd:746b])
 by smtp.gmail.com with ESMTPSA id y11sm3261447wrg.18.2021.09.22.09.35.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Sep 2021 09:35:44 -0700 (PDT)
Subject: Re: [PATCH][next] drm/rockchip: Remove redundant assignment of
 pointer connector
To: Colin King <colin.king@canonical.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210922112416.182134-1-colin.king@canonical.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <27c79f7a-8e4c-fad8-c6cf-a89793f2e3c6@gmail.com>
Date: Wed, 22 Sep 2021 18:35:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210922112416.182134-1-colin.king@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_093547_693114_2BA61BDE 
X-CRM114-Status: GOOD (  19.46  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Colin,
Am 22.09.21 um 13:24 schrieb Colin King:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The pointer connector is being assigned a value that is never
> read, it is being updated immediately afterwards. The assignment
> is redundant and can be removed.

The pointer to the connector is used in rockchip_rgb_fini for 
drm_connector_cleanup.
It's pretty much the same for the encoder, btw.

Regards,

Alex
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_rgb.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> index 09be9678f2bd..18fb84068a64 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> @@ -150,7 +150,6 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
>   	if (ret)
>   		goto err_free_encoder;
>   
> -	connector = &rgb->connector;
>   	connector = drm_bridge_connector_init(rgb->drm_dev, encoder);
>   	if (IS_ERR(connector)) {
>   		DRM_DEV_ERROR(drm_dev->dev,
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
