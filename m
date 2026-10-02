Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5388DCA5FDD
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2026 23:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mo1uczSdyAdDwtMqnW0eAU8/kJVnuHJ1vRZfoMrYuyo=; b=JWiyHmp44PGTqb
	BUBTp+Qh9PWj7kTXCZP7TiuaXsOQMShncpobWgrwycBs/61cWNUBBcPAjglfsGMFUikDevqrSbGLg
	t6xeQv4LrorwqVRDoTP2R4GURk2N0erGfGaTkTi2/loufCodTA4GgUXiBFt1Wz28e9dPfUcv5cSdx
	VtwqB7tXinQl7/iRn/t3Gg80XqkGfGl9s9ej/UlbC2OAKbNwOivAyKX0URfcEkGGNF9xGT4yM26Tl
	LftjDFBeGVZGgCyVCbnYeWGbEnzcdqp6TzhDdFn/hbYaRML4XZARR7g0ioI6C8I51i24HXNEFJQUa
	mmx2EQWXlYr7f/tFpFYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCmqq-0000000CjwG-3pjm;
	Fri, 02 Oct 2026 23:39:40 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCmqn-0000000Cjvq-0WLu;
	Fri, 02 Oct 2026 23:39:39 +0000
Received: from pps.filterd (m0098572.ppops.net [127.0.0.1])
	by mx0b-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 692L8eEO710868;
	Fri, 2 Oct 2026 16:39:28 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=Kad/OA2cTrP54dFj6c7fSQs/pd1k2l1FHreHGCyqtSg=; b=
	ZUGwSBd/HgK8fMg5XuaY5Ce6I4WxWI1S5QbL6OQHv0mRDj1dpsM9+e8fIjQ0lbcv
	QywN6EbgisYOQG0fcVl2LD3QSIguc+oMf5Pl8Iv+pWBkKQRKEaqa+W5LrcAGDi1I
	Cz0Xha9rXD1iGzZIVOKd52VqmuacspCCwHJz6myvU2Ze/oZgQmKYVfD97yF7CLSY
	j/6v8a1EYigw0l5vxuldJ0iwGVHHJPanii9qSZEcMeAT8/GBop2veCZiYk9TTDpt
	szKs3CNhp5OHnDbtbnCA4w77YbMwh6fw8VQTXf2Nu0LHfN84iz6CuZ3HmU6l6IfN
	LS4hxitqzFx7q1RTqW2hyA==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0b-00230701.pphosted.com (PPS) with ESMTPS id 4h28qynk7w-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 02 Oct 2026 16:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1790984367; bh=Kad/OA2cTrP54dFj6c7fSQs/pd1k2l1FHreHGCyqtSg=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=Vg5KHbVN3PHx7R/UScQIhFeHVN5dAQIBBYXKa3wFAjvs9FKqd17k5Wnzpn+PCPT77
	 sjMnhtH1G4Qqm2cjzLUjvUKAIVWyeavP7efjNve4FlE7LhBcIiDz9LI0ml2udxNiTh
	 3m26n9qlD451diVWX1wtev6d5fDW5wV9pUt0zCSc1TFmQlIN4vk21/ds8JroN9T11h
	 hAqp7Pg6MVsY/l19kPm6asruDZaqixSe9Mox4Ko9olpEZGcIrzje6t5s53DdjD9cRq
	 qCC5UsJI8/9KPJLM+tjT2fVpQHslq/uUAt8t9PCG/5fL9x75UyL6SoF+D2032jO9Pm
	 vUjQ3fqP41QJw==
