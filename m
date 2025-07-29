Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BB1BC87FCA
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jul 2025 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCU4SSnTAKi0jETH1iefEZ5wRj7n40Vt+gtjSqqeNiI=; b=cIgRyLl1lNczyX
	HWB4HM3L+WDbzNuNDATXlKtpnW1BlgtU+eE0pggqXOVeRigVQB5mmh3s6Q007Ctn4MyAZ2ABayfj8
	8Zq047EskdVRCQ74dlMZRXKjDpOdCaFknLTzy1TVSy4Dbl+X6kAgQ5XnNhlnxa/hKWwYsmjc5hROj
	+nliAIfCjva/2b1+Ev3htglPui2Tflczv/dcd8hLD4h95gnir6KLuVp+JtTNcMYUGxZGp0cpCoR3L
	eLn8hX1NVKQVvZ9OgsmIW+TNqqFBr6hW+Zoq9WWIyBqZbTb6A9CWFt3n0CJQVo2kFQNGvXMDBUhzu
	Am7h9uIvyGw8sxGbUPyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugsXa-00000000AXN-10yg;
	Tue, 29 Jul 2025 22:11:22 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugsXX-00000000AWr-1ylq;
	Tue, 29 Jul 2025 22:11:21 +0000
Received: from pps.filterd (m0098572.ppops.net [127.0.0.1])
	by mx0b-00230701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56TGPXoq027306;
	Tue, 29 Jul 2025 15:10:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=18L174S2Eg4cjSF+iKkxCOTjVt5kdHXAstSCeuwcHvM=; b=
	RVDRgmW577VwmFk3oFlYpsGEMKhyySit+cIDKnXGfUs8pi4w49CTHq3A92cPNLim
	pYxeLPVEsGdDuljO40oPHYrspf+YQkvl0ILUWICVDSdVk4CVyvXNAtRhtaTYFzRT
	rNruOrEnB3DgpBAaUt6jTO2GB6IMw5ciq8HuG7x55LsD1L9749yiISpQe/k4ZWRX
	QzUydEsh7Xv+QfHJT5gmzF36FS0c9ygM2RthUQFIBUzrofe9K9n0gYhTD4QE6RAp
	4WnmOIrPN3uhz8cQ1F3jRFUwx/LF8Vt4/fO05cNCWYJeiIW+Pkmyfp0Y1ZLQ2Ap0
	3pRnbtCUEATmgrz2HJDXcA==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.73.133])
	by mx0b-00230701.pphosted.com (PPS) with ESMTPS id 486wbfjwun-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Jul 2025 15:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1753827047; bh=18L174S2Eg4cjSF+iKkxCOTjVt5kdHXAstSCeuwcHvM=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=L09hBH4vi00rm+wIPgVaxLz5SuHFobMack5z8W6b5P+kcPknZ4llaC+IL8jJ+4CWD
	 ZVdTEpwNsHyC3t/v6V3oGELXg/veEP8SOGOaOcdeLCeh/usZ6Oq31dSgQUiwMLGBEq
	 82TiCV0Ipc7OqXm6NyH26HVCa6ZZgqGSraLqKde/88cog8ATnBlvOtrFrzQwByhI1T
	 daBXSFJU1Z6GcMi3gSorZJIcShwVDw8TrIQ+xKrhkrAqcdcVaHKwTTXrXKSJ4aBwFl
	 mOtQkWs5GWz1b5u/2MqOmRxQ5yDNoZpzUsEx7Y6CUQV329bOYGLvWyKvGtYmbCXwOT
	 SKfHlcqleWYOw==
