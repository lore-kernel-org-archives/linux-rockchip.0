Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CAF3EFCE53
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 23:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHh8VsgFSzenxTp1IWmfXnz97CKXorHFZK5OUpT8YNg=; b=HntNSV2sQGOAAS
	T0nYQEg3I8wbCFbsPfucisZolT6k5BYmUjCZjGubZlLI0lia9hl0GEyrLcPwMuAMYzHlJ674EkICb
	LOMZbtEU+9PACt8NEGQ4RQTmP9el/nlak7sa7haA0bvCOM2noihAaQWbJUT5uSQpKQunZFMn5KPQg
	8gJnysicblBTn7zE6YBudSUm+aFIdfZ6R/gmhJg7rRKx8STlBqWPB5AyGNWbFHbUAQjZY/OPS7Xt0
	WbsS/OVCqQovHUT51d6szaErkQwhoSQD1m4LE5h0/NBDRxZAAf8nqKhRp+1bVJD0UALv1hpiNnOZd
	X8NUm8C/NOLe1yMwql1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw5Q-00000000fLL-0god;
	Wed, 04 Mar 2026 23:57:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw5N-00000000fHh-0fIV
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 23:57:02 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624HH6Oq3837880
	for <linux-rockchip@lists.infradead.org>; Wed, 4 Mar 2026 23:56:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=La/zyW1kZlkdjuba28Y6cKUE
	jgLjT1PdHqsncSoONxI=; b=M3gyhoDKsD95tRqPBt6AVRtUJ8xAewA9091Llh/v
	3N7WGAoRQBPzVIJQ+qMMIDlNc/bfennDxIAH2TEssBH789bj2CFI/9WHiWumbLtX
	Ql5cWWDkmHK/HrduZFYdFIBCxQbuZCUwt9VpsjOneOKdaQDvPYtLjUV+u71lyXmG
	dmxjU+qXynuSopTYtoQMCaamDnBl8AhwF8OiwiX39d0m+NMjaFXCFWCfbfdsFV2h
	o+l1R38GMJrzXlm7o2GPUvHPn1156OUgdepeJ2YZzwgJPRbOnHzpNxoiQgsN2xDS
	DJcDnZ8howbsvkbWgknRmV8ZQ+d0VG8z+7CPjjKVm1P8FQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0m12qm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 23:56:59 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-899edf01747so333403586d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 15:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668618; x=1773273418; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=La/zyW1kZlkdjuba28Y6cKUEjgLjT1PdHqsncSoONxI=;
        b=YDyzOGi0ddnzwY4FMICq2iyuqGv2h01cTEblYeeeRMEB7sopP/WdZQxbXmb6D0Kgdd
         s5gHb6NZPWGJmIYeS5XWBi6ORXFyrg1a9sxgUqLC9HH3QyKs9NEirddwCpknLPDccb4N
         xhh4lyr1cib4f2j2z56IoXJEWBcBFR4AV9LMaTBENl4f8y/LkUWHBSnwW80nMt3hQs9f
         Klnap+hztbB4d0rxnGLxvTRiZcSf31odNkB6hKZx9BSiO725dnG2hdFziRFAtlXpWSmf
         Qx3YabHAuozIErvjH7cI559C5TmdW9ZTR+oR0DtG5OwGIWZADZjnWQ+3REgX6xBhHVmF
         HkQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668618; x=1773273418;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=La/zyW1kZlkdjuba28Y6cKUEjgLjT1PdHqsncSoONxI=;
        b=gLUKvqbSLdUKCtAX3l9ypHmbJ7tGFsRgP6xm237jIs9K5Od/oV67jYt3xy7J01Fj7H
         E0ygTCnWEZXwVa5o3bRmreLf/Gz04GPOBDmwG1zU4YS0xUi7vgmrIP/5W6xwlWDVQkc4
         W1qguas5+x/Bl3YPZS9QuvVMwQsTr8NrBUmgfFdzxEdD91d3k4a1BhBhAgUQ4dhfUiEW
         HDZeHjTJ+8tk5nHTaXJ1ptZ8Qk+r9viCM/37RX7o3vY7WRLSV8XbIcpI+gl0/VjX+qbw
         7wfs51T8gpS3bPtngCG1EHdZt0aHZR2kmANPzgvoYbmBXT2xq8xh8V21pCTteZUDw8dS
         We7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWJXHCqkm7/+yC6GViFqjGJ+oJBuFHCBtLh5SFkwukKQGgG4HgNdTmemVzM3B0qwM8hzLMZMOqEkXQlsbgK0w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyPhfQWORHgwmd7W9d/WDU7XHtf9LPI6PnSu5juh/RVFI9uCTzD
	xDnjDWKLKiYxQBDZPvqwdZJNg/yJtuDyheJPiM5Cap53D3wlurBr5cnnKrCFWTLqI4HywznkhtR
	qVeSk4r3hNlBiLT6oDPa2VYcYWdgU608nIYEztl7FmZMZwhgKpv33J8glDqAncl9WTm5SlLUyp3
	A=
