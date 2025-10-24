Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FC3FCCD193
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 03:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AyGLuYf18jq1d3IKVaHzsGpeluH4XkGkOhp5f7dWTgs=; b=WfuIFBlxXZrviT
	hkc2Fu8OXf3EBNHa0AKBgSJ439bBi0oMsy5JiIffkqr6C04pChpOIBJ46fV5PC0Hczsn/pHaSzJWj
	dnjAKNTxhFha6tDIO3Eudbw+Gan0O4Kb1cmypOUJ2Vdu2j7EjYtMtJz8feENxAHzUIIJyF+IFJ/m+
	PAIbLR9ICIckSh0vVA5xdMOGHcGl6bJS5KsHhKD18Uu/uE+nDJujOfh3mkT2kyJivH+eureCb+rp8
	KUX33OcckTnajTQ+hG4XcS5Qbe3ZUUpJ2Xxh4P7oxj5S7JF9JlTRYsSod4I8t9oB3i4rdAWI8OhAg
	/1XHhnV1HwTrcp5IXh5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC8Bk-000000087pU-06yY;
	Fri, 24 Oct 2025 03:10:00 +0000
Received: from mail-northeuropeazon11010013.outbound.protection.outlook.com ([52.101.84.13] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC8Bh-000000087nw-2HoV
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Oct 2025 03:09:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FIT9B3m4snFwHaoAg9HeSDpFl0NtPgp09b2yrhbTjdtwcfaanv1DzQU1SjfubqO1il+EsVQfQMNXdn0dCwwBFfGOD/pOIRsXHNxozO2mNJnPqdw93NGKFz6KGohjAtm1BM9Is/U96Zr4uXuPJKoEafBm7rKNXwI/rkFrY/JsY0RrkHDy5IC6eQdMLsexSUj7vIeDytGIDfhidqmxNt48nph4CEb221Yd9TC/R6WwW/11sH6FfUyKnhHKXko9AnZ/2lSzNn+//4iXn+TzuWDF8ieJTogDhImyRyjMDXhRHI9Us7jouxyUgCO99t91qt4Xz96euy5swBQ9IxEVbm7gdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lxwmJBb3/19ruQgQs8zNQ3ETdDFXe8uFNk96RNtT0/Q=;
 b=UFk+Ajf0mcdq1HGWS5w3L/ecyUdfvyKVG/rzm7ADOJEqOKSNntBm1NNH1uOOgbJm2dL8+IvoBwklvdZd/sFRtnkkWE9ySdFHuZIswMWCP9J4GqA5SiADMRJMvl/gtS/Wz13FRJkuDjplgGmys7zNyqg3Ki9ow3P3wkFWB2+E5vpEhjC6cOThO5QSUS98dAB0CEuZma3d1bEKdRWzndCgn5y7q5tNmWQ9cf2NdkZFdopyyovOV+BGY7aQc5ajB2ZB9Rv2Y047H+9Di1kA88oddPtr080Sq5KsGQfj8KNqkFHUR1LGSVb+d7M3jP7WW0PCB+uF2OBFrmIa74E4jKzYig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lxwmJBb3/19ruQgQs8zNQ3ETdDFXe8uFNk96RNtT0/Q=;
 b=P7E6kpalcazcZQ0l0IDg7pH24iDCBL9uyrukTYGoGfTKQ2P7zGFGwIyDsSRtpr4jLlO40MlvNApkisvnPKjxxA1FB/d+xbWhg3Ui7Iu71BxlGPOeggE+uW73qD8nLlKUUXQVS1NQ6hAbv8EhD3BU5/ejzpu8+R0cZyPpoIS4UcXyjmmZ1tNloYSzwD2QHVePuJOT7LebUafBXcIEJZmBL5e+fLtWyKS0pFXqHDstmHnEsTzMJ77xoWGejM0cE4Q9zMPnbittNcNCdGj3R5Q+S/AM9XB21hz39mzhuGrm3l59MC/1OdqbAMQCTHDG7gd9EvWFT4PwRHDscZwD9GwMPA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXSPRMB0053.eurprd04.prod.outlook.com (2603:10a6:102:23f::21)
 by DU2PR04MB9020.eurprd04.prod.outlook.com (2603:10a6:10:2e3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 03:09:54 +0000
Received: from PAXSPRMB0053.eurprd04.prod.outlook.com
 ([fe80::504f:2a06:4579:5f15]) by PAXSPRMB0053.eurprd04.prod.outlook.com
 ([fe80::504f:2a06:4579:5f15%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 03:09:53 +0000
Date: Thu, 23 Oct 2025 23:09:48 -0400
From: Frank Li <Frank.li@nxp.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v3 1/2] PCI: dw-rockchip: Configure L1sub support
Message-ID: <aPrt/H4lF+DrF4Ej@lizhi-Precision-Tower-5810>
References: <1761187883-150120-1-git-send-email-shawn.lin@rock-chips.com>
 <aPpN2NX7IkAEU9Rh@lizhi-Precision-Tower-5810>
 <de9371a6-654c-4360-a34d-7f8a20848a6a@rock-chips.com>
Content-Disposition: inline
In-Reply-To: <de9371a6-654c-4360-a34d-7f8a20848a6a@rock-chips.com>
X-ClientProxiedBy: CH0PR04CA0075.namprd04.prod.outlook.com
 (2603:10b6:610:74::20) To PAXSPRMB0053.eurprd04.prod.outlook.com
 (2603:10a6:102:23f::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXSPRMB0053:EE_|DU2PR04MB9020:EE_
X-MS-Office365-Filtering-Correlation-Id: cb58eba2-1e7d-49b8-4f44-08de12aacda6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|19092799006|52116014|376014|1800799024|13003099007|38350700014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ajVoZExEcC9QcXVYUkFEa0ZrQXA1V1MrMGZIWS9wL1MzQ0pQcFpWSWpaOG9n?=
 =?utf-8?B?QW1wdWUvWk05cU5SYTdwN1F5WjM4czBScjBvRXVPVWNCcnF0ODQ0eFZaQmto?=
 =?utf-8?B?d2Z5OWlnOTd5QzRVY20zMEJ3aDdwSzdmN3J0M2Q4aGxLTU50STJPdWlZQTgr?=
 =?utf-8?B?eTBiVGNZNkoraWVJazFHRThWSmtTVHZkRGlxVFoxbHFRQVNFMjVHb05BTzcv?=
 =?utf-8?B?WkozWDZuM0FBdy9KS1U4Qk4rb2FFd3graDNVNWtZR3BrMGk5aWh5T0lCNXJ3?=
 =?utf-8?B?YlFNbDJXbm1janovNnBPdUd5NXZMaE95ekk2RjR0TDdjVlVNNVMrSGZYZEdP?=
 =?utf-8?B?SW1TeWpCUVErSDE2VUdvWXJzaDh6aEE5Qkt5cUhSMkQvYllRWFlueXNWaE05?=
 =?utf-8?B?YUV0bnpITzRieW85dTNHZ21ITDMwOEJ3ZTZaNTErSEhSQi8zSzBGeVNDOW4x?=
 =?utf-8?B?aDhTM1Nid3dyMG5mVmI4b1h5SnkyY2lidHpzTVdWUStPL3FHLzkzSW84dHlz?=
 =?utf-8?B?d2dCWFVORXJQSzVXdW12ZjI0dmNuU2NTR3F1SUpEYlFXWWQ0REhIeDJJZjVC?=
 =?utf-8?B?LzMvQzdUSnZsWVgwYXFvelU3L0FZNlI4QU04WmIyZ21NRnMzMGR6VlFDVHZN?=
 =?utf-8?B?WFZvZlVMYWlVWkFpbWNWTkdXL1B4cDFyVlZTa1UwV2VJdjF1emYyNU53citL?=
 =?utf-8?B?Q21DY0k3aERWejBHMmFadnhmMDJpSHNDSEZDKzc4elpMNzNOblU3TnM5ektx?=
 =?utf-8?B?REpFbWZocXA3bDlVSy9RdVV6Zi83bnB6ajZCZWtKOXNOWVBESVFmKzJnMk9k?=
 =?utf-8?B?RGhaTWFYL29QdnNqSGI0dE50UXNVSWlEMFB4MldpR1gxT01aTmxNSkdOc1Z5?=
 =?utf-8?B?MjZYSmd0dTZpQkxlYWoyQithc2NteTg3MURnMzMzZ1Y1UnJqMXdUcXVNazFU?=
 =?utf-8?B?NktERmdqSHUxU0s4aHBTalA3MTFWcEwwWTIreUhwcDVBTWFQb2hIN0thUnRK?=
 =?utf-8?B?SUp3SkZwMXZ2NkVNYTdGcWZYQ21uYmRQOE9vNWZQMmxkVWY0TXI1eUFBM3VG?=
 =?utf-8?B?bEcxeWlTV2UxZ2FPRGd4YkdrZmJmUjlhNWRQbmdwcTVvc243aEtjS0tROURh?=
 =?utf-8?B?KzZiVDBnZGxIKys3bWJsYW9JZU4xQXdRWXQ4SmtKNTdPN1J6bG5LMGJXcW9n?=
 =?utf-8?B?RnVSVVZ0YWpjelpwMzRCNHdYUWNZUzVLSWFoUEw5eld2Uzgvd3BaSithYzNx?=
 =?utf-8?B?b0s4aCsrOHFrTU81aVREQVc0SXZQd2lJbVB2cXQwRlZ6NGVvUW52Z1JpUXA0?=
 =?utf-8?B?N0c2bm9xY29VRm1yNllYREJ3WWduK1QyaFdINXVRQnVKOU9FOXkrMFRzeCtz?=
 =?utf-8?B?b3cvS0xFZnNJNjhZQkRyY1U3WVh1MStxOVpla1Y2U0tBL2lOS0R5K3NSd1FW?=
 =?utf-8?B?RUcva2JvVVlLbXJCM2MxS3VOVWpkOU5yOE9zL2FPRDI0YmJRWnhiT3ZBZHRE?=
 =?utf-8?B?RjRGb05VeWVqZ1RqVURkTFIrWjlZNi9xV1ROSnB1OUJDTXBZOWtCdFM5VExq?=
 =?utf-8?B?S2IxeXR1dmp2dHJsVkRCSUpDQTRkKzNxeFJld2J5bjQxc1pXdFNFdS9tZG5k?=
 =?utf-8?B?YnJ4S21ubE05ZTd0SmFrbFpXTjI2SHMya2kvVG50eCtUSHVzQlgvVFc4bndk?=
 =?utf-8?B?UGcyandWamFZUUVwVngvSEkxZ3ZScWR5b2FHYjYxK2UySUNiK1ZHZEVRODhC?=
 =?utf-8?B?bE5rSGk2RkgzS2JxU053a0NuTE1hSU5icDNTd1BkQkFoZHdoNUF0YkRmbHln?=
 =?utf-8?B?cCtjeVIxSzdFbnRlYyt1OTRPT3YyVi92bE5rSGNPdHdlREk4QmZKdEJiVnNY?=
 =?utf-8?B?ekErYkdDdWFQWnlpTzJxVlhBVGtXbDMyS0Z1SmxCd1pUK2dOS0Z6Vmc4YlBm?=
 =?utf-8?B?OE84eUpicDY1Umkxdms2Q2JMcW4wdEpmclFmUjN4OFk3TU4yR2pKZ1Awc1FB?=
 =?utf-8?B?Q2JvZ3lCeEFHdzMrZWpxd3JnQm9RQnNKZXlJVTgvQTkzYWhxYk14MzRZMEVO?=
 =?utf-8?Q?Mz1VBv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXSPRMB0053.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(52116014)(376014)(1800799024)(13003099007)(38350700014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUdnYmhJTzMvRmVORU02ZTFsLytvalFFYjRLUSs2NXpTTmtJKy82d2MyV2VR?=
 =?utf-8?B?NXduM0p1T3ZrU1c5UXVtZzlPOU1jNjdDSGdXUTQ4dWF4dzIxa3UvUnYyU1Z2?=
 =?utf-8?B?MldEcGJBTHZoeXJ6NGUwMExxN3ByOE1QVjBCWGpubGl4RkNrdzZZYlJFVnRN?=
 =?utf-8?B?KzNxWHk4czRYQy9zL0piUitXU0lmaW91MTZjQWhYcmVOOEVPKytXMGJHNHNG?=
 =?utf-8?B?RXB2Rmt1d0tUOFA5U28yS29MZVFYbHh3R2dCYTNTTVUway9aSHE2ZFIvRWFL?=
 =?utf-8?B?TW5qTXJ2QTR2STdlaWdrRzkzZHhXWFFrbU1wREdrQU1yWERScHZDWmdBbS9a?=
 =?utf-8?B?cWM0VG1DaG8vN3R3L0k1ZCtSTVJwZmhWRnY5R2dtckxZMjdxL2pjWnhwalVn?=
 =?utf-8?B?Y0VKUnk2SmNqT0FnUStIOG9xVGhkREZDMUMwck54anozYm9VL2lBc05TSmdt?=
 =?utf-8?B?ZFpwTFlZRGFVKzJTMWNVQUtNYWJER1dtVS9KTnMzUnV3Z1I4eWhuUndpN2dl?=
 =?utf-8?B?Z0RLdkV3MTBpMi96VHBZNFdpa0RRVVJvbWEyVTZxQ1pmY083WkhPNU5nUEN2?=
 =?utf-8?B?MDVwNEM5RzgxRkF4VjkxendUWDF0eXl1TTVobnlvUTRIVG5uVi9GaGlKUkV1?=
 =?utf-8?B?UytSU2xJWHMyU0RuN1hRdjBQZDI5Q3VUQlNDenZYdGFOcXljZlJwQWFLb0hY?=
 =?utf-8?B?MmdjZjUxeXJJNnh1Y05XT2IySTlWbW4rVlhQbnQ2d1VRdHZtcFZZbzN2UExa?=
 =?utf-8?B?aUZXQkViell6U0NzWUUxMnlCSTZseEtySHVaa3k0YTFSNW4rYlNqTXRCYVlQ?=
 =?utf-8?B?WWdQUkdJOHpDZHdmY0MzNHZUMEtRZDNOSHkxcjB6eUJ6VkJFcndDVFZUeWFi?=
 =?utf-8?B?akxHV1NwTmtUTFl1NE1LVUVyWTNYSTJxTHArN1Q1Y2t0L0dpUXgrWld0c2ZS?=
 =?utf-8?B?QWlEZ1YwN1hxdFVtSk81bExXdTFFZjd2MVJWVU1icWRIZk9Za29JcWJwZktI?=
 =?utf-8?B?cUZrZks3bjN4YldQSjVrQ3U0d0hQeFJzemZWS3pIRTMzdnhyUmtxcCtKNHFz?=
 =?utf-8?B?RVUwZlhhWURLMzhBZUY1eHEyRHB5WTlvaWl0QldpRmlpWk9NT0VhSC9UR1Ew?=
 =?utf-8?B?T05LMG9NdjNiNVNWTnRkVXVoNEltTGlnY3MxeHVGclV2ZUxjR3JQQlUzZUVy?=
 =?utf-8?B?RStEb1BXU0F5L210eTZ6Z29RdnE2c3VCMmpIeTBpRklLWWR2RGFibE1oaXFm?=
 =?utf-8?B?M1JDNk1YY3FrY3hBZkROZW94dzJvdnlqMVN1eUo3dEg5aFRiVm83TnBSVU1x?=
 =?utf-8?B?MThZb3h1d2M4bjJ1NEJJbzVRWGpxYmhYelRxd082U3I3Y1hJU2xSQU41V2hv?=
 =?utf-8?B?cFZwUkV4Q1NmcW94Q0lobmRwUTJLblNxOTRPM3I0emkxeG5YMlc4UkdqQ3VZ?=
 =?utf-8?B?VXc3bTA4NzhGWEFZbktJazQyVnhLN2I5NnRubnV0ckRUT0k0aXc5Uzg1d2Nh?=
 =?utf-8?B?Nm9RQVdSNndCRU1JaEZLZHVwTGwwKzJvSVg1MFF2VXZHY0ZBUU1FRjlReTRV?=
 =?utf-8?B?amsxeWZuUFpuVDVJSmlCeHJjWG9STWFCMENTZDVuRldQbnpOcXdjUzR3RDN2?=
 =?utf-8?B?QitsbDRQai9VMXl5cjhEUnlDbEtQcW1tVnhDQUxrSnhYemlReU9jZTFJNTdD?=
 =?utf-8?B?TVM2bXBNbmJaY2FibmVLeUhhOUJLTGdkY2hsVGF3dkNCNW1XOTNkc21kMFRD?=
 =?utf-8?B?cW5KaUNBT0FreS9kQ3phUnY4SnNqSHlrUnNwcjU1YW9uSXlhdk0razJnYkIy?=
 =?utf-8?B?Vnc2WkhnQUUrcmFPUW1xd2g0OVRBT2Y3RmlsRnpxcVJzWHJ0alhHOWR0Zmww?=
 =?utf-8?B?TElXdVZ6UFMxT2RJTUREbVRLS0sxUWRUQ2dsN0pReXV0STFkNGp5QStYVGFt?=
 =?utf-8?B?dHdJMmVBcGZyRGIyN3JzOGhhQW1YWnJjMEdRTFNmMTgzN1ZnNk9KbVlIaWgy?=
 =?utf-8?B?VC8wWWpMYmxVOWJRckNJOWgzS0R4eFFOeGVONXkybDFMREhubDUxMzBmVnpr?=
 =?utf-8?B?U25iVFdiVWU0aW9FWWxHbmYvcjU4SGszZm9iNXJHeVR6ZXl1U2R1eERXMWRG?=
 =?utf-8?Q?J+54=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb58eba2-1e7d-49b8-4f44-08de12aacda6
X-MS-Exchange-CrossTenant-AuthSource: PAXSPRMB0053.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 03:09:53.8499
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NCopjBhnlDXMlwMvTwzX2O/eJuNG+6Zdm9P202QrtVlUVa7OG2xZKFmvAI9uK91Y0ysOUuZyauoeF+zP0soqxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_200957_728440_D0DB3A90 
X-CRM114-Status: GOOD (  35.81  )
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

T24gRnJpLCBPY3QgMjQsIDIwMjUgYXQgMDg6NDM6MjhBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI1LzEwLzIzIOaYn+acn+WbmyAyMzo0NiwgRnJhbmsgTGkg5YaZ6YGTOgo+ID4g
T24gVGh1LCBPY3QgMjMsIDIwMjUgYXQgMTA6NTE6MjJBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+ID4gPiBMMSBQTSBTdWJzdGF0ZXMgZm9yIFJDIG1vZGUgcmVxdWlyZSBzdXBwb3J0IGluIHRo
ZSBkdy1yb2NrY2hpcCBkcml2ZXIKPiA+ID4gaW5jbHVkaW5nIHByb3BlciBoYW5kbGluZyBvZiB0
aGUgQ0xLUkVRIyBzaWRlYmFuZCBzaWduYWwuIEl0IGlzIG1vc3RseQo+ID4gPiBoYW5kbGVkIGJ5
IGhhcmR3YXJlLCBidXQgc29mdHdhcmUgc3RpbGwgbmVlZHMgdG8gc2V0IHRoZSBjbGtyZXEgZmll
bGRzCj4gPiA+IGluIHRoZSBQQ0lFX0NMSUVOVF9QT1dFUl9DT04gcmVnaXN0ZXIgdG8gbWF0Y2gg
dGhlIGhhcmR3YXJlIGltcGxlbWVudGF0aW9uLgo+ID4gPgo+ID4gPiBGb3IgbW9yZSBkZXRhaWxz
LCBzZWUgc2VjdGlvbiAnMTguNi42LjQgTDEgU3Vic3RhdGUnIGluIHRoZSBSSzM2NTggVFJNIDEu
MQo+ID4gPiBQYXJ0IDIsIG9yIHNlY3Rpb24gJzExLjYuNi40IEwxIFN1YnN0YXRlJyBpbiB0aGUg
UkszNTg4IFRSTSAxLjAgUGFydDIuCj4gPiA+Cj4gPiA+IE1lYW53aGlsZSwgZm9yIHRoZSBFUCBt
b2RlLCB3ZSBoYXZlbid0IHByZXBhcmVkIGVub3VnaCB0byBhY3R1YWxseSBzdXBwb3J0Cj4gPiA+
IEwxIFBNIFN1YnN0YXRlcyB5ZXQuIFNvIGRpc2FibGUgaXQgbm93IHVudGlsIHByb3BlciBzdXBw
b3J0IGlzIGFkZGVkIGxhdGVyLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4g
PHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiA+ID4KPiA+ID4gLS0tCj4gPiA+Cj4gPiA+IENo
YW5nZXMgaW4gdjM6Cj4gPiA+IC0gcmVwaHJlYXNlIHRoZSBjaGFuZ2Vsb2cKPiA+ID4gLSB1c2Ug
RklFTERfUFJFUF9XTTE2Cj4gPiA+IC0gcmVuYW1lIHRvIHJvY2tjaGlwX3BjaWVfY29uZmlndXJl
X2wxc3ViCj4gPiA+IC0gZGlzYWJsZSBMMXNzIGZvciBFUCBtb2RlCj4gPiA+Cj4gPiA+IENoYW5n
ZXMgaW4gdjI6Cj4gPiA+IC0gZHJvcCBvZl9wY2lfY2xrcmVxX3ByZXNudCBBUEkKPiA+ID4gLSBk
cm9wIGRlcGVuZGVuY3kgb2YgTmlrbGFzJ3MgcGF0Y2gKPiA+ID4KPiA+ID4gICBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCA0MyArKysrKysrKysrKysrKysr
KysrKysrKysrKysKPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKQo+ID4g
Pgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1y
b2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5j
Cj4gPiA+IGluZGV4IDNlMjc1MmMuLjI1ZDI0NzQgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ID4gPiArKysgYi9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiA+ID4gQEAgLTYyLDYgKzYy
LDEyIEBACj4gPiA+ICAgLyogSW50ZXJydXB0IE1hc2sgUmVnaXN0ZXIgUmVsYXRlZCB0byBNaXNj
ZWxsYW5lb3VzIE9wZXJhdGlvbiAqLwo+ID4gPiAgICNkZWZpbmUgUENJRV9DTElFTlRfSU5UUl9N
QVNLX01JU0MJMHgyNAo+ID4gPgo+ID4gPiArLyogUG93ZXIgTWFuYWdlbWVudCBDb250cm9sIFJl
Z2lzdGVyICovCj4gPiA+ICsjZGVmaW5lIFBDSUVfQ0xJRU5UX1BPV0VSX0NPTgkJMHgyYwo+ID4g
PiArI2RlZmluZSAgUENJRV9DTEtSRVFfUkVBRFkJCUZJRUxEX1BSRVBfV00xNihCSVQoMCksIDEp
Cj4gPiA+ICsjZGVmaW5lICBQQ0lFX0NMS1JFUV9OT1RfUkVBRFkJCUZJRUxEX1BSRVBfV00xNihC
SVQoMCksIDApCj4gPiA+ICsjZGVmaW5lICBQQ0lFX0NMS1JFUV9QVUxMX0RPV04JCUZJRUxEX1BS
RVBfV00xNihHRU5NQVNLKDEzLCAxMiksIDEpCj4gPiA+ICsKPiA+ID4gICAvKiBIb3QgUmVzZXQg
Q29udHJvbCBSZWdpc3RlciAqLwo+ID4gPiAgICNkZWZpbmUgUENJRV9DTElFTlRfSE9UX1JFU0VU
X0NUUkwJMHgxODAKPiA+ID4gICAjZGVmaW5lICBQQ0lFX0xUU1NNX0FQUF9ETFkyX0VOCQlCSVQo
MSkKPiA+ID4gQEAgLTg1LDYgKzkxLDcgQEAgc3RydWN0IHJvY2tjaGlwX3BjaWUgewo+ID4gPiAg
IAlzdHJ1Y3QgcmVndWxhdG9yICp2cGNpZTN2MzsKPiA+ID4gICAJc3RydWN0IGlycV9kb21haW4g
KmlycV9kb21haW47Cj4gPiA+ICAgCWNvbnN0IHN0cnVjdCByb2NrY2hpcF9wY2llX29mX2RhdGEg
KmRhdGE7Cj4gPiA+ICsJYm9vbCBzdXBwb3J0c19jbGtyZXE7Cj4gPiA+ICAgfTsKPiA+ID4KPiA+
ID4gICBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9vZl9kYXRhIHsKPiA+ID4gQEAgLTIwMCw2ICsyMDcs
MzcgQEAgc3RhdGljIGJvb2wgcm9ja2NoaXBfcGNpZV9saW5rX3VwKHN0cnVjdCBkd19wY2llICpw
Y2kpCj4gPiA+ICAgCXJldHVybiBGSUVMRF9HRVQoUENJRV9MSU5LVVBfTUFTSywgdmFsKSA9PSBQ
Q0lFX0xJTktVUDsKPiA+ID4gICB9Cj4gPiA+Cj4gPiA+ICsvKgo+ID4gPiArICogU2VlIGUuZy4g
c2VjdGlvbiAnMTEuNi42LjQgTDEgU3Vic3RhdGUnIGluIHRoZSBSSzM1ODggVFJNIFYxLjAgZm9y
IHRoZSBzdGVwcwo+ID4gPiArICogbmVlZGVkIHRvIHN1cHBvcnQgTDEgc3Vic3RhdGVzLiBDdXJy
ZW50bHksIGp1c3QgZW5hYmxlIEwxIHN1YnN0YXRlcyBmb3IgUkMKPiA+ID4gKyAqIG1vZGUgaWYg
Q0xLUkVRIyBpcyBwcm9wZXJseSBjb25uZWN0ZWQgYW5kIHN1cHBvcnRzLWNsa3JlcSBpcyBwcmVz
ZW50IGluIERULgo+ID4gPiArICogRm9yIEVQIG1vZGUsIHRoZXJlIGFyZSBtb3JlIHRoaW5ncyBz
aG91bGQgYmUgZG9uZSB0byBhY3R1YWxseSBzYXZlIHBvd2VyIGluCj4gPiA+ICsgKiBMMSBzdWJz
dGF0ZXMsIHNvIGRpc2FibGUgTDEgc3Vic3RhdGVzIHVudGlsIHRoZXJlIGlzIHByb3BlciBzdXBw
b3J0Lgo+ID4gPiArICovCj4gPiA+ICtzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2NvbmZpZ3Vy
ZV9sMXN1YihzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+ID4gPiArewo+ID4gPiArCXN0cnVjdCByb2Nr
Y2hpcF9wY2llICpyb2NrY2hpcCA9IHRvX3JvY2tjaGlwX3BjaWUocGNpKTsKPiA+ID4gKwl1MzIg
Y2FwLCBsMXN1YmNhcDsKPiA+ID4gKwo+ID4gPiArCS8qIEVuYWJsZSBMMSBzdWJzdGF0ZXMgaWYg
Q0xLUkVRIyBpcyBwcm9wZXJseSBjb25uZWN0ZWQgKi8KPiA+ID4gKwlpZiAocm9ja2NoaXAtPnN1
cHBvcnRzX2Nsa3JlcSAmJiByb2NrY2hpcC0+ZGF0YS0+bW9kZSA9PSBEV19QQ0lFX1JDX1RZUEUg
KSB7Cj4gPiA+ICsJCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgUENJRV9DTEtS
RVFfUkVBRFksIFBDSUVfQ0xJRU5UX1BPV0VSX0NPTik7Cj4gPiA+ICsJCXJldHVybjsKPiA+ID4g
Kwl9Cj4gPiA+ICsKPiA+ID4gKwkvKiBPdGhlcndpc2UsIHB1bGwgZG93biBDTEtSRVEjIGFuZCBk
aXNhYmxlIEwxIFBNIHN1YnN0YXRlcyAqLwo+ID4gPiArCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2Fw
Yihyb2NrY2hpcCwgUENJRV9DTEtSRVFfUFVMTF9ET1dOIHwgUENJRV9DTEtSRVFfTk9UX1JFQURZ
LAo+ID4gPiArCQkJCSBQQ0lFX0NMSUVOVF9QT1dFUl9DT04pOwo+ID4KPiA+IExvb2tzIGxpa2Ug
eW91IGZvcmNlIHB1bGwgZG93biBjbGtyZXEgc2hvdWxkIGJlIGVub3VnaCwgbmVlZG4ndCBkaXNh
YmxlCj4gPiBMMVNTLiB3aGVuIFJDIGZvcmNlIGNsa3JlcSBpcyBsb3csIFJlZiBDTEsgYWx3YXlz
IG9uIGV2ZW4gaWYgTDFTUyBlbmFibGVkLgo+ID4KPiA+IE9mIGNvdXJzZSBpdCBkZXBlbmQgb24g
aGFyZHdhcmUgaW1wbGVtZW50YXRpb24sIEJ1dCBJIHRoaW5rIEZVTExfRE9XTiBoYXZlCj4gPiBo
aWdoIHByaW9yaXR5IHRvIGZvcmNlIGNsa3JlcSB0byBsb3cgdGhlbiBQQ0lfTDFTUyBjb250cm9s
Lgo+ID4KPgo+IEhpIEZyYW5rLAo+Cj4gVGhhbmtzIGZvciB5b3VyIHJldmlldy4gVEJILCB0aGUg
YmFzaWMgaWRlYSBoZXJlIEkgdGhpbmsgaXMgbm90IHRvCj4gYWR2ZXJ0aXNlIGEgY2FwYWJpbGl0
eSBpZiB0aGUgSFcgYXMgd2hvbGUgaGFzbid0IGJlZW4gd2VsbCBwcmVwYXJlZCB0bwo+IHN1cHBv
cnQgaXQgeWV0LiBTbyBJJ2QgcHJlZmVyIHRvIGtlZXAgaXQgYXMtaXMuCj4KCklmIHRoYXQsIEkg
cHJlZmVyIGRvIGl0IGF0IGR3YyBjb21tb24gZHJpdmVyIG9yIHByb3ZpZGUgaGVscGVyIGZ1bmN0
aW9uIHRvCmF2b2lkIG90aGVyIHZlbmRvciB0byBjb3B5IHNhbWUgbG9naWMuCgpGcmFuawoKPiA+
IEZyYW5rCj4gPgo+ID4gPiArCWNhcCA9IGR3X3BjaWVfZmluZF9leHRfY2FwYWJpbGl0eShwY2ks
IFBDSV9FWFRfQ0FQX0lEX0wxU1MpOwo+ID4gPiArCWlmIChjYXApIHsKPiA+ID4gKwkJbDFzdWJj
YXAgPSBkd19wY2llX3JlYWRsX2RiaShwY2ksIGNhcCArIFBDSV9MMVNTX0NBUCk7Cj4gPiA+ICsJ
CWwxc3ViY2FwICY9IH4oUENJX0wxU1NfQ0FQX0wxX1BNX1NTIHwgUENJX0wxU1NfQ0FQX0FTUE1f
TDFfMSB8Cj4gPiA+ICsJCQkgICAgICBQQ0lfTDFTU19DQVBfQVNQTV9MMV8yIHwgUENJX0wxU1Nf
Q0FQX1BDSVBNX0wxXzEgfAo+ID4gPiArCQkJICAgICAgUENJX0wxU1NfQ0FQX1BDSVBNX0wxXzIp
Owo+ID4gPiArCQlkd19wY2llX3dyaXRlbF9kYmkocGNpLCBjYXAgKyBQQ0lfTDFTU19DQVAsIGwx
c3ViY2FwKTsKPiA+ID4gKwl9Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4gICBzdGF0aWMgdm9pZCBy
b2NrY2hpcF9wY2llX2VuYWJsZV9sMHMoc3RydWN0IGR3X3BjaWUgKnBjaSkKPiA+ID4gICB7Cj4g
PiA+ICAgCXUzMiBjYXAsIGxua2NhcDsKPiA+ID4gQEAgLTI2NCw2ICszMDIsNyBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0KHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiA+ID4g
ICAJaXJxX3NldF9jaGFpbmVkX2hhbmRsZXJfYW5kX2RhdGEoaXJxLCByb2NrY2hpcF9wY2llX2lu
dHhfaGFuZGxlciwKPiA+ID4gICAJCQkJCSByb2NrY2hpcCk7Cj4gPiA+Cj4gPiA+ICsJcm9ja2No
aXBfcGNpZV9jb25maWd1cmVfbDFzdWIocGNpKTsKPiA+ID4gICAJcm9ja2NoaXBfcGNpZV9lbmFi
bGVfbDBzKHBjaSk7Cj4gPiA+Cj4gPiA+ICAgCXJldHVybiAwOwo+ID4gPiBAQCAtMzAxLDYgKzM0
MCw3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZXBfaW5pdChzdHJ1Y3QgZHdfcGNpZV9l
cCAqZXApCj4gPiA+ICAgCXN0cnVjdCBkd19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21fZXAo
ZXApOwo+ID4gPiAgIAllbnVtIHBjaV9iYXJubyBiYXI7Cj4gPiA+Cj4gPiA+ICsJcm9ja2NoaXBf
cGNpZV9jb25maWd1cmVfbDFzdWIocGNpKTsKPiA+ID4gICAJcm9ja2NoaXBfcGNpZV9lbmFibGVf
bDBzKHBjaSk7Cj4gPiA+ICAgCXJvY2tjaGlwX3BjaWVfZXBfaGlkZV9icm9rZW5fYXRzX2NhcF9y
azM1ODgoZXApOwo+ID4gPgo+ID4gPiBAQCAtNDEyLDYgKzQ1Miw5IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfcGNpZV9yZXNvdXJjZV9nZXQoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiA+
ID4gICAJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIocm9ja2NoaXAt
PnJzdCksCj4gPiA+ICAgCQkJCSAgICAgImZhaWxlZCB0byBnZXQgcmVzZXQgbGluZXNcbiIpOwo+
ID4gPgo+ID4gPiArCXJvY2tjaGlwLT5zdXBwb3J0c19jbGtyZXEgPSBvZl9wcm9wZXJ0eV9yZWFk
X2Jvb2wocGRldi0+ZGV2Lm9mX25vZGUsCj4gPiA+ICsJCQkJCQkJICAic3VwcG9ydHMtY2xrcmVx
Iik7Cj4gPiA+ICsKPiA+ID4gICAJcmV0dXJuIDA7Cj4gPiA+ICAgfQo+ID4gPgo+ID4gPiAtLQo+
ID4gPiAyLjcuNAo+ID4gPgo+ID4gPgo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiA+
ID4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gPgo+Cj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
