Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C640D2ED11
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 10:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+yXq5O1pXZd4S0lsTxsNWfRr3D2YWUq8GtM3FeDcKTc=; b=YMeavaLxp+7ngcqwI+8qeOv23m
	GQ21UCYukNBaTNt61jcS8IglM6/YahwEXQgt0jrHMkAbf7FrgD22kp/0YmfbCqts8lI119EpW+Fqr
	AxkEhbhJwFBdDPl8CXyNOISKHbmnqvhvTeJPt3/h68QIi9GFyCBb8OoLqj5zRN4f+zfVuTREvKyRA
	PsF7rvasOcMi8r4FpVR5aNQLP4Fywx2MwPGvuAYaXPhk4/oXBRG5N06NaWaIX0DWygHrB/nOzR71x
	lOvy7rt5UZVXP9utC6iUpXWBOMEJEh1PdTF89zVTgC2559FK/yg3xQKHii7uuvwpSuRwZeCUqw5Ho
	RuQWbhpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8rt-00000003cCL-4B1r;
	Tue, 20 Jan 2026 10:21:50 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8rq-00000003cBd-2OwZ;
	Tue, 20 Jan 2026 10:21:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jHTkcu9V7jff/X5qqIMFVklgWwXjNiks0YI9EmmTLuFQ2A5AjzL1XGYuns13HSOo1uVfKl4x1zOGWPsNaLDDpY9+AJcLKeypHsk6lpEqDZAMaRp/XUHz4z4synsr6z+UbB8eq5eTnGeFM3BWLmD5aYLHBalJAeNKxJguUXZp0GdMmgTP8bEVRagrQBssX78EJpz7G1x9snE1lKZ8HK9tg5ckHeush59/xF12ZTxpNkHB2rX8Gn6F5PLIdquNRBLqLaSyUi31yrkqmnlZIM0xCRyDdei6n/t71isUF62e6wHXN4KmWXEst2yTEye03c6SpxyUnjGhKWsIrR5hIaPTPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/bfT4PfsdxcnYexI5ijl7KjBDV17MG5wDUsbfoTGaPM=;
 b=Kn++L7B1sqnS6GeidnEfdrnOqx5tjz4smE/IJBSoQSNE0/iW42RrehB5MWn+CP9Ir4HNB8DoDWP61rPnIUeuX/vDN2dPn29SjNpyWklGU39yWodKq9t/9DkIwy3EC4Lls2GMe2tl1rEuKdMuTNVum1az86Jtcxttn3RqBIn3qbar5coyq2S20eBGH10681R+YmiEWw+lEuYzf8kdnZdIJ/3JE1oBpo0j+CAhtJByHnYLkMZeCw6VZ2voEUD9sRVX0pLbpLYks19BCj1AHF4WczlkToiCNp/kv2tAUqClgUeweLVAvNszCOrRD4R23aNTXYFEVr22kAz7GnrVAVov2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/bfT4PfsdxcnYexI5ijl7KjBDV17MG5wDUsbfoTGaPM=;
 b=a55HiFpVXCCceov1FlawD8/2s4UnBNC0AX5BC1Cx77VdZlTP3yplyJ6nASv54rUGiwBt2k9P9LYCqgezvKibPJlrK/ui0trITdvwUq9Qh6G9AH8A+bSg+Ri6lnUEww6jNQ9BHk5liqWr1kqGl6Of/tagH/SnK0VnaEavjLH2I3Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by DBBPR04MB7561.eurprd04.prod.outlook.com (2603:10a6:10:209::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 10:21:39 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78%6]) with mapi id 15.20.9520.011; Tue, 20 Jan 2026
 10:21:39 +0000
Message-ID: <8df14d73-8e20-4d89-89eb-d40f27814d2d@cherry.de>
Date: Tue, 20 Jan 2026 11:21:34 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on
 RK3576
To: Heiko Stuebner <heiko@sntech.de>, Alexey Charkov <alchark@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com>
 <6479d7b8-7712-4181-9c82-0021da94d1a8@rock-chips.com>
 <5743823.mogB4TqSGs@phil>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <5743823.mogB4TqSGs@phil>
