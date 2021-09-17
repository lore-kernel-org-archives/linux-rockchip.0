Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39171C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 10:35:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C992C610A6
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 10:35:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C992C610A6
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=suse.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:To:From:Subject:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HkjIFde5kiSj3iZpHVheFa/OAKGihr0TYE/dIXI+yOs=; b=QoMuTBI6wnvAnRkdGN0l3IxtGN
	l3JFfCJZYWY6oNBmDmSWdp24PhWIwC01gtD5uZfpIdMf9UCWAerWMlvICS/o5FeZV/Flysa2AnL0h
	n6WgkPAC36ytiI251q60T3SEJDAp//+kdHLlZFVVeicRIUxDF9UHr4TUETF1L4GO8X9N7z0dfWiD7
	9r/HzhyljevjTaEHFVD/WyW0UzBtGyx6aDAqEsbd+/AfNmQK8U7tgRucS7jZD3OB2VkiCliN8p8HZ
	vbI/dxrOrGSgyBbz1zL4Wh4H7ZzXLGjzEqUHfxF/ZIquALe39fMK6QMmRQ5BaoUE910S6zn3jn3H/
	/V6pMYLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRBDF-00DnJN-E6; Fri, 17 Sep 2021 10:35:21 +0000
Received: from de-smtp-delivery-102.mimecast.com ([194.104.111.102])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRBD1-00DnHu-Ey
 for linux-rockchip@lists.infradead.org; Fri, 17 Sep 2021 10:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1631874905;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s/1v+uSlkdqOSWUgWsAo6QNKVdyOu1XX8DF/xpkSVYk=;
 b=MxccPR3TySBLu7nlbCJPPd+Rdxou9LEWN2E66fzcqS1lDRB/jLTyvYF4gYR5NKZkk9RTQq
 Cva5tuh0gJEmLyGQITVpPc+h+7ZMYbWCwcTaXDQ9mSNGFHvCuB3HEZ6oUyasbldbxAdAV0
 9PSofakeMGXJOsAspQ1n2QCuP2KGhOc=
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05lp2172.outbound.protection.outlook.com [104.47.17.172])
 (Using TLS) by relay.mimecast.com with ESMTP id
 de-mta-10-CHBGXJjvN5asZBoxvnWDBw-1; Fri, 17 Sep 2021 12:35:04 +0200
X-MC-Unique: CHBGXJjvN5asZBoxvnWDBw-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PxciygKigfbdkEXEnmp7Vzt4SNcflq+HIBsO8Yw5XHrdy7F/xDN4SS5p/nRlatmeE1inORwsauuwwrXIrOUde2sLwdfqs9SajOYgtigN1IJ1ONyWqs2CHHpFBLRhxglcolp3p4k8Ux77WXbVf2FpZ1P9f+KhpbIs24fN5/egbm9QOK7KIso2NornWASYMzeoD4I+ApEqA6xG7OX5p4v/U5sMLWI6e7jEL6k4QFQV7JbgTIXmh3iebyZbey99D750gfV8GhWVt9VHQPCkQSTC+9TK1Rn2Jzg8bgZi6RJo+BL4Dq5Xh1Kr5mf1wTZ80vz1NhtjuvN5n86CeS/58TGEgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=uf9pL+ejNOJnNAY6HxWEF/p20O4nehLspY3o+cL0c40=;
 b=gf9exMXdHqUfP7WGWu7rv2ljvpMB7CS4EEvLRL47VeYbzDxOyRBpq1VGb9t7dwhxcW4M5mwgIfk61Y9h2BFIBR6rXTQ/oHJyBp/yV9C81d8yI8XBGlBySa5AblZzEV8fSDLOzEnyoh1jOVeHm6JeaJ4l6DCY/EV+wHMh1G/cfT7I9LKRnIpNIDw4b5BmUXNhJWUl8Ybjb4m2Hq+OiK9amM2KvNhuDzKzQft0jQvdJ/65OUW3k8QNetQPqAecjlLxFQ62FioutxCxqvfi46FFL6asDFWgxZB7dwAb1PkSMjXp4HN9D7W2hB3dI6TBFOPYuF9yoMebzt47XaOAQ+JYcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=suse.com;