Received: from mailhost.synopsys.com (badc-mailhost3.synopsys.com [10.192.0.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9F32240347;
	Tue, 29 Jul 2025 22:10:45 +0000 (UTC)
Received: from o365relay-in.synopsys.com (sv2-o365relay3.synopsys.com [10.202.1.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 22597A0068;
	Tue, 29 Jul 2025 22:10:44 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=odHv7EIH;
	dkim-atps=neutral
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 445FA40526;
	Tue, 29 Jul 2025 22:10:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sfjPhtmRKR7ktsDLHDJ29EYPjkJn6qh3w39C2LkQnpy8yx44wPK0HMbrIPaxSxeJdu+DzgPLPXtuoDzv6mD0b+h9ZoY3zuCeUvrjS/qgNSxyJdWJedozlphyLGqvGKSZzD3G5DtQQ4MxVzfx4OWlCwjkApoffLgvjGg8HmgU8PjuyjXJiEflcuXJEBL+C7wCZjw2bop8D8q3DWvrGd736de8HU2YbwlTTfm2/bKJbsNpd3O9DdaHZeuHZ6qo2Cf5cws300k4bqj+MyjuIATftqcd+RV0RZqw5CEnRDmbdor4GlzlMDbyUevESlAy2VtIXvdLDjiuho8T3/mk8bcF9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=18L174S2Eg4cjSF+iKkxCOTjVt5kdHXAstSCeuwcHvM=;
 b=KchU6ulDZlUs5yGafgiuIJ1cU0U7tkeb+/NgqINF4N+XhSQXIUWFCRHF02x3p3YKbI7otqfd24ozeOmHFf8YmwWZ8sh0BuZx4LR/rf+6vS6ZavXHS+mJrRmjNsY2X53V2VbOZzs6WBaCMvbmM4wehBbv8LjXOezlVAQjr01hwxmzz1AXx32D3/xhtm8IIg6CCQZge+XUasvyFkNpHRWbWptbpLQtYEdAblDLNZvLC8sSSJ4X8rTw/37E3o220ZwpfJw5UjQWpn7+Q7n2RYrAldnUvtmWmu5TCyQpN73fEregFa3ZxqOkYVE64/MPjtTDmmEZHeUJLnK8U0b35ls9pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=18L174S2Eg4cjSF+iKkxCOTjVt5kdHXAstSCeuwcHvM=;
 b=odHv7EIH6QL71Rb6D7D9cIdIrIkLwxpNi2mPYlk3eBIqLBsFBmtspHigQIrK5gmIXaL/nzL8fX6NMivTyY+CvDmmpVBf4qFBtzDUpT+0aCmCKos9V6TY11aW60KVQdG5L528wkwzm+bB2sM5HMetzZYqUqcPgpn4GLSvuSR64sE=
Received: from LV2PR12MB5990.namprd12.prod.outlook.com (2603:10b6:408:170::16)
 by MN6PR12MB8568.namprd12.prod.outlook.com (2603:10b6:208:471::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 22:10:36 +0000
Received: from LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8]) by LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8%3]) with mapi id 15.20.8964.025; Tue, 29 Jul 2025
 22:10:35 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: John Keeping <jkeeping@inmusicbrands.com>
Subject: Re: [RFC/PATCH 1/2] usb: dwc3: disable for USB_ROLE_NONE
Thread-Topic: [RFC/PATCH 1/2] usb: dwc3: disable for USB_ROLE_NONE
Thread-Index: AQHb8a6RTP30Xr6qbkW6FXojJLTBNbQtn6yAgAQhPgCAGAbmgA==
Date: Tue, 29 Jul 2025 22:10:35 +0000
Message-ID: <20250729221027.jvg3bpqhc3z5j7xn@synopsys.com>
References: <20250710152252.2532020-1-jkeeping@inmusicbrands.com>
 <20250710152252.2532020-2-jkeeping@inmusicbrands.com>
 <20250712001131.ax3rw24h3deekxfv@synopsys.com>
 <aHUfFGnGZP4z7UgK-jkeeping@inmusicbrands.com>
In-Reply-To: <aHUfFGnGZP4z7UgK-jkeeping@inmusicbrands.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR12MB5990:EE_|MN6PR12MB8568:EE_
x-ms-office365-filtering-correlation-id: 5ebfc9ed-1bac-4681-4542-08ddceecbe5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aTNBajJNcHlya2FpYVlicHVyNkxKaFQrNkY0TUhBMm0rM3ZXZGJIMEQ3OXly?=
 =?utf-8?B?N1UzbmZhLzFtdG01NUFRMzZvVnFGQjFURFlHUEFibTIwZkVtS05kTmVxMXVC?=
 =?utf-8?B?TmxXZERQeDBBZmJpNTJrckZYZDhlQ2ZqS1QrODVaSmgvWHV2aHdJUU9aR0E5?=
 =?utf-8?B?SzVZZmw5a3FNbENPVWVSRmlrWlMveHJWZFRKb0dBSU9BWXpiSlFZNDlnR0NO?=
 =?utf-8?B?MnAwZmpkMUlQQk1sQzc2V0NWTlRxaXNNTkJYVnZvVndCWnpZcW51M3pESm0w?=
 =?utf-8?B?czJGbU52SW1HakR3bzY1ZDJkZ2VoYlJJZzI2REp2R1daWnVjYWFNQnhiQW9U?=
 =?utf-8?B?Vm9YRXhhNUNmVE1mTTBvblY4MEVHK1ZzVysxL2o4SlhleFRydUR5RUM5S1pW?=
 =?utf-8?B?b1NZckZuTVluZUg2WklHdi9PbVpud0tIdE9kZ1VjRnovTnA4dXRqZXZJN3hU?=
 =?utf-8?B?aGdkbzU1YTAvaVJPRHdPczZuMXY4MmxOK0UycHoreUZNNHFWd1pDOFpuaWpu?=
 =?utf-8?B?ZUhOY1kzZjhYRE1TU0JRNlZ0Y3R5RUlsUE54MFhhQUw4eVRYSlpYWE9YRGEy?=
 =?utf-8?B?ZDNkZkR3OWNxemg4aUZmenRvL0JXbys1eHJNWDB4bk00cWVlazRDdkJyRXhK?=
 =?utf-8?B?Y2dWamRJWVZEd2MzSmsza2o4STd1WmRkN0x2UHlKMTFPeEEyOTJ3SVVOVnpH?=
 =?utf-8?B?VHBZWTIweU9qVDhPZWI5ZWpZQVM1eVk2MXBScWRDSjhyWVZVRERQdjZ0VXdy?=
 =?utf-8?B?VUQvWEMyQU5IbFJ5dkdSZVcvQTRUM3hWbVJEaHBSdlM4S2twazI3NFZYTm50?=
 =?utf-8?B?NXV3VWF2L00vOTMrbFFsUmI2K1NBM05aS09sQ0RMYjRmRjB0dUlMMjg2V3lx?=
 =?utf-8?B?eDVKbmdVdEdJZk5uS01RUTh6cnFQS3Y3K3R2ZFFOTFg4bUR5OHp6K1d3cWox?=
 =?utf-8?B?b2RoTVN4emVJRUJxcXdDcUY4MFRRcEVwaStxUkZTQnpvQmw0MXVSYXpWN1h1?=
 =?utf-8?B?YjZYMVU0d2QxS1pyeGdqdS9WN1c2N1ZqelhJOWhLNWo2M1VDbXJaakp5VU8y?=
 =?utf-8?B?MnVFdnkxRnJMWFFCZTVKUXE3eTBKSU1TSFRvenVuRVdpUzQ4SzJMNkhoZmc5?=
 =?utf-8?B?SjdicDNYWjdIUmthNXZ2QldHeHowdi9oYTlHdHhQOU1iV1RyWFdSZ1lDTUNL?=
 =?utf-8?B?SWxTZjBiMFJneGYxdmNwK2taUkRjSWxmcUVKR1FKeXBvdys2TzdDUFJXSkow?=
 =?utf-8?B?bGN0STZjdklyZkp1OUdtdkZoTmFsR1RrT0pGOWk2azl0dzV5UkZuekgvTU9I?=
 =?utf-8?B?d1VGeEgxTjM4ekxnbnVLR3ZwZnU2cklCUnA2eTVCZnVONDZBR2ZEaXhaL3A2?=
 =?utf-8?B?K3p3bWord0pGRExTU0F4bnNPTjdLUmlCNmx4a2xnMEZ4bVVHTHZzZ293Ujhu?=
 =?utf-8?B?T29BNUtuQzNzeDdYemFkcjQ2Y09OcklicU9IaitwcXZrVkxtL0ZzMmU4cU1O?=
 =?utf-8?B?b3JUaFRsd0dWVlZNTEh1d0JVcERuMlUxZ28rRTZHa1JiTEtKRnZ2dzJZQ2hP?=
 =?utf-8?B?Q3hPdmFTcDZwbDFIcy9ORE9HNytPWU5QeFU0Y1J3Z0ptMmpGOHdWQ3BiWjB6?=
 =?utf-8?B?ZDE2MWhwZVBMQVZFVFcxS0YvNGtleGFqVTJwMGNiRHFkN2NwTWdTVjZ6OHVM?=
 =?utf-8?B?Y2JHSWYyNkpsZXF2TXhPeU12d3Nvb2pVakpsWjhpWlVtS1RocVlUTzZ1M29M?=
 =?utf-8?B?anpyMHV4Q1BhYVdGcWE0WUFhaW1oUkJKNVFsOTVhWnBTRFNmSE1PdHEraC9p?=
 =?utf-8?B?OGhxcjhDdUkzQUI3THZzS0R5VTJpUHQyUDVlZitZNm9YWnRndDNldFJ5Q2Jm?=
 =?utf-8?B?d01DTlN5UGtpZkIwSGJFaXp5ZVBFZWM1WHNlazBKd3Ntb2hzT1ZwWEN2TnZU?=
 =?utf-8?B?KzRvcDh6cVNrUGZaUE4xcWFaclpvRUVsTDR5c1N3VnNDTklyMDkwdm9FS0Ra?=
 =?utf-8?B?bzRvYzZteWJ3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b1ppRmJQOU5Pamp1MHJaeU1Ec20xb1lwWU9wYUxkVnBEWERkaWNPMlFUSG1O?=
 =?utf-8?B?d1M5VXhJV0Rxdnc2YVY0T29BaWVNK2FqTThxeTZsazFJbEk5Zmw3Uzd1U3E5?=
 =?utf-8?B?dlBHdW1uNTlDSnhDL2JGSzRaa0VWUlNaY2k0L0UrUzgvQU5aNytGcExDcGw3?=
 =?utf-8?B?V21TNTNMOUppdGhJOTlBajl2cDlHTXRvYmdQTFpaUWdkYi95NER0RXJxUWV1?=
 =?utf-8?B?NDB0RU5mdXhwbmU4V3pPUktzak5NUjlzdEJCcXZBQVRndXZkbCtKUk52aWhx?=
 =?utf-8?B?U251T0RCRVNSUTM0bTM4aGg3dDZjT0hoU0MxMkplaFViKzJPa3VvaFFaMFJI?=
 =?utf-8?B?STFYclN1b21IQWlZY3luYm5lUmM1WFJCdFowOVY2L1ZZd1pQVEd0OHpkK2xQ?=
 =?utf-8?B?SitZUmlwS29lV2NEamMwMTAyOVBwcVRGNzgyZ0hHVjE3S1R0SWErNHZlQWxq?=
 =?utf-8?B?YUlBYnZ4OTQwSForY3NCOVpyK0haNk4vMXFjbDJGS2dja0tMeGRuaG5SUENw?=
 =?utf-8?B?UUtrVGtja0xBRVhtMnBnNndlQndlOUJpMjZIdTBiWXBid3NHM0xoT1BwTExq?=
 =?utf-8?B?VWJuUWxKa0tGMkJXUEQrZGVIVEd6RVcvNU5NZGpyekt6enRVMXJ6NngyVzlj?=
 =?utf-8?B?TnhFWXIyYithb2JNbjBEVXo4Sis5VTRxVHg5OGJFTHVYMEtTWG53cnAxcGY3?=
 =?utf-8?B?RmpwWnFaVkRScG8wdjVjeVBmUS9PWFlSOEJyeU9pZldwWjZzb1JLZzJWeGs1?=
 =?utf-8?B?L1o0SUNXU05kZU96QjdzdDU0RU5QdCt4Z09QTTdIUXVOOEljN05SMVhrT0ZB?=
 =?utf-8?B?QkdwTWZFRGlEb3BkUWFRT1YxY2V5ZUVkNkZ5dlFOczlGVXNkcFNBbUNJdzFv?=
 =?utf-8?B?L0ZkUk4vOVVwdnp6SndnRTh2SExOSi9ob1BmWldla01nNDkyS1VIaWtVeFh6?=
 =?utf-8?B?dVcyMlQrOFM0bVMvUlhIcjdYdTdsTlN0SlBMODNDK1NHQjhUQUhLdkJQZHBt?=
 =?utf-8?B?VlBzdU4yVm5hbDFyWEtLTEp3N0hmTkhiRjdjWmJ3SUFZZGh4V3pPVnMyS1Ry?=
 =?utf-8?B?b3U3QWpsSVA2dGtrSDhWc1phdFl6a0pQZElBZlRtdkxNT2lpQzJqSEFVNWdU?=
 =?utf-8?B?MitVSjZoUWhQaHBFRnZLaVJvVW5KUENSMTNKTFYxVWw4TUhIZmR2OHNsblZQ?=
 =?utf-8?B?MHBMSEVsekx1YUxwMzUvbVVIN1krNHBDQXBrcWM1SUdFMTJaVmZ5a1FJbWFO?=
 =?utf-8?B?VGJheEdQWTRoS2ZUT1FDSkVYOFZIY0Y0VkRiazRubEZrQzhsQS94LytHOERs?=
 =?utf-8?B?dVBkVVVJWHJqcUw1eFYwYzQ3a0NMdkhJL0VvMUtKWVZWMnpIWi9mcHBsSVdz?=
 =?utf-8?B?WWJvMndzRm5xczlUVE90NjNCVWhlZThyQXFMVXc1UW5qZk0rQWYwU2JHSjZV?=
 =?utf-8?B?SUYzUnNZVUw1d25GVjMwTzNKZjVzTGZHVGdNMmNIZ0xhNDJTYnNCeGRsMHRC?=
 =?utf-8?B?azFsSWZwdjlzeVE2OE80djI0VU1jTjIxQUFaTjdjcFFoSGZ0THlLeWNtb3E5?=
 =?utf-8?B?Q3hLSWtqdlEwZEF2Q1IrTFJzQlZJc3o1WXFNODVLRDNIc2FTMlFGNFQzVFl5?=
 =?utf-8?B?T2RXYUpyQk9zTElodmtneWZxbGc1SERJOEtVRlhyQ09RUTkzVHU1UnQyOHlL?=
 =?utf-8?B?SzQyNDJNbXVvcDNSNWxCOTh4NW11MHYwVTBFN0Jnd05PZ3owOGdaRmFzVzl0?=
 =?utf-8?B?ZnlsQndsQlJKdTMzTlpnd0RScVhyTDBNMUsyY3FQZmhtbkdQS1JuT2VTVVVK?=
 =?utf-8?B?bEVpdDh3azIrTGZzY1FJKzR2UU5lN01UaUFYUTdFMmNkU0poVGI0dXlqdy9V?=
 =?utf-8?B?UlR3Z1V1dlJ1MzI4YTE5VERxYnVGSnM3a25sZkhBZG43YUlpY05SNk9JaVlz?=
 =?utf-8?B?MUx5UGN1VXpZT1RTSE85ZDEvc0MyYmh3bXFsYVlPSXVvMDIvMWozbndwa3RY?=
 =?utf-8?B?T1drNGRqSGRXTXRuOGVQMTBMalRacjg5WVVRdFRONDRmb3I3VGFCQTQwSzcr?=
 =?utf-8?B?ZlF1ekNZOGk3TFdBOGdidjU1RUgzWTVTVmwxNVpJVGV6SDRaQVB1RkVKUkg5?=
 =?utf-8?Q?bjMlohBxLg8lHZ1hgALGrtFe2?=
Content-ID: <3230A63D7164A4438BF902654BEC5E3B@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: obxaM9/l0LjajPhyzMJGn0L4rqI0whThX61aPAOlK2J3H2EguDFnd2LfvPo32GXV82Pd3tjd2sIte+qdyJ40ykQuQeq8RAp3Jmse/mLtVNCDmMbwZeh4tK/4Y1Ku489kBVzsBYrwEhmL1xtI2sV0c8jK/d/jrypoIOWJVixOMUQYhFKh2K0TUpjNF69RB0Edjqp93i0ArecAeHqJMe8ufNimgarKkJhXgRK5lVbCS0RA57bheBdHu3iQcYLH3d9kQ84PCK20ytE32XLlZXPXXodseF1BmHkKWAFNk07nDBlYcIX5R2cBIx5rdzi/JOZ/3m5nCA39hjQg3MiPK9ErCo3MQdWB1aVXUPxEl5fIzu6hZxju98SvCTh+7DKEiRiSpm/o8r6uzE3Qf/0v6lhNBAKP36OAsEfpQ/BIENnQcJgqCdo583nqRaA63tjpzEGBJs06IP5JRo2Wa3cDCEKspXahIRLnyjiLbKZGLwA5hdiXFe+zzYHYrfPDqAEfT9yq6UmAG92ZOlIIudSGaNOLZ7P0/ZhDff04w4k91E1ghc6TGYbMsOCTRqL3ftNahh6hbBCW23eE7d4MJywwuvcnRWg5oA/iKEbRPXTt3mYYzOb7ULYkdcj0SVfLGscRD2KPnp2ZRt2TZbqYCZEO+qrM9w==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ebfc9ed-1bac-4681-4542-08ddceecbe5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2025 22:10:35.7447
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vdnTrNUvAhNP0rE8Ot0S4WiZH4tnjyMteZ4DoNHoMErIAFF83EKxqppM7uwyaN+pTaGDS3rvGPYZShhcN+s61A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR12MB8568
X-Authority-Analysis: v=2.4 cv=JrfxrN4C c=1 sm=1 tr=0 ts=688946e8 cx=c_pps
 a=8EbXvwLXkpGsT4ql/pYRAw==:117 a=8EbXvwLXkpGsT4ql/pYRAw==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=qPHU084jO2kA:10
 a=oClPffFv5t4VLOMCPmEA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: qHq2O0w_uDMpMpYZbIEUwe4IOUPY0AXN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA4NyBTYWx0ZWRfX/W3JxtXHT8pZ
 LVa3jXKhpWfEae+ACkt8xlhBw+iTYwWkootJE8/+e5CMTBN5WJ7oEpCyyVjCE6+984e8fOg0L7h
 EJ9LH1TwmGmIbEaSvN45bIV9MxE93TUI/4yRHKm/vTAcLGNQyo8VcmuOXGVdOvkMogpZ1XduTCH
 bGV+kh84R9ixpxHbe21sDfR9NDaBXDIf1sdBY9mOwV9FzDqSXeWlW7V5zNxOCbL07VFSSK6Yzre
 v2QNskVwXVLUaEFrIrxnP1qwED8OwXZPNn5iSO1ka+UcV764aBGm+ZRUCUKQN0ASVPVDkoVmytR
 nGDJ9Vhth/hYqDDKkH6nApOvVOpE+1tyg+6YB1WtKn8R7W5sciN9m2l2Mkuc8OW5/EZTlVfCmDd
 DVknq15q
X-Proofpoint-GUID: qHq2O0w_uDMpMpYZbIEUwe4IOUPY0AXN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_04,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 spamscore=0 phishscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_151119_664539_9BD3FC43 
X-CRM114-Status: UNSURE (   9.37  )
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
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Vinod Koul <vkoul@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Just got back from vacation, sorry for the delay response.

On Mon, Jul 14, 2025, John Keeping wrote:
> On Sat, Jul 12, 2025 at 12:11:38AM +0000, Thinh Nguyen wrote:
> > On Thu, Jul 10, 2025, John Keeping wrote:
> > > When the phy is acting as a Type C mux, it may need to reset when the
> > > cable direction changes.  But this should not happen while DWC3 is
> > > trying to use the USB connection.
> > > 
> > > In this case, there must be a connection manager to notify the phy of
> > > the orientation change and tcpm_mux_set() ensures this happens before
> > > DWC3's role switch is informed of a change.
> > > 
> > > It should not be possible to go directly from device->device or
> > > host->host with a change in orientation without transitioning through
> > > the "none" role as the cable is unplugged.  So ensuring that DWC3 always
> > 
> > The controller is either host or device mode. It's odd to use "none" to
> > indicate connection.
> 
> There is no connection in this state.  When the type C controller
> indicates that the role is "none" then there cannot be a USB connection.
> 

It's not about connection. It's about the current mode of the USB
controller. The mode of the controller isn't "none" on disconnection
even if you try to role-switch to that via the typec switch.

> > > informs the phy of the new mode whenever a plug is detected should be
> > > sufficient for the phy to safely reset itself at a time that is safe for
> > > DWC3.
> > 
> > Couldn't the phy do this as it detects connection/disconnection.
> 
> I don't think the phy can detect a connection.  If it is configured for
> the wrong orientation then it will not monitor the correct data lines.
> The phy hardware does not signal any interrupts to the CPU for the
> driver to react to.

Ok.

> 
> > It seems what you need is a full controller initialization upon new
> > connection on orientation change, and you're using role_switch selecting
> > "none" to do so.
> 
> I'm not sure whether a complete initialization is necessary, but what I
> want to avoid is the phy resetting while the controller is part-way
> through device enumeration or setting up a gadget configuration.
> 
> It may be that simply avoiding resetting the phy if the orientation is
> unchanged is enough to avoid some of this problem, but I suspect there
> are still problems if the clocks from the phy to the controller are
> stopped unexpectedly.  However, I have run some tests of this change and
> it looks promising.

That sounds like the the phy reset is done after asserting the vbus
valid line indicating connection to the controller. Can this be fixed in
the phy or type-c driver?

> 
> > I'm not sure if role-switch has the right interface to do so. Perhaps we
> > can introduce one? I don't think we should change the behavior of the
> > current flow and apply that to all other platforms.
> 
> I don't think it's unreasonable for the controller to be idle when there
> is an external type C controller notifying the connection state.
> 
> The hardware setup looks like this, with the Linux type C code notifying
> the phy driver of the orientation change and the DWC3 driver of the role
> change:
> 
>                       +------+          
>                       | DWC3 |<----+    
>                       +--^---+     |    
>                          |         |    
>                       +--v--+      |    
>                 +---->| PHY |      |Role
>                 |     +--^--+      |    
>     Orientation |        |         |    
>                 |   +----v----+    |    
>                 +---+ FUSB302 +----+    
>                     +---------+
> 
> The advantage of using the role hook is that we are guaranteed that it
> is called after the phy has been notified of the orientation change.
> 
> Do you have an idea of a new interface?  Or do you think it is safe to
> reset the phy underneath the controller when that will halt the clocks
> from the phy to the controller for some period of time?

The proper fix should be in the phy where it should only assert vbus
valid after processing orientation and phy reset. I'm not familiar on
the communication between your PHY and FUSB302. There should be some
indication from the phy that it's ready before you can assert vbus-valid
(that can be from a callback, a status register etc).

What you've done is a teardown and reinit of the driver, triggering a
soft-reset. This can re-sync the phy. That probably takes long enough
that a phy-reset after orientation change will be completed before the
initialization complete.

If there's no way for you to know when the phy complete its reset, we
can add a quirk for your platform to always reinit on role-switch call.

Let me know if this is reasonable.

BR,
Thinh
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
