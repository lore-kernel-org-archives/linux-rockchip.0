Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22A65C43461
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 13:12:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7AA11610CA
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 13:12:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7AA11610CA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=nextfour.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fk8KwiRy3Ez6q1Fb23hCdkqvKt19Rvlw4PNAIHx5qBg=; b=dxqUI35WRC2tO9
	AHth35DI0+xvmMkL0aSQ40MksKwfwHz/99HNsBiKCHfDWGKGtZDeer6geIoZIwEHbhkNvE9j6Caof
	xb9DhnuJfwynwnWE8cu1D4/b0ZMX3RSBk2q7agRp50IKMHKsXN4f2x0PM/IDnaYpBhPPz1GTsr7X0
	NWKcwiq/2m0v+bV8EUGsazhyfD3LuGVgAzN7cae9J1tvTg43ayG6BDlj2+ilE2i/9taWcyKcwfW3f
	dAlpa4MfjaUbbk0vpJ2q6Iip5j3mM78GDk7hsiVv639lHOgF0dvHOZbnc0yB83EG4zTbvnhSxaZJD
	rTqev7MjN3bi5gg0jUiQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVwMd-006n8i-Fr; Mon, 12 Apr 2021 13:12:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVwMY-006n7e-Jw
 for linux-rockchip@desiato.infradead.org; Mon, 12 Apr 2021 13:12:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-Type:Date:Message-ID:Subject:From:To:Sender
 :Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:References;
 bh=8R3TX0apxi7L5MK9Lqi4RGVHYRRKFbWFGoiUQHwV3GA=; b=cU2HX9jO05CF3izx4C9NFReWXT
 crCsUtq91AYyOp51vLOXvLN3ZyD3EpZJI7Dl9j7mz3hZciYjlE75+5kZ6U3kvufv1JDW98wb1XJkJ
 iwE2UbmNQ5SsFuWESzXc4XIBp4A18zqdS7dHbbrR/MtUvE/BQNI4GmQhkakfNY+8iPxVcuZPpYeBe
 U9pqlG5PFfPLGBai1v06vB7C10z0jXVCOjBXjkMBUXuKXoAvjbrKCxO6w4WYwRiQzWzwTlB4Wh2cq
 DiNlYOPah0Zx0tUU0rgoHPoEKsVefALrZzBh4UfqEB7Zm6oqlhVaWYrPLwjPMq7S+qazSxXQnS0aT
 7CXEHmZA==;
