Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C3EDCCF9F6
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 05:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1N39I6R6bujZ7dXJKIszTH51YkV8IP7SUdwTp4Yo+0=; b=YoZkkWlXAUGq1p
	1Ck1iKE98VnhyuSG8o+7iO7UE0GDyafoWdPzlrC2jWwMbk/q2b2D3LzCvl92YBR3zG/xhqNVbcm2a
	3N/FacKIpX0SQqK44g6SeL3Gz8xmGjxIzeYP6kPOAXIJpc9NKgE5g+2VqGF4SVeLM9tCTQepFl9zp
	WBkSCfBpbGeERW0pPtRPG55UIAc3R75hHo8j91xCksRkySBvmJoHub6AlkBCwKk76AiJsbpdPk6Af
	bydKFo1+N38z2pRLykSk6q8ktFP8FNGCOJI6HeHm4Ru0AnSFC0RoguWMJyumuShVYI24NP9JwIbvt
	g2JFuY9DOTLODggahTmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vELLo-00000003W0Y-2ZiO;
	Thu, 30 Oct 2025 05:37:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vELLm-00000003Vzq-133b
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Oct 2025 05:37:31 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TLs0tL568009
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Oct 2025 05:37:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7M5/feYIXAcY/xiSvoX7AATD4bRj++JaUOMJzVqLb/U=; b=b4GMrorz0W4TMU75
	3T9CRxT9sb3JenThV91wxDEZCZTNp6TCFVK5xU7KPfvomzcJtxJeQ2h3PPll0ORt
	syi4uWn8kab/OI00aD1vnhRqjR52fN1zZwXiaYlkzdaYJAR6vebpJGpWh9xIok5G
	Q1SujHUUiGHwsb5UvedzVT9DQT+jvYfYdh66SN1wTDp1ker+MUOqoFbs6womOH7b
	/Ji7rvy7HaWaIb51jCZ5uZDLz0mKr/tX0sJrlwxDmWa/aONxR6qmKGGHMG25V+tf
	SehFzwkPAgCVIZRdQNdITf7ApxpZyxhrP+aM2AUbn6kH2ImQdPRXJiHHoE96JPXu
	dzLKNw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3m0bjm75-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Oct 2025 05:37:28 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2950509239eso916055ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Oct 2025 22:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761802648; x=1762407448; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7M5/feYIXAcY/xiSvoX7AATD4bRj++JaUOMJzVqLb/U=;
        b=ZGtoY5Rk3Ae9IRSRX+n8kHJvOOdNKmpZQl98LzTaUUH/gYv0OgfhjjZF0aoE4KqeVk
         EiXdjgWLVRWmvZru6ihIVD1aZyzfBwmaXrzJdSJ3qPuc4eHWLvGqcdPRdGRO8jCT6pUu
         9O34I1EEvo8r+KGwdcofK8udVs1EGHP4HL9hCqFgpgVhCE4IhBZtnZDh4N3Kyk3Hj0YP
         qO5UpPGEt4GZZGeQqRNHd0Zx/m2uAAQjY9wWVUc46oCK3EZNZo2q4LOhSbIqUsPrMwpf
         YRwGYO4YWLYKHRB6Dw/wYwYYldZHqKSxwhb4ZM9yuf5LLSnqD779WyWlRvoEmwFfWpta
         bRyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761802648; x=1762407448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7M5/feYIXAcY/xiSvoX7AATD4bRj++JaUOMJzVqLb/U=;
        b=amN8VgGcJSuyyqfiNhXu/w4BRE4rQ+OmWQJSdg4maPAs+UrffIOvE89jA2Mq7DcDJ2
         S4bWEvL/RmSs6cd0kUo1TOjvZDmDH9pWbmpG0de+YcexwgeYW2Rb0zrhVwRISZiVFaz9
         yoTk1IK73CRi6EoYaY/28+AhDt5ifLTFj2N/1dXnsZAzRc0cIxLJegF0hTOBqLS4Ubnf
         XOfOdSJrA+x0W2mS0ho2b9b1c5QTxsJFd5iQOIuynZZW1c5lzOWX1+n4vYrgk/6AtzZ4
         6jOtyDywU+hQMTGKH4OYfUQF4F04i3NUnMWtrp/5dt/6qhwRlCwtwHdvxUd6ytfoqrKn
         mwCg==
X-Forwarded-Encrypted: i=1; AJvYcCXyhsKnstcgTnujOrGx3B0kTBTx5/31RlRy4HKb8K8NF+1gGwkIQmnHSfhu4GvR8tbw45iFmc4XeUZGXlbxog==@lists.infradead.org
X-Gm-Message-State: AOJu0YxdieKG5EfrbYHoo1asyrX9s23mN7spgrOd0JFexHjpWTB8kXVf
	NoLy0UEjwlAC9TevTfTlL2CDTMnls4+NGsslIBqBZQaACDBQVEEJ+rvxODc/w7/fWXDu/pazvig
	3ghRz8+MVk/pERpJhsbqmc4Wd68oM1tvB6H5bVTDYHU+d43SJlY1RiExbyRjrmEfeh8yGtLbnuq
	8=
