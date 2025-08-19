Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A56A9CA0EF5
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 00:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6XezB4UXtIrAevdnQrsCVexI9kZ7XHBApIkKObZ92Y=; b=aT6UcGgRciDsOE
	/WmBzLbJ0nyT59+bmo16rL+JDDiZw4yVI7Cbi7Z2DUmwPFbXeBZQMdNqvsSjKefBQIEFY8zMzbfc5
	ptSW7kJ9VZHXSe5FpTmagKIy6zVbAf/HBaY6KA87cxZ72sP9NM5dOIT0iwrumuP/zsCxHiKdywNOq
	rTurCfzryaWoko5Ljnhjn6TvEb0ZHDqJLdWfzcYXxdwPyUnpEaN0yZdNBUvxpHWHEdvW5yHKh7nb+
	92zRYmLnU7Co+l2AltyPK55LpkBD10tX4AE5jH+NNVPbWgPJWEaljdA7GXh/BowaIdUlVX13O+y6z
	xuu7WEm0OHkuXfDzmsKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoAQX-000000091Qi-1Y24;
	Tue, 19 Aug 2025 00:42:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoAQU-000000091PU-3dRi
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Aug 2025 00:42:12 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57IJvcI3027314
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 00:42:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OBbn273P8/f9yxcLk4nZc3A83z2zO0Iuz9NA/0alo3o=; b=CVSLpQFIqL2ri/kW
	j3XH9eOVJXfBRJyXZv5o3bkzw/gumYdiq6/AyhS37XxIdOPTUWYjlfjVV7Cb8Rhe
	xQbrHHpqWGwzowE6684jOZ1WAwq26Prr/ojNpbaOMYIE9/Z9DlKBL94w7zBboOmY
	qG85j3YubU5x9rZOzd7z9MSo+yBwYEwOLqa8CwsxmNBbXKfhDLASmNbtE53jTnJX
	DEY8AAOXfEuLGvk5+Uz9NHkMogsDaohynyfcuBNGf15hnC7Rmemke+AxPfSlVXPA
	DfYhMyVkYrquUw2nhEE75BbwVF3T1Akgb5wK1UxUYCX4If+csARnnNJmcfkOqkKZ
	FV00Cw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhjyen4b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 00:42:09 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a88de16c0so111132426d6.0
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Aug 2025 17:42:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755564128; x=1756168928;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OBbn273P8/f9yxcLk4nZc3A83z2zO0Iuz9NA/0alo3o=;
        b=GmjO+l+bGQ4ppZosmybTQX/n7ySEGpSQRQStQHRlVfn7xCatmH/x/WllzHda59hlPM
         2XgldYpFZfDCMEHZXQs1Cxhjeq5Q8Eb1VFkmMl04IRO6JgTZui1dcp4CXJ6e0Nj09YYn
         KsQAyTpErCLAt+HXlTa9Hj9r07Xe0kC6lrUjpDKtZy9inPAuY0CIXtpUCMiYrfg2zVpF
         EDd+grs4laz/OZCgIrAGNYvrEibp5PouiG1MdHmXrLLSUfSaO3MyJP3By5Js1HfnSNb5
         YJaiq5Eb95ubNNMolNLL9wGtr8y9ZrLukbyyV2WnyCBR2/f+3Bk4WKAk6vQFOg6TmaDd
         KKMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXxt8USi609BQ/94zJYmShorS958jgLr024GdXW1fNd/yrTGtV3OUBlgxTg4ZATbleGfTBMwvMojxRfr8lEA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzraVmnhrlUDek8OX2lX3uE642YBLY40u7hr9XffYtfAvyo2lGO
	wN6k+Slz9vu4LfcNUHxeCML4Znro+2+zAdvUZGrRUpPAN8acl6nPSpVk7jj5Ct4pHxmTQLWJHrd
	/iSUt7ueLhT/SW9G+lpXHbsuqk5/UxwklAloDKz2OubXr7l2qJGhjrPjIIZIbGBwB61GHsw9vG/
	U=
X-Gm-Gg: ASbGncsJ/m+1ziHl8elG8BAMlRcTMXAGX21Apy7wxCEaxXshBZKvb3zKzIoui8jH9PA
	iG18HVNFzxUZAdxRe+kLSuukSTnu03WQ7d8DivEzEnkh5fp0VRjugCg+Sm1HycC7UQF1gD/qa1h
	bPM/2tM6cBpKkMge2/nojPYN7Ljm1JKKUtDr9/AohR3Rpj6Pr8coZWrg5yjYT/awufsiy1+UZ2o
	HAYQre9msNe7pyWen4VdS3eUJdn09dpp4jPfDuvUw92xvn2OeiTQDzFHi1TJrCW6/xZpNw188Zy
	DpK8BCJj/U4zlWv2t1Efnnk5lAfhIGN4SS1361X1/E3WfLqerOql8jhR91Bs4pcNKby0oU+X0qp
	cmz6UNqVchWgzg+lb3GWr+q/PcyDdzbd6onZCwYRs
X-Received: by 2002:a05:6214:e8b:b0:704:a0cd:f597 with SMTP id 6a1803df08f44-70c35b8b5a0mr9282146d6.21.1755564128319;
        Mon, 18 Aug 2025 17:42:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYUQOO9C5theUsgHuQ7WuHIc+c5d31s4BRQUPisTdCBR05/M1rf3y3WoAQasBUktoz06m8MA==
