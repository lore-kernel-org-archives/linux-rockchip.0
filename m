Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B78606A325
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 12:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Om1zDrYk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=HspPv9gR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=J5JAChv/b4bFBRSnfYx/j1chYjm8TDaHljgXm8dpFhA=; b=Om1zDrYksdgtHr9mubK1WRYpTv
	br/O26gdsGhn2jRKvTb/Gr2ZJypUoD74VL1q9ue7Vq8rUmfe8DNulPk/MK/wqkuEZCaC4NhORkV0h
	eEFQPyVJGdTH4vE3dS4hRPR6R9fqSu0xw1rU1lvPtaJ3xWv/TGB6p7l5wfvKdda9nULSFtJI3Rzc2
	QtzSAcSW9TBNMGarGnqGHNdDTYNnzS3mnMr1fpKS17eC4+eibODlEYfM+zOGf9pfqQkmNcQSZqnxh
	0WVKwG1esB5rjjIEVNx1s/pQms4PeEErZnXCHO5qYaQttODLtmM+4kmtT6T1A4d9JxBszNIoArko8
	rCcOpNpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTelw-00000008qWc-3goN;
	Wed, 18 Nov 2026 12:28:20 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTelu-00000008qTJ-17rb
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 12:28:19 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4a5b2be99a8so8599115e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 04:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795004896; x=1795609696; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Sbg0KLhjP6VImCPLy3d1+inU/8Bcn6/seY59UQYwN7I=;
        b=HspPv9gRoTZpVMVwQMygkdidqgisQM/oCfvEW38ZpIx6FSn8qOr5MFARxu9mnH3aS6
         4JU4JzUmYWpYRuaIspsGoI1wWHdWxV2uw8EX5g52ZhqS0nUZOrLWAMlToaNa/X2bbeRs
         1GxWvIomcyv+6irgZUQC5HpS5LXFfVoWNrDAKTYRbGHlKdZMEtTISAIUMEWLllmUSvrD
         SMAIKAovkAoaALm5ftCYII3EJcAmrvRtJSIRpq7F4h9m599ijh9n3wR7T0zTQb0lSjNU
         oLrOLrMCOAode4PNpy+kU/wRNVO6IJ677c3gBtglQvMQemnhwsh1K7hqJgU4KTw68ptL
         6n+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795004896; x=1795609696;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Sbg0KLhjP6VImCPLy3d1+inU/8Bcn6/seY59UQYwN7I=;
        b=TRD480fLaLCUPp+rPS+N5crT61zvzEra3+QO3tjbh8523hMht6K6g+ZoM3RlegY342
         k8t6NHHvEaAQIsDafeIJzJUl2uvsD8AhcXLmXop7qS5+lYyYS2Xi8ohtiP0DF1Z5Q5A6
         wtR2E1HURQyEVn0+nI1+nYSYpGnZb0/iLElK/KDrEFRSysO6m/G23/9tsHhdM5yMf1tb
         MMRxYbA6mgO419wWXYXE/gNPZKuMjXto+3VtbHiSXXefQQDHQOQpAWG3xKTBkzVb0H8V
         3MgguNLmVklx3Z1QNsPKJ+eQUjDoEcncH0HxVYoSBhfVuMpbAm0M45+84Yrl6K3HsiRH
         5Ghw==
X-Forwarded-Encrypted: i=1; AL+hErHNIRGfvbs7hgbyPa8ykw5mc1BFIpJmZktz4XhSpPAt+sqmpOHRQSQNY6afPvG4O2jiJezJ4+m610COe6aIjw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+p8cEiy2FmdcbbO1kShjm+aLsc7CeR6dvG6Tv9HosHRjJOsOF3
	QTQARmGEREpQg6gxuvOX2WpdamyUUm38mtFzg4gA8kfkNfkVnV/AYnw+MY0zHkLfb0c=
X-Gm-Gg: AYBFou3JgeZ4qgQN/QIMRs6XP4CAW/XFrSvL/4ylwjjsG7MWbZprVPFvt1sajQ2PJ5Z
	1RgvvkRB6fFlpwX4dxKuT0rNq4kseMjtry5/E4b/2EcCC9H7B4wkXi4YXih7Rp9TLcz/6HNi4Qk
	VyLmeFmW7bNdHES1eLyPqnUcSFsinRGii5No6mioK9PjF/5w58BgLg4cN0O05Xnh2QxjialDT73
	pTBJx/QRgIgmarcWnsXehFXxi7Hp512smrdrZGs1ywOvau+7QLF8HdPugSfQgAQ/zRZ2pYT5+uL
	7u7LzUnW9EBF7ayjwCXdHwczqWnSZJLux6HTnJwktQuE5p7TJCl37ybpDNkC7pUtgQmK4nasItT
	VoHZlCl/DvNm3WkqOFB/OLFQfFvKVdy9JbWpQ3NGwqfH8/Ert3P+rg1G8SEELLkbsjTYaRTNdSA
	nk7zExjA63YUyJ8F+JZr5mKCuIUz0kgax65UJtckTN+DWGtMQEBADxgsX9Is6+7AGk+kjHXV3di
	K5E1MEezVKEvTPwnp+CAc48coknmCqhHB0qgxBjWhMBNvzI2wtB4YZla6D4MDK42DAURReu9fPz
	jvYFGw8Xg2B0pt7BkMWkCgl0KsJbay9TyJ98p67CZYeNLbGhSCut80oya+3OJbzIMgXQEsHcSqW
	HYw==
