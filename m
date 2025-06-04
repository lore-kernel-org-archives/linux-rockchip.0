Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68398C5AE59
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 02:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLioC3VkGGuWMjSSL/LGtXG5z2ZybysvNXgHIvoluJ4=; b=QHmPEPDyd4XBPS
	nyVkGXst0Qb3vtHU+T/Um3duwRrR//RdamcigTrtLPAvd7xV9BoV9ySGMviOdTPYDo79i0n+VgiFb
	T420KiTKGl9uXerZFh8kdjtNJXnwAeQii/Pby/bg5bmMiE34uL+3tii4z3aurBELDqrgit+ZaKpf8
	n0oVOfdHcVtUmywfb9q5nDv2mtjSjp002/v55QMpCkssnQhbhZaKrq83ErGxalELEbx+gZpyyGgQG
	h1tkPXLx84p0KOnNurDiu8PA9zXvqEl4WCWNigbCQ/ANm4cu9BrL4DEY2MqygCVEFBGNs8mSNS1pC
	RK0N3WajLI8d7k1zo/Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMdrY-0000000CJke-1mzC;
	Wed, 04 Jun 2025 02:28:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMcV0-0000000C85E-1JV3
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 01:00:59 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 553K2kof006326
	for <linux-rockchip@lists.infradead.org>; Wed, 4 Jun 2025 01:00:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0TETAATiddWzakLFXxA2ygfNXSpGYQL0mslL+m00Hv0=; b=KfDOv9n/FEv4i8he
	fflq8LJHKIWs5r2ZtT6clTopgklO/bcRy4s4yFLfpCyUpINpnS0ainmKSLfxeGFL
	TBdEdOBqcwa5g+JMYJivqjOnLvTSYXZIDlNIl1z/AGf94qjSYtDwy5hUxof5gDkr
	VAsWqhRVRag180o6R8GgNAVUaWu1DcB2Hj2iW1+If6npOPZq56UjhXj9ddf7oDMJ
	IgS2QlhxEiwlR4/LRr9lnRggeXRcLJvDk8moGsKOD5i+GjLUcKobPxkPUfFVhZ3p
	UvMAzr3EBUVqpHf2bXzl83AFQCfQk+BzLFtWYNETNiU1BwVrhc9wD57yQ0e8KlWk
	7DgXgw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8svbxx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 01:00:56 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-311ef4fb5fdso5918981a91.1
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Jun 2025 18:00:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748998856; x=1749603656;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0TETAATiddWzakLFXxA2ygfNXSpGYQL0mslL+m00Hv0=;
        b=MD7YVB/p5q6z3L3dzWRZu2ot1r3PsrOwDnmrrHjyDcdABEI/LUTujZeCIbzUWpwENf
         qwCClI9+qobfT1SnQXulXvBLyWdMa6V9qxGuODyOBwYmhwBbSbJzB2kINREjc/fkH2I7
         DBk0SKw84/q5Ny+qXni58vr+XlFlPk0gTwAQ/1ltLc5G8Kq9ShpTzZVJG/Ae5Z4eQ098
         BOEM5p6JheXAxfDBwHMbUZd52Q8i7UlcgHpZr11lKuzqqTA5pdeXlsKnaBMmf7rm7k6B
         j4b9vsCkFYAPT6VJm05Kt+aym1dFcS373YHwGuZSWPQ+O0lYZsKP/wTnQ89OIAui1DL8
         fUDA==
X-Gm-Message-State: AOJu0YweUzMJJ4+ENdnCyvst2L/AQF6fhSOa6M0U8ZP05g/LS60J6inP
	PEdvytl0NYeQitwf7LgwVTRHJ2oKAbq4AYXONPfOIqHAgb5Lhnt/phvnhCWTZP2lFf6WH3rGWj/
	l+tEd4nO8TvB2mJsK1b3GO/ie5ccgomyY3kOeWCw4HLDbJLT9hRNZVLwGW9gIBTyTDOFDTf9KDK
	8=
