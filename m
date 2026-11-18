Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4E1606A32A
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 22:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=v1JAVArV;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=wdc.com header.i=@wdc.com header.a=rsa-sha256 header.s=dkim.wdc.com header.b=lHcDwLyZ;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=sharedspace.onmicrosoft.com header.i=@sharedspace.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-sharedspace-onmicrosoft-com header.b=X2ShAAX4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tpwQ/hoD/CQZdHyJ9mge7WMQqCjJ6R+/0R1NNM8w9aQ=; b=v1JAVArVfZk1Ax0pprONyirE2Y
	tkVklJJNYihMCc9HqqynADOm/bILcIFE1YzXOtXyaCFi9X2ElKaT93bvFQCqL8CxB0Lk9CL/Ic0YY
	SC8OySSoJH3tAKu2iiIZgEiz6793Mz8lGPqphg5uHQeSXHl5APYRnk+GBnPA3lYYLJxUNseQC3DlZ
	mK3O800+AbT5zCfWRTMrgjwa2GT4JzhGftrf8cLqXezvET/5UjhxR7D3UxmInVKKM6jHz8g6zJxbu
	GggkPj6LnvPiE9SYraroNLK6qrtBvLLhf4aVIkTdOknqsy82jBtJ6XuXSzcR4yoortNNP+JunZjaM
	HdQTqk4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xToRJ-0000000ARBd-2jL9;
	Wed, 18 Nov 2026 22:47:41 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xToRG-0000000ARBE-13Ri
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 22:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1795042058; x=1826578058;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=4ve9spr0wrJI/SLzVSfv2ku9lb/+h126sQSfIv9JxVo=;
  b=lHcDwLyZa9+dR8L10MI6kRusys2SRG4kmKPS4Ey65xPkkqSwmTU41jyC
   HbXtNP7v+xMW6kNZtvpgkXyXA2MrLV9XhJWbHPSFSUG0ZHa9fkisWuNXW
   Rgkc7f4c0wWqA5ujRFOw9WXutDKg3z9JUi3f9w5spV8BKAqyeAIRfydjL
   10X/WRo5YkadmaZJA40BmbkXuLzK+GtS2fckkcGrTzBX9UU+4umnAQjL9
   4diVwuEzo360C0fyM2aoCX7H/8VmK9QU9ByCNTWliqTvo9n9W+t24ziQf
   OS1HrBMhxHBxeH1cEMXOlaaKN0jH5NzqV3eeU3qMtL/S3TipVlmS3wOvm
   w==;
X-CSE-ConnectionGUID: 1zG4ZMc6TV2GeOYEoYmgTA==
X-CSE-MsgGUID: kl2a9jh5Q+WxT43gn4RTsA==
X-IronPort-AV: E=Sophos;i="6.27,219,1786982400"; 
   d="scan'208";a="156985507"
Received: from mail-westus2azon11012027.outbound.protection.outlook.com (HELO MW6PR02CU001.outbound.protection.outlook.com) ([52.101.48.27])
  by ob1.hgst.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Nov 2026 06:47:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J4SD6dx+hs2l7GUb6fDmWyDoRAoJWs56uKFh4sZKnr2VN4JnP0AsS/MvMZIE35DWiogDlTVrnrspF/GLxK0Hz77XtKPyCCZNr/I8pIvLEdyTUTXqzBceqJy5bzMDSXfWHg2csHcWAIM4kbrBhL+k1/ZV8YYHYl8SNyJ1q2PJC6CsdnEy3UQXZ0MMR7HIy+vkj6SWeMRrMaIzJufVasWauazRj4HUDG6PayflJjZe68T5KNN0inwJslyH7eJin1AcpHs6PIdpCRL1pQxtymPHr6kSaJ0MS4lMP3ARBb+0ACIhjH38/A0DwImJ8MQYDvfZHPnE2gK0F4tn9tFfFwBt5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ve9spr0wrJI/SLzVSfv2ku9lb/+h126sQSfIv9JxVo=;
 b=HPYEAjfh1FJcHaNSaHybK+d1yBon9/LK2G9jXYcZMGXycNBH4pxTBghjV5iPN0NY0YS5XN3gBhK93vfrBvUeXWawC6Rnqye0RM0U7sH5SzU1duoIYV7s7otgqVx+ZUHZa53F1NbRmJ0EljUjlFRMLbgwCirtl8ddp2/Tas3dkzlqqWQvbYEcKkQ8R6YMafD5IO+gA0jjQJYKqG6CLFjdgI7AiyZE4r2Hb7XkosK1MU1ymj+Vym/0qfPOYLd0lpUtl+pz88pFEYa3W/EOK2wW5rrdNpoe7Egm0a1dMYtQAO0EwNdj5CEn690TEedR5nFjT23sANCc+yTSn44PYMlMLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ve9spr0wrJI/SLzVSfv2ku9lb/+h126sQSfIv9JxVo=;
 b=X2ShAAX4CEkLLUwONU6D0YCejWQYsr7pRGE78RDZQ+jbaBorVGgOVxlogiw1Yx2gPrkhG5Uk8uIFx+qSR1H8THEExQWe+XmQ3HHiC/atCGfb5B43vbTd+6X2iLov1L3NispLiyT69j7ioH56trmLPLdmkawly+8hCDP4sLxs0O4=