Received: from mailhost.synopsys.com (badc-mailhost3.synopsys.com [10.192.0.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4CFBF401EF;
	Fri,  2 Oct 2026 23:39:27 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com [10.4.161.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 66F2FA007C;
	Fri,  2 Oct 2026 23:39:26 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=hhA+ok1N;
	dkim-atps=neutral
Received: from DM2PR0701CU001.outbound.protection.outlook.com (mail-dm2pr0701cu00103.outbound.protection.outlook.com [40.93.13.67])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 073D3401CB;
	Fri,  2 Oct 2026 23:39:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O5IPfwOVAVb1OPKUcqc4JR66pbvg3k4/4V659zRTbStf43nyAbg0JXW+UmWuy6bLRPJlxXA+DtzUdyFqL6xKKo9nzfS8t3XhnAS3QiMkdCeRMNx6pMAjTosddnfAWsS8LX4wxNBxTm+OVPSVDBGY7CGR5Se3/pze8NHfIyMF/cTjT6yR3Y818EkC61WZ8CqN1yzYmmzFGwAW7M+LwrqLz8tWRl4q1a5wUWsp/sh7ULW8uFpEJXv0ysJOCSZBWlKV/TADZEScKNCsgaMyKaEgO152oI6Wc2WrwbHAa5SOtqgjeP9rLm91Me5s9FNoKfAfyY3HyvLTPduwQEXvJwyJAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kad/OA2cTrP54dFj6c7fSQs/pd1k2l1FHreHGCyqtSg=;
 b=uQL31fw1Oz+Opu9xgBpAKskuPOipzyK8RPyIYel+wLYLOV/QSXsLfNwvUkud/pkKFxNktGenNWJM5foBjyIYVlSyUTJ2FdnjggFoPPGgR/L2GjxVy75+x54WfVHmgDB5Gs5FKPreyuak6gvZ/Wez8wBCj3YqRneR58YHp5QXkfYpPqFV9rcLOVnBKpgcJFVXUT12vVT3vITjTzhM2k2I3ingxv+9JGd9KuNSaXSXR0CBI6hLoohtzz1PGGKOOtfoDKKx1HOLbiB/6KVN3ppHm1X63iBAvgXhMlV5b/3zZfAMuJ4yMEFnUcEHjxRrbmyy3XXSin0faXH1irRhKILhSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kad/OA2cTrP54dFj6c7fSQs/pd1k2l1FHreHGCyqtSg=;
 b=hhA+ok1NjyloyLuIct6D86W4u+2uLgTsfTBQFjMpmF75GQSD9mCresL9brpVRO5tKwzJSR3JfqAhd5prTvau8Y+h0nVDoQS/BlkAk4tW9arwJ4Ur5S+DQ0dLfN8xOCqU3egLs90u03cJeuRc5K2ENSGMcSe3qXlwYd6dnsb6W40=
Received: from PH0PR12MB7486.namprd12.prod.outlook.com (2603:10b6:510:1e9::6)
 by DS4PR12MB360321.namprd12.prod.outlook.com (2603:10b6:8:4bf::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.18; Fri, 2 Oct
 2026 23:39:22 +0000
Received: from PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109]) by PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109%6]) with mapi id 15.21.0472.016; Fri, 2 Oct 2026
 23:39:22 +0000
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
Subject: Re: [PATCH v16 4/6] usb: dwc3: rockchip: support PHY reset
 notifications
Thread-Topic: [PATCH v16 4/6] usb: dwc3: rockchip: support PHY reset
 notifications
