Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F205CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 03:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlzbyTdfrd2qlPQx9wZiQXZR2nI3jleCDG3fCyc99jo=; b=vQfKPl4bNKIEZP
	g3+VKL2mRzsiMXwPrD/JGhFwY3przF0XfeOTeL/BvVNUPUkPTSHvLAbCwOharBa5Im12+PQ7yfnMy
	x0gI94Wq0KmNIO7mEMwuaq7xJYdMgiW+SX4pXqA62IUYVe5VTrFgw49cKwOBda6Y5GcYU/ZIeyQKw
	u31rvROuAt81tE/z94ymwqJihyHdyc4fRv82iV998Vo1eonj4TotmeU921+jJf/jhKb58sHk4DDKk
	1/p00M9aK+8xEcX4CeT8GOAKRecU9p4wKLRoqo7Zsxq1RjFY75aQrJOa6R3Xyy4xEQaJ5/2Rh3XAb
	C8V9gCcTVDBGPSV89nQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC8fD-00000008AGy-10Vs;
	Fri, 24 Oct 2025 03:40:27 +0000
Received: from mail-francesouthazon11011054.outbound.protection.outlook.com ([40.107.130.54] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC8fA-00000008AGT-1BIo
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Oct 2025 03:40:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cYM2OaMqkDbU4uZBLPKd1X1ErFBcz+R8fKxfb3a2fzRiwp9jZ716BpwMv6uJNenQP9StCoMKRd2rk+p3dbNXILFC5tCqwQa0RyatUs0nhtOEXKnnWL8OvaBQMpRJENTOFLKa7zfX1E5MUFEk2H9mt0e1EyNqiRQwj7EqyXEjBFxOJU13nAjaVPkLwIGgloXF2cpE9nFBymu2FH1WA1WcxLtSluVfSre5VjrdT0xelDoxY5yvEeW5hgib0wxPNIji/MtFzfbnl9glgtPCEhO9mups25y/UBWzNJa0PZQ/Xs99ZifK1i2/mR0JEVbhYUKehwIe6fsgXb29jPzXtk8QhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CDgtpzSnmgc5VCp7SPbm9LQRlXK85hr4UsvXET9YazY=;
 b=oA4z/AMSznuanliD+3bR6CpDI8Ra7j3ALdbA849oP/p5uvEH9CIYScDdFlylDbbfSeHcpAqI9kU3H8xAbe3apSE/YPMXEZmvjDJJrYSfET9C7aXYUOhMuQPYVysIIEEqhz4JHUcRXs1/5YUibQWfyak///hdbMimf5/7EkbUXi1xm0pV+f5WtwdAKEJv9LUZhamJcsT9Oepi0t4C6xB5kZXBLnuEeGEpSeLCRcjgeqW5XPGK/TeFwzfIVcK4pqmASOUefgjLC/YXfEEbp9yjaDZ80WtE+xcoZRPuj7px8ru31vgTS036LWG7yIbllLGek5xOaoSUFSG4SGHHVXA0Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CDgtpzSnmgc5VCp7SPbm9LQRlXK85hr4UsvXET9YazY=;
 b=N7AeYqNzBHh1cGh+XQauagqmRAjKCbtvyZkn8c2jpUss5fvsFkE4rVTa++jEvJFwdYy8EjEalDAOsEu/M1E4wqrjp9dWUsZ+EfP/KcQuNWqzcz1DSUknPaV3CEyMpnzjiQFMUpgb3B/5xipRSVfLru21bWmnB1wBgkTcu1YrlOR1WMjf+Mbro5/zPDCD0atBOyMmd4wBXBsTT0RI8vFdEgx1DVxxqRnWOwIUAhDuHjco3fsqJrx9k+bGlblzl9JmDqv1v2rauZGEQASxczwER/VYcNBZqPmfhORZQsKFhktRHT7Fi/Gk7JUb81rt0/s6dAfAARQ4C2zEnom7dKODHQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXSPRMB0053.eurprd04.prod.outlook.com (2603:10a6:102:23f::21)
 by AS8PR04MB7672.eurprd04.prod.outlook.com (2603:10a6:20b:23e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 03:40:20 +0000
Received: from PAXSPRMB0053.eurprd04.prod.outlook.com
 ([fe80::504f:2a06:4579:5f15]) by PAXSPRMB0053.eurprd04.prod.outlook.com
 ([fe80::504f:2a06:4579:5f15%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 03:40:19 +0000
Date: Thu, 23 Oct 2025 23:40:13 -0400
From: Frank Li <Frank.li@nxp.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v3 1/2] PCI: dw-rockchip: Configure L1sub support
Message-ID: <aPr1HS0Ld+sRN4iC@lizhi-Precision-Tower-5810>
References: <1761187883-150120-1-git-send-email-shawn.lin@rock-chips.com>
 <aPpN2NX7IkAEU9Rh@lizhi-Precision-Tower-5810>
 <de9371a6-654c-4360-a34d-7f8a20848a6a@rock-chips.com>
 <aPrt/H4lF+DrF4Ej@lizhi-Precision-Tower-5810>
 <eeb1ee07-7bd5-4082-a376-81e4bd0152ea@rock-chips.com>
Content-Disposition: inline
In-Reply-To: <eeb1ee07-7bd5-4082-a376-81e4bd0152ea@rock-chips.com>
X-ClientProxiedBy: SJ0PR13CA0113.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::28) To PAXSPRMB0053.eurprd04.prod.outlook.com
 (2603:10a6:102:23f::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXSPRMB0053:EE_|AS8PR04MB7672:EE_
X-MS-Office365-Filtering-Correlation-Id: 8777392e-4c3a-4a01-c7d0-08de12af0e0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|52116014|1800799024|19092799006|366016|13003099007|38350700014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R0Q1cEFEMWUxbFRjQVRuMC9yZzA0NUhmeFNVUzdwNktOY1BsaFNCNXJNSHJq?=
 =?utf-8?B?V01CRlhJOHc5cVV0YVRiT1I1aDJvWCtmdUhLdVFOLzZUU05uTWZSbTQ3bFUr?=
 =?utf-8?B?OWs1dVY1eXRtdzFOdDh5LzhIM0RwUHJkQ3NlQ21mNTFVTXFpWmo3SUR2Z3J4?=
 =?utf-8?B?aSt4aTJ6VHFmWWdtMDVWSW0xNXJhTzk5MW9haFArNkhlMk1uNUFCWXFmamNa?=
 =?utf-8?B?bm1reERCQTFYNmNXUGhSZHh0VHAvcW93MEJibUFEL0hUOHNvUklVTHhvOHM5?=
 =?utf-8?B?aFRMTDJMYlk5NU55a1FlT3ZORzN2SVladGF1RGdnYit4Z2t2VmFxT0F6am0x?=
 =?utf-8?B?dDFsQStuaS9BaVpEa0NMTVoxa1FGRHVnSE1WdDdmWUVxSERCM0d0WWl4N0Zy?=
 =?utf-8?B?QnRETGtKc28wTDlQRXBEVXowajJZNFA3UjQ2bFhoZExIQitjRU5PUFJxSHlo?=
 =?utf-8?B?dWdKbTVhNVJCaDVHTndvcjNEeml6b0N6UHA3WnlpSFkydTNpUlJ4bUlkbGRO?=
 =?utf-8?B?bGhqVUNaMlNFa3ZqdGZmeHhadEd3NnhSMmw4WmMycURLVW5FK3ArT3hDdUJt?=
 =?utf-8?B?MzdScjFJTWRUQ1Z0bWs1bFJkaGJxbVAvNEhFMXZZZjBxVGtuZTVwMzVxaTZZ?=
 =?utf-8?B?TmczbHpkQmwrTUR4Z3lWSXpDV0tEL1BJTit1MktBbXVBMWNsenRFekZYTHZJ?=
 =?utf-8?B?Q290RTFaYll2T3RFazlNTWdpWm1kcU1iNmwxcldDeGpWbTh2a3A4NDcwTk9h?=
 =?utf-8?B?SmJuZDJCUlk3MmtNZERkc25TVS9OaG1Odmh3WmlXTkFiK3F0V01NQWxpcXhQ?=
 =?utf-8?B?dWI1N2N1WURvUjlMclVRM2VXRzlLNFFDMytDMU4zd1VQK1pjZHJLd0hnOXp2?=
 =?utf-8?B?QnFvMGV4VmFWWDYzbzVuNHVFck5pRUlDWW83bXRkTEo5VHlsYnFQbERCMVZM?=
 =?utf-8?B?emFMU0pQZE9qRXhIbHdrd0U5a2lPSDFaWXE4emkrdU9CUTdLVXNBREtzc0lj?=
 =?utf-8?B?UlM5dUlKL0FJVU9JNmpZM0FROHNyMjQ4UE9LcFlLdmhFdHFiV3ZJRWw2MzdV?=
 =?utf-8?B?VlkvN1BDcTUySGpYSUNKMjh4TEczeFAyT1VueXA0bDJvZ3BqeFQ5SmZKVVN1?=
 =?utf-8?B?cEgrU1BYcnpFdkp0ZHRNbzVRN3FScE5uMVV3aCtNaE9HcmYvVGU4K3Q2NXNW?=
 =?utf-8?B?UDJBbVIrRmxnUThTR2JnSzUycXl5YS9oZ3MxZmk5Smt1cmRZbitDRnk1Y1JQ?=
 =?utf-8?B?VkVPWk16cXZuMkd4RGl4U1paSFlZNUwyT09aMlNCVWZUQnRmZENXL0hmK2Zx?=
 =?utf-8?B?QTRkWnpTZU11MDhCeCt0R2FGNzNEdHdLZXFTUklNeEVmWUtPNS9ZcEVuNm41?=
 =?utf-8?B?MDhBcmt6M050ZWJKS2tyU0Z2NFgwcW5vbmtXZXhMN2JrcGlQQXArYzRXVC8x?=
 =?utf-8?B?VkxKZmZKa0lpTHRXWUp1ZVlpQWhlQitPQkd2SkE3Rm1xZVNjejhvUk1nY3RX?=
 =?utf-8?B?amNza1lsa3JlZVBvOGo1ejlZZndWanpLOG9LbmM3ZmZUWWIrSk5KZHhaajNr?=
 =?utf-8?B?NDlDTlFyc2tOWTA1dDFGY2VDLzQ3dFlqQno0NWVVSXFaZjI4RFhyWkcwSTgz?=
 =?utf-8?B?dS80ZURGd0tNQUh5RGd2R0hSZjFUV2VkNlRXTE9BRGg4ZnZla3N5a0RXaG83?=
 =?utf-8?B?ekV2Q01OUC8xL1BVZnUvUU94ZTBRbXRJVjdTR1ZBS1BwaEx1Vk5tYVJOMU93?=
 =?utf-8?B?TDNhYVhtTTFKR0krVkdPdUwxZmhMSmFPaWxFQmhhcmRpSFVCbHJzalIxZGt1?=
 =?utf-8?B?TXNEUnNGQlFmSzFYeHluYnJMdkZORkxhOXBGb2ZLVFJVM1dmNzRMNXYydGRD?=
 =?utf-8?B?WlMxT2RHYmVVUEhBbjhuQnoydytOaC9MamdUYURsNVYyZEFjaUhDVjVwWGVK?=
 =?utf-8?B?Zi9YaXAyNWVtczFLSXY3MWh0WHpUVzQ1UjBiajFmQjBIREdLSTBKWjdrT0Rk?=
 =?utf-8?B?NlJMbXFCdm9XVWdLVlprNnNRRDdBQTNoSTdoT0RGVS9OSkFqVXl0Sk0wbmJ0?=
 =?utf-8?Q?6wpAND?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXSPRMB0053.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(1800799024)(19092799006)(366016)(13003099007)(38350700014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djVJcVE2cmNlL1FqcHBWMzU5YnJ1bEI2eDg0R3Z4eUpLb0NPQ0xNMlFjcjRD?=
 =?utf-8?B?M3R2Tk9PcG5qSXBTa01mMmM2UTRBS2IvclJaSUdOT1pPdjNzdFJ2eTRmdE1s?=
 =?utf-8?B?cGk4ZWxKV0lITlRnbm85UlJnSHlRWm1DQ1Rqdnp2NEEwTjhuZ3gzZmtHNjIy?=
 =?utf-8?B?dVNLZ0VFOHExNW9qSGRKRG50c2xXc1VkZmlmdW83V1hGWDRsUEs3MHBZNW83?=
 =?utf-8?B?OGpyQW9OZlM0clB2Zkg2SE5ZRWNhZ2dOYWdoRzc3ZFplSFVSeGxiRFY2QmVr?=
 =?utf-8?B?QXpnMEd4ZnlHQ3N5NzZXc1RsSjVXc1ovWklaR1pJaG1RK0cyZWlQNUFZcEtI?=
 =?utf-8?B?SStzcmlTczJiYjRzN0RSeFFvNk9MZkxOb2tpNWlsekloSVV5dVZRdk9mMVNT?=
 =?utf-8?B?WW5wVHNPRWZwcGFxbHRncVc1aGRJVEVuUHlCTzBuVXg4eWdLejZjam0xQkND?=
 =?utf-8?B?b3VTcDlYa1hiQnlQVlJNMGc0aTNYNTExRktxQWc3dFV3VUdYN0V0eFFoMTJr?=
 =?utf-8?B?ZjIxZURONFpMK1hjcmdSUGpOeU5VeXFsQzhzUDNXSVNzcmVzZExyL1F6TWdW?=
 =?utf-8?B?a2pGTExYUExTM2djcHBHV1AzSHRSUCtsUjNRd094MFlyekR5dUdZVmhtU1Bh?=
 =?utf-8?B?clVVcDE4QXBPNW1wemZ2N1lxYjZqS2VtUEtqR0pnNU11UEVCQ0Y2VE9XVTk4?=
 =?utf-8?B?SUVnaHlSbWIvSDNpRkxRQ2lCQU1qZjRiNm4rNGgyRXBsZlZmYXlEb0VTcUdY?=
 =?utf-8?B?a01STWRyaXMzOTV6VHBlbitHb0phNHducVhIODcxVXhxSjVWalc4c1JBdTlu?=
 =?utf-8?B?YW44amhOVkdiejVWTjNvRmFJK2FFK0czRDFENzZ0VE1PR2orSjBmWDlQWFZh?=
 =?utf-8?B?NUpkWUY3ZzdUSGZrb3NrVk4wWkVpYU1PQ3ZCUW5IeGh1MlE5U0RmL2JkUS9y?=
 =?utf-8?B?UENkaEZzbE5SazlkTmlkbnBLd1dhU1NlZUFoV293KzY5TVd1L00rcEhQL2dZ?=
 =?utf-8?B?cGtlT2RkRXJkMFBhZkVPWTNIb1FlaHN0blBnR0E5Y3RFMDl1cGY5aHhieWx2?=
 =?utf-8?B?RVR0YjVMMmNxanl4UHNvanh1WUJkekJyOVJwMzE0VWg3US84OXhZQVNTMWpQ?=
 =?utf-8?B?c2JhSmFOMXQ1NlRSYW85SzY3RzRqRkdWYzV2REwxVEFvdGFRMGdZb1lrOEtH?=
 =?utf-8?B?SFQ1ZTkzMERoV01CZmxFak1HNkV5MnNrbENPb21kVmpBZFJYMzZHNms5WW5i?=
 =?utf-8?B?akJ1OFd6WVdwcW1aSUlLVXo5NXBZNHR3THljWjVJUzNTemR3WkdtL29PKy9Z?=
 =?utf-8?B?Q3BxcnVsTVUrWG54ek12dUtrbnczMktJQ0RaTjV5cm82TVVOU0xDUGg3cnEy?=
 =?utf-8?B?cGlQeW4rS0xKSThnTjg4YzRkWnJERFRnTWdQNmo0UCtUSUJEZ1o0elB3QzRW?=
 =?utf-8?B?cWRKbnJzMjhiQldVUytSbjFHa0pUSjhzayswaVZvV0E4TG0vMWhpRDFFNVIy?=
 =?utf-8?B?a010RnplVWxRa20zQmE0aEpBY2k3QzZVOTI5V1FRMVlhUUxZR3VxZUNPZElt?=
 =?utf-8?B?WUp0b2FZUFhEYWxtZDFPUEJmRXJKemY0bHh6WUZMbmdMMm9pc2pGZ0JSR3ZQ?=
 =?utf-8?B?QkpKUmJtMEtOcDIwOVJSMnI0OVA3UWVwWFJBbUNKYjZPVXNTdmRkZWFIWW9F?=
 =?utf-8?B?dnB3bkR3L1dFcWdSYldpRDVFWmFlWm9XNUxBaVJFN2d5ZjB1L0lIYXRieFov?=
 =?utf-8?B?UnUwb01jOWVLbkNFQlplNG9HcFhRc2g1cFd5VnNzWDVmVDNLOENDdWcwb0FE?=
 =?utf-8?B?T2t0bTMwWFVROEtQTDU1NVRicjNjaW9lZ1R4RXJUVzh0UUJSaFhadzJaWTQr?=
 =?utf-8?B?TjZLa1B4NzlFcWdzYUswV3pUMGRWRzlURmZ2V0I5SUsxT3VadGNyNFZ6Z3Br?=
 =?utf-8?B?SGpXZ1BjUjlTRlQzSENZVTU2MnRtbWlGR1lsKzhEQXBYTmlONnZrNGttQzVy?=
 =?utf-8?B?OVFvSW04b25qRnJFY2pSYWJ0US9wbldWV0dhc3lsR0hnV0MyTGM3dmNDTEJI?=
 =?utf-8?B?Z2wrbDlYbVBmcndZMmYyUGgzUWlicHRjYVNTTlVVTnpMK3NXMkNpMXUxZUd4?=
 =?utf-8?Q?DWsM=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8777392e-4c3a-4a01-c7d0-08de12af0e0c
X-MS-Exchange-CrossTenant-AuthSource: PAXSPRMB0053.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 03:40:19.8945
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v6yeKBO9+NMzqXj93PdyUHZ8VSCXVEsFbxhYIqebbyd+Y/0nr+R35NsJ8g/Sc+kUFlRuHOI9Zy8shSSbyL5TKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7672
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_204024_493367_D39D8203 
X-CRM114-Status: GOOD (  36.53  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBPY3QgMjQsIDIwMjUgYXQgMTE6MTk6NDVBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI1LzEwLzI0IOaYn+acn+S6lCAxMTowOSwgRnJhbmsgTGkg5YaZ6YGTOgo+ID4g
T24gRnJpLCBPY3QgMjQsIDIwMjUgYXQgMDg6NDM6MjhBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+ID4gPiDlnKggMjAyNS8xMC8yMyDmmJ/mnJ/lm5sgMjM6NDYsIEZyYW5rIExpIOWGmemBkzoK
PiA+ID4gPiBPbiBUaHUsIE9jdCAyMywgMjAyNSBhdCAxMDo1MToyMkFNICswODAwLCBTaGF3biBM
aW4gd3JvdGU6Cj4gPiA+ID4gPiBMMSBQTSBTdWJzdGF0ZXMgZm9yIFJDIG1vZGUgcmVxdWlyZSBz
dXBwb3J0IGluIHRoZSBkdy1yb2NrY2hpcCBkcml2ZXIKPiA+ID4gPiA+IGluY2x1ZGluZyBwcm9w
ZXIgaGFuZGxpbmcgb2YgdGhlIENMS1JFUSMgc2lkZWJhbmQgc2lnbmFsLiBJdCBpcyBtb3N0bHkK
PiA+ID4gPiA+IGhhbmRsZWQgYnkgaGFyZHdhcmUsIGJ1dCBzb2Z0d2FyZSBzdGlsbCBuZWVkcyB0
byBzZXQgdGhlIGNsa3JlcSBmaWVsZHMKPiA+ID4gPiA+IGluIHRoZSBQQ0lFX0NMSUVOVF9QT1dF
Ul9DT04gcmVnaXN0ZXIgdG8gbWF0Y2ggdGhlIGhhcmR3YXJlIGltcGxlbWVudGF0aW9uLgo+ID4g
PiA+ID4KPiA+ID4gPiA+IEZvciBtb3JlIGRldGFpbHMsIHNlZSBzZWN0aW9uICcxOC42LjYuNCBM
MSBTdWJzdGF0ZScgaW4gdGhlIFJLMzY1OCBUUk0gMS4xCj4gPiA+ID4gPiBQYXJ0IDIsIG9yIHNl
Y3Rpb24gJzExLjYuNi40IEwxIFN1YnN0YXRlJyBpbiB0aGUgUkszNTg4IFRSTSAxLjAgUGFydDIu
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gTWVhbndoaWxlLCBmb3IgdGhlIEVQIG1vZGUsIHdlIGhhdmVu
J3QgcHJlcGFyZWQgZW5vdWdoIHRvIGFjdHVhbGx5IHN1cHBvcnQKPiA+ID4gPiA+IEwxIFBNIFN1
YnN0YXRlcyB5ZXQuIFNvIGRpc2FibGUgaXQgbm93IHVudGlsIHByb3BlciBzdXBwb3J0IGlzIGFk
ZGVkIGxhdGVyLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8
c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+ID4gPiA+ID4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+
ID4KPiA+ID4gPiA+IENoYW5nZXMgaW4gdjM6Cj4gPiA+ID4gPiAtIHJlcGhyZWFzZSB0aGUgY2hh
bmdlbG9nCj4gPiA+ID4gPiAtIHVzZSBGSUVMRF9QUkVQX1dNMTYKPiA+ID4gPiA+IC0gcmVuYW1l
IHRvIHJvY2tjaGlwX3BjaWVfY29uZmlndXJlX2wxc3ViCj4gPiA+ID4gPiAtIGRpc2FibGUgTDFz
cyBmb3IgRVAgbW9kZQo+ID4gPiA+ID4KPiA+ID4gPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiA+ID4g
PiAtIGRyb3Agb2ZfcGNpX2Nsa3JlcV9wcmVzbnQgQVBJCj4gPiA+ID4gPiAtIGRyb3AgZGVwZW5k
ZW5jeSBvZiBOaWtsYXMncyBwYXRjaAo+ID4gPiA+ID4KPiA+ID4gPiA+ICAgIGRyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDQzICsrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ID4gPiA+ID4gICAgMSBmaWxlIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKykK
PiA+ID4gPiA+Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1k
dy1yb2NrY2hpcC5jCj4gPiA+ID4gPiBpbmRleCAzZTI3NTJjLi4yNWQyNDc0IDEwMDY0NAo+ID4g
PiA+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5j
Cj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tj
aGlwLmMKPiA+ID4gPiA+IEBAIC02Miw2ICs2MiwxMiBAQAo+ID4gPiA+ID4gICAgLyogSW50ZXJy
dXB0IE1hc2sgUmVnaXN0ZXIgUmVsYXRlZCB0byBNaXNjZWxsYW5lb3VzIE9wZXJhdGlvbiAqLwo+
ID4gPiA+ID4gICAgI2RlZmluZSBQQ0lFX0NMSUVOVF9JTlRSX01BU0tfTUlTQwkweDI0Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gKy8qIFBvd2VyIE1hbmFnZW1lbnQgQ29udHJvbCBSZWdpc3RlciAqLwo+
ID4gPiA+ID4gKyNkZWZpbmUgUENJRV9DTElFTlRfUE9XRVJfQ09OCQkweDJjCj4gPiA+ID4gPiAr
I2RlZmluZSAgUENJRV9DTEtSRVFfUkVBRFkJCUZJRUxEX1BSRVBfV00xNihCSVQoMCksIDEpCj4g
PiA+ID4gPiArI2RlZmluZSAgUENJRV9DTEtSRVFfTk9UX1JFQURZCQlGSUVMRF9QUkVQX1dNMTYo
QklUKDApLCAwKQo+ID4gPiA+ID4gKyNkZWZpbmUgIFBDSUVfQ0xLUkVRX1BVTExfRE9XTgkJRklF
TERfUFJFUF9XTTE2KEdFTk1BU0soMTMsIDEyKSwgMSkKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICAg
IC8qIEhvdCBSZXNldCBDb250cm9sIFJlZ2lzdGVyICovCj4gPiA+ID4gPiAgICAjZGVmaW5lIFBD
SUVfQ0xJRU5UX0hPVF9SRVNFVF9DVFJMCTB4MTgwCj4gPiA+ID4gPiAgICAjZGVmaW5lICBQQ0lF
X0xUU1NNX0FQUF9ETFkyX0VOCQlCSVQoMSkKPiA+ID4gPiA+IEBAIC04NSw2ICs5MSw3IEBAIHN0
cnVjdCByb2NrY2hpcF9wY2llIHsKPiA+ID4gPiA+ICAgIAlzdHJ1Y3QgcmVndWxhdG9yICp2cGNp
ZTN2MzsKPiA+ID4gPiA+ICAgIAlzdHJ1Y3QgaXJxX2RvbWFpbiAqaXJxX2RvbWFpbjsKPiA+ID4g
PiA+ICAgIAljb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9vZl9kYXRhICpkYXRhOwo+ID4gPiA+
ID4gKwlib29sIHN1cHBvcnRzX2Nsa3JlcTsKPiA+ID4gPiA+ICAgIH07Cj4gPiA+ID4gPgo+ID4g
PiA+ID4gICAgc3RydWN0IHJvY2tjaGlwX3BjaWVfb2ZfZGF0YSB7Cj4gPiA+ID4gPiBAQCAtMjAw
LDYgKzIwNywzNyBAQCBzdGF0aWMgYm9vbCByb2NrY2hpcF9wY2llX2xpbmtfdXAoc3RydWN0IGR3
X3BjaWUgKnBjaSkKPiA+ID4gPiA+ICAgIAlyZXR1cm4gRklFTERfR0VUKFBDSUVfTElOS1VQX01B
U0ssIHZhbCkgPT0gUENJRV9MSU5LVVA7Cj4gPiA+ID4gPiAgICB9Cj4gPiA+ID4gPgo+ID4gPiA+
ID4gKy8qCj4gPiA+ID4gPiArICogU2VlIGUuZy4gc2VjdGlvbiAnMTEuNi42LjQgTDEgU3Vic3Rh
dGUnIGluIHRoZSBSSzM1ODggVFJNIFYxLjAgZm9yIHRoZSBzdGVwcwo+ID4gPiA+ID4gKyAqIG5l
ZWRlZCB0byBzdXBwb3J0IEwxIHN1YnN0YXRlcy4gQ3VycmVudGx5LCBqdXN0IGVuYWJsZSBMMSBz
dWJzdGF0ZXMgZm9yIFJDCj4gPiA+ID4gPiArICogbW9kZSBpZiBDTEtSRVEjIGlzIHByb3Blcmx5
IGNvbm5lY3RlZCBhbmQgc3VwcG9ydHMtY2xrcmVxIGlzIHByZXNlbnQgaW4gRFQuCj4gPiA+ID4g
PiArICogRm9yIEVQIG1vZGUsIHRoZXJlIGFyZSBtb3JlIHRoaW5ncyBzaG91bGQgYmUgZG9uZSB0
byBhY3R1YWxseSBzYXZlIHBvd2VyIGluCj4gPiA+ID4gPiArICogTDEgc3Vic3RhdGVzLCBzbyBk
aXNhYmxlIEwxIHN1YnN0YXRlcyB1bnRpbCB0aGVyZSBpcyBwcm9wZXIgc3VwcG9ydC4KPiA+ID4g
PiA+ICsgKi8KPiA+ID4gPiA+ICtzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9s
MXN1YihzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ICsJc3RydWN0
IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0gdG9fcm9ja2NoaXBfcGNpZShwY2kpOwo+ID4gPiA+
ID4gKwl1MzIgY2FwLCBsMXN1YmNhcDsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsJLyogRW5hYmxl
IEwxIHN1YnN0YXRlcyBpZiBDTEtSRVEjIGlzIHByb3Blcmx5IGNvbm5lY3RlZCAqLwo+ID4gPiA+
ID4gKwlpZiAocm9ja2NoaXAtPnN1cHBvcnRzX2Nsa3JlcSAmJiByb2NrY2hpcC0+ZGF0YS0+bW9k
ZSA9PSBEV19QQ0lFX1JDX1RZUEUgKSB7Cj4gPiA+ID4gPiArCQlyb2NrY2hpcF9wY2llX3dyaXRl
bF9hcGIocm9ja2NoaXAsIFBDSUVfQ0xLUkVRX1JFQURZLCBQQ0lFX0NMSUVOVF9QT1dFUl9DT04p
Owo+ID4gPiA+ID4gKwkJcmV0dXJuOwo+ID4gPiA+ID4gKwl9Cj4gPiA+ID4gPiArCj4gPiA+ID4g
PiArCS8qIE90aGVyd2lzZSwgcHVsbCBkb3duIENMS1JFUSMgYW5kIGRpc2FibGUgTDEgUE0gc3Vi
c3RhdGVzICovCj4gPiA+ID4gPiArCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwg
UENJRV9DTEtSRVFfUFVMTF9ET1dOIHwgUENJRV9DTEtSRVFfTk9UX1JFQURZLAo+ID4gPiA+ID4g
KwkJCQkgUENJRV9DTElFTlRfUE9XRVJfQ09OKTsKPiA+ID4gPgo+ID4gPiA+IExvb2tzIGxpa2Ug
eW91IGZvcmNlIHB1bGwgZG93biBjbGtyZXEgc2hvdWxkIGJlIGVub3VnaCwgbmVlZG4ndCBkaXNh
YmxlCj4gPiA+ID4gTDFTUy4gd2hlbiBSQyBmb3JjZSBjbGtyZXEgaXMgbG93LCBSZWYgQ0xLIGFs
d2F5cyBvbiBldmVuIGlmIEwxU1MgZW5hYmxlZC4KPiA+ID4gPgo+ID4gPiA+IE9mIGNvdXJzZSBp
dCBkZXBlbmQgb24gaGFyZHdhcmUgaW1wbGVtZW50YXRpb24sIEJ1dCBJIHRoaW5rIEZVTExfRE9X
TiBoYXZlCj4gPiA+ID4gaGlnaCBwcmlvcml0eSB0byBmb3JjZSBjbGtyZXEgdG8gbG93IHRoZW4g
UENJX0wxU1MgY29udHJvbC4KPiA+ID4gPgo+ID4gPgo+ID4gPiBIaSBGcmFuaywKPiA+ID4KPiA+
ID4gVGhhbmtzIGZvciB5b3VyIHJldmlldy4gVEJILCB0aGUgYmFzaWMgaWRlYSBoZXJlIEkgdGhp
bmsgaXMgbm90IHRvCj4gPiA+IGFkdmVydGlzZSBhIGNhcGFiaWxpdHkgaWYgdGhlIEhXIGFzIHdo
b2xlIGhhc24ndCBiZWVuIHdlbGwgcHJlcGFyZWQgdG8KPiA+ID4gc3VwcG9ydCBpdCB5ZXQuIFNv
IEknZCBwcmVmZXIgdG8ga2VlcCBpdCBhcy1pcy4KPiA+ID4KPiA+Cj4gPiBJZiB0aGF0LCBJIHBy
ZWZlciBkbyBpdCBhdCBkd2MgY29tbW9uIGRyaXZlciBvciBwcm92aWRlIGhlbHBlciBmdW5jdGlv
biB0bwo+ID4gYXZvaWQgb3RoZXIgdmVuZG9yIHRvIGNvcHkgc2FtZSBsb2dpYy4KPgo+IFJpZ2h0
LCBkZWZpbml0ZWx5IHdlIGNvdWxkIGltcHJvdmUgaXQgb25jZSBhbm90aGVyIGRyaXZlciBuZWVk
IGl0LiA6KQoKQmFzaWMgcGNpLWlteDYgZG8gc2ltaWxhciB0aGluZ3MgYXQKCmh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2lteC8yMDI1MTAxNTAzMDQyOC4yOTgwNDI3LTEtaG9uZ3hpbmcuemh1QG54
cC5jb20vCgpKdXN0IGhhdmUgbm90IGNsZWFuIGwxc3ViY2FwLgoKRnJhbmsKPgo+ID4KPiA+IEZy
YW5rCj4gPgo+ID4gPiA+IEZyYW5rCj4gPiA+ID4KPiA+ID4gPiA+ICsJY2FwID0gZHdfcGNpZV9m
aW5kX2V4dF9jYXBhYmlsaXR5KHBjaSwgUENJX0VYVF9DQVBfSURfTDFTUyk7Cj4gPiA+ID4gPiAr
CWlmIChjYXApIHsKPiA+ID4gPiA+ICsJCWwxc3ViY2FwID0gZHdfcGNpZV9yZWFkbF9kYmkocGNp
LCBjYXAgKyBQQ0lfTDFTU19DQVApOwo+ID4gPiA+ID4gKwkJbDFzdWJjYXAgJj0gfihQQ0lfTDFT
U19DQVBfTDFfUE1fU1MgfCBQQ0lfTDFTU19DQVBfQVNQTV9MMV8xIHwKPiA+ID4gPiA+ICsJCQkg
ICAgICBQQ0lfTDFTU19DQVBfQVNQTV9MMV8yIHwgUENJX0wxU1NfQ0FQX1BDSVBNX0wxXzEgfAo+
ID4gPiA+ID4gKwkJCSAgICAgIFBDSV9MMVNTX0NBUF9QQ0lQTV9MMV8yKTsKPiA+ID4gPiA+ICsJ
CWR3X3BjaWVfd3JpdGVsX2RiaShwY2ksIGNhcCArIFBDSV9MMVNTX0NBUCwgbDFzdWJjYXApOwo+
ID4gPiA+ID4gKwl9Cj4gPiA+ID4gPiArfQo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gICAgc3RhdGlj
IHZvaWQgcm9ja2NoaXBfcGNpZV9lbmFibGVfbDBzKHN0cnVjdCBkd19wY2llICpwY2kpCj4gPiA+
ID4gPiAgICB7Cj4gPiA+ID4gPiAgICAJdTMyIGNhcCwgbG5rY2FwOwo+ID4gPiA+ID4gQEAgLTI2
NCw2ICszMDIsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0KHN0cnVjdCBk
d19wY2llX3JwICpwcCkKPiA+ID4gPiA+ICAgIAlpcnFfc2V0X2NoYWluZWRfaGFuZGxlcl9hbmRf
ZGF0YShpcnEsIHJvY2tjaGlwX3BjaWVfaW50eF9oYW5kbGVyLAo+ID4gPiA+ID4gICAgCQkJCQkg
cm9ja2NoaXApOwo+ID4gPiA+ID4KPiA+ID4gPiA+ICsJcm9ja2NoaXBfcGNpZV9jb25maWd1cmVf
bDFzdWIocGNpKTsKPiA+ID4gPiA+ICAgIAlyb2NrY2hpcF9wY2llX2VuYWJsZV9sMHMocGNpKTsK
PiA+ID4gPiA+Cj4gPiA+ID4gPiAgICAJcmV0dXJuIDA7Cj4gPiA+ID4gPiBAQCAtMzAxLDYgKzM0
MCw3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZXBfaW5pdChzdHJ1Y3QgZHdfcGNpZV9l
cCAqZXApCj4gPiA+ID4gPiAgICAJc3RydWN0IGR3X3BjaWUgKnBjaSA9IHRvX2R3X3BjaWVfZnJv
bV9lcChlcCk7Cj4gPiA+ID4gPiAgICAJZW51bSBwY2lfYmFybm8gYmFyOwo+ID4gPiA+ID4KPiA+
ID4gPiA+ICsJcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfbDFzdWIocGNpKTsKPiA+ID4gPiA+ICAg
IAlyb2NrY2hpcF9wY2llX2VuYWJsZV9sMHMocGNpKTsKPiA+ID4gPiA+ICAgIAlyb2NrY2hpcF9w
Y2llX2VwX2hpZGVfYnJva2VuX2F0c19jYXBfcmszNTg4KGVwKTsKPiA+ID4gPiA+Cj4gPiA+ID4g
PiBAQCAtNDEyLDYgKzQ1Miw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9yZXNvdXJjZV9n
ZXQoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiA+ID4gPiA+ICAgIAkJcmV0dXJuIGRl
dl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUihyb2NrY2hpcC0+cnN0KSwKPiA+ID4gPiA+
ICAgIAkJCQkgICAgICJmYWlsZWQgdG8gZ2V0IHJlc2V0IGxpbmVzXG4iKTsKPiA+ID4gPiA+Cj4g
PiA+ID4gPiArCXJvY2tjaGlwLT5zdXBwb3J0c19jbGtyZXEgPSBvZl9wcm9wZXJ0eV9yZWFkX2Jv
b2wocGRldi0+ZGV2Lm9mX25vZGUsCj4gPiA+ID4gPiArCQkJCQkJCSAgInN1cHBvcnRzLWNsa3Jl
cSIpOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gICAgCXJldHVybiAwOwo+ID4gPiA+ID4gICAgfQo+
ID4gPiA+ID4KPiA+ID4gPiA+IC0tCj4gPiA+ID4gPiAyLjcuNAo+ID4gPiA+ID4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ID4gPiA+ID4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gPiA+ID4gPiBMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+ID4gPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gPiA+ID4KPiA+ID4KPiA+
ID4KPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+ID4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gPiA+IExpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
PiA+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