X-Gm-Gg: ASbGnctD/aIpeFvopTVZTfnfyaumDRsrBmEswDXMoQDctHv/VxUYn5dcTqrfAZtCrmY
	WUVDi8vEI0MnWub6muYneFZRioIsbfXycVHWLXxhfmAnXUDGqKbCpzTpHL2oz2OJCNdUJ7FL701
	fzngWhRzCKUQpeyodkrKIk71yZZbOQ7T9M5ScldwooDxxFemF/k4XHf/usUDQE0xe141diwcWBc
	WsVPA5xO6FIU/EWpo6EdcFsYCME0K8f0XkrIRljYj+0SWIfka5HGJrUlWf3CRMOk/cYlm8tqgqi
	IHvK3cortvKipw0Jtyl9U5y/VVv0m+JiP6J6yEytn1WXi9DhIi11GyB03hF7s4Lt5xsa3FKpspg
	NbP+zGdQt3EnZwxgOkD5ojSL3H2iryoY=
X-Received: by 2002:a17:903:22cf:b0:278:704:d6d0 with SMTP id d9443c01a7336-294edbf56admr21509655ad.19.1761802647646;
        Wed, 29 Oct 2025 22:37:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOi3AtcF65oro4e3+BO0KlY5luy6t+0LWSKM1u0T44ogvuEu8VYVcI28WV6vxqGpo9V+1xOg==
X-Received: by 2002:a17:903:22cf:b0:278:704:d6d0 with SMTP id d9443c01a7336-294edbf56admr21509355ad.19.1761802647083;
        Wed, 29 Oct 2025 22:37:27 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d39048sm171628295ad.66.2025.10.29.22.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 22:37:26 -0700 (PDT)
Message-ID: <dc230a62-bd31-450a-9acd-fa654f694b3a@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 11:07:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 9/9] PCI: dwc: support missing PCIe device on resume
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com
References: <20251029-rockchip-pcie-system-suspend-v4-0-ce2e1b0692d2@collabora.com>
 <20251029-rockchip-pcie-system-suspend-v4-9-ce2e1b0692d2@collabora.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20251029-rockchip-pcie-system-suspend-v4-9-ce2e1b0692d2@collabora.com>
X-Proofpoint-ORIG-GUID: ivRYwhV6Wa7bM4o1LJNIQqsoH6t_VlaT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA0NCBTYWx0ZWRfX2kxXuQABTOvI
 hJhWJuswYe72qyV9WEVbZnOosobPUCRXKJfxy6sQpxWxSNjCNyjLgv2XBKZwzZ2vYNJn5Zjpt20
 wPqS/a+53IPdQPIF6qdvj7atxkO8ZGJNQOZCcdiHEmxQVQytCB/1aiJp4JjSkWcozCkG+dhpZXR
 g/qJ3g/GAsO0a1lGlmZXFUz4MLIp1Ctj6h9zTNLSVYxp0q1rm9bwY9FXfP+Tk/QdYLnF4cbgh3O
 WjZiPr03BM2jFbFsLOIvjtTp+TF/2AnIAZBe5oIUEixeIS9F70epu7G9UE+iZR417SVoBOtg7Jx
 RfwMoBKq+O2I9cctQES+3luCFQ5LikZw9IatWYXAc+scYBAu31whQ3v8jHoEZWQigXlg0vc29yI
 KrfEZeAALVmL7FQ3FcX6n6DV3W6m7g==
X-Proofpoint-GUID: ivRYwhV6Wa7bM4o1LJNIQqsoH6t_VlaT
X-Authority-Analysis: v=2.4 cv=YLySCBGx c=1 sm=1 tr=0 ts=6902f999 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=QX4gbG5DAAAA:8 a=G1FknBJvTCrQj4ipN-0A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_223730_399471_AF57992E 
X-CRM114-Status: GOOD (  25.27  )
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


On 10/29/2025 11:26 PM, Sebastian Reichel wrote:
> When dw_pcie_resume_noirq() is called for a PCIe root complex for a PCIe
> slot with no device plugged on Rockchip RK3576, dw_pcie_wait_for_link()
> will return -ETIMEDOUT. During probe time this does not happen, since
> the platform sets 'use_linkup_irq'.
>
> This adds the same logic from dw_pcie_host_init() to the PM resume
> function to avoid the problem.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/pci/controller/dwc/pcie-designware-host.c | 13 ++++++++++---
>   1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index e92513c5bda5..f25f1c136900 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -1215,9 +1215,16 @@ int dw_pcie_resume_noirq(struct dw_pcie *pci)
>   	if (ret)
>   		return ret;
>   
> -	ret = dw_pcie_wait_for_link(pci);
> -	if (ret)
> -		return ret;
> +	/*
> +	 * Note: Skip the link up delay only when a Link Up IRQ is present.
> +	 * If there is no Link Up IRQ, we should not bypass the delay
> +	 * because that would require users to manually rescan for devices.
> +	 */

In the resume scenario, we should explicitly wait for the link to be up, 
there is no IRQ support at this resume phase
and secondly after controller resume pm framework will start resuming 
the bridges & endpoints. what happens
if the link is not up by the time endpoint is resume is called. And 
entire save & restore states might also gets messed up.
There will be no way to recover from this.

- Krishna Chaitanya.

> +	if (!pci->pp.use_linkup_irq) {
> +		ret = dw_pcie_wait_for_link(pci);
> +		if (ret)
> +			return ret;
> +	}
>   
>   	return ret;
>   }
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