Thread-Index: AQHdTEnQH06YhjnbuEu/Y2OeS1TAnrbq9beA
Date: Fri, 2 Oct 2026 23:39:22 +0000
Message-ID: <asA211DtVMDPAuAL@vbox>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
 <20260924-b4-rockchip-dwc3-rockchip-glue-v16-4-126a2e9133c3@collabora.com>
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-4-126a2e9133c3@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=synopsys.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB7486:EE_|DS4PR12MB360321:EE_
x-ms-office365-filtering-correlation-id: da824764-c5e1-4cba-8590-08df20de62fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|376014|23010399003|1800799024|22082099003|18002099003|38070700021|4143699003|6133799003|10067099003|56012099006|11063799006;
x-microsoft-antispam-message-info: OsmDunzpmHJLLZtHGc+sqDgH8BZSULtygKTaqdqlaMHX6piwhTsSvrcmBhotbaEkggrDSbAhett3rhAAG5bOHxdxt62bDDVuQtRvD9EWlQz787blbJ22BgIcjFTeDV0BSe8EpsLGsTvm3aCXz1Fm6nZdf4d0ZaG1pb+XV3DUCWDYKeumVNT95kImQaLXBBwV4mkIDLgxKp+ywIM0YHGFk+9vw32VPlKRxGLm+mvogdV37oQCosXNnj14zLQpuzutJrJpxz3wx+H97vJOMy0sBdqc2EEE51Zk3hmTMPbUxUhks0zyrpU7y8yrUyngmyfrrXDtR1BCzBkg4QxO+qpUefBAun2+x0FUh6RGTvugWyazOBSInGq7Y2IpOUPi6LSw9ME1lAR3W9E6Bzf+CZ3QxBUuiQc6UvN9HGqZCgsZlMmvgSJi8l+5WNSO1aRMJVe9dtGV//RksL9ipuEMKq450Uh5pW/ivbuSCQVvyQ3wDoVZmsuiy70APSfZ8dnnn8p6pmwF8TIIWLXDP0WHfqXh55LRv+Hppbc/2eMxd9o4jdlUm0KN9w2kjFzdTkyfbsx3j7NMNl+pbEWRSoB4ZAGilCnz0Phh9xUON7XMOGrWSVShl9Am44EDwRB0wHD2xIaDu5ZN9FFHJEc+80q0EBQ/IbYMJbWh2RA58QZxYIdPXNHPE9QOjssZ1wSmP3jzY/HVGUKTG8vXdfPX8aI9zlmXHKWpxCj0pGAICL5zRoHjm/4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB7486.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(23010399003)(1800799024)(22082099003)(18002099003)(38070700021)(4143699003)(6133799003)(10067099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2dyZjV2NFFoNUd5UVIzbWQxTGZlSDVpa25GSWU2RTFUWVVLOW9wYlp5Ly9S?=
 =?utf-8?B?M2xKWWJSQ1lkS0drVHFoYkNRUVk0WU9lako5MGtzU3BaWUt4eUNmTWVuZEtQ?=
 =?utf-8?B?dHhrTkhBaEt2bjNnNXJFczBQM2ZzWkFhQmRLUnFVc2lQU1IxS3RZWVVISmxz?=
 =?utf-8?B?Nk1ObXlGVkJOdHVEeFdkYW5jSXZwTVN2NVpkNjBiYk5XdTA1ZEYyL1p1eURR?=
 =?utf-8?B?WXlyOEgzbDY1dUM2ajlaQmVDU3Eya0lwT3I2ejJDbytTUTdXaFIzMHlPczBl?=
 =?utf-8?B?THNwNjU1MkFmaklGcFFSWTFXSkJ1cXJjZEYzNmRoU1MvL0o2NG5sRDdwRXpU?=
 =?utf-8?B?YVJHZkErREw5RGIwM3hPTm1XbGxER1ZJTEk0QmcvSnF5NmxaRFROeUdIQjd3?=
 =?utf-8?B?aXY4aVBETytRbFpKNlB2Q3dvZEtRUThqOXBKbzV4c2FhNkdPbVEwaHRuQmJF?=
 =?utf-8?B?SVhadGloVDNLL2tYYk9YVVZhbHRLRXlraHVQRE5UdlFZMmJ0U3crREIzcnRw?=
 =?utf-8?B?SG1xa21lT1c5ek5vRWxBaWdXU09XUmwrK2hVVXgvcUJJUm1vSUF4M3ZDVi9J?=
 =?utf-8?B?cVVzeGErdFUxSkdpdGF0NmR3WXdQZTdHbXlGa0RSSWhnVit3OVBmc3NZbmdD?=
 =?utf-8?B?WWtweGJVQ01jb01UTEYyR3VMRGFNeStkc1dZUkIrUUZxRXJXcUlJdWZoTnhL?=
 =?utf-8?B?bTArc2p0Nm5RWDNFOCtrTTkyR2pGeVJsaFFka0VNaUtqaHArekF5L2J5R3hw?=
 =?utf-8?B?NTJHTU5RdWdaOFJEWDhLeVRoWUZsQWhiWmdqbi9vb2hIK24vT0llTU1RcVV2?=
 =?utf-8?B?dkUrckpuejhsa0hZY3FnbDhwSlo5SUhXdkdCQ0JOdllUUDZkSFVaNDUzMjJS?=
 =?utf-8?B?YXg0SEp6bGg0Yk0reGtxdmxQOU12SE5JdXFYWk5zM1pxUkxhVXdOZ0Zzb2R2?=
 =?utf-8?B?MWFWWGhTcjkvSUhPaGkwaHNaa3hjYVlFclF3TUhpdWFwOWYrcU5ZTWJacEp5?=
 =?utf-8?B?MGJITzNORDNDMFpOTWdXYUJweUxsODZJRmp5WGVvMGZYS3cweUNGNXVZZjFY?=
 =?utf-8?B?eGRrSXA5U2o4SFFOd3dCaXZjZkYrejBZZldHZTRleVY2TUVpUUhMZHF6b3B3?=
 =?utf-8?B?a2N0bVhZZFovUnltV0hyWEVvRnFLa0ZnNSsyWGdnOTJBdm5NelZzdlorUWI5?=
 =?utf-8?B?RldKNCsxREtWd1lnMlkzVjJBRCs2ZjM1QmFNQzFxd2drMVlHazFTZURXRGpn?=
 =?utf-8?B?bVpVUy9hWUpjWS9xQUFwdWliSWh1RnNCS3cvNVNlT2xwSkRUb0ZZa09Lbmpo?=
 =?utf-8?B?c3dEQjVMSi85VHp3KzN2WmZ6RGZRMHZBVkJwZ0lSUkZHTGlrdEFRaytwbFdX?=
 =?utf-8?B?bWZWTXkyendJcGpRVDM0T1JYN21VZmJNUWI4aEpQMWJ5SlRIa3RGeWFZRVVO?=
 =?utf-8?B?VTZtdFRRajQvTlhvU0l0ZFRoakg5Y1FVZUlOWHpLRHJkUnFpMWN0SzY3bU5B?=
 =?utf-8?B?SlJSendmU0h2eDN6SHB3UlNyaURzSEhHa0pER1pTUkpQVXdFNHFSczVBTmxL?=
 =?utf-8?B?bmtseElmSnpoa0ozS2s1bnRGRHFqcWFIam4zU3FQRlVEeWNMU3JSUlR0MU9l?=
 =?utf-8?B?Tkk0dTZZczdzemVxZGtDeXVSdHRRMWJYWEM3dHJEdWwvQ2Y2Vk04YjdxUzlZ?=
 =?utf-8?B?NkVpTnhTeVVEVnAvblZyd2VITlZxc2duMUF5a0U3ZEpNd05PYVc5eDVPTmdD?=
 =?utf-8?B?WWh2TGl5eWs4aUVTOGUzalRFZDhSRTFKNzcyQ200N3N2elRvNEJHQlEwdG41?=
 =?utf-8?B?RTlJK3A0SGJFK29sd0M5bm9FNGhyN1AxNnJiMmRDTSs5Yzlyb2ZPZlFDR1kx?=
 =?utf-8?B?UmIzbS9ReXkrTnYyT3VhcTZIa002NmloQWxZd3BlRUsrWHJuU3JxenNwOXM1?=
 =?utf-8?B?ZkhnK0cyMmZEVEtrQXk3czRLQTFFeEdqV2RQWkRrendVMStjWUxQemdlK212?=
 =?utf-8?B?Z1ZLTTRPaDFRTGY4Sk9BR0ZJMkJaVnB4b2wyOWV5YkxLRHhzTjhiTVNkY1VT?=
 =?utf-8?B?Y3VXRC80QnBNc09qOXk5UHROQ2c5VXlGSDNZdnN3Sy84MTFBUWtQMEQ4b1cz?=
 =?utf-8?B?K2NaWE54cDZDQW9wWFd6dzY0UDU5Q3hsdGVDUm13WkVGcFdGOGdQbmtyY0JD?=
 =?utf-8?B?amszM2ZJcENUZ3gwc3BjYzA4QldtQmwwcHNlWjhFU3dSNzVIV1ZzbWgremZt?=
 =?utf-8?B?d0VpWnVuZnI0OW5hb21uQXBxRS91YkdQM1J5ak9zQlNMNmE1QkJlbVNLV2E1?=
 =?utf-8?B?QUVWQ3ZIT1VRQ1RqMTErckpJV2ZONkVpWWFiM2NkWHUxbWZGVGY1Zz09?=
