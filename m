Return-Path: <SRS0=PymM=KP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8895DC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 07:54:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E0CEC61059
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 07:54:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E0CEC61059
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=nextfour.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2l6FzbmMM+vfSixnzOTOHaX61QpRPdqvYl+OPxA9G8Q=; b=qBtgdfH52b5Ad2
	oEV60Q4sNdT62tUUeYaGU6YKO4EGCS+Mx499RjST/g6NbrXtItdh9tRaXqQYb5Mds1FnSozJLnr0c
	Hk+sSpZ4RtSzdCbzKa5/U37OWZZz6TLMElJgx0inJ7TxsIZ9LGQGraSvSitOmo4fUSA+KS5TYy26z
	HTu2ibN1HdARQ0WR2LzEvL7SrUo5ecCmVn8DaNpSYaO7AcrA60VdUOxLG2bhix46AC7RlTOp86FFS
	214gkM58ek4RWDAWksU+aEvmwiCB958a4e8plzBZUt9lZ+kLY1F6LIqkwuYg6tfqQ4c12YtQN8tl7
	mXzZNbaLxg9xXITFwefQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljdVJ-006BFR-Jw; Thu, 20 May 2021 07:54:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljdVG-006BEw-Af
 for linux-rockchip@desiato.infradead.org; Thu, 20 May 2021 07:53:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-Type:Date:Message-ID:Subject:From:To:Sender
 :Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:References;
 bh=pZP59PmGdFPMWHpWSw557YREOlRQ83aFNaE4G6txA1w=; b=TJkln6J8hNz+svQN8YWasCc09A
 qG1L/8Ry9QWC7WeL/UJ/RaJ7LA72PtFoEXb7J5VGe5g0o6/BJYwGgSRVdHbBHrCbR1PMY5R/LLYnt
 OHsv2+dYR8N1OM0CmqZxaP8DTQQnsjYF6ygGvH8GUiBSUNhUVWoXrXfaFUm3Rw4c/EZn2NJtldg+E
 oTxsST3gKGnyZ0dONjK/3zI/ZwVjhgVJl9CxmQ+Xakp6TiMr4AiClE7nGNPGy0MdwGmXUBTMeprC5
 i9Vd72bOf8efB/uN3B6GXzOZY50Qr++g9JwlGKBqL4XddZf7e0+KfM7bevNnmy69KMwwVkMknkN9i
 NTEC0SAA==;
