Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90923C54EBD
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 21:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xocoEqy7i//ikFUXRoO3vuKB3kFiIjBqSQidCRsY94=; b=hKWYPE2A6Iyy0/
	mFaahd/XIcXwwyZolMhv1IdtrxTl60PUUBkkr1HTbMni1fxzmwBCOpgYsuZArsvYLYA0XzKy7ZyJc
	aAM9cBUSEdvb0ZhVa4Wb4TztM5XQJ2CUyH2BSzG1muA3F4SE6pIfm/wQhKNreDt+om7F21I9z3G3i
	SCKTy47MC71oj7n5m2TJSn0c2bKiBzSHvhm0Io9RLZPRvyJLHfq1zAKGpdX/JtdyHw5mnb2dQCDLO
	eWQ3jDiEWn6JE1TI5twOgcfMDgV/h4xc9vGCir8VgRDj2zMRQ1YO7zdb6WAkDvSH3UgM1yGlmd79W
	yzCpGHyG74TWSXIofIrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pF036-004LuI-0j; Mon, 09 Jan 2023 21:51:20 +0000
Received: from mx0a-00230701.pphosted.com ([148.163.156.19])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEzpY-004GlY-NI; Mon, 09 Jan 2023 21:37:25 +0000
Received: from pps.filterd (m0297266.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 309L1lu6001627;
	Mon, 9 Jan 2023 13:37:12 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfptdkimsnps;
 bh=kcgafkdaL3vsQaYY9tYfwb5PIZOuTbtfND9A6zZffHY=;
 b=YDLt2OFKU9v/n3JcUasVxQb7JyDXAYb1R6ZYPjR8UhojPXtaNJ/nKKtV20L+pEWgKMQ1
 V57TbGXeNrskQRUML6eIdvOicqmDyhLCSV3jkYmNXtRj31f4l9TlbrKtOu7DvNwSTi5E
 4ziSQAG6T1EHKd/pWFOGgiONkdJ18UqeQmadC8XfGos+i/pyXBPCnXvnMTuagdDKNoO5
 b/ypY7Aa8GlMMOjfQN7FpWN6qvJE2M/3vVq9+h7JO9MLZZuCMxaU2sQWoFMoba8uCW8G
 wg5RMNPx4V1Z6VfMQrUe4WhJGs5QdsGIUAdxF7ssXEixwbAedBMjaeTzBCGpn3TlCyN9 BQ== 
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 3my8vadxy0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Jan 2023 13:37:11 -0800
Received: from mailhost.synopsys.com (badc-mailhost4.synopsys.com [10.192.0.82])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7107AC00F3;
	Mon,  9 Jan 2023 21:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1673300231; bh=kcgafkdaL3vsQaYY9tYfwb5PIZOuTbtfND9A6zZffHY=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=J/gOSO082onC3qnz/1QW+U37XHKnfPnjQA7ShUAHXIngb7/oDrAZRO7N3XXG9fSQC
	 6GPTO0rbhiJwGUgzwZkuEPCjrsV7/OVhttsk2/ivSrwLukIAAsGPC2tWF9shbavh71
	 49HvGS2O+DwrYEC8d+6iSlKNUiyLis2gvA5BeWKLq39KIyei6GglEEOOLcef1fOAHx
	 axhSc68jVHxh6Dw5PQ9asOORE+dj09HNefhbgu0zwdpYpcyIPkuN/v1pe9qgAzWmql
	 7buMCIP7RosQ40rMxJBJ3Qk5FfpDeoYwbe/HdOH34jsK55Rylkm4QPB2SGi9pcvDrs
	 nIJjNjABdt91A==
Received: from o365relay-in.synopsys.com (us03-o365relay5.synopsys.com [10.4.161.141])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (verified OK))
	by mailhost.synopsys.com (Postfix) with ESMTPS id C0849A0060;
	Mon,  9 Jan 2023 21:37:07 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04lp2044.outbound.protection.outlook.com [104.47.73.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 9CB0E80169;
	Mon,  9 Jan 2023 21:37:05 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=thinhn@synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.b="Zznn35vr";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aM8p9C9OaprerO1Mguhy+4CrEa8RbIMoFKTzalLde3+0L8Hf8pMsvEaJbwniXdSpDrK4xQ5i/VW26i1RlQ/5GBM71wsMtFyvhuCWPPO7SJunaAJjjgVUqmBp8ERee5F2WONRTCJZlIBJAJTp8X5fWihiBEgLxqXhfzzfTHm2bfpQuVt/10r0NL73eGddlC08FFqR5Xtz9aKkoG6HOO4jQSfrXW8K7cC6RpmJ1GtJwBL4F0PVJPPzOpX4P3ShVjeW+6W7gfzSwvaZkuuxG+/zCkfjQJaF2YgstNXjtWTIgrj2LFA12zr6UtI7oEO8oXrmKN4TFd2wLcTEc5kErc4OOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kcgafkdaL3vsQaYY9tYfwb5PIZOuTbtfND9A6zZffHY=;
 b=DaOIxgbtA9SnqNT2g9ZgnWC+zk7KpQowQbEVpcrb7/Tiuckq7kJU71xHG1UhgZ7HmGTMypz276FkB8ELb9HCzIsRLQAoQOjw+GhJpK3GYKT88UqnZOLTDPe8JaIxMWXH3caDl1+uomWYFrUSwdoG4VIJaczp/r+dEOg0iTD6sdw3J0Z4dQrAPqKj5WrEy/ef0lf6qU6foYUhgQpKl9JAaU8S8USyjjoQg0ultsYKlWl5Br3pWAzcAl3Zmtx600JnZCWPqSxtjIZyjyrrPSyn1GMrNbhTU4rtK3BRhNQyxIDlv987EsXQpvHO33AhfVwaQt4zLy+907F+dMmdyZy53A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kcgafkdaL3vsQaYY9tYfwb5PIZOuTbtfND9A6zZffHY=;
 b=Zznn35vrPxevPOJzuqjzIjGk2Qv++9O1zZK//8N1K2DIkZwYh1BqS+ZAYbnM27C054zTWtls3Hivp0B2sNZu4BdHOkwPD6tkzjo0nEOziL3DfzgP0WsUmkh+2l+8/Q8IxXqW49XHoFH0AWGBcBoXAvYj7DChaG1A31qRNlFsiEo=
Received: from BYAPR12MB4791.namprd12.prod.outlook.com (2603:10b6:a03:10a::12)
 by DM6PR12MB4370.namprd12.prod.outlook.com (2603:10b6:5:2aa::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Mon, 9 Jan
 2023 21:37:02 +0000
Received: from BYAPR12MB4791.namprd12.prod.outlook.com
 ([fe80::e395:902b:2e90:b7ee]) by BYAPR12MB4791.namprd12.prod.outlook.com
 ([fe80::e395:902b:2e90:b7ee%4]) with mapi id 15.20.5986.018; Mon, 9 Jan 2023
 21:37:02 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Rob Herring <robh@kernel.org>
CC: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Felipe Balbi <balbi@kernel.org>,
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
Thread-Index:  AQHZE93Ovub27gHGRUWi+BBXvB4w9652Yz6AgABs/oCABHtWgIAA4T8AgAEoRICACNjVAIAAiSoAgAAD/wCABmgOgIAJeXoAgAARkoCAAA8RgA==
Date: Mon, 9 Jan 2023 21:37:02 +0000
Message-ID: <20230109213653.ubft6jfc472ey5cf@synopsys.com>
References:  <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
 <878riy9ztm.fsf@balbi.sh> <20221223235712.h54lggnjjuu3weol@synopsys.com>
 <CAL_Jsq+gCi8g0jY2ic1tJebc_JijMU-GntWQg09q+X41O3=1RA@mail.gmail.com>
 <87o7rlffi7.fsf@balbi.sh>
 <CAL_Jsq+viP_aY3n378WC7WpxZFnsTc-vKjW9Ojvcy0Ef-z09Ng@mail.gmail.com>
 <87k028g6ol.fsf@balbi.sh>
 <CAL_JsqKjrXsz6hak2rG3GMKaOot4azDWpYCOsQmdVtmszN1WQw@mail.gmail.com>
 <20230109194004.yqaqslcwnqqywkr3@synopsys.com>
 <CAL_JsqLE+v7LkDk_TG_=aT3mUeGb8eVnJmeKLz5w1XmfVPkHeQ@mail.gmail.com>
In-Reply-To:  <CAL_JsqLE+v7LkDk_TG_=aT3mUeGb8eVnJmeKLz5w1XmfVPkHeQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR12MB4791:EE_|DM6PR12MB4370:EE_
x-ms-office365-filtering-correlation-id: afef2cbf-ef86-443b-1380-08daf289a559
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  6zB3ZVTqc0zJ9YtuftNFdUKCCurts3eMsRqyQfPuAtBZjUschsAPEtu/QmhtxaSy74UXkIi0fTziEjC9oV+NSnrM+3cjvaKTTP+J0/je2ZkyzZifG9DKi30KbSd5h7sGg/vbqhGn5NA58EgdM3hUBGRH46PI1HDcuwmhx1lfFMUAVPUyywVEbRnyQMfesnOOt5U5D39efM7/t2C5JxglYGfrerOqPgrH2JO/JoFgssyUwIAPhsPpuayBQTshzmBCaHyczGQAuYcL06bo6t9jrkHj33YdboEgI0j3DBQ1MHLafLeXEQw9UBsca/0D9CK8RL4MvqaZn64GUHquO4+nRPwQ8/BIiRCyVprkc8m+aFxr6rspLuV8wfhmFA6A0/mYCr4k2HrCX5Wkocm2YDlKgecCvl+dTIAijIUNIb/ljeNACBezAOkm0tAQTxSMD6NOAHTiyyfkTr6KV1ihl7U3jDc/Bjyc2dmVo46tkaXE9rPvfDkl7si0lACSthR45ZfnI1EN4YYYHuGS2Kstq6Tg/+siAOdtHN2qwvJnY1eRTD5rhR/uOyiQIeerhL2tMe+qVAj1DKaOeX/L09tee6z1eUpab1gyJq8DKhleb3yugSbU+DbY3uT97LhXm/sbFWb5Z5iLZWMnuaFKQsHDfBDurat8b6E3q44NkNoO9qWU490jcDoERydyq8fW/5uxeDTVoJWmH6fzwEvIQ7f/PNfa1w==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4791.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(366004)(136003)(376002)(39860400002)(396003)(451199015)(36756003)(38070700005)(86362001)(316002)(54906003)(478600001)(6486002)(186003)(71200400001)(2906002)(7416002)(5660300002)(66446008)(64756008)(76116006)(4326008)(6916009)(66556008)(8936002)(66946007)(8676002)(41300700001)(66476007)(38100700002)(122000001)(6512007)(6506007)(26005)(2616005)(83380400001)(1076003)(53546011)(66899015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?TzhKUFg4T1FRTWFMN3ZRbVNYemVFa3dLc3FXVkdZcnFDQUFPMXRpOUlETDhG?=
 =?utf-8?B?aXdoaEhIWEtIdGJMaFNyaktGV2hjc1hubGE1R3U2dWx2NFNoMWtKR3ZqSk9T?=
 =?utf-8?B?aXVHMkljamVQUGJVd1RQQ2pHRFlTbFpHRk1oOTM3UUxxT2wzQ0F0VFNSTnZh?=
 =?utf-8?B?U2VWWTZrUWZlV1VEMmVnSEVCMVV0aDNFOWUva2xHL3JqQU43QklTWGhFY21Z?=
 =?utf-8?B?UEdVUlpLWHJSRE43d1V4NXRpZUJwS01EM251U1hhTVhrcU9GR1ZKSDE1Qkx0?=
 =?utf-8?B?c0lYdE9ZRUxuaU45SHd4Y2ZKb1JpM1R6WmNqTTNSTDdXM2tVUGFHeXdMMnlF?=
 =?utf-8?B?NVBwUGZKemx0d3o2NHNwM2JKZWdLb1ZsU09adGp1aFVwOUdWd2ZSbHE2bHor?=
 =?utf-8?B?SHpMRmVhZUZvZWYyaXQ1ckdVRDlydnhMZkp0Zit2enhNa09QcTh3QVFOKy9R?=
 =?utf-8?B?dHQyaGVkRWdhcmFuREJhaUJPL2xtY2gzNUF4cWt3elpHZGkrdmh4L3ZoTllr?=
 =?utf-8?B?TEFFNG05cXlMSTZpcUNsakVPa09HZjRGU2FOelBUSUZWTmZURVNnamNvWk5s?=
 =?utf-8?B?RmF3WmNPRHpwYVY4c3k2UFZzY09pRW1wTG1QelA1QS9uZjZlcGVpemtCYnE1?=
 =?utf-8?B?ZWlJREl3Z0VGUzZOcFR0NEVWZnNqSDhwdXM0WUJGM1MrUjVmeU9qQTVOYlFr?=
 =?utf-8?B?cE1WNFdNZjQ1emJqMTIvTThkemVhZnQwWm9HZGVnL09icXZDVmFLOXNrZ0R0?=
 =?utf-8?B?MUJBekdvcFVLNVcxRktwU0lHaE1wR3BmQkpiMkpuVVhiVzRHNzJSZ2o3V0E0?=
 =?utf-8?B?TWY2T1I1SlY0N1dLVHc3bTVPd2pDK0J6NDlGaERVZXhpV0lmaWE2UDdOcy8v?=
 =?utf-8?B?ZVlmRTZQK3dDbGdGSUlFUTNNRmwrYlNPdWN2NnRsSE9CUzAydHBtNFJPMnk0?=
 =?utf-8?B?ZHg1ZVJ4UTNCTDZwczNvbXp1VXllRjRIR2dSM0p6QlpMVW9JMFBpK1lZQXRv?=
 =?utf-8?B?OGtSbGh6THBiR25VL2ZGQ1prUmV5TFhUaWFqcFp4SnN0MFNoV1ZNaGozb09l?=
 =?utf-8?B?TlJQQUJYNVQyb3ZWOTRXR0l0aktqL3FyTlhCdzR6c1JuUFVITXBmNHdMak0z?=
 =?utf-8?B?andGUlNLNVhYQWlLTVc2NDIzOHVNNXFLRHB3Y0hyYlZGcUwrWHcxK2Z0eUQ2?=
 =?utf-8?B?RXlxVllvdWs4dGlyeFNPV3dVcUtVc1habFVmMDNMRlpPS3Y2VHU3WFNycWRJ?=
 =?utf-8?B?RysxMU1HTC9La3ErL05RbHo1NENOclV3Z2ZoTjVpSkwxUXpIOGRDclhoYmtx?=
 =?utf-8?B?SktYUTdzRWtURHB0VUJraThsa0Fwazdpc3NxYldTNzdITWs2RDBORldoVWZ6?=
 =?utf-8?B?ZXkrTi9nL2p2NEp6MzFocVlsbGRrK3RhTWVQekdvYVVncDNxOFU2Rm8yQ0sw?=
 =?utf-8?B?cUR0OXRTUmRvazIyNWFlTnpzZHZNaVBmYlBNcTkvMXRUaHFBQ3dpTHJReUlO?=
 =?utf-8?B?MHVvc2Z1dEVlUXlTR2EwU0JJdUNCWGNZRkZLZ1M3M3d1RGRRRk1XUDhScVpk?=
 =?utf-8?B?NWs4RnhoQ05KQ2tiamNQQUd2dU8wNStIcWZ5bkNIVDFjZUpvbU1tM2dXRGRQ?=
 =?utf-8?B?dUhieVNJbEZLY2V3UDJoUFVlK05nNkFsTEx1dURVSkhnd0RCbHlVWWJhOHhs?=
 =?utf-8?B?dncxemg1aW00WW4rR2puY2J6a0ptZDJuR0tYdk9CQ3FMU3lGSEExaDh4MG8y?=
 =?utf-8?B?QjE0UHF5QlRHT2ZqUm9EcmFzWGoyV3hsejFTQitBbmVERnVMTzh2aWt4TzRI?=
 =?utf-8?B?ckhUS2xvNFRld1FpYmZTK0xsTkVjazVwMEhEbUlUNlhBSTRDOHp2SldWV3hp?=
 =?utf-8?B?cU9xbWhnU1MxM0MyMW1DTlNMY2RkbTJsdXhwUjliVUhzZGpNU1MyR1JjM0ZE?=
 =?utf-8?B?S1hDd2RuemZ2UERUYlI5Z0IvY3doR2RKcnBlT2R2aFVBaXozSWR5OFVOVUlE?=
 =?utf-8?B?NDR0YXVkT3I4WEorK2dGaENSak0vcDQyMEgyOURYL1dySjFRN29keVJJR0lT?=
 =?utf-8?B?TGs0RUQyOW01RlA1SWNhelJUSmlVRUxVaStzYzAxRVZqbTV3YW9JWkJDQU95?=
 =?utf-8?B?cU81WHoxL0VEL0liZDZHVDZnY2pGSEpucHJOckhxSUVUZGlDQXZWZ0U0bERy?=
 =?utf-8?B?S3c9PQ==?=
Content-ID: <930D7B039A347D4382F8A72ED1F60D18@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 	=?utf-8?B?d0N3emNWTDduMVpkRU1Tdm4rcmIvdVo0U0R0ZDJmRi83ME9EWTRzQkgwaU5v?=
 =?utf-8?B?azBaWFl0WklvTHA1NTFXR2dnVFd3bTFjNzZ5bEpnS1llVnNWbHQ4aW90OUVK?=
 =?utf-8?B?cTZjNW5ITkFXWkhJTEZlTnlvb041UHNsNTJxVWdBRE9sYUFEUDhLSXUzZ1ZJ?=
 =?utf-8?B?WWswMXM1dGhEamwrWm5SMVpsZWhNVjkwWFE4ZC9uK21QK2lUUkRZVk11SEsz?=
 =?utf-8?B?NG5sS2dqNlplSS83VHF5TEx2WUNGeTdmdFJKREJQSWJSWFVCVmpETlBMei9G?=
 =?utf-8?B?cHVablg2amMvNExQdlY2c2pyVzFYNjhUOSsxRllteWZiSTNEWC9hSHBJaW9T?=
 =?utf-8?B?OUJiL0NibCsxOXJTRXdJb21YSWVLeHluN1NSMUFNd0Uraml3ZG5wejBaamVx?=
 =?utf-8?B?ZDhMK3RvWGpCcVZWMXJzMjI5enk2N0Z5aUo4TzRVWGFpa0w4cnFBQ2R5NllX?=
 =?utf-8?B?LzRsdi9NeEY1cG9XTzNmVkxRZHNSZEEvK0p2K01OU3ZrWlZpNkJSYkxIYkFi?=
 =?utf-8?B?ZlhvL1VFNi9kcVJhazNMUE81MzdUbEpSckdQYlhyR05lczl0RzJ6Y0s3Si9B?=
 =?utf-8?B?aFJrTVI4eFBCK3ZPN2lvL3hEQ3I0OGl6L1Y3dXh0RlNQdG1RVWhRaE4vbnhw?=
 =?utf-8?B?MTBUQk1vRmloa0s5VVh2V1c2WFVMNGxJVGg1ZTJwOUlIeGdrUEZEVHJYaFVz?=
 =?utf-8?B?RTZrdklxeW9QU1A2dlgrUkZrZVJVc1VDY3E2aGc4ekcyaHVBUUxXVlpDc0Vj?=
 =?utf-8?B?K2JtNzI1Q2FrazBTcURLLzgrODlNN2VocjI3QmZlOUZiZXlnemFPOGMzWVJN?=
 =?utf-8?B?L2VnbEhDcjVCM2s4K0tBa3VDeDVLQkgwTTJUTEp5YXdkTm0vT3dtSEU5dlNV?=
 =?utf-8?B?UDQvNDFxODFHSVhhOFg2ZmxOTVBiS0JIcTkxSjdTUmZIa0xkWlhOWkxZM1ox?=
 =?utf-8?B?M2FRdVNuMHlYa1NmblZrdXZxUzJGTVFCbU5iMXRoTXNMK3ZOM1V3aFJNS29w?=
 =?utf-8?B?Mzl2dHVrY2hIYWd3SkNpcWY4WGZFRUtYUXZ5ZTVUVjQ3eXQ5WnJRNWgvNElP?=
 =?utf-8?B?Z0R2ZlZTTUF3S2d1cDgxbUpLdVc0dGJYR3QzSWk0dHZ0ZHpSZThCZVlhTGFV?=
 =?utf-8?B?cDlteXVJT0ozVWZLN2RoaUhsTkxXV1Jab0pMZ0hlOGgzTEcvbnBpcE5PbkdN?=
 =?utf-8?B?WVYvVjdGZ0lQakVFekdqdEl2Lzk0OWdXMmhoa2FsVkY3MHVxQ3pCaVhwV0lX?=
 =?utf-8?B?b2pzcTgwY001Q1BPcVlQN1NLNTZ4OU5MUnJvam5SRGhFWG8xeHZoQzNXRFVq?=
 =?utf-8?B?V2l3cVZOVWcxRFFaalBvNmtXbmRwZDdJcE5kZmFOTXQ5S3JFSVlSZDlMM3NS?=
 =?utf-8?B?WW5iNDI2dVFJUGc9PQ==?=
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4791.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afef2cbf-ef86-443b-1380-08daf289a559
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2023 21:37:02.4553
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w4Rn7oHb6QCnB4oUbuK+fC5nt636KUmQ/ULL3NAbU7+Iq5xMjtCtxThTAoXZRlM+fCtAIUqAkS5Ua/jj8E0m8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4370
X-Proofpoint-ORIG-GUID: Ryw9Tv4fLHPJ7GUkHeQO_i1kttvO4s4V
X-Proofpoint-GUID: Ryw9Tv4fLHPJ7GUkHeQO_i1kttvO4s4V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-09_14,2023-01-09_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam policy=outbound_active_cloned score=0
 suspectscore=0 adultscore=0 mlxlogscore=999 priorityscore=1501
 malwarescore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 bulkscore=0 mlxscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2301090150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_133721_103845_6EBFCED9 
X-CRM114-Status: GOOD (  20.82  )
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

On Mon, Jan 09, 2023, Rob Herring wrote:
> On Mon, Jan 9, 2023 at 1:40 PM Thinh Nguyen <Thinh.Nguyen@synopsys.com> wrote:
> >
> > On Tue, Jan 03, 2023, Rob Herring wrote:
> > > On Fri, Dec 30, 2022 at 11:09 AM Felipe Balbi <balbi@kernel.org> wrote:
> > > >
> > > >
> > > > Hi,
> > > >
> > > > Rob Herring <robh@kernel.org> writes:
> > > > >> >> > >> >  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
> > > > >> >> > >> >  1 file changed, 3 insertions(+)
> > > > >> >> > >> >
> > > > >> >> > >> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > > > >> >> > >> > index 6d78048c4613..bcefd1c2410a 100644
> > > > >> >> > >> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > > > >> >> > >> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > > > >> >> > >> > @@ -91,6 +91,9 @@ properties:
> > > > >> >> > >> >          - usb2-phy
> > > > >> >> > >> >          - usb3-phy
> > > > >> >> > >> >
> > > > >> >> > >> > +  power-domains:
> > > > >> >> > >> > +    maxItems: 1
> > > > >> >> > >>
> > > > >> >> > >> AFAICT this can be incorrect. Also, you could have Cc the dwc3
> > > > >> >> > >> maintainer to get comments.
> > > > >> >>
> > > > >> >> Felipe is correct. We have 2 power-domains: Core domain and PMU.
> > > > >> >
> > > > >> > Power management unit? Performance management unit?
> > > > >> >
> > > > >> > That doesn't change that the rk3399 is 1 and we're stuck with it. So I
> > > > >> > can say 1 or 2 domains, or we add the 2nd domain when someone needs
> > > > >> > it.
> > > > >>
> > > > >> Isn't the snps,dwc3.yaml document supposed to document dwc3's view of
> > > > >> the world? In that case, dwc3 expects 2 power domains. It just so
> > > > >> happens that in rk3399 they are fed from the same power supply, but
> > > > >> dwc3' still thinks there are two of them. No?
> > > > >
> > > > > Yes. That is how bindings *should* be. However, RK3399 defined one PD
> > > > > long ago and it's an ABI. So we are stuck with it. Everyone else put
> > > >
> > > > Are you confusing things, perhaps? DWC3, the block Synopsys licenses,
> > > > has, as Thinh confirmed, 2 internal power domains. How OEMs (TI, Intel,
> > > > Rockchip, Allwinner, etc) decide to integrate the IP into their systems
> > > > is something different. That is part of the (so-called)
> > > > wrapper. Different integrators will wrap Synopsys IP however they see
> > > > fit, as long as they can provide a suitable translation layer between
> > > > Synopsys own view of the world (its own interconnect implementation, of
> > > > which there are 3 to choose from, IIRC) and the rest of the SoC.
> > > >
> > > > Perhaps what RK3399 did was provide a single power domain at the wrapper
> > > > level that feeds both of DWC3's own power domains, but DWC3 itself still
> >
> > Just for some additional context/use case, the power to the PMU (power
> > management unit) must always be on. If the device supports hibernation,
> > in hibernation, the power supply to the core can be turned off.
> 
> Things in an always-on PD may or may not be described in

I'm just providing additional info, and not everything is necessarily
needed for the DT description.

> 'power-domains', so from a DT perspective I would say 1 domain is
> perfectly valid here.
> 
> I suppose the PMU could be in a PD which can be gated off, but any
> hibernation features would be lost.
> 

Some devices have both the core and the PMU in the same power domain,
which may be the case for RK3399. However, the PMUs may be implemented
in a separate power rail than the core.

> > > > has 2 power domains, that's not something rockchip can change without
> > > > risking the loss of support from Synopsys, as it would not be Synopsys
> > > > IP anymore.
> > >
> > > Again, none of this matters. I'm documenting what is already in use
> > > and an ABI, not what is correct. The time for correctness was when
> > > this binding was added.
> >
> > That's unfortunate. That makes this very difficult to maintain if we
> > can't rectify a mistake.
> 
> Shrug. What's unfortunate is only a limited number of people can
> review bindings to be correct in this aspect. And I'm not one of them.
> 
> We deal with this all the time already. It's just amplified when it is
> shared IP. Would I like less variation? Yes, but it's not a
> showstopper.
> 
> > > To move forward, how about something like this:
> > >
> > > power-domains:
> > >   description: Really there are 2 PDs, but some implementations
> > > defined a single PD.
> > >   minItems: 1
> > >   items:
> > >     - description: core
> > >     - description: PMU
> > >
> > > We unfortunately can't constrain this to Rockchip in the schema
> > > because that specific information is in the parent node.
> > >
> > > (kind of crappy descriptions too, but that's the amount of information I have.)
> >
> > Can we omit mentioning min or maxItems? While it may not be desired,
> > it's not a hard requirement right? This can help avoid some confusion
> > with devicetree documentation and dwc3 databook.
> 
> Why? Don't you want to catch someone defining 3 domains?
> 

My concern was more about "maxItems: 1" may cause some confusion. If we
can't say "maxItems: 2", omitting it or using "minItems: 1" seems to be
a better option.

As you mentioned, we can't do much about it now that it's part of the
DT. I've provided the info you need to make the appropriate change.
Looks like there's no perfect solution. Please make the change you see
best fit.

Thanks,
Thinh
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
