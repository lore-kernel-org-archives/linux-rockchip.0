Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E85CC83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xE46jWFv+L2rdWLZaaSmK7IYckk79tVYeqR2SiM2UrY=; b=TfVZXVGxhlSrAb
	y3pbd/y5iNdTxG/NtcSTopJ4hrSNmnvPwcelt3VZDwrNkepcnhRqF7Pw1Xc2eh6bnTvRtt53OaCFe
	KPWVo6JbkWocijVcKQWbtUC77UxKQN8u6B/k/YRd/amxnp6S0j9YS+30p+dQMkr+PSd4QiH362rdJ
	7ePWb6Kh3H+qfMyXoPS6yiQFpaYrKOx0014Z2J6EgNDdZ6p+CeXHZ2rLf3l0NqSrxLA2lzXgnkuXZ
	3GilQQJsQr1no6mwrTTMfYsJWBM4sGxgqFf86beoiEXYxfjy3MuFPuYlhPoSVDmN/DbzTISUiOMeQ
	i+cfvAEF5D530Tw9P6+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uccEn-0000000BdGK-22K8;
	Fri, 18 Jul 2025 03:58:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uccEl-0000000BdFc-0IDA
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Jul 2025 03:58:20 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HL9lCX032515
	for <linux-rockchip@lists.infradead.org>; Fri, 18 Jul 2025 03:58:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NcFADHJWzB581dh8lwli3gFNI4IvnV9oOCXkZgldaGM=; b=dzb3E4JEm2fSjErJ
	SDM/OAoLmVVepywEJLhoRxEWaQh8/wshfZmR6DBfTiD4rv9PX6yWmMTZ1pu4mxA2
	6h9GFaM4lszHT/Ynd7EeZxM3fv3FHW6thYKbpcD+lboRWolfGZvmQxwdi8TJqYdH
	pGPjKQ5wJWDOkEKFloViBha4ndDGidP/VqryASpHnPPtWRBGrqKOhqWl49NJ/Ryx
	1n9+3i/GhD8S88H1K4gfIDc9lXzuB28wtN27uJKaku23MWCcOSM4/Mw1/meg5XLj
	PDAQNcjLay1jjYViys+C2NQIuylm+CYrDJvEqj924rdXVCHqwHArQpmeVW9rymV6
	qyeGPA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug38a7jb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 18 Jul 2025 03:58:16 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23536f7c2d7so28443205ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Jul 2025 20:58:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752811094; x=1753415894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NcFADHJWzB581dh8lwli3gFNI4IvnV9oOCXkZgldaGM=;
        b=jhXkiKFm8NywEGxNXrMmrt/lS9fya5TK9YOWzEsULLivnXvWYukxh0JIITtH3OE+O6
         vw3+8NZdGq8k+vkpHIiBl1FnVPwukH8vUZXWjYc2St4+q03ZvtMQ7N7LluN7wGkNKflB
         BiAXZ+d0DlpTCflv68QLhNv2fR9L3sJLt+MMGzFl5thEOVnFLCCXJkSdVXf60Osjr0zx
         F2ecYrkfrLa+AONLS+95Ps7WKNf4nL9o/1eJDbvMsyNSPlLt84oNM67YaIWoMEgibMes
         a+NBUiOrOrQHLSSIxXj+vZQ3QMItLqBqZjircoH57RL6ayXMvlx7v/J6jkPee80UsPWJ
         UdeQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0BTCdI99IPOaKp4zkbZ0lwXL0v4lVAwzEGvfzY5+TCH1PohpVru5zySQgEemdBmJPKRqPv/hrsvJiOTL99Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwaadMrfINHcyaoAFnoGv3+NRIM9Lik5EtNwA22YmNEw2mb1i+3
	RgDnIkCPk2rzlVjtjQCaVaEHyiOieRlFxxpn8hihPJBpy2q69Sz3MogBMGrjOPjghgVB39pGSqi
	wKNs3c7XrhYVAIoXrvIYFLPxOM3ND4iHMyICxhIlaI1CN/FDSpoicdE0nH6DQ4GFeqglymwOB6c
	I=