X-Gm-Gg: ATEYQzywcyz96a4zUXIAj3DICCL97sAi5gqGRrB4VYQuq8n41NUUQpncxPyr44u40qC
	7Nfax4uLB2Uqz0a11rvnsSBVw3dhcEajOSBeGpFgyInK7XX8xHhvCVc5XNjGw+U7utxjrEtbKVY
	u30C/ljfzrpE9pPtDmurhSU7lZwTklMUFMIdfIh8CsVS24fipCaQ2cH/aJskGrBWJZZCasUYe2p
	JIsmGSWFXIZyH0AAmQOqlKHAfiHiDFUaOH3FFfq7sVz3KSiUxTNl5rSbTenrt5nYl5Ca66CZ6l3
	jPqBO6MjhnMYWC1541Q7wb/4rcFOF/afeLB8Ah+Mi/P6+MytNVpLv1XR0dh2l9JGy5rFoc5SaQ8
	U41m10dtVmstslOl1fcJ/EA9v4n7T5U5s2ifDEbBzEtoagDBliOt995BwSLcRbRHYR8or2HF9YA
	EOEfVpLMKGv8AqFfFyFaXw4RvdefHbv0r7KPI=
X-Received: by 2002:a05:620a:44c2:b0:8c6:770c:40d8 with SMTP id af79cd13be357-8cd5af775e5mr481318585a.40.1772668618474;
        Wed, 04 Mar 2026 15:56:58 -0800 (PST)
X-Received: by 2002:a05:620a:44c2:b0:8c6:770c:40d8 with SMTP id af79cd13be357-8cd5af775e5mr481314985a.40.1772668617932;
        Wed, 04 Mar 2026 15:56:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a123573df2sm1571493e87.65.2026.03.04.15.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:56:56 -0800 (PST)
Date: Thu, 5 Mar 2026 01:56:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
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
Subject: Re: [PATCH phy-next 21/22] phy: remove temporary provider
 compatibility from consumer header
Message-ID: <o3yvtltydr5hvve2htwgqbp4bfopgu74ft4gnyelmges3hmiaa@wy3brdd5dnek>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-22-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304175735.2660419-22-vladimir.oltean@nxp.com>
X-Authority-Analysis: v=2.4 cv=e6wLiKp/ c=1 sm=1 tr=0 ts=69a8c6cb cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=8AirrxEcAAAA:8
 a=EUspDBNiAAAA:8 a=Ji6k5uvf-STsHdHMmocA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: uo5BgqmQ1t_ncsb22wJmGVrLe_LvkcHc
X-Proofpoint-GUID: uo5BgqmQ1t_ncsb22wJmGVrLe_LvkcHc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5OCBTYWx0ZWRfX+dklOfcDkm8L
 WraUqR+4kRfO489qTs4szsDrYKd3QbTCFtG2FQMAbX7v3v6N4af11iILuBdNqQOCKGibNP+nFwd
 CQtbLkX8AEd/3ou+dEGQ8FmeXLFxnPKp3bOYmOadvnSishJZ6vubxG6ac5kjYMo6t+PKwRIh6QF
 K5FKHbKDxncK27FGGgkOKvXLvie8LRM+0mguZqs76vDBu3P/AqhYfXGVvk5/lQQlTjuLuOwbMl6
 VDGcIFF5cPqUwpva1XJTJTPclTL/VL0SXQYdSWxBiUOlGpn5YOOcqamReHrRNWBIIhfebddrrs0
 99o0YFNcSlRBu6Wx/h8w13FksXI2hUaoIy9HS4arfrx4VxRRVlfCYlkk6VzpSBoqJbCn0h5Z101
 6Q85RPvuPb75tJmhwjYKBzr4klksCM9agQUORUeYKEkxENWsYQIfqCsYIAPFtmPd42Ak3nbRjGx
 /PVP7xaQvw+AEoEU08Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_155701_201680_5C140BD2 
X-CRM114-Status: GOOD (  11.78  )
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

On Wed, Mar 04, 2026 at 07:57:34PM +0200, Vladimir Oltean wrote:
> Now that all consumers have been updated to no longer dereference fields
> inside struct phy, we can hide its definition altogether from public view.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  include/linux/phy/phy.h | 2 --
>  1 file changed, 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