X-Gm-Gg: ASbGncuOaclXUO4/yEb8rrLiDuqzXtwIsVLF+FUIl6OedpIcEZpR31O3UbKmo04pNOP
	fG6+VnhnLIYMFw2QO91X05Hwp5VhmVGu9HFGEtmfxZlX9pAgYJv7VM2QcnYuzDqyshDZlaDm2rB
	vP0p1sU3GvlcsyML+cFpdg9L/WHCnrDZ9nV/D7Q6ah2PUV7HmAK7FGlije8KYkKz60pMJMafjkT
	S3T707nxC1AP2cD7zGHRZIJvM5vDl01GNaKafF0skEvSuOqLk+p8GIPLWI03WAvHc4ArucrZAVR
	qCkbCKYtWONlVTKS1XDUcJutfITYNenAc2wdXZWhUJHXBAgoExEXltDuyNj8elg+v3NwqQ==
X-Received: by 2002:a17:90b:2782:b0:312:f88d:25f8 with SMTP id 98e67ed59e1d1-3130ce68aa8mr1203965a91.22.1748998855853;
        Tue, 03 Jun 2025 18:00:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmRSfbGMmhaR3Ku/yZIh4G0/5XqUOhfKtwOObaYX7P945BS23NiZee6UUPyQNOtYh7bFlVUQ==
X-Received: by 2002:a17:90b:2782:b0:312:f88d:25f8 with SMTP id 98e67ed59e1d1-3130ce68aa8mr1203911a91.22.1748998855246;
        Tue, 03 Jun 2025 18:00:55 -0700 (PDT)
Received: from [10.71.109.39] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e30c697sm7881399a91.36.2025.06.03.18.00.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 18:00:54 -0700 (PDT)
Message-ID: <cd47f14c-908c-4fa9-97eb-d2db4c90be1b@oss.qualcomm.com>
Date: Tue, 3 Jun 2025 18:00:53 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/panel: himax-hx8394: Add Support for Huiling
 hl055fhav028c
To: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de,
        mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch,
        airlied@gmail.com, quic_jesszhan@quicinc.com,
        neil.armstrong@linaro.org, javierm@redhat.com, megi@xff.cz,
        Chris Morgan <macromorgan@hotmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-4-macroalpha82@gmail.com>
Content-Language: en-US
From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
In-Reply-To: <20250603193930.323607-4-macroalpha82@gmail.com>
X-Proofpoint-ORIG-GUID: diAE9KnbPVTnWZofeWH1Rpq3ZFOldFyb
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=683f9ac9 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=69EAbJreAAAA:8 a=COk6AnOGAAAA:8
 a=cXo1RV5oYOhoEnHjMz0A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: diAE9KnbPVTnWZofeWH1Rpq3ZFOldFyb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDAwNSBTYWx0ZWRfXyGJWBgtNqVUA
 lOXXwt1072M1r6swMhUZLU958swqJ0F8asZ7kj+MUGTsid+mU0/dG4c3Y3JSN1eO+/aTzi+VTno
 1eZosDGfsqwS1op2p9wtJQJQky1U2PLPbV7bPd1mAufVD/fGY/0EaCuvakz7frd/25YHwDbct6/
 PG6VBS1T0YE6Ii1qmIPkZYMUxViQDRoLXLzMfNw8itiWobHKrI5Vojg2a6DcAuLiLSJLd2kGvmC
 WXKIK2UOL2r2tC48S/yXo3uHzjVW2/yZtHnghy7Y91xgsMQ3VF96CN3Rnx8lKCPl8RYU7T/jv8D
 6x8yKLcKwzTKna7pyDbkQa5xS24IBkrc/hAslC2n3E4TZary7WHnn062yYBf/dZz1+SDQVV3G7n
 jCvNQQrLUg/UhPehNRr4XPTUPZOS5tapFGOY89o6EHlKamLZb5N5U+OvLNQNjg6DFBZ+ZN1P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1011 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506040005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_180058_377212_DF1AF38B 
X-CRM114-Status: GOOD (  23.75  )
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



On 6/3/2025 12:39 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Huiling hl055fhav028c panel as used on the
> Gameforce Ace handheld gaming console. This panel uses a Himax HX8399C
> display controller and requires a sparsely documented vendor provided
> init sequence. The display resolution is 1080x1920 and is 70mm by 127mm
> as stated in the manufacturer's documentation.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

