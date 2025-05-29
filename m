Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F24C2C5B554
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 May 2025 08:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzmvmGoGb/U1oIPT7iLQJku5VCKI7NRJgZS8eyZKCqE=; b=F+ynTwHHsEtndd
	xOB3+YMeoJDsY8QwSVEBsKL4PVM5ShTgfxfmIYkIuHMf/Wkg518TuCgCLsAgz5Dr2IBAsK9kIoanA
	KqXLtEQLq93noWDUAgdi32PfDLJBpQQgTSN+K9SrvzST2P5DGknoXtk91YQJulaGPow50W4tp6Nfw
	1M7W/XptOoW/mVtcRdnpTS259E9OPntQRdoHYc9MvZh78Wj+yiI+LAL/8+MZSvMIuKL+y4UXxLsIe
	8RkpHIyht6Gx3zZikSoiR87Ol5K8mac0SMY/Ncwz1pPiH8l2vq2DpRRUGjkgNCDW2TucVf9MQUqan
	flLc/qXTpII0LZEg/5Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKZ6a-0000000FJFt-1QZy;
	Thu, 29 May 2025 08:59:16 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKYkA-0000000FGN4-2HhF
	for linux-rockchip@lists.infradead.org;
	Thu, 29 May 2025 08:36:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1748507766; x=1780043766;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=alcsn+c1AVOw/r1HT5r6mkXPxWbgxCegU1N05lt1bm8=;
  b=dJq331r5WfrXFQIhKSsmc2rPzAeIwVt3kDg98jEzEt9rBtKjsyJPNtwM
   g5Dqto65iRkScG7qvMTFfR10fOJ5uRjrRBjYa5/DIKLyW1rjXE5qJ7syD
   dgbpMFhNb54b2h3iWJzTOt9JCKkuYrxQPyxX0AvluwJTF/YZI5wwDAsGz
   1F4AjAUxMSEwwLFwH+yXOA1sSKLbP/P5QFtc6BSucUe34NqQLGbQV7vzo
   Gu3P0Pq5TQ3Nb4MsHLoxmf3Xp0AMgjY4apF+TNv0th9OmWgpP4TdNk3mq
   Z/mMVTxTY7sIOQaxMnCSXqUjG2bjxr1n/A0l/AO/okVkDCRfz5RgNWHqR
   g==;
X-CSE-ConnectionGUID: cdKE80kSTIOi5h3WX4L7lA==
X-CSE-MsgGUID: v153+DmLTICWWq5aHAaSZw==
X-IronPort-AV: E=Sophos;i="6.15,323,1739808000"; 
   d="scan'208";a="89591905"
