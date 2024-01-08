Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF8FDC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jan 2024 11:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7cMNcTG1z0VO9XoPVCv+HBF1VkYITU1/VxAquIdJU4=; b=n3K2rLuHED4pbP
	0iU4du9CXaVW90vtgE6AVYniuPCvWLYGhDTPbe6Vr90idCoJgqGqchlNaMSabjPj1zUXlw+3vrVIU
	cF92NB66xPbF2JIY/QAIz/Ov9Pp2MJ7VtPO6S2YoOZ/iu6ENwB/gHE8PqVzAW5kfvmolKxrDM34ez
	Sk3ngkPfEig1SZXksTDitYpeZ56sLLOQGYrmotu2iBkhyvqW2/e0nW4nfcob5c40YudKA6BlEmYAb
	HT//HnN0jAkn1E5OBDPCmw2HKaTUXZkFzWlAkw8s7GsgQY3+nelk1bs/YuiJqTronxzc1v6VfajpJ
	lcj7Yp+PTqK8I+CTdmXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMnlc-004pA3-1Z;
	Mon, 08 Jan 2024 11:26:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMnlZ-004p5i-0i;
	Mon, 08 Jan 2024 11:26:02 +0000
Received: from [192.168.88.20] (91-154-35-128.elisa-laajakaista.fi [91.154.35.128])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9E19A480;
	Mon,  8 Jan 2024 12:24:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1704713096;
	bh=ytA3K2+Lyo8zng5PWl0oYb/tMXP5SeEgEM76Ubh3ApY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=b4yNmQpzwsPaAhVwyLQDv8uYLESoKV+xJRcvsPyabu2HZW37ISTIRr2fw9UK/KBRH
	 /e0V4AStYlw1T+CWco6BDgn6KWZ2pZ07KRpo9lZkMSIjUGkThCVMCPoEo4PFUUGIA7
	 amsqesB3ZMqGT5XU53bJffJn+9WY9ZcJAE4fiaPU=
