Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB778C678D6
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 19:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0NJW1/ODjVTgsdRyMCFwue2DBnL5rHjI7wse2YzNw0=; b=zuzpvhL+JaKPXW
	J0TckZSAhACPx+MDBOxwY1Xw3njlAaeaeefA0QmtcxIk8Wpnqqxe4nCSbGPkkb9/antcbeChvNrfj
	W1efw6zjqTA1w4Jnvp9RitTYwxHFuDx4VORFIHA+XP51yxgQc+Q6Tz7ERnLMm+UarqrBH/SoLZdaW
	gNlCvizox8LHsn6o6fWTw8BYZeeacc12mjQ8cuRfPptsuUvtAmFO9xQLa5XrmuJxRxIULASwarPjI
	02YLLnx01KwrTcz0b546EuaVyEfgnjfIP4I3l7I9bI0BFylHldnNdMbjp1Yz0LSB9qKV84kkWcWhL
	/K91qFsbFGKgY6barUag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEy0a-003gxs-D8; Mon, 09 Jan 2023 19:40:39 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEy0W-003gv2-NY; Mon, 09 Jan 2023 19:40:34 +0000
Received: from pps.filterd (m0098572.ppops.net [127.0.0.1])
	by mx0b-00230701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 309Iev5f015606;
	Mon, 9 Jan 2023 11:40:20 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfptdkimsnps;
 bh=cRUGYPghimN6iIUt1OcESGxg+zzYjb8HvGiv3jRtRJ4=;
 b=N9Wxnvq112zMPGJmwtr+0MTOyagh9er+UkvfNXtxW2kcY1hrwp5aWlaxuGHidpUZyatW
 IteoSPRC+Xl6jJlZWwydDplyb8V6AdkEJuYXeiFAj5qGZp+MO8YtuBuDVGmmWgLrJqTU
 +Go8Hx/jYn8XuTPPFZLV/sTIzzWli+7diZFH1g7UgB1OxA0caB1WNnqeiAWGVIOKNAl9
 4VEmx/bLTCYMgeun1VVZZfPCU5y6fGAPfzOpY+x1iEOVCYHfWX0CN4rPatGZV2NSJl3Y
 wNHdesKmqgfuYTTiYeulXwO8iNBx4JPfiEoHmyEk6EeZtp7Fcpr7XcfNUuodkG/oa13U 3g== 
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.73.133])
	by mx0b-00230701.pphosted.com (PPS) with ESMTPS id 3my88n9h60-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Jan 2023 11:40:20 -0800
