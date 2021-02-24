Return-Path: <SRS0=b48f=H2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC1F7C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Feb 2021 13:29:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A06664EF5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Feb 2021 13:29:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3A06664EF5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d5Ua3O+TXST5ivG7mbOeNEM/aO2V3KMUKkqGpefgGEo=; b=PYUvptmd06nwY/+XfjrKTX3UuO
	C6qFjVqK30V6o2ESoMKJgOwGD+2FeY7dKRqpQADLZm8R+RIcNQYKWm1QBzfbQfRc6U+1CnkFl0xml
	uVLUb64RL6urUMhUPnhGCn3nzKOqm8nbsgluPgdknj24abdJ36BwZ5XJ2u+4YiKfQS8LpvtTdabRE
	YxbPGmuoIxyE2OOgc72J1VrS3RACI5x7IT7UYnSq2ZjbQDAVnsNfrnAXd5vz5mXZAlZj5f2Bm2yP3
	SNDsCeFewOkyU7/KOh1otLOgIFBaw31TUvROTSeXaTBhHaspNP+0uyqBJXiflfdhSLNA/C1D4tCiA
	YNaXp9AA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEuER-0007s1-V6; Wed, 24 Feb 2021 13:29:35 +0000
Received: from mail-oln040092069033.outbound.protection.outlook.com
 ([40.92.69.33] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEuEP-0007r5-IM
 for linux-rockchip@lists.infradead.org; Wed, 24 Feb 2021 13:29:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kSDiBFM13pqUisFBJFDuyDAdjZpoBkRWndaFg6xi7X4fkvt/kis0h1LVx1LI8umaZwCxBNVZoxGiiA7nKnBlPTU9OIDBd3/6Mv+43L9ZDvKLnOm2F+6PQXoQqLjWGtU0+20ieVZNBGtqRILDxQPqlfX0f4LBB2VrxWGxu61C2RoPggfL7CQpzsWQFw1fAH+mG1S9ScvQGZdb0zFz7g5BLSKzWwUlxd1hwN3bhhzZBNZYILI69I56ao55fWwIeLtKxD0jIeEubLAqkFVmfs2VxCWVE3VgPWbmkp9oukLLwA6SW5Znm9K9efuk+3TsqCRW5c33uCl8nvMwv3Cdhn+2ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=87GlDCZrgfM9deMUNTBHo8CdqSJ5ZYodsYnbbS7Zgz0=;
 b=Z62c1FVUyiBh4cSjA05W+5WfrMmp0V8B1SyLlWr8BaCFbtWqI2JqLsocqFc3eI2Q4TiWZgcs/gMmTEjbHIVqPcbUNvOe/mSy/tnorBvWXJfBxBXGeLpznz/lgTE3axrHaETSxsNqhwLbK5VFm9W20KCs/s5LSnFkHo39SNqI6kbqdBCqjYe46hJ/wPlUIJnh6VORBdeAjJ/nQ6Fzv9h6uHdRm40CzwOK6zjtC19fXEB5kNRmY5+gk+G9Ivd2AzQ8NqGO9jYtUOkFLm9T4EuRg9xX6k9Vf9mT0aZd5UCU0P7Y8o35j2/WLpqa8tOzO7olGD2J6NNaEBZt1ia3Z6V+9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=87GlDCZrgfM9deMUNTBHo8CdqSJ5ZYodsYnbbS7Zgz0=;
 b=PPqvxaxB7NQhcxXhS4fbEf8WBovI0vG2sKuLRuE8UN4icSqV/ARGP6bzBKLTsqIOpQYKNd7exKnei1vlyP2AQvf/MPxbF28VFlQZ4o6GfOm4CLPLSCW1+aZ1z1ss6bo9f2mouSau4Qm6s06xyj5YKQZXLO5apEr9VNAy/gAnEaTjKksMjPx311iIzzWwQfqLNBdsHNLlwCs4Nz070jWCzlTWOfDuZJ+y8hQwr9DmmKgc3yQKvYO58cTRXjZE40ueRMraemlH9UxFB2OzTDLgfEuc5erYDq28l/KlP9W03Or4VHfMTCS+3eulJ4eB11fa5klP32wW7Onvt5Q3mlpBuA==
Received: from VE1EUR02FT035.eop-EUR02.prod.protection.outlook.com
 (2a01:111:e400:7e1e::46) by
 VE1EUR02HT231.eop-EUR02.prod.protection.outlook.com (2a01:111:e400:7e1e::182)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Wed, 24 Feb
 2021 13:29:28 +0000
Received: from AM9P190MB1252.EURP190.PROD.OUTLOOK.COM (2a01:111:e400:7e1e::51)
 by VE1EUR02FT035.mail.protection.outlook.com
 (2a01:111:e400:7e1e::86) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19 via Frontend
 Transport; Wed, 24 Feb 2021 13:29:28 +0000
Received: from AM9P190MB1252.EURP190.PROD.OUTLOOK.COM
 ([fe80::8c6:51fd:4637:ccc6]) by AM9P190MB1252.EURP190.PROD.OUTLOOK.COM
 ([fe80::8c6:51fd:4637:ccc6%7]) with mapi id 15.20.3846.047; Wed, 24 Feb 2021
 13:29:27 +0000
From: Mohammed Subair <msubair@hotmail.com>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: RK3288 AUDIO and LVDS
Thread-Topic: RK3288 AUDIO and LVDS
Thread-Index: AdcKsOOuv2QpxaVFRm+U7addTWfhLw==
Date: Wed, 24 Feb 2021 13:29:27 +0000
Message-ID: <AM9P190MB12523F27BC667A02885A2218BC9F9@AM9P190MB1252.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:AB431514F887E4F6A6D31A910AD58FB232E9EC4F288B4F39FBB3281421258241;
 UpperCasedChecksum:2A79623C0A26845CAE7A1B57A38CD02200C5F16952CB88CAD1313D6141977BF6;
 SizeAsReceived:6611; Count:41
x-tmn: [0/P5FMrZHjJnwGc28SvP6GRL7Pz0t2Qv]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: d7495cf5-50de-42b6-b97a-08d8d8c835c3
x-ms-traffictypediagnostic: VE1EUR02HT231:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xWotPys3tc9QwnQRGwfGjRimq4Q9SBkzXbg9MAHalahKMNucedoN0ORWPF39Bm1uu/vtMARakl56kzXrUK0tdSq+GA1XVCMO1vLdR8z568ifw6yO4F7fPSnXEJ2lFxkDuKlcYDcnNFkLSjpMRPuwGmVO8uL88rDUC5gZQpgsiQ8cZ2XPW4xuKziVkT+iKm//ciMi2JRTJA0URMT5zbjGqB3cO7aBb/o4e9E3t+YB/oiRffZOQck9mXp+M91gL9QA+/UdMDhbNPejMQIeb0Sn2hCSg10psxrklXVsCK5yjzAN7ci0Q26OrS1tc4AfAaVpqm+kPNfuu/k7GuGg34h9z7nWXyQsKYdE5M7QJgPLhH4G8OoLE0hWpV/qvdWzM0VEWljZgGasAT3gvwaXA9WKyg==
x-ms-exchange-antispam-messagedata: iRox3SP82snbbWYEWTuAtI3McPLrIZZbdujfGgbguRk3/q13hk7HHE5l0OZzg52XAze8dJx+YgT8FROjQRcWr00R7HCDF1kJuYQxy/NUqLDKskkfyAa+tgBAvHY1O91/KabOXXA7qxhVibccIrvHPQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR02FT035.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d7495cf5-50de-42b6-b97a-08d8d8c835c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2021 13:29:27.9515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_082933_668528_E4E5F4B0 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hello

I have a RK3288 Multimedia board with RK808PMU chip,  which has built in  PAM8006A  audio amplifier and speaker out pins on the board.
I can see RK808 based dts files in 4.4 kernel, the board is booting with rk3288-evb-rk808.dts file ,however none of them have LVDS integrated. Trying to fine some documentation on this LVDS and audio integration.
Can anybody help on this ?

Subair

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