Received: from AM7PR04MB6821.eurprd04.prod.outlook.com (2603:10a6:20b:105::22)
 by AS8PR04MB7989.eurprd04.prod.outlook.com (2603:10a6:20b:28b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Fri, 17 Sep
 2021 10:35:02 +0000
Received: from AM7PR04MB6821.eurprd04.prod.outlook.com
 ([fe80::78e1:ab2a:f283:d097]) by AM7PR04MB6821.eurprd04.prod.outlook.com
 ([fe80::78e1:ab2a:f283:d097%5]) with mapi id 15.20.4523.017; Fri, 17 Sep 2021
 10:35:02 +0000
Message-ID: <8cd134b3-43cb-e623-e67a-21c93b718efb@suse.com>
Date: Fri, 17 Sep 2021 18:34:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Subject: Re: RK3399 (RockPro64) can't setup upstream opp tables
Content-Language: en-US
From: Qu Wenruo <wqu@suse.com>
To: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <0c0c80c7-460f-8a34-93d4-41351741f6ed@suse.com>
In-Reply-To: <0c0c80c7-460f-8a34-93d4-41351741f6ed@suse.com>
X-ClientProxiedBy: PH0PR07CA0115.namprd07.prod.outlook.com
 (2603:10b6:510:4::30) To AM7PR04MB6821.eurprd04.prod.outlook.com
 (2603:10a6:20b:105::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [0.0.0.0] (149.28.201.231) by
 PH0PR07CA0115.namprd07.prod.outlook.com (2603:10b6:510:4::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Fri, 17 Sep 2021 10:35:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 59743c5d-7939-4a9e-e82c-08d979c6ce6a
X-MS-TrafficTypeDiagnostic: AS8PR04MB7989:
X-Microsoft-Antispam-PRVS: <AS8PR04MB79898440DDD6345A4736CA9BD6DD9@AS8PR04MB7989.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IlEel4G2G+FBJDjQfz5G2nQQQgaMY8KQ0z+7nTbX9pt0pwKLI9cT/7TI+P4jC/DGT9kRMDI54ygKjEzfsl/2k7J7CWcOQhGVxfO6+3jqteu4K4anYWEVpHPieMWYFYyNsGzdoawoxV1/12lCie94mxbPI6PzlleVm95W04/oMOfwXLnEz1Kmw4taWxU7yIkCJbYPnwq4F3At44cxqrdXf5BYiRSFV0eN7Imsu90GZTRPKbdOf6sv3XwHgNDaFYVwkG5vQOG/KOZ3Uome4U1aMq4tWT1U98M6zcSWT5D0GJTmk57JVzV3fyWu1WRRhGkYyEHJaVcvwLGgUMviZgJF1aa9iMecBJQP9PLEEuGTZiVS8wv/aaFzrbgfJuZk1y7X+mctGBIaAprD3IuJbOVx5qWV8XCwq8rWTu5vjA8jgode0GSsrnRjqbMxCsQEs3viRMoKplvLvW6ic0Ixn8oqSKyZ5iIkOsVemlNkJSZ5RfMO6vInPmOHjDVoFcbftnvbdGys6C0alSV3gRiGp0yBfypaDvYIyykCVMCzuW2t+9CTlneB7oxCAcfRTE3BN8s2M6msVrq6rokhYr0c26JKW1fHcZeMEWoKpfaxeMKeqa4ELBlUIZ+VpaG25eR9ku8ppsUtKwnmVS5oD73QXoTxBoL2pFvz5KSRve8YniCSAUr7z0/khJPb+5iQoFzioKMgEaJHF5A9A9yqKEnpprTNTNmXHPREK4lMZIdVDQPaau5kmsf6m9fgpJ+1uvCNxgb2Om6a5DG9PaUkGW8fN0oiIR9RIQ44kFS29NU2g/5CtLZqQL/hxd8CFqCqfaeyaZtzCcmwp+DBuRyOhkl88XnkKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6821.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(450100002)(2616005)(186003)(956004)(6666004)(8936002)(6486002)(38100700002)(8676002)(110136005)(966005)(26005)(508600001)(66476007)(53546011)(16576012)(5660300002)(31696002)(83380400001)(66556008)(2906002)(31686004)(36756003)(6706004)(86362001)(66946007)(316002)(78286007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/FFJfKyAJnPGIvOCOeoztnfEyigjSYdHZNyvrC5Ka9xh0C/Epar3O/KQauqN?=
 =?us-ascii?Q?jeJGMxgS22mym7SIbhv2S2otTNylvD3aVqrdkyQVDTgk2G+440+h9jmYmtkA?=
 =?us-ascii?Q?E5SvxHHKAQAxWznXJfYkIo9kz+c7K+k4ZCQfxIBG0obmHCdIsK5L/MX4Fytj?=
 =?us-ascii?Q?2HcwyhuZ167EML48eUTc6xcymsF4fMCkaIs9+EFUFf19m1cWidDxn3wy8qQG?=
 =?us-ascii?Q?bRVngQnW3bSDwIWu9JB/SlLgwATwIhVeUis4mCHaRpxWNONpNo8FReaBUX+z?=
 =?us-ascii?Q?nXtPhANMHvKDg5qa8aeqRI8EcHtPdYHkcwVBljciTRKhppPeQa+vQtuNT2Ts?=
 =?us-ascii?Q?Khwrj37btP7KE6rbbkfzxdIbSfEL++RvbBLalsLBaEr849q4ejAqD55JhUzx?=
 =?us-ascii?Q?V7ogilN7NeChhIe8LVDhWOizpbT33pGN9W61gItRcHBBE8DWLfdafd1yM/Fx?=
 =?us-ascii?Q?xfHTqhNkNcMvqeSTn2mQwujnpe1EKpSFJ8TuqUfGIzTISv4XuhRh2cKYK+qR?=
 =?us-ascii?Q?x/B8Pfu4AIYw9ogtk6Rvpd5rDow3hN3Zj4RMb9VPJIfEdE23SXE/uY7U0uUi?=
 =?us-ascii?Q?PVyy/EstnWGuasHUz9VMM0u8LhY/HLNHtN0dKL9bcmAnGJwgokn2vyLTj+Mt?=
 =?us-ascii?Q?q1l1ubCArXTySdbhumxTtmbrOCDfcI02G4bWaeVciWeNxjFe+uAbDCVEKN5L?=
 =?us-ascii?Q?V9XjFXA7EMHb0FA1hCjQEoVVcgcIK6rH4tW8DjdcC2RyCnjGU7dKBZLNy2DQ?=
 =?us-ascii?Q?lUc9vLFfi/ciq/0c3aSqgIjFcXPGidFNqysrdIjH9QeCvzyP+rERKst+lI4M?=
 =?us-ascii?Q?suVwx8kFDXcdAGXuczAa7zr19kLMMv4+y6y196HsOgCnYMLjETMhMNlQ7ObL?=
 =?us-ascii?Q?EAqiJiN4AW5trz2Lm2D9zOSSPgcsoZ+899DP6uwT0L9wFKwZ/cZ4eRX/4Qm5?=
 =?us-ascii?Q?pX7hSsQIp90Rgg81uz05+Fb054MEHfhpLrzICJ5mhfuoR+RlmphexHNcW0xX?=
 =?us-ascii?Q?38/IK937oHLEiCeaw+ySzx7Ey8ookB+0wlnwwgYy/S1Bxt7HIerlXU1ymfrj?=
 =?us-ascii?Q?AwoHHSFvmQRnyuDRZYpvSOh1g+85a+5Tk9bRFjAilZScQDASDytdLUEhsTlX?=
 =?us-ascii?Q?9HTKx4yB5ZPcHgidI7AqRjgucn781cD0TPMHnpATRHlfu8fwYpNMheUX7m8Z?=
 =?us-ascii?Q?rmQuMv+2GuItgEM6olIZW0oTUpIDdX4uw6CC/vYnqvhUD/v4b1rQerCUR71d?=
 =?us-ascii?Q?RFng95Akn5NE0+1y7EPt7jXxxEGS3TVOlBxHPuNiiJIWNevJYbcpbyJ7x6G/?=
 =?us-ascii?Q?/9u3G9DLB54Y0vYY6btz3avY?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59743c5d-7939-4a9e-e82c-08d979c6ce6a
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB6821.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 10:35:02.6290 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PccvQWfwMlxbERJhs8TXl0yhWk7+D+O2oyzcnN5HxuTe75EOPCjNUcw1pPU10TGf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7989
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_033507_724405_C88887E5 
X-CRM114-Status: GOOD (  17.79  )
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

CgpPbiAyMDIxLzkvMTcgMTA6NDUsIFF1IFdlbnJ1byB3cm90ZToKPiBIaSwKPiAKPiBSZWNlbnRs
eSBJIGZpbmQgdGhhdCBubyBtYXR0ZXIgd2hhdCBvcHAgdGFibGVzIEknbSB1c2luZyAoZGVmYXVs
dCBhbmQgCj4gb3AxKSwgdGhlIFJvY2tQcm82NCBib2FyZCBhbHdheXMgZmFpbGVkIHRvIGFkZCB0
aGUgb3BwIHRhYmxlIHdpdGggdGhlIAo+IGZvbGxvd2luZyBlcnJvciBtZXNzYWdlczoKPiAKPiBb
wqDCoMKgIDIuNDQzNjY3XSByazMzOTktZG1jLWZyZXEgZmZhODAwMDAuZG1jOiBzdXBwbHkgY2Vu
dGVyIG5vdCBmb3VuZCwgCj4gdXNpbmcgZHVtbXkgcmVndWxhdG9yCj4gW8KgwqDCoCAyLjQ0NDM2
Nl0gZHdtbWNfcm9ja2NoaXAgZmUzMTAwMDAubW1jOiBJRE1BQyBzdXBwb3J0cyAzMi1iaXQgCj4g
YWRkcmVzcyBtb2RlLgo+IFvCoMKgwqAgMi40NDQ1MjddIHJrMzM5OS1kbWMtZnJlcSBmZmE4MDAw
MC5kbWM6IEludmFsaWQgb3BlcmF0aW5nLXBvaW50cyBpbiAKPiBkZXZpY2UgdHJlZS4KPiBbwqDC
oMKgIDIuNDQ1MDM3XSBkd21tY19yb2NrY2hpcCBmZTMxMDAwMC5tbWM6IFVzaW5nIGludGVybmFs
IERNQSBjb250cm9sbGVyLgo+IFvCoMKgwqAgMi40NDU2NjFdIHJrMzM5OS1kbWMtZnJlcTogcHJv
YmUgb2YgZmZhODAwMDAuZG1jIGZhaWxlZCB3aXRoIGVycm9yIC0yMgoKU29ycnksIGZhbHNlIGFs
ZXJ0LgoKTXkgc2V0dXAgb2YgVWJvb3QtPnN5c3RlbWQtYm9vdC0+a2VybmVsIGlzIG5vdCB3b3Jr
aW5nIGFzIGV4cGVjdGVkLgoKVGhlIG1haW4gcHJvYmxlbSBoZXJlIGlzIGluIHN5c3RlbWQtYm9v
dCwgZXZlbiBJIGhhdmUgc3BlY2lmaWVkIAoiZGV2aWNldHJlZSIga2V5LCBpdCdzIG5vdCBsb2Fk
aW5nIHRoZSBwcm9wZXIgZGV2aWNlIHRyZWUuCgpBbmQgVWJvb3QgaXMgbm90IGxvYWRpbmcgdGhl
IHByb3BlciBkZXZpY2UgdHJlZSBlaXRoZXIsIGFzIGl0IHRyaWVzIHRvIApsb2FkIGZyb20gIi8i
LCAiL2R0YiIgYW5kICIvZHRiL2N1cnJlbnQiLCBub3QgIi9kdGJzIiB1c2VkIGluIHRoZSBkaXN0
cm8uCgpUaHVzIEkgc2hvdWxkIHJlcG9ydCB0aGUgcHJvYmxlbSB0byB0aGUgc3lzdGVtZC1ib290
IHBhcnQsIGFzIHRoYXQncyAKd2hlcmUgSSBzcGVjaWZ5IHRoZSBkZXZpY2UgdHJlZS4KCkN1cnJl
bnRseSBJIGNhbiBqdXN0IHJlbmFtZSB0aGUgZGV2aWNlIHRyZWUgZGlyZWN0b3J5IGJ1dCBJIHJl
YWxseSB3YW50IAp0byBoYXZlIHRoZSBhYmlsaXR5IHRvIGNob29zZSBrZXJuZWwvZGV2aWNlLXRy
ZWUgY29tYmluYXRpb24gaW4gCnN5c3RlbWQtYm9vdC4KClRoYW5rcywKUXUKPiAKPiBJIHRyaWVk
IHRoZSBkZWZhdWx0IG9wcCB0YWJsZSAocmszMzk5LW9wcC5kdHMpIGFuZCB0aGUgb3AxLCB0aGV5
IGJvdGggCj4gZmFpbGVkIHdpdGggdGhlIHNhbWUgbWVzc2FnZXMuCj4gCj4gVXBzdHJlYW0ga2Vy
bmVsIHY1LjE0LjIgKFdpdGggb25lIGNvbW1pdCByZXZlcnRlZCB0byBhZGRyZXNzIHRoZSAKPiBl
dGhlcm5ldCByZWdyZXNzaW9uKSBhbmQgdXBzdHJlYW0gdjUuMTUtcmMxIGtlcm5lbHMgYm90aCB0
ZXN0ZWQsIG5vIGdvb2QgCj4gcmVzdWx0Lgo+IAo+IElzIHRoZXJlIHNvbWUgcmVncmVzc2lvbiBp
biByb2NrY2hpcCByZWxhdGVkIGNvZGUgdGhhdCBwcmV2ZW50cyB0aGUgCj4gZGVmYXVsdC9vcDEg
b3BwIHRhYmxlcyBmcm9tIGdldHRpbmcgYXBwbGllZCBwcm9wZXJseT8KPiAKPiBUaGFua3MsCj4g
UXUKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