X-Received: by 2002:a05:600c:8b63:b0:4bb:6871:8f21 with SMTP id 5b1f17b1804b1-4bb7da27fd2mr44906275e9.23.1795004896063;
        Wed, 18 Nov 2026 04:28:16 -0800 (PST)
Received: from ?IPV6:2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183? ([2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb7d2abfc4sm64858355e9.7.2026.11.18.04.28.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2026 04:28:15 -0800 (PST)
Message-ID: <6291be5c-94e8-4a5b-aa30-f797672e4165@baylibre.com>
Date: Wed, 18 Nov 2026 12:28:13 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Daniel Drake <ddrake@baylibre.com>
Subject: Re: [PATCH v17 10/12] accel/rocket: add a GET_PARAM ioctl for the
 hardware version
To: Jiaxing Hu <gahing@gahingwoo.com>, tomeu@tomeuvizoso.net,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com
Cc: royalnet026@gmail.com, ulf.hansson@oss.qualcomm.com,
 abel.vesa@oss.qualcomm.com, sebastian.reichel@collabora.com,
 sidong.yang@furiosa.ai, u.kleine-koenig@baylibre.com,
 chaoyi.chen@rock-chips.com, shawn.lin@rock-chips.com,
 finley.xiao@rock-chips.com, diederik@cknow-tech.com, alchark@flipper.net,
 leonard@lausen.nl, vlwwwwww@gmail.com, jeff.hugo@oss.qualcomm.com,
 rfoss@kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1794615324.git.gahing@gahingwoo.com>
 <bd963b70e40af3c3c74ac1569cda7be885b0ada1.1794615323.git.gahing@gahingwoo.com>
Content-Language: en-US
In-Reply-To: <bd963b70e40af3c3c74ac1569cda7be885b0ada1.1794615323.git.gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_042818_337531_211DB8BE 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On 14/11/2026 03:05, Jiaxing Hu wrote:
> Add DRM_IOCTL_ROCKET_GET_PARAM so that userspace can query the NPU
> hardware version and pick the matching hardware description, such as the
> SRAM configuration and the register layout.
> 
> Add DRM_ROCKET_PARAM_HW_VERSION, which returns a hardware version enum
> that matches the device tree compatible.
> 
> The enum starts at 1 and 0 is not used:
> 
>   RK3588: 1
>   RK3576: 2

I wonder if REG_PC_VERSION / REG_PC_VERSION_NUM could be used instead of
creating our own numbering scheme?

> diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
> index ef7043046bc6..50c8b05bd394 100644
> --- a/drivers/accel/rocket/rocket_core.h
> +++ b/drivers/accel/rocket/rocket_core.h
> @@ -41,6 +41,7 @@ struct rocket_soc_data {
>  	unsigned int num_clks;
>  	unsigned int num_resets;
>  	bool task_con_16bit;
> +	u32 hw_version;
>  };


If we're adding hw_version here then perhaps the task_con register
selection could be made based on the hw_version field value. Then we
don't need an extra flag.

> +static int
> +rocket_ioctl_get_param(struct drm_device *dev, void *data, struct drm_file *file)
> +{
> +	struct rocket_device *rdev = to_rocket_device(dev);
> +	struct drm_rocket_get_param *args = data;
> +	const struct rocket_soc_data *soc;
> +
> +	if (args->reserved != 0) {
> +		drm_dbg(dev, "Reserved field in drm_rocket_get_param struct should be 0.\n");
> +		return -EINVAL;
> +	}
> +
> +	soc = READ_ONCE(rdev->cores[0].soc);

Does it make sense to do READ_ONCE if the variable was not written with
WRITE_ONCE?

If my quick read of commits like 89c2c777df17 is correct, it's possible
that there are gaps anywhere in the cores[] list; please double check if
it's safe to always assume core 0 exists.

> +/**
> + * enum drm_rocket_param - parameters for DRM_IOCTL_ROCKET_GET_PARAM
> + * @DRM_ROCKET_PARAM_HW_VERSION: an enum drm_rocket_hw_version value.
> + */
> +enum drm_rocket_param {
> +	DRM_ROCKET_PARAM_HW_VERSION = 0,
> +};
> +
> +/**
> + * enum drm_rocket_hw_version - the NPU, one value per DT compatible
> + * @DRM_ROCKET_HW_RK3588: "rockchip,rk3588-rknn-core"
> + * @DRM_ROCKET_HW_RK3576: "rockchip,rk3576-rknn-core"
> + */

Let's not document these as a match against compatible and their values,
just state it as a way of identifying the NPU chipset.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
