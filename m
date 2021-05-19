Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A046C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 06:28:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB9CA61059
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 06:28:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB9CA61059
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=suse.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GvEl+Rtwbgt2bzWg1AhaWD7JqK7u+FZc9JHwR9POiTg=; b=LPQ/tFy50UIOKD9QHae5ZRc4N
	3y16L/sfADL5bV+NekPejqx1hOOGdS7NegW+gIirc7rNHhLi+fsjqJG/K1XGdaMToSsYdwp/4aSpA
	QJJHBAKHIfMt3ZAJsJVA8d1pkt5IvgwrXfRu0gtzNmk/+7JsnKn2ed+P+lfBoxhFmMsSh4U7z7MHE
	Ii5A232LTSakYNcKHEn+uI2gPys2LQG/juH7H0lIg5KLLhWy0ZMkHfWcXAc46nd3eQbzVBCRRDKRu
	vyqdcBhxZLPU+Pbytr9vat9qU1M9KeWR37KkJK3tmL4bJbUOCMeZQihJgQ0C8rChCQpH+33GIKUWi
	XzToN1Ckw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljFh7-002z36-1P; Wed, 19 May 2021 06:28:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljFgy-002z1n-3e
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 06:28:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:Message-ID:From:
 References:To:Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=kw4kA/pet+frMQslwIEpZg5UnIVmC9KQfBlEPUQhIlA=; b=CeI0uwewumanLYzQkbZYR1KH4F
 tG2xATqmJjYwBZT2qvzagT0VFMrIXpZb+YmPvQTrK2qfiUXzUX2X/T5LwJc8yNC3WBLpc0mYswRqP
 swf9GreWQljDrHlnoYSQ96XzKfEwKZr/tUFapO9k54/ma3n+NVIMtEaWxEQj7sOglH3JGl6E878Ef
 Y/EA6cb3aK3Ghav8wGF3sNRurhU7SHfnkhk2wJPlZTIwvE9Mcuke6xdXqKnawfIUFCWcEEISvUrTx
 55ef2PPKuwfF2vILN6IWZspB4jvzbbCvx34/EPA3KW7pTE0ETjrBfAsYFu/vZj9O2GsnXWZOECj0o
 7Wt4GnnQ==;
Received: from de-smtp-delivery-102.mimecast.com ([194.104.111.102])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljFgu-00FBBN-DH
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 06:28:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1621405699;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kw4kA/pet+frMQslwIEpZg5UnIVmC9KQfBlEPUQhIlA=;
 b=SKOL9FCQdMAqqSldYEyAOKIsZOLI7RwqeTI5pUupsqVN7XhA+c/Cal58p7ZDv3SEfHq3aY
 21EgvNIjLZ1C3NG2CI2T+zMZGGO6E/QlGVCKBF/nTiOl76No7XJkA3ce/AsVcWn2Dwvrls
 xtNpR0vJMgaDN9fvZwcypTjwvBV7YaE=
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05lp2169.outbound.protection.outlook.com [104.47.17.169])
 (Using TLS) by relay.mimecast.com with ESMTP id
 de-mta-26-k1uQpaf_P2-fW0BPnp3HuQ-2; Wed, 19 May 2021 08:28:18 +0200