Message-ID: <4fd1ad71-056c-4f71-80ba-c24b06be377e@ideasonboard.com>
Date: Mon, 8 Jan 2024 13:25:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/10] media: rkisp1: Support devices lacking dual crop
Content-Language: en-US
To: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com, umang.jain@ideasonboard.com,
 aford173@gmail.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 Dafna Hirschfeld <dafna@fastmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20240106160221.4183409-1-paul.elder@ideasonboard.com>
 <20240106160221.4183409-5-paul.elder@ideasonboard.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 xsFNBE6ms0cBEACyizowecZqXfMZtnBniOieTuFdErHAUyxVgtmr0f5ZfIi9Z4l+uUN4Zdw2
 wCEZjx3o0Z34diXBaMRJ3rAk9yB90UJAnLtb8A97Oq64DskLF81GCYB2P1i0qrG7UjpASgCA
 Ru0lVvxsWyIwSfoYoLrazbT1wkWRs8YBkkXQFfL7Mn3ZMoGPcpfwYH9O7bV1NslbmyJzRCMO
 eYV258gjCcwYlrkyIratlHCek4GrwV8Z9NQcjD5iLzrONjfafrWPwj6yn2RlL0mQEwt1lOvn
 LnI7QRtB3zxA3yB+FLsT1hx0va6xCHpX3QO2gBsyHCyVafFMrg3c/7IIWkDLngJxFgz6DLiA
 G4ld1QK/jsYqfP2GIMH1mFdjY+iagG4DqOsjip479HCWAptpNxSOCL6z3qxCU8MCz8iNOtZk
 DYXQWVscM5qgYSn+fmMM2qN+eoWlnCGVURZZLDjg387S2E1jT/dNTOsM/IqQj+ZROUZuRcF7
 0RTtuU5q1HnbRNwy+23xeoSGuwmLQ2UsUk7Q5CnrjYfiPo3wHze8avK95JBoSd+WIRmV3uoO
 rXCoYOIRlDhg9XJTrbnQ3Ot5zOa0Y9c4IpyAlut6mDtxtKXr4+8OzjSVFww7tIwadTK3wDQv
 Bus4jxHjS6dz1g2ypT65qnHen6mUUH63lhzewqO9peAHJ0SLrQARAQABzTBUb21pIFZhbGtl
 aW5lbiA8dG9taS52YWxrZWluZW5AaWRlYXNvbmJvYXJkLmNvbT7CwY4EEwEIADgWIQTEOAw+
 ll79gQef86f6PaqMvJYe9QUCX/HruAIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRD6
 PaqMvJYe9WmFD/99NGoD5lBJhlFDHMZvO+Op8vCwnIRZdTsyrtGl72rVh9xRfcSgYPZUvBuT
 VDxE53mY9HaZyu1eGMccYRBaTLJSfCXl/g317CrMNdY0k40b9YeIX10feiRYEWoDIPQ3tMmA
 0nHDygzcnuPiPT68JYZ6tUOvAt7r6OX/litM+m2/E9mtp8xCoWOo/kYO4mOAIoMNvLB8vufi
 uBB4e/AvAjtny4ScuNV5c5q8MkfNIiOyag9QCiQ/JfoAqzXRjVb4VZG72AKaElwipiKCWEcU
 R4+Bu5Qbaxj7Cd36M/bI54OrbWWETJkVVSV1i0tghCd6HHyquTdFl7wYcz6cL1hn/6byVnD+
 sR3BLvSBHYp8WSwv0TCuf6tLiNgHAO1hWiQ1pOoXyMEsxZlgPXT+wb4dbNVunckwqFjGxRbl
 Rz7apFT/ZRwbazEzEzNyrBOfB55xdipG/2+SmFn0oMFqFOBEszXLQVslh64lI0CMJm2OYYe3
 PxHqYaztyeXsx13Bfnq9+bUynAQ4uW1P5DJ3OIRZWKmbQd/Me3Fq6TU57LsvwRgE0Le9PFQs
 dcP2071rMTpqTUteEgODJS4VDf4lXJfY91u32BJkiqM7/62Cqatcz5UWWHq5xeF03MIUTqdE
 qHWk3RJEoWHWQRzQfcx6Fn2fDAUKhAddvoopfcjAHfpAWJ+ENc7BTQROprNHARAAx0aat8GU
 hsusCLc4MIxOQwidecCTRc9Dz/7U2goUwhw2O5j9TPqLtp57VITmHILnvZf6q3QAho2QMQyE
 DDvHubrdtEoqaaSKxKkFie1uhWNNvXPhwkKLYieyL9m2JdU+b88HaDnpzdyTTR4uH7wk0bBa
 KbTSgIFDDe5lXInypewPO30TmYNkFSexnnM3n1PBCqiJXsJahE4ZQ+WnV5FbPUj8T2zXS2xk
 0LZ0+DwKmZ0ZDovvdEWRWrz3UzJ8DLHb7blPpGhmqj3ANXQXC7mb9qJ6J/VSl61GbxIO2Dwb
 xPNkHk8fwnxlUBCOyBti/uD2uSTgKHNdabhVm2dgFNVuS1y3bBHbI/qjC3J7rWE0WiaHWEqy
 UVPk8rsph4rqITsj2RiY70vEW0SKePrChvET7D8P1UPqmveBNNtSS7In+DdZ5kUqLV7rJnM9
 /4cwy+uZUt8cuCZlcA5u8IsBCNJudxEqBG10GHg1B6h1RZIz9Q9XfiBdaqa5+CjyFs8ua01c
 9HmyfkuhXG2OLjfQuK+Ygd56mV3lq0aFdwbaX16DG22c6flkkBSjyWXYepFtHz9KsBS0DaZb
 4IkLmZwEXpZcIOQjQ71fqlpiXkXSIaQ6YMEs8WjBbpP81h7QxWIfWtp+VnwNGc6nq5IQDESH
 mvQcsFS7d3eGVI6eyjCFdcAO8eMAEQEAAcLBXwQYAQIACQUCTqazRwIbDAAKCRD6PaqMvJYe
 9fA7EACS6exUedsBKmt4pT7nqXBcRsqm6YzT6DeCM8PWMTeaVGHiR4TnNFiT3otD5UpYQI7S
 suYxoTdHrrrBzdlKe5rUWpzoZkVK6p0s9OIvGzLT0lrb0HC9iNDWT3JgpYDnk4Z2mFi6tTbq
 xKMtpVFRA6FjviGDRsfkfoURZI51nf2RSAk/A8BEDDZ7lgJHskYoklSpwyrXhkp9FHGMaYII
 m9EKuUTX9JPDG2FTthCBrdsgWYPdJQvM+zscq09vFMQ9Fykbx5N8z/oFEUy3ACyPqW2oyfvU
 CH5WDpWBG0s5BALp1gBJPytIAd/pY/5ZdNoi0Cx3+Z7jaBFEyYJdWy1hGddpkgnMjyOfLI7B
 CFrdecTZbR5upjNSDvQ7RG85SnpYJTIin+SAUazAeA2nS6gTZzumgtdw8XmVXZwdBfF+ICof
 92UkbYcYNbzWO/GHgsNT1WnM4sa9lwCSWH8Fw1o/3bX1VVPEsnESOfxkNdu+gAF5S6+I6n3a
 ueeIlwJl5CpT5l8RpoZXEOVtXYn8zzOJ7oGZYINRV9Pf8qKGLf3Dft7zKBP832I3PQjeok7F
 yjt+9S+KgSFSHP3Pa4E7lsSdWhSlHYNdG/czhoUkSCN09C0rEK93wxACx3vtxPLjXu6RptBw
 3dRq7n+mQChEB1am0BueV1JZaBboIL0AGlSJkm23kw==
