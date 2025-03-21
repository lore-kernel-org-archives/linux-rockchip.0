Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09B21C36000
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Mar 2025 16:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KuViLeB9ajg84Aw/nhuEH7QXb5C+lZyrqt04IWDXOc=; b=xFdIukjmISup3b
	4E4cmW8J8I1jBnXODC+vcCkwltXBI2d1mUHaGFIwu1o3mQ5paNEz9X3CLJceBYIdu3iI0J15+bNLJ
	fdmC9OBbEf0z0ccuFUgVOsFOP4t+0cQKYDeLLK9WSfFoADCOKboJQ6OBFHJQme+XeE2O9z6lN6oB6
	hHvMwYOB9oQH2Lfl00tjVMV/6AqgS5takCNs55AM/ysbLq/X5/CNIcv0A1JUgOe+jiTg+tqrhPi/m
	c3G5TJEeBbQ3jhmVHTtl7MbL2PvITNOk3/igRqQDJqESv5VDgkQO2/RwtWrv45es+pAbjiWWoNEkW
	PdzXe/7xHfh14SKJY78g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvfIq-0000000FWAS-2bPa;
	Fri, 21 Mar 2025 16:33:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvfH8-0000000FVld-2Qkl
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Mar 2025 16:31:16 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATCL4012668
	for <linux-rockchip@lists.infradead.org>; Fri, 21 Mar 2025 16:31:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2IMt4Kk4/Dx/8oRvpv98Pwds64XlQ1coaXykI33I/Bc=; b=o+97gpzr9oNx+1c/
	KXMa5bWbdJwfh9Xb5upxmRQIMe+lpArlut9HyxAj7NHPbnPPWRLf8NC25ZJhIlrj
	QXSOZZ7yXJC9jrbfF0fETqLbp4+Inj3JAQqb5KPklZmSXvo3sRaWD/8yN+CPZ4w4
	D0AYupa6Gwbw+X6uySDgOpV/NxAHy7xD5B3duToLxZ1AOXF2NoKeJKqYsYobUU28
	7offgH1u4v87A3G9l8+673B44Jm4Gmy/6jifTISC3ngtUbb4vW3g/OkZ0WTZwAVE
	p33SVoDPiC4U7jMj07+VsOenHXkYxEbKEB7ocbWOZVtKdRwz9iE8xYYiunrGE3XE
	+arRHA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45g4t46gc6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 21 Mar 2025 16:31:13 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c0b9242877so420352985a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Mar 2025 09:31:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742574672; x=1743179472;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2IMt4Kk4/Dx/8oRvpv98Pwds64XlQ1coaXykI33I/Bc=;
        b=e1OWCuMsVCYrRCz/LHPzfVJ4Biz2NTS1pmP6vylLSQLY49RvrrazZag17OBu+gtuTW
         VHJgbnI5CH5jm68WNf/Rbha4tZgSbEND0Je2GJt8nHitsswRlS/IHSDQa9enh0qM2fus
         RABFllQIooLLvO+uPO8o4iRJno7WUR/bgTtOcjngr8WmBO0R6XoZyFHvrfPOIPVPx4WG
         ESt3d3CEW7qLl441shIW+Gp+DQB0Q1mko95RjtqeOKxDEoJgd1sHQEksPrH/ZQSn8ARC
         QAhg8tCh8ePvv0Yn5ziYWJmiMd/diqFcDRoiAGWUoA5rsbRIOovMhq/KH1o87D1cQUrJ
         eZ3A==
X-Forwarded-Encrypted: i=1; AJvYcCWP+pKbvcUCps0Z0Sr9m28dbI8SU1DWotAbgQAm3fVQBKsqoAXOhtmjcvYqlJvHwL0et9QSr7VWW9lefvqLWA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzL0qwm/aCtSrxUgh4OWzdWaxiSYepC7m9FFzJQryA+LP9zqedf
	4FQREWjdPRl5v8n/srhMchi/0dK92LhPr9ZRyk21DmGtfZs9hLpTKRarT6zVObUcoXDMB8OdOnZ
	GkNirK6vYfW6yzN8UPcmRk5QvTq0FTAfxS251YWc3vEeaYuGzCgEqdN9hUXywUEVY3+SxVt8=