Content-ID: <4915D5B471382C41B5367922E62E761D@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: H9LaaNTNgfnS/9ciODIhGuTMNUhRvnvqBvAKCIHIIVcsOJZ4dJmw6CZxirBc+ILa984qyhxccILcKCqgwe7ovP7BNwujdzJZY43Xr+1B7vcvaVxGo+cYtVdBT1N32A4Sn1sd0H4sNI0YeNlR2BjzY808sRg94gcZReK0qV7H4d8WI+dc36S5sm0rzjNgYa/MW8kIGMMcT8XUySXpsfMJATUH2E8VMwdZGFfwBY+K5XENktoZONhqPsD8MqWglZu5Gk8Qj7b+r+yDYv3TLip0oxZVlRbpiQ/JLgBMbtsKVW03kaILsBwvZhS066aywPA6Hoxj9XfMa5D69+A1OJjKCA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: eNnsqU8Ea1FQgvR6aCSY26qjBd+fqTicThhWLBXWP9mtAUS1LfMWtXCxw4Y/nTGHgtSekdAqU3M5ZxATfAKl0unQ/J6wGYDIZinLdFqf16YF404PEa/tvepjwN3MXllFchvRBMlm+LG6ueJ0lMn4g3d9oX43DiMfC9VO+SUPSoR198Rmy2ZnykWyFR42ztu+geA+lwD33bl20zDVEegZW6VtaNSARWN4zElAo31xCT93t6MbF2STYcCPTqANieYTuOwH2BalOmC6Fu0doF9WL/mB7bB6535w7cXBpr/+fCYJqskngZBM6598V2FQpLfKpdo500pmgbwZrTp4hAg26KYHcBSq6LW2EWfWf+BA8K1rO1+e6sKx2HaUhXJFhBYyHur5NvuzRsRX/B7Vxjgv1WR86H5icNKc9Dp5+a2GPJvBhZ6DBR9Ali08StYL+MiwPw59Ce2rJX+iHZa7oH0MVGdxz2gXvQ/meEGzYCTQpv2vAaRiFjZk8Mu3PcPgtMgKo0zhkTq5Po4523h3tWD/L7tV2diPenzvph+O0Z7Z5KyI6G+k1qRMGeNtQIRq2+i0p5Xiecp1Q07ybhD7Ljprf+Nj8SewkREr0IL6eA66y4kY6u3m9l3PRTI+WjyVHq5xcvYyQ1Jswa4ivUXmFmjr/g==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da824764-c5e1-4cba-8590-08df20de62fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2026 23:39:22.5018
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o8D0sRjjHVbbiJFBgmkLDxPf7jIkVmGWFJbyMMGDSQYX/s8pBF5VgLDIYFqLVgkZeeeGYqnlcMhwFTw+8fOD7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR12MB360321
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAyMDA5NCBTYWx0ZWRfX9sleBMmG7HJe
 r66f5olV737483RoPkO5FwNI4yQBCXCbgxA9LAQssoYN9FQn93UGwWKeMMIsPdxUrgOeRJYpL5I
 rPhWU+WxEWMtOelloJ8M4qoAmXuG138=
