Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7298C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 02:45:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76289611C8
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 02:45:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 76289611C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=suse.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:From:To:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dlwox7VeFweT8RLQ684Ula5YVE/OSKCo6XTjorNPWGI=; b=IqXu07zFFz/6gA
	RjqGQUSddX8SfR3OrFq2MkWI3Fde5Kd0jzFcQvpnVkgd0FF6mNzl36TrdJECygwrMOjiOe82u3oDu
	NU5jCcuKYR2/t0WXZYuTR3KB8gYS20Ozyr8i4DPSSCFg/6TcbDM5H1dYkK76AlAMyCRuREfS/n4FD
	IN6AtRzoPKYT1RfV+/XtNb8aj4MuUkt68ybnLDwVi3rpNrH0aiXHiLw/0qKPogXXJ9DN0OY2E35rm
	isz0zRqp3eU2Wfp+Wi4slK1yzynIBI0fwSGrN92PU9IDPAcfSE0SNRoAlfY8LLOK3oV+s8YTv63U0
	1YRONpsWG04hFuSRTxQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mR3sT-00D1kp-Ay; Fri, 17 Sep 2021 02:45:25 +0000
Received: from de-smtp-delivery-102.mimecast.com ([194.104.111.102])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mR3sQ-00D1k5-H0
 for linux-rockchip@lists.infradead.org; Fri, 17 Sep 2021 02:45:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1631846719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=BoHUFH2afWlh8iMM8Tp5F7p76gGpPuutM/mS5t7VG/4=;
 b=h0UiEBga7HtSLcu97WDkW/owJf7vwbklQ1qjRhgQ01MccNWXGIVrDGcqZ4Ywj8X/jzEFpW
 ehmrLGmg9hThniguw4wKtJIT+zGFzySWYFKT6b94H+Kftw3+pWG4K7JfR0b+nuvRacNhIi
 czNRHBwOnDl94sSueO2/3vwuUJoNOIo=
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2054.outbound.protection.outlook.com [104.47.13.54]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-28-4vEeuV9ZPMa8GEde-1KX3w-1; Fri, 17 Sep 2021 04:45:18 +0200
X-MC-Unique: 4vEeuV9ZPMa8GEde-1KX3w-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nHtr5gAutZ9CESErHMcSeXYbpFhXeN3dYJJfKL0A4p0S4tq64v3tg0QRorPk1OK2DjO+HZBtBlonoyj9uDehhy8uVZvMtMMlxHD7nZoTDjAf1GyqOu6E/n1p+AWSNBf3YQbH39fhp609NXZEW6I7/iJptaE+59NFzKzDyfaaRpWsWxklVnsUGkZC0VyirbAfABYJKMz2D4KOz/alX9xZ/7d2O4O7LMi0dyEDEBXFgAwDazKqBvHXzqFQFBJuGdsDNdSD+Yr2q1YH9xsgNX4NRuF08SpoMeWGosv1bI23cfmCzqqNubeoMDOnxMdf+izTE5GU9Egn1KnK97wq2wk3nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=BoHUFH2afWlh8iMM8Tp5F7p76gGpPuutM/mS5t7VG/4=;
 b=Xw6+/lbmvvIze91gCCvF244vCt8f4CjA9JxPDYqnbvSXvWBkN5PQXctxUSOcfw/egtPPg95YergtT7R/6y9HTKDQJyMIzuZujF5U9Dkori2j3lMvE2ON+QR/g95FyuLk14KGHWT1j2zglg3Ub6hLuxZ58MHXVtH3TP4MFGDjlLcZWjMFpr90ACH1NqQ3gnEwwtLSxXzbG/GYp9VZhuOq/LdEHowBdGCUC6wQ1pkwNMsUVw2zc34EwZomjE3+wLj94Wc6/qKgc5mq08tKyMuZzIHeAFIG7qQL96ix5ZC8E1H1cZZDasv1V6GAZKFzk/JraIMQAZIaa2eOv3AJEpt1iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=suse.com;