X-Gm-Gg: ASbGncufp/SyYZ1JTNZPZnHnLwR90rqSc4DDSCzM9p5IhlKUT5Xcf4prdrTvG/jjmgu
	hh4pWGWtmLqTEWs79am6QU2OMTzpoN+RFiM2V9s1bLYbTKBL/a8KAPj9Xm68JeCRNaiI0IXYLPT
	RhgoLAtcBYAiZM8VBMvU/4a3mLeTWvlfKHjIg2BC8Ngipi4g4vNNXLE5RdcyDzHOT+xwhMWkdIO
	2Y/b9UEWte9szab4CWwBxReVD0hg5RrsVGljaL0Qc4DCpO/QhmVGo925JY0rLKixxm7WfiuWwcL
	PDF8CDWxEKIcvFfmD44Jny1G6d3kDbrf1StExyzFGI38cJ6ivFYLDM0sCs5WuwgXbiPhtQ==
X-Received: by 2002:a17:902:f68a:b0:234:ba75:836 with SMTP id d9443c01a7336-23e25693676mr111436215ad.7.1752811094398;
        Thu, 17 Jul 2025 20:58:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpJu0g9KYlPsWpo+xmLRTgKz+e8QQUO94ua3L9oR8C4BqJw408SODGzFFKZ0NCX4WD20R5fw==
X-Received: by 2002:a17:902:f68a:b0:234:ba75:836 with SMTP id d9443c01a7336-23e25693676mr111435915ad.7.1752811093906;
        Thu, 17 Jul 2025 20:58:13 -0700 (PDT)
Received: from [192.168.29.92] ([49.43.226.29])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6ef9aesm4165815ad.211.2025.07.17.20.58.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 20:58:13 -0700 (PDT)
Message-ID: <b6883420-96aa-432b-9d33-5e7c0e4fb8a7@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 09:28:06 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/4] PCI: Add support for resetting the Root Ports in a
 platform specific way
To: manivannan.sadhasivam@oss.qualcomm.com,
        Bjorn Helgaas <bhelgaas@google.com>,
        Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
        Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Niklas Cassel <cassel@kernel.org>,
        Wilfred Mallawa
 <wilfred.mallawa@wdc.com>,
        Lukas Wunner <lukas@wunner.de>
References: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDAyOCBTYWx0ZWRfX1UfxSBZ2Dyho
 BghOOQJQeNKaIQ8dz2JhkD3l35p9r/LidwlhZ974n1DTk7vAun0hQ4GsxloWKt2p/vtld126EYL
 jg3u47uIcz/Rs+LIlMhB6+picQ0tGOezDDXm1LTuU9rzPwHfiuMNkZa9VI7wQAI9FWI5tz5AECp
 D0h+HlR9D5lc1W0qzezwfOExiP0f60gtm4BzhAxrZW28g6kZ6t0XussoWFMpivPxP6vjHFW1HKm
 V9MKPShs+a/bxeeCJZ3ZIlCpwrsKzV3oLfLEzFX05x/+rq0RXpAgsx/UZeivG9HKmJZ+t6Mc6cj
 dsa5Mn13+lvouGqkGwTg/QDmZejZ8I6HTHmv0dWnCXQ3uOnkfuGPnrlw5k48Cgz/AGEleNcEICx
 Y9XsGLT+poYUfgUgBkGzcA1kEO9Z49BUj/9I3vTOtff/W7eTfUC0xSrnfSJCm5Xr2RQIiawV
X-Proofpoint-GUID: eRbQKCMGaX01gbGMMXNcE8dKHL_vwEUj
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=6879c658 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=lM2dtDSGyl0QT0dfkTfTzg==:17
 a=lJ8DZ0MjVbnDIa4D:21 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=ImqNvw3yTObJCdT6Mg8A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: eRbQKCMGaX01gbGMMXNcE8dKHL_vwEUj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxlogscore=999 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_205819_224897_674FB171 
X-CRM114-Status: GOOD (  33.15  )
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



