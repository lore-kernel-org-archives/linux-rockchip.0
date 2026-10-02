Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 043A8CA5FDD
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2026 22:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Im3xKoEt+ZOXSSmV9Yws0EgxZCJqW0EKVFPDY8d7+XU=; b=cTfCIysIESTKNO
	SwU69TABVr4xCU6/iskeGbfUkFCnRf7+ZWfBq0C2st59u6NgiDK1nIcGBwF3la5Xn7OlnX0qwLW3S
	GUMGYkhSW2JjKySfjoehnkUtk43qdCSOyxlrS//4ViNjRfLGQ+nfC4zRdxoTNHRdrTGc+H2uPCUDR
	siyBrJqsXZNuePRupCva5x1APd24ZCiuE0Xtwc/ZU7oq6tkl1kqxYiTn3f6lWcb69q0vOlHFt1qAg
	Vyunyvl8Mg4v6sCqxxJ5Ppjh8cfmWVixm9VUT7/SSHbtZAd/4RfyIGonbxAtiUGOUFqznNLHmIONZ
	wLcr79mthFPvljo02Wcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCmCp-0000000Cesa-0a9b;
	Fri, 02 Oct 2026 22:58:19 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCmCm-0000000CesB-2eYy;
	Fri, 02 Oct 2026 22:58:18 +0000