X-ClientProxiedBy: FR0P281CA0188.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::9) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|DBBPR04MB7561:EE_
X-MS-Office365-Filtering-Correlation-Id: 282caf19-a31e-444e-07c7-08de580db2e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|10070799003|1800799024|14052099004;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QTAzNUYrU25hSlRDQW51TVJsTWpIMUNrTHhTWmtEN1dHUFVVM3ZiTCsrUFVN?=
 =?utf-8?B?dmVGNStMVTFONVRGWWcxNEhXSkhoVmY5MnBjTjBTNCtZblRXUEs3Skxac2ZD?=
 =?utf-8?B?V29ERlVQYVhRWWNlcXB5ZDhmSFlxOEFVc1UvelYrOHRWK01JVkxYd2hZeTg1?=
 =?utf-8?B?eDcrbUx1NnNLQ0ZSbDJQdzhFeEptQ1hBcHQvMTQ1VVk2NmJFZmNjTVhqV0lt?=
 =?utf-8?B?QUJlZm9ib2E1SDNSdGFZTW1QWTRFR3ZPNEptSDlHL0hSQndDb3NXZDNseGdL?=
 =?utf-8?B?NmtyWEN1SzhPQTdzNjVPa0FxZmpwTElXUzB0U29WZzBUYk1uSW8xWSt5K3Ry?=
 =?utf-8?B?TVo3QkRTZ2JYVWNYSk11aXhUdVcvUzcwMkg1d3lKaGRIUW1TTGhheS9lV3lw?=
 =?utf-8?B?N1ZUUFhpVVgwWXNOdzBrS2ZuYmxDSVl2a2VBU2VWdFErVkpXWEtrd3FWaUNy?=
 =?utf-8?B?UXRIMHF0Nms4a0dqUHFpSjlQNzdwMk9sNGtHdWtEaGhUNzFZcTQrenkwZkxq?=
 =?utf-8?B?anhiTjMzTmliQ3JRNGlreldhNS9Zdi9lWmRya29XdkJhQXFjS2dWbzQxbjNK?=
 =?utf-8?B?VjduejlqU1FYUUpuN3BVWSs2bTFhV1lobktBaDRQaFRuSGlkZk5pS1M5S2dl?=
 =?utf-8?B?TFZncjh5MDZBV05KRlZJTE5TeHcrRDEvK0dJUTBMK2lxdXBLcUJnM2E0SmRK?=
 =?utf-8?B?MW9HWUVqZUpBR1o2dzUvNTRiekFKc1prb3E0R2grNjJGSE5rc1NJWGM1NVZn?=
 =?utf-8?B?aFlZazN4dkxrNUFxUjd3bmRjRUlaVVBtd3hQekIxYWxGajNSTzFldGgzOFY4?=
 =?utf-8?B?UXgvblNPOERlSU0wWE5rUDZWMy9hRVF6N3ZaS0MvbitTdzVIRVRVZklFdjFq?=
 =?utf-8?B?djhqN0d3VzJlYVhLNnJoc0JxQ0FqQWh5bUdaMVhya2FXdWt4Z1RJQ3g1NUdM?=
 =?utf-8?B?V1Z6V3Bvb0M1SHJiN0RTK2NremxDUEZPdnhoUUdPUFlKdm44U1haOTJCK0Za?=
 =?utf-8?B?QkE3Y2NIbkFVYm9SaVZEQWlWM1NPUzBNRGJ5dVZ1OE9zTXlhNGRkZmdOeGxB?=
 =?utf-8?B?bVpSYWhyTGJ0RmNkSXAwTm1uM1JQR3BMdkNWM1oxdVM1TUQzaUhxUHNTVllz?=
 =?utf-8?B?ZWM5cVhlQkUyNnNnNmgzTXVEazlpOVJzcmsxQXY5Z2tWaVlCSGdSaloraGVU?=
 =?utf-8?B?dmw0bWxmYTFZM0JmaEhGbXVBMEJrbi90d0c5bEplZFRXZkwxeHJDeHdnNVpQ?=
 =?utf-8?B?Y0lYZjRVV0EzYTJIdEVUS3dQMmg4ZG1rYVVhREN1b0xMUWxGdSttb2ZHbldy?=
 =?utf-8?B?UlE5dTBvWW5IM1EyVUZCOEdFYjBvdmE3UVJLMlVHVktIWlNRV0hzbTdmNk9a?=
 =?utf-8?B?enMzckdiSGV0LzR5b3hJVVFVOXRuUFBJang4a09iUHJUaGFOYU10MWdnTGZU?=
 =?utf-8?B?KzR5VnJjdUdNbzZyYzl4OW1IeTgydW53L2pWemhtZE9iMmF3d2UzaEJXV2Jl?=
 =?utf-8?B?NEJzV3BpbzhZRlBUc01vN3kwbzNwdDlYYy93enV0OHVQanV4MVpoajFnZTdN?=
 =?utf-8?B?b1d1b2FiMUdQb2Ruc2pnZW01TnRabVBJMHNZN1FNeG5ndmY4VXBxU2hpaHdH?=
 =?utf-8?B?a253MVIyLzJMQW0ya0o0TWY3RjVnd0ErOGpHN1kxeGlsUmtwS3JuQWwxaUdQ?=
 =?utf-8?B?bU9ESHdNMk9rZytrZmprVTFudHdFMUt1UFhKbzVvaWtUbmNXNzNjRE9heXRv?=
 =?utf-8?B?ZitIY05vRXZERWRXM1libnRSQk9lYlBHTEhRNUllb25pSzZwa0ltRFZIYXJU?=
 =?utf-8?B?clRDZ0pmOW9qWmswKzlIRkNlaW1IMXhWOUhNcHZFQ3VvY0xWZmJlNnlZU0tz?=
 =?utf-8?B?dkt0SlZQRllMVGRNaWhWdWZ1NENNSlpKdmZYcDJYQ0QyQTg1bk9XOVZ4Lzl2?=
 =?utf-8?B?RysvRlJOMHEvMFY4R3pWRXpvUVNzaTc0KzM5RktDZno2WEJnVmVLcjJCbjFY?=
 =?utf-8?B?Sm95eGpKRG1HUkVQekNkL2NRV0wyY3FjM0tsWWhtTG1RVy9nOVl0QmJzNnJx?=
 =?utf-8?Q?vowhPW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(10070799003)(1800799024)(14052099004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zy9Ha1FLS2xNVDB5d1hBSmFkS2hYNDVoRCtJVjRwZ2xVQXBGNllXNDNtM1d0?=
 =?utf-8?B?cWZ3MVBsRjQvZ0drTkFEY2k4LzBnbUM5TGRhR3hDUStpSHkyeWd3V1BQSTly?=
 =?utf-8?B?WTlJK2lXcXN3SHR6ZHY2WFlKOGt6NGFLcDVnQkhQR3o5OEtiVGJhK1Jicnhv?=
 =?utf-8?B?UnRTRWdRdjJEck9zWTZvd3JKODhMczViT2VyWFFocDRlSjFMNWVFd2JRcmNO?=
 =?utf-8?B?bmdFbHVzc2lHR0lqbS80VmUwRnlGTmR5RitaUkJOZE55QXRxWnRzN2tZS2hr?=
 =?utf-8?B?VTRaTkZHZDdxcnpTQkI2RkpXNHNsS010MFpObTFnS3JTVDJKQmNWNDh0R1Nu?=
 =?utf-8?B?NGFVR3Ftb0w5VklWakJkeTlqaGloRGNuQzBreHMxU1RHWjgwbENWWjJkbWFG?=
 =?utf-8?B?aUNEV3RKdUNsM0JuZ3A1dHFPU0czQUhIeC82NGVJQkJzL3VIcElscmdvZGFa?=
 =?utf-8?B?aDAxdjZwT2lucE15YTI3Nk5tdDdsVTNSTTZEZG9IUStGQlBYVERVc3UyU3VX?=
 =?utf-8?B?NGNHM3czWUFNdEx3VzN1QkJYZVNwSkdFaVJMWGNnWnBVbXlvYnhPaC9wcGM1?=
 =?utf-8?B?WHpLS0VIdWNCejg2cXhzaVk5YVFEQUswN0J3Z0pDUStRbWtvK2QrWXJxZnVK?=
 =?utf-8?B?b3dLU1dMN0szWjNpOTRNU09odmh5b1YxS2NHSDNBa1FIV0tWZzZQT2pnaHJz?=
 =?utf-8?B?NHdXYURVNEIvT1pCNXNkT3hWY0VuOWE5aU1DVHRibWUvNWNESEhBY1FHc2tX?=
 =?utf-8?B?WHdIb1BuUlZRSGpRcFllMGNQUTEwbHVBY0tSOXFxTWdOWldaejJBWVltd3du?=
 =?utf-8?B?UFNTZHE5cjkvcFJkT2Rjd3M2VWdQWElpNStSVWJOMXl5M2ZEMTJIK0ZSc2FF?=
 =?utf-8?B?VW4xdFIraWozdndUQnNkM1JqbVJqYlRsdVdDUGpSaTliTXdvUmU4c0RSSGNi?=
 =?utf-8?B?NUtTeU05M2VLc0FjeGlWN0dHbEw1YzZJQmEwdjZiakhtMC94cHhFbjBPRVRs?=
 =?utf-8?B?RUNRVVJoUENkM0w4S3ZBT0VGbkZkNklYbEFIQ3RaMS9nYnBFSm9lOXJHVU9u?=
 =?utf-8?B?enNYK01NUUE5dzRScUIrdkUxOWVtTy9uUXNMSlkrQkR1Mk54R2VsL0swMDF5?=
 =?utf-8?B?a1dFbXdTVUdJdTR4SWw1cmtkUzV3VEtNNGdmSHFmVEFWNVBLZmNZRkRzS2R4?=
 =?utf-8?B?N3VEeWFNMHk1ZUFWOVg0MThld2xrZkh4Z0l1VWJTOC9IZG9xQjhHMVlZeFgw?=
 =?utf-8?B?Qk9GTTdCK1I2SUp3Y1UzaERCdGZTTXRKdUxIc0YwQmpQWng0Z1hVY1lOaE9x?=
 =?utf-8?B?V0lEaUxvQjVzRkN5cjh4YmUzMlpJdzV0TXloSGtjTzJES3VXY2VKMDA4MlZX?=
 =?utf-8?B?c2JaMjYrZE1MbVhJZDZzNE85MzBiWmJaK0JTWmxKM01IbVB3ZkhjRVJxSXND?=
 =?utf-8?B?V0s4UWxlZlJNWUlsTHNBYTFnaTlpcmZ0Sk9OWWYxRmhMSGIvUmVQdEpCMVNU?=
 =?utf-8?B?ZnJmT3NjMlJjd3dsNVZNL1pmaWVHemNGK3FJQnBuK3hNZWk4QVduVExtYUtm?=
 =?utf-8?B?NllxUkgzUE1kOU5WMjl1MTB3RFFoOTFHREhycENKbThhOE5LOHhOeWtQOElX?=
 =?utf-8?B?OHYxSncwam05MFQ1dDI3OHJJRlIrdVRYdXNUSFlud1NLZzVLT2dvN2thREpq?=
 =?utf-8?B?c2psVkZ0VDd1TkV2ZXY0RkRGVy94ZW0wcFRmbFpJalRxTGdzYlF4QTkrYzdE?=
 =?utf-8?B?RDlWOHJtTkYzNElsUnVWc1hpTW16a1dGTkN0ZWdLa05OVkNMc0FTZ3RISHly?=
 =?utf-8?B?c2M3UmRqSmpSZTVPRXI2SmhuaVlLcEFCYTVFSkhnbVY0ZFFFMjZ4OVZhZUpm?=
 =?utf-8?B?UlhIL1QxbGVtcWg2ZDlpOHpOZGJmdWZXQUZhMU9BdFQ0cHY3clI1MytiaEVT?=
 =?utf-8?B?V1IxblFtaVliTXNEcklzZ2YxODN5MThyQS9rT3dRaUpqa1lWTGRmRS9jMFhv?=
 =?utf-8?B?RGdrcno0YlJaSDRKRXAybWxqUUxnQUZ6K2R3VzJPcWZNQXVrWFhCQXJKUjNz?=
 =?utf-8?B?enh5M0VJeHhuY2dsWlgwY3ZKb2h5V1cwbDdMV2Zod01sSk9DbENRbGpUamxw?=
 =?utf-8?B?bzNYLzNGbHRxbW9ka1lMRG10WExqL0g3NnJ1NTNHdXgwY2RFb21EcjIzeWNQ?=
 =?utf-8?B?c2pEb2dUdVZRQ2FIZDRmSU52dzJqQXBTODZBSG1sUTJ3MnVKUHBoVEh6eXZk?=
 =?utf-8?B?VEJQZkNpRW9UeDhmYm5NZk5sYkdtQWx2SmxNY2lkTjFtUVRocW82NUVZUmJG?=
 =?utf-8?B?QlEvSXp2dE45V1JJWWdzL2M2ME1SaXFCaVpMS2ZQazNIcUM2aVNjckVjSnFm?=
 =?utf-8?Q?5sJx6n4YisDWxFThQizz01LKA01HTa+6+Ytl+?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 282caf19-a31e-444e-07c7-08de580db2e8
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 10:21:39.3826
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I+AR/2ZdGQBCIhbKq329beuOE9+LKw9bebV38KQxcmSynYyXb5Dw5Wa+kIkvDFQhK4BZ0VbKt24Kp4c2hRcYgOBDykmEwhSEfnzUwdncmm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7561
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_022146_625784_2E509B1B 
X-CRM114-Status: GOOD (  22.59  )
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

SGkgSGVpa28sCgpPbiAxLzIwLzI2IDk6NTUgQU0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEFt
IERpZW5zdGFnLCAyMC4gSmFudWFyIDIwMjYsIDAyOjM5OjI4IE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgU2hhd24gTGluOgo+PiDlnKggMjAyNi8wMS8xOSDmmJ/mnJ/kuIAg
MTc6MjIsIEFsZXhleSBDaGFya292IOWGmemBkzoKPj4+IFJvY2tjaGlwIFJLMzU3NiBVRlMgY29u
dHJvbGxlciB1c2VzIGEgZGVkaWNhdGVkIHBpbiB0byByZXNldCB0aGUgY29ubmVjdGVkCj4+PiBV
RlMgZGV2aWNlLCB3aGljaCBjYW4gb3BlcmF0ZSBlaXRoZXIgaW4gYSBoYXJkd2FyZSBjb250cm9s
bGVkIG1vZGUgb3IgYXMgYQo+Pj4gR1BJTyBwaW4uCj4+Pgo+Pgo+PiBJdCdzIHRoZSBvbmx5IG9u
ZSAxLjJWIElPIGNvdWxkIGJlIHVzZWQgb24gUkszNTc2IHRvIHJlc2V0IHVmcyBkZXZpY2VzLAo+
PiBleGNlcHQgdWZzIHJlZmNsay4gU28gaXQncyBhIGRlZGljYXRlZCBwaW4gZm9yIHN1cmUgaWYg
dXNpbmcgdWZzLCB0aGF0J3MKPj4gd2h5IHdlIHB1dCBpdCBpbnRvIHJrMzU3Ni5kdHNpLgo+Pgo+
Pj4gUG93ZXItb24gZGVmYXVsdCBpcyBHUElPIG1vZGUsIGJ1dCB0aGUgYm9vdCBST00gcmVjb25m
aWd1cmVzIGl0IHRvIGEKPj4+IGhhcmR3YXJlIGNvbnRyb2xsZWQgbW9kZSBpZiBpdCB1c2VzIFVG
UyB0byBsb2FkIHRoZSBuZXh0IGJvb3Qgc3RhZ2UuCj4+Pgo+Pgo+PiBST00gY29kZSBjb3VsZCBi
ZSBzcGVjaWZpYywgYnV0IHRoZSBsaW51eC9sb2FkZXIgZHJpdmVyIGlzIGNvbXBhdGlibGXvvIwK
Pj4gc28gZm9yIHRoZSBjb21pbmcgU29Dcywgd2l0aCBtb3JlIDEuMlYgSU8gY291bGQgYmUgdXNl
ZCwgaXQncyBtb3JlCj4+IGZsZXhpYmxlIHRvIHVzZSBncGlvLWJhc2VkIGluc3RlYWQgb2YgaGFy
ZHdhcmUgY29udHJvbGxlZChvZiBjb3Vyc2UsCj4+IG1vdmUgcmVzZXQgcGluY3RybCBzZXR0aW5n
cyBpbnRvIGJvYXJkIGR0cykuCj4+Cj4+PiBHaXZlbiB0aGF0IGV4aXN0aW5nIGJpbmRpbmdzIChh
bmQgcmszNTc2LmR0c2kpIGV4cGVjdCBhIEdQSU8tY29udHJvbGxlZAo+Pj4gZGV2aWNlIHJlc2V0
LCByZXF1ZXN0IHRoZSByZXF1aXJlZCBwaW4gY29uZmlnIGV4cGxpY2l0bHkuCj4+Pgo+Pj4gVGhp
cyBkb2Vzbid0IGFwcGVhciB0byBhZmZlY3QgTGludXgsIGJ1dCBpdCBkb2VzIGFmZmVjdCBVLWJv
b3Q6Cj4+Pgo+Pgo+PiBJSVVDLCBpdCdzIG1vcmUgb3IgbGVzcyBhIGZpeCBmb3IgbG9hZGVyLCBt
b3JlIHByZWNpc2VseSBVLWJvb3QgaGVyZT8KPj4gSSdtIG5vdCBlbnRpcmVseSBjZXJ0YWluIGFi
b3V0IHRoZSBoYW5kbGluZyBoZXJlLCBpcyBpdCBzdGFuZGFyZAo+PiBjb252ZW50aW9uIHRvIGFk
ZCBhIGZpeGVzIHRhZyBpbiB0aGlzIGNvbnRleHQ/Cj4gCj4gWWVzLCBhIGZpeGVzIHRhZyBpcyB3
YXJyYW50ZWQgaGVyZSwgaW4gTGludXggaXQgIm9ubHkiIGZpeGVzIGEgcG90ZW50aWFsCj4gaXNz
dWUgZHVlIHRvIHRoZSBtaXNtYXRjaCBiZXR3ZWVuIHBpbmNvbmZpZyBhbmQgZ3BpbyBkdXJpbmcg
cHJvYmUuCj4gCj4gbmNlIHRoaXMgcGF0Y2ggdGhlbiBlbnRlcnMgdGhlIGtlcm5lbCwgaXQgY2Fu
IGJlIGNoZXJyeS1waWNrZWQgdG8KPiB0aGUgY3VycmVudCB1LWJvb3QgZGV2ZWxvcG1lbnQgY3lj
bGUuIEkgZG9uJ3QgdGhpbmsgdS1ib290IGlzIGRvaW5nCj4gc3RhYmxlIHJlbGVhc2VzIHRob3Vn
aCwgc28gVS1Cb290IHdpbGwgb25seSBwcm9maXQgZm9yIHRoZSBuZXh0Cj4gdmVyc2lvbiB3aGVy
ZSB0aGlzIGlzIGluY2x1ZGVkLgo+IAoKVS1Cb290IG9ubHkgdGFrZXMgd2hhdCdzIGluIGRldmlj
ZXRyZWUtcmViYXNpbmcgCihodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC9kZXZpY2V0cmVlL2RldmljZXRyZWUtcmViYXNpbmcuZ2l0KSwgCnNvIG9ubHkgZnJv
bSBMaW51cydzIHRyZWUgQUZBSUNULiBDLmYuIApodHRwczovL2RvY3MudS1ib290Lm9yZy9lbi9s
YXRlc3QvZGV2ZWxvcC9wcm9jZXNzLmh0bWwjcmVzeW5jaW5nLW9mLXRoZS1kZXZpY2UtdHJlZS1z
dWJ0cmVlIAphbmQgCmh0dHBzOi8vZG9jcy51LWJvb3Qub3JnL2VuL2xhdGVzdC9kZXZlbG9wL2Rl
dmljZXRyZWUvY29udHJvbC5odG1sI3Jlc3luY2luZy13aXRoLWRldmljZXRyZWUtcmViYXNpbmcu
IApTZWUgYWxzbyBPRl9VUFNUUkVBTSBLY29uZmlnIHN5bWJvbCBpbiBVLUJvb3QuCgpUaGlzIHBv
bGljeSBkb2VzIG1ha2UgYWRkaW5nIHN1cHBvcnQgZm9yIGEgbmV3IGJvYXJkIHF1aXRlIHNsb3cg
YXMgd2UgCm1heSBuZWVkIHRvIHdhaXQgbW9udGhzIGJlZm9yZSBpdCBtYWtlcyBpdCB0byBMaW51
cydzIHRyZWUsIGFuZCB0aGVuIGdvIAp0aHJvdWdoIHRoZSBkZXZlbG9wbWVudCBjeWNsZSBpbiBV
LUJvb3Qgd2hpY2ggY2FuIGFsc28gdGFrZSBhIGZldyBtb250aHMgCmlmIHRoZSB0aW1pbmcgaXMg
dW5mb3J0dW5hdGUuIEZvciBub3cgaXQgc2VlbXMgbGlrZSB3ZSdyZSBzdGlja2luZyB3aXRoIAp0
aGlzIHBvbGljeSB0byBhdm9pZCB0b28gbXVjaCBpbiAiZG93bnN0cmVhbSIgRFQgaW4gVS1Cb290
LiBJIGtub3cgd2UgCnB1c2ggZm9yIHRoaXMgYWdncmVzc2l2ZWx5IGZvciBuZXcgUm9ja2NoaXAg
Ym9hcmRzIGFuZCBTb0NzLCBjYW5ub3Qgc2F5IApmb3Igb3RoZXIgdmVuZG9ycy4KCkNoZWVycywK
UXVlbnRpbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