Received: from mailhost.synopsys.com (us03-mailhost2.synopsys.com [10.4.17.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3755F4008A;
	Mon,  9 Jan 2023 19:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1673293219; bh=cRUGYPghimN6iIUt1OcESGxg+zzYjb8HvGiv3jRtRJ4=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=Di9JNJlPKFM0vPotflduaG+DjGs+g96epwOtS0TWvLADEZNMvKqql5rgo83C6zvJA
	 d5wMFh9amdrZfHoRmXvw1MQBHg46IoJH/W2rqCefkFzPW5H6faE5znotWLXYxA+ZST
	 1mYgioINt2zBV5qaV2aqxDk4yZZyrV85KqrrlUKysZA1DFYd2Ln4f56Uu68Atoqmu7
	 ivLyMcL75rZbsqrAR/E/H0ALWvq0wZ3Bo25Br180df6Dcg9IqVpXyCLau57InOYBO3
	 Dbgv2wr4D9mu0vDHfEsWayX/NHdXeyDxVztfAesq2YmyfOxN8nPcaiTWz0Q7JQS3xb
	 oxtD74d5eTpiw==
Received: from o365relay-in.synopsys.com (unknown [10.202.1.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (verified OK))
	by mailhost.synopsys.com (Postfix) with ESMTPS id B5AA6A0084;
	Mon,  9 Jan 2023 19:40:15 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 788EA40060;
	Mon,  9 Jan 2023 19:40:13 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=thinhn@synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.b="vTo4tqrq";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J3MirmfKn5pAwDI6m9a8xseLiH+g/sKXrgZaf0VkJI7KMKX4mnaM/pN4gUm89JJ9G8ZjKW2rfb3HlYJ8rTkmTlp+nyH7gug0GT2w9PUUGcazBblUPd15GCrbQ67gWojUalmR0iKDcWW4uotNad6RhKLp6eOpKUtY4suDCzn4NXdWb6JRHPQaTgJz/Syr2KJTNAQHDPSZgv06u7oOig13f7IubPabSpajXvQRTVdHXEelL/Ft4RXYVATHj6a8iw6/OO0mRhV+D2vDTH5hZgCcEA/YAzeafdXtWoqfDgs8KiK22KxHWkztp5VVyq95nofiPD/19bZg3CE8T3oVGNQlbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cRUGYPghimN6iIUt1OcESGxg+zzYjb8HvGiv3jRtRJ4=;
 b=c2/R6hn9ZwR/fyL57R+mOZFJQJAMrJUwX9Er1GtTMLfzEH82fxacGfBJeP8/ciQHUHG5Sq6zvuDEUqRWWXBcGZYndYnm6hwiw785AK6o8/HHc6POxfYfhS6vxppfqmPcgwzv4bO+2VwsVYG82QyFQJPJWRzxJsefH4p4G0UWrH66JL0o1Vw0u70w7+jwnWHG/4x2PGY3epzzczloUHGeegrE3XCbd/Tv1waxax27UTcCwCuaYeFwYiFtFqSoDe0ix2PNjvXXwtOqHP+40fkefT2PiLmFsqey81dprMJn3oPjbBCqtaEP7Dlw3DXZq1uwLGdmg7kYf0+Jm37MHQC54A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cRUGYPghimN6iIUt1OcESGxg+zzYjb8HvGiv3jRtRJ4=;
 b=vTo4tqrqaT9TzmzctkRygqx65d2vZ9OIc9xruTBx7/AAesKEiD6dUvoL83db2alc55eTWPMsmRv8IZQRi4bQ1dRVZap0BeANK8E/SMxM7+NaE7TW+ou5XlTDHybb1Aj147X6kCt++Si33IJq0UBDkYBdkUuP4xyjlMxv+kY2hf0=
Received: from BYAPR12MB4791.namprd12.prod.outlook.com (2603:10b6:a03:10a::12)
 by IA1PR12MB6186.namprd12.prod.outlook.com (2603:10b6:208:3e6::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Mon, 9 Jan
 2023 19:40:10 +0000
Received: from BYAPR12MB4791.namprd12.prod.outlook.com
 ([fe80::e395:902b:2e90:b7ee]) by BYAPR12MB4791.namprd12.prod.outlook.com
 ([fe80::e395:902b:2e90:b7ee%4]) with mapi id 15.20.5986.018; Mon, 9 Jan 2023
 19:40:10 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Rob Herring <robh@kernel.org>
CC: Felipe Balbi <balbi@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
        Johan Jonker <jbx6244@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains
 property
Thread-Topic: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains
 property
Thread-Index:  AQHZE93Ovub27gHGRUWi+BBXvB4w9652Yz6AgABs/oCABHtWgIAA4T8AgAEoRICACNjVAIAAiSoAgAAD/wCABmgOgIAJeXoA
Date: Mon, 9 Jan 2023 19:40:09 +0000
Message-ID: <20230109194004.yqaqslcwnqqywkr3@synopsys.com>
References: <20221219191038.1973807-1-robh@kernel.org>
 <87edsua5q4.fsf@balbi.sh>
 <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
 <878riy9ztm.fsf@balbi.sh> <20221223235712.h54lggnjjuu3weol@synopsys.com>
 <CAL_Jsq+gCi8g0jY2ic1tJebc_JijMU-GntWQg09q+X41O3=1RA@mail.gmail.com>
 <87o7rlffi7.fsf@balbi.sh>
 <CAL_Jsq+viP_aY3n378WC7WpxZFnsTc-vKjW9Ojvcy0Ef-z09Ng@mail.gmail.com>
 <87k028g6ol.fsf@balbi.sh>
 <CAL_JsqKjrXsz6hak2rG3GMKaOot4azDWpYCOsQmdVtmszN1WQw@mail.gmail.com>
In-Reply-To:  <CAL_JsqKjrXsz6hak2rG3GMKaOot4azDWpYCOsQmdVtmszN1WQw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR12MB4791:EE_|IA1PR12MB6186:EE_
x-ms-office365-filtering-correlation-id: 9808df78-e499-4941-3c44-08daf2795199
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  A0RnzbM/Gf+6vFbEKlcrczaAU/+sCRrIuyJqd7CvWRhsjcX3Fz07IqISkz5HdCXOi0fDP00TCoDRdIUlhhhEtYvdpaOULhgHpXyPAGQFk4G61n/X1p0oGnpqE4DUGmUhhUgqFjjTBk+rs61f85aQ/CbflTlaRJKUohifGF35+K/QzlxC2cVbspnCwTsYesD5pxWsQq0q6CGAe8NGIJxC7c0U9e3eROUYLAm41TDTXCaubheEDosKRT2gioSqMlRUJQ0eEkyt5WmN1pIJYURZp4RJs+wThRM2e1bAcPkA5zMSU8eR5NyKRaKxhHcVp4r7kPPTKp4nLojltaPJNu5wg2wvBqu+yF/IFu/ytiPU5PrUUToBQ2gvdoRsI3Er/Asw5g8EKiZA/lpsR+j3XUpSYDddHa63rXPo+oc+Nx7g9OWiai9kGlNUr78zVJtgSmtVZU9g3sqSReKNw3kmQjhzr7GWN0UriRkWFckzhh1YAEF6IF/qWPK4A2t9sSlwpm1uUf7Ts7Wvt2jElphxOl8fP8h8RIwNBU0WmBDpHWXImc+2VSZiUmY6j9zuP15gI6uPAXirko5RgUOYVK1cfDOm27JlTWRHz5IZtUAs/MDYjQLbqu79R1SNdQaDAgSAXVegLeHKz/WpcLlXMPDrPHEonME/segCr7dUca8t+3AnszY27TAoVI9jCtk/vOPvn9n1Fzkc8ZiBk8L48R6CNGat4A==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4791.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(136003)(346002)(396003)(376002)(39860400002)(451199015)(5660300002)(2906002)(7416002)(8676002)(66946007)(76116006)(86362001)(1076003)(66476007)(2616005)(36756003)(4326008)(6916009)(6486002)(54906003)(38100700002)(64756008)(316002)(66446008)(66556008)(8936002)(41300700001)(38070700005)(53546011)(26005)(71200400001)(6512007)(122000001)(6506007)(186003)(83380400001)(478600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?K0tJZ0FqV2k1VEdhbStkNmRtb00rRGRGaFNGWGt1czVxMC82YlZiUFNVbEtE?=
 =?utf-8?B?dk5IeGNSZGF3S0RQdXVsTDVvSSt3eUpSdjNQSGRIM25Pa0Y5dXF0V1hkWjly?=
 =?utf-8?B?MnR2S25LUm1TMXkydUU3MXVNZ2JoaVVLUE1JcXpKU2lkRlZ3d2pnMXRXK1Nk?=
 =?utf-8?B?RVBYREJDVGY2eVV6WU1scExSSDNJWVh5UXIwd0d3NitSQnlkcXl3QS9RbjZ2?=
 =?utf-8?B?VjhCNFo5cDBnbFZWL3VOQTNVeFd4RHJRUGRuUDExeGtYWjVEbUJKRmpBb0h2?=
 =?utf-8?B?YVZBQ2s1dTlrUlJYUDFEenBESnpMZUZYWUNRencxcC9Cbi9WRCtQNWMyQWdn?=
 =?utf-8?B?TlQ5emw4Ym14cWhPZkxnL1o4dEw2alFHVEtqVXBHZFczMi9OUTBGaHVHczJt?=
 =?utf-8?B?Tld6WEowM1YwRTBKUWptRXpvNm1pd29UZTUxT2pBcGRUVnBvL092TCtuS2VX?=
 =?utf-8?B?TG51NDVWYlk2K1I1RjZyaXdiVnhVZTZ5cGVpRzRYTDB6bjZlNGk4eG9aZjBk?=
 =?utf-8?B?cDg0dldaSEJLZlZZNERDVUVWTWpXUVdWOWJ1V1pVWkhQSVQ5TDdDYWJnSytx?=
 =?utf-8?B?cE9HZzNENFJ5RTRwRHZoSVdOejdjaFRCdmU3dHJQanVnT2dqZUQyNXM4WFNl?=
 =?utf-8?B?d3hDT3hucjJpbjlZMHFsTE9zL2oyT0lkeXlFd3RwNCtGSE45QjRQaEtkS29S?=
 =?utf-8?B?a2VOS2J2bmIvUGErK0pxRm5QT3BYOSs1Y0p4VjlJcHFOY3dhSHJRUGtwbkdk?=
 =?utf-8?B?MGVwV1N2UmNjNGVaVnpZV3Bpc2FkK3hxejd6NWtWZS9uSUIrRkZLTmpiMHlP?=
 =?utf-8?B?T3MySmZTS1k0anY2aEpVMUFwem44Q3E0eWlvd0FCZDVTV2dCOHhDenNHQlZy?=
 =?utf-8?B?aFVjdXJGYTBMMnNpakNrN0dka1VZT1BhY0FTQU1jMmxFWVo3a2NWS2lWK3BN?=
 =?utf-8?B?RExQT2ZrejhYb0JlbThKVGM3OHc4akRsdGg5aE1nSDdpY3lhWE8wSFpxUnNn?=
 =?utf-8?B?TG5GbXoyMnJXcUVOMHFsRTl1bW1BUEY0bVlySktIMVB1dnNicGRLMVJFSEZv?=
 =?utf-8?B?bHBFMU9GNEJmVVNYVklPQmZFNXh2TFhUTGk5bjB4b0lEWGhaRHZrUVI2WUp0?=
 =?utf-8?B?NDh0SGgveCtrZE1Kdk8xMU8waDJzQXhpdTJ3UU53MVdkU0tqRk1wdTBnQXJB?=
 =?utf-8?B?MXd6akJ1SHZTaEE1WlJCYStiQXlMclhucmdPWTl6NGV2SzRSaHdFRU9XUnRT?=
 =?utf-8?B?RU44Y01mMmFjNHIrUStSbnJxTTJXZ3haK3JsU21qN0EwYXJoWU5hbkxoK2tz?=
 =?utf-8?B?bDZIUmYxNDJaVFFrQTVTbmVzYklPT3JHMW15WjdrZ2FUSHZFYVFFUmtYOFNI?=
 =?utf-8?B?NXNpVzdwc2laamFoY3N4VXBOOWtHb25Wc3VHdUk0NUNmMDVWTVQ2aW0vaCtB?=
 =?utf-8?B?UEIxclpwdDFRZU0xRkQwZDBjVXdEMXlKQlEwdEI0ejFDdlNoSHJUVG1LZ292?=
 =?utf-8?B?RG03YmI3bkVHcU0xZTJPYUw5U0t2UWVTaWtXVmtHeVZyazI1STZIV200WEZC?=
 =?utf-8?B?OHNiaUZHVkVaMk40K1JYN09NM0laRVdWY2NhMTBNWlZJaXM5M3BibjR3NHZH?=
 =?utf-8?B?V1FhRlpYTzdFODI1dUJuWnB4VlNhWVQxVFRBL3UzMlJEb2hhRURlNHFVZXdR?=
 =?utf-8?B?eDZHS0tEUHgvcER1Z0M3eEpoT0xiaEllQWVLTnpRcks5UTBHeWVGd3J0WVpW?=
 =?utf-8?B?TFNDWkgvTWxVRGhROWJEWE5JWHI4Vno5ZGFZK0VzZUJhWmMwQmpmRjNMQTR3?=
 =?utf-8?B?Y0x4T3JVMk1sRVdQZWNCbHZ3OTdnWnljS3Ficnl1NDRRMGpjdGJ1RGErelor?=
 =?utf-8?B?dWUrQmZRK3pXNG55S0FXQ1pCaFRoMzc1a0VYNzlMUmQvWTFtVVZoMUhucGRT?=
 =?utf-8?B?WGxZR3NLbG0yeWZSVk5QbnN1OXBIZ2s2VTc0eUdycjlycUhSZ3JsVkRqU1A2?=
 =?utf-8?B?ZnRCTGJNWklzK01ES05Pd3ZSZWJ5bEdIaU9DbkxKNlptekxPZUVqV1JHcjR2?=
 =?utf-8?B?MUdWczJqelFxQ0JibW9hcjUwWDU0S2tseUxmWndRWjc4U3QzMEcySDNwYnN5?=
 =?utf-8?B?RTQ2UDA4NG5qUDJjQVBVNWRBQXo5YmlRVXBpYllzSnR0WkQ1VTVlVXVGMUI4?=
 =?utf-8?B?OUE9PQ==?=
Content-ID: <BEA30A0F8E87EA4DBA8E7A058C57BB9A@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 	=?utf-8?B?eWI1RHhjRGdUMGRPamhFS0gzRVVzM2dQQnZXV3FuOTdnR3B6STB0U0h4U1hl?=
 =?utf-8?B?VlpKNENqUzdOMUtUdGYvR0tWeGdJTWV1YUtOTGsrT1ZNR1RZTDIxZFZxWCti?=
 =?utf-8?B?QXp2ZnArMCtwQldMcmhHS2JEemZ4UXVPWnQzTWxvRzlnTU11SzBWT0pET3g3?=
 =?utf-8?B?WE1KV3RLL3lob1BUYWhCb2hwalVhbWZ0T2c0ZlBHMXhLcU5INlVoK1ZTNm16?=
 =?utf-8?B?VDhIV3ZTUm9DWHE4REh0S3ZUWndPWVY2WWpzcVN0MXBGOUU4YkZMSklCVmJi?=
 =?utf-8?B?blh6RVcvR25jNVpyazNlQkY5S00vdS9LaExIYm9xZmducFdkMmZJWjYxUU1L?=
 =?utf-8?B?VmJ1cXZxN09TQlVJblJ0cEVJWTB5d2NJMmQ1TWgvRmNncE5JMjVWVWxmSUpQ?=
 =?utf-8?B?aXJCelZjN0daczdQUW81bnBzSXlpSlQzaExTWlRVZFR2N2xYVWJyT1B4RlBI?=
 =?utf-8?B?enJvUDhzRFRtUUYxNGxkZmJNbG1GaTJpaG5RNk5UYlB3dWVGQWJkdGRRb3Zz?=
 =?utf-8?B?VmJQeEUrYllPZUxiU3IrUVA3YmRJWkpmYXptdGlDYk5Ud3dMUHBrd3p1a1Y3?=
 =?utf-8?B?TXYyYmIxMVA1Z3dsbTkxTmtEM1NXbHBMVGNnV3VOSnplMWpwVXoxcHVRTUph?=
 =?utf-8?B?eWo0WS82eEhsR2twVUJFZ256eFNyYzhLZmd4c3NZR0V0d3hENVJRYWQ3TzF1?=
 =?utf-8?B?djBVcFZJZEVGeWIwMkk4L1JKQ2c2T3FSa3dTRlFKK2hZb253UDMwdGdBRSt2?=
 =?utf-8?B?amY3OVdTd0lTcC9VSC9JeldxMzc0anhhUjcvSlRLWVlBQmRtdVkzSlEzdkgx?=
 =?utf-8?B?bS8wTU4rRzUvS2c1aDBtMXJpSk5HZ2lEMk1JNjkyRi90elhVeXpoald0RW1Y?=
 =?utf-8?B?S1I5M1RVbW0zSUtXMXlzRkdMeWZaOTVoWUVZTTFsRFM1Y1NTRTBxWGtiVDkr?=
 =?utf-8?B?aVdaL1FnSW8yV2tZNFBNOW9iTUVLSGRmbUcwcHRkdnR5QlZXM051dzhrcW1J?=
 =?utf-8?B?YXl6MmJUdkRzVUMzWDAxNWFnL0g4dDNOZW81SlcvNTdEMmdFc1JvN1JDTnd6?=
 =?utf-8?B?VnA3SzNkNnBpZldVZE1uQWs2bVVqU2pKNVMvcjZadms5S21ZWmxDc2pScGNF?=
 =?utf-8?B?R1NISVllSklYTkNNRktBZm5rNmp1STJTckhzN2pCeFErRWttaFVWaFBFSlVM?=
 =?utf-8?B?YmhhSnE1UnB1ckl0dHVvTVBOTnc2M0gvRlhrRUUySEF2enVqd1I4Ui8xTFRz?=
 =?utf-8?B?a2JJSG5CWVc1d1U2MnRmTnVBbGxCRkdFVDVydFVZcmxQWkxkQ0NtbTY3TmNs?=
 =?utf-8?B?Q0tiTTF2Z0RQMHA0Y24rUFZ2VTVidjNWSXA4ZUZjKzNyRFJldWpHNGM0RS9a?=
 =?utf-8?B?U0h5ZFAvZm1uVlBzamVna1ZMcDBtZlVJRzFRbUxzV3ZzQ01Xa3MxQTRvMm45?=
 =?utf-8?B?L1ErU0dLNnRYcnNIT0pwL2R3MVNYLzc2YmpuWUh0V1Bzdk1oTHFqRzZSWjlk?=
 =?utf-8?B?SWxQSWtJeFR6UzJvYXU3ODRzRXM1dzI2K0xsS2hsRm9zd1VPNFBmQXJxRDFO?=
 =?utf-8?Q?D+WPpznEP2sxVg4pJCJTGN6NeEcKAho87hYh2D92/6t1Jk?=
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4791.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9808df78-e499-4941-3c44-08daf2795199
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2023 19:40:09.9839
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yIJ+h9wENM6OHhLSZJ92BMiHbnUIlLzUHF8kn493g7WttsL0igzLYRps65agiZLf03Unmw3dgsfdBopwCgA0zQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6186
X-Proofpoint-ORIG-GUID: 07cZMhiD90sBltf_2idU9jm3MM1uw_6d
X-Proofpoint-GUID: 07cZMhiD90sBltf_2idU9jm3MM1uw_6d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-09_13,2023-01-09_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam policy=outbound_active_cloned score=0
 impostorscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 adultscore=0
 malwarescore=0 spamscore=0 clxscore=1015 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2301090138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_114033_183282_196E43E1 
X-CRM114-Status: GOOD (  20.22  )
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

On Tue, Jan 03, 2023, Rob Herring wrote:
> On Fri, Dec 30, 2022 at 11:09 AM Felipe Balbi <balbi@kernel.org> wrote:
> >
> >
> > Hi,
> >
> > Rob Herring <robh@kernel.org> writes:
> > >> >> > >> >  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
> > >> >> > >> >  1 file changed, 3 insertions(+)
> > >> >> > >> >
> > >> >> > >> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > >> >> > >> > index 6d78048c4613..bcefd1c2410a 100644
> > >> >> > >> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > >> >> > >> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > >> >> > >> > @@ -91,6 +91,9 @@ properties:
> > >> >> > >> >          - usb2-phy
> > >> >> > >> >          - usb3-phy
> > >> >> > >> >
> > >> >> > >> > +  power-domains:
> > >> >> > >> > +    maxItems: 1
> > >> >> > >>
> > >> >> > >> AFAICT this can be incorrect. Also, you could have Cc the dwc3
> > >> >> > >> maintainer to get comments.
> > >> >>
> > >> >> Felipe is correct. We have 2 power-domains: Core domain and PMU.
> > >> >
> > >> > Power management unit? Performance management unit?
> > >> >
> > >> > That doesn't change that the rk3399 is 1 and we're stuck with it. So I
> > >> > can say 1 or 2 domains, or we add the 2nd domain when someone needs
> > >> > it.
> > >>
> > >> Isn't the snps,dwc3.yaml document supposed to document dwc3's view of
> > >> the world? In that case, dwc3 expects 2 power domains. It just so
> > >> happens that in rk3399 they are fed from the same power supply, but
> > >> dwc3' still thinks there are two of them. No?
> > >
> > > Yes. That is how bindings *should* be. However, RK3399 defined one PD
> > > long ago and it's an ABI. So we are stuck with it. Everyone else put
> >
> > Are you confusing things, perhaps? DWC3, the block Synopsys licenses,
> > has, as Thinh confirmed, 2 internal power domains. How OEMs (TI, Intel,
> > Rockchip, Allwinner, etc) decide to integrate the IP into their systems
> > is something different. That is part of the (so-called)
> > wrapper. Different integrators will wrap Synopsys IP however they see
> > fit, as long as they can provide a suitable translation layer between
> > Synopsys own view of the world (its own interconnect implementation, of
> > which there are 3 to choose from, IIRC) and the rest of the SoC.
> >
> > Perhaps what RK3399 did was provide a single power domain at the wrapper
> > level that feeds both of DWC3's own power domains, but DWC3 itself still

Just for some additional context/use case, the power to the PMU (power
management unit) must always be on. If the device supports hibernation,
in hibernation, the power supply to the core can be turned off.

> > has 2 power domains, that's not something rockchip can change without
> > risking the loss of support from Synopsys, as it would not be Synopsys
> > IP anymore.
> 
> Again, none of this matters. I'm documenting what is already in use
> and an ABI, not what is correct. The time for correctness was when
> this binding was added.

That's unfortunate. That makes this very difficult to maintain if we
can't rectify a mistake.

> 
> To move forward, how about something like this:
> 
> power-domains:
>   description: Really there are 2 PDs, but some implementations
> defined a single PD.
>   minItems: 1
>   items:
>     - description: core
>     - description: PMU
> 
> We unfortunately can't constrain this to Rockchip in the schema
> because that specific information is in the parent node.
> 
> (kind of crappy descriptions too, but that's the amount of information I have.)

Can we omit mentioning min or maxItems? While it may not be desired,
it's not a hard requirement right? This can help avoid some confusion
with devicetree documentation and dwc3 databook.

Thanks,
Thinh

> 
> > > power-domains in the parent because obviously the DWC3 has 0
> > > power-domains.
> >
> > How did you come to this conclusion?
> 
> By testing the schema against the in tree .dts files. To date, no one
> other than Rockchip has power-domains in the DWC3 node.
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