X-Proofpoint-ORIG-GUID: DDafFrbpb35fh2M1PX2YuuTToVQFEf3f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAyMDA5NCBTYWx0ZWRfX8qbLInzgK5oJ
 8gwdo7srPbEOoCTtvxUP2kXWb11qZJUIO2KfIcWi9SkUvJOXKDmmgrwIVDjtnDvJKlUYE7jbUh6
 woze4zPdYMn7v7wNz8H0xJNJqJ92M9S8yAw6/BnSY1qlHTTywHaKgR5rKN9b5HQYiG2dWaW+98C
 6usls2vYM6/GQ8biqaf2XYf7P6JiYMdmrDzS4d75aZwyZ47KosPbSH0urfGhfGcNYz8mDAOlSDu
 odAElCtvVILlikWaN5ZlzePJsvIJX9gLurxiKrVP6tp54T/S0Rn+OXvMyEyNFe9DrSMyCqEV7/x
 2W1xbiknUPiBwLGrS7cGkghYve2j51HtvKclZnsjA6oQ0Wsgsv6e17IBRf+9XQNA75hAU298WL2
 Fxjq+zPbLty7fV2D9g7jaw9FTZJRZTr44FY2hXC2GPuaGXOdx0Hj3hMJXkSvnX/wkRGHZL3Uo9v
 F9nV0v99ZnA+0koDgNw==
