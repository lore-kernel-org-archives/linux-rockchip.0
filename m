Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF778CD128A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 12:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Cc:To:Subject:
	From:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h4qlu1ZLO+KxwKHgk89G8YhJJaEdJGAyDIDwxWdOSUc=; b=CEfeE/DufDMXRqn2ljy6U+YJFy
	bFJQVlSrO/1dzPTtSCtwvgNDyaMCks0wv8BUvWJAXjODS4wkdHZNwhBMLSkwqcp+umIdjmXUPAiaH
	nAL2FYS7Zo6ixH9i5kijiksaIXK8dIsCWSefm2RKgTFZdNhxC9A08MGR1p76Qo20FIq5xYldGj2HB
	5qVlx95ewnPMxJM+P8HqE7SpgHnL9/mVhRxZHBe2RBogXPCCSgq5LnNAxgpAohCHTQ52nERZdHs6v
	ykgb1/L+BBkTKRxxjPUwIIOM53jRPBfoZJn7z9oUipPtT+vyvYubgjxnHPEq1Jzz3CjlfgZNdCBe6
	rylCw/5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzoL-0000000FxLa-1EKc;
	Wed, 03 Apr 2024 12:33:49 +0000
Received: from mail-dm6nam11on20701.outbound.protection.outlook.com ([2a01:111:f403:2415::701] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzoG-0000000FxK6-3mJj;
	Wed, 03 Apr 2024 12:33:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lId1XXOO3ZCLlIs0UtIBJlUuXUIo4id4UlSgg0H4VSwh9ic+8xO/hZ4pZfMaHsj3238aZGzq5yJyOQSFuGKuu2L/4dEOdBMsQLsw/r5YC2U2BOj4LAQdwFk3vFFUJKpaeYIF7TSvKo7lGT4vFcCdmozxkXS3YM1o0wgNaZ0b5hfZ6EmSk7tvVrxtIsrwwOzTbXP63uN7ag23aC057t5skv46/pM8Wdq29cvUxb/BLKjE95960BUvnM3Xj/jovX0DGHPGxCpDpJ5kVAItTteICuPJP6g+VcodkzZAKGe88Cw1ADwiw76XkldRBa4naPetLdfIjrmZOgIK/pEIob8xsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h+8Rn//KvzkhPpEux8BovMmmfPQxkICCvCdU9LzpOtI=;
 b=DpWPhM2uobQNk1/PaQY7l4I4DDrXL39EW3kjDi1p2vNAkGnZkZXHXpM2EyIDLB+Cv6BvE2LIifgB6Li8+rLNLNnXjq8wMaRx9VqvVAOdkdtC3Ipp7nIAgJ8gj4rSNx93G8znuOQYZM16rKlJ6YKU4qxkvyWQBkLML+PHIRfLLBo3/ogPHNbmpC/9gxg3oePWgxZlecQK4rCeORv75wrzYtBWrlp7DhuzYHQOhMTbid028buHGqqpgzzYADiK2ICodsCpamyNprWm8obRIGiKYdjviwlktYhSjhiStqkR4k5i7Q+MIoWXNwH77adSZsjkzB+PgzaFQzTUo3EvQ8jjbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h+8Rn//KvzkhPpEux8BovMmmfPQxkICCvCdU9LzpOtI=;
 b=vzJj53Y3GFrYPv0AvmfazB+qiqOH8xYjJfg6JJs8fu+rcBgg1jWsmDWfp75Hio1xVdQwifmjz5QA5zh711f/XQnNH2laby53b4qzOsQscutDM53Gj+xXYFDoTOG200bAaxWGD+typSwCTpSWavNkfnzv6sqgvVT61nyMeUKofGw=
Received: from BL1PR12MB5827.namprd12.prod.outlook.com (2603:10b6:208:396::19)
 by PH8PR12MB7301.namprd12.prod.outlook.com (2603:10b6:510:222::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Wed, 3 Apr
 2024 12:33:36 +0000
Received: from BL1PR12MB5827.namprd12.prod.outlook.com
 ([fe80::ad43:48cb:df1c:c72f]) by BL1PR12MB5827.namprd12.prod.outlook.com
 ([fe80::ad43:48cb:df1c:c72f%6]) with mapi id 15.20.7409.042; Wed, 3 Apr 2024
 12:33:35 +0000
Message-ID: <dccb87db-d826-43fa-a499-cf36ea9b10d5@amd.com>
Date: Wed, 3 Apr 2024 18:03:25 +0530
User-Agent: Mozilla Thunderbird Beta
From: Kishon Vijay Abraham I <kvijayab@amd.com>
Subject: Re: [PATCH v2 02/18] PCI: endpoint: Introduce pci_epc_map_align()
To: Damien Le Moal <dlemoal@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, Niklas Cassel <cassel@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-3-dlemoal@kernel.org>
Content-Language: en-US
In-Reply-To: <20240330041928.1555578-3-dlemoal@kernel.org>
X-ClientProxiedBy: PN2PR01CA0189.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::10) To BL1PR12MB5827.namprd12.prod.outlook.com
 (2603:10b6:208:396::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR12MB5827:EE_|PH8PR12MB7301:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +UJ46gRG37mOCGpQnEQDRgVOvI9ownDHQmNef6PakeRwaH/uxIUegbLVTpIpiyfHP53YrHzUV4pN1rJ1SJT7z3sbkFTxsmw7rEXf6BKt+xABmgAmVbKHpdLp2yZ1WoclNKaaG+MRdYamDH41mgzcicgEegTMThZawlrKWn/YaxzfTss3L8tJ4IktuD7NlxVJOt+FUignwC+aAm+LQdXVY8xBzCg5+eFIcPY9P7ctYiR2oUi83s4xrKzJDoYWcI2CekXk/c+wgmrtZkH7rbICvhQnFb+4DG2VmMdr6lAJ/AlxyxwAfaH4HMh/l0L0C2QKtGMQV5impQnANGqI9nrUKY5SYNLsn5Kd3lhucrFe04yAz9ZCZynYVXCgrzeWHA9RdNcK9F3Zqn6BUkIaX67JR6zppAMqhsVsGdQ5HxNbKZoPRliZHxVjV6OS37RW7587CHQT28GKfdLT91aeG4/95H3qnWDQ/91S53kpX/GXmT6GtN+gvWPIYTn5VInWBtiFTzFIV9wNcgSq5lmSabylBa/GKBkCqKbVPxA0xBG66lYobM5UhrEfgIym8/ZPfjlZoDljRppuPTvyJp2aY/0qOZyn4nzI1btETNfk/ckofNsCBy2NbXQ+BF3+g19ZqZbvpJEs8Sxvpwr+oSp4lUu0R8iAaGlm9631lcob11LkKhQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR12MB5827.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(1800799015)(376005)(921011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXZjSGZiamljbXBJYnFsdERlaVZmTTZrcy9JOHVaSzRCWko1Vmd3ZktmZkFm?=
 =?utf-8?B?bmlIeDJxendjUnZIOWNUMk5HdWJDaHVCb0FBSm1OeXl5cWhHQjRIT2ZCZHJL?=
 =?utf-8?B?MEtwbUN1RVJxdmxsWDBQaENEM3pVeENxdDUwOHhQbWRjV1Q1eGdJVzBTQ2V4?=
 =?utf-8?B?bUJJbm1HU29Kd29UdjYvN0pyRlIyQzlnQXZueUFHbGNUcjdpNGJpUlpnRThy?=
 =?utf-8?B?eFVQRWJPdjZmNW8xTXBFeGg1Q2p5ZkU4UmFWK1FXL3Y1eThJSnBLVHp1T2Ri?=
 =?utf-8?B?ZmdrMU5UMHdjRHVBUW5FVHhuckpSaldDamRsY0hrajVUdE8rd242RzF3eFVX?=
 =?utf-8?B?dDhkcDM2ckhWTjBRRWc2RFQrZ0kzSE1uVXM0SnpRZ3VJWVdSVVRObWo3ZEE0?=
 =?utf-8?B?TndncE9yUWczb21PanRvazdTTU1YMVBkdlFKa0NORmZ0UWZPNldISjhMTzRF?=
 =?utf-8?B?RmM3WEordHBENkZud2xjME04ZHlFa1ZBSVFqaDl2azVhMWowTERqZThhSjQr?=
 =?utf-8?B?cDlBQ0hHRGFuOUQ5WVRnMGI4TkNzdTdxN082TkgzSWtPQ3pFcWorOTA0RGpu?=
 =?utf-8?B?MHdLcWRxYUg3ZU9aTzF5RlFXZUdLQktXYjdFZUt5TSsxK29DazJOUURhNWlw?=
 =?utf-8?B?M0NPQ1AydjM3Tmc1MXpkVmdTTVh2VXJ2L051WlNHNUYxaE13VHRiblVLWEJQ?=
 =?utf-8?B?RFJUTDVCVjFkUDZ0Q2E2V3FiTUFqV011N3cyQktBM1FmTXdLZVowcDlLNmp2?=
 =?utf-8?B?OWhOSkNtUThNN3ErRkgwYjhiR2dEb0lnQnVmSnRINGpFVzF1cFR0RXEvMUND?=
 =?utf-8?B?UFFsYzJsWHFhMFpGQUNIeVhXQURvMnhVMGRkdENvNWVHbnB1YktvWGdaeU8r?=
 =?utf-8?B?eXFKWWEwNDVTQzRpSEc3THBLSmpWelZoQm1laW5ndUl1Rk0xUThxZGhqaWhj?=
 =?utf-8?B?TDdNMS9kOGl6QVYrMDVjWVFrUE91UE9UY3lmN2hqZFhvTHRDcThGSUw4aHp3?=
 =?utf-8?B?bytKMUZNcGE2U2pOaDdqQkxnTHFkRkxZYkxSbVoxWEtlbkd2T1VmTWhzZ2ZK?=
 =?utf-8?B?QjJSZmFSSi91QmFHOGhBZTJEUnNhb2hrRWlkaUduVTJ6bVAvSUhwWTNsVmRE?=
 =?utf-8?B?Sm9RN0xERDFYdVovMzRETGNVeTM5ZE9nRVoxbUp3YkgxdUdtUzVMRjNuTjB3?=
 =?utf-8?B?RzRRRnU2MXNKQXMvSEZ3RTVqVmtxa0NGVmJMUFdqZFB3TmtMbEdKakMzSlpI?=
 =?utf-8?B?aEVjY0xyRUZNakZYakhsekdVc1p1K2xvODA2cVRmVHNuakhSRVlweDRZc3JG?=
 =?utf-8?B?ajA0RXowS3VRengvV3BRaWJTVk5ndkxVQ3Uvclo1WGxDOUg2VUVQdmUrTkRh?=
 =?utf-8?B?N1VwblFyK2RaYW9GTWZvYWhqYUV3SlhUeTZ2aUJoQXNxOUQrVUdHSTg0ZU10?=
 =?utf-8?B?Wkcya1dXVWttNkFMcG1GUi9yR2VQdVRFWnVRR2dtZjFyRGNqM3MyYUpMb3RI?=
 =?utf-8?B?UTlFT1VmKzVpdmo3Y3l4Q1ovZEFnN2FTNHBlWkcwb0gvQzFlb2dKQmM2S3Iv?=
 =?utf-8?B?ZWJCOWdPR2MvRmdiUU9hcFgvc2UwbDE4dFdCMFpmT0tYS1oyZWNBT1czRXJU?=
 =?utf-8?B?K09SdXpSQkZtdzJsSFJLNFA5OUlsMHgyNzVLMkNqcGVhb1BvWnI1cndBdXJa?=
 =?utf-8?B?NEMxK3pwdWhyNXpwRy9PeEFya0FmMnpIeXZCQk5rVGNUalUwOFpvTnVXeklu?=
 =?utf-8?B?a1pSWUk3VXNBOXJNaC9ldU1DaFRqQlg5UzVlcGZTWTZLd2tjR1ZxcFd5VmlQ?=
 =?utf-8?B?TjFrd1ZJRVpkTExERWFFck5DRlZvWTNBYnhnK2FXdjM3S1pWbjBNQ3o5cFJK?=
 =?utf-8?B?OVFpS0VqUHpyR1NpdW1nandPWm51aW1walNTckZxYjZYR1Nabys4S0Q3bTR2?=
 =?utf-8?B?eWhrb0d2eHhXSWZ2cW02TG45YkExR1lmSHp0V0NwSTJpRUxsT3dYa3dMa2VZ?=
 =?utf-8?B?cThxSHVBUDRIRzJKdzZnMEEyeEovTXNkNGZ3UGdPNW9NMC80QWdmakorTmZu?=
 =?utf-8?B?aU1lNlRLWTlXR3M0NjlxblN2dlJqYkdvOUkwaDlhalJURnFubmdTMkV0NWJq?=
 =?utf-8?Q?qKtYCCs539RbyLpOcg7QBSy7H?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3157dd4-8513-4ce9-c1b3-08dc53da47f9
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5827.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 12:33:35.8758
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zF2W8au1ROuc3Hu+9BhwjwPbMKdLy9tZ4Smgo9ZOrHZCp02Wkk9zotL82ExckmzU+9SlU6K4YbgJXwDI70ifRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7301
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_053345_158351_F569611C 
X-CRM114-Status: GOOD (  43.99  )
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

Hi Damien,

On 3/30/2024 9:49 AM, Damien Le Moal wrote:
> Some endpoint controllers have requirements on the alignment of the
> controller physical memory address that must be used to map a RC PCI
> address region. For instance, the rockchip endpoint controller uses
> at most the lower 20 bits of a physical memory address region as the
> lower bits of an RC PCI address. For mapping a PCI address region of
> size bytes starting from pci_addr, the exact number of address bits
> used is the number of address bits changing in the address range
> [pci_addr..pci_addr + size - 1].
> 
> For this example, this creates the following constraints:
> 1) The offset into the controller physical memory allocated for a
>     mapping depends on the mapping size *and* the starting PCI address
>     for the mapping.
> 2) A mapping size cannot exceed the controller windows size (1MB) minus
>     the offset needed into the allocated physical memory, which can end
>     up being a smaller size than the desired mapping size.
> 
> Handling these constraints independently of the controller being used in
> a PCI EP function driver is not possible with the current EPC API as
> it only provides the ->align field in struct pci_epc_features.
> Furthermore, this alignment is static and does not depend on a mapping
> pci address and size.
> 
> Solve this by introducing the function pci_epc_map_align() and the
> endpoint controller operation ->map_align to allow endpoint function
> drivers to obtain the size and the offset into a controller address
> region that must be used to map an RC PCI address region. The size
> of the physical address region provided by pci_epc_map_align() can then
> be used as the size argument for the function pci_epc_mem_alloc_addr().
> The offset into the allocated controller memory can be used to
> correctly handle data transfers. Of note is that pci_epc_map_align() may
> indicate upon return a mapping size that is smaller (but not 0) than the
> requested PCI address region size. For such case, an endpoint function
> driver must handle data transfers in fragments.
> 
> The controller operation ->map_align is optional: controllers that do
> not have any address alignment constraints for mapping a RC PCI address
> region do not need to implement this operation. For such controllers,
> pci_epc_map_align() always returns the mapping size as equal
> to the requested size and an offset equal to 0.
> 
> The structure pci_epc_map is introduced to represent a mapping start PCI
> address, size and the size and offset into the controller memory needed
> for mapping the PCI address region.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/pci/endpoint/pci-epc-core.c | 66 +++++++++++++++++++++++++++++
>   include/linux/pci-epc.h             | 33 +++++++++++++++
>   2 files changed, 99 insertions(+)
> 
> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> index 754afd115bbd..37758ca91d7f 100644
> --- a/drivers/pci/endpoint/pci-epc-core.c
> +++ b/drivers/pci/endpoint/pci-epc-core.c
> @@ -433,6 +433,72 @@ void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>   }
>   EXPORT_SYMBOL_GPL(pci_epc_unmap_addr);
>   
> +/**
> + * pci_epc_map_align() - Get the offset into and the size of a controller memory
> + *			 address region needed to map a RC PCI address region
> + * @epc: the EPC device on which address is allocated
> + * @func_no: the physical endpoint function number in the EPC device
> + * @vfunc_no: the virtual endpoint function number in the physical function
> + * @pci_addr: PCI address to which the physical address should be mapped
> + * @size: the size of the mapping starting from @pci_addr
> + * @map: populate here the actual size and offset into the controller memory
> + *       that must be allocated for the mapping
> + *
> + * Invoke the controller map_align operation to obtain the size and the offset
> + * into a controller address region that must be allocated to map @size
> + * bytes of the RC PCI address space starting from @pci_addr.
> + *
> + * The size of the mapping that can be handled by the controller is indicated
> + * using the pci_size field of @map. This size may be smaller than the requested
> + * @size. In such case, the function driver must handle the mapping using
> + * several fragments. The offset into the controller memory for the effective
> + * mapping of the @pci_addr..@pci_addr+@map->pci_size address range is indicated
> + * using the map_ofst field of @map.
> + */
> +int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> +		      u64 pci_addr, size_t size, struct pci_epc_map *map)
> +{
> +	const struct pci_epc_features *features;
> +	size_t mask;
> +	int ret;
> +
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
> +		return -EINVAL;
> +
> +	if (!size || !map)
> +		return -EINVAL;
> +
> +	memset(map, 0, sizeof(*map));
> +	map->pci_addr = pci_addr;
> +	map->pci_size = size;
> +
> +	if (epc->ops->map_align) {
> +		mutex_lock(&epc->lock);
> +		ret = epc->ops->map_align(epc, func_no, vfunc_no, map);
> +		mutex_unlock(&epc->lock);
> +		return ret;
> +	}
> +
> +	/*
> +	 * Assume a fixed alignment constraint as specified by the controller
> +	 * features.
> +	 */
> +	features = pci_epc_get_features(epc, func_no, vfunc_no);
> +	if (!features || !features->align) {
> +		map->map_pci_addr = pci_addr;
> +		map->map_size = size;
> +		map->map_ofst = 0;
> +	}

The 'align' of pci_epc_features was initially added only to address the 
inbound ATU constraints. This is also added as comment in [1]. The PCI 
address restrictions (only fixed alignment constraint) were handled by 
the host side driver and depends on the connected endpoint device 
(atleast it was like that for pci_endpoint_test.c [2]).
So pci-epf-test.c used the 'align' in pci_epc_features only as part of 
pci_epf_alloc_space().

Though I have abused 'align' of pci_epc_features in pci-epf-ntb.c using 
it out of pci_epf_alloc_space(), I think we should keep the 'align' of 
pci_epc_features only within pci_epf_alloc_space() and controllers with 
any PCI address restrictions to implement ->map_align(). This could as 
well be done in a phased manner to let controllers implement 
->map_align() and then remove using  pci_epc_features in 
pci_epc_map_align(). Let me know what you think?

Thanks,
Kishon

[1] -> 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/pci-epc.h?h=v6.9-rc2#n187

[2] -> 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/misc/pci_endpoint_test.c?h=v6.9-rc2#n127
> +
> +	mask = features->align - 1;
> +	map->map_pci_addr = map->pci_addr & ~mask;
> +	map->map_ofst = map->pci_addr & mask;
> +	map->map_size = ALIGN(map->map_ofst + map->pci_size, features->align);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(pci_epc_map_align);
> +
>   /**
>    * pci_epc_map_addr() - map CPU address to PCI address
>    * @epc: the EPC device on which address is allocated
> diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> index cc2f70d061c8..8cfb4aaf2628 100644
> --- a/include/linux/pci-epc.h
> +++ b/include/linux/pci-epc.h
> @@ -32,11 +32,40 @@ pci_epc_interface_string(enum pci_epc_interface_type type)
>   	}
>   }
>   
> +/**
> + * struct pci_epc_map - information about EPC memory for mapping a RC PCI
> + *                      address range
> + * @pci_addr: start address of the RC PCI address range to map
> + * @pci_size: size of the RC PCI address range to map
> + * @map_pci_addr: RC PCI address used as the first address mapped
> + * @map_size: size of the controller memory needed for the mapping
> + * @map_ofst: offset into the controller memory needed for the mapping
> + * @phys_base: base physical address of the allocated EPC memory
> + * @phys_addr: physical address at which @pci_addr is mapped
> + * @virt_base: base virtual address of the allocated EPC memory
> + * @virt_addr: virtual address at which @pci_addr is mapped
> + */
> +struct pci_epc_map {
> +	phys_addr_t	pci_addr;
> +	size_t		pci_size;
> +
> +	phys_addr_t	map_pci_addr;
> +	size_t		map_size;
> +	phys_addr_t	map_ofst;
> +
> +	phys_addr_t	phys_base;
> +	phys_addr_t	phys_addr;
> +	void __iomem	*virt_base;
> +	void __iomem	*virt_addr;
> +};
> +
>   /**
>    * struct pci_epc_ops - set of function pointers for performing EPC operations
>    * @write_header: ops to populate configuration space header
>    * @set_bar: ops to configure the BAR
>    * @clear_bar: ops to reset the BAR
> + * @map_align: operation to get the size and offset into a controller memory
> + *             window needed to map an RC PCI address region
>    * @map_addr: ops to map CPU address to PCI address
>    * @unmap_addr: ops to unmap CPU address and PCI address
>    * @set_msi: ops to set the requested number of MSI interrupts in the MSI
> @@ -61,6 +90,8 @@ struct pci_epc_ops {
>   			   struct pci_epf_bar *epf_bar);
>   	void	(*clear_bar)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>   			     struct pci_epf_bar *epf_bar);
> +	int	(*map_align)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> +			    struct pci_epc_map *map);
>   	int	(*map_addr)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>   			    phys_addr_t addr, u64 pci_addr, size_t size);
>   	void	(*unmap_addr)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> @@ -234,6 +265,8 @@ int pci_epc_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>   		    struct pci_epf_bar *epf_bar);
>   void pci_epc_clear_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>   		       struct pci_epf_bar *epf_bar);
> +int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> +		      u64 pci_addr, size_t size, struct pci_epc_map *map);
>   int pci_epc_map_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>   		     phys_addr_t phys_addr,
>   		     u64 pci_addr, size_t size);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
