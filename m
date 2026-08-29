Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49FF8C61DB9
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2026 01:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+4vkYgSlM/Zy+io9Z81rFCKBR0U/axYs4GPBGxHjg4=; b=DlazGEC2mUm/tH
	jiWHdFhhG/z3OZQjUfyajje0vTwVTAwq8WGFd670uE4VItfAVmtLPQDZm+creJwIKvm4LijZGL95I
	n+LJVJ/bYMi7W/v4FLmZ54mf82oNaROhFmpTIzFIX09vJuzTQCdb3z97EpMGa0Zd0ZGRV1Nyh+AW1
	YNjs1KQHrMRS99jkZJOf/Ys2EiA9dRx54ik/NmMAjA8C9ztoa1Syjm2ttnel9u01UUmK9A8FEizrL
	UmMhpkQrfnSS+lACeacunxcn+L1jx2/xE5pT30jQd/MARLqfdJVzZNt+4IiD2qbe1ktIcfmznnocv
	udB+2UQbxHOCS9n1cPAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x07vB-00000006a3n-0wsJ;
	Sat, 29 Aug 2026 01:31:49 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x07v6-00000006a2t-25bU;
	Sat, 29 Aug 2026 01:31:46 +0000
Received: from pps.filterd (m0297265.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SMTgX32153690;
	Fri, 28 Aug 2026 18:31:33 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=Vl6eSii6QSI/G/eZi1JR7ZQctRmqLVOkJxQAU/DLBqs=; b=
	qCdU3omyk7zpeQZuEGOsn2WFsoR1VImco79WkQvxo2LRw1ZxoC6KyTBtvRQe68FB
	vbZxgzqGqRuc+EP9/9vWLw9dmqig6thbILGxHmCDok95hMkws8kubR5q0PwdkdAD
	rG2OVbHvGxZ08pZkqP90aA5LaIAdx+Rw6T+4ba2UuV30P6wCICWYB7Arjlb/v7Mf
	xARKLAR5UMjqruhq27OnzTT8YlSApJaKRwI29EiB5niccL9liVl48MRkC7B+sjtK
	jzNbM/uZIxQJnhKx3XzLf3C8mOHNfWOD5EXGr6fsgbKYe7nxO2bMhkPQd6Z4tTSa
	hH3jOQ1VCDel8Kju1p81tw==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 4gb38mqb42-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 28 Aug 2026 18:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1787967091; bh=Vl6eSii6QSI/G/eZi1JR7ZQctRmqLVOkJxQAU/DLBqs=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=bs6IoONVVdzJIhpJfBzUZVLCu3VfR7xAGmnbkJCWrv4WCNJFtELmH1PgLTX7iNIbo
	 biT2oCn30R+KOSnJZ5hfhwuXHc4TJ7/yXk0N3k4LGt+csrh74iSMJrSfBRQsghFej3
	 kZcAXlCuiQe7HI+9y+9zkRoS3Qvtn87JqrluE/YtqkJ19r3VeXCBtSS6EyU5b4vq+r
	 qEFkEqLW5SGnq71glebYxs2ljNU/6epjghWXzuQNDHRNaWQKBKOr6gQfGzFMLfvQbq
	 vBX9g0juR9B6ouZdXBrwoF2VufkNy44D3lXjSbsXIbLHMPFtfn5kybheF7mT40vcRc
	 oWPOgUXY1/WNw==
Received: from mailhost.synopsys.com (badc-mailhost3.synopsys.com [10.192.0.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4815140124;
	Sat, 29 Aug 2026 01:31:29 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com [10.4.161.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 05E12A0068;
	Sat, 29 Aug 2026 01:31:26 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=azE7GXVC;
	dkim-atps=neutral
Received: from CO1PR08CU001.outbound.protection.outlook.com (mail-co1pr08cu00105.outbound.protection.outlook.com [40.93.10.101])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 1F681404F3;
	Sat, 29 Aug 2026 01:31:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yY73oCbvU8YnwGBgt5Et2D5BrN3Cwy+eNXpYy7Lt3AKQe01gg9XhZ8wMMN3oeLcWrAxp6Z5JkzN4PtQyJ5li6CVsQcGqrE8Dr2xm1jmp38QzIFDq3vC1GgYgZNx9BQhg1FUT1SKcKJZWc3m3LLflQHATrfuETUhWCSzVcv1lrMD+OfSEGB/M93iG0lrMD3yznM06b6Y1vz2DIMfx34WC+OTPVKYEd2w+nD+tmwFMwubVFA4eJ3WlcxcYmjSnH+n0atksZSl7w6Qk2jsSQVkwV4tap/mzFY+hH4aOg6dKHg7Ur6MmB7UZY67uKVbRvqLjKKg+4a6pmoqslWIVOZVvUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vl6eSii6QSI/G/eZi1JR7ZQctRmqLVOkJxQAU/DLBqs=;
 b=IXgtRe4zpmDrttPSxzoWDXzcwnNAqY8PlLlJX3AurH9WUO6ungLna1+bGlywrJ0eHj29RdwUHENZPOs8ZIFojOTo0dYHbUQrECg/vcacd5vGcxRtfnVm0ahs35NUxShpu/I6Hsrbj3bTRU7Tz/yrglAVH+YLZEQU/b/Ox7qud+nUDMYK9BHWRy/w5wbN1RNFpQad0cS3hZV4nE/bs5rJ4J9lE0SJhgjRjvzpvRj3YFVoYKHAcHRx/UxijYI54gJyhVD7K1RpEpxcrUlq70Mg8xPFjCIOhBfILFbvbhPLTawvorrkL5rR5eHxZPMRGuC+M2LZEjr4LEmGmcr+6mXlPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vl6eSii6QSI/G/eZi1JR7ZQctRmqLVOkJxQAU/DLBqs=;
 b=azE7GXVCtn2jf4WOlDlCWNdLh10VflRsejh+tmPQPeeiBL8TD8BJaW0y6BTTMSF12p027RlU6SwPS7b0ckIj9g3Imh9kEOMO1hMlyIqJtulegpx1QPkEpZ4S8TKA2CMKjLbY1hpD6wrptUnSl2qmjaLIZya1tFxZmH8Q4eS6omI=
Received: from PH0PR12MB7486.namprd12.prod.outlook.com (2603:10b6:510:1e9::6)
 by CH3PR12MB9394.namprd12.prod.outlook.com (2603:10b6:610:1cf::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.11; Sat, 29 Aug
 2026 01:31:18 +0000
Received: from PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109]) by PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109%6]) with mapi id 15.21.0360.008; Sat, 29 Aug 2026
 01:31:17 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
CC: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Alexey Charkov <alchark@flipper.net>,
        Igor Paunovic <royalnet026@gmail.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
        "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "kernel@collabora.com" <kernel@collabora.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v14 29/38] usb: dwc3: rockchip: introduce glue driver
Thread-Topic: [PATCH v14 29/38] usb: dwc3: rockchip: introduce glue driver
Thread-Index: AQHdK2ZrG+NkxuqG7U++8PVxGi84zba0VViA
Date: Sat, 29 Aug 2026 01:31:17 +0000
Message-ID: <apIu_Jb1APyI8Jh9@vbox>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-29-b5ad9c68fa11@collabora.com>
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-29-b5ad9c68fa11@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB7486:EE_|CH3PR12MB9394:EE_
x-ms-office365-filtering-correlation-id: 79767096-8728-4670-224d-08df056d390a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|376014|1800799024|366016|7416014|10067099003|22082099003|18002099003|11063799006|4143699003|56012099006|38070700021;
x-microsoft-antispam-message-info: nNOfnAYnCHdNOzzF/6B88pvD+7VsH5XbFSxZ1nj/DlveXleE5Q6Va4ie9LZfpJvIoscaIiH5yqP2mEC+4KuxD6/cgDivyucPEcVj8z2nrszzp5PfpATPaun0VsSWDcvaSuHEXWY7kGClgNajgmiBD4oyli4o6Xa8SbTKj+ipv1JQjjhxp8ICGzCX7pT9GcxAwoKxnzZHDwjmhCz77YwxsGdmUkSnY+h8b0RA4/A/SFuFd5qZNz0QbnOY2s2T08x9sJROBgko5u2v+nvswCnMjiKwaaNaVm35nx0vjiKKBTGwJHTeY1QkXcCLIIqN8i1sc9X43rtfaAk5MAelZfAcGTMOPNZqIk2LYdcALKbp2qdXGyg21SwT2r1M3AIPBQ3ClMEoJ+Hwq6IwUcyja0wgsSVA5enW53+aKBI/Ox0lDVUs9tQUp+L415ICEJwdxZSBhvjIbONAXmKokujJfWCxNqyOenim8XiLRa7Pg1dnrmnvt6ir3XqSOFquSqvCvVBAqlAyKhP8GEhfqtk/i8gyp6htfN1/Hw4W7votU1cFufblFONSbZkSK5IDOvVYK+R/ZsKc+mZrMquoY1dv1epCtHeQiRij1ji4YZrVo3mHVw0sNVGlAqkTvrPwdtfRLDv951gUnL/rJiemnp3fuIiUYK14cxv6as2xPwo+iPeOsSwI2J2IluvT77oiD47kYN/7mAZYGQ91xfgGQ4pElb9Ac5BvyXQq4uk36fvzRECJbNY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB7486.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(7416014)(10067099003)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MS9vQzhWMFY5V0VMVHBtaDJMc2dhSmFhZTFZRytRMmprd2F1b3ZzQlczL2pI?=
 =?utf-8?B?VEpWRTZPeEhEWDByNGt3OXJiR05sdHRRVXVWanBLTU1qZG81YldreXpmT21k?=
 =?utf-8?B?QmR6Y2FTR2JXVlhKcGF5bEttM0hPK1dYWjZnOWVuZHpOY29SVzRGcktvbnBT?=
 =?utf-8?B?UTI0Ny9QalRtOEhWZm1OQUtETUhUYnR4TkJ1R28rZTlOVFgwZDgzN29IZXph?=
 =?utf-8?B?OVNHUko3L0t6cTBQd2NzZ21SNkZXK2dSOWVZS1lzQnZMRFM1SjIrd2VoZnhJ?=
 =?utf-8?B?Z3JaUzg0UnpKbFlER1hRMDU1aHZtYlRycXY3Sm5VLy8zL0x0Zkpyam5uZ1lG?=
 =?utf-8?B?TmdkVHlaSWZZcVFsdjhyVFlyNEJLWkNUdmlnTTNBRW5nK2YzYnhMeHppNVBy?=
 =?utf-8?B?YWZEOWkvNGVtSUNnbGowYlV1ZDNzeGJOdjVvYXhpdE5ZZ3NSelZsTVdCbjBZ?=
 =?utf-8?B?NFBPem96eVdNZEJCRUllQnVOYjMrcmViQXFLM1RNNFJNOUpvQTFCbFhOS1BV?=
 =?utf-8?B?L1owV0xRb1JUSVZ3dDY3Zm40TVhKakRPYnJGRXBFQlh1Q3k2ZUN2eDN2TEZv?=
 =?utf-8?B?K2RrcWFXMS9pSE05THVTK2h2REVtSUhtN21SRU5sY0FYQ21acGFBcEhsWGNv?=
 =?utf-8?B?Uy9DUm9ZNEt0N3hjOGZCSUtVU3JzRjltWWdkS0tUam1yRVN5ZkxSNnlaRC9u?=
 =?utf-8?B?QzlaTUlJclN2QTUwNXJva1FuL1hjelo4bTJtVVhESllWamVyZnZ2N2Ryb2Qr?=
 =?utf-8?B?OWdIRHFLWGF2UEVkeEcrR1pGcDkxNDVKZ0g5Rjg5Z0V4Q3o5M05QWWt2U216?=
 =?utf-8?B?NXpsOU1SZ3JvbjJIWFFrUWxTeXhFTHdpRml5VU1vd2ppUHRLL3lSc2YxZXgv?=
 =?utf-8?B?eTBuSFB4azZtQ2UzekNsZEFuZ1hNU3VLYXB2WEFRRmJWQzJ6aVVERzRSdzc4?=
 =?utf-8?B?RVhBVXpvemtBZDIwSU50ZktFRUtJdVF3L1k5SkNHdlhiZE5naEMrdWxtYjkw?=
 =?utf-8?B?a3J4cTFoVUc1Y3NHOUt5bnJ3bmNzNlZXeWV3VVZnWmw3bVc0RmtnSG82WExK?=
 =?utf-8?B?dkhuM2YwQjJQL3RxWnZTa0Y4aUx6RDR3ekYyVjliRzdMRmZic1R3U0xNWGxX?=
 =?utf-8?B?T2gzei9UUDN3VitmQmdPallSUnBmZjh1ZjJGV09LRmdvVTFtYWhzclgyNllD?=
 =?utf-8?B?SU5qcTYvRzBlRDJURXlBNHFuZkwzNFNNVjJjbGdWZStaNWtDUkI5Y1grNm9j?=
 =?utf-8?B?VmU3NGdDQ0ZiYytxeTQvcmFSbzVYUGFVd3hjcDd5MGRZSGR6TnBvQ2xzYnA1?=
 =?utf-8?B?SWRKb3kybWx3TmNhdW5MaXdnaE9XM2RHWnJFSnN0Q1FyQUVtd0FxTzFIV01i?=
 =?utf-8?B?K2NGcUF0WVRKNGhDd3pUZ2w0bnlwR2I2UWIzYURsaFo5bVprMkpUTWpYaklp?=
 =?utf-8?B?VmpqbWdKd0wzclJWZnQxbk82WGZCRUkvQWNiSE56ZHc0a0pMektzKzRUUUhE?=
 =?utf-8?B?SFBWQ05wZ1crYU1VZ3gySTExdDJZUTM3b3hYaTcwUGUwQTVkaDh4UHJZN3Zv?=
 =?utf-8?B?R0Z6c2RQZ08waGtGenF1K1I5R1g3T1ZzSE5YT01vY0ZjbzFZaGtUWEZHeTRh?=
 =?utf-8?B?RFQ3S01ubVhOSkppT3hwYXp6dGt1YW0xaDltY2poVnc0OUYvT1FUSDlHMzZ1?=
 =?utf-8?B?aDNrb1gzUUhWcVR6eklTL3Mwd3RGWHRFWVdrZUxUSzJQY25mb1E5aTg3Y1lo?=
 =?utf-8?B?eCtHSUYwRjNsNHgzWVAwdWNJQzRFSkp6ZmJsbEsxL2p6a21qaTViMVA5SjU4?=
 =?utf-8?B?ZHIvaHhsUTgxRmdCR1RWOE9kVmc3Zm53ZGFsdGVqRFo1bnlDVXdwVk1SZUFj?=
 =?utf-8?B?VThaSG9NUE5TRlVpWFVUcjc5dUY3ZkhBU1NMenhIYWNVMXdBeG9KU3dUTjNn?=
 =?utf-8?B?SXViZ21LNWxKaENHTm1HbWFjdG1BQ0wxWnVyckhDRTdueXh1NC82QjJGZ1Vi?=
 =?utf-8?B?R2xLbWpLcXFoZ0JQTmxrR0R1aVNaYWIyS1o1cTlTNlByTjIvZ2pnNTh4ZFpM?=
 =?utf-8?B?eFI1SmNNR3hiUU5kN3Bnb2trbVBPN1paeFdOdHVLcU5YTER0Z3JXZzd5VnB4?=
 =?utf-8?B?YXRwS3RYVlEybnhwc0JGS1EzYTUvYkFqdHJvYjFGWnlWU3FLTmVBK1QzcVNF?=
 =?utf-8?B?dHNyNW9zdGtCQzhqNHhtY2xndldqTDlUaEJza2pZNklDRFNNTnE5WENOYm15?=
 =?utf-8?B?elRkYi9qWkJxNm9CNmMwYWs2RDFkSnBlREJzWVJmVmxtNUtJdnhnR2FMQ2lM?=
 =?utf-8?B?VVVScnRScUdScWtzVE5Tem0yOHFFYkJzMWJYTFYydm02WmdoTmRNZz09?=
Content-ID: <825712D86E846D4284BFFEBA780DCDEB@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: X7Tz5Cy6x/jNy0zRZdsWpMDcHxdiZh5to6zMpHQOgwz3VMgkp7vGb0ZIAfppVz41A9pfYd2YIvVG8ICbYHQEXEbs1vDfobeLbC/BonClQEvm9HhPOp68kVol6KmLUZRdB86u+wu6uiJNGs6MHSxQue1aOkLEYSaJdxSkOWTQSZy1EAgQN3QfoTDlUNdWUDTQYdYdJedtv/ymlda6DXjALLOy0gS+9o5UTfg0Q8D0nSeCwniNdNkfFKomkKkJeiMxl4BGqctznxpTYqYVi03x56hyM0xarJWYAGZvyThtUODompES81G4u79pWXrbCk34LJPRqEBFYSNb5PayZOGe5g==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: EQf5xfh4utuA8WNX6VYFJ576Lallecm8NmuNNEDI2Q8L7Pld14wnPIvcB1dMkwhIKdTbTD0hW2CiqQgtoHIJMr0pwA4SmZbE8UllTlPW6g5npE80F/UdrQGiijayUjbbP83XB+NAoFXyFwcDrW6MN2MRTVBYTBQp/8axWPW27Lwxg/w1kzUkGeEnACNXruCpIDzA7UXbf9rRJPcpI6TSDXpRo0yJ+giRrFjKhI9xhKafO5uMLAIPYZNUEepFWFIHdLdlyf38PDPbUwdlPoHQKp9qkCq8uKgoIMvNWYs9sM97nzwDmqbAMTwT2gc5+OIECJDeE3w7GscsYdufmeWMrYkfG8nYmI36lqedX15O51y9HK5lVNmmLtKhuQJa0HN1CDrOu82+mRe5+RKp8aaQjH1mP2fpDLMt/qDiJkuhQ/1fU/H+AE/KAuTkWnzMBFaahxPDYVko+ETpJtpMeGRSX3Qi5AR8wVP4wM791Ce3NZKgv9tVj78Eb1RYOCU6qVne5672tmxeUyea5TO8oGQBr+d7jjaLnViz8fMCewVDZpq7pg/qffusmWTXE1oFC6dUMRFgQJFnGj+Hjrfay5H29caOAXXEwOoyItFnD+EsC3SGn1dnkT6DLqDdqtNfvDd7/DCpKSMp79xbLFSah2wDpw==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79767096-8728-4670-224d-08df056d390a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2026 01:31:17.5875
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cG2ndcqhwTwx+KBTJk+8i+H7iA+KjCzCh0LCJxC0VxyJvYqAZ8fasvAbZ7va09hMKLZpYavACSXxqVS6oteJig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9394
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI5MDAxMCBTYWx0ZWRfX1iW5T7OHM+mN
 4F+MOjimbL/POavT/5cGvbXd/kQXt2fPuKtydBjGJl2aOZ2FB+y8EHxUva0CaQlWoEoiunlm90w
 ljDoqfd1BM61/b2Lb0H8Wcj7lEt6QPLIxxKQasjf2C5D/B7m7EoiIwSLhqh6pQISKfvIrQnxZHL
 BPnz8k7iYC3LDRJ2W8KkNJ7rUOC8PWViu2hpBbkj8Ib9URonSilio4yrXhmPFkhESmxXMax5oFW
 fmggFjH1znPdpgvJ0UpE5FMkJE/wEa0ZNA9HezRwq/iU+j3WP9sfAhqEzOA8LUYuM+g97i6l8q0
 80nSLe/IzHK/7oxzgwghxxPNqwnbd8nPYSV2YXu0zZMk+xLqXY5Zw6qVb62SViiy/5QpUdw0K0v
 nozcb2hx2XOc9M5WpH0zZO/rg/KrfVltIVG9DzIx990Wy7afj5Nxn99lrKSpAF2iy6WNE7z1AKH
 iSQXTCFiTKLpcp6dRJw==
X-Authority-Analysis: v=2.4 cv=TYemcxQh c=1 sm=1 tr=0 ts=6a923674 cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=-4-sGo8i1FcW4KD7_GeR:22
 a=QX4gbG5DAAAA:8 a=N_l3tuSvK5gYoIjoa2AA:9 a=QEXdDO2ut3YA:10
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: M3f4KhF43sOWmjBseE8OmKQbkGzf_yef
X-Proofpoint-ORIG-GUID: M3f4KhF43sOWmjBseE8OmKQbkGzf_yef
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI5MDAxMCBTYWx0ZWRfX8nnnjPe+cOQ/
 ahE0Wjs4pvsIgTdWqvkuJU2OX2x6+FdwTsS6CGtxfE1XyWzBa9rsnmD7c9QG9O9IiHnmeMeAnCN
 mj5GMxmCgKlZsqTwmfM5CDxwLa0stDI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_07,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 adultscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 spamscore=0 clxscore=1011 bulkscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2608290010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_183144_700825_ED70665F 
X-CRM114-Status: UNSURE (   8.80  )
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

On Thu, Aug 13, 2026, Sebastian Reichel wrote:
> Introduce Rockchip specific glue code for the Synopsys DWC3 USB driver.
> For now this handles things identical to the default glue.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/usb/dwc3/Kconfig         |  11 ++++
>  drivers/usb/dwc3/Makefile        |   1 +
>  drivers/usb/dwc3/core.c          |  15 +++++
>  drivers/usb/dwc3/dwc3-rockchip.c | 115 +++++++++++++++++++++++++++++++++++++++
>  4 files changed, 142 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> index 18169727a413..3c120ea9746d 100644
> --- a/drivers/usb/dwc3/Kconfig
> +++ b/drivers/usb/dwc3/Kconfig
> @@ -190,6 +190,17 @@ config USB_DWC3_OCTEON
>  	  Only the host mode is currently supported.
>  	  Say 'Y' or 'M' here if you have one such device.
>  
> +config USB_DWC3_ROCKCHIP
> +	tristate "Rockchip DWC3 Platform Driver"
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on OF
> +	default USB_DWC3
> +	help
> +	  Rockchip SoCs with DesignWare Core USB3 IP inside,
> +	  and IP Core configured for USB 2.0 and USB 3.0 in host
> +	  or dual-role mode.
> +	  Say 'Y' or 'M' if you have such device.
> +
>  config USB_DWC3_RTK
>  	tristate "Realtek DWC3 Platform Driver"
>  	depends on OF && ARCH_REALTEK
> diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
> index f37971197203..444e7e7f34b2 100644
> --- a/drivers/usb/dwc3/Makefile
> +++ b/drivers/usb/dwc3/Makefile
> @@ -58,6 +58,7 @@ obj-$(CONFIG_USB_DWC3_IMX8MP)		+= dwc3-imx8mp.o
>  obj-$(CONFIG_USB_DWC3_IMX)		+= dwc3-imx.o
>  obj-$(CONFIG_USB_DWC3_XILINX)		+= dwc3-xilinx.o
>  obj-$(CONFIG_USB_DWC3_OCTEON)		+= dwc3-octeon.o
> +obj-$(CONFIG_USB_DWC3_ROCKCHIP)		+= dwc3-rockchip.o
>  obj-$(CONFIG_USB_DWC3_RTK)		+= dwc3-rtk.o
>  obj-$(CONFIG_USB_DWC3_GENERIC_PLAT)	+= dwc3-generic-plat.o
>  obj-$(CONFIG_USB_DWC3_GOOGLE)		+= dwc3-google.o
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index 517aa7f1486d..6e796489a04d 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -2380,11 +2380,26 @@ int dwc3_core_probe(const struct dwc3_probe_data *data)
>  }
>  EXPORT_SYMBOL_GPL(dwc3_core_probe);
>  
> +/*
> + * List of compatibles, which have "synopsys,dwc3" as a fallback
> + * compatible, but have a vendor specific glue driver that should
> + * be used instead of this one.
> + */
> +static const char *const dwc3_compatible_blocklist[] = {
> +	"rockchip,rk3588-dwc3",
> +	"rockchip,rk3576-dwc3",

What if the rockchip glue is not built? Are we going to fallback to the
core dwc3 driver? Or are you forcing to use rockchip glue always (ie no
fallback). If it's the former, use IS_ENABLED guard. If it's the latter,
update the kconfig.

> +};
> +
>  static int dwc3_probe(struct platform_device *pdev)
>  {
>  	struct dwc3_probe_data probe_data = {};
>  	struct resource *res;
>  	struct dwc3 *dwc;
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(dwc3_compatible_blocklist); i++)
> +		if (device_is_compatible(&pdev->dev, dwc3_compatible_blocklist[i]))
> +			return -ENODEV;
>  
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	if (!res) {
> diff --git a/drivers/usb/dwc3/dwc3-rockchip.c b/drivers/usb/dwc3/dwc3-rockchip.c
> new file mode 100644
> index 000000000000..1df33625b69f
> --- /dev/null
> +++ b/drivers/usb/dwc3/dwc3-rockchip.c
> @@ -0,0 +1,115 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2026, Collabora Ltd. */
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include "glue.h"
> +
> +struct dwc3_rockchip {
> +	struct dwc3		dwc;
> +};
> +
> +static int dwc3_rockchip_probe(struct platform_device *pdev)
> +{
> +	struct dwc3_probe_data probe_data = {};
> +	struct resource *res;
> +	struct dwc3_rockchip *dwc_rk;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res) {
> +		dev_err(&pdev->dev, "missing memory resource\n");
> +		return -ENODEV;
> +	}
> +
> +	dwc_rk = devm_kzalloc(&pdev->dev, sizeof(*dwc_rk), GFP_KERNEL);
> +	if (!dwc_rk)
> +		return -ENOMEM;
> +
> +	dwc_rk->dwc.dev = &pdev->dev;
> +	dwc_rk->dwc.glue_ops = NULL;
> +
> +	probe_data.dwc = &dwc_rk->dwc;
> +	probe_data.res = res;
> +	probe_data.properties = DWC3_DEFAULT_PROPERTIES;
> +
> +	return dwc3_core_probe(&probe_data);
> +}
> +
> +static void dwc3_rockchip_remove(struct platform_device *pdev)
> +{
> +	dwc3_core_remove(platform_get_drvdata(pdev));
> +}
> +
> +#ifdef CONFIG_PM
> +static int dwc3_rockchip_runtime_suspend(struct device *dev)
> +{
> +	return dwc3_runtime_suspend(dev_get_drvdata(dev));
> +}
> +
> +static int dwc3_rockchip_runtime_resume(struct device *dev)
> +{
> +	return dwc3_runtime_resume(dev_get_drvdata(dev));
> +}
> +
> +static int dwc3_rockchip_runtime_idle(struct device *dev)
> +{
> +	return dwc3_runtime_idle(dev_get_drvdata(dev));
> +}
> +#endif
> +
> +#ifdef CONFIG_PM_SLEEP