> ---
>   drivers/gpu/drm/panel/panel-himax-hx8394.c | 142 +++++++++++++++++++++
>   1 file changed, 142 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> index ff994bf0e3cc..16e450b156b7 100644
> --- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
> +++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> @@ -477,6 +477,147 @@ static const struct hx8394_panel_desc mchp_ac40t08a_desc = {
>   	.init_sequence = mchp_ac40t08a_init_sequence,
>   };
>   
> +/*
> + * HL055FHAV028C is based on Himax HX8399, so datasheet pages are
> + * slightly different than HX8394 based panels.
> + */
> +static void hl055fhav028c_init_sequence(struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	/* 6.3.6 SETEXTC: Set extension command (B9h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETEXTC,
> +				     0xff, 0x83, 0x99);
> +
> +	/* 6.3.17 SETOFFSET: Set offset voltage (D2h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETOFFSET,
> +				     0x77);
> +
> +	/* 6.3.1 SETPOWER: Set power (B1h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETPOWER,
> +				     0x02, 0x04, 0x74, 0x94, 0x01, 0x32,
> +				     0x33, 0x11, 0x11, 0xab, 0x4d, 0x56,
> +				     0x73, 0x02, 0x02);
> +
> +	/* 6.3.2 SETDISP: Set display related register (B2h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETDISP,
> +				     0x00, 0x80, 0x80, 0xae, 0x05, 0x07,
> +				     0x5a, 0x11, 0x00, 0x00, 0x10, 0x1e,
> +				     0x70, 0x03, 0xd4);
> +
> +	/* 6.3.3 SETCYC: Set display waveform cycles (B4h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETCYC,
> +				     0x00, 0xff, 0x02, 0xc0, 0x02, 0xc0,
> +				     0x00, 0x00, 0x08, 0x00, 0x04, 0x06,
> +				     0x00, 0x32, 0x04, 0x0a, 0x08, 0x21,
> +				     0x03, 0x01, 0x00, 0x0f, 0xb8, 0x8b,
> +				     0x02, 0xc0, 0x02, 0xc0, 0x00, 0x00,
> +				     0x08, 0x00, 0x04, 0x06, 0x00, 0x32,
> +				     0x04, 0x0a, 0x08, 0x01, 0x00, 0x0f,
> +				     0xb8, 0x01);
> +
> +	/* 6.3.18 SETGIP0: Set GIP Option0 (D3h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP0,
> +				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +				     0x06, 0x00, 0x00, 0x10, 0x04, 0x00,
> +				     0x04, 0x00, 0x00, 0x00, 0x00, 0x00,
> +				     0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
> +				     0x00, 0x05, 0x05, 0x07, 0x00, 0x00,
> +				     0x00, 0x05, 0x40);
> +
> +	/* 6.3.19 Set GIP Option1 (D5h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP1,
> +				     0x18, 0x18, 0x19, 0x19, 0x18, 0x18,
> +				     0x21, 0x20, 0x01, 0x00, 0x07, 0x06,
> +				     0x05, 0x04, 0x03, 0x02, 0x18, 0x18,
> +				     0x18, 0x18, 0x18, 0x18, 0x2f, 0x2f,
> +				     0x30, 0x30, 0x31, 0x31, 0x18, 0x18,
> +				     0x18, 0x18);
> +
> +	/* 6.3.20 Set GIP Option2 (D6h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP2,
> +				     0x18, 0x18, 0x19, 0x19, 0x40, 0x40,
> +				     0x20, 0x21, 0x02, 0x03, 0x04, 0x05,
> +				     0x06, 0x07, 0x00, 0x01, 0x40, 0x40,
> +				     0x40, 0x40, 0x40, 0x40, 0x2f, 0x2f,
> +				     0x30, 0x30, 0x31, 0x31, 0x40, 0x40,
> +				     0x40, 0x40);
> +
> +	/* 6.3.21 Set GIP Option3 (D8h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
> +				     0xa2, 0xaa, 0x02, 0xa0, 0xa2, 0xa8,
> +				     0x02, 0xa0, 0xb0, 0x00, 0x00, 0x00,
> +				     0xb0, 0x00, 0x00, 0x00);
> +
> +	/* 6.3.9 Set register bank (BDh) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
> +				     0x01);
> +
> +	/* 6.3.21 Set GIP Option3 (D8h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
> +				     0xb0, 0x00, 0x00, 0x00, 0xb0, 0x00,
> +				     0x00, 0x00, 0xe2, 0xaa, 0x03, 0xf0,
> +				     0xe2, 0xaa, 0x03, 0xf0);
> +
> +	/* 6.3.9 Set register bank (BDh) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
> +				     0x02);
> +
> +	/* 6.3.21 Set GIP Option3 (D8h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
> +				     0xe2, 0xaa, 0x03, 0xf0, 0xe2, 0xaa,
> +				     0x03, 0xf0);
> +
> +	/* 6.3.9 Set register bank (BDh) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
> +				     0x00);
> +
> +	/* 6.3.4 SETVCOM: Set VCOM voltage (B6h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETVCOM,
> +				     0x7a, 0x7a);
> +
> +	/* 6.3.26 SETGAMMA: Set gamma curve related setting (E0h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGAMMA,
> +				     0x00, 0x18, 0x27, 0x24, 0x5a, 0x68,
> +				     0x79, 0x78, 0x81, 0x8a, 0x92, 0x99,
> +				     0x9e, 0xa7, 0xaf, 0xb4, 0xb9, 0xc3,
> +				     0xc7, 0xd1, 0xc6, 0xd4, 0xd5, 0x6c,
> +				     0x67, 0x71, 0x77, 0x00, 0x00, 0x18,
> +				     0x27, 0x24, 0x5a, 0x68, 0x79, 0x78,
> +				     0x81, 0x8a, 0x92, 0x99, 0x9e, 0xa7,
> +				     0xaf, 0xb4, 0xb9, 0xc3, 0xc7, 0xd1,
> +				     0xc6, 0xd4, 0xd5, 0x6c, 0x67, 0x77);
> +
> +	/* Unknown command, not listed in the HX8399-C datasheet (C6h) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN2,
> +				     0xff, 0xf9);
> +
> +	/* 6.3.16 SETPANEL (CCh) */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETPANEL,
> +				     0x08);
> +}
> +
> +static const struct drm_display_mode hl055fhav028c_mode = {
> +	.hdisplay	= 1080,
> +	.hsync_start	= 1080 + 32,
> +	.hsync_end	= 1080 + 32 + 8,
> +	.htotal		= 1080 + 32 + 8 + 32,
> +	.vdisplay	= 1920,
> +	.vsync_start	= 1920 + 16,
> +	.vsync_end	= 1920 + 16 + 2,
> +	.vtotal		= 1920 + 16 + 2 + 14,
> +	.clock		= 134920,
> +	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	.width_mm	= 70,
> +	.height_mm	= 127,
> +};
> +
> +static const struct hx8394_panel_desc hl055fhav028c_desc = {
> +	.mode = &hl055fhav028c_mode,
> +	.lanes = 4,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.init_sequence = hl055fhav028c_init_sequence,
> +};
> +
>   static int hx8394_enable(struct drm_panel *panel)
>   {
>   	struct hx8394 *ctx = panel_to_hx8394(panel);
> @@ -683,6 +824,7 @@ static void hx8394_remove(struct mipi_dsi_device *dsi)
>   
>   static const struct of_device_id hx8394_of_match[] = {
>   	{ .compatible = "hannstar,hsd060bhw4", .data = &hsd060bhw4_desc },
> +	{ .compatible = "huiling,hl055fhav028c", .data = &hl055fhav028c_desc },
>   	{ .compatible = "powkiddy,x55-panel", .data = &powkiddy_x55_desc },
>   	{ .compatible = "microchip,ac40t08a-mipi-panel", .data = &mchp_ac40t08a_desc },
>   	{ /* sentinel */ }


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
