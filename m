Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9537EEF327
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 08:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVqr/beSHT9yuC8Vz77zCbjqQUTScDW+QRITgXaoj/o=; b=dGTVx8jCsamug4
	t5ERWPEHFR/T0aIvOPM/F2OiWe6d9T86xbJV854521zfLlJwIbR+diK4UpsPca0Re+ttOwcn/lM3V
	sO+hf/TTz9Y2hA/t16rXfwUjvK7pHn9qgly486IZVpbxnjz8hfUxGypj+JT3UXJIDqrcmvq0UfO3G
	g9Esibryc/ds+heyPAj/MuhBctZrVWihGSbB32ws3+ZgwpdSpEc8rOMNr7NKnI6A4KPnV4FSEArN6
	dc84V6vAOZOYDd9So0d+IrpRkVizTYcX/juVsABW/nKBKTiRNiMPbokEING8oEtnwpblNir+2HXaR
	DyA8abSENnSEEN4hkYfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4FJ-00000001DcM-2vZ6;
	Thu, 05 Mar 2026 08:39:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4FI-00000001Dbj-0yOK
	for linux-rockchip@bombadil.infradead.org;
	Thu, 05 Mar 2026 08:39:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=kdWMwgc8nLSwvc7+zSIUZsTz2pEGRMvswxdPfflnvOo=; b=RPnzPvEgdIAKXF8oWLh3762hyG
	pH/JErA6rTJvIbNHbj/FbK5D2cBkjFXqFebO/jVQePFw9UmlqWW7uZ9ad3InnaugW8c49SeUGuP9X
	/UJjoUyOm2Jh4a8gXqQvk9AJKMtd0l9KolkzXnqaBFs4uCc6eRNTd9nCP3uo/ODRo97dUQUp+cg6K
	26HNNzy46BpVTOOJNF3TSmem7rtF4+xM36LCu44NzmCRd656vIkhBa+MRs4OA7iTQ5Jl3zb+FhNP0
	s0m2eN8yGJ9KRAWxy2jtB262hH+Yl7stVhMhYRLwIeJAPqndzlW3/q4k+tU9p/97bkLF/TEuJyfXP
	UFbcawYA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4FE-00000006E1g-3nXt
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 08:39:46 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6251Bw8i3160367
	for <linux-rockchip@lists.infradead.org>; Thu, 5 Mar 2026 08:39:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kdWMwgc8nLSwvc7+zSIUZsTz2pEGRMvswxdPfflnvOo=; b=Zhs1szgRs6PvG6yC
	/K6l0Og7co3C6ED8icQT7ngtsI9G5Zp17IaIYa/MOFJSyTxAUHo39qtMLOBGQhpj
	JO9fE/F/E4F4LvhAKnAlFKn+fH9sEpkGqfNT9M43WTCJkjqaFeUzfOGpTrDAGNtC
	tA5poP4iW9oFEFa2er9A5XyBDJ8CedmbmCYM1jjJmOXgrD4UqsM96/EbUTiVA/x+
	+Hq4ib0d4uJFejDRNFTAYPM9OxAzG41cfjw0IJBJVDWkmbFbGS1eLwFkvUDxUI+x
	i9yGzbk3U3z2KxBfUGbK5GoyOmpZPSUHhrYGJ9ek999ywA1Q/YTR3XTo5MWWFrPw
	1lqwYw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpjh5uv3f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 08:39:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb50fb0abdso615773285a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 00:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772699980; x=1773304780; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kdWMwgc8nLSwvc7+zSIUZsTz2pEGRMvswxdPfflnvOo=;
        b=Pug3WPBe+xMjZV2lhuqYSbHXUVCZet86PsQZiTY7sG1NRr1B6N2otEtR5RrPVnxYB0
         r5dTU66aV/1c54vYFHua9XV7RiJiHUBJj3ot4E9rS1GBoiJwCU/lhLFM9e3UPv0hzfCm
         E5Q9f7HIwiwFDFYbQ0oRSaSvqA86AwJ5/yIQpIfo0FxHRqValVdImCI6GaRWz53JMkZ+
         sf24Tn3Lq68hl/PAzBzL4C7d55TcpDC7gQtN7nBzvNL9T9q8GZ6j8xr0Is9GFTh1bmry
         7KDBj4DM+ubZ+pqTuohV5/jRHTQc1sgXa0zlAmG/s09CrSJJnAlGl96ry8HbZekBexJH
         Rp6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772699980; x=1773304780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kdWMwgc8nLSwvc7+zSIUZsTz2pEGRMvswxdPfflnvOo=;
        b=bljNfJqT7WpphhK24fJJ3BUkdltg+sM+bDWaR69qL9cz/CDkTAFMkfZQVDRlB3Bmuc
         Nkj/7iM9Rz9cjNqcmRluRxBXRoKFaxjPAtLBHlctXqMqgOleKfsMJ2XWg/cPQfWdxB8Q
         RuhBLYhEV9ALRXI4nWujEvJkV38v+W874QyYvUQODancXmNtukPCXnc49YMa8PnSDHBb
         BNoCe13v7as5L5xmCQh9dC6fk9Q0+63aOxwMBtyoJdGcjBwnPDHeKTZt+ved1BrPplMe
         019ZF7cVqjDk0LeJPfyRg7yNy8mck9zjE/IPUPHdaRFXbUhcI/h1Rei7KtEQ/zuC7uL6
         6RBA==