On 7/15/2025 7:51 PM, Manivannan Sadhasivam via B4 Relay wrote:
> Hi,
> 
> Currently, in the event of AER/DPC, PCI core will try to reset the slot (Root
> Port) and its subordinate devices by invoking bridge control reset and FLR. But
> in some cases like AER Fatal error, it might be necessary to reset the Root
> Ports using the PCI host bridge drivers in a platform specific way (as indicated
> by the TODO in the pcie_do_recovery() function in drivers/pci/pcie/err.c).
> Otherwise, the PCI link won't be recovered successfully.
> 
> So this series adds a new callback 'pci_host_bridge::reset_root_port' for the
> host bridge drivers to reset the Root Port when a fatal error happens.
> 
> Also, this series allows the host bridge drivers to handle PCI link down event
> by resetting the Root Ports and recovering the bus. This is accomplished by the
> help of the new 'pci_host_handle_link_down()' API. Host bridge drivers are
> expected to call this API (preferrably from a threaded IRQ handler) with
> relevant Root Port 'pci_dev' when a link down event is detected for the port.
> The API will reuse the pcie_do_recovery() function to recover the link if AER
> support is enabled, otherwise it will directly call the reset_root_port()
> callback of the host bridge driver (if exists).
> 
> For reference, I've modified the pcie-qcom driver to call
> pci_host_handle_link_down() API with Root Port 'pci_dev' after receiving the
> LINK_DOWN global_irq event and populated 'pci_host_bridge::reset_root_port()'
> callback to reset the Root Port. Since the Qcom PCIe controllers support only
> a single Root Port (slot) per controller instance, the API is going to be
> invoked only once. For multi Root Port controllers, the controller driver is
> expected to detect the Root Port that received the link down event and call
> the pci_host_handle_link_down() API with 'pci_dev' of that Root Port.
> 
> Testing
> -------
> 
> I've lost access to my test setup now. So Krishna (Cced) will help with testing
> on the Qcom platform and Wilfred or Niklas should be able to test it on Rockchip
> platform. For the moment, this series is compile tested only.
Tested on QCOM platform rb3gen2.
> 
> Changes in v6:
> - Incorporated the patch: https://lore.kernel.org/all/20250524185304.26698-2-manivannan.sadhasivam@linaro.org/
> - Link to v5: https://lore.kernel.org/r/20250715-pci-port-reset-v5-0-26a5d278db40@oss.qualcomm.com
> 
> Changes in v5:
> * Reworked the pci_host_handle_link_down() to accept Root Port instead of
>    resetting all Root Ports in the event of link down.
> * Renamed 'reset_slot' to 'reset_root_port' to avoid confusion as both terms
>    were used interchangibly and the series is intended to reset Root Port only.
> * Added the Rockchip driver change to this series.
> * Dropped the applied patches and review/tested tags due to rework.
> * Rebased on top of v6.16-rc1.
> 
> Changes in v4:
> - Handled link down first in the irq handler
> - Updated ICC & OPP bandwidth after link up in reset_slot() callback
> - Link to v3: https://lore.kernel.org/r/20250417-pcie-reset-slot-v3-0-59a10811c962@linaro.org
> 
> Changes in v3:
> - Made the pci-host-common driver as a common library for host controller
>    drivers
> - Moved the reset slot code to pci-host-common library
> - Link to v2: https://lore.kernel.org/r/20250416-pcie-reset-slot-v2-0-efe76b278c10@linaro.org
> 
> Changes in v2:
> - Moved calling reset_slot() callback from pcie_do_recovery() to pcibios_reset_secondary_bus()
> - Link to v1: https://lore.kernel.org/r/20250404-pcie-reset-slot-v1-0-98952918bf90@linaro.org
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Tested-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

- Krishna Chaitanya.
> ---
> Manivannan Sadhasivam (3):
>        PCI/ERR: Add support for resetting the Root Ports in a platform specific way
>        PCI: host-common: Add link down handling for Root Ports
>        PCI: qcom: Add support for resetting the Root Port due to link down event
> 
> Wilfred Mallawa (1):
>        PCI: dw-rockchip: Add support to reset Root Port upon link down event
> 
>   drivers/pci/controller/dwc/Kconfig            |   2 +
>   drivers/pci/controller/dwc/pcie-dw-rockchip.c |  91 ++++++++++++++++++-
>   drivers/pci/controller/dwc/pcie-qcom.c        | 120 ++++++++++++++++++++++++--
>   drivers/pci/controller/pci-host-common.c      |  33 +++++++
>   drivers/pci/controller/pci-host-common.h      |   1 +
>   drivers/pci/pci.c                             |  21 +++++
>   drivers/pci/pcie/err.c                        |   6 +-
>   include/linux/pci.h                           |   1 +
>   8 files changed, 260 insertions(+), 15 deletions(-)
> ---
> base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
> change-id: 20250715-pci-port-reset-4d9519570123
> 
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