Received: from AM0PR04MB6817.eurprd04.prod.outlook.com (2603:10a6:208:17e::21)
 by AM0PR04MB6017.eurprd04.prod.outlook.com (2603:10a6:208:13e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Fri, 17 Sep
 2021 02:45:17 +0000
Received: from AM0PR04MB6817.eurprd04.prod.outlook.com
 ([fe80::e127:3068:df92:de0f]) by AM0PR04MB6817.eurprd04.prod.outlook.com
 ([fe80::e127:3068:df92:de0f%5]) with mapi id 15.20.4523.016; Fri, 17 Sep 2021
 02:45:17 +0000
Message-ID: <0c0c80c7-460f-8a34-93d4-41351741f6ed@suse.com>
Date: Fri, 17 Sep 2021 10:45:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Content-Language: en-US
To: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
From: Qu Wenruo <wqu@suse.com>
Subject: RK3399 (RockPro64) can't setup upstream opp tables
X-ClientProxiedBy: BYAPR06CA0030.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::43) To AM0PR04MB6817.eurprd04.prod.outlook.com
 (2603:10a6:208:17e::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [0.0.0.0] (149.28.201.231) by
 BYAPR06CA0030.namprd06.prod.outlook.com (2603:10b6:a03:d4::43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Fri, 17 Sep 2021 02:45:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07a4ee02-89fd-4416-7bf0-08d979852e9f
X-MS-TrafficTypeDiagnostic: AM0PR04MB6017:
X-Microsoft-Antispam-PRVS: <AM0PR04MB6017217D6805FF4D65B5E6F0D6DD9@AM0PR04MB6017.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2399;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9xw2Jjob1a1HtWlkxwZfTTdT1jl/s10O+MsbVkN7Mwf79TF26tiKXYe9GSEcmenX3Fj7OdpmsxjySClUCGTJywzoXWsolimzz1R0JVMD7IdMgCaBMCmcmUeLdguef0hZOzCgM7dA8SK1dwgxWsQrkkSLkol23k4v2/SJ5G/twPBxBnpUudULDlYTUgVvhzRQjBrF4IU61m2dFVnH1RoyunF3/761i9Ju3cjT6UWGLfRdo5iuOhtynyP7OSHlJecaXqeBuK9YjvMorAe7Yle8TsSr3seS1mKR5Bcntrx2UeoIoQ26uAnJ0ZiHGg6huxvEXPvSFNpvguklBu3CptD8AYIlPVoCFJFJS0AB+UZKAo4arRzgrS6D3l/s46nTRgBqv3qzYbXOjm+TOOBaL3RNovUpt8Zm6JSIbdhqmyWBDh+YH7gxL3SoLY8+27KUwU9c+zx4JXOZYwC4JR4HaqqavoxYhSk1YXYQPoFaIEE1BwMkwcsG039ldLzSh6062rg1QrPI8TZEkD+72Z7j9fEnkY35TcCit013gmv/cmsK3l26mU9S97yL1+l5sHI/xtMaRL5UDcBVMjuk+x2P/1mkMDEZpVmug7paQ8t0PKXbsFgqpvwgKmHQCOR2AT2441oNLbWiIuAsnDg8A4SeadkcSSIoXu5tjClu+xbWTKUX+liURFggtOT7y3u4BUjax+DTIAKKrwhYKhVGSH7SrCxFzf8YMndyXKEYH9vGC5QzG/TK5tIeG7P1xJrsJsys94lv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6817.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(39860400002)(346002)(396003)(376002)(186003)(478600001)(5660300002)(956004)(4744005)(2616005)(6666004)(450100002)(6486002)(66556008)(66946007)(86362001)(316002)(6706004)(31686004)(38100700002)(26005)(16576012)(2906002)(66476007)(8936002)(83380400001)(31696002)(8676002)(110136005)(36756003)(78286007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGxnYlRUY1dwSjVEeWtHaDZEc2pyMElwMDkvTVdleUFneHlJeURsZzBVNEls?=
 =?utf-8?B?eG53VXM0dGk2aWplcHpmYnlPRi9hMkxQQ1lpK1RWdm05YncvQ2pISDRNRWhk?=
 =?utf-8?B?SzQvK1BSdzNjb0FVdHhjeXpnS2FoSFdyckdTTU1jM25pclhScmlETmJ1cXBE?=
 =?utf-8?B?aXBmaFJGRlIzdkxpTlRrVGdhUjBqQTNXSWRwaUV6R2p5b0JhRzBva3VsNTBq?=
 =?utf-8?B?QjdGbE9EL1BkbVVIK2xjK0NVSzVoTlAyMURmU1Bna2FkWUNEbmJhR1BmdzQw?=
 =?utf-8?B?T2JjR3JMYUI5ZjIreEJFRUhReVFnUHlleVJMeENwbXo0YnYrdlM4eTdxWlB3?=
 =?utf-8?B?WVV0cVBzaXRXbnJKanZjWW5ZbnF6eTNNdGtqZWF3WkcwNGFPK0QvZTVjOExO?=
 =?utf-8?B?eHVEVXF4ZUo5b3pkM0RuQzZBTk1uaHFtLzd5cTB0MDdaR0JmTjhiN2tlTkJs?=
 =?utf-8?B?UlZURjh5NkZpM0psSUZpV3VtM3p4UDF3TVA5MUM1RHgvQVVzSWVhYjZYMkFK?=
 =?utf-8?B?aFpVdUNUUlBuQzRDQXhsbWtLUWZMZTFkaUFMKzl0TkhRN3UzbkcrQU9obHN3?=
 =?utf-8?B?UG9tWm5nclEvcEZXRngxSVFHUzkrNkVPNnpVbWF3b1pXSjl2STgrT1A4VDBX?=
 =?utf-8?B?ekVRaW0vK1haeWU2M0dXRkNmQ1dwY3NNN2crVFM2bndoTm9kaGpzUmt3QzF2?=
 =?utf-8?B?TmFiNURGSHMvc0c5eFFzSjltM0YweTFaZXBLa2RFRGJCbUJIa3VUZHNTWWZp?=
 =?utf-8?B?TFpmZ2hIVUNZMlhQN2xkN3p5cDY4bFlGRlNEWkY1V0FDZWFuREpnbWRMaVNI?=
 =?utf-8?B?TWlkcS9waHZKNy9JL1JkQkVnc2ZveDJ6SXhlL2pZZ0VwZVhJMEREaUxLczJ1?=
 =?utf-8?B?eXk5STNGZjVXN3NPSXVydUlKTlJGQnhyQ2RpQzA5OTc0bHE2WDFxakpLdkZt?=
 =?utf-8?B?ODJEbDIyUklpQVhqYi94L0Z2cFUwK0l2bkFRdlhmL3ZrMUkzUnUyMzJ4dzlX?=
 =?utf-8?B?bnQzTkZtczhTS1dVbnJISmE3a1RjOUFvWFhmdGovdGZ0OGk1bHRod0p2eG52?=
 =?utf-8?B?UkNHQjR0WjcrZVpueUNWbEFnWGRoTzhiSTJIM2Z3cUZwZzdIT0RLWHBjWElv?=
 =?utf-8?B?YnR5ei9INEdxU3BGWENPZ2hjaDBWN2JyUDJDMDJUL2FjQ2RzR0k2d3k1L2FY?=
 =?utf-8?B?amxuYmptSTF1d01zVWhWV2JuTjNNUzRFemR4cFVkMU9QT2NhQnJVaC8ySjVR?=
 =?utf-8?B?KzJXZ0Y0S1BQL1krMnBZc3hCRDlXY01YVk9UK2N4aC9Ma2ZIeTJtekgzb1Zu?=
 =?utf-8?B?MURyY1ZCa1VMVTgySTNvNzFKWFJST0hPTVJDOW5NVUVqbjc0a2RtT2lIK0RH?=
 =?utf-8?B?eFIrMEYxbnFoaldYejM4aGJjM2ZrM3ZUU2ZTWEpuaXlXRTl2S0lwUkFldGM5?=
 =?utf-8?B?ZThjTjBhT3lTamxGNXRNRXZ1cEVnTnB0eFVXRzlFNCsxUFFTTGpnSm56ckx2?=
 =?utf-8?B?MkgwcG9KdklRZ0w1ZEcvTzZZRy8xdXdCcTl0RXYvTmVaNFFGRUxRcDF5TWZy?=
 =?utf-8?B?a2tSUWw0QjJTbjhyMmpuRllhenFuQzkxVFh6UVdBcER4ZElkaVowVE9QZFBt?=
 =?utf-8?B?NUJCcEljZkkrdFJRR1NXYytmYmZudmZXeVAzQ1dyUk5kZTNUeUp4anQvczc2?=
 =?utf-8?B?L2V0cEVqWmU2cG4vcFZRR3pjbWcxN0FFU2QvZkVDWGlHNEcrV1hCZFg3SHN6?=
 =?utf-8?Q?Z4I/URo81b2dvHvBK14AMI6cj6wrPi6BFgeMeIg?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07a4ee02-89fd-4416-7bf0-08d979852e9f
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6817.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 02:45:17.1750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 63ZAkpwQjqSvU/yWnnPNv8+LDmoJ83acEoENwMLU9ECxaiRbYxI5m7znNsXlDBYp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_194522_798011_56F7FAB5 
X-CRM114-Status: UNSURE (   7.25  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Recently I find that no matter what opp tables I'm using (default and 
op1), the RockPro64 board always failed to add the opp table with the 
following error messages:

[    2.443667] rk3399-dmc-freq ffa80000.dmc: supply center not found, 
using dummy regulator
[    2.444366] dwmmc_rockchip fe310000.mmc: IDMAC supports 32-bit 
address mode.
[    2.444527] rk3399-dmc-freq ffa80000.dmc: Invalid operating-points in 
device tree.
[    2.445037] dwmmc_rockchip fe310000.mmc: Using internal DMA controller.
[    2.445661] rk3399-dmc-freq: probe of ffa80000.dmc failed with error -22

I tried the default opp table (rk3399-opp.dts) and the op1, they both 
failed with the same messages.

Upstream kernel v5.14.2 (With one commit reverted to address the 
ethernet regression) and upstream v5.15-rc1 kernels both tested, no good 
result.

Is there some regression in rockchip related code that prevents the 
default/op1 opp tables from getting applied properly?

Thanks,
Qu


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