In-Reply-To: <20240106160221.4183409-5-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_032601_402105_EEE1ED1A 
X-CRM114-Status: GOOD (  22.41  )
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

On 06/01/2024 18:02, Paul Elder wrote:
> Some versions of the ISP supported by the rkisp1 driver, such as the ISP
> in the i.MX8MP, lack the dual crop registers and don't support cropping
> at the resizer input. They instead rely on cropping in the Image
> Stabilization module, at the output of the ISP, to modify the resizer
> input size and implement digital zoom.
> 
> Support those ISP versions by addind a dual crop feature flag, and
> mapping the resizer input crop rectangle to either the resizer dual crop
> module or the image stabilization module.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Tested-by: Adam Ford <aford173@gmail.com>
> ---
>   drivers/media/platform/rockchip/rkisp1/rkisp1-common.h  | 2 ++
>   drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c     | 6 ++++--
>   drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c | 6 ++++--
>   3 files changed, 10 insertions(+), 4 deletions(-)

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

  Tomi

> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index f7c251f79aa9..219d4a2547aa 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -112,6 +112,7 @@ enum rkisp1_isp_pad {
>    * @RKISP1_FEATURE_MIPI_CSI2: The ISP has an internal MIPI CSI-2 receiver
>    * @RKISP1_FEATURE_MAIN_STRIDE: The ISP supports configurable stride on the main path
>    * @RKISP1_FEATURE_SELF_PATH: The ISP has a self path
> + * @RKISP1_FEATURE_DUAL_CROP: The ISP has the dual crop block at the resizer input
>    *
>    * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
>    * the driver to implement support for features present in some ISP versions
> @@ -121,6 +122,7 @@ enum rkisp1_feature {
>   	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
>   	RKISP1_FEATURE_MAIN_STRIDE = BIT(1),
>   	RKISP1_FEATURE_SELF_PATH = BIT(2),
> +	RKISP1_FEATURE_DUAL_CROP = BIT(3),
>   };
>   
>   #define rkisp1_has_feature(rkisp1, feature) \
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 106040c4181c..e79fbd4d7e44 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -507,7 +507,8 @@ static const struct rkisp1_info px30_isp_info = {
>   	.isr_size = ARRAY_SIZE(px30_isp_isrs),
>   	.isp_ver = RKISP1_V12,
>   	.features = RKISP1_FEATURE_MIPI_CSI2
> -		  | RKISP1_FEATURE_SELF_PATH,
> +		  | RKISP1_FEATURE_SELF_PATH
> +		  | RKISP1_FEATURE_DUAL_CROP,
>   };
>   
>   static const char * const rk3399_isp_clks[] = {
> @@ -527,7 +528,8 @@ static const struct rkisp1_info rk3399_isp_info = {
>   	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
>   	.isp_ver = RKISP1_V10,
>   	.features = RKISP1_FEATURE_MIPI_CSI2
> -		  | RKISP1_FEATURE_SELF_PATH,
> +		  | RKISP1_FEATURE_SELF_PATH
> +		  | RKISP1_FEATURE_DUAL_CROP,
>   };
>   
>   static const struct of_device_id rkisp1_of_match[] = {
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> index dd77a31e6014..de2eb2c97cc4 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -635,7 +635,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
>   	struct v4l2_subdev_state *sd_state;
>   
>   	if (!enable) {
> -		rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
> +		if (rkisp1_has_feature(rkisp1, DUAL_CROP))
> +			rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
>   		rkisp1_rsz_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
>   		return 0;
>   	}
> @@ -646,7 +647,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
>   	sd_state = v4l2_subdev_lock_and_get_active_state(sd);
>   
>   	rkisp1_rsz_config(rsz, sd_state, when);
> -	rkisp1_dcrop_config(rsz, sd_state);
> +	if (rkisp1_has_feature(rkisp1, DUAL_CROP))
> +		rkisp1_dcrop_config(rsz, sd_state);
>   
>   	v4l2_subdev_unlock_state(sd_state);
>   


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
