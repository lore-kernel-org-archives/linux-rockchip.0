Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19911D29C2A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 13:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y/t+ZGxjANrngEi0gGCXfYBvWX9cx4E20l+CyV0FYzg=; b=sHonbBiNe10REeWd5y1P5aZCxw
	q2W774HL12ZRMgpa8hztZzb4oOaeXKVj+afmaqESB9ViP5hENhJuucWm2Ma+Hm84ZE+c7xPv5RwDl
	DYNF4CrNEvJaqX13Vg5v3Y+Iy/UuI07TlK/5dBLx7Nx+X+YpE2Q91WP34iTqmlgITLdaZwg+3txRB
	k4RxCfgu7igN+pboQqT+P4His2ycPQl5SwkJBH5BoS4MlWGb0/6k1uClfOw5Uyp9O+T8aVUdIjDRq
	Dnm2IxCxe9IJyg5CVN4OXN9I372dn3bjS0ng/x24dTm92amkIMqFOf+A/vsSrBcXR2krVxb3NB5hc
	p+cV23ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhplt-00000002COJ-1HMS;
	Mon, 19 Jan 2026 13:58:21 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhplp-00000002CNC-47pg;
	Mon, 19 Jan 2026 13:58:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f7PWacB1Bktd8wokohqS+FU845DKmaGkLjCf3Waap6YJp2iIIU8XWJUY0SgHPm0gfgUwTKQl1/pM+VGyT5RolyqGSC+t8wXs4dXYQu39KoCGQF56NLEUoebuAFKYNIamReNVYVGOmTi1XU8T7UjFfZrwQB5LWWy4Kd33JN8Oz93FaSfX8k1oSgmNeTlrk2bGVT0vqi7NkcY+gDrhYWbTtXQKPR/i9ofVidxSlh2O7KKZIwhbLvQrEaZD4xq7xABZSvnjSDHFW82VkgVbDuofCL6iQpZoxc8K2h0JBNeGzjopYaaBxZOcBfd/zD6QgQAwiRvnAkW3e6Mj5vCj9FUauQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=De6LBtIsarjhgHznQrdcHqKCZGf90DApGv2dI9tJjEE=;
 b=wFUMNJwViNU6aecWcHwvKe0o3CU4memK9G74vgIiHsgLpXILtn7FXcG/LH3ee021XA5SplYlizDx1RBY8ZKyE3n2S/qfTIw5vkJFamaxlOf/R10NbBSzn6roASY5vfPH5fsfbfEyxIgP/+XRB3X+T0Qm7dFR68GWOosELkyezl9HI84EeXXGW5bgYM4hUWJT+A+QA7Bz7sKUgFjm0o/35ceXammlp0s0ZP3GO2bXYlBPmuy9I6MK2AhUgl0XbQS1Uf+pV+uFWYo3nnSo7W63elYTM2VSena45lENRMVEUHGXCk3L8kIKZa2aRx7U5GJBrVtw7fjtWhBEqZEzvvIR3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=De6LBtIsarjhgHznQrdcHqKCZGf90DApGv2dI9tJjEE=;
 b=lK7hJmYEopsDMo0wj+8UBFvbwOwvdeu3NnAe6aOfYsIXQeiAriSBmx4mcpFrMOz4uwYkixNk/bKEbC8e4BmyeV7xRwrM94fTMwFSbx79JW3QNyOGYXr5YLcoes71I/4JAhfLYRscTFuna8HRhAHa7MVHAAmLNSzQ0NiiRecDpsk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by AS8PR04MB9207.eurprd04.prod.outlook.com (2603:10a6:20b:44e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Mon, 19 Jan
 2026 13:58:09 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78%6]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 13:58:09 +0000
Message-ID: <d3b5f622-36ec-42ea-90da-3c056e1b6461@cherry.de>
Date: Mon, 19 Jan 2026 14:58:05 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on
 RK3576
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Manivannan Sadhasivam
 <mani@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com>
 <b0904cb5-3659-41cc-8395-79eec9e82f01@cherry.de>
 <CABjd4YzJud4ZZQ_GrOOSnfEVG7wgHmPSf9w8oQhLVSx6WXgN5A@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CABjd4YzJud4ZZQ_GrOOSnfEVG7wgHmPSf9w8oQhLVSx6WXgN5A@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0001.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::10) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|AS8PR04MB9207:EE_
