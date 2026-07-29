Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC5BDC53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 11:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmZDyuTMxRBsucl7ZaBfjditnOHvDP3LJMDtRGR3yV0=; b=eiZngJlBQRld1i
	8+LXo2LtOUpcFUK5ZSizndoRg83X/o8/J/g+xQSawM/4aW1PNaY1q1fzJWh16lUSWeS5rJMm+fkxk
	gBzI/NxQEqVeySX2iT8jI9ZRKUu82ggyeqc9GSLfD40kY5NRVKFlzsX0Td6N8X/zL5jU70BAS7O4Z
	r997b6H1Dm5VpVt+7D+00oJFUzCxD2hligVGhsJjL5Mp5J9xp5G20qbbapT7CCnwWJeSGVCbgrFna
	4R7tjezTszgsv1z7YlVisc6m2BmXsSbCd1Rk1yuDsUppzk2Cl8fR2RoYdBkjdAF2117xkhSg8jhao
	hRua9+F+Hd3S8yw66HBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2cj-00000007km5-0N3D;
	Wed, 29 Jul 2026 11:38:57 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2ch-00000007klC-0mna
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 11:38:56 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-47db714766aso1184195f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 04:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785325133; x=1785929933; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=5iX3sEVovVYi3DpvUrl6PGylYfhOnizJPhWXlTW0MXY=;
        b=CoZhzWMCDKx5BR1+BP3fMnMGbb8oeHcMSgO0YgLddrSsZFCtSbkENKUbJAt9+VCb6X
         e9hAf2e7GwpxITeSt7G8szzpUClKeURJysvpJaT+K15W+8cQ7QaewDipUJInIBtMhGs7
         Gzw6vPTT79uzqEg/sIT77evBldHD7i1DrIleTIrXZtIYWPCCxl2rOyq1fhpeHZdy0cjQ
         h4vW44wPpL6C3HKUBRfAtzQdoYa4GbUhd5l3UvhggTeSxvzACLh5pV9QaEZtGIP6LVZn
         477jamUfH+7JMgsGeX9LnLUzecGuLkSRIx9XDJZp8HRDORRrRuWMS8vLsE9S+cgL3+le
         RA3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785325133; x=1785929933;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5iX3sEVovVYi3DpvUrl6PGylYfhOnizJPhWXlTW0MXY=;
        b=HNfW8+8kJ6pfd93rtuCmqtt1SNAcCCZFaWY5CscwYpInVUCIqKmdVnVcytOIGx2IZ5
         fK+d5LuXzMP0P+JH/+tvNdtVK0IepstCO3r7EINVEmP5RupAP57KK4aKbrkDJPtsv1Cr
         ju0jyomC6hFu0khs2TrzfNI5eLE7QgQmhW/xHl3+22BWelC1iRon9K4F+PyRq9JaZQJJ
         skc5naW8ERwj3uZUJWqXX2aVStC1E1pZlGTSQLifAk0nieP/JZSLYDQsF0f93TXLZzTD
         t03fyP8CunJUWMU3KwSi5SUTPfmoZ0Q4pOtIMroLwLAYz9wANH0ZHYQQSGSSxirn+jn4
         0Zwg==
X-Forwarded-Encrypted: i=1; AHgh+Rot4n/ostf8ugEPd6Lg5DL74kEtKFGfGCfC0Lgve0nXnjaUqNl+c/psBb5CV5Tu7s1avnQszGTYnimL0tSFrQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyICkdn1+IDxea1M9inhNRakM1AlPapV4ur1kqrVA5UhwecfHKY
	MjOT1WGMqFZepu/MsCOK+UYZcO7jAEv+1q4LyMjq1gJOYVGE+7TaeCptBIwlIDh3zU0=