Received: from pps.filterd (m0297265.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 692L8aq52860926;
	Fri, 2 Oct 2026 15:58:02 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=E1DsouaS49vEfjicBI4KsRixFg77DCZvZ7VV7yxqI7o=; b=
	FbF960Bhhupodm+H6a0QNxwuGb5ckFZr8diEsr/yaZ+Dt0fAVVLkR/lLryGT2Jsc
	rEoEaKbEVJyKQfr64bFLtyGwPwkQSdhwUwKnRhE3jqB9a4fc05eOfL1xarP2Xtp6
	MctIkV4E3O/yrYdAy947o4AxQMOVWY2vP/G1SD5AE9JmfDkQACgjkj1GkSYCnMbe
	MRonYm77P24olmfCeeZN8T7AtwNqRPy1Kj5I1s9G6gPqy1k2IMuH2SKr22JauShY
	Hemq+GuOFIvPbhkIzwFNVepdL8YDWrhX1INDXiEJi4VyW2PTT92hm98U2xzfs17b
	LuK9H0YmEruWLZOOjvXYUg==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 4h246k6pn1-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 02 Oct 2026 15:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1790981881; bh=E1DsouaS49vEfjicBI4KsRixFg77DCZvZ7VV7yxqI7o=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=TCHpCkHYajt16ZhxPKx3BdeJ+15pPx1XWlGUtGzZCKo451kN+Q5jZlSWLy7oIp8fo
	 RCW8uy5l9Cqufa/L9Bfp1Ynxsk+1FaqIO8a9Ut5SlSoCWk/GWlklU10SYpyyJ/77e/
	 ubECAJrKbH3FUNvLKKkUxnbbc1CCtovoJ0f+b7htyBXakbTqXRxV4ii0GLJ1eEkBXU
	 LmsaVzfoZJigc9KvFOxNsMiN6DGxHyXUB0xm90hAgdRIx90S5b4A9PzTDg5cMrkSvP
	 WBkSCvhOHQjGIaOZLHBcWOGsZQvYUdiHBVB8cQMJDDudYnYbyp6TMUMep7YL+1YDZH
	 Pcg8n7ZSDc6SA==
Received: from mailhost.synopsys.com (sv1-mailhost1.synopsys.com [10.205.2.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1D616401EF;
	Fri,  2 Oct 2026 22:57:59 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com [10.4.161.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 4A28EA08A1;
	Fri,  2 Oct 2026 22:57:58 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=en4xUaqK;
	dkim-atps=neutral
Received: from BL2PR08CU001.outbound.protection.outlook.com (mail-bl2pr08cu00103.outbound.protection.outlook.com [40.93.4.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id E80A140583;
	Fri,  2 Oct 2026 22:57:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y3L6jXe0rOCgWlJFoLWKMlQZ7aSvbk6vv+hFonZQep9FOiUNLCZuTYliZmPee6GIQG4hG7OJzHPp5h+zw9wTBNa/vpWvLGTe0olXHsStEDIHN5lzy0Up2GlKI9vDAPrS9O8+S9zq9IYLotY8R7oeCc16Lah8g7gfn1i5xwKmL7bZptO8JbO0/sRHQC3/t3bKsojtfqQTke+pgUEcEQx8jmn8qaoGdlr6f2fPQl0Ov4YYO/4DsikGynfsAOMcwQLpVEwIq9QzitBIO0fXdGsUfuv0IZVg4ID7pYLVkSTaVwVkHAWYJLUouN0eU4dnuSOVRopjxGLFL0McG0XRsCKwUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E1DsouaS49vEfjicBI4KsRixFg77DCZvZ7VV7yxqI7o=;
 b=Mpk0nL5vFCsohvhghXgXF7+m/hNVLNeWmCQ3criFibGZE3bYE6T1BUG0FLhcEJFJ94LrjHarGboc3Ih8czs0BMB/wLEyUyVKGp7opS92c2/Hd90A9C50GYJa4baKx1Hl8gBxHvxpLGCPi2q1lrElTQQiq1+o5XtANmU2ON4QJ5TYnsBJ/I4LIfJIe/PuppvttpaDZZH1F7rZJMhsr8u+ElCO8Frq8Ev93tcvHskQpO/0s4GkAl3dpmyS6lXfj/z78IolIkibcF0uzsQcBjT3zPxPqLHupZJAWvXlt/KhlY3bJi+lB6Emsn7Wy0ccJi4x0mSiX4POPdaaBxsPpMlhfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1DsouaS49vEfjicBI4KsRixFg77DCZvZ7VV7yxqI7o=;
 b=en4xUaqKEuumPQtI4oRC3/UN2DeL2cKu8k0Oyp79WLv92obU0w/Jq5IjKshhAUlkzHbnj5YqPaPZS2ID+HC43AqL73hxV0lMmmtZpb/FTWnmU2jK6sgxmuzOfmyRQ7UMK+fdAAK5oZ3cDZ4Pcj94B7BvRcpPsdLl0uHdEiFu/3U=
Received: from PH0PR12MB7486.namprd12.prod.outlook.com (2603:10b6:510:1e9::6)
 by MN6PR12MB8516.namprd12.prod.outlook.com (2603:10b6:208:46f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.16; Fri, 2 Oct
 2026 22:57:45 +0000
Received: from PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109]) by PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109%6]) with mapi id 15.21.0472.016; Fri, 2 Oct 2026
 22:57:45 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
CC: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Igor Paunovic <royalnet026@gmail.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
        "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "kernel@collabora.com" <kernel@collabora.com>
Subject: Re: [PATCH v16 6/6] usb: dwc3: rockchip: fix USB-C reconnect in
 gadget mode
Thread-Topic: [PATCH v16 6/6] usb: dwc3: rockchip: fix USB-C reconnect in
 gadget mode
Thread-Index: AQHdTEnTMSec/T7sjUm0X7t4dNeQLLbq6hWA
Date: Fri, 2 Oct 2026 22:57:45 +0000
Message-ID: <asAz9LBMDoAeu-mI@vbox>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
 <20260924-b4-rockchip-dwc3-rockchip-glue-v16-6-126a2e9133c3@collabora.com>
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-6-126a2e9133c3@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=synopsys.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB7486:EE_|MN6PR12MB8516:EE_
x-ms-office365-filtering-correlation-id: 1baae1db-9bce-4a0a-f9d1-08df20d8927e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|7416014|1800799024|366016|376014|10067099003|56012099006|11063799006|4143699003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 5medHOI/ykRwwOhuQhlq9j4lTsMuv+pqX9Y/tSO2W96cjmmoTVMMAXFLI7RjS1XSyZgp7vL32fVcyWf2ZzwDSmKPYfEeexxXU0Ulwpai1ioiNEyXRWPqF7W/LsugeEYh6ei69nvPNoiIfBLHFJDIGNAfJAecUfOVg33RjVuwQptVqvT4fJLyZHJ/NrBsYtybJHLcU8Zhoagv+GJ6H8IZZtb4HelDGqLi5L/ioKBowH7oCVSnWNzXXsPhHOaDBNFM1c3I+sfsbimktHh28kYhN36E66U37r0gc0SSOEf1wznfKhhmntc5/ZcF3Gjp3hkBNz/lP3rLUiSA7bxPUNhcpoXjRmk2cNtK3lSh+CexrphN/J6o3V5X1f1u8fEG5rIwVEnEUWxVwHd95u7WhaW6kzxC6D20zkRsx5bj//GBiEgHNna9SRapsfZrE+18VAyYMphmomYPgCLHhWX6/pxmQGWkJxU8RLuGlYddrokxJ8Q1gelM5jVxsUogjNIcd6sCiD5D4KWC7Vbz0WsJBDz0N12HHBASwK9kYAIUC/cJfXn/ZglHJ4lgFCiInNz5eCLVu587oFh/iORUnX9z0etgYVaY6jSP0rJXZNWVqtBp5ROk7kMkqpYKJQ51PzIXlzk1KFRZCPVGd5dKjOTnInt+qsgPISU/zOPz6tzkJLaz6hIF7T2SdPjOm9YTmIPYx0xSKDY0+/ZhUgl6ECF/gZdS5VXJPScpITjmZD1F7yruuRA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB7486.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(7416014)(1800799024)(366016)(376014)(10067099003)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmZpb2FqdWhSMTNOdlZ5RFZkSmlsL1BpdjJwZXFwbmtINUkvSEh0NHFJMENK?=
 =?utf-8?B?TW15dGlyRWhBc1NBbmRXL3N0WG8wbWtpMFpvbzNMSGlwT0lNVksvQ0NMWVIw?=
 =?utf-8?B?OGZja2Vkbm9ZOGx2aGQ5M3J1ckNtd1BMZGdFTHQ2bmE5cWdQN1BLWUREa2NX?=
 =?utf-8?B?Y3p0d01ZMWU3Mm16eE56SkJqQVlZN3JCekt0SXE5enB6RlFzbzdpUjl3cE9Y?=
 =?utf-8?B?VUZVZGtTWHZKSjYwb3N6L3owVDNQZW5EWGFER3NmTFlYcmJBYjhuZUh6MWF4?=
 =?utf-8?B?aTc1R0hVVDN3VDRTMU14MXJBU1FjNjVRRStvT3o5RG53WGZvRXROMEpFVWYy?=
 =?utf-8?B?UUhCUXdDMTA4RHowd0g3MUEvQmVqd0RScmI2OGZCSENKRlB6azdTVWxBdDZN?=
 =?utf-8?B?OGJ2M1ZQRXVRZHlLbk9GVlFhZHJORTJiMmhDNk9NV3lXY0hrUlBYWjhMWWN5?=
 =?utf-8?B?bUdHWC9zTnVuSWw5bnI3RXdOV1haeWF0ZE5YUTd0RnhaSFNVRmxHQ0tyUFlX?=
 =?utf-8?B?cjZEc2VvNFFWNmVpS1kvUThZZzczb3NlZHRRR3N5QXFxOTh2NjlJc28vUERL?=
 =?utf-8?B?R2VRbnhqMUxSc3dydFd3T3duVmRRQ1dPK25FU1NOMkphRldLZnY2UndtNzR6?=
 =?utf-8?B?NnFJdXFRMlhnTWh0dlFjZ3Uvc2xaTTV6clNvSTBiVG5VSTV2dFlrTmgrb0V4?=
 =?utf-8?B?NWNJa2RxMWZ3QzNuVnd5UldtU2lPSG0yekNaOWNneHFqd3dNSUE4RlhJeE81?=
 =?utf-8?B?ZFo1UUZRVU13cVBYRThLckFDanFZSmxnTlVZRTlCZjlsV3dlMHJmaXkxajlh?=
 =?utf-8?B?amRHQ05BYTRyQkJvRWhqN1BCTGFITzJEY2ZDeDFFRTlMd2hzQkF1alZDUUhn?=
 =?utf-8?B?UEd2Q3ZiaEhxN3lVdHJuT3Q1Nnl0Ui9YOVZDd01KNVRlY256bS93VDVtbUw5?=
 =?utf-8?B?TkNMVFEvZ25JeWcyaXNZVXZLL3lsd01sZUsvc0lIZDlEVlFCZXRYWVMvcjNF?=
 =?utf-8?B?K3h1c3NWV2ozM24wWlgyc29VKzR4VDg4clRMdm1hZHZOYk5aWnpBV2FOQnVR?=
 =?utf-8?B?c3FDZXNlYjlzaTZEQkMxTHNYS0l4dnI2RGZ3ZTMrTitwbWlzd0VTOEhTblQz?=
 =?utf-8?B?aC9oVFVyc2t6SE9SajVFbmJFRFNsOGZIbUhjTlFzalAyWnMrcXZ5bk1DU3Fv?=
 =?utf-8?B?clFvb1RrY1FvdHVRUFRYV0NHeHFUYXBrNlA5NTFoSWlaVjVoQndiTzJUVXpS?=
 =?utf-8?B?NkJtMVVBaHFMaDl1QUtoaE9VeW4zNU0zNU1DcldRdnQ0S1pkcFZoSi8wcVRr?=
 =?utf-8?B?TDBNeVczUzk5UTRxMGhOVHN2N05YMS8zSjRUR2RSc0NaUENxVXFWKy84cDFu?=
 =?utf-8?B?UDA4anNYRXAyTUdKb0FKUXh0V3dOSVppUFUrYktsREswc3lxRGtkRGxDS2Er?=
 =?utf-8?B?YW9HSE5hVXZIVDRXd2wwVFUwQklQV2xTS04wVnRkaWl2N09GQzVPaDBMbEVp?=
 =?utf-8?B?eGR4WGxvQXJnaG9Ja01rNmk2ZW45bDN5cmNNcksrMGVXQ1ZkT1lKRUxBd3Vx?=
 =?utf-8?B?UmNvUy9ScFNiV0huZkl3MXYvV1hVM0pXVXRJRjFxY0lBZlNtOUhlcENteGFh?=
 =?utf-8?B?emY0WkszTERPZ1k3bkp6TnpBQ0psL1VaYUZYN2sxQk1RK2tCTHJzOWNrTVF3?=
 =?utf-8?B?bEROalN6NW9GTHN3TUpOK2djSW9vYXhIbHdUZGZJT2VGWWtkLy9wZFo0bllo?=
 =?utf-8?B?LzVHRlE3VWN1ZjFvM1pvR3Z0RHZaUGpxUG5VV0Y5TmNrWFNtZytaZEpFajZ3?=
 =?utf-8?B?dzFjZmY2WExsdE9FUUtHZUpTWlNkczd5aTJQeTh2MkRhOGJ2WlhrVVNrNURS?=
 =?utf-8?B?Y29pZGFqRUJsSWM1aW1ZMTFweXZnc09sZGNyV2tCaHYvbENuY3REelp2SzRL?=
 =?utf-8?B?RUFqMEZlWVEyYzdKQ3RiNW5DMkVEbHkyaWFXOUxNbGRnU3pIQVowaHpuYUJM?=
 =?utf-8?B?RDRHMmZVVndzcUw2SlQ2bEVid3cwZmJrd0xNRUhSSFJGb1MzVXRKWm91akZV?=
 =?utf-8?B?dUQvdkdieWNWT2xNZTZzUTA4NzBENkVBaWQ4WXIyd2dkd2xWZ0Ztamx1Tnpz?=
 =?utf-8?B?SUNRK0JZRkNBY1pndWhTeGc1SHVJeFVCOS9hL0VnQWxBM1lqVjNDSjNUam53?=
 =?utf-8?B?OXZDV1E1WFMvaDBlVHhGTDd1ZHdiZUNmSWpycG9EKzZQMktPWTNsVWJRaFpL?=
 =?utf-8?B?dG4wdExiUnRpa0p3SDJiWjc2MG9zdllkNXFTOXhmajYxV2dNdTJJMDQvYjdY?=
 =?utf-8?B?eVI3K0w2dlZHZ2FoQkxvZ2tuMFRJcmxyZ3BFRkdzQ2szTU9FZkVyUT09?=
Content-ID: <681B6596EB0F4C46AFBF7BFE73ADFB20@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jlwuV8Vk08RAK6LH27yqeKAhxPHsjUWS0oZRq603X+BQDbwUZn9HGhKVMFeJmrBQR/GA84qdXCuS7FdankrJIAuL6EcV/GLCetqMn9JoL+LcaonJDdL4nOR9zg2IClPDx6mDfUL6kg9tvt1mRaIgK/bX9ru64CyMwzcGrVQZ4tjpDv/9XIBHaMYkzZu0cD3EQAtU21mptaZ+w2JEV89VTZJgGsTjVPje/BJk8UbLV5DrEq+7FTuwoVh4Uu9FBNKGW7OcXmyesIDqOd7VWRFzquVEdmOEdt41TCxFFOnUDjO+obLmUJdQ4Ua3H1zUluR3OrPPZf4iEJEFuSyuc85lSg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: G+MD1JVAsyqXXaRCrpKpBD5D+L0WofxcVd3doIukandFJez03FpIPOXL9lu1cJrsNCt1MJyo5kikwWpOX1twOOgVLdGxrE03AW/0lQnJLWpLW6KCil9togiJNlTByAO00ALtfWuUaBhCvIBD/7j4c35RkPFPRumUiS/uRhxUo/TbJ1FQFh1hV5kETd/+jEl9K7HF0WKIApWbDhfSPqkZDzXGDAGmexwviBQ3HJiVP96/dykYp2fL/i8JHSBjFZS2ZSWeBVt8IDG6nbjz5ejbpFCgtxCzoNUMKWKPI08cud9ibBAjEp3Z9Zc2ESxbj24eHjl3dYELI8TAQ6C3zHHaY3v7qiXa4WthJ1bFNHVSumGfDDd7300VC+A19pZR9RLHxRbIEY8xjaN+f9uFCHbbXpWJSGlpfe4vGGPq1SQI8au8t8z0cwwQSlZe29qIiVpHZHSwVBocI7ij8xF0x2yOSBYharO3bisuuIjyyaxmywLe9nbI9TWSswkbezYYYNxr2Z/j8krB2x+y99/UVxX2SSNdyao4iw7ll1w6TiZc7/svE5Bx0WveSfIrYlSxMgChMLV4MYO8JKhO5scEHpi9QRYAUHZ6bf37DrEFoumf1/XCuQK4vp6GhKHVcLdg7jOQoM0YmRO/pDOYHE5dgKyQgA==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1baae1db-9bce-4a0a-f9d1-08df20d8927e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2026 22:57:45.2615
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0wR4Fih3OiT2GugAD21cQsQg8paCRkmJ2X/ZTiCcngtdwaYe7/BCsdSlwSRIYCbgw9hxZy1+iUWeOgz3tlwDMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR12MB8516
X-Authority-Analysis: v=2.4 cv=d4ZgWhjE c=1 sm=1 tr=0 ts=6ac036f9 cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=-4-sGo8i1FcW4KD7_GeR:22
 a=QX4gbG5DAAAA:8 a=W2xxWhSknC0YJZdjg9gA:9 a=QEXdDO2ut3YA:10
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: EvvT5_2Lg5ZcILICwlQSWeK6jsgZO50U
X-Proofpoint-ORIG-GUID: EvvT5_2Lg5ZcILICwlQSWeK6jsgZO50U
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAyMDA5MSBTYWx0ZWRfX1GMD/D/Qn0D/
 0bGzDHNdItYYknjRnEocPItGLXluwxWxCNqEwJgcm+KgWSzV0ntdR1vXgarZsQGmDvpEkppAX0U
 I7MS7aJ/Vi8E37gXzsqDJY/Acuj0sv0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAyMDA5MSBTYWx0ZWRfX1ybn3j3anqCP
 6KNWxUS+dV/sJfHJeVnUiEyobJhkutJkPOAKbaDSXE374+UDzsP/pLksfe1C9z+AmKS4FhtnuWU
 Fm44zZhh0/Bx7fztTp2GmZctC0YWJpu1bVJL25cMGL8SPqhvrodX5LcTkDy4shKXVBy8N/x/DQp
 lyTACevfmJgZsdniB8GhN9TyzZ2hyqVB3FnLhIlcG2wM5CHiLDS4q2YulEgEJx/Q3cxvJsloGhK
 WMPq3RdEoWPZ27uh6r/NF77LsWNhn3Tm6Ad7OHu/ybxOtGY8Y2UIF9xN5BBtsdlxT4qbp9wiPJW
 ZMYuoTbQqdfEkfTmUqBxa8ZHafFy1Ln27D2OKSQSXtlfCGwtpOZvzVIq9PZj0hcjQ7EJBuoXteD
 wLLz+NYHn0K8EPtEzhdYk6jWbRK+ksgxRu3MrjuLeK6SoYN9jZ2SeREmiatvO88ZTsNlB8HDSk2
 yo2LO6XEMd7noyb95Sw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-02_06,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 phishscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2609040000 definitions=main-2610020091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_155816_832334_E250BF9E 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
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

On Thu, Sep 24, 2026, Sebastian Reichel wrote:
> When USB-C is configured in gadget mode and the cable is unplugged
> the USB controller is suspended. After plugging in the cable again,
> the USB controller stays suspended and thus the port status remains
> not-attached.
> 
> Fix this by informing the USB core about VBUS updates when the PHY
> mode changes.

What about gadget-only mode? dwc3_pre_set_role() is only called from
drd.c, so for peripheral dr_mode, the role stays USB_ROLE_NONE and
POST_RESET never restores the gadget's vbus valid state. Perhaps we can
use dwc->current_dr_role?

Thanks,
Thinh

> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/usb/dwc3/Kconfig         |  1 +
>  drivers/usb/dwc3/dwc3-rockchip.c | 23 +++++++++++++++++++++++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> index 3c120ea9746d..344291daf1b2 100644
> --- a/drivers/usb/dwc3/Kconfig
> +++ b/drivers/usb/dwc3/Kconfig
> @@ -193,6 +193,7 @@ config USB_DWC3_OCTEON
>  config USB_DWC3_ROCKCHIP
>  	tristate "Rockchip DWC3 Platform Driver"
>  	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on USB_GADGET || !USB_GADGET # if USB_GADGET=m, this can't be 'y'
>  	depends on OF
>  	default USB_DWC3
>  	help
> diff --git a/drivers/usb/dwc3/dwc3-rockchip.c b/drivers/usb/dwc3/dwc3-rockchip.c
> index 17b6c2ca9e19..ba8ffef2f27e 100644
> --- a/drivers/usb/dwc3/dwc3-rockchip.c
> +++ b/drivers/usb/dwc3/dwc3-rockchip.c
> @@ -25,8 +25,17 @@ struct dwc3_rockchip {
>  	struct dwc3		dwc;
>  	struct dwc3_rk_phy_nb	usb3_phy_nb[DWC3_USB3_MAX_PORTS];
>  	u8			phy_reset_active;
> +	enum usb_role		role;
>  };
>  
> +static void dwc3_rockchip_vbus_handler(struct dwc3 *dwc, bool present)
> +{
> +	if (!dwc->gadget || !dwc->gadget_driver)
> +		return;
> +
> +	usb_udc_vbus_handler(dwc->gadget, present);
> +}
> +
>  static int dwc3_usb3_phy_notify(struct notifier_block *nb,
>  				unsigned long action, void *data)
>  {
> @@ -57,6 +66,8 @@ static int dwc3_usb3_phy_notify(struct notifier_block *nb,
>  		if (!ret)
>  			return NOTIFY_OK;
>  
> +		dwc3_rockchip_vbus_handler(dwc, false);
> +
>  		/*
>  		 * Assert USB3 PHY soft reset within DWC3 before the external
>  		 * PHY resets. This disconnects the PIPE interface, preventing
> @@ -69,6 +80,7 @@ static int dwc3_usb3_phy_notify(struct notifier_block *nb,
>  		reg |= DWC3_GUSB3PIPECTL_PHYSOFTRST;
>  		dwc3_writel(dwc, DWC3_GUSB3PIPECTL(port), reg);
>  		spin_unlock_irqrestore(&dwc->lock, flags);
> +
>  		break;
>  
>  	case PHY_NOTIFY_POST_RESET:
> @@ -89,6 +101,8 @@ static int dwc3_usb3_phy_notify(struct notifier_block *nb,
>  		dwc3_writel(dwc, DWC3_GUSB3PIPECTL(port), reg);
>  		spin_unlock_irqrestore(&dwc->lock, flags);
>  
> +		dwc3_rockchip_vbus_handler(dwc, dwc_rk->role == USB_ROLE_DEVICE);
> +
>  		pm_runtime_put_autosuspend(dwc->dev);
>  		break;
>  	}
> @@ -130,7 +144,16 @@ static int dwc3_rk_phy_register_notifiers(struct dwc3 *dwc)
>  	return devm_add_action_or_reset(dwc->dev, dwc3_rk_phy_unregister_notifiers, dwc_rk);
>  }
>  
> +static void dwc3_rockchip_set_role(struct dwc3 *dwc, enum usb_role role)
> +{
> +	struct dwc3_rockchip *dwc_rk = container_of(dwc, struct dwc3_rockchip, dwc);
> +
> +	dwc_rk->role = role;
> +	dwc3_rockchip_vbus_handler(dwc, role == USB_ROLE_DEVICE);
> +}
> +
>  static struct dwc3_glue_ops dwc3_rockchip_glue_ops = {
> +	.pre_set_role = dwc3_rockchip_set_role,
>  	.post_phy_registration = dwc3_rk_phy_register_notifiers,
>  };
>  
> 
> -- 
> 2.53.0
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