Received: from mail-bn8nam12on2051.outbound.protection.outlook.com (HELO NAM12-BN8-obe.outbound.protection.outlook.com) ([40.107.237.51])
  by ob1.hgst.iphmx.com with ESMTP; 29 May 2025 16:36:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tk0AJivBQXBIbgGWQ+GcpIRt1vcoYgGqjsqPAkOmFVYxu++Plx8xw4tP2JWyQdMDdAW3yJD/+ciFc4vQ8ypqBxbq1S8wadf619/I77jJU1OnYaXGcpxJu0vNeLxFofUpr/40LRIoqTaYITJ3QPTdvl31TbpD+FUKGvH6wO2uszbdtavuRhcYt79ap1a8xh+KZBRylavbDDUqdxCWhjjW9KYU+E+mE44OZJt808htVtOe9BiAg2C4ySKR2Ob4mF9hOrk9pm6aOFG/t8FAFF1p75jlqoUpIgaCNyvM6GWQUuI9lF1YSa13qJaBfm6gDO3j4r5jO+oSBsEAgI6Defsl1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=alcsn+c1AVOw/r1HT5r6mkXPxWbgxCegU1N05lt1bm8=;
 b=BEmKpVVhdAxTGmqKfHLENWFS30ydM4T29PLPRV3uVtfGRcVLQlJT1rb+JL9q4DmXDrleKOuiJnAHSHKSxDmoqIa7sFUvHGGhZLfA+/pK1oo+5fy0O4Gu3Ef7s/4RsZOkY1PD0JrmvK47v/xD0ehMRk6mQJwmfLJdvhed9heexy8zlMynYn7UJ3XdjLyrBRn6W8EhXJ3HD1tknIttnRbd0mjypvnn1YVUpcGtLbP6DrhxSiYNP43sKYhX0v5rORKvvfStHUT2j7hy3dBzJ/NDfAZ//9XBr21qXikK56jtjv1/IKSBhxAYPxnHvns25oMF5hzHxY8SpGGkc43PscsqwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=alcsn+c1AVOw/r1HT5r6mkXPxWbgxCegU1N05lt1bm8=;
 b=okxDwNbnuKVK7s7hpvMidH//5kac/lzL9/IJS8ira6h5jhGT3hvj6OFB/Mu0jkyL73SIuVgJofZ+C8xSDqcjkoTjIxViKwyANL8Y9/7ZWUNsTYRORu9tn65hJ+xHZ3Js/G+nQJpe2ythF8Vc+7CEvyM22EyYl7rBDXJ8nmZer/E=
