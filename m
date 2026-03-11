Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F7DFD065A
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 08:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYPxDwP98B4uqwa3445OevExdsB2WdkvAIaK5lEZ1/s=; b=AsyJmShFq7pv6Q
	SUswj/noja1LE9nu0jW9Tak9eUyZEVqg7izM6WHB1LYkHJsG/tx8wwrDTecwgmzXkZVNa2nA8yw0G
	QSBbRvCvMAFhC75tLoPXkWHcxNG6c49Gm56gdxQUIrh8SymrTDE7Q41Gt1Gc627+VccIozrxYoMYA
	snmbWchOU37O8DJvSQaHBebiaVxhsksJpMc3uR0rE+q/tJ+yWqOLG/rS+JP3qGVaUxZFDcfRkhXyB
	hp/L7hDJoSn3l1U0cDmobDquqLJusqKILT+qt/nPTO4kLURwJgXseUt6WmiY3hjerp8GGmqMy+5VC
	TXUptRQ6BA/4mzIEluWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0F4R-0000000BBb9-1BBM;
	Wed, 11 Mar 2026 08:37:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0F4O-0000000BBa9-1ZOn
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 08:37:33 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B830Zl1266072
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 08:37:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v6shnDKy0mTtNDl8IP4ADRHwgFmAxB+//orXLuR5fLg=; b=hhs5fZMyvtxS8Nuu
	ytOLTRbVQ6fk7Nn3abZLkq4nk10BNPQgEP4xkSb75GAgLxtR8jfPQVALSNIK7cQt
	rEnKprQJPKQQe1prkq0IYawtPRkKqGL5DB9X1vgxK+SrSJXxiM+5raitEo0U0ZyF
	FJAjzHYw04iSe5osB9V/zMgrMm+hsPFXESQdDQi96rffkrjJNsmgL5axWCcr6Yxw
	Vk/i3gIeCLyIRyRiSzbBoTD1flcFtkou7t41nocrIfOv3n0aiXLrvweArTeVorNZ
	nxMd2wy/5pcqZREwyaV1LBEyNeUoLSvKiQtOPXTiBUtacHJtPkm1iEgB+nCoybAy
	AC9j6w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctpkfk296-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 08:37:30 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-829b20cc6faso678450b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 01:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773218249; x=1773823049; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v6shnDKy0mTtNDl8IP4ADRHwgFmAxB+//orXLuR5fLg=;
        b=P1K+ae5FLsegPkiXhkUMjhFkcBDoEJxhP56DLG2yCG3VD7n30nefCi6roZIBBf990+
         GJLKhynyyVnc5cRU00ZnIfDpt5lupsJ6RF7KCtNLWcaFF2NgTZzRd/VfgsBE3sLoCk6D
         kuO6DW0f1ECBTRqNFL4uQcg4z4FkiB8MitzS/Jezwjk+JWIhLgDOKZfz87O4firgV1HW
         5iIv1yKHKhm0Ayh/xq6dsHSi5USUw+GHIBJ3LGELmf84mcgRg9JhCYZXreO0nuP2E3rS
         UIiB9G82MMd5n1FuoloZRrWetVKXje2G29R27D/br7kARf/Bo3hgWxowkvXPxoEmqS52
         shNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773218249; x=1773823049;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v6shnDKy0mTtNDl8IP4ADRHwgFmAxB+//orXLuR5fLg=;
        b=rHfa2rAHD2nCzf8RSY1zOVAueHHfdxDQFxSnzmCakL/PgHPXiLJu/nd1RE850w1tm0
         lnFBEZdNxCD50gA3hlp2G/lPg9yGexjnIZiaojsH5qtXsRW+2//huhaZvPODImEpLHSi
         4xjHhh373y0MZO8D3ErY1ElNsAYJKrmGkcTX77uvLDJAd+O1P/fiTtsYeWLYVhntgwiW
         PxL9YZwMjRR5vQjEYIrpaF6OUlesJ57W4KBrOV1WD6G8kC0vuKaeAVO5QszrhFpBKvHF
         khpjBG8p/ZPHzCkX1/QlveGyDhXbNfhtG7NHe6RPaHH2hnlSqUNnTgEsYNoF628qTwHD
         iEgg==
X-Forwarded-Encrypted: i=1; AJvYcCXFwpTa2Xvb/mBzPhap/HzMLTkq+XDZe7XPBezoHgxffIsM9ABXprljy+wpM2WJhcW6SQsgG1eucg/t9PWvnA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0u2dfMulbYuDrHsfiuBbubadsucHvv7TEQimY4A5HYPuH7v49
	lp/+Ulo740Dw/M+1MeAi55nZzo7rCuNSGlEf3A5WvC3XXZ0pBMriCrhwdvRXVCp7MqJY0PxqN0/
	twM/R8/EytXfWgMPFjNKkjz4RBVsBi7l9V+FP8lqTFBQMi+c0G9WazHkNGjGkwdnpr1Uz+IGn2A
	M=