X-MC-Unique: k1uQpaf_P2-fW0BPnp3HuQ-2
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5MWSl6shka0LIoPCYbrG5yHTHC9GWNkVYB9zWz0BDY9Gwa+o6V2b8nN289QJKtxTIPUUvtX7pNg+UqhKaWjdzDoIO53PROKmD6US7G8uOgJAVmcaBO8JhhXf2/KpzrAg7XwRn0o4v7ChxXQkosNmNbx275ga05BcuIv+l188wnictG8gScVBFVSDlb3IXymhrssDAeaxJOW978wZK0GzN0zfJM1p6vxF2Ozav/kUjY7oWpUSCoci39Jf9FEyWrDly6aCENTTulEMpDyOfy+xA/EWFhrqYqeDBdslyUds0QAYx0+/O+N66Kfer9waoQdKG5s9WaDYJcJC7EWtGiPlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g/0O1vZ5IMRdp4+t5Pug4zsQ7h0vIDLE7b+C0SiAQUM=;
 b=bU6GgB1pYF/n9Y2y7hJMKx7IdLDZuBIebuFWlt/xd24MJwh8MsMc33Gs+jjkZDiKmCCPkSgba/gldcsc65NWsI4gyiypjRhWkRXRDuY+505wpqKGZql+ZUyRn6E5SEoPQeXaEQJI/jxU1wl/LPknBo/regJ04ERCne4eL2PlO3dMvEhOmvNDGZ0xY3vGFhgO01Ag12eTGoFWeNfutrUOXOdxQ9cA5yqIoSh4rj2u3cxFOmYaR1809wXWhuv5lfx2/DHP/DPeAIfVzFoLRh3WHRQSQFBi0xM7D3lalWcXD0ACV7w/+IKgHtf8PjFl1jO11v4qcg043lpqs0ih+HpMTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=suse.com;
