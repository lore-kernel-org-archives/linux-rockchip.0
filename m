Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB535C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 12:46:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4BA75600D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 12:46:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4BA75600D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=suse.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7wJ/vfovR5z3e6ypCEwGECCasnuKKQsvnKCHPrhvteA=; b=hock036H1x/v1vvDhrVb5W4q/
	7jQeyrJvK3/uzwwGPhbkk69uH5uqX4CvWqcbJw1hmzDZU/gR98uirX5xB4dd3rga+q/2LoteySjAW
	HhSsNhfp+NwLxQxhAz1boQhGIv4SJBjpfVe6Z/BOmuDvwCuq0muIA/LyDV7br2VFyi+83nqtVJNE2
	DKs+8U8eJ5UaWPoA+x4qlc7Q9grHNic0UCouSW/73O9NhQxtMPkr8ZLWxOqs1xuQr7KBIsVw77ifO
	Hl1DJaTMCZD6ZVuxGxvweVzzTkFEpLp9cyISTCjafPO9f9Cc9R79/kqP9oxkeUHWGApk041HI1pjQ
	d24M7lCuw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljLaf-003xMZ-Vy; Wed, 19 May 2021 12:46:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljKBt-003jRb-Mt
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 11:16:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:Message-ID:From:
 References:To:Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=PBIUu7trt3HwmZIOvlaFm2CzQza8mOD8eot3YwQaPOE=; b=BHGeWWwPexmFqq8S9Y41nn4pTj
 bM90FLHu/zYSjWTg5KI5RLKiOIwnmAsWQbyx7Y0le8JFNcKsyX0etTJttv899NU1QguIt0rKtj/v+
 VfRkYHF8FIzmZGvhjJeZaeL3kUjjn4d5djDPUH95v1iiZzlZtcZ0ze+MOZUyy2Eugdtrqc+QqIjPR
 ZcXi5PykhQAbngy8252OFaJPStsML4SkQllmjLMNHDSKNP+ixtFtwNeZQrh362v3E911h5jkRefT3
 lj2nMDaxPe8kC97LMB8di6GQL660CaJIvO1jJBr3zWPnfPg0oL5kRrFUKRcyTcp22PUUzdvqrQHqO
 lnbOwysw==;
Received: from de-smtp-delivery-102.mimecast.com ([194.104.109.102])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljKBq-00FOYC-0D
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 11:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1621422995;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PBIUu7trt3HwmZIOvlaFm2CzQza8mOD8eot3YwQaPOE=;
 b=DWD7y2n/RdZM9OZQH61CX0mDssgVdWSaf83kPG7ATuzvRY8VpijKNYyovW/0BnrRclJB23
 tqzI5rJuFKMLH0Qj2rPaDnyq+nCkwJqvklG0gpGk1vSR7tU2IbVs8I9mV2hyEXcbqPSthQ
 rzb7DmOV8Y4/Dx6v9/h8eCcly+6JRkg=
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2054.outbound.protection.outlook.com [104.47.14.54]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-31-_nYteAg6M1G6n2N8VDtwHw-1; Wed, 19 May 2021 13:16:33 +0200
X-MC-Unique: _nYteAg6M1G6n2N8VDtwHw-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wma2Hb9FGxHculKdldbDSC0iuBKQUbla96BS8W2mQfF8hM6DSYG90bGDlKN09j8UdKbAztO66CrLmQtrJkIcKknHZ31Q8tnAdrDgVADPx4OcEVYGZr1MuLopuEtKg4bLrNAVhkx+iZMWbUXf/vIDBoTtNRfu1EtzXtFDSZ6VHXPIBjvvNRh9KN9+DiTleX+fMCgUQ7PXLgDcBBcz9fe5l8pVMtwwhHdC4tTDhclJjKYb+ohlh36xJS/cj3mKTvJPCaCokVCkfo+bd3Hd0dMntqvBIrSKF4VIaRFkUcvorVg9/dTH3Vio5CXB8Y76vLJ6HQKl3GgA1ZXQrNCxNFmA8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t7BpKJ4SaHrQU4FfahO8+3N4wmb/XxYAQOWnzB3hl6s=;
 b=Tnl59IKhMvTUg5dgEBaA8PqrvF5u4EvneRYhRq4NPsN2v6+RD0YoJFCzG9Iu3WtbK5WG+ySmqaFLsZt/Sji0sXY1k+FUfUsOmCzh2mc1sPVS5KbXgfYoeoArOWsxSbT3+GH831XgoPKzgGWtfv/tdVJ9Yd+fevOdNuet1tKUz2AVFW4n18pL4TqB9V0aNgKbPBq+rh3AIZEUlVjLp1igbbr1cFKTZCH/K7Y/OAu0uRCYJbF6HPtZ2uzVyt10AVETsyUSsA7UUnN6ixbi1XRNYo1PxbBgXLwwnxEIKOLJRBhFepxQUlLcLQx9rPbpB9xOAiYhYG10BFOmH2CaPAIcTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=suse.com;