Received: from PH0PR04MB8549.namprd04.prod.outlook.com (2603:10b6:510:294::20)
 by MN2PR04MB6863.namprd04.prod.outlook.com (2603:10b6:208:1e3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.27; Thu, 29 May
 2025 08:36:02 +0000
Received: from PH0PR04MB8549.namprd04.prod.outlook.com
 ([fe80::5b38:4ce0:937:6d5e]) by PH0PR04MB8549.namprd04.prod.outlook.com
 ([fe80::5b38:4ce0:937:6d5e%5]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 08:36:01 +0000
From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
To: "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>
CC: "kw@linux.com" <kw@linux.com>, "bhelgaas@google.com"
	<bhelgaas@google.com>, "cassel@kernel.org" <cassel@kernel.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] PCI: dw-rockchip: Delay link training after hot reset in
 EP mode
Thread-Topic: [PATCH] PCI: dw-rockchip: Delay link training after hot reset in
 EP mode
Thread-Index: AQHbyxaqha+l71FMZkyFVMP1KnQns7PpT4+AgAACB4CAAAGlAA==
Date: Thu, 29 May 2025 08:36:01 +0000
Message-ID: <0f944a9f66f9c5f036c01b3bd373761a6c6291ac.camel@wdc.com>
References: <20250522123958.1518205-2-cassel@kernel.org>
	 <93692bd09d8515da1506fe89b82caf91ea1012f2.camel@wdc.com>
	 <hd5jw7d2n6kblxmyowvbikhrngbwmca4vh6wft4g56wfayiwo3@ygfap7z5lbdm>
In-Reply-To: <hd5jw7d2n6kblxmyowvbikhrngbwmca4vh6wft4g56wfayiwo3@ygfap7z5lbdm>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8549:EE_|MN2PR04MB6863:EE_
x-ms-office365-filtering-correlation-id: 043ca489-d4e8-44fd-7fb9-08dd9e8bd815
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WHR6d0V3OU1TUC9UZ21BRkJNb2pCajV6MmJNUXFaMjhoc1ZCNTh6MmZQUGdT?=
 =?utf-8?B?WjR3QWk3azhWQVlhYmJvN1BIakxMd2NxWGlLRFVhYnJhSlVTYlhLekFiS3du?=
 =?utf-8?B?anlDOUxqamZYSERZc0J3WVF1ZVdEbGpWWDhhdHI0eXRpNGJEN014OXBSbWRr?=
 =?utf-8?B?a1krQVBBbk1MczV1ME5JclBmLzd0aThidU14Q0VGU3h3RkpPUERReHNmYW16?=
 =?utf-8?B?WWx5VFNSK2ltV080YUtMY3Y5czM1dm1EMFdSK0dOUE50WDcrRmhsbDBsdjZB?=
 =?utf-8?B?bzBHbG1obEtoL1d0TUdXRkpPOGlIZEZNNGRMUitZQ0JwYnZBa25jVURpVHBh?=
 =?utf-8?B?cGcxRDhtTkFEYk1ha3pxN0VaL2o3cis1emJyOEk2cEFRQVlqaFR3WVVWU2hm?=
 =?utf-8?B?N2JKNmlUVmh1dVFOU211VnluY1l5Sm45OVVPT0JwMmUvT0Q0QWtzejN0eWhw?=
 =?utf-8?B?dmJlSVEvMlB0MCtVY1UvdjlKdDI3RVNGZEorVDduNm0vZFN4YkFnQ3VHdkEw?=
 =?utf-8?B?UlpaRzZNR0pOYkM0MTR0K3BYOXN5WUtPME5adFhoUDhZM2d5bExFUzM3UUtG?=
 =?utf-8?B?WTZ2bHBPRDBra09QUlhmRVNmd0R4TEtuc0RHajhwVVlidTA1eXFteVhEQ1BX?=
 =?utf-8?B?ZzFCbC9MU0twenRKUEdhMGhFYWxJS0hnYkk2RzRTcXdEbXRGUDR6ZE9EaHUy?=
 =?utf-8?B?WEdZTk10V2p1eEZmQlF4ejB4TmErWjVQSXNYeTFWTXF3S2s0M1JBMGVuNjNR?=
 =?utf-8?B?c0daR0F0VXloZHpDT2thTGpHZ2w4K1UvRHFmcnN1bGgwQ2Q1ZWlUQkRrTEdW?=
 =?utf-8?B?eWV1Q0RNL1J4a0hLRkN0czQyUWdXMkl6dXRoMkVmYUdSemR6NDN6T0thSFRo?=
 =?utf-8?B?eFpBMW1ycjNHenIwcjgyYk53aVlhSXRGNCtOdHFwQXdLczFWWlBYWjRxTlN4?=
 =?utf-8?B?eFNiK2x3YlQrM1J4VlVpa0JkalFIZ3dwRU0vUHJqZ29LYUhWT1JLSWIzamkx?=
 =?utf-8?B?MlRIS3JoYTVMOUI4aDdEdHA4Y0w1UmgwcEtPSkpRdzM5RUVUcVd5MTVJbldQ?=
 =?utf-8?B?QWFXL2VaS3lTZFRPQVZrYWJhcGoxQXkzeSszeGdidUUwNm5xSk5LU0xib2JV?=
 =?utf-8?B?VmdBWWpCZzNBYXNFdzdrUkhTUzMvM0c3eGRJelozaGVwVTN1aWNLTXJhN1JO?=
 =?utf-8?B?UFJwVVNQbS9Jd3lIcFVqRjQyUFJzYUhaNHJScFMxMDhLbWI3dWN2S2dBQjNW?=
 =?utf-8?B?MHFndVFPMm8rVjNxNENBblJ3QnVha2ZPdktxakFnVGI0dzYzc2IzV05QR3k4?=
 =?utf-8?B?RnA5NWVLTWd3ZXN2blRpUTVxb28rL01OTkZIdlN4aVVsUjJ1cksrZWhKMDNU?=
 =?utf-8?B?OVFLYkRrV25iODFiMmExZmk5MW9KSGQ2dnpqUUlKaVRqeGtxdk5iRFlqYlNV?=
 =?utf-8?B?NFgvTnNsbElKaDgvOXVRKzh2b3NmcTVyM0F5d3RLUjZuNVQxQmpEbkNZYVp0?=
 =?utf-8?B?dUMrOGk3cE8zdTBGOE9pZ3JlMFBjZUdxTGNvZnpLSWQ2N0pwc3hhR1dhRHpC?=
 =?utf-8?B?aG5udUljR05aaHhrOU8zbGwxM0RJM0Z0TzkyWHRxNEd5bkt1OU9NU2w1MXVO?=
 =?utf-8?B?cXNwbXlzMmRmYjhEbXlIYnc2TTYvWDZtWWlESTV5THhjS2h1ZCt1UWQzd2gy?=
 =?utf-8?B?WE1hUUFsbzdpWWVja0Jncm93SWlBb21WMUZKam96Q2N6WG5xOHRCZWwwc1Nh?=
 =?utf-8?B?WUJvZlNBcldXbXR5ZjR4clJLeGVyM2UrMzNUNUNacWlJRkZMaUttUXlFRjZh?=
 =?utf-8?B?MW1SZzY1TllIWHVGQ0VzNUIvaVhtUlRNdmQydzYrOVdFdWIvL3NNSFdLWVcw?=
 =?utf-8?B?bzFXSlJDb0ViVCtEV2h4dzA1VjZDRVQra2JtUHpXRDRHYWJFVDZ6MldqUDQ5?=
 =?utf-8?B?L1hWbmg0eDF3dld0TFFNU2dDaG9aZ1Z0aWdxYzRzbFFUQVdVNlNpUVJtQVY2?=
 =?utf-8?Q?VaxT6LYKE33SXNEqv63CYeqeyktJfc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8549.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZE5RSk42VXh3YVMrci9zV21uanBRTFE0VnhJZUVHU2VNYUNFOWwxelk0Y2U4?=
 =?utf-8?B?dTdDS2lQTnVWYVA0cjJnc3BXQm96ck5YK2pCdyt4S2N1VEJvV2hEaHdZeGZD?=
 =?utf-8?B?dzAzVEwyVG1iRk9ldnYwQ0JCRjVIZTJ4bFl6K0FjQ3hlWWJGbGhtdEhXQlpT?=
 =?utf-8?B?Q0dpSHY1SDBmMXRETnI2NVRhdnRDY2dZNEtZaGtLcHlkWG0rOG10dlF2c0xH?=
 =?utf-8?B?WEJmaFcwZ2tHYXZtcnJiUVMrMmltNEw4QVUrYUgzR3lTd3lXbnJxQzBoVE1W?=
 =?utf-8?B?VDVMMWNrWkJnZmVIaEtadWhpd0x1eWZDTTF1WjFYUEdRWHFxVkFGK0J0RXBM?=
 =?utf-8?B?QzJwaGZvQ1NvOW51NnJzRFRFbXpMZ0hoeDRua3NYSWFCVzFUeGg5VkFXSzhF?=
 =?utf-8?B?MXY4UGVVK3padGhneTZEQTNZYjRFdm90WTZSN2dRUmF6aVF4bXA4Mi9haGNE?=
 =?utf-8?B?OVN0OWtsK0ZFQlBNbnJKU0pvSXM4K3N5aXU4c3JaTGd3UUNOTW5rQmRuZ3JJ?=
 =?utf-8?B?S2FDMEhmbVYrNmthNFRtdEVkY3RzSkJNVjdKSGdBTUZCbWk2WFR6UTM3SHYr?=
 =?utf-8?B?THF2ZVVYQjQ4L2drbG5ETEI3UVBrbk9nN1hWbnRzeitkWjBSQUFSZEhXalRS?=
 =?utf-8?B?WUlLaUxYZjh6USs1blVPY1FEMHNwUDFicWRuRXdVUzhKTnVIQ0VoaWJsOG96?=
 =?utf-8?B?VW1JUWQzQlZwTUxNdzJpa3JLYkpVL0o5ZXhMYTlRTUYzTVNVWDFyWTF2LzRP?=
 =?utf-8?B?ajdIbk1UcXFVR1pzYVBoWTNOWUthL0kzV0U2dk50WGZkM3d3QXRqc3pIWlFn?=
 =?utf-8?B?NlhycWpwUVhKWDNnQ25qOGR6alI0UmZYTmc5V2EyTUFJcDBMSXZSVEkrZ3p5?=
 =?utf-8?B?OVJXYmt6eUFsUmQrR2VubHRaMXgrSXM0WDB3LzBEcWdmaGwvKzhwMVB6ZDNj?=
 =?utf-8?B?aVF3b2xJcnZZbTRoWmlsN3E4ZURCZGpZN1Mva0JVblBkeHdvU3hGVldZeWNR?=
 =?utf-8?B?TzFKUXo3eDdxNXlhWVVORVlXZDY4emtZVjFYQkdVcDFrRHJaVlUvU3J2Tk1Z?=
 =?utf-8?B?WG9qSytqalBBcXJ2R1dmYXNVdkVVWE5EcUtWdHBWRG1HVFhvQS85RkhKUjdP?=
 =?utf-8?B?ODFTekpSUWplZVV1QW5MVkV3ekJncEdGMXVOa21IM1lYb21PbHJhcHZ4bjRX?=
 =?utf-8?B?NjlxbnBCNU1ORkZqVXJOQ0g1emxnVUh2am9iSWJmVEZZcnREMEVkLy9lVW1V?=
 =?utf-8?B?NWtEZ0crdUlLckc0M245TFNiaGhsdVJ6b1RiNU42ZGNDaDZ2WWFHcEN1QWhH?=
 =?utf-8?B?R2NteXlQWWt2L2Z3NmF0Uk5LTlRaVktJdk9CcnZOSTNsMVBaZDdwckFTY2p1?=
 =?utf-8?B?MjZ3Z3FsVnhQRldxM0NSZWVBRWxLWTZUSHY2NlI4NUlKdDdsVitYck14U1lB?=
 =?utf-8?B?eUFGN0o4czNvSzZYbnZMUmZkRjdIU2NEQk9QeXpKcHlyakZrbDdOK0laWDVC?=
 =?utf-8?B?RTNSYUlWeC9kOGhoT3NENnd2K1pDNXRDbDhpazRzcU1ONGlGVThoeTJyK2U3?=
 =?utf-8?B?Q0ZJRHd1b0xMMzlMb1dsaTdoYVlDazlVZjJjV0VmS25MSHlOdldhUTNKNEpj?=
 =?utf-8?B?SEpOcDAwNTg5UUtiemMzb2RVcGJIcmNZZk9ld0E4K2JOam9rVWVISjZiZGs4?=
 =?utf-8?B?OVlTdW4yNXluWkdhaVBEckNHTEp0NktoKzNZdU02dEgzV1hnYUNFVzcyNjgr?=
 =?utf-8?B?UmphSHU4dnpNU3A3eEkwQzFxYjlqTnRxNHExOUhVM21DLzRsZ1I1Z3B2NGdj?=
 =?utf-8?B?ckRHYTRCZHhSbElheExVWDdFWlM4bEpxcHBIYzI3aHp3V2w5QVc0ZFpEYjdH?=
 =?utf-8?B?RTlSSEdGeTVKeDdsRmk2V2Z2S0dMRC8yS0ovcGQ2RFNObGt6b2laSDJ5RGpk?=
 =?utf-8?B?SDU3NkdsVmJsR0JjSU13N1dQMHQ1UmljQ2plNk9rTWVtNW1hVElEZ2Q1SUZK?=
 =?utf-8?B?YkQ5Y2FhMDkvQ2xGNDcxcHYwNkxKZEVzekIvUFJuVjJKZUtKTUlwUktOenhT?=
 =?utf-8?B?YTdvSmYwaTd2RFFtRTZTTnFSVjJlOEVkOFNkNDRkY3drYUZOcU5KR2sxeDdp?=
 =?utf-8?B?b2w5OHhXTGViTExFZDV2dS9PK2J0MTBUcjlLcktTUDRGR2ZNTGVQd3Btb2N2?=
 =?utf-8?B?dHc9PQ==?=
Content-ID: <25328D9C1EE92847A7C37254A7B8552A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: SE5DpRC5ia56Z7VovZ53A6jDnFjDFulro+Pn4G5mZ+13ChKEzobmOYApNxqv3EZN4aWFr36x0QQjRGDi8x8H+hhflm76yNgPXURKja4WEtsz4AF7U//gk+/hBMtQVFYwG0Yo4Z9SRBF8nE/8rZcW8kxVLBGlYkr8Jk9URJc3524HpocZYdXelCvxv9qMZynHpD8155iaElDJCuVZhq9qwRVUSQfDRcHIoLcApQhGOZbE1bA2Mc10FN1+dLBtuJ9WnrRbIXWwfugFHKO1mULdTVBzXE03m793Z2EtlxTzPEYyiXIm3ixThhaDoWqsRWHQHiZnx+oM4eopAJfv1sypQKo4TEpvo9J9UCfJlSJ5vN9qbSRCRseIbRNguy7zrODDmEDgPg8Jrh6IHUHM/t0VXnYVsy2u0hQdqBBXpUAKiOlm7kE2WOa4uaq10BBuK4a1p+GqPu7foRaE2IRkMS3dWsPQhIgWOOAExS/4rG3goOUYREoXPvMszQ5+tg2jTvDNF1VETZMz83uvsD7ceXR+OlryUpJqNh45eeX3/C/kV8QBWtkCPWnY7LwbVArM9TRCjdjj92TtAICll7SCyQG04VB/kuQ4viivQ+Az8DodjFzQpWMYfOjYhrFy7rOHh/Cg
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8549.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 043ca489-d4e8-44fd-7fb9-08dd9e8bd815
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2025 08:36:01.9312
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PgFzulXDOm62mdsmfuteB3e8WyOOYofrTAQJ5CxFv7nXgAB9MobzIMFupaw65PCmIMzM4ALYULp+xDL37xQfMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6863
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_013606_648902_7123C84B 
X-CRM114-Status: GOOD (  13.58  )
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

T24gVGh1LCAyMDI1LTA1LTI5IGF0IDE0OjAwICswNTMwLCBtYW5pdmFubmFuLnNhZGhhc2l2YW1A
bGluYXJvLm9yZw0Kd3JvdGU6DQo+IE9uIFRodSwgTWF5IDI5LCAyMDI1IGF0IDA4OjIyOjUxQU0g
KzAwMDAsIFdpbGZyZWQgTWFsbGF3YSB3cm90ZToNCj4gPiBPbiBUaHUsIDIwMjUtMDUtMjIgYXQg
MTQ6MzkgKzAyMDAsIE5pa2xhcyBDYXNzZWwgd3JvdGU6DQo+ID4gPiANCj4gPiBbc25pcF0NCj4g
PiA+IMKgCS8qDQo+ID4gR2VudGxlIHBpbmcgOikNCj4gPiANCj4gDQo+IFBsZWFzZSBnaXZlIGF0
bGVhc3QgMiB3ZWVrcyBvZiB0aW1lIGJlZm9yZSBwaW5naW5nIHRoZSBtYWludGFpbmVycy4NCj4g
QWxzbywNCj4gdGhlIG1lcmdlIHdpbmRvdyBpcyBub3cgb3Blbiwgc28gdGhlcmUgd29uJ3QgYmUg
bXVjaCBhY3Rpdml0eSB1bnRpbCAtDQo+IHJjMSBpcyBvdXQuDQo+IA0KVW5kZXJzdG9vZCwgdGhh
bmtzIGZvciBsZXR0aW5nIG1lIGtub3chDQoNCldpbGZyZWQNCj4gLSBNYW5pDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