Received: from AM7PR04MB6821.eurprd04.prod.outlook.com (2603:10a6:20b:105::22)
 by AM6PR04MB6182.eurprd04.prod.outlook.com (2603:10a6:20b:bb::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 19 May
 2021 06:28:16 +0000
Received: from AM7PR04MB6821.eurprd04.prod.outlook.com
 ([fe80::b8b1:d726:a3c7:9cb]) by AM7PR04MB6821.eurprd04.prod.outlook.com
 ([fe80::b8b1:d726:a3c7:9cb%7]) with mapi id 15.20.4129.031; Wed, 19 May 2021
 06:28:16 +0000
Subject: Re: [BUG] rockpro64: PCI BAR reassignment broken by commit
 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit
 memory addresses")
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 heiko.stuebner@theobroma-systems.com, leobras.c@gmail.com,
 Rob Herring <robh@kernel.org>
References: <7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com>
From: Qu Wenruo <wqu@suse.com>
Message-ID: <09cbf655-0f13-5df6-b6a9-4a6a784e211d@suse.com>
Date: Wed, 19 May 2021 14:28:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
In-Reply-To: <7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com>
Content-Language: en-US
X-Originating-IP: [149.28.201.231]
X-ClientProxiedBy: BYAPR11CA0067.namprd11.prod.outlook.com
 (2603:10b6:a03:80::44) To AM7PR04MB6821.eurprd04.prod.outlook.com
 (2603:10a6:20b:105::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [0.0.0.0] (149.28.201.231) by
 BYAPR11CA0067.namprd11.prod.outlook.com (2603:10b6:a03:80::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.25 via Frontend Transport; Wed, 19 May 2021 06:28:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: addf5601-b55e-4b70-c245-08d91a8f4976
X-MS-TrafficTypeDiagnostic: AM6PR04MB6182:
X-Microsoft-Antispam-PRVS: <AM6PR04MB6182191FF919BA15932E2F84D62B9@AM6PR04MB6182.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:422;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AAPsfr4jNFZayauX1Q4QtpKRlIVski1EbI5uZKWLErirHplo8k1ip+7um1yAIMuB4qI0XdjAvcQBayNppERwViG4uTCqdCDOsZkbZnMIOtlMfm8RhBg+YuxmbzJu3p5hLhIJFmBbH4dFWhOPQY9ZXUF5KasMxCsRmY5Qgr+Bm6uVpW/dFgOVhemu/BhzMbxeFfjBZky59FiTe73c2j87ZRqZTF4bxl4Rg6/CNw9EDw0QmUZhxHdigKWl+6VNLenzIzihogyG7s+N5GOPE1fTVUO4/vvgY2TqjDB1v/4xen/IyUA/RMmP1hwe0sS7CDNe9I1q38hV7YZvg1OtZzW0sIyk9peNWfxlI+8lxR49EOjt+PEz8T8Jyj6hO/SZVzIKHqaFQOQkcVv649BFdgALv+NE+XE6wZga/Tdk+c4j+Jc7ECjAPGGTP05+0Y6qJ6vsZmrZoV9kAHQ/yksx0Gw0aybqIt+QSa19YGZc7tXdz1AgRLOINc+bEKzjBp70T5op1GIn23PZm1zz4Xd94RcdJAZ655VJgJu3/DtobOojPH0ZmiU9HlmW7N05l0EcGq3GCg1cjAbcIFthQf768GXUSc6Vh+XxcTrG1or5h+CfWOBbEJHXZMAlDCAcsxUFLENNwo9kfA2T0kfu2ZzLu8huFZqWrtaZgzaKfeknU/fMh/R8r1LG5skpZNbSlDB7ASYLZeRqsrKkkDtDrQSQivF5i1tvaldQAerLEjRUJhDOvH9dK4ImM0bhFCUOn7Lc3IdTpIknTmJFoTish80bNAyeq5oqTNAxk5fSIY+hNAFSXW4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6821.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(396003)(39860400002)(136003)(346002)(2616005)(66946007)(66556008)(6706004)(66476007)(16526019)(956004)(31696002)(2906002)(36756003)(86362001)(186003)(6486002)(110136005)(26005)(83380400001)(31686004)(38100700002)(8676002)(316002)(478600001)(6666004)(5660300002)(16576012)(966005)(8936002)(78286007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?O5NHiIGY7e42FELeRuSnsW0Rsc8UjF3MZSGNWXHiXlXJyk+kr24Zll5U8Sm2?=
 =?us-ascii?Q?/erBWOKBMb0pq43AyWqQSxNdPTs2VTPvahalvJnpihc/szjIXHqBUjxGOOgh?=
 =?us-ascii?Q?UDQn3ck2c2F0MDd2OwHyZtCZDE13Qp2Z214mMlRtPv64WgWJg62OltXKsQ5W?=
 =?us-ascii?Q?vpKkP2ToTwQ7D7Tv2ksHTawf7EMx4rZ9vSwqscM8ESODBPsDHGdkSHHQKDj0?=
 =?us-ascii?Q?+er3Vwht34D9srf4TAd+iGql8GJkJmU5TaxFs3zeRm428ccUbzFCyq3+seHA?=
 =?us-ascii?Q?DNwlaiG37LMzTUBsUHkhckkD39SXS60bhv6QsJMzxZhjQfxoXkmmobLX5j9T?=
 =?us-ascii?Q?cmfZ0nLsiiZ6rS7Y4fgX+W6MpGiKSmxThuQRiTMD2Cq62D23LIgKEeuBF8bG?=
 =?us-ascii?Q?gGKixbOmrxL6NHPuOTg6kqiiAlurmLJMygx63kD+8qD1RbFuwbgdubq9VIka?=
 =?us-ascii?Q?PEez2eJD337Lp+ABdaALQdHOQCGTPsnDV6qq/3Kpz6BrMB1F8h86yNxIBGio?=
 =?us-ascii?Q?3uapHdlhMheSlprzFtoqGoVhn8uhpp/xcuh+xaPckZJzYSFvs0pUikfgv/mV?=
 =?us-ascii?Q?HXNN3FkaNH/71QyxxM765fsv/5mnl7zfpGRaxg3NKWwFbzm2BF0dwSP4KaLy?=
 =?us-ascii?Q?u0lQ3va3Qzhp6NXS+yKhVPWstNJZoxmYZFp7QtIArjssMaT87VkDUudRazeI?=
 =?us-ascii?Q?MO7px5fnlFLIDOjqrT0hK0Xz2ZH1ZJ34BIh+FyDT8uCKgDN7wTytvVdmpmhf?=
 =?us-ascii?Q?91PodUbSZBFwl/fbRiXYi+FNvb8RP+CsTUmIu8LY4Cno25GObgqcwX794qKD?=
 =?us-ascii?Q?h/Hfcodu6Yd6P7NTdbu2qTgIimfAhUeJaR0yJLwFtBxm/mU86WfDVlG90Jxr?=
 =?us-ascii?Q?EvbDk2i78DYBkCSHFcoHSjryRv8DlUAxybnzrM6PwvFrtcCQ4M7MEbojVGgo?=
 =?us-ascii?Q?UcANN/xTziisbr+oJCLfVGrbnSM+QWWoZn/ziMpmTQci5AvOYoon8Z4sLAZU?=
 =?us-ascii?Q?DSeCdJhr7mBQZtMDOIFtlWMu9JtSJVhWmIth34HmwSU7lmLN87xSzufb5fCX?=
 =?us-ascii?Q?GTdBt2s5D7glaCl9s20lpLJlL8gdYu2Ds4aV0ruiSyEP6zRXBcZrOejA3Gpr?=
 =?us-ascii?Q?YCi/gYbEsmKk0ZgzqIIyODwG7XzwVwUkBYbViPUBWXizgjvNlHj6U3fvbI9L?=
 =?us-ascii?Q?HK8ugcg6fAhzUl3rBEYk3f4GbnnU1MSGkP4fYF9sHbDLCg9cbx4VoWrH5HN5?=
 =?us-ascii?Q?HEalH0BZZm4JUrclyaoSSRJOlxcI0GgomffNHSrIA17lJ+XKj8wo1B68QZcW?=
 =?us-ascii?Q?RK6tQNNqnn6pKOY6O11iZ3ot?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: addf5601-b55e-4b70-c245-08d91a8f4976
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB6821.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2021 06:28:16.6115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QBpzCGO2vXJ51vPwkZWD1cteLy8qOOK0HljGTJAd6nf6vMk276/gc21vDtHLNIgw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_232824_789180_94E290E7 
X-CRM114-Status: GOOD (  20.93  )
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

CgpPbiAyMDIxLzUvMTgg5LiL5Y2INTowOSwgQWxleGFuZHJ1IEVsaXNlaSB3cm90ZToKPiBBZnRl
ciBkb2luZyBhIGdpdCBiaXNlY3QgSSB3YXMgYWJsZSB0byB0cmFjZSB0aGUgZm9sbG93aW5nIGVy
cm9yIHdoZW4gYm9vdGluZyBteQo+IHJvY2twcm82NCB2MiAocmszMzk5IFNvQykgd2l0aCBhIFBD
SUUgTlZNRSBleHBhbnNpb24gY2FyZDoKCkknbSBhbHNvIGhpdHRpbmcgdGhlIHNhbWUgcHJvYmxl
bSwgd2l0aCBhIFJvY2tQaSA0QiBib2FyZC4KClsuLi5dCj4gW8KgwqDCoCAwLjM5MzI2OV0gcGNp
X2J1cyAwMDAwOjAxOiBidXNuX3JlczogW2J1cyAwMS0xZl0gZW5kIGlzIHVwZGF0ZWQgdG8gMDEK
PiBbwqDCoMKgIDAuMzkzMzExXSBwY2kgMDAwMDowMDowMC4wOiBCQVIgMTQ6IG5vIHNwYWNlIGZv
ciBbbWVtIHNpemUgMHgwMDEwMDAwMF0KPiBbwqDCoMKgIDAuMzkzMzMzXSBwY2kgMDAwMDowMDow
MC4wOiBCQVIgMTQ6IGZhaWxlZCB0byBhc3NpZ24gW21lbSBzaXplIDB4MDAxMDAwMDBdCj4gW8Kg
wqDCoCAwLjM5MzM1Nl0gcGNpIDAwMDA6MDE6MDAuMDogQkFSIDA6IG5vIHNwYWNlIGZvciBbbWVt
IHNpemUgMHgwMDAwNDAwMCA2NGJpdF0KPiBbwqDCoMKgIDAuMzkzMzc1XSBwY2kgMDAwMDowMTow
MC4wOiBCQVIgMDogZmFpbGVkIHRvIGFzc2lnbiBbbWVtIHNpemUgMHgwMDAwNDAwMCA2NGJpdF0K
ClRoZSBzYW1lIGVycm9yIGhlcmUuCgo+IFvCoMKgwqAgMC4zOTMzOTddIHBjaSAwMDAwOjAwOjAw
LjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAwMV0KPiBbwqDCoMKgIDAuMzkzODM5XSBwY2llcG9ydCAw
MDAwOjAwOjAwLjA6IFBNRTogU2lnbmFsaW5nIHdpdGggSVJRIDc4Cj4gW8KgwqDCoCAwLjM5NDE2
NV0gcGNpZXBvcnQgMDAwMDowMDowMC4wOiBBRVI6IGVuYWJsZWQgd2l0aCBJUlEgNzgKPiBbLi5d
Cj4gCj4gdG8gdGhlIGNvbW1pdCA5ZDU3ZTYxYmY3MjMgKCJvZi9wY2k6IEFkZCBJT1JFU09VUkNF
X01FTV82NCB0byByZXNvdXJjZSBmbGFncyBmb3IKPiA2NC1iaXQgbWVtb3J5IGFkZHJlc3NlcyIp
LiBGb3IgcmVmZXJlbmNlLCBoZXJlIGlzIHRoZSBkbWVzZyBvdXRwdXQgd2hlbiBCQVIKPiByZWFz
c2lnbm1lbnQgd29ya3M6CgpHcmVhdCB0aGFua3MgZm9yIHRoZSBwaW5uaW5nIGRvd24gdGhlIGJ1
ZywgYXQgbGVhc3QgSSBjYW4gdHJ5IHRvIGJvb3QgbXkgCmJvYXJkIGFnYWluIHdpdGggdGhlIHBh
dGNoIHJldmVydGVkLgoKVGhhbmtzLApRdQoKPiAKPiBbLi5dCj4gW8KgwqDCoCAwLjMwNzM4MV0g
cm9ja2NoaXAtcGNpZSBmODAwMDAwMC5wY2llOiBob3N0IGJyaWRnZSAvcGNpZUBmODAwMDAwMCBy
YW5nZXM6Cj4gW8KgwqDCoCAwLjMwNzQ0NV0gcm9ja2NoaXAtcGNpZSBmODAwMDAwMC5wY2llOsKg
wqDCoMKgwqAgTUVNIDB4MDBmYTAwMDAwMC4uMHgwMGZiZGZmZmZmIC0+Cj4gMHgwMGZhMDAwMDAw
Cj4gW8KgwqDCoCAwLjMwNzQ4MV0gcm9ja2NoaXAtcGNpZSBmODAwMDAwMC5wY2llOsKgwqDCoMKg
wqDCoCBJTyAweDAwZmJlMDAwMDAuLjB4MDBmYmVmZmZmZiAtPgo+IDB4MDBmYmUwMDAwMAo+IFvC
oMKgwqAgMC4zMDg0MDZdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogc3VwcGx5IHZwY2ll
MXY4IG5vdCBmb3VuZCwgdXNpbmcgZHVtbXkKPiByZWd1bGF0b3IKPiBbwqDCoMKgIDAuMzA4NTM0
XSByb2NrY2hpcC1wY2llIGY4MDAwMDAwLnBjaWU6IHN1cHBseSB2cGNpZTB2OSBub3QgZm91bmQs
IHVzaW5nIGR1bW15Cj4gcmVndWxhdG9yCj4gW8KgwqDCoCAwLjM3NDY3Nl0gcm9ja2NoaXAtcGNp
ZSBmODAwMDAwMC5wY2llOiBQQ0kgaG9zdCBicmlkZ2UgdG8gYnVzIDAwMDA6MDAKPiBbwqDCoMKg
IDAuMzc0NzAxXSBwY2lfYnVzIDAwMDA6MDA6IHJvb3QgYnVzIHJlc291cmNlIFtidXMgMDAtMWZd
Cj4gW8KgwqDCoCAwLjM3NDcyM10gcGNpX2J1cyAwMDAwOjAwOiByb290IGJ1cyByZXNvdXJjZSBb
bWVtIDB4ZmEwMDAwMDAtMHhmYmRmZmZmZl0KPiBbwqDCoMKgIDAuMzc0NzQ2XSBwY2lfYnVzIDAw
MDA6MDA6IHJvb3QgYnVzIHJlc291cmNlIFtpb8KgIDB4MDAwMC0weGZmZmZmXSAoYnVzCj4gYWRk
cmVzcyBbMHhmYmUwMDAwMC0weGZiZWZmZmZmXSkKPiBbwqDCoMKgIDAuMzc0ODA4XSBwY2kgMDAw
MDowMDowMC4wOiBbMWQ4NzowMTAwXSB0eXBlIDAxIGNsYXNzIDB4MDYwNDAwCj4gW8KgwqDCoCAw
LjM3NDk0M10gcGNpIDAwMDA6MDA6MDAuMDogc3VwcG9ydHMgRDEKPiBbwqDCoMKgIDAuMzc0OTYx
XSBwY2kgMDAwMDowMDowMC4wOiBQTUUjIHN1cHBvcnRlZCBmcm9tIEQwIEQxIEQzaG90Cj4gW8Kg
wqDCoCAwLjM3OTQ3M10gcGNpIDAwMDA6MDA6MDAuMDogYnJpZGdlIGNvbmZpZ3VyYXRpb24gaW52
YWxpZCAoW2J1cyAwMC0wMF0pLAo+IHJlY29uZmlndXJpbmcKPiBbwqDCoMKgIDAuMzc5NzEyXSBw
Y2kgMDAwMDowMTowMC4wOiBbMTQ0ZDphODA4XSB0eXBlIDAwIGNsYXNzIDB4MDEwODAyCj4gW8Kg
wqDCoCAwLjM3OTgxNV0gcGNpIDAwMDA6MDE6MDAuMDogcmVnIDB4MTA6IFttZW0gMHgwMDAwMDAw
MC0weDAwMDAzZmZmIDY0Yml0XQo+IFvCoMKgwqAgMC4zNzk5OTddIHBjaSAwMDAwOjAxOjAwLjA6
IE1heCBQYXlsb2FkIFNpemUgc2V0IHRvIDI1NiAod2FzIDEyOCwgbWF4IDI1NikKPiBbwqDCoMKg
IDAuMzgwNjA3XSBwY2kgMDAwMDowMTowMC4wOiA4LjAwMCBHYi9zIGF2YWlsYWJsZSBQQ0llIGJh
bmR3aWR0aCwgbGltaXRlZCBieQo+IDIuNSBHVC9zIFBDSWUgeDQgbGluayBhdCAwMDAwOjAwOjAw
LjAgKGNhcGFibGUgb2YgMzEuNTA0IEdiL3Mgd2l0aCA4LjAgR1QvcyBQQ0llCj4geDQgbGluaykK
PiBbwqDCoMKgIDAuMzk0MjM5XSBwY2lfYnVzIDAwMDA6MDE6IGJ1c25fcmVzOiBbYnVzIDAxLTFm
XSBlbmQgaXMgdXBkYXRlZCB0byAwMQo+IFvCoMKgwqAgMC4zOTQyODVdIHBjaSAwMDAwOjAwOjAw
LjA6IEJBUiAxNDogYXNzaWduZWQgW21lbSAweGZhMDAwMDAwLTB4ZmEwZmZmZmZdCj4gW8KgwqDC
oCAwLjM5NDMxMl0gcGNpIDAwMDA6MDE6MDAuMDogQkFSIDA6IGFzc2lnbmVkIFttZW0gMHhmYTAw
MDAwMC0weGZhMDAzZmZmIDY0Yml0XQo+IFvCoMKgwqAgMC4zOTQzNzRdIHBjaSAwMDAwOjAwOjAw
LjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAwMV0KPiBbwqDCoMKgIDAuMzk0Mzk1XSBwY2kgMDAwMDow
MDowMC4wOsKgwqAgYnJpZGdlIHdpbmRvdyBbbWVtIDB4ZmEwMDAwMDAtMHhmYTBmZmZmZl0KPiBb
wqDCoMKgIDAuMzk0NTY5XSBwY2llcG9ydCAwMDAwOjAwOjAwLjA6IGVuYWJsaW5nIGRldmljZSAo
MDAwMCAtPiAwMDAyKQo+IFvCoMKgwqAgMC4zOTQ4NDVdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDog
UE1FOiBTaWduYWxpbmcgd2l0aCBJUlEgNzgKPiBbwqDCoMKgIDAuMzk1MTUzXSBwY2llcG9ydCAw
MDAwOjAwOjAwLjA6IEFFUjogZW5hYmxlZCB3aXRoIElSUSA3OAo+IFsuLl0KPiAKPiBBbmQgaGVy
ZSBpcyB0aGUgb3V0cHV0IG9mIGxzcGNpIHdoZW4gQkFSIHJlYXNzaWdubWVudCB3b3JrczoKPiAK
PiAjIGxzcGNpIC12Cj4gMDA6MDAuMCBQQ0kgYnJpZGdlOiBGdXpob3UgUm9ja2NoaXAgRWxlY3Ry
b25pY3MgQ28uLCBMdGQgUkszMzk5IFBDSSBFeHByZXNzIFJvb3QKPiBQb3J0IChwcm9nLWlmIDAw
IFtOb3JtYWwgZGVjb2RlXSkKPiAgwqDCoMKgIEZsYWdzOiBidXMgbWFzdGVyLCBmYXN0IGRldnNl
bCwgbGF0ZW5jeSAwLCBJUlEgNzgKPiAgwqDCoMKgIEJ1czogcHJpbWFyeT0wMCwgc2Vjb25kYXJ5
PTAxLCBzdWJvcmRpbmF0ZT0wMSwgc2VjLWxhdGVuY3k9MAo+ICDCoMKgwqAgSS9PIGJlaGluZCBi
cmlkZ2U6IDAwMDAwMDAwLTAwMDAwZmZmIFtzaXplPTRLXQo+ICDCoMKgwqAgTWVtb3J5IGJlaGlu
ZCBicmlkZ2U6IGZhMDAwMDAwLWZhMGZmZmZmIFtzaXplPTFNXQo+ICDCoMKgwqAgUHJlZmV0Y2hh
YmxlIG1lbW9yeSBiZWhpbmQgYnJpZGdlOiAwMDAwMDAwMC0wMDBmZmZmZiBbc2l6ZT0xTV0KPiAg
wqDCoMKgIENhcGFiaWxpdGllczogWzgwXSBQb3dlciBNYW5hZ2VtZW50IHZlcnNpb24gMwo+ICDC
oMKgwqAgQ2FwYWJpbGl0aWVzOiBbOTBdIE1TSTogRW5hYmxlKyBDb3VudD0xLzEgTWFza2FibGUr
IDY0Yml0Kwo+ICDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbYjBdIE1TSS1YOiBFbmFibGUtIENvdW50
PTEgTWFza2VkLQo+ICDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbYzBdIEV4cHJlc3MgUm9vdCBQb3J0
IChTbG90KyksIE1TSSAwMAo+ICDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbMTAwXSBBZHZhbmNlZCBF
cnJvciBSZXBvcnRpbmcKPiAgwqDCoMKgIENhcGFiaWxpdGllczogWzI3NF0gVHJhbnNhY3Rpb24g
UHJvY2Vzc2luZyBIaW50cwo+ICDCoMKgwqAgS2VybmVsIGRyaXZlciBpbiB1c2U6IHBjaWVwb3J0
Cj4gbHNwY2k6IFVuYWJsZSB0byBsb2FkIGxpYmttb2QgcmVzb3VyY2VzOiBlcnJvciAtMgo+IAo+
IDAxOjAwLjAgTm9uLVZvbGF0aWxlIG1lbW9yeSBjb250cm9sbGVyOiBTYW1zdW5nIEVsZWN0cm9u
aWNzIENvIEx0ZCBOVk1lIFNTRAo+IENvbnRyb2xsZXIgU005ODEvUE05ODEvUE05ODMgKHByb2ct
aWYgMDIgW05WTSBFeHByZXNzXSkKPiAgwqDCoMKgIFN1YnN5c3RlbTogU2Ftc3VuZyBFbGVjdHJv
bmljcyBDbyBMdGQgTlZNZSBTU0QgQ29udHJvbGxlciBTTTk4MS9QTTk4MS9QTTk4Mwo+ICDCoMKg
wqAgRmxhZ3M6IGJ1cyBtYXN0ZXIsIGZhc3QgZGV2c2VsLCBsYXRlbmN5IDAsIElSUSA3NywgTlVN
QSBub2RlIDAKPiAgwqDCoMKgIE1lbW9yeSBhdCBmYTAwMDAwMCAoNjQtYml0LCBub24tcHJlZmV0
Y2hhYmxlKSBbc2l6ZT0xNktdCj4gIMKgwqDCoCBDYXBhYmlsaXRpZXM6IFs0MF0gUG93ZXIgTWFu
YWdlbWVudCB2ZXJzaW9uIDMKPiAgwqDCoMKgIENhcGFiaWxpdGllczogWzUwXSBNU0k6IEVuYWJs
ZS0gQ291bnQ9MS8xIE1hc2thYmxlLSA2NGJpdCsKPiAgwqDCoMKgIENhcGFiaWxpdGllczogWzcw
XSBFeHByZXNzIEVuZHBvaW50LCBNU0kgMDAKPiAgwqDCoMKgIENhcGFiaWxpdGllczogW2IwXSBN
U0ktWDogRW5hYmxlKyBDb3VudD0zMyBNYXNrZWQtCj4gIMKgwqDCoCBDYXBhYmlsaXRpZXM6IFsx
MDBdIEFkdmFuY2VkIEVycm9yIFJlcG9ydGluZwo+ICDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbMTQ4
XSBEZXZpY2UgU2VyaWFsIE51bWJlciAwMC0wMC0wMC0wMC0wMC0wMC0wMC0wMAo+ICDCoMKgwqAg
Q2FwYWJpbGl0aWVzOiBbMTU4XSBQb3dlciBCdWRnZXRpbmcgPD8+Cj4gIMKgwqDCoCBDYXBhYmls
aXRpZXM6IFsxNjhdIFNlY29uZGFyeSBQQ0kgRXhwcmVzcwo+ICDCoMKgwqAgQ2FwYWJpbGl0aWVz
OiBbMTg4XSBMYXRlbmN5IFRvbGVyYW5jZSBSZXBvcnRpbmcKPiAgwqDCoMKgIENhcGFiaWxpdGll
czogWzE5MF0gTDEgUE0gU3Vic3RhdGVzCj4gIMKgwqDCoCBLZXJuZWwgZHJpdmVyIGluIHVzZTog
bnZtZQo+IAo+IEkgY2FuIHByb3ZpZGUgbW9yZSBpbmZvcm1hdGlvbiBpZiBuZWVkZWQgKHRoZSBi
b2FyZCBpcyBzaXR0aW5nIG9uIG15IGRlc2spIGFuZCBJCj4gY2FuIGhlbHAgd2l0aCB0ZXN0aW5n
IHRoZSBmaXguCj4gCj4gVGhhbmtzLAo+IAo+IEFsZXgKPiAKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