X-Received: by 2002:a05:6214:e8b:b0:704:a0cd:f597 with SMTP id 6a1803df08f44-70c35b8b5a0mr9281776d6.21.1755564127778;
        Mon, 18 Aug 2025 17:42:07 -0700 (PDT)
Received: from [192.168.10.39] (91-154-146-251.elisa-laajakaista.fi. [91.154.146.251])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef351545sm1861560e87.21.2025.08.18.17.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 17:42:05 -0700 (PDT)
Message-ID: <3f857197-1cd1-4c18-88e9-e8c00d95af82@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 03:42:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] phy: hdmi: Add HDMI 2.1 FRL configuration
 options
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20250818-phy-hdptx-frl-v3-0-c79997d8bb2b@collabora.com>
 <20250818-phy-hdptx-frl-v3-1-c79997d8bb2b@collabora.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250818-phy-hdptx-frl-v3-1-c79997d8bb2b@collabora.com>
X-Proofpoint-ORIG-GUID: 3TAY1EH9QSnCfghKogH-DAq03btRGDic
X-Authority-Analysis: v=2.4 cv=ZJHXmW7b c=1 sm=1 tr=0 ts=68a3c861 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=CKk/IlMN6Gw3Dq31eR3Dfg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=QX4gbG5DAAAA:8 a=bbK825GtWpsu-Oi3XvwA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: 3TAY1EH9QSnCfghKogH-DAq03btRGDic
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyOCBTYWx0ZWRfX2zyUOh9InzVH
 yxa4I7y+QYf1/720JG1lv1NEFznNnMBqTGiBF9sY2eUfz+1guxwqWRRI+nceME3pMTCs5441sfb
 w4w4XMyONyLMvpcaUR6Rxg0AIZbS2H/cwTRVacuUa07rx8OM5LsFeR6f51zX9KsSYXBkDUSsD28
 QKPG/1b+TQqGZJNNOwdB1g17GMBH2GF4S/cz8MNsr8GeFHDfa27pIT4Dswrv4INyc20QdytI6QS
 zTahaDYXvs3cxTCBrSjbC41ETiX3+pcCiRsdZXKub7MWjYAIfgw5Tstn7t9kK+B+5cfTmzOuLae
 HOGiEnwyvmpQp2bgfZpYjnoYFVyXJ2mOzjKuHkX6AC+No3M2AJect8DrDXAArZVYdKv45DpSwCX
 6xmwyhyh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-18_06,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015
 bulkscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_174211_020680_AD53C41C 
X-CRM114-Status: GOOD (  26.44  )
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



On 18/08/2025 21:59, Cristian Ciocaltea wrote:
> The HDMI 2.1 specification introduced the Fixed Rate Link (FRL) mode,
> aiming to replace the older Transition-Minimized Differential Signaling
> (TMDS) mode used in previous HDMI versions to support much higher
> bandwidths (up to 48 Gbps) for modern video and audio formats.
> 
> FRL has been designed to support ultra high resolution formats at high
> refresh rates like 8K@60Hz or 4K@120Hz, and eliminates the need for
> dynamic bandwidth adjustments, which reduces latency.  It operates with
> 3 or 4 lanes at different link rates: 3Gbps, 6Gbps, 8Gbps, 10Gbps or
> 12Gbps.
> 
> Add support for configuring the FRL mode for HDMI PHYs.

Could you please point out corresponding DRM patches? They might be WIP 
or incomplete. I'd like to see how this works on the consumer side.

> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   include/linux/phy/phy-hdmi.h | 19 +++++++++++++++++--
>   1 file changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
> index f0ec963c6e84f1b7728acafc824dff191c6b873d..83330d359e3ae345554f20429519da14506b8ab5 100644
> --- a/include/linux/phy/phy-hdmi.h
> +++ b/include/linux/phy/phy-hdmi.h
> @@ -6,16 +6,31 @@
>   #ifndef __PHY_HDMI_H_
>   #define __PHY_HDMI_H_
>   
> +#include <linux/types.h>
> +
> +enum phy_mode_hdmi {
> +	PHY_MODE_HDMI_TMDS,
> +	PHY_MODE_HDMI_FRL,

There is no unified approach for PHY submode names. Nevertheless I'd 
suggest something like PHY_HDMI_MODE_TMDS / _FRL. It follows more 
closely the networking / USB submodes. An alternative might be to use 
PHY_SUBMODE_HDMI_TMDS / _FRL.

But it's really a nit and/or bikeschedding.

> +};
> +
>   /**
>    * struct phy_configure_opts_hdmi - HDMI configuration set
> - * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
>    * @bpc: Bits per color channel.
> + * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
> + * @frl.rate_per_lane: HDMI FRL Rate per Lane in Gbps.

This works nicely until HDMI Forum adds an rate not being even Gbps. Is 
there a reason for not using ULL and bps following the tmds_char_rate 
design?

> + * @frl.lanes: HDMI FRL lanes count.
>    *
>    * This structure is used to represent the configuration state of a HDMI phy.
>    */
>   struct phy_configure_opts_hdmi {
> -	unsigned long long tmds_char_rate;
>   	unsigned int bpc;
> +	union {
> +		unsigned long long tmds_char_rate;
> +		struct {
> +			u8 rate_per_lane;
> +			u8 lanes;
> +		} frl;
> +	};
>   };
>   
>   #endif /* __PHY_HDMI_H_ */
> 

-- 
With best wishes
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