X-Gm-Gg: ATEYQzxzy9HIMbcuQVEbIclg1imowbUi0L7cr+3JWmZXy+R5C3hGmnqdLGH1KMjexsK
	aMF3mOwSjq6/5llMpPGYX4zEjtGW7clawy5R18K1siqRm9ijsHC4WtXX3hx+Ovs1YBfhdp1vkAS
	Eyj7uNLpEZT+OatS+m4A1GoD5YkQIGEMHUlrBAu8FDVkzXA/MHdsU4krIHjgZ8egkxvAxOcNb4/
	6/ZO6gE7XkyvBXePOfjWq+49+hLIkMrVNpWrW7/uE2y3GYOwkRmMbHMVKnzPk3a02X/lkgH5HC8
	egZUSIGQ++Mr05VfTXOhocWb33gqc9uN8ZizNen/ffXgVjMOZqqY7Fxbj2OyD2COm1eyoRZFlYC
	5f/3hhmZPQu32eo9O5GEP679AzDeEKKhoUrk2FwTxai6e73HrdUSj/Q==
X-Received: by 2002:a05:6a00:349a:b0:81f:4e1c:1d3b with SMTP id d2e1a72fcca58-829f7ae6a79mr1535900b3a.23.1773218249441;
        Wed, 11 Mar 2026 01:37:29 -0700 (PDT)
X-Received: by 2002:a05:6a00:349a:b0:81f:4e1c:1d3b with SMTP id d2e1a72fcca58-829f7ae6a79mr1535869b3a.23.1773218248955;
        Wed, 11 Mar 2026 01:37:28 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6df3b14sm1736918b3a.20.2026.03.11.01.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 01:37:28 -0700 (PDT)
Message-ID: <cd192707-1f8e-4ad7-8be5-470415fb4e95@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:07:18 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/4] PCI: Add support for resetting the Root Ports in a
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
        Lukas Wunner <lukas@wunner.de>, Richard Zhu <hongxing.zhu@nxp.com>,
        Brian Norris <briannorris@chromium.org>,
        Wilson Ding <dingwei@marvell.com>, Frank Li <Frank.Li@nxp.com>
References: <20260310-pci-port-reset-v7-0-9dd00ccc25ab@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20260310-pci-port-reset-v7-0-9dd00ccc25ab@oss.qualcomm.com>
X-Proofpoint-GUID: 4JepdRdk4LUn_viGJeqwblvW4Vzan6Q2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA3MSBTYWx0ZWRfX9sRAIDF//3SR
 CvNIHUXPiq5E9iJhDUB6+0cbcidEuN/4qSXEOVR20DsdYGxPUT3cME7A9L3AJB225dvArG2Bhyj
 gbxmaSFUIXaBvq0IZmJJC4by2TeMIWqogRaQWLjqwiikhAqKLFKDucqFmnOW2YvhUoVLaHnlMpB
 mQSNVdNV/MQAlXnx7S+xoZBoF3zz0okTC+dtlJH/sfWLPHDwl3oIz390dguO6JvwLstWccHMTPA
 ZjxZRRuGCz+KE2fEUMGjszkix2mbZS6LUAva4kz8iEKCf0UBQHywFUo4c5ruP5A3J/FtVkafNOm
 0c5g4q7OLhM94fUGtM7a6k0CWGbOpQGMQaAy+LfoNDnJg/WiDlDre5xcjBKCItxJYlh8OFu9qQL
 wlxqhC/65ij9o+hCvfmfKrupI8GxmCYIVwrhAkBWtGFr/WUcTsC3ApmYfAsCiYQYap0JY0A+c6U
 Bceqdudf4bJkuPFmvCw==
X-Proofpoint-ORIG-GUID: 4JepdRdk4LUn_viGJeqwblvW4Vzan6Q2
X-Authority-Analysis: v=2.4 cv=Gq5PO01C c=1 sm=1 tr=0 ts=69b129ca cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=lJ8DZ0MjVbnDIa4D:21 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=ImqNvw3yTObJCdT6Mg8A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_013732_422880_07001378 
X-CRM114-Status: GOOD (  31.23  )
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



On 3/10/2026 7:31 PM, Manivannan Sadhasivam via B4 Relay wrote:
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
> LDn global_irq event and populated 'pci_host_bridge::reset_root_port()'
> callback to reset the Root Ports.
>   
> Testing
> -------
>
> Tested on Qcom Lemans AU Ride platform with Host and EP SoCs connected over PCIe
> link. Simulated the LDn by disabling LTSSM_EN on the EP and I could verify that
> the link was getting recovered successfully.
>
> Changes in v7:
> - Dropped Rockchip Root port reset patch due to reported issues. But the series
>    works on other platforms as tested by others.
> - Added pci_{lock/unlock}_rescan_remove() to guard pci_bus_error_reset() as the
>    device could be removed in-between due to Native hotplug interrupt.
> - Rebased on top of v7.0-rc1
> - Link to v6: https://lore.kernel.org/r/20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com
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
For entire series,
Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

- Krishna Chaitanya.
> ---
> Manivannan Sadhasivam (4):
>        PCI/ERR: Add support for resetting the Root Ports in a platform specific way
>        PCI: host-common: Add link down handling for Root Ports
>        PCI: qcom: Add support for resetting the Root Port due to link down event
>        misc: pci_endpoint_test: Add AER error handlers
>
>   drivers/misc/pci_endpoint_test.c         |  20 +++++
>   drivers/pci/controller/dwc/pcie-qcom.c   | 143 ++++++++++++++++++++++++++++++-
>   drivers/pci/controller/pci-host-common.c |  35 ++++++++
>   drivers/pci/controller/pci-host-common.h |   1 +
>   drivers/pci/pci.c                        |  21 +++++
>   drivers/pci/pcie/err.c                   |   6 +-
>   include/linux/pci.h                      |   1 +
>   7 files changed, 221 insertions(+), 6 deletions(-)
> ---
> base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
> change-id: 20250715-pci-port-reset-4d9519570123
>
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