Received: from mail-eopbgr150073.outbound.protection.outlook.com
 ([40.107.15.73] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljdVC-00G2iG-TG
 for linux-rockchip@lists.infradead.org; Thu, 20 May 2021 07:53:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D5Q7F0mgoX/krvJ6Wi+uYZRJzOt4OKDWw54PJLPiRHHvCmSgvtBSz7aEsmWZyAMeQeeHOpBB0yhs8WRnygw3CBPmmkdd0X3Ee1AZt22/NwUXFkyAJYjSAYDrxI3yxlw12LsoNLZS0t+5drcloohuYx7RUL1rm4ZsUM2T4TFhftCfFXizFjThaWt/uOfSjtx2JrwT4kNVCt4qJqQD5MU9yAinKV1V/dBKsojqApAa7UBOS42KKVBQIyz/Qvki7JsNtb1FMfJbcPH5ruao3qyK6gtH5vPqTAH/l0pE0thw18q5WpP3lvUDvQJjT2aM3rDC/Z71bczTZfAdN7R6sgfLVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pZP59PmGdFPMWHpWSw557YREOlRQ83aFNaE4G6txA1w=;
 b=ksxgbCgdtrq4tNZI8OlxvcuzzLWzLWaerMxK7DgKZLazLge/jSejhBO7jGafOUPptbIOR8DMXatHNItQPe+215q4aiwbqQlw2eFPIgSmWgc4LO4Yvei+eOl9fJAsr/1bhC4UEoN5/GdS04CW+QUdHfCr5VESmBxI074WjUYipLr51O2vzxzqi96jFrA/QNAIyLnoLhMfbEMNpr3egLIlWmsBO9w+3b+eAua7USLlHx+twckjDjiJvhu0Xe0OJPLZopib3DxdQ8elO/HwskYGGvGnzqj8dHtjvkxdaPi0+fGb8iUxUCpbCg8liUVniZnxIH77SimiWITpzP0Q3f2Q1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nextfour.com; dmarc=pass action=none header.from=nextfour.com;
 dkim=pass header.d=nextfour.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NextfourGroupOy.onmicrosoft.com;
 s=selector2-NextfourGroupOy-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pZP59PmGdFPMWHpWSw557YREOlRQ83aFNaE4G6txA1w=;
 b=JPcW9bI5hetWOAvIxpQCNSlGn+gpcTiPt/wulRdocrKqO2bVDTrwJQpf4+abZKp2A2GHhblwBO6V3VzNVfPS11HR9qisCOOUXkvFEXCWGNAvjVBINOw/05utwK4zdyfdi9KRSAUiohzJnizyoA2qHF9n1SRvIG57c6tSVrMjvrA=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=nextfour.com;
Received: from DBAPR03MB6630.eurprd03.prod.outlook.com (2603:10a6:10:194::6)
 by DBBPR03MB6729.eurprd03.prod.outlook.com (2603:10a6:10:209::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Thu, 20 May
 2021 07:53:48 +0000
Received: from DBAPR03MB6630.eurprd03.prod.outlook.com
 ([fe80::593:3329:e104:239]) by DBAPR03MB6630.eurprd03.prod.outlook.com
 ([fe80::593:3329:e104:239%5]) with mapi id 15.20.4129.033; Thu, 20 May 2021
 07:53:48 +0000
To: linux-rockchip@lists.infradead.org
From: =?UTF-8?Q?Mika_Penttil=c3=a4?= <mika.penttila@nextfour.com>
Subject: rk3399 puma (Q7 Theobroma module) suspend to ram fail
Message-ID: <4d38b12f-a309-7927-892e-b056a3a55cb3@nextfour.com>
Date: Thu, 20 May 2021 10:53:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
Content-Language: en-US
X-Originating-IP: [194.215.55.162]
X-ClientProxiedBy: HE1PR08CA0055.eurprd08.prod.outlook.com
 (2603:10a6:7:2a::26) To DBAPR03MB6630.eurprd03.prod.outlook.com
 (2603:10a6:10:194::6)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.10.99.8] (194.215.55.162) by
 HE1PR08CA0055.eurprd08.prod.outlook.com (2603:10a6:7:2a::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.33 via Frontend Transport; Thu, 20 May 2021 07:53:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a6338ab-1bc7-4db2-93f5-08d91b6466e8
X-MS-TrafficTypeDiagnostic: DBBPR03MB6729:
X-Microsoft-Antispam-PRVS: <DBBPR03MB6729A4DF7C3BA779484F7A86832A9@DBBPR03MB6729.eurprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lvCbDBSe7VbgbmxhdmMBaeYWe+7abuGxRT0z2kq0TBA356MDCS/Ugq7BMpKFwNGmH9i2Gj2mNFeE/i4lZQWtywJViU7g0ClNlpqalSUQbgASsGPbMh8mIBvLeZvvjxAkSYtJ6bo4xLw/ls8O8Fv+kGOdklWBVaCTQZd57VysnUPR+1DE9xf2/BT7gcY4VxKVtI10BVob7pFjuJoCZlWDjnesDzhsRHc9JwL2M6qlDnBgP1s4eMWSxpAMVWylzN2qJhLPQg2AT3dT0AHSF3aAhhYdJXzFMfwN+JwYnv5+OKb+gjQyO6PdK3RTSCFybQTgRzV+KZuTarZqbAVdElmcuIZm5rtDeOEgK/FvKinh5VYmIzIO8tJzR76O9WAVA3S48fegliWo5ArMQBl+dn0l+lM50gnDIjCoXe5VAc9FDd0uS00r2CznPoCgjt53m5ckVjijfW19q+Q/4hg2tIedACQXDutxFzt5rK0fDJEJ0T68tvN4kcDMrj+3B2TA5rhwHqstobTYpPABPH2oZledsX8L4P9e4e58ebtIkTdIrAT1NRAz/9YGf1o862ApK875A+76pJAWqZekumKEIWiLv8X02JTW1Gm9HQ6Nqfo64X6Vt2+0sBPBCSt49LqztZDs2bMVKLAFr/XUv3VzGN1MbanLiRvw3vRoB7/S+x7piiDKVBxQxleJw001kD6kUjXbdfajg+eGwtiNIQoDgDkSB8QJ+9sQ3LI5JTE52z/9IUw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBAPR03MB6630.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(376002)(366004)(136003)(39830400003)(31696002)(6486002)(956004)(52116002)(8936002)(66476007)(8676002)(66946007)(66556008)(5660300002)(36756003)(2616005)(186003)(2906002)(6916009)(16526019)(558084003)(31686004)(86362001)(316002)(16576012)(26005)(38100700002)(83380400001)(15650500001)(38350700002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?dFROR3FqSEozcjlvTlB2SU9aUEd2MVF2bnBSL3NvNGtaaGV5enl0bzgxUmhp?=
 =?utf-8?B?R1EreU5JdHYvTVgxSW5ROURyV0xWSmJwWjJxNlJJQlB2RUphZzlaNGFINExS?=
 =?utf-8?B?ZUkxTm53UFl4TVlEeWhmaHZwR0VtZDFwTUFTZ2VEUUsrVmZjY1Y4TWVMVWRR?=
 =?utf-8?B?cDRZSmYwQ2pWeXNtRjFTV01MbGhHUGo4QVBPTGR3dHZnNEs4b0FMeHYxYUhw?=
 =?utf-8?B?RXp1K0lNRVREOHp1ZUl0bXB3UzFjODNtL3lNdDU2R3RkV3hNRERCV0dYRncx?=
 =?utf-8?B?amlXOGs2NE9OVTRmNkxoV1dGY3drTXFIb2YrWWw4Y2hMU2hEL1Q0Sy83MFFh?=
 =?utf-8?B?Q3dvUGlRM2dMQWp0NnlGY1B3eFdRKzM0TTV4S3B6N3hsRkgvTnlFUWNFNTdC?=
 =?utf-8?B?UjRjVEJFN0UyRVRXUDFWNVg3dnpRQzEvWjFhbXlneWIvOUU4ZzhuK2t0SGs4?=
 =?utf-8?B?elAvcHZESFRVSytlNTZSTzRvL0p1N25yUzNYRkRab0QyZlgzdW1FUG9OOFVy?=
 =?utf-8?B?LytFMm5YV01UUUhIc05NTERPVlRZQXYyelNOZUZocXZxcFJJTkplbXh5bFBp?=
 =?utf-8?B?amUvNkRQTmRBUTVNOGNXVDdDQkJoaU5jU3dDcG9WWjcweE9UM24yaEtCcSth?=
 =?utf-8?B?STdQTjF0dkdEby9QbkJPTm1yL3BmR2FlcFJHNkZYV3VlRUtOZ3ByTjB0Zjk0?=
 =?utf-8?B?K1lwRnVUUTJVeXFhbndiQ1ViOGRXU0ROeUxxTXRlUHprUjB6ZjVyUmRVbm5E?=
 =?utf-8?B?Wkx2VmowRTNia2RVSnVvYmVOT2w2eWJwMmNMNDBBK3BOUE9qNWc1ei9BY21M?=
 =?utf-8?B?Mng0Um0xdTZJOEM4YlF3ek5lbnFEb2R3K2R2MDNzN2FkWXMrR3ZENWNOQjVs?=
 =?utf-8?B?TW1BNnpRWVA0MGhHSHZxa25TSzQ0d0diMjJrcGVTRGVyYXhTR0lmSEwrUDNu?=
 =?utf-8?B?NktpcUJWVzBKcW5WS2hZajJjemUvVUpoOFFBV0ZCaU03a0RPTjBYQjdnSEJE?=
 =?utf-8?B?SjV0U2ZiTHdHbndNQkp6MGd4WVE2eE52cnpPNWNQdW5iV2JrTGJ3eXl3WnVS?=
 =?utf-8?B?WGd4QzNvRnNZeFh3eHhBV1JmbjZkU2dpakdBWmkvaVBDemlMNStremdpR0pV?=
 =?utf-8?B?Q2pzTXhyeTlOM3BkOFY0cmNIU21DandueWsxYmtFY2hNMENPOGV1cUhpWitK?=
 =?utf-8?B?VUFld3ZkS0NEWmpvWnB4V1RWbFJ0V3QybG5qVFlVKzRNYlFaeE8vWDVaRVlQ?=
 =?utf-8?B?V1pXN1JiTnRNeUxLSFVPQURBOUxGc28wTHgyL0xQeFg1czdJNGdwb2FHdmxo?=
 =?utf-8?B?bkUyNmFWN1lJb3NVTk9hcTNBcEszcm16Q0ZMNnUrZE1WRU5Ib2c3YmlLZUJp?=
 =?utf-8?B?NThJVk1sc0lXd0szeE9MNVh0dStsV1pTaHVLM1dNUFJYbTZ4WVY4Sjk4RlZE?=
 =?utf-8?B?TU10b1psRGM2c0hoNUZrYVZqVmhLb094TnpVaS8vc1Z1Ym5OZy9qZE9hcWl6?=
 =?utf-8?B?Si9ZbkIrUFFoOEc3cTl3aC9KdFZCM1BJcDNOeW5rVCtkbzV4Rk0vaDlsVmMv?=
 =?utf-8?B?VEhmTHZ5YmVsTTRhaGIwYmJwWjIzc1NDcjVManV0NVhMKzhnb1ZmU29kdFF6?=
 =?utf-8?B?UEVYVzNYbHN2TGNwYWluTnNlMXE1WGk2SnpGeUo2TXk5bjV6UU5OSk9WUEpZ?=
 =?utf-8?B?YzBFcjM0d1AyQTZ2QWhiWnJCQXk3VnZCNnJxc2pmVWVXaXdXSzBkVGdOK3lR?=
 =?utf-8?Q?TTVxOLFOpBGb28byyjrErVdf4TahgMv05Jcv2Gd?=
X-OriginatorOrg: nextfour.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a6338ab-1bc7-4db2-93f5-08d91b6466e8
X-MS-Exchange-CrossTenant-AuthSource: DBAPR03MB6630.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2021 07:53:48.8108 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 972e95c2-9290-4a02-8705-4014700ea294
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VngvP4vIY5uBuyVhSGOVhbG+XPNLayqSLWZWJRifmH5RwVgIAh6oPhsE/OZCNB7dMeMPIa5f5HVU51ilnl88mkLzFIlddowyC1uPWyx2Bv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR03MB6729
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210520_005355_038305_39C366CA 
X-CRM114-Status: UNSURE (   4.40  )
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

Hi!

With current mainline kernel, newest ATF firmware, mainline uboot, 
suspend to ram with this cpu module seems broken. No wakeup at all.
Anyone with a solution or success wrt this ?

--Mika


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