Received: from AM7PR04MB6821.eurprd04.prod.outlook.com (2603:10a6:20b:105::22)
 by AM6PR0402MB3672.eurprd04.prod.outlook.com (2603:10a6:209:1c::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 19 May
 2021 11:16:32 +0000
Received: from AM7PR04MB6821.eurprd04.prod.outlook.com
 ([fe80::b8b1:d726:a3c7:9cb]) by AM7PR04MB6821.eurprd04.prod.outlook.com
 ([fe80::b8b1:d726:a3c7:9cb%7]) with mapi id 15.20.4129.031; Wed, 19 May 2021
 11:16:32 +0000
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
 <09cbf655-0f13-5df6-b6a9-4a6a784e211d@suse.com>
 <94fbb521-d045-3c2e-eeb8-4029e1f92015@suse.com>
 <d754c000-7eb1-a8ed-33a6-238171a68c87@arm.com>
From: Qu Wenruo <wqu@suse.com>
Message-ID: <8a496713-182a-aa8b-3e5b-e527bebc7b03@suse.com>
Date: Wed, 19 May 2021 19:16:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
In-Reply-To: <d754c000-7eb1-a8ed-33a6-238171a68c87@arm.com>
Content-Language: en-US
X-Originating-IP: [149.28.201.231]
X-ClientProxiedBy: BYAPR11CA0056.namprd11.prod.outlook.com
 (2603:10b6:a03:80::33) To AM7PR04MB6821.eurprd04.prod.outlook.com
 (2603:10a6:20b:105::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [0.0.0.0] (149.28.201.231) by
 BYAPR11CA0056.namprd11.prod.outlook.com (2603:10b6:a03:80::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.32 via Frontend Transport; Wed, 19 May 2021 11:16:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 192fb479-384b-4754-15a5-08d91ab78e97
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3672:
X-Microsoft-Antispam-PRVS: <AM6PR0402MB36720BA26C9185CC236D4E0ED62B9@AM6PR0402MB3672.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:370;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bu5LwHH4YHs2KQzsDRo1glPdHBes2Vudj35k6msSwzk4J/RhJHOtt3iGzcD0plvD2Qf6lFkbMdrhhYjCcMfcl8FFjtYPr+bzvyU+WnlQWOVmze3YBmyK8rfJ9qcRcDM/+CTE1plV/pZncTa7OxbuWnt/SuHLP2MpYKM+2nUDQ4Mp1Tu1dAdu/UTT3oUH9D0w9+8Ec+fROoJL7hhXKUykFHa9pL6q5F6cBJ0d2N1y5SiYs1Ze0VmdRedKziTgCFdik+X325BpLBuIAEP/QxfouKjT/vq8ahm0uHK2KbcUbibfk3vcZsOQ7e0JfSSkweeopESogxVUaZ8M19Fw84eV+MXq51zL+V5mFbASbtRFANy8ZeDekpH15Sk0wXVg785HJqAcgbKl1Du4OUrZFBnlHBXOURtUbVQCDs7qGtrWjo8mN52DIPRQDuXZYMnsSGarRY2ug6Fqhs2S+sb36/rSbBsqYwUDHSpk84+OCndp9vUBZCnXWHI3zBrAC/ApL8kRmkBW1V/9HIOVpypV5X1NdX9wwf+lgj9RaFTz+6Sbt7aqN7cD4Qlyl+nv0FUXPK9jEeKXPi5nOqGJLNtRgOW4lbE2uNaQzhvLY8rrImHJwUhTzm04DrpC3xFab8LsSO1FgOIzYgX+isg5TbVGZpJSQePyAWw9UmbsLv5qBsmu1M3LJ6uXau9fkWQCN+3Vh8tY75UV8jtU4f3Ygo4rwMhZnKfUZXArFibXVchGVA3bAbgIfPIX2HMQJc4Ntm9eSUCLhqLyrMZS6dSiyMsE8ZNQB4Fdm/V1IIKuaxXT0XhV0t8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6821.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(39860400002)(376002)(346002)(136003)(66946007)(5660300002)(6706004)(6486002)(86362001)(53546011)(66556008)(66476007)(2616005)(26005)(8936002)(2906002)(966005)(31686004)(186003)(956004)(16526019)(36756003)(38100700002)(110136005)(16576012)(316002)(6666004)(8676002)(83380400001)(478600001)(31696002)(78286007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?FzbOZeaK+m8TnmDX5XAl3FXGgPR2j0vRmvvizp6mmLszqgLlB/dxQE3njfxO?=
 =?us-ascii?Q?qRz3es9+3FBlRBH/Yb81oBR8BjdEAPX2Aka0cSR7/5Q17DmYhlkjyXbeYmTF?=
 =?us-ascii?Q?KsO2aA3reg4GjfOPEsW4O6K7negBfTtNxRTOm9yVHpgar1AyrWWFA5dAP8Ey?=
 =?us-ascii?Q?LR3MBSLKCSsQHCA/Pb5uF8aFabyAhGDgbWjiJFL5PJp7EzhSvYOWar4xM/iA?=
 =?us-ascii?Q?dO1TtESFqnazOPV0DVZDB2q6QoWm81alYKEQ/xbmu/Kjh7R2PR7R5SAEmW8D?=
 =?us-ascii?Q?39n3UBtMhEp+B05x7/1IfiLcj832IJUSW1wsa+QKNvzHQp4V40y5GZFcv19a?=
 =?us-ascii?Q?y7C69UAOuAyfuODQBP9LSNLD0/JYDBySq6qUHUT7uGjOy7yfERLi40Y0+rHe?=
 =?us-ascii?Q?RvOP9KskmxEamvIKGYilWub33XW7H9gH1LHRAhpU/VAjHmz09S6c0zSNsJJ0?=
 =?us-ascii?Q?pjjDB7GsdX8T3WfnOeSYisMtK6RhinmyDe+dS6YpHSLtkA7njvKovorZBSfx?=
 =?us-ascii?Q?xKl8YRzApQQ1mcPlNUJDCZgNwP2td9xbMAn0gSoP+RKqtJwY3U1WM/qnil11?=
 =?us-ascii?Q?TmIplBWburN5HF976ZDRwUTVe3oeEC12BdcX80/ohLrz/4jC9Essk3dhIBvF?=
 =?us-ascii?Q?94U+2rf7ftbAiM+iFrqhEt1+P924WI3DQpY1QWWS+wwmN2MMEwXkmpRklnlQ?=
 =?us-ascii?Q?9om16O3roYcDB/j+zbGh7MU9agKXjtFbqWDJTc3b824ZiSG3lxnhqtTYwQlk?=
 =?us-ascii?Q?vtYXF/s6cUzBB477d3i3X7Bgc0x/dQLGrGEz6eBToMyecDLEo69U6LNqGh3v?=
 =?us-ascii?Q?tnRFCTVqp6exVv/z72Uup7iUQsHspnE8FHgY4EPvtDjVAbdUjENqvPUTKXzp?=
 =?us-ascii?Q?jZLX1pkCbKZjrMhvfmGWQ7XDqH4mdi3o/w7JDhvocbvrsXGSg5t1jMOGDwhJ?=
 =?us-ascii?Q?a7XOR5GcKmRj01PTzIG1J3lPz8BDSXsVITFSUvnF0L5R7o/O8czrWmpxKpuO?=
 =?us-ascii?Q?C3NQnQjFg5gs7raVejs/OUFRUz+OzjLvNk8k3wLJAJMfVoG1ksFan5EUhjAY?=
 =?us-ascii?Q?9OJc2AzvfeEODBwdNM6q2wd+vSWmKV8OsPgg7CtgrChbPVCL23kdcWXTiEx1?=
 =?us-ascii?Q?3i8pQHS2+91+ZENfrSy+w26/4zbmJHLfNfDZAo37K28qZkBlPtfDPgoLPVLZ?=
 =?us-ascii?Q?3B0g350+Eu14meYwBCtQvTO1BCR3bghTeggkJ8tNnMdQp1n9sSuhxO2tG4Vv?=
 =?us-ascii?Q?iLBgcrXlC3e1AN/6B2DzsM/b0l8KwEYYMZrPCJ+v+Nx91TzMYcihEl7VmJzb?=
 =?us-ascii?Q?soFmgiohh/F6rN3CbTqsau7p?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 192fb479-384b-4754-15a5-08d91ab78e97
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB6821.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2021 11:16:32.4742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BPLNNRNBIK/mpHR22Bof6qadoSSKJ25jtnF1gGcq7v7Ispd4DXImqze6pG7/XMtn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3672
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_041638_381756_4DC17737 
X-CRM114-Status: GOOD (  19.21  )
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

CgpPbiAyMDIxLzUvMTkg5LiL5Y2INToyMCwgQWxleGFuZHJ1IEVsaXNlaSB3cm90ZToKPiBIaSwK
PiAKPiBPbiA1LzE5LzIxIDg6MDUgQU0sIFF1IFdlbnJ1byB3cm90ZToKPj4KPj4KWy4uLl0KPj4K
Pj4gSXMgdGhlcmUgYW55dGhpbmcgc3BlY2lhbCBuZWVkZWQgdG8gYm9vdCB0aGUga2VybmVsIHdp
dGggdGhhdCBvZmZlbmRpbmcgY29tbWl0Cj4+IHJldmVydGVkPwo+IAo+IEkgYmVsaWV2ZSB0aGlz
IGlzIGEgc2VwYXJhdGUgYnVnIHdoaWNoIGlzIGJlaW5nIGludmVzdGlnYXRlZCBbMV0uCj4gCj4g
VGhpbmdzIHRoYXQgSSB0cmllZDoKPiAKPiAxLiBSZXZlcnRlZCB0aGUgb2ZmZW5kaW5nIGNvbW1p
dCBmcm9tIHY1LjEzLXJjMiwga2VybmVsIGJvb3RlZC4KPiAKPiAyLiBDaGVja291dCBvdXQgdGFn
IHY1LjEzLXJjMSwgcmV2ZXJ0ZWQgdGhlIG9mZmVuZGluZyBjb21taXQgZnJvbSB2NS4xMy1yYzEs
Cj4ga2VybmVsIGhhbmdzIGR1cmluZyBib290LiBEaWRuJ3QgY2xlYW4gYmVmb3JlIGJ1aWxkaW5n
Lgo+IAo+IDMuIERpZCBhIGNsZWFuIGFuZCByZWJ1aWxkLCBrZXJuZWwgYm9vdHMgY29ycmVjdGx5
LiBUaGlzIHNlZW1zIHRvIHBvaW50IGF0IHRoZQo+IHJlZ3Jlc3Npb24gWzFdLCBzaW5jZSBjbGVh
bmluZyB3YXMgb25lIG9mIHRoZSB3b3JrYXJvdW5kcyByZXBvcnRlZC4KPiAKPiBBbm90aGVyIGJ1
ZyB0aGF0IEkgbm90aWNlZCBpcyBhIGtlcm5lbCBwYW5pYyBvbiBzaHV0ZG93biwgYnV0IHRoYXQn
cyB1bnJlbGF0ZWQgdG8KPiB0aGUgb2ZmZW5kaW5nIGNvbW1pdCAoSSdsbCB0cnkgdG8gYmlzZWN0
IGl0IHdoZW4gSSBoYXZlIHRoZSB0aW1lKS4KPiAKPiBbMV0gaHR0cHM6Ly9sa21sLm9yZy9sa21s
LzIwMjEvNS8xNy8yMjg0CgpBd2Vzb21lISBUaGFua3MgZm9yIHlvdXIgcXVpY2sgbWVudGlvbiBh
Ym91dCB0aGUgYnVnLgoKSW5kZWVkIGFmdGVyIGEgY2xlYW4gYW5kIG9mZmVuZGluZyBjb21taXQg
cmV2ZXJ0ZWQsIG5vdyBJIGNhbiBib290IGEgCnY1LjEzLXJjMiBrZXJuZWwgZnJvbSBOVk1FIHdp
dGhvdXQgcHJvYmxlbS4KClRoYW5rIHlvdSB2ZXJ5IG11Y2ghClF1Cgo+IAo+IFRoYW5rcywKPiAK
PiBBbGV4Cj4gCj4+Cj4+IFRoYW5rcywKPj4gUXUKPj4KPj4+Cj4+PiBUaGFua3MsCj4+PiBRdQo+
Pj4KPj4+Pgo+Pj4+IFsuLl0KPj4+PiBbwqDCoMKgIDAuMzA3MzgxXSByb2NrY2hpcC1wY2llIGY4
MDAwMDAwLnBjaWU6IGhvc3QgYnJpZGdlIC9wY2llQGY4MDAwMDAwIHJhbmdlczoKPj4+PiBbwqDC
oMKgIDAuMzA3NDQ1XSByb2NrY2hpcC1wY2llIGY4MDAwMDAwLnBjaWU6wqDCoMKgwqDCoCBNRU0K
Pj4+PiAweDAwZmEwMDAwMDAuLjB4MDBmYmRmZmZmZiAtPgo+Pj4+IDB4MDBmYTAwMDAwMAo+Pj4+
IFvCoMKgwqAgMC4zMDc0ODFdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTrCoMKgwqDCoMKg
wqAgSU8KPj4+PiAweDAwZmJlMDAwMDAuLjB4MDBmYmVmZmZmZiAtPgo+Pj4+IDB4MDBmYmUwMDAw
MAo+Pj4+IFvCoMKgwqAgMC4zMDg0MDZdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogc3Vw
cGx5IHZwY2llMXY4IG5vdCBmb3VuZCwgdXNpbmcKPj4+PiBkdW1teQo+Pj4+IHJlZ3VsYXRvcgo+
Pj4+IFvCoMKgwqAgMC4zMDg1MzRdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogc3VwcGx5
IHZwY2llMHY5IG5vdCBmb3VuZCwgdXNpbmcKPj4+PiBkdW1teQo+Pj4+IHJlZ3VsYXRvcgo+Pj4+
IFvCoMKgwqAgMC4zNzQ2NzZdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogUENJIGhvc3Qg
YnJpZGdlIHRvIGJ1cyAwMDAwOjAwCj4+Pj4gW8KgwqDCoCAwLjM3NDcwMV0gcGNpX2J1cyAwMDAw
OjAwOiByb290IGJ1cyByZXNvdXJjZSBbYnVzIDAwLTFmXQo+Pj4+IFvCoMKgwqAgMC4zNzQ3MjNd
IHBjaV9idXMgMDAwMDowMDogcm9vdCBidXMgcmVzb3VyY2UgW21lbSAweGZhMDAwMDAwLTB4ZmJk
ZmZmZmZdCj4+Pj4gW8KgwqDCoCAwLjM3NDc0Nl0gcGNpX2J1cyAwMDAwOjAwOiByb290IGJ1cyBy
ZXNvdXJjZSBbaW/CoCAweDAwMDAtMHhmZmZmZl0gKGJ1cwo+Pj4+IGFkZHJlc3MgWzB4ZmJlMDAw
MDAtMHhmYmVmZmZmZl0pCj4+Pj4gW8KgwqDCoCAwLjM3NDgwOF0gcGNpIDAwMDA6MDA6MDAuMDog
WzFkODc6MDEwMF0gdHlwZSAwMSBjbGFzcyAweDA2MDQwMAo+Pj4+IFvCoMKgwqAgMC4zNzQ5NDNd
IHBjaSAwMDAwOjAwOjAwLjA6IHN1cHBvcnRzIEQxCj4+Pj4gW8KgwqDCoCAwLjM3NDk2MV0gcGNp
IDAwMDA6MDA6MDAuMDogUE1FIyBzdXBwb3J0ZWQgZnJvbSBEMCBEMSBEM2hvdAo+Pj4+IFvCoMKg
wqAgMC4zNzk0NzNdIHBjaSAwMDAwOjAwOjAwLjA6IGJyaWRnZSBjb25maWd1cmF0aW9uIGludmFs
aWQgKFtidXMgMDAtMDBdKSwKPj4+PiByZWNvbmZpZ3VyaW5nCj4+Pj4gW8KgwqDCoCAwLjM3OTcx
Ml0gcGNpIDAwMDA6MDE6MDAuMDogWzE0NGQ6YTgwOF0gdHlwZSAwMCBjbGFzcyAweDAxMDgwMgo+
Pj4+IFvCoMKgwqAgMC4zNzk4MTVdIHBjaSAwMDAwOjAxOjAwLjA6IHJlZyAweDEwOiBbbWVtIDB4
MDAwMDAwMDAtMHgwMDAwM2ZmZiA2NGJpdF0KPj4+PiBbwqDCoMKgIDAuMzc5OTk3XSBwY2kgMDAw
MDowMTowMC4wOiBNYXggUGF5bG9hZCBTaXplIHNldCB0byAyNTYgKHdhcyAxMjgsIG1heCAyNTYp
Cj4+Pj4gW8KgwqDCoCAwLjM4MDYwN10gcGNpIDAwMDA6MDE6MDAuMDogOC4wMDAgR2IvcyBhdmFp
bGFibGUgUENJZSBiYW5kd2lkdGgsIGxpbWl0ZWQgYnkKPj4+PiAyLjUgR1QvcyBQQ0llIHg0IGxp
bmsgYXQgMDAwMDowMDowMC4wIChjYXBhYmxlIG9mIDMxLjUwNCBHYi9zIHdpdGggOC4wIEdUL3Mg
UENJZQo+Pj4+IHg0IGxpbmspCj4+Pj4gW8KgwqDCoCAwLjM5NDIzOV0gcGNpX2J1cyAwMDAwOjAx
OiBidXNuX3JlczogW2J1cyAwMS0xZl0gZW5kIGlzIHVwZGF0ZWQgdG8gMDEKPj4+PiBbwqDCoMKg
IDAuMzk0Mjg1XSBwY2kgMDAwMDowMDowMC4wOiBCQVIgMTQ6IGFzc2lnbmVkIFttZW0gMHhmYTAw
MDAwMC0weGZhMGZmZmZmXQo+Pj4+IFvCoMKgwqAgMC4zOTQzMTJdIHBjaSAwMDAwOjAxOjAwLjA6
IEJBUiAwOiBhc3NpZ25lZCBbbWVtIDB4ZmEwMDAwMDAtMHhmYTAwM2ZmZgo+Pj4+IDY0Yml0XQo+
Pj4+IFvCoMKgwqAgMC4zOTQzNzRdIHBjaSAwMDAwOjAwOjAwLjA6IFBDSSBicmlkZ2UgdG8gW2J1
cyAwMV0KPj4+PiBbwqDCoMKgIDAuMzk0Mzk1XSBwY2kgMDAwMDowMDowMC4wOsKgwqAgYnJpZGdl
IHdpbmRvdyBbbWVtIDB4ZmEwMDAwMDAtMHhmYTBmZmZmZl0KPj4+PiBbwqDCoMKgIDAuMzk0NTY5
XSBwY2llcG9ydCAwMDAwOjAwOjAwLjA6IGVuYWJsaW5nIGRldmljZSAoMDAwMCAtPiAwMDAyKQo+
Pj4+IFvCoMKgwqAgMC4zOTQ4NDVdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogUE1FOiBTaWduYWxp
bmcgd2l0aCBJUlEgNzgKPj4+PiBbwqDCoMKgIDAuMzk1MTUzXSBwY2llcG9ydCAwMDAwOjAwOjAw
LjA6IEFFUjogZW5hYmxlZCB3aXRoIElSUSA3OAo+Pj4+IFsuLl0KPj4+Pgo+Pj4+IEFuZCBoZXJl
IGlzIHRoZSBvdXRwdXQgb2YgbHNwY2kgd2hlbiBCQVIgcmVhc3NpZ25tZW50IHdvcmtzOgo+Pj4+
Cj4+Pj4gIyBsc3BjaSAtdgo+Pj4+IDAwOjAwLjAgUENJIGJyaWRnZTogRnV6aG91IFJvY2tjaGlw
IEVsZWN0cm9uaWNzIENvLiwgTHRkIFJLMzM5OSBQQ0kgRXhwcmVzcyBSb290Cj4+Pj4gUG9ydCAo
cHJvZy1pZiAwMCBbTm9ybWFsIGRlY29kZV0pCj4+Pj4gIMKgwqDCoMKgIEZsYWdzOiBidXMgbWFz
dGVyLCBmYXN0IGRldnNlbCwgbGF0ZW5jeSAwLCBJUlEgNzgKPj4+PiAgwqDCoMKgwqAgQnVzOiBw
cmltYXJ5PTAwLCBzZWNvbmRhcnk9MDEsIHN1Ym9yZGluYXRlPTAxLCBzZWMtbGF0ZW5jeT0wCj4+
Pj4gIMKgwqDCoMKgIEkvTyBiZWhpbmQgYnJpZGdlOiAwMDAwMDAwMC0wMDAwMGZmZiBbc2l6ZT00
S10KPj4+PiAgwqDCoMKgwqAgTWVtb3J5IGJlaGluZCBicmlkZ2U6IGZhMDAwMDAwLWZhMGZmZmZm
IFtzaXplPTFNXQo+Pj4+ICDCoMKgwqDCoCBQcmVmZXRjaGFibGUgbWVtb3J5IGJlaGluZCBicmlk
Z2U6IDAwMDAwMDAwLTAwMGZmZmZmIFtzaXplPTFNXQo+Pj4+ICDCoMKgwqDCoCBDYXBhYmlsaXRp
ZXM6IFs4MF0gUG93ZXIgTWFuYWdlbWVudCB2ZXJzaW9uIDMKPj4+PiAgwqDCoMKgwqAgQ2FwYWJp
bGl0aWVzOiBbOTBdIE1TSTogRW5hYmxlKyBDb3VudD0xLzEgTWFza2FibGUrIDY0Yml0Kwo+Pj4+
ICDCoMKgwqDCoCBDYXBhYmlsaXRpZXM6IFtiMF0gTVNJLVg6IEVuYWJsZS0gQ291bnQ9MSBNYXNr
ZWQtCj4+Pj4gIMKgwqDCoMKgIENhcGFiaWxpdGllczogW2MwXSBFeHByZXNzIFJvb3QgUG9ydCAo
U2xvdCspLCBNU0kgMDAKPj4+PiAgwqDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbMTAwXSBBZHZhbmNl
ZCBFcnJvciBSZXBvcnRpbmcKPj4+PiAgwqDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbMjc0XSBUcmFu
c2FjdGlvbiBQcm9jZXNzaW5nIEhpbnRzCj4+Pj4gIMKgwqDCoMKgIEtlcm5lbCBkcml2ZXIgaW4g
dXNlOiBwY2llcG9ydAo+Pj4+IGxzcGNpOiBVbmFibGUgdG8gbG9hZCBsaWJrbW9kIHJlc291cmNl
czogZXJyb3IgLTIKPj4+Pgo+Pj4+IDAxOjAwLjAgTm9uLVZvbGF0aWxlIG1lbW9yeSBjb250cm9s
bGVyOiBTYW1zdW5nIEVsZWN0cm9uaWNzIENvIEx0ZCBOVk1lIFNTRAo+Pj4+IENvbnRyb2xsZXIg
U005ODEvUE05ODEvUE05ODMgKHByb2ctaWYgMDIgW05WTSBFeHByZXNzXSkKPj4+PiAgwqDCoMKg
wqAgU3Vic3lzdGVtOiBTYW1zdW5nIEVsZWN0cm9uaWNzIENvIEx0ZCBOVk1lIFNTRCBDb250cm9s
bGVyIFNNOTgxL1BNOTgxL1BNOTgzCj4+Pj4gIMKgwqDCoMKgIEZsYWdzOiBidXMgbWFzdGVyLCBm
YXN0IGRldnNlbCwgbGF0ZW5jeSAwLCBJUlEgNzcsIE5VTUEgbm9kZSAwCj4+Pj4gIMKgwqDCoMKg
IE1lbW9yeSBhdCBmYTAwMDAwMCAoNjQtYml0LCBub24tcHJlZmV0Y2hhYmxlKSBbc2l6ZT0xNktd
Cj4+Pj4gIMKgwqDCoMKgIENhcGFiaWxpdGllczogWzQwXSBQb3dlciBNYW5hZ2VtZW50IHZlcnNp
b24gMwo+Pj4+ICDCoMKgwqDCoCBDYXBhYmlsaXRpZXM6IFs1MF0gTVNJOiBFbmFibGUtIENvdW50
PTEvMSBNYXNrYWJsZS0gNjRiaXQrCj4+Pj4gIMKgwqDCoMKgIENhcGFiaWxpdGllczogWzcwXSBF
eHByZXNzIEVuZHBvaW50LCBNU0kgMDAKPj4+PiAgwqDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbYjBd
IE1TSS1YOiBFbmFibGUrIENvdW50PTMzIE1hc2tlZC0KPj4+PiAgwqDCoMKgwqAgQ2FwYWJpbGl0
aWVzOiBbMTAwXSBBZHZhbmNlZCBFcnJvciBSZXBvcnRpbmcKPj4+PiAgwqDCoMKgwqAgQ2FwYWJp
bGl0aWVzOiBbMTQ4XSBEZXZpY2UgU2VyaWFsIE51bWJlciAwMC0wMC0wMC0wMC0wMC0wMC0wMC0w
MAo+Pj4+ICDCoMKgwqDCoCBDYXBhYmlsaXRpZXM6IFsxNThdIFBvd2VyIEJ1ZGdldGluZyA8Pz4K
Pj4+PiAgwqDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbMTY4XSBTZWNvbmRhcnkgUENJIEV4cHJlc3MK
Pj4+PiAgwqDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbMTg4XSBMYXRlbmN5IFRvbGVyYW5jZSBSZXBv
cnRpbmcKPj4+PiAgwqDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbMTkwXSBMMSBQTSBTdWJzdGF0ZXMK
Pj4+PiAgwqDCoMKgwqAgS2VybmVsIGRyaXZlciBpbiB1c2U6IG52bWUKPj4+Pgo+Pj4+IEkgY2Fu
IHByb3ZpZGUgbW9yZSBpbmZvcm1hdGlvbiBpZiBuZWVkZWQgKHRoZSBib2FyZCBpcyBzaXR0aW5n
IG9uIG15IGRlc2spIGFuZCBJCj4+Pj4gY2FuIGhlbHAgd2l0aCB0ZXN0aW5nIHRoZSBmaXguCj4+
Pj4KPj4+PiBUaGFua3MsCj4+Pj4KPj4+PiBBbGV4Cj4+Pj4KPj4+Pgo+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKPj4+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
Pj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwKPj4+Pgo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPj4+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4+Cj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