X-MS-Office365-Filtering-Correlation-Id: 859bac44-93e8-46bf-7608-08de5762c72e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cVg0MFRmNWhVY3d5b2FNdWVjS3hLVjI4MnlodGVRemZHRWNvL2N5ME94V0dB?=
 =?utf-8?B?YXVFbVVnU2QvcXJKMFNDbEhteXIwMEhrWnYwaWhKc3FzaDhhWjlzbm41RnlI?=
 =?utf-8?B?cENUMEJJaHdEeDdDb2I1eVh5THVZZTN6VVdHdHZGS3doY2huK09UamxBc0g3?=
 =?utf-8?B?bGUrNUNEVDQ0RThBL0dHNE9BbjAxbkxmbGpNS0VKUEJXV2hJWktDNjYvUFVM?=
 =?utf-8?B?N3JWaUp0eXlxd1BiVVRFRTcya20yeTQwUlhUd1V6TnBySDNzbmdvcE5RMVV3?=
 =?utf-8?B?OUc4OGsyY21DamNiWjBQSWMvV1FDWDVORzliSmNrM2pZaS9FQXNpWWtqQTNi?=
 =?utf-8?B?a1JlVVR4YjlUM3U2dFhqeWs0bG9sYjFBa200SUxQa0JHQjAvNFdsMmQrRDZ6?=
 =?utf-8?B?RUdSdHhvcUljZ0xJUzZNc29sSUJpQVNEbC84QWZxRmlFaTQvR0RWU3RDTFk1?=
 =?utf-8?B?UW9lRnBWWVRDZitEdnUxLzlUQkxSSVZoaW1YbGRUWUdLTWpvSldZNWVrOUhp?=
 =?utf-8?B?YkdnVFBHNVZGVFpncUZCYVJrcE16SldNV216TkhkR05FWDRjSWdOT2FWbmpC?=
 =?utf-8?B?OEhNekJLQndlM0NYa2Y3aitTV3lNSElLbU5sS3NJcmZOVEJPNDYxRDhSYWlX?=
 =?utf-8?B?RlBFUjFSWVJiQS9oRVQwN1RPMldLOTd1ZXUraXRvaTgyVlhMQ1VQdlZRUVZn?=
 =?utf-8?B?Z1BJTk41c1BGOWtjc2kyZHFDcTBFNTZkTEtHOTVERFQrUDJNQ2RtS0FXM3RN?=
 =?utf-8?B?L0F2b2QzSVg0QTJ1WjE1U0JnOGhvSWtDd1NKSjV0MFkvcHgwZzc4VVAzRTJR?=
 =?utf-8?B?UElSQm92Y1NwTWkwUURpdlQ3M090R0JWNjRtaEE0VG1GQlJKa0J6UEY3czJD?=
 =?utf-8?B?VlZQQmplNWUrNm9PdlAzTHVaTmxiUnRmUm5naGlZazRVbExHM2RkcG9aY3NL?=
 =?utf-8?B?UnpZQXFmN0psL3RjbG5VenZFcjU1MzI3M0g5cG41TnA5c3diemsvM1Z4a1hI?=
 =?utf-8?B?TThYeGxsQXZiS1RqRE44aEtjOCtjckJ4dnA3bXZ1bGloTjlpamNYNFlmRnVU?=
 =?utf-8?B?ditraVZ5MmFQc255Yis4YVUwNGc3QmJSZUQweFpxZFUzV1U4TVI1RzVuaHkz?=
 =?utf-8?B?TzA0eGtpZUFFTDFBRXl2MTVBalVya1NFMkJHbVVMMGhRYmdYMzNSRE9iWkpU?=
 =?utf-8?B?K0VsQzN0ZGh6QzJxSHBOMW5rV1NwcElQQ1YzZFZiWXJoR3BnMHJjTEo4aWlS?=
 =?utf-8?B?WmJLbFJmTmxVeFR2K2M5YzM4eGs2Y0FOWEVsdW9NNHFRQ3JPaXRFSy9iM0Uz?=
 =?utf-8?B?MmxhUEdkWGJlbVJic2R2dWRlYUVWMXpsS3JVZHc2ZktnNCtySmZpV0s5WnFK?=
 =?utf-8?B?L3ZZUm5qQVRDNzBKVFhZYXRnZmJ5QmNZa0N6d0xGWmNDazNEWTFpaSszUWRL?=
 =?utf-8?B?aVM0NHZFcFBYS0JxNElRNkJ1TGpDRmpudDArWUtsOHVGeEExcDJFV3hHWUho?=
 =?utf-8?B?dVBETml3empPZGZKbllLbGVSVXp6SWxKbWZKYTRidXlWTW1wSHQyZkRGYVhK?=
 =?utf-8?B?RUpXRnhvTGlmZ0JmdytLcXVISmx6ekFjNHQ3RUdOeStIaFJIOXJuU2xwbGFZ?=
 =?utf-8?B?SkFqWUIxZ3FCVStyM3ljQThQQVJPb01yVlNEMHU3VStsTkpUanZpZHZNLy9x?=
 =?utf-8?B?Sm0xN1hndGNVZFFQOW0yM3dqTFVBUWgrMjVHZW5zYUx0ZTBFTWFqbVhNWU5V?=
 =?utf-8?B?emMrL25FM0dBbjk1SHVkSTRNeTREYjZjTGMzN1F6SGpSL0NPOWkvZ25jS1RI?=
 =?utf-8?B?cTd0QWpxaUlhTkJPdENwWGowalRHUHEwYnhET0FBdktPTU5OdVA2ZFBYZTJL?=
 =?utf-8?B?NGFkYVpIQWNlQ2dMRkx3Uk1aZHd0UHR1QUJRZDhUQ2g5UVJzZFlUMkpUTlM4?=
 =?utf-8?B?ZS9wblBvdG9WdnVJOEdoeHVTTHg5NTlMekJnR1dSdmYwQXVoN0wvSHdvemhC?=
 =?utf-8?B?UzlKd0tETm53bTlNR3hsT2JqRHRpYVcwV0g4SytDQ3pqc1QzL0M5bUdTdE5t?=
 =?utf-8?B?OGtaM3Q4SnBETDIyZFJOenA1eFFiYTFIaHBLeng2YU85d0krd0tOYzJPcGZ0?=
 =?utf-8?Q?eZnY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(10070799003)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SERtTkJzekl2OE9BWjVkQklmTXA1d0dRZk1vOCtjcTBydVB5a1J3N2trRC8r?=
 =?utf-8?B?RVZ1dVhQb1B1Y0RqMzcwcHJiZmtBQTdWYW56N2lDTHlKZ3lUOE5heUkwSGtQ?=
 =?utf-8?B?eUpxWllzRW1ENG1XWjRWTlh0dUpFdUZ3WGdZaXZTWkRJYnRzU2lxdE9rNUVh?=
 =?utf-8?B?QmdOdWt2NkprMitHN2d3dENjdGQ3VnUrbUluTWRhaWZ0L29rVXNHMFZnZElK?=
 =?utf-8?B?bXRUWGoyRGl1dWZ3b0xSSzdpV0M4MU1IRWJDREtEdDkyODhNelBpSTNsV2Ji?=
 =?utf-8?B?K1BoYjErU3R0ZTdoV0JOZHpXL3lSWUlLbGsxcXBLTkcvdzNEYThobGpkZFo5?=
 =?utf-8?B?U1NlMGNZRVkvRElyVnhlVWxaNGxrOHNFcnFLMno4RVZ6cGdocldaZjEvRDRZ?=
 =?utf-8?B?UzMxRXdZc2FLaTdodFo2U2NVTDIydUE2MWhOMnFIRXBMRlFJVStlL0trTmpy?=
 =?utf-8?B?d3BzbHp5WGRWVWVyVXBFcDBTN3c2bEZCM2hSTkpkcUlKbE53ZXB6NjZsZlNB?=
 =?utf-8?B?cEdnYnFyaEpjMVdEQmh3elR5cm13c0RoTTV1ZnEzOTBpTElicmIrQktCejMx?=
 =?utf-8?B?N1NtcSsxMEhRNHo1bnZOUkxqMzJGQzh5R1JXWmlFcFdQZFRpQ2I2alBabXlZ?=
 =?utf-8?B?V0dNQXRQUnpRTUw5cUJWMldOQWhiUXNDMkZIKzB1dTZTeVh5Q3ppT3VaUVVT?=
 =?utf-8?B?OUZ5WTNtczBKQjE2bXc4T2djaWVIRlM0bW1vSjY4T0RWWUY1WjdqUUU2UDdL?=
 =?utf-8?B?TjQ0ck1xazMxd3VaV3g0N0VySEJjRkZ4K0hNYUE3c2FZS3UvdVZIeG04bE5s?=
 =?utf-8?B?KzlFbG1pSTJhblUxRlRFM1I1NE12ZFVBZFR3eDRJQXN3WWR0ZnFLT1JMdE95?=
 =?utf-8?B?cU5mZkFkWTBUU0YySmdDTlFSbERQdU9sSzZiWVNHSGlzYnRLeEJINGZiZXo3?=
 =?utf-8?B?Z1JjNURpaUVqTmtaRDhqQ0t1MktVTTIvQ1FOeWVpSXJlMjc2VkozQVV5L0FU?=
 =?utf-8?B?VGxaZklWWEFwc0twWDZZWDhXWmJYZEQzblloK1NJR3d0QTFac0hzUjIzaVZK?=
 =?utf-8?B?UXFVQzdaQWwvZzFvRXE4RnpERk1GNXphbzM5THU0WGdOSjEwRGp3VzdhY2gz?=
 =?utf-8?B?Qk5lUHZ6Y0ZDMXpMTW1NcllRdGtRUzhaN0NVTGEzSzhOMVRNelpsc1BFYjdn?=
 =?utf-8?B?bmg3M0gyK2diWDYrY0I4T09DMllKOXFxdFYxZmVYMW05eEJwSFFpNHhUa0d4?=
 =?utf-8?B?Qlh3Nmh4ZVpOaXVZNTBFbHBWeUVScTVhZU53QUlWQ3o4OXhERnhvRm1hS29m?=
 =?utf-8?B?Zm4wanNDUDEyT1NINDRZUm5QbGRtUGJZb1M1VXEwcFp6M3kxdVdrTlB0bUs4?=
 =?utf-8?B?VGgwS2JPaGZDZEpXNWVjRnV6ZGY3cExHdHBZS1lreDFsUnNzVEc0Nis2QXBY?=
 =?utf-8?B?MzFHcnNnbi9TamZvN1RUUThFdW5JNk9VWUpuSGlNRDV1SGh4ZzRKaEVIMkNU?=
 =?utf-8?B?b214dWwrSWp5aWVqOEQzQlYzaVJvSHFMU2w0SC80Zjc1MzlIZFNJcWhWTHht?=
 =?utf-8?B?RFU3UXUzUEt6Q29kMDBneDRuRE1pVjU2eWV0eXpPVGJtMHZHbmMzd2lMZ2N1?=
 =?utf-8?B?c1AyOGdMNk9wS3F5dW4wemVPYzUxSDdGRWtmOTZYL1FLbWVMRHFiSXNzUVF2?=
 =?utf-8?B?UDc5bU1OSldjVzRHR2xOaWN5ZnB6WVJ6a1ZEMk5GNmZWK3hNTjkzcG1sSXdH?=
 =?utf-8?B?Nmh0MU00WndwWjZ2NmZIMCtrQTMvVEVHQ2M2VFllaE9iRnc3MUc2cEZxcXRn?=
 =?utf-8?B?TFY4a1VPNk5OSFJpMFptSG93ZXE5UlZCZWQxRVJmazFDNGJHRVoycy8xY29h?=
 =?utf-8?B?SUpnSU4xSEdhS09xdFMybGZqcml5N2V1ZGhRNi9nZW1kaUNhUjdRTkhyN3Ru?=
 =?utf-8?B?WUJZUThwZnlyMVQ0VUF2Tzc0MkxvVlBNVEk3WWJ5VzZ0NlNWQVk1QVRZNXQ5?=
 =?utf-8?B?NHpCUUdzekhrT3BZVWNNd29xZ3E3cUNMOTlKbjlWUWViK1JHZERscXIzN3lz?=
 =?utf-8?B?VU9OamsvUGg2Tms5cUM5NHZwY0duMXB3TElNZ2wwU3gzWmQ1SE9vQmc5RGVr?=
 =?utf-8?B?cjJSMnlLa3A4aXBvcGtCSUFvamtCTnIvaXluMktZcElkOWgzY1ZxejFIbmFY?=
 =?utf-8?B?ajl6cmlFbk1VT2F0eVBlYk5TMGs4Yk5qNlpZNGJFTGoyQ0hUT1U0WCtPQVRt?=
 =?utf-8?B?d0dlZU9iWmI5c3NreTNqVGFueHRJTVJnZlI2SCtZd0FQdldXNDlFdjg5VXlE?=
 =?utf-8?B?bUdOWUd6elNXVjVNQlNNOCt3UEEva0lGc2U2eGluRWZJMHFpV3FubGxvUHhE?=
 =?utf-8?Q?H1I3SGaMD4qo00iBFqJB2dK0NQyszbaQn4Ob1?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 859bac44-93e8-46bf-7608-08de5762c72e
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 13:58:09.4788
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KfzrleJXCQH6prjU1qElrpxXR1s/1uKHGyhfpKqeDGAUQldR2jVLuirFWa+t58i5DiItc9ClU/05C2BScdEcJ+l9nAr3kvWhrhbtyGBV1Dc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_055818_172028_28A0B5AE 
X-CRM114-Status: GOOD (  32.74  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQWxleGV5LAoKT24gMS8xOS8yNiAyOjQzIFBNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiBI
aSBRdWVudGluLAo+IAo+IE9uIE1vbiwgSmFuIDE5LCAyMDI2IGF0IDM6MDjigK9QTSBRdWVudGlu
IFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPiB3cm90ZToKPj4KPj4gSGkgQWxleGV5
LAo+Pgo+PiBPbiAxLzE5LzI2IDEwOjIyIEFNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPj4+IFJv
Y2tjaGlwIFJLMzU3NiBVRlMgY29udHJvbGxlciB1c2VzIGEgZGVkaWNhdGVkIHBpbiB0byByZXNl
dCB0aGUgY29ubmVjdGVkCj4+PiBVRlMgZGV2aWNlLCB3aGljaCBjYW4gb3BlcmF0ZSBlaXRoZXIg
aW4gYSBoYXJkd2FyZSBjb250cm9sbGVkIG1vZGUgb3IgYXMgYQo+Pj4gR1BJTyBwaW4uCj4+Pgo+
Pj4gUG93ZXItb24gZGVmYXVsdCBpcyBHUElPIG1vZGUsIGJ1dCB0aGUgYm9vdCBST00gcmVjb25m
aWd1cmVzIGl0IHRvIGEKPj4+IGhhcmR3YXJlIGNvbnRyb2xsZWQgbW9kZSBpZiBpdCB1c2VzIFVG
UyB0byBsb2FkIHRoZSBuZXh0IGJvb3Qgc3RhZ2UuCj4+Pgo+Pj4gR2l2ZW4gdGhhdCBleGlzdGlu
ZyBiaW5kaW5ncyAoYW5kIHJrMzU3Ni5kdHNpKSBleHBlY3QgYSBHUElPLWNvbnRyb2xsZWQKPj4+
IGRldmljZSByZXNldCwgcmVxdWVzdCB0aGUgcmVxdWlyZWQgcGluIGNvbmZpZyBleHBsaWNpdGx5
Lgo+Pj4KPj4+IFRoaXMgZG9lc24ndCBhcHBlYXIgdG8gYWZmZWN0IExpbnV4LCBidXQgaXQgZG9l
cyBhZmZlY3QgVS1ib290Ogo+Pj4KPj4+IEJlZm9yZToKPj4+ID0+IG1kLmwgMHgyNjA0YjM5OAo+
Pj4gMjYwNGIzOTg6IDAwMDAwMDExIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwICAuLi4uLi4u
Li4uLi4uLi4uCj4+PiA8IC4uLiBzbmlwIC4uLiA+Cj4+PiA9PiB1ZnMgaW5pdAo+Pj4gdWZzaGNk
LXJvY2tjaGlwIHVmc2hjQDJhMmQwMDAwOiBbUlgsIFRYXTogZ2Vhcj1bMywgM10sIGxhbmVbMiwg
Ml0sIHB3cltGQVNUQVVUT19NT0RFLCBGQVNUQVVUT19NT0RFXSwgcmF0ZSA9IDIKPj4+ID0+IG1k
LmwgMHgyNjA0YjM5OAo+Pj4gMjYwNGIzOTg6IDAwMDAwMDExIDAwMDAwMDAwIDAwMDAwMDAwIDAw
MDAwMDAwICAuLi4uLi4uLi4uLi4uLi4uCj4+Pgo+Pj4gQWZ0ZXI6Cj4+PiA9PiBtZC5sIDB4MjYw
NGIzOTgKPj4+IDI2MDRiMzk4OiAwMDAwMDAxMSAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAg
Li4uLi4uLi4uLi4uLi4uLgo+Pj4gPCAuLi4gc25pcCAuLi4+Cj4+PiA9PiB1ZnMgaW5pdAo+Pj4g
dWZzaGNkLXJvY2tjaGlwIHVmc2hjQDJhMmQwMDAwOiBbUlgsIFRYXTogZ2Vhcj1bMywgM10sIGxh
bmVbMiwgMl0sIHB3cltGQVNUQVVUT19NT0RFLCBGQVNUQVVUT19NT0RFXSwgcmF0ZSA9IDIKPj4+
ID0+IG1kLmwgMHgyNjA0YjM5OAo+Pj4gMjYwNGIzOTg6IDAwMDAwMDEwIDAwMDAwMDAwIDAwMDAw
MDAwIDAwMDAwMDAwICAuLi4uLi4uLi4uLi4uLi4uCj4+Pgo+Pj4gKDB4MjYwNGIzOTggaXMgdGhl
IHJlc3BlY3RpdmUgcGluIG11eCByZWdpc3Rlciwgd2l0aCBpdHMgQklUMCBkcml2aW5nIHRoZQo+
Pj4gbW9kZSBvZiBVRlNfUlNUOiB1bnNldCA9IEdQSU8sIHNldCA9IGhhcmR3YXJlIGNvbnRyb2xs
ZWQgVUZTX1JTVCkKPj4+Cj4+PiBUaGlzIGhlbHBzIGVuc3VyZSB0aGF0IEdQSU8tZHJpdmVuIGRl
dmljZSByZXNldCBhY3R1YWxseSBmaXJlcyB3aGVuIHRoZQo+Pj4gc3lzdGVtIHJlcXVlc3RzIGl0
LCBub3Qgd2hlbiB3aGF0ZXZlciBibGFjayBib3ggbWFnaWMgaW5zaWRlIHRoZSBVRlNIQwo+Pj4g
ZGVjaWRlcyB0byByZXNldCB0aGUgZmxhc2ggY2hpcC4KPj4+Cj4+PiBDYzogc3RhYmxlQHZnZXIu
a2VybmVsLm9yZwo+Pj4gRml4ZXM6IGM3NWU1ZTAxMGZlZiAoInNjc2k6IGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBBZGQgVUZTIHN1cHBvcnQgZm9yIFJLMzU3NiBTb0MiKQo+Pj4gUmVwb3J0ZWQtYnk6
IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+Cj4+PiAtLS0KPj4+IFRoaXMg
aGFzIG9yaWdpbmFsbHkgc3VyZmFjZWQgZHVyaW5nIHRoZSByZXZpZXcgb2YgVUZTIHBhdGNoZXMg
Zm9yIFUtYm9vdAo+Pj4gYXQgWzFdLCB3aGVyZSBpdCB3YXMgZm91bmQgdGhhdCB0aGUgVUZTIHJl
c2V0IGxpbmUgaXMgbm90IHJlcXVlc3RlZCB0byBiZQo+Pj4gY29uZmlndXJlZCBhcyBHUElPIGJ1
dCB1c2VkIGFzIHN1Y2guIFRoaXMgbGVhZHMgaW4gc29tZSBjYXNlcyB0byB0aGUgVUZTCj4+PiBk
cml2ZXIgYXBwZWFyaW5nIHRvIGNvbnRyb2wgZGV2aWNlIHJlc2V0cywgd2hpbGUgaW4gZmFjdCBp
dCBpcyB0aGUKPj4+IGludGVybmFsIGNvbnRyb2xsZXIgbG9naWMgdGhhdCBkcml2ZXMgdGhlIHJl
c2V0IGxpbmUgKHBlcmhhcHMgaW4KPj4+IHVuZXhwZWN0ZWQgd2F5cykuCj4+Pgo+Pj4gVGhhbmtz
IFF1ZW50aW4gU2NodWx6IGZvciBzcG90dGluZyB0aGlzIGlzc3VlLgo+Pj4KPj4+IFsxXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy91LWJvb3QvMjU5ZmMzNTgtZjcyYi00YTI0LTlhNzEtYWQ5MGYy
MDgxMzM1QGNoZXJyeS5kZS8KPj4+IC0tLQo+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NzYtcGluY3RybC5kdHNpIHwgNyArKysrKysrCj4+PiAgICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpICAgICAgICAgfCAyICstCj4+PiAgICAyIGZpbGVz
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1waW5jdHJsLmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1waW5jdHJsLmR0c2kKPj4+IGluZGV4
IDBiMDg1MWE3ZTRlYS4uMjBjZmQzMzkzYTc1IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NzYtcGluY3RybC5kdHNpCj4+PiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1waW5jdHJsLmR0c2kKPj4+IEBAIC01MjI4LDYgKzUy
MjgsMTMgQEAgdWZzX3JzdDogdWZzLXJzdCB7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgLyogdWZzX3JzdG4gKi8KPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
NCBSS19QRDAgMSAmcGNmZ19wdWxsX25vbmU+Owo+Pj4gICAgICAgICAgICAgICAgfTsKPj4+ICsK
Pj4+ICsgICAgICAgICAgICAgL29taXQtaWYtbm8tcmVmLwo+Pj4gKyAgICAgICAgICAgICB1ZnNf
cnN0X2dwaW86IHVmcy1yc3QtZ3BpbyB7Cj4+PiArICAgICAgICAgICAgICAgICAgICAgcm9ja2No
aXAscGlucyA9Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiB1ZnNfcnN0biAq
Lwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDQgUktfUEQwIFJLX0ZVTkNfR1BJ
TyAmcGNmZ19wdWxsX25vbmU+Owo+Pgo+PiBUaGUgU29DIGRlZmF1bHQgaXMgcHVsbC1kb3duIGFj
Y29yZGluZyB0byB0aGUgVFJNLiBDYW4geW91IGNoZWNrIHBsZWFzZT8KPj4gRm9yIGV4YW1wbGUs
IHRoZSBSb2NrIDREIGRvZXNuJ3Qgc2VlbSB0byBoYXZlIGEgaGFyZHdhcmUgcHVsbC11cCBvcgo+
PiBwdWxsLWRvd24gb24gdGhlIGxpbmUgYW5kIHRoZSBVRlMgbW9kdWxlIG9ubHkgc2VlbXMgdG8g
aGF2ZSBhIGRlYm91bmNlcgo+PiAoY2FwYWNpdG9yIGJldHdlZW4gdGhlIGxpbmUgYW5kIGdyb3Vu
ZCkuIFNvIGV4Y2VwdCBpZiB0aGUgY2hpcCBpdHNlbGYKPj4gaGFzIGEgUFUvUEQsIHRoaXMgbWF5
IGJlIGFuIGlzc3VlPwo+IAo+IFRoZSBTb0MgZGVmYXVsdCBpcyBpbmRlZWQgcHVsbC1kb3duIChh
cyBzdGF0ZWQgYm90aCBpbiB0aGUgVFJNIGFuZCBpbgo+IHRoZSByZWZlcmVuY2Ugc2NoZW1hdGlj
IGZyb20gUkszNTc2IEVWQjEpLiBXaGljaCBJIGJlbGlldmUgbWVhbnMgdGhhdAo+IHRoZSBhdHRh
Y2hlZCBkZXZpY2Ugc2hvdWxkIGJlIGhlbGQgaW4gYSByZXNldCBzdGF0ZSB1bnRpbCB0aGUgZHJp
dmVyCj4gdGFrZXMgb3ZlciB0aGUgY29udHJvbCBvZiB0aGUgR1BJTyBsaW5lICh3aGljaCwgaW4g
dHVybiwgaXMgY29uc2lzdGVudAo+IHdpdGggdGhlIG9ic2VydmVkIGJlaGF2aW9yIHdoZW4gcmVz
ZXQgaGFuZGxpbmcgaXMgbm90IGVuYWJsZWQgaW4gdGhlCj4gZHJpdmVyIGJ1dCB0aGUgcmVzZXQg
cGluIGlzIGluIEdQSU8gbW9kZSkuCj4gCj4gQXJlIHlvdSBjb25jZXJuZWQgdGhhdCB0aGUgY2hp
cCBtaWdodCB1bmludGVudGlvbmFsbHkgZ28gaW4gb3Igb3V0IG9mCj4gcmVzZXQgYmV0d2VlbiB0
aGUgbW9tZW50IHRoZSBwaW5jdHJsIHN1YnN5c3RlbSBjbGFpbXMgdGhlIHBpbiBhbmQgdGhlCj4g
bW9tZW50IHRoZSBkcml2ZXIgc3RhcnRzIG91dHB1dHRpbmcgYSBzdGF0ZSBpdCBkZXNpcmVzPyBU
aGlzIGhhc24ndAoKRXhhY3RseSB0aGF0LgoKSW1hZ2luZSBmb3Igc29tZSByZWFzb24gdGhlIGRy
aXZlciBFUFJPQkVfREVGRVIsIHRoZXJlIGNhbiBiZSBhIGxvdCBvZiAKdGltZSBiZXR3ZWVuIHRo
ZSBvcmlnaW5hbCBwaW5jb25mL3Bpbm11eCBhbmQgdGhlIHRpbWUgdGhlIEdQSU8gaXMgCmFjdHVh
bGx5IGRyaXZlbi4KCkF0IHRoZSBzYW1lIHRpbWUuLiBJIGd1ZXNzIGl0IG1heSBub3QgbWF0dGVy
IG11Y2ggaWYgdGhlIFVGUyBjaGlwIGdldHMgCm91dCBvZiByZXNldCB0ZW1wb3JhcmlseSBhcyAo
SSBhc3N1bWUpIHdoZW4gdGhlIFVGUyBjb250cm9sbGVyIHByb2JlcyAKcHJvcGVybHksIGl0J2xs
IGRvIGEgZnVsbCByZXNldCBvZiB0aGUgVUZTIGNoaXAgdmlhIHRoZSByZXNldCBHUElPLiAKRG9u
J3Qga25vdyBhbnl0aGluZyBhYm91dCBVRlMsIHNvIG1heWJlIHRoZXJlIGNvdWxkIGJlIGRhbWFn
ZSBpZiB0aGUgVUZTIApjaGlwIGdldHMgb3V0IG9mIHJlc2V0IGlmIGl0cyBzdXBwbGllcyBvciBJ
TyBsaW5lcyBhcmUgaW4gYW4gaWxsZWdhbCBzdGF0ZT8KCj4gY2F1c2VkIGFueSBvYnNlcnZhYmxl
IGlzc3VlcyBpbiBteSB0ZXN0aW5nLCBidXQgSSBndWVzcyB3ZSBjb3VsZAo+IGV4cGxpY2l0bHkg
c2V0IGl0IHRvICZwY2ZnX3B1bGxfZG93biBmb3IgbW9yZSBwcmVkaWN0YWJsZSBiZWhhdmlvciBp
bgo+IGxpbmUgd2l0aCB3aGF0J3MgcHJpbnRlZCBvbiB0aGUgc2NoZW1hdGljLgo+IAoKcy9zY2hl
bWF0aWNzL1RSTS8KCkknbGwgbGV0IEhlaWtvIGRlY2lkZSBidXQgSSB3b3VsZCBwZXJzb25hbGx5
IGdvIGZvciBhIFBEIHRvIG1hdGNoIHRoZSAKZGVmYXVsdCBzdGF0ZSBvZiB0aGUgU29DIGFjY29y
ZGluZyB0byB0aGUgVFJNLgoKQ2hlZXJzLApRdWVudGluCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