X-Gm-Gg: AR+sD13r6hh/I+eUGc48FaiXvnFtWN2YYsoap/V162RIO8asBYcG5mHUXVGJmeZPaGA
	iFiU/eeSCt6wZuqB39jVODijWdnk7UoKRdc9+x2ylUX3yKx+uTXerbBKoGEkX87Vk+y21X99yZ3
	DU6IlrsDF9iEW8uHZnt3cf9XnafVMTHfIAYVUEhNjN3aJ9iJe4USZ8whwQF3Feacun+E9bEWUi2
	058hvPhgf12Je49Wcz5OlbNneyImR+5keyoQp8N21BmAVlp9cD2UBZQ05t8CKAeu+5moKT45ooJ
	3tRzTC3T8lIeTPj42r+qRO7iSr/72bRN7wqGqZhfLfbcweJsGCMJwf0DA4/9uu/5dZWtvPP2kqI
	1uGFzpW0ZLX2KZx+wTPXyQ+3q7C6Nc8pEepbQPp4GEc443hwW7vassfq+rPSUSENaljdD1qm4Hp
	bPXusIEiLxaXHIG3iNu92OZV3fYiEBVbUS91r7lVJC4RT2SkDOyx4LyJkdVGNFRXE2Ssgawgw=
X-Received: by 2002:a05:6000:2c05:b0:47f:9763:9864 with SMTP id ffacd0b85a97d-47fbabee850mr2432854f8f.19.1785325133163;
        Wed, 29 Jul 2026 04:38:53 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.24.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fb6b0f039sm7702125f8f.18.2026.07.29.04.38.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2026 04:38:52 -0700 (PDT)
Message-ID: <f77aab11-0e1b-4962-9d53-0bb2fcd6486a@linaro.org>
Date: Wed, 29 Jul 2026 12:38:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] media: qcom: camss: use
 fwnode_graph_for_each_endpoint_scoped() to simplify code
To: Frank.Li@oss.nxp.com, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna@fastmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: driver-core@lists.linux.dev, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, imx@lists.linux.dev,
 Guoniu Zhou <guoniu.zhou@nxp.com>, Frank Li <Frank.Li@nxp.com>,
 Guoniu Zhou <guoniu.zhou@oss.nxp.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
References: <20260625-fw_scoped-v3-0-ffd0868e498d@nxp.com>
 <20260625-fw_scoped-v3-4-ffd0868e498d@nxp.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260625-fw_scoped-v3-4-ffd0868e498d@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_043855_254478_07E754CA 
X-CRM114-Status: GOOD (  18.21  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 25/06/2026 15:17, Frank.Li@oss.nxp.com wrote:
> From: Frank Li <Frank.Li@nxp.com>
> 
> Use fwnode_graph_for_each_endpoint_scoped() to simplify code.
> 
> No functional changes.
> 
> Reviewed-by: Guoniu Zhou <guoniu.zhou@oss.nxp.com>
> Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v2
> - fix typo simplify
> - collect andy, gouniou and loic's review tags
> ---
>   drivers/media/platform/qcom/camss/camss.c | 17 +++++------------
>   1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 2123f6388e3d7..23f3cc30a15a5 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -4793,30 +4793,23 @@ static int camss_parse_endpoint_node(struct device *dev,
>   static int camss_parse_ports(struct camss *camss)
>   {
>   	struct device *dev = camss->dev;
> -	struct fwnode_handle *fwnode = dev_fwnode(dev), *ep;
> +	struct fwnode_handle *fwnode = dev_fwnode(dev);
>   	int ret;
>   
> -	fwnode_graph_for_each_endpoint(fwnode, ep) {
> +	fwnode_graph_for_each_endpoint_scoped(fwnode, ep) {
>   		struct camss_async_subdev *csd;
>   
>   		csd = v4l2_async_nf_add_fwnode_remote(&camss->notifier, ep,
>   						      typeof(*csd));
> -		if (IS_ERR(csd)) {
> -			ret = PTR_ERR(csd);
> -			goto err_cleanup;
> -		}
> +		if (IS_ERR(csd))
> +			return PTR_ERR(csd);
>   
>   		ret = camss_parse_endpoint_node(dev, ep, csd);
>   		if (ret < 0)
> -			goto err_cleanup;
> +			return ret;
>   	}
>   
>   	return 0;
> -
> -err_cleanup:
> -	fwnode_handle_put(ep);
> -
> -	return ret;
>   }
>   
>   /*
> 
Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