X-Authority-Analysis: v=2.4 cv=Vrm2kO2n c=1 sm=1 tr=0 ts=6ac040b0 cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=jSPayVjLy6xbsuKauFBc:22
 a=pGLkceISAAAA:8 a=jIQo8A4GAAAA:8 a=QX4gbG5DAAAA:8 a=W2M8NIFbcosXO9OoIpIA:9
 a=QEXdDO2ut3YA:10 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: DDafFrbpb35fh2M1PX2YuuTToVQFEf3f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-02_06,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 spamscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 adultscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2609040000 definitions=main-2610020094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_163937_360366_CA482928 
X-CRM114-Status: UNSURE (   8.71  )
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
> On recent Rockchip platforms (at least RK3588 & RK3576), DWC3 IP is used
> with a USBDP PHY providing USB3 and DP. This PHY needs to be reset when
> the mode changes, which may happen when plugging in different USB-C
> devices.
> 
> If the USBDP PHY resets with the DWC3 IP running, its internal state
> corrupts resulting in the USBDP PHY not being able to lock some PLL
> clocks, which effectively renders USB3 unusable.
> 
> To fix the issue this adds handling for the new PHY framework reset
> notifications, which will assert PHYSOFTRST before the actual PHY
> is disabled and will deassert it once the PHY returns.
> 
> Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
> Acked-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/usb/dwc3/dwc3-rockchip.c | 127 ++++++++++++++++++++++++++++++++++++++-
>  drivers/usb/dwc3/trace.c         |   3 +
>  2 files changed, 129 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc3/dwc3-rockchip.c b/drivers/usb/dwc3/dwc3-rockchip.c
> index 4129aefd6a8b..17b6c2ca9e19 100644
> --- a/drivers/usb/dwc3/dwc3-rockchip.c
> +++ b/drivers/usb/dwc3/dwc3-rockchip.c
> @@ -2,11 +2,136 @@
>  /* Copyright (c) 2026, Collabora Ltd. */
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
> +#include <linux/phy/phy.h>
>  #include <linux/pm_runtime.h>
>  #include "glue.h"
> +#include "io.h"
> +
> +struct dwc3_rockchip;
> +
> +/**
> + * struct dwc3_rk_phy_nb - wrapper for PHY notifier block
> + * @nb: notifier block
> + * @dwc: back-pointer to the DWC3 controller

I missed this from the last review: dwc here is supposed to be dwc_rk.

> + * @port_index: USB3 port index this notifier is registered for
> + */
> +struct dwc3_rk_phy_nb {
> +	struct notifier_block	nb;
> +	struct dwc3_rockchip	*dwc_rk;
> +	u8			port_index;
> +};
>  
>  struct dwc3_rockchip {
>  	struct dwc3		dwc;
> +	struct dwc3_rk_phy_nb	usb3_phy_nb[DWC3_USB3_MAX_PORTS];
> +	u8			phy_reset_active;
> +};
> +
> +static int dwc3_usb3_phy_notify(struct notifier_block *nb,
> +				unsigned long action, void *data)
> +{
> +	struct dwc3_rk_phy_nb *pnb = container_of(nb, struct dwc3_rk_phy_nb, nb);
> +	struct dwc3_rockchip *dwc_rk = pnb->dwc_rk;
> +	struct dwc3 *dwc = &dwc_rk->dwc;
> +	int port = pnb->port_index;
> +	unsigned long flags;
> +	u32 reg;
> +	int ret;
> +
> +	switch (action) {
> +	case PHY_NOTIFY_PRE_RESET:
> +		/*
> +		 * If already suspended, the resume path will reinit GUSB3PIPECTL
> +		 * via dwc3_core_init(). A forced resume is not possible as that
> +		 * would call phy_init() resulting in a deadlock. Due to the
> +		 * phy_init() in the resume path there is also no need to block
> +		 * async RPM resume on our side, since the PHY synchronizes it
> +		 * for us.
> +		 *
> +		 * pm_runtime_get_if_active() returns 0 when suspended (skip),
> +		 * 1 when active (ref held), or -EINVAL when PM is disabled
> +		 * (device always active). In the -EINVAL case PM ref counting
> +		 * is a no-op, so the unconditional put in POST_RESET is safe.

The -EINVAL case is not no-op here. No reference is taken, but
pm_runtime_put_autosuspend() in POST_RESET still decrements the usage
count, causing underflow or taking some other reference. Should we skip
if ret < 0 too?

> +		 */
> +		ret = pm_runtime_get_if_active(dwc->dev);
> +		if (!ret)
> +			return NOTIFY_OK;
> +
> +		/*
> +		 * Assert USB3 PHY soft reset within DWC3 before the external
> +		 * PHY resets. This disconnects the PIPE interface, preventing
> +		 * the DWC3 from interfering with PHY reinitialization and
> +		 * avoiding LCPLL lock failures.
> +		 */
> +		spin_lock_irqsave(&dwc->lock, flags);
> +		dwc_rk->phy_reset_active |= BIT(port);
> +		reg = dwc3_readl(dwc, DWC3_GUSB3PIPECTL(port));
> +		reg |= DWC3_GUSB3PIPECTL_PHYSOFTRST;
> +		dwc3_writel(dwc, DWC3_GUSB3PIPECTL(port), reg);
> +		spin_unlock_irqrestore(&dwc->lock, flags);
> +		break;
> +
> +	case PHY_NOTIFY_POST_RESET:
> +		spin_lock_irqsave(&dwc->lock, flags);
> +		if (!(dwc_rk->phy_reset_active & BIT(port))) {
> +			spin_unlock_irqrestore(&dwc->lock, flags);
> +			return NOTIFY_OK;
> +		}
> +
> +		dwc_rk->phy_reset_active &= ~BIT(port);
> +
> +		/*
> +		 * Deassert PHY soft reset to reconnect the PIPE interface
> +		 * after PHY reinitialization.
> +		 */
> +		reg = dwc3_readl(dwc, DWC3_GUSB3PIPECTL(port));
> +		reg &= ~DWC3_GUSB3PIPECTL_PHYSOFTRST;
> +		dwc3_writel(dwc, DWC3_GUSB3PIPECTL(port), reg);
> +		spin_unlock_irqrestore(&dwc->lock, flags);
> +
> +		pm_runtime_put_autosuspend(dwc->dev);
> +		break;
> +	}
> +
> +	return NOTIFY_OK;
> +}
> +
> +static void dwc3_rk_phy_unregister_notifiers(void *data)