X-Forwarded-Encrypted: i=1; AJvYcCVRL7wrmn2inHjd6VggrCQ0nXDDLpTBBI4fMMbgtq8Rzk/VSGOBnXrUTbKkAh/krEMxYU4WpAROBcAQvcoiFQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJpJtGkeTggEfkwXA5TA8uX5KooPpWGPMDCZpsVXo6C6neIgLU
	T0YvdzjYTgM06cmw503QYtcg1La7vv0UkMjsDAP73IQ7lgGdkcPZB+VBKDSsnk57rgh+nPrV4oD
	vkQYvUad7ZFDU3J6u/nimLL4+QVYzHz0EWLEBhH8A5naiE3V1xFyvs41pYLoWpgIyWqf2X76uHt
	s=
X-Gm-Gg: ATEYQzwG99z3LDknAjQCd0d9py5r6hG90Lh3uityJMaSEEJFY4jLy03Af10AxJxUk4Z
	v0Qb3LU4oObZ2YqXPZs2KAT1k4xZlBVmI4XmvA9ksf82R2bv78E3xEmHpAQ8vjcfZyqdlca2l1f
	RI0BTpH1THrdMTQ95mDSLaVNCP16xqn+hGvDQ58WLXD5IxeYhyrV3RKNfp+l7NsaIXL12lXw5kP
	WBQfdT5jgNxn+192Z0zIQASqGKlcGsI2caPVAnJ2F/FOUA3L69n6AJ5Ke/VaNVIAfq23I8W63+G
	qflDJxUwi6ncJpnwYn+GSHJmnqDGdjt204mB/hkaHrzaEkuddmm59Rhq6+AXOqeeMyJsJeDMk1V
	2UFVAJrO9ClXEM/xzUDX3Rq355NNA2CGdctxEQa5ZJqO04OqXu7dR8s1uSi057BHEVHzGcSPipd
	IU+bU=
X-Received: by 2002:a05:620a:404c:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cd5afcdcfbmr452360485a.9.1772699980159;
        Thu, 05 Mar 2026 00:39:40 -0800 (PST)
X-Received: by 2002:a05:620a:404c:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cd5afcdcfbmr452356985a.9.1772699979710;
        Thu, 05 Mar 2026 00:39:39 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fac06e3fasm6657504a12.25.2026.03.05.00.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 00:39:38 -0800 (PST)
Message-ID: <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 09:39:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
To: Vladimir Oltean <vladimir.oltean@nxp.com>, linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        linux-usb@vger.kernel.org, netdev@vger.kernel.org,
        spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260304175735.2660419-23-vladimir.oltean@nxp.com>
X-Proofpoint-GUID: SKRWKplyPJ3WhsqhjVPqwraiSfVC61Af
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA2OCBTYWx0ZWRfX6S/npO3C5MLZ
 BPoSUwnenhM6pTCn3MkY9TctWr4jEQaT3F2TvOKtjkR63hKuUf0lGNjFVTK5RU6kZHq0WjTtxm/
 LI6oQ7DAzbIfYd1RT0EaJrjalfFJj1Gz52C/9cnbQ4+9bK7/bP5AeNfoK6D8W7o9xwUkYgr7jy5
 aMiYiRGK48PaqzAWSHSgTx3maivU7mccgooyrLtXWMe+Otr+oDctMDjmrKtmBvpZNWgIW0I6RzV
 Y5A+/0Gsvp/LiRbTUupP6ODs458ak8f8NsxFG1LG8W9W2oXhJVcqOtgReEZDnc48qR+mLgFtZzg
 gDEc6N6hrfJXuYT6vSQTHLrG1p/aohc1h1R4iCS/43J8ySKWJ23t1hH/qJc+4wX1zAS6nqsxxFB
 rA2Yir1DJXolE4Qg2HJuFvwNa9p3RxMnINoNWxIpeFZHS46ylhS688rj5Uoip2CbTEAnHtoKtiU
 t8QIXnhtmFtE7zPCq5A==
X-Authority-Analysis: v=2.4 cv=JK82csKb c=1 sm=1 tr=0 ts=69a9414c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=8AirrxEcAAAA:8 a=GJStlgXwfe-SXQdWLvAA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: SKRWKplyPJ3WhsqhjVPqwraiSfVC61Af
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_083945_191671_E3D87C53 
X-CRM114-Status: GOOD (  19.34  )
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

On 3/4/26 6:57 PM, Vladimir Oltean wrote:
> Some pragmatic shortcuts are being taken by PHY consumer driver authors,
> which put a burden on the framework. A lot of these can be caught during
> review.
> 
> Make sure the linux-phy list is copied on as many keywords that a regex
> can reasonably catch.
> 
> For simplicity sake this is not perfect (devm_ and of_ are not valid
> prefixes for all function names), but I tried to pay attention on
> avoiding false matches on things like:
> - drivers/net/vendor/device/phy.h
> - include/linux/phy.h - network PHY, not generic PHY
> 
> So I used \b to try to match on actual word boundaries and be explicit
> about what is matched on.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 55af015174a5..bdfa47d9c774 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10713,6 +10713,7 @@ F:	Documentation/devicetree/bindings/phy/
>  F:	drivers/phy/
>  F:	include/dt-bindings/phy/
>  F:	include/linux/phy/
> +K:	\b(devm_)?(of_)?phy_(create|destroy|init|exit|reset|power_(on|off)|configure|validate|calibrate|(get|set)_(mode|media|speed|bus_width|drvdata)|get_max_link_rate|pm_runtime_(get|put)|notify_(connect|disconnect|state)|get|put|optional_get|provider_(un)?register|simple_xlate|(create|remove)_lookup)\b|(struct\s+)?phy(_ops|_attrs|_lookup|_provider)?\b|linux/phy/phy\.h|phy-props\.h|phy-provider\.h

Would looking for the devm/of_phy_ prefix followed by an open parentheses
not suffice for the 'has function call' case, instead of listing all
currently present exported functions?

My worry is that this approach is overbuilt and absolutely no one will
remember to update it

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