Received: from IA3PR04MB9680.namprd04.prod.outlook.com (2603:10b6:208:510::12)
 by PH0PR04MB7432.namprd04.prod.outlook.com (2603:10b6:510:9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.615.14; Wed, 18 Nov
 2026 22:47:34 +0000
Received: from IA3PR04MB9680.namprd04.prod.outlook.com
 ([fe80::380:1453:ea86:e64f]) by IA3PR04MB9680.namprd04.prod.outlook.com
 ([fe80::380:1453:ea86:e64f%7]) with mapi id 15.21.0615.012; Wed, 18 Nov 2026
 22:47:34 +0000
From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
To: "chewi@gentoo.org" <chewi@gentoo.org>, "cassel@kernel.org"
	<cassel@kernel.org>
CC: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"manivannan.sadhasivam@oss.qualcomm.com"
	<manivannan.sadhasivam@oss.qualcomm.com>, "bhelgaas@google.com"
	<bhelgaas@google.com>, "shawn.lin@rock-chips.com" <shawn.lin@rock-chips.com>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: PCI: dw-rockchip: Unable to boot Quartz64 Model B from NVMe since
 reset changes
Thread-Topic: PCI: dw-rockchip: Unable to boot Quartz64 Model B from NVMe
 since reset changes
Thread-Index: AQHdd3Za9kSCHdFgJkmPVJ4E1G/DKrc0CdcAgABgI4CAAASygA==
Date: Wed, 18 Nov 2026 22:47:33 +0000
Message-ID: <000b6952e6ee4718d316ae0e8c78bc6e7d630116.camel@wdc.com>
References: <08cc96c5171fc969b074371692e6d95d46eba60b.camel@gentoo.org>
		 <av3WcJyt_tRXNj2l@ryzen>
	 <a112657de590aefc2b306ebc9e6771cbaa76ae82.camel@gentoo.org>
In-Reply-To: <a112657de590aefc2b306ebc9e6771cbaa76ae82.camel@gentoo.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR04MB9680:EE_|PH0PR04MB7432:EE_
x-ms-office365-filtering-correlation-id: 05a7d4f0-d25e-406f-c117-08df45c5efa1
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|19092799006|376014|23010399003|366016|6133799003|22082099003|18002099003|261009223027099003|3023799007|11063799006|56012099006|4143699003|261026121527099003|261102123227099003|10067099003|261028144727099003|261026140227099003|261021121427099003|261022105027099003|38070700021|261021123027099003;
x-microsoft-antispam-message-info: o955sKmBHMzOi31EVMxoExCa0tf5U1K5fo5mhk40SElBQYq8xiJZXB0fOG/vCJRc+ODPpTjp+HnX6s7m14JUeMF7lgG2CmyDg88uLRQ0b3rBZsbIQ1lGv2CekNlyVcoblXEUgTdIzUZ6HAleCiZA1FZBq52SF5b1UHUIjJEYwuCSv2pFRhOMb4HDKoCWlHCYFRwa6rn0ExGLQcz079O8oh0MuCRYpwBS/jC/wJse313K3CYCtnlmp1DhbpAt4HT/tu+Io81ZApEr72bzLzki/7QWWkoTZlPNpJUt/FV9PZroqUYJl7FLqPU4V64QVP6tEmWtJyG/Z2WpSHu7yIxw7/eo/xSHaIeSfAKZ/WoBJyrADFJhB29TRjQR2611NSPDMfulG+9MT6ldIypcn4Y8oYfdnXNKaCLtNYu0oTT570FQS7jHL0Ska/gP6yp+plKLjCxAVBJjGmN1GdnY2kOw7tngyOZL44s4/hsAOPx56k8+FbYN+EzSktGsucahu1byMdxbYQGwvz8heIlY46jZlJXbcDnLb6I2wRXjdoapojqz56v9CV0LL6SN8psWY88T4maEw5w6HNLnEATjlrWfCgeuenJnnN4AtL5D9f/RmGrOsxphrlLYGPPvJZO2xun2vqBTmNkDvyxIUyoRkZGpc3MhBOxJDVB8YnMp3RNF8Wk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA3PR04MB9680.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(376014)(23010399003)(366016)(6133799003)(22082099003)(18002099003)(261009223027099003)(3023799007)(11063799006)(56012099006)(4143699003)(261026121527099003)(261102123227099003)(10067099003)(261028144727099003)(261026140227099003)(261021121427099003)(261022105027099003)(38070700021)(261021123027099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aXhvbCtVV2VzMnVMWlhqMmNOM3k1c2Y4NEdxRUVCaFIxUDl4cm1ibXFPM0Fs?=
 =?utf-8?B?Q25abXRoa3duTWh6SEVlbWoyRmJkOStaV1E1ekg2V1ZjMk9LWk9lSTM5OFg5?=
 =?utf-8?B?U1pXQlU5WnBYUWc4UndpeUpHaTJoZE9Gc3VDKzlKUFlwVG1WckpmWnkzWTA3?=
 =?utf-8?B?N0VnWEpOSVkvSFh5K1V1eDRPdDVJNmVkdVlpa2lZQ2k0WU92aC94SXRHd1ky?=
 =?utf-8?B?RnJUT1VxZERCcFI4SjJrMTVMU2NHQ2hOcEt5bGJ6R0g5Q3g3ZVp5bDdBbHJa?=
 =?utf-8?B?VXcwMytiNlJJYkZvVHJUVENodnRKSjRpRjdFUDhieWY4WnFXMDdTQkhZOHEx?=
 =?utf-8?B?c0RkTW9UZnlhT2RObEFXQnB5NEtpVWZsbmJhNEprdU1rWWNodHBHb2JrTG9w?=
 =?utf-8?B?SExpaTRmWXppc0NBM3FOeC9mMktRbU1oMlM1eW5mQUlibDFWQ0FrWVdtM0d0?=
 =?utf-8?B?YUZHbFQvdURuaGZwcENHUEhFKzlYYVBSM2ZIMEJsUUtWREo3RHNYN2ZwU05E?=
 =?utf-8?B?Qmd6K215QUpkd2c0TVVxSWtPRXg5dXBHQXY3U1RyTGRISXRGbElUeVBHNmYy?=
 =?utf-8?B?T1hLc0F6N1ZNRDltRGJBWXd4c0JMZVkrUEIvYStSOEpxSTZaWFpyUmw1QlFl?=
 =?utf-8?B?RG1kaUwwZ0JjeTFxZnhmVEtaVFU1YmVIVkxEa3pLb1RYL2dYWnRrMEF5LzI5?=
 =?utf-8?B?VHA1ZDJUUUI2UkpxMnVsQTVucEZlbHJkT2psZkpnaGRHWTI3K0UrYkVDSnVU?=
 =?utf-8?B?dGpraVhNbGNtNXE2WllDVm5WY1B4VFJNUFVSWE04dkNqaTM0WkNSOGI2ZEVn?=
 =?utf-8?B?ZUNtYXZ0SHFNOElCOW9QRE9iS1VGamZMSHdXeVU5MThFWHp0RG9KRk5ScytC?=
 =?utf-8?B?UzRsRVJnYnNoWUZKWTBXOG9STTRJeDV5SEdUY3N5L2lyb2Z2dTQvWENhTXZE?=
 =?utf-8?B?UVl0Wk54b3dFMENKRHYyMHRrWUlUS2FjNGI1ZVdlQ1BnSERwZGZjREpkYUVC?=
 =?utf-8?B?RnoxRUUyWEdLY1M0d3J4c2RXMEhkbk1HQkRKdnZXNnp1MEVvK3IvK2ZWUGhm?=
 =?utf-8?B?T1QxQVA0NDZYSnY5ZWgyYnNPL2pGWkQvRmZ1YUxBZ1VwKzZGK1VwVXFFdy9r?=
 =?utf-8?B?YlpRWW9RS0txNWRvdkQ4M1VPSHFURG92SXFsVWpuQUZpQXpPcnNweGo0dkJj?=
 =?utf-8?B?OFIzZW9PTDk5bDZUTEVUZzcxWWQxSEdhWThlMzBxbE42dXRiTk9VN0ZJZS84?=
 =?utf-8?B?U2o1dVlXN0dhakZpbHBFaitzbDhnVUp2TCsya2NSWVR0T0w0Zi9PbDhKYWxI?=
 =?utf-8?B?MmZhRnB0cTlpZHVYUGR1MEZYNmJ5aWQxeHF2T0traGVNYnhNUW5BamZlREw3?=
 =?utf-8?B?M3VZUGhEOVdVSGNZRUo0RWw2Y0tvZXF4eGlUcDdKWVhxOEpsMEhhSUg3ckZP?=
 =?utf-8?B?cEpWa254UVRYekNlUm1ZcGRSVDJ2N0YzdXBsSll3M21UcUpvTm1HZ2MrUUJ3?=
 =?utf-8?B?dGhUZURLSFJISFBOa0o5dFYwQm9GZEJ1WXpXbWYvanY4dU1QWCtLTGpaSzRp?=
 =?utf-8?B?VFZpMTVYbURGQ3h2RU8vVFBTZmszNzlwamdHWXNSbzJVVVkxVEVFcnRUSHRv?=
 =?utf-8?B?bURnQ0s5VEMvVjBCOU12eDBTMlR3a1JHUUs2ZHRVcFhPUXRSOGRpbDFtQnEw?=
 =?utf-8?B?dDlYL0JkYS8yUVhHa2dmVVJYQlJnQi9uYWNXd3kxeEh1Rm1UUHd3T2pXSjRV?=
 =?utf-8?B?TWFYcXh4NU9KUFYyUGYyVElRMnNkQmp1UWRkWk9qWStDT1ViNVNQMURSSFc4?=
 =?utf-8?B?dUpJUVJMRUxpK3M1VTVPZFNWaXFhNEYxNGllTFp6aFRmaHFXNDR4NlpKTjJU?=
 =?utf-8?B?RmV5QjMwb1NsaTNzQ3Z5ZzdFZndzSy9YcHpJcDd5NExwMjRNSmp2Si9iYXhM?=
 =?utf-8?B?Yjd2UkhiQm9Bb1R0OVl4KzF6NWxIdmxRVUZqSUtqVjB6dDN5WVNnckVpeEk1?=
 =?utf-8?B?TFVxYndFNUFWMWU0cTk5L1JBWitVc0E5b1RyU3ZTS09EaVZkdGVqM2YyWVJY?=
 =?utf-8?B?WFRjM3hWTmh4SHQrcW5KNDRJTTdUaWxFZFczb1BaYlBaZW5LZEFPZEM5Q2lK?=
 =?utf-8?B?WXBOUEZMT1J1eWJoM3g3VjN2TEhlNzU4ZXVRQTc4RU5UUUhDZjNDemJyL1Y0?=
 =?utf-8?B?Sld2VjNTSWhKM0Jad282TnBvcyt4ZGdKSXlxSFFndHdLOGpqTktuZmNRR2U2?=
 =?utf-8?B?RzBzSmdFd3VPZ1p6Ni9kMTNSWExPM2lucll1aFlDM2haZDE4Q0ZtMmdOeUtk?=
 =?utf-8?B?RUtwbE45NHNDblJabWJqR1MzY21CTWZMS2VhUDA2Y2NHbzJ1Y1JNU21ZUkM3?=
 =?utf-8?Q?cYSC8hkPesmUTTMc=3D?=
Content-ID: <4DD703089010634392422FCBA4BB1444@namprd04.prod.outlook.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FubXNYEeNPI+Xa0hwV0h6xB5aoxd/k6PSA5tMk4xoqBIpoymf7oE4h0pdI89ZpIRkb5eaR16OV1tinTcgwBGhVpVAm3TUSJ1oqtA9i6SqkroyrrJsG0T/osnjZ/Stjf+9M3BXRIM9XU8e2fM9IBeNlC8q4/PuQS22s0OQaG9PAWueLPGYy7J9CmG0iw6YFA1s+oSH5z8Nu2ROal9X9cm7mXR6a6g7nGpheDpGi5ZteRBS6fCc4/aVuSPlPRJkI71FJT4HVG5CnvIGWFO6PhDMe7eG7K0mvlvfyvkylWG/ChjMGb0tsvbGZxo6s7KX/pLxwCC+HGaQmMcDv7c7C7h2Q==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: TqLCV2sHVWyKmxgDcX3nevT1/KpIH4oMeUb76r+CM83EvYc+xo4MEU6d3VzHRudIpsdTQdd8yiRybpV0vo4wCfg4S4eEFIFvQP8d6ARgRlHbFy7UiuAVGb8b3jdN/l/9hM9+2iaq/9tdmE9jwaC8sbmMN+QZCNaXt9yDb3/vFHiFtzmb0WrMEaoyKVB1w6RZCrLLXUeZUS3s/SDX6Z9jwPvc//pT+fK8kBgDbwNlDhhTSIcVxvxL3uSCxg/uxLIpoNX+fK9unqGydKq8uG1YczeqRmH/DFUH4M8akXdUHq2KShkCcokZ1U7Bt5weKScWlGFbvx0FLr3gDUYrCkCIXfjNq1SaKNWWw7EvmxOcNgPy6Nv4BPI9p/AqLJGWj5sz6r2lWZIQTjj+6S2zUCR4qpXtagnZh8RcoaklYxLPnRIrS4skHTI0JPHcMzbGperv4rCzG9k87FXj1LxtWBo1mYhE3Vj+f1wJjyxUV1bd6LHAHGaGyZNQ4yZZxsp5vhWw3KrFsiRRCKZ3w4y5PEOv+Rf/dFXLyqdvF58NLEbO3sGL9kqfyS4G1oOd/xCY9NTc9JUSedxa0/vJZLO/bIASlNNo1nH8GHj1K3pVfa7df5GMo3nC7kRwmFmQsvphvwnK
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR04MB9680.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05a7d4f0-d25e-406f-c117-08df45c5efa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2026 22:47:34.0667
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CC3ht86yO8qSbCJlOm3aCrOcuIv+LWlkD+wQexXTFFtk54RQbP0UFDLW1Sbm8h1FWstiNywvh7Tgxb8mqX8KSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR04MB7432
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_144738_344367_1059AD24 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, 2026-11-18 at 22:30 +0000, James Le Cuirot wrote:
> On Wed, 2026-11-18 at 17:46 +0100, Niklas Cassel wrote:
> > Hello James,
> > 
> > On Wed, Nov 18, 2026 at 04:03:11PM +0000, James Le Cuirot wrote:
> > > Hello Wilfred,
> > > 
> > > Unfortunately, since your commit "PCI: dw-rockchip: Implement
> > > .reset_root_port() and use for link down" (b376b3ff9cb0527), I
> > > have been
> > > basically unable to boot my Quartz64 Model B from NVMe. Sometimes
> > > if I wait
> > > long enough, it will eventually work, albeit very slowly. If I
> > > revert this
> > > (and 4e9f69d08253) against 7.3.5, then it boots normally. Here is
> > > the relevant
> > > output.
> > 
> > There are some dwc-rockchip fixes queued on the following branch:
> > https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/log/?h=controller/dwc-rockchip
> > 
> > It would be interesting to see if using this branch makes a
> > differnce.
> > 
> > 
> > Kind regards,
> > Niklas
> 
> Thanks for the suggestion. I rebased these against 7.3.5 (with
> 85203c831a8),
> but sadly it made no difference.


Hey James,

This is odd! looks like we are in a AER loop, which is initially
triggered by a link down/reset.

Have you tried booting with pcie_aspm=off? Any luck? Otherwise, maybe
we aren't handling the interrupts aptly...

Wilfred
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