X-Gm-Gg: ASbGncuTDrbtfSvV8jJbA2UKGDwqj662IzT1aTbLFHphx9gjVtcWmuCw1UMbmYAqv81
	oG7JSH53Yzj+5hQljfw+j7FeGb9Amxd1nx2vVJIp48qI6C8+mj+vC30QuLoYi1E/fZiQj6FMJQ+
	4VE0SC45s1aIWi+q1F1zwzdELJjEF2wbUyKkJ8mWVov/4AtvhkvOr381umxtF4J8xepwgKUt8dF
	DDl71QbQIBqRSVhbFUYoNQ0ydAjREw8uwyFByeZUG4nVABzDKnPgD8oMNDThPs/jcNscCvYOgHJ
	ctR1BnbvkFOAHuvkPNsFs2/daqjVSzhpUF0E3UKvvVKjM4BzpkneWZeVejSUR1FLXwSEHQsSpV4
	okOkLNE1xiTtSQp2EFRNMbxMnr98eFnR7ZoS/Bv2We2I9WUTs9AxmlAcXvOIlDiA6jO6v
X-Received: by 2002:a05:620a:4406:b0:7c5:47c6:b888 with SMTP id af79cd13be357-7c5ba1deda8mr478440285a.40.1742574672477;
        Fri, 21 Mar 2025 09:31:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEC11C3ROuEuv4LnPyl+Nggj2bsLHRBsWaManjOdSZzmLn86PXUTHmkaKj69Rn5CvZ35HXpuA==
X-Received: by 2002:a05:620a:4406:b0:7c5:47c6:b888 with SMTP id af79cd13be357-7c5ba1deda8mr478435885a.40.1742574672070;
        Fri, 21 Mar 2025 09:31:12 -0700 (PDT)
Received: from ?IPV6:2001:14bb:c2:310f:a0b3:1d12:b116:f8e6? (2001-14bb-c2-310f-a0b3-1d12-b116-f8e6.rev.dnainternet.fi. [2001:14bb:c2:310f:a0b3:1d12:b116:f8e6])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64fbd15sm215071e87.131.2025.03.21.09.31.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 09:31:11 -0700 (PDT)
Message-ID: <f3be50ff-53cd-4e8c-ade1-af8e4f2e1960@oss.qualcomm.com>
Date: Fri, 21 Mar 2025 18:31:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 13/14] phy: rockchip: samsung-hdptx: Optimize internal
 rate handling
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>,
        Maxime Ripard <mripard@kernel.org>, kernel@collabora.com,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250318-phy-sam-hdptx-bpc-v6-0-8cb1678e7663@collabora.com>
 <20250318-phy-sam-hdptx-bpc-v6-13-8cb1678e7663@collabora.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250318-phy-sam-hdptx-bpc-v6-13-8cb1678e7663@collabora.com>
X-Authority-Analysis: v=2.4 cv=HMPDFptv c=1 sm=1 tr=0 ts=67dd9451 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=3d3HDMnJp-VYffEgFzgA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: s7HrmKf5Bno42qX4dyHtMH1KR0PFg6Pu
X-Proofpoint-ORIG-GUID: s7HrmKf5Bno42qX4dyHtMH1KR0PFg6Pu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 mlxlogscore=966 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503210121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_093114_626116_41CF50B0 
X-CRM114-Status: GOOD (  10.17  )
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

On 18/03/2025 14:35, Cristian Ciocaltea wrote:
> Drop the rate parameter from a bunch of internal helpers and, instead,
> make better use of the newly introduced ->hdmi_cfg.tmds_char_rate driver
> data.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 47 +++++++++++------------
>   1 file changed, 23 insertions(+), 24 deletions(-)

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
