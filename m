Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74667CEF163
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 12:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tT/ZdNmaCKzgrKPmm64RiJpFkCc0qTlKQ3JTTsqEbR8=; b=udjdUyLlqGp9YtVaVGU3AUZqi6
	8rSavqccXgAVPnmBQfaAm6rXgfzXQY+bdZ76+NPTxLa1lpsk9SK0IBD3VvToRsEm3LJwIhPJLmD9H
	bWjzg+J1E/8mzz/xUdt/mZ90EdgWkYnYEdEk0ZkwoGcRS81ve8v2qF3RrVsAKA/yiCmz4/gxiRWQL
	tjv95/oFWZVBi7P+eGdmzcMesFORc1NZ6pOailKewUlrZSt4D3VMpHOOUKEfDdmU+Z085llQmoYJ3
	IVOXSLGWkJpAPyYbFu3zicsT4D8jEmZrOx3jclybZWN87EYGrUtIaf6YjIgruUvBbUOC6SlqK7gKb
	5qE6miQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy9QU-00000005pkr-1Qhb;
	Tue, 08 Oct 2024 12:34:54 +0000
Received: from mail-am6eur05on20721.outbound.protection.outlook.com ([2a01:111:f403:2612::721] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy9ON-00000005pHY-4C4u;
	Tue, 08 Oct 2024 12:32:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uWT+7ze96jX37HYwvjwYaQLNGBrzPJ2wcxR4C1m5olMlqrJzADSdc3x/o1qg1lCKXURX4yVs8xThGtUddOMA0W3C1AEWkeHGakktwQ/oQEzJOh9nzoN3QZ+Y9zw+YP8HvrgQeiAiP9oTRJUv15cZBZ9nJlDCVEAVEaSgtPNehkPFcdPAALEwurrRCBs13s/S4nD1TTZ410hQ3lto8H5iPX7KTB4F2Tnzh9jlI4/OeRCg6KoT7VNtuyeb9Uy1VOZXyqBvfPd2SljUksBQC0kaX3xaZOU5/AMLCSJmm9X1UiO9lSEekTE1lHXKO9duLWWsN6qeW40+/bWTNBkz/2CRjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ajxepYPPG78fpdIUWj9Q8n69HSwpSvHxl386Z6q4a7E=;
 b=nuV2aS0jScwPm18Iz5JiCo/Un0BiAQgjXbbT2+OEwy4seedm+O5AL3iWKZcNrkV4TH3bcDeiDZZdKZy58NO4MzVWee6ydYU8xZACJLJwEJX8QlhV8CqaIrmbWcYmrCqYnzHfmFYU37O+8/h6WBWULmeP4jh0E2IH4BJCSYG708W4pS1Vob0lb3lRV+jZPQWpPV8oZ+XcdkoIZ29RxnIEk4AS7o+a8So4u0eaveMT4vdvbBkXDVkazUWen+1uVkj+s4EJNvNH1inHDAZsvDcbD6h/dHq+BbVbI3iBOj47gRlEAQ5CNjUA7D9WxdemxEtd/lp+Nm2IsCEACLV/87vIuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ajxepYPPG78fpdIUWj9Q8n69HSwpSvHxl386Z6q4a7E=;
 b=W/8u6br8fPmVjujfLudk+5izUhNP9zW9z8PLPEXVdHa+5GsXyh3DgJvhTX0ywQ20IJMq8V7UYYZqMmM5ns+LpeQHgP0qyUgcCW2NY3LzgU8qCvZnnhfZW0CyEsMgBCa9vC6MNR2bKiiJ+ohvYUfIcPt/qwxwvkAPG0Psz0wF6nE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PAXPR08MB6717.eurprd08.prod.outlook.com (2603:10a6:102:131::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Tue, 8 Oct
 2024 12:32:37 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 12:32:37 +0000
Message-ID: <e07990da-8ac6-43ae-8e21-14988ee5fcbe@wolfvision.net>
Date: Tue, 8 Oct 2024 14:32:35 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] arm64: dts: rockchip: Add PD to csi dphy node on
 rk356x
To: Diederik de Haas <didi.debian@cknow.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>, Samuel Holland <samuel@sholland.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241008113344.23957-1-didi.debian@cknow.org>
 <20241008113344.23957-2-didi.debian@cknow.org>
Content-Language: en-US
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20241008113344.23957-2-didi.debian@cknow.org>
X-ClientProxiedBy: VI1PR07CA0286.eurprd07.prod.outlook.com
 (2603:10a6:800:130::14) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAXPR08MB6717:EE_
X-MS-Office365-Filtering-Correlation-Id: 385b89c1-7b5a-4b77-04ce-08dce7954af6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckNlVTI3RmFBYmZIM0Zic2xCTDRzTzVVbTBSdUhNa3dhcWhaUVVteTJxYUFm?=
 =?utf-8?B?MUs5bEd2elNuV3hFRmJFVnRvQnU2bXgxYWcvSEIwUE85YU5sUHVva1FQU2JB?=
 =?utf-8?B?YWtIcjl0aHllYnYvWGhxTzYyRXFxdi9kYzlOZWgzRlNta1lZK0dSdGxmZTlB?=
 =?utf-8?B?ZTVyWFVZUnZkZDNWOXd3ektyV2l3S0ttTmQ0a3Q0MThubEovNDVoS3JSaWxC?=
 =?utf-8?B?aXZBV2JUZytRWW5Ub1pJQ3NLeXR6TUY2Q3oyWFJESHQwSDlXNUs5US9Rb0Y4?=
 =?utf-8?B?WlJpVFB2SWV5bENYQUQ0bWF6NWlrZ3F1T2swRjJ1OVorUFBnSHBtbVNHQ3hU?=
 =?utf-8?B?N01lOGkvall1V1FqQ3BtZnc3L2VXVHJIV1QrOFRVY0RSMHFMZ1Nudzd3cmYv?=
 =?utf-8?B?Q2srbmk1RWplM3JpeDdUMlRYTU1Yb3V0UmErSm9qQm1xcjl4TzN0ZGhiL3Vz?=
 =?utf-8?B?Y29qUEFKeFlKL281THRjcTJMZUhycXdGWCtrbXFqb1lCODBTb1VIQmo4Vnkz?=
 =?utf-8?B?c2VPMDdDY3VGRlc5aE1nM042dWdZajhVSHN3YjNFOGJ0cEJ3a0FpREJQQ2Vh?=
 =?utf-8?B?V3REaXlXT3FnV1RXbmcwbkFXS0RmTXJvTldYU1JwaC9qcU53b2l1dEozU05v?=
 =?utf-8?B?VkFyMFI2QnFjNWltRzhPdTJmT3FwNTJzSjN6UkxnODNGdHFlaXpHM2E2VDUv?=
 =?utf-8?B?eE41TFowU093Z2pTeC9yMis3enNSMEtURlpBWExjYkIxbjNITjBYeStWZmwy?=
 =?utf-8?B?U0YybGNhRTRxdHVrSVA4L1hlNVF1clBTVGQ1c2VmSEtkRkd2M3hiZXdwaW92?=
 =?utf-8?B?TEl2d1pJR0ZEa3dxMDNiR3E3WFBZM0tSS29IZXZVazFDcURvR0ovRFdmQ0Iy?=
 =?utf-8?B?WGVGdTRVTEpkL3FabDJjWXcxSzZhaUlySHkxb3ovVG45NEErd2F4d0tuQlFJ?=
 =?utf-8?B?anVBalZhMmJDVENhMjZLeFRoTGxFMkEwcDZJa2NodmFZOUlWY1NuR1JJQTBk?=
 =?utf-8?B?c3RQb1lPYmhoQXBNZ0E2NGRMQTBzdGZ5cFpPOWFxc2VxRmorVUhqSXVFdlQw?=
 =?utf-8?B?UHdhczBvelpwdktSbll0anRBemxvQ3htOHBzYzE5Ry9sblI0QktXSXkxN1hv?=
 =?utf-8?B?ajBRa3crVi9PeFpWSXVZUnNvUHB1RGFXQnZpVVltRTZQWmhZS3dPK0Fab2p4?=
 =?utf-8?B?T3lGQmtpcEVOK2RrRHl1WldheVFnVi96bnp0ejEyNDJsdG9GNGFQTTFsOXR3?=
 =?utf-8?B?M3pJSFpPY3IyelFlZEpybzdidDIwdWoySExRMFlvanFidHFiZkFBWExvdFNT?=
 =?utf-8?B?VVdXOXNtY1RGcXljR1dIVG1GZHFDS3JLTzNmRUVMcitOMDlTTExKbjJBaXMv?=
 =?utf-8?B?NnJkNWd6UlREeWJJU2craTAwdWJRRmlLd3VvL29FSi92NWdXUTB4UFF0aG9h?=
 =?utf-8?B?Ky9SZzBrOE43RjFKelVkM3Q2QWxXdng4cTUyVjhISWd6UHBYOHloUHJkQ0Ns?=
 =?utf-8?B?UmtjKzREWGp2WDU1Z1RvYUxPNXNmU25ZdHRHZWxEL2Y4eDRKQ3EvOXlaeEMr?=
 =?utf-8?B?SFQ0emg3NlZDaHF1VElyUlhNTktJZXB3MU93OGZwQ2VSSzBzQVpvd0U4ek5E?=
 =?utf-8?B?QUF0Q2h3OUlGY0JHeVFSMFpMd2RYUjlDRDdrNmM1dE1YRDJVbVRDVVFYaGVL?=
 =?utf-8?B?VERTUUdtRmovMVZNY2pZb0tmcUlpSGk1aEFwZ0taVHZUZkY0cWRHSXdBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDRyZ3lNaml6clJtL1AvN2FnQ1NKWE0wTzNxcEJHNkFsR2JXTjRybjhHSERs?=
 =?utf-8?B?djJXN1lMYVkzZ1lxN0lxaUR1RzJYQnVxVm1zdXBOYU54Y1dXVHFDNmFSTmpE?=
 =?utf-8?B?alZNQWZIME1zNzI2OGgzcExseFAwWk9Oa2trTDFwUWJJRitGalhqSFRvc2U4?=
 =?utf-8?B?MmYxODNJcGFKMWZDcGYxeXR2VEwvM1krazFvVkFMK21iT1I4NHBxUWRTZThE?=
 =?utf-8?B?TXpLVjhoVDAxZTRHajNxdG4yY3ZoTEUwcnRuRG1PNGFnWG9zM2xhNlhoTGFV?=
 =?utf-8?B?QUo2Z0kzdFBCS3FlSkdQVitnWURYUmFvYjRUTzRLU0Y5NnJPZEE3WkFHMWsw?=
 =?utf-8?B?NVgxdGJSbnRmYUlRVEtYNUg3RjRJSGI4NXJ1ZXdHOS9YeVpJMlZJOEE4bmw1?=
 =?utf-8?B?ZmoxMFZLRlYzemJuUUdwelZpcDFTWVVuaDJtclgyR0t5aTM2TkFJRWsvRzBS?=
 =?utf-8?B?dHlyZEtJbEdlVDQvL2Q4UXFqWmFIS1RoQU54RGNSL0pqSlF3M3NQeUxnZVJP?=
 =?utf-8?B?TmgweS9OMjhUWlBpTGZaNktJVkdITkRQbG1mWWFpWXNNMTVBdUw3clFPU2Qw?=
 =?utf-8?B?djF1dlpkRktsV1VEb1gxUTNDNElQQnQyWEpreGc1UE9kSWRUNldVc05KRTIy?=
 =?utf-8?B?dFkvSCtzenJ5U1VSMjZ1SXRRTmNqYnRSTGFKZ3pnTmNMZDRLSnd6elZ4Vmpp?=
 =?utf-8?B?NUgyV0FaYkVodnY2b2Z1Nm9wUFl3UUoyeFU2Mmk2b3NheHdLWExpWHorTXIr?=
 =?utf-8?B?MFpuSXJmVHduSWdaOUl6bnFZVmd2N29RSUVkSUxDVHQ4bGtnZS9qSXdIU0U2?=
 =?utf-8?B?K0FGL0JLUUNwNDNqM0s4Z2Y5L29acWFCUjVmUVU1YWt5cm1sQlZQbkxQVFlq?=
 =?utf-8?B?WHphSUo2NXRYdjhBcjJUWlhSamdYbTVRaWhEMDdXT1RnSmZQcnBjMS9tSHVC?=
 =?utf-8?B?K1dBQU5iRmF4RHJ6ckc4RlNoRFg3NzIzS1BJUVV2SWtKVGpWWVA3N1FaU0lq?=
 =?utf-8?B?NWNRaVo5K1U1RmJQczAxNlZMc3VoUlZKd3pBaDNGa3lKQjZnSkNjcXB0OWdh?=
 =?utf-8?B?WVNwd0ZacDNpMVBNZjZQcHVWejNxUEZlc0Z5TVZxcmFtMWhvMGhueHJQejBH?=
 =?utf-8?B?YW16QmFUcXA2eU5JZjdCRldXQ2lTTTJzS2F1K3prUVAvL0FxRFV2dThmZWd1?=
 =?utf-8?B?NmhRY1cxMGE0NGdGU2txZnh1WHg4SjI4UVJNb1NlTVZ0ajhYNXpWQWFaa2pY?=
 =?utf-8?B?N2VhNDVIMlNOMUZFRjZqQWtUMTRPUzdBWWVYdFQ5QnNUUDFtNjlaUVQ4R3pu?=
 =?utf-8?B?ZDFhTzJKQ1VSa3YyRUNZRnZhTDZQT0V2OEt3MEtxTE1EaXlEZ0Q2TkI3R2th?=
 =?utf-8?B?YlkxTldzcVlyUXQvVk5XRWM1aDRUdXl3bjFOaTNFUlVoWmYrU1Mrb0NqcUta?=
 =?utf-8?B?Slcyc1ZhMW82a3RxcGQzeDNDN0FPNjZBNnpNcmcvTVBxWjRKak9pMVdlT1FT?=
 =?utf-8?B?bFdkKzNjV1BVejZLOGE4aFhXMlpzWFpzV3hoVEYxdVNHL0VEVWNwTzhHTHZa?=
 =?utf-8?B?ZWk1dTMwRDV3NEVQNTZDbXRoT0twMFJCM2ExT2NhMkM2clp5blhxTENwM28x?=
 =?utf-8?B?c2FlNTVSTDlNUlFqUUJzUmwzZlROT0tMQVZPWHFqc1RSTkE0RmZmbGlrQktW?=
 =?utf-8?B?M1F4dXhMUEorTmFPMlRJd2FiSkJKN0JvYS9XTDBVOVY0MVc4dGRZdU1jaVYx?=
 =?utf-8?B?TVBiTlFUMWZGWERkWm80UmVBRlhweEd2a3ROdWJLY1lucmpUYlNNdjBhMzcr?=
 =?utf-8?B?Zlhkc2FIVndiVHkrdk92S0pqcXVKdHJab0ZvTFNBYTVCNU04UFBmVkU5R3VD?=
 =?utf-8?B?MnlNZXg5bWN0MDltWldrN3JhSkp1T1puZGtJRnE3dXBrc25kNUR3eVdHS0V1?=
 =?utf-8?B?aExEcUZRMGZYRXlnQ0pLZFJPNCtmS3pyR0hiSEZTL0syWUN3Lzd3VlVUSHdS?=
 =?utf-8?B?SldXa1hrdlBxOHNQS0ZLY1JtdjcwNXNJekJBcE1wOWc3Rm9CNVRhbStCY3J3?=
 =?utf-8?B?ZnZFWXAzYm1xblo2ZTYvWUprWk1hQnJkL3FNb3gydmtNRzJjZGdFSnc1M0U2?=
 =?utf-8?B?R3ZPVDlCM1diQlp0dFQwWXB2Mkd3d2VNRS9VQU1mL0laellxSFp5bWlNMFVG?=
 =?utf-8?B?bVE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 385b89c1-7b5a-4b77-04ce-08dce7954af6
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2024 12:32:37.4567
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iyJ/JompSlIy8ZICQigt+yz581pUfIehRchR6hOLBW8jwqudvhAYDgmgBDj5glT5vXLsq8hYbQxWNzsXVHv5RreRu5Nb7Yum3LmOwtCEGYI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_053244_100565_CBB410C6 
X-CRM114-Status: GOOD (  17.12  )
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

Hi Diederik,

On 10/8/24 13:15, Diederik de Haas wrote:
> The "rockchip-inno-csi-dphy.yaml" binding requires the power-domains
> property. According to RK3568 TRM Part 1 section 7.3 (page 475) the
> CSIHOST is placed in the PD_VI power domain.
> So set the csi_dphy node power-domains property accordingly.

Thanks for the patch. However, I am not sure about this one.

The CSI host sure is in this power domain, but we are talking about the
CSI PHY here, right? According to the table CSIPHY is part of the power
domain "ALIVE", which leads me to believe that the power domain is not
necessary here. However, I guess you could put "RK3568_PD_LOGIC_ALIVE" here.

It should be noted, though, that I still haven't figured out what the
role of this CSI host actually is. I know that the RK3568 ISP has its
own MIPI CSI host controller within its register space. But I can only
guess right now that this CSI host is somehow linked to the RK3568
VICAP, which is also capable of receiving MIPI CSI. Maybe we can leave
this up to however brings up the RK3568 VICAP MIPI CSI feature :-)

Best regards,
Michael

> 
> Fixes: b6c228401b25 ("arm64: dts: rockchip: add csi dphy node to rk356x")
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> ---
> changes in v2:
> - No change
> 
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 0ee0ada6f0ab..d581170914f9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -1790,6 +1790,7 @@ csi_dphy: phy@fe870000 {
>  		clocks = <&cru PCLK_MIPICSIPHY>;
>  		clock-names = "pclk";
>  		#phy-cells = <0>;
> +		power-domains = <&power RK3568_PD_VI>;
>  		resets = <&cru SRST_P_MIPICSIPHY>;
>  		reset-names = "apb";
>  		rockchip,grf = <&grf>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