Received: from mail-eopbgr00052.outbound.protection.outlook.com ([40.107.0.52]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVwMS-006Fp0-U6
 for linux-rockchip@lists.infradead.org; Mon, 12 Apr 2021 13:12:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJXMVqmhvyJZCcV0H2bfDB+/jckQfq7Qi/KYsiw5g8eHvj683hROmpc1qWuqrUSIqEuSQuNf+2lJl71xkQ8TooLNGf2rV8aOak36TAnqr3QB+VCZ3NHbkd0J8tTra2TXfte4ktXeVo6UwYcYvBaGGZmN8SBaq67Z9Zye65O3A9SpOMlJVpZeEiLVcxGoRTl/diqsTiVdLLLKJzrFroXCGGki8hFJkdy6MEVbd9Ghbzu84SVnhmNEZFRZ+BvA2ZYg5pnDNcEuEox2E+F1DL859eo84c3SPWugDEObKdotlC/LzDP/awBGjXBgwxdbgwPOsR0eJXATMH/EadMgWTcDxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8R3TX0apxi7L5MK9Lqi4RGVHYRRKFbWFGoiUQHwV3GA=;
 b=hF+4bW0Q873OeIjFhC1lRZf+CzrpHn10UnRoa7J+wAKywN6zjJCFzkIPCjtxJSWWjHTL0KnrqmHPwrOFDdBxd4xIoVVcjRc7bh/j1Ue1+pMioyS1+mEt5LurutroBV9XDc4Y6qOQ69/SU3Z0rwtXU4BYxpKApf9M6jQjuAypge6iuEL1bcEq1qU4YgvPYnMe97sAOVxlmLtYs1af2zHlYw/A/CAoEyRtyMGwlRAKQpdNwTNSkRHc0Zwu+HT4CISmjmxoiW1XcuwePBII6Jx9/FNsQp1H7F1a7j3BQ98LABoBmxdABUuHCFJuixekHsAs1labU0qHR95xu5F2Q4b+dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nextfour.com; dmarc=pass action=none header.from=nextfour.com;
 dkim=pass header.d=nextfour.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NextfourGroupOy.onmicrosoft.com;
 s=selector2-NextfourGroupOy-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8R3TX0apxi7L5MK9Lqi4RGVHYRRKFbWFGoiUQHwV3GA=;
 b=WJPX/1YriACa9Xe7mfMhOn1OyUCtexrGJ0Md1UZBE0V/E8JHBV/RvneXfquFMN5jt3DeyHed/mqMgmvH4ZdtwI1BUJG2NgiC3t9gV2SdK1N78IKJlTMo7K9B48LGBH0XPu19rycnrbXpyel60pIJ3KorzUyE7+hLlPcsOsaisnc=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=nextfour.com;
Received: from DBAPR03MB6630.eurprd03.prod.outlook.com (2603:10a6:10:194::6)
 by DB9PR03MB7402.eurprd03.prod.outlook.com (2603:10a6:10:225::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.21; Mon, 12 Apr
 2021 13:12:09 +0000
Received: from DBAPR03MB6630.eurprd03.prod.outlook.com
 ([fe80::593:3329:e104:239]) by DBAPR03MB6630.eurprd03.prod.outlook.com
 ([fe80::593:3329:e104:239%5]) with mapi id 15.20.4020.022; Mon, 12 Apr 2021
 13:12:09 +0000
To: linux-rockchip@lists.infradead.org
From: =?UTF-8?Q?Mika_Penttil=c3=a4?= <mika.penttila@nextfour.com>
Subject: suspend to ram for rk3399
Message-ID: <22e1aa98-24eb-c541-9d1b-fad8ea83e7c4@nextfour.com>
Date: Mon, 12 Apr 2021 16:12:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
Content-Language: en-US
X-Originating-IP: [91.145.109.188]
X-ClientProxiedBy: HE1PR05CA0349.eurprd05.prod.outlook.com
 (2603:10a6:7:92::44) To DBAPR03MB6630.eurprd03.prod.outlook.com
 (2603:10a6:10:194::6)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.121] (91.145.109.188) by
 HE1PR05CA0349.eurprd05.prod.outlook.com (2603:10a6:7:92::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.16 via Frontend Transport; Mon, 12 Apr 2021 13:12:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 75c07090-8404-4962-ddb9-08d8fdb493f7
X-MS-TrafficTypeDiagnostic: DB9PR03MB7402:
X-Microsoft-Antispam-PRVS: <DB9PR03MB740206B421823AE619BAEB4A83709@DB9PR03MB7402.eurprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ypMlCQGlLl0ONxUx3p332X3EUsU508zCEfX6RuzlPmoC1RZd+lE5IenJmcRuybUHvwxChK1iXGYIOLcsu0SfXeG4UAxHxHKUKXVYxWa54+uhGfVDoHR7zY5zn9q8kSh8c/qGnzJiE5FVHoNni5LwXSiI2gbfpPnC0zsfZzXMq14vNY7gyHyE1krjeVIgnN+5al3MWs3NsqCLeLC1ZanphqqTJyO86vf8qAM1D60lauJo4/PZWWUYKxD99zGGfEMULLDi5YkSuPPMaN8be9KddogTlcOcsgvX9Y2IGuqkOdDiCJwDI63qyegbAXPtP5TUCYg58tWQ5In+dW71UGzeGWfWce3n+xU/Ivct4W4ewYyjJ14I8uOmxLQ7iGFp7oFjIdHTkJWwmh0l/e2er512u9pGYuJqWykNwEiW7mc+kOSR8OeLLfYy7arsnYeav3O3C4sGf1hYJUjtMgSI+euKxDamVQFVeeJlJ+GlE6yGt4WDYLa+0tpL6K5PgObYnICxeUWKh7WODfB9TjFtvMEJFl74k9zAnJigjRkgPlQ6cIJky4Et+PfxPWXje3drmNvD8G6elyjnZB5ldKGdVRIkttW+eCVR0+VlC8FhZeLA0eQ6eUziJTr6R1kp4dqg6dh84Iw2D31VdY9QaZOj0K813SryBaJjxJ/hGkd6OhZddm76k0C34VcLPcgdtcXvhD2uVIsnhoePMAPSbXa6MsxMCQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBAPR03MB6630.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39840400004)(366004)(346002)(396003)(376002)(136003)(31686004)(2906002)(66946007)(66476007)(186003)(16526019)(26005)(956004)(86362001)(5660300002)(16576012)(2616005)(83380400001)(31696002)(8676002)(6916009)(36756003)(6486002)(66556008)(38100700002)(316002)(52116002)(38350700002)(4744005)(478600001)(15650500001)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?YlBUQXg5alY3UkJrWERRUFVtaWlTSjVZckF6WUxmZ3d2dlliVDh6RzdBS3cx?=
 =?utf-8?B?b2RPZkxMTWx0R3IwNEdxbWdzU0U3QkJLQlhCZW5ydDd4ZlpNczFWbXM4S21q?=
 =?utf-8?B?UkJwbHJFM1JtYWw5WW5BbEY4UnRlNXhJeHVkMjdSUUc2TzNPVTFEajZDenQz?=
 =?utf-8?B?N2RQN01Ld1RrdElhbVNlTnpmcDJKZ0I1SzRCNkxKNTJsZ0pOUDBZVks1MEdT?=
 =?utf-8?B?T1BYQ1dXbmcrbU01dW00bFJxTmVscE14bG5leWpoaURiSHdzUG16Y29lbys2?=
 =?utf-8?B?TjIwUGJBaHhEQ3RwczVBOUVjWGtIRktaU1JLd1I0dlhZamtjUXY4dXJTcTVE?=
 =?utf-8?B?Sy9oc3NTQXRUb2I4QjAwaGUrNnl4Yy9rVEhiQnNlRXM0WXpuZVRPMldNSGpM?=
 =?utf-8?B?UXI2V3NKc0p5Q2d0bkM2Q1EzM28wMU5teHJuQ2Fsak44cGhkbnA3QTF3TnlR?=
 =?utf-8?B?UUwycWQwNjF1S1EyWURSNHVmMkErbEUxbVlidmRKYjl5N0YzWC9aOFhCTVhu?=
 =?utf-8?B?V3JGVmJoZFVlaXRveGhteWRJOEdJSGtYNXhWRFVUdVB2T2M5WnRrdjdGeW5G?=
 =?utf-8?B?VXowMkVyRkNURVBpT2Fua0c0RUZ2dFQyZVhxSm1ZVTQwQWlmT0g0QzJFbXJX?=
 =?utf-8?B?dVpoTGF1b2xCdkR6QzhQUGs5STJ0elZmQmgyUWhqeUZIOTU3K2xCV01HS25K?=
 =?utf-8?B?SDcvNTcvekVmQ0duUE5rYTBoaDM1ZmJoQ1djV2RXTVVwU3prcjdCTVpmdkRo?=
 =?utf-8?B?L2ZpcXZvZXBONUN4T0t0VlV1VWtjRTJSejFjS3Rkekhxc1J3VG1IeWdHQ3lG?=
 =?utf-8?B?cGhUUHozVk1sd05QdzNha1R5dTdnamdReUJ4Y3NCaGVCdDRhUUp6TFlFdzF5?=
 =?utf-8?B?RHZmdVphcklUUFhNaUFxbktPd3AvNkk0UDdkcHBxbExYU0wyNmx4VkJyeUg2?=
 =?utf-8?B?UkVoL2dncmRpUE5VSmhyTWNubTFzbkZJc2xVdG84bWdYbTByeGlHYjhCYlFT?=
 =?utf-8?B?b0RiNlZtU2dRS2c5V0NTKzlreStwWGVqelMrSHJvUDlhMzArNWFyZ1diRVJ3?=
 =?utf-8?B?ODBpa0tmeVN3MjJ0NW5CQW11VStwTno5aVJvN1hNM3A2cFRteEtpMVNKeWox?=
 =?utf-8?B?a05QUGJzdVhtWkZXUjFra01HTjUvOEliMVkxVDE2c0ZXYjM3UmFMc05yQTdY?=
 =?utf-8?B?NDkwUFhRQUx5OVJ0WDJwVnlNSTZSeTNDUmp1MmhHSXMvZ3FkZ05Vb0R3TTd5?=
 =?utf-8?B?RkFBUThESlhmMFRFWkFrYUdNTDdEVVRFa3A1M09QRk5lTkgxKzc2YUZDRFk4?=
 =?utf-8?B?ZU1BTStUVStZREVNY21lZjN1RjBNc1daRTVqS2R6a3E4MERNNG9tdzdHYlZP?=
 =?utf-8?B?L0daUEcyUC9uWVBFZUhDWThscVR0Y2g2WGdVV2xBTG81dlpwSnNoWkM1cUEz?=
 =?utf-8?B?L3RvQ2NFckdZQVBvSGgwM05BbUdoNzYrRFhXMEJldnA5ekpkczU3ZDBvOW95?=
 =?utf-8?B?dnRaa25pblM4MnVFeGxtT2dPclZrU1kyQkpmWlc2aklhRFZSY2xRY21RQ0Rs?=
 =?utf-8?B?TXpMcGhBdlNwcHl4cU9VSE1JN01hRVRsUmtxTm1aa1dwK2UyMXQvV2FQMkEx?=
 =?utf-8?B?d1AwOVZHeS9mbjlIREtLYksxaE15U3FQbE8rV1B6Uk9MTmdKVjJia2Nma0JK?=
 =?utf-8?B?VzR4QTAwV2REMXNRUXI2akY3Q3duUUJpdEhHOThRM255R0Jtci92c0xtVFd4?=
 =?utf-8?Q?5Cy6QqRC1JOF0MWF38yDezEpW+pa+3G0scz63Yl?=
X-OriginatorOrg: nextfour.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75c07090-8404-4962-ddb9-08d8fdb493f7
X-MS-Exchange-CrossTenant-AuthSource: DBAPR03MB6630.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2021 13:12:09.3242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 972e95c2-9290-4a02-8705-4014700ea294
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oCfXNp4sWqhd+zfsWEBMwLvUBcoT1kyLnFCFN61EgCIyEO9XmOWfcmjKKqTvXdC2SjN9bzydnX/7kbPmMDwU9ah/gveaZM21UT1KbJHwhQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR03MB7402
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_061217_045520_48C3CF6D 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpXZSBhcmUgdHJ5aW5nIHRvIGdldCBzdXNwZW5kIHRvIHJhbSBha2EgZGVlcCBzbGVlcCB3
b3JraW5nIG9uIHJrMzM5OSAKYmFzZWQgVGhlb2Jyb21hIFE3IG1vZHVsZS4KV2UgYXJlIG9uIG1h
aW5saW5lIDUuNCwgYW5kIG5ldyBtYWlubGluZSB1Ym9vdCB3aXRoIHYyLjQgYXRmLgoKVGhlIGJv
YXJkcyBnb2VzIG5pY2VseSBpbnRvIHN1c3BlbmQsIGJ1dCB3aGlsZSB0cnlpbmcgdG8gcmVzdW1l
IHdpdGggb3VyIAp3YWtlIGlycSwgYW4gaW5zdGFudCByZWJvb3QgaGFwcGVucy4KRG9lcyBzb21l
b25lIGtub3csIGlmIHRoaXMgY29tYmluYXRpb24gaXMgc3VwcG9zZWQgdG8gd29yaywga25vdyBu
b3QgdG8gCndvcmssIGFuZCB3aGVyZSBjb3VsZCBJIGdvIGxvb2sgZGVlcGVyPwpTZWVtcyBjb250
ZXh0IGlzIG5vdCBwcmVzZXJ2ZWQgc29tZXdoZXJlLi4uCgpUaGFua3MsCk1pa2EgUGVudHRpbMOk
ClNlbmlvciBTVyBFbmdpbmVlcgpOZXh0Zm91ciBHcm91cAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