BTW, when does this get executed? Could it be executed after the
dwc3_core_exit() powering off the phy and turning off the clocks? The
reset notifier may still be called in this case and read dwc3 registers.
Can we make sure this is done before dwc3_core_remove() in
dwc3_rockchip_remove()?

Thanks,
Thinh

> +{
> +	struct dwc3_rockchip *dwc_rk = data;
> +	struct dwc3 *dwc = &dwc_rk->dwc;
> +	int i;
> +
> +	for (i = 0; i < dwc->num_usb3_ports; i++)
> +		phy_unregister_notifier(dwc->usb3_generic_phy[i],
> +					&dwc_rk->usb3_phy_nb[i].nb);
> +
> +	/* Release any PM references from in-flight resets */
> +	for (i = 0; i < dwc->num_usb3_ports; i++) {
> +		if (dwc_rk->phy_reset_active & BIT(i))
> +			pm_runtime_put_autosuspend(dwc->dev);
> +	}
> +	dwc_rk->phy_reset_active = 0;
> +}
> +
> +static int dwc3_rk_phy_register_notifiers(struct dwc3 *dwc)
> +{
> +	struct dwc3_rockchip *dwc_rk = container_of(dwc, struct dwc3_rockchip, dwc);
> +	int i;
> +
> +	for (i = 0; i < dwc->num_usb3_ports; i++) {
> +		dwc_rk->usb3_phy_nb[i].nb.notifier_call = dwc3_usb3_phy_notify;
> +		dwc_rk->usb3_phy_nb[i].dwc_rk = dwc_rk;
> +		dwc_rk->usb3_phy_nb[i].port_index = i;
> +		phy_register_notifier(dwc->usb3_generic_phy[i],
> +				      &dwc_rk->usb3_phy_nb[i].nb);
> +	}
> +
> +	return devm_add_action_or_reset(dwc->dev, dwc3_rk_phy_unregister_notifiers, dwc_rk);
> +}
> +
> +static struct dwc3_glue_ops dwc3_rockchip_glue_ops = {
> +	.post_phy_registration = dwc3_rk_phy_register_notifiers,
>  };
>  
>  static int dwc3_rockchip_probe(struct platform_device *pdev)
> @@ -26,7 +151,7 @@ static int dwc3_rockchip_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	dwc_rk->dwc.dev = &pdev->dev;
> -	dwc_rk->dwc.glue_ops = NULL;
> +	dwc_rk->dwc.glue_ops = &dwc3_rockchip_glue_ops;
>  
>  	probe_data.dwc = &dwc_rk->dwc;
>  	probe_data.res = res;
> diff --git a/drivers/usb/dwc3/trace.c b/drivers/usb/dwc3/trace.c
> index 088995885678..8c4e2a7b142e 100644
> --- a/drivers/usb/dwc3/trace.c
> +++ b/drivers/usb/dwc3/trace.c
> @@ -9,3 +9,6 @@
>  
>  #define CREATE_TRACE_POINTS
>  #include "trace.h"
> +
> +EXPORT_TRACEPOINT_SYMBOL_GPL(dwc3_readl);
> +EXPORT_TRACEPOINT_SYMBOL_GPL(dwc3_writel);
> 
> -- 
> 2.53.0
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