Use the new PM macros and remove these guards.

> +static int dwc3_rockchip_suspend(struct device *dev)
> +{
> +	return dwc3_pm_suspend(dev_get_drvdata(dev));
> +}
> +
> +static int dwc3_rockchip_resume(struct device *dev)
> +{
> +	return dwc3_pm_resume(dev_get_drvdata(dev));
> +}
> +
> +static void dwc3_rockchip_complete(struct device *dev)
> +{
> +	dwc3_pm_complete(dev_get_drvdata(dev));
> +}
> +
> +static int dwc3_rockchip_prepare(struct device *dev)
> +{
> +	return dwc3_pm_prepare(dev_get_drvdata(dev));
> +}
> +#endif
> +
> +static const struct dev_pm_ops dwc3_rockchip_dev_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(dwc3_rockchip_suspend, dwc3_rockchip_resume)
> +	.complete = dwc3_rockchip_complete,
> +	.prepare = dwc3_rockchip_prepare,
> +	/*
> +	 * Runtime suspend halts the controller on disconnection. It relies on
> +	 * platforms with custom connection notification to start the controller
> +	 * again.
> +	 */
> +	SET_RUNTIME_PM_OPS(dwc3_rockchip_runtime_suspend, dwc3_rockchip_runtime_resume,
> +			   dwc3_rockchip_runtime_idle)
> +};
> +
> +static const struct of_device_id dwc3_rockchip_of_match[] = {
> +	{ .compatible = "rockchip,rk3588-dwc3" },
> +	{ .compatible = "rockchip,rk3576-dwc3" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, dwc3_rockchip_of_match);
> +
> +static struct platform_driver dwc3_rockchip_driver = {
> +	.probe		= dwc3_rockchip_probe,
> +	.remove		= dwc3_rockchip_remove,
> +	.driver		= {
> +		.name	= "dwc3-rockchip",
> +		.pm	= pm_ptr(&dwc3_rockchip_dev_pm_ops),
> +		.of_match_table	= dwc3_rockchip_of_match,
> +	},
> +};
> +
> +module_platform_driver(dwc3_rockchip_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("DesignWare DWC3 Rockchip Glue Driver");
> 
> -- 
> 2.53.0
> 

BR,
Thinh
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
