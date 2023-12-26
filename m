Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68DDEC46CD4
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 06:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:CC:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3QCG8ViChDb507WAR49MSSv7RdSV5hPpqEXu7bntBBk=; b=ZVpq5HLkowU3m0QZxW5+xtWc6L
	9qV8Qyh2s297cpwq9JOnVw7zm9PqNyHakawQrrLmXlkmjtajphCkafBC5yov3SmpHKxs9fcRFI7Nd
	hkLMow+O+I9utJJJexyhp/pO0R795kuk4PIa4g887Vq2BxOP+be4c53gpVAW+MjZOvMbc22Zhs/a1
	XtLCeBpYM5yduz9wGPWimsPuJMAmxYEMw8BjflqbIikh31eLBwzviZwNQqfqbv2k3r7MBLC0oi2Sg
	BweX4kjZAsIblGO6JpRzQmEuEk6T0Su3I+v8yaAM7y5O4/1vS+Yd6XdAN6AvQK20OiIbkwvLZ9I9E
	q8ORlPsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rI0e6-00Bmev-10;
	Tue, 26 Dec 2023 06:10:30 +0000
Received: from mgamail.intel.com ([192.55.52.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rI0e2-00Bmc4-07
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 06:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1703571026; x=1735107026;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=2lKbUdAbSm5osvNJ8Bp5ISAXxNNC0OReoDWQ8yp4XHs=;
  b=MSi1zdnXaMMc667PBw4AW1qWLrG338FpEOLn3Hn2SoDwvjySvgO8Q8J9
   UKjEi+vYQlG4pjIAyyWGJRiPIBkt2URpD4YwIJlzc3C/077gVJSAjrE2E
   23D99FWvSptK9bpLn2e1AKE7B0pGW4DF9wXHtb/lcwZT8qOKCxaCS9Kqm
   0m68hac4qJyCcvAgYtxIMRbaDGcQODyu8OPTagDFHbK6icqLNEEILbHq1
   hyy4D5tSfIQ6nex+W0OJJAERWQkKHorm9jd2rV7J7ARd7nZUM+6PTu9Uh
   uess5UVOGoxlS06ljzNPbzSHcEpyr0MUYp8lRkqOCTUC4vH9y4WCGlzp8
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10934"; a="482502695"
X-IronPort-AV: E=Sophos;i="6.04,304,1695711600"; 
   d="scan'208";a="482502695"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Dec 2023 22:10:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10934"; a="777869547"
X-IronPort-AV: E=Sophos;i="6.04,304,1695711600"; 
   d="scan'208";a="777869547"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 25 Dec 2023 22:10:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Dec 2023 22:10:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Dec 2023 22:10:08 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Dec 2023 22:10:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O1C+0BkZEFrmuYETHAzQKuqqsgQKfr7/i3b2q2stc6IpeoIdVvDr1gHM+uEWINDZv6TZhEFHRJET6giKS/du8IZLX0wARk8UJgr9KTBOR2/z/PW/edsu8bnqc6i500mFyEf4OZYFKpLIFQmG1uP+BV//i8TjcLWVY1+hAE4voSKc/W0AmNqxJzn2KqNPKDlG5n47f2w/YZ2ZLeCebwXLxvuYWWfKQBb9uBO8xeX5L28t5VkIM0XBfTYTV+NdpsS/GYj7UUE3rJXvV9Ymh+gl9y/5vlMCRmBTrlaUG4ka0gwNIySZQ09RKxqHeGWAVWNDsSim+hj6bM6E+pqW08HiVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d/CoNFLgp8NOG6gG628As4E8YwhC7rKK6yPBvIEXyZU=;
 b=f/Z/C+Xx5Z62CZ2oq6oPOkVcjp5D9Y0lurClQOGMGJ4zOnejYgDlN5dgr35OeDvfahHzNI8J6wH9IjTNHPqz+U2rSGMWEz0lBonXdiWg+zThphFfJ1fxzpX6/GqwV8T0OU+DVfAt7/2jTSj/bU7fVvcp6YJcUQtBhzdvytPhcMK3P2jpz/RjFF7bnyKatqYbvp2uLKZF8xvL2wScGk7tJ4Zxp3kKO5gm5LOi7smKYPhzr1q/ZTqdT0Lq3D0qV6O+yO4sqKcK79Fp3qs2KrpdPZ6CqKGLeMm2FSVKfz9wv/Q0sjEDLYvU5oV2OUK/6NTJq7qjqErrMX2twMPEKK0vVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5469.namprd11.prod.outlook.com (2603:10b6:5:399::13)
 by BN9PR11MB5451.namprd11.prod.outlook.com (2603:10b6:408:100::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.27; Tue, 26 Dec
 2023 06:10:06 +0000
Received: from DM4PR11MB5469.namprd11.prod.outlook.com
 ([fe80::ab4c:76d3:b700:26fb]) by DM4PR11MB5469.namprd11.prod.outlook.com
 ([fe80::ab4c:76d3:b700:26fb%7]) with mapi id 15.20.7113.027; Tue, 26 Dec 2023
 06:10:05 +0000
Message-ID: <0ba8e579-2b6f-4e9f-a38c-097694f14d3c@intel.com>
Date: Tue, 26 Dec 2023 14:09:29 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/10] iommu/vt-d: add wrapper functions for page
 allocations
Content-Language: en-US
To: Pasha Tatashin <pasha.tatashin@soleen.com>, David Rientjes
	<rientjes@google.com>
CC: Andrew Morton <akpm@linux-foundation.org>, <alim.akhtar@samsung.com>,
	<alyssa@rosenzweig.io>, <asahi@lists.linux.dev>, <baolu.lu@linux.intel.com>,
	<bhelgaas@google.com>, <cgroups@vger.kernel.org>, <corbet@lwn.net>,
	<david@redhat.com>, <dwmw2@infradead.org>, <hannes@cmpxchg.org>,
	<heiko@sntech.de>, <iommu@lists.linux.dev>, <jernej.skrabec@gmail.com>,
	<jonathanh@nvidia.com>, <joro@8bytes.org>, <krzysztof.kozlowski@linaro.org>,
	<linux-doc@vger.kernel.org>, <linux-fsdevel@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-mm@kvack.org>,
	<linux-rockchip@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-sunxi@lists.linux.dev>, <linux-tegra@vger.kernel.org>,
	<lizefan.x@bytedance.com>, <marcan@marcan.st>, <mhiramat@kernel.org>,
	<m.szyprowski@samsung.com>, <paulmck@kernel.org>, <rdunlap@infradead.org>,
	<robin.murphy@arm.com>, <samuel@sholland.org>,
	<suravee.suthikulpanit@amd.com>, <sven@svenpeter.dev>,
	<thierry.reding@gmail.com>, <tj@kernel.org>, <tomas.mudrunka@gmail.com>,
	<vdumpa@nvidia.com>, <wens@csie.org>, <will@kernel.org>,
	<yu-cheng.yu@intel.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
 <20231130201504.2322355-2-pasha.tatashin@soleen.com>
 <776e17af-ae25-16a0-f443-66f3972b00c0@google.com>
 <CA+CK2bA8iJ_w8CSx2Ed=d2cVSujrC0-TpO7U9j+Ow-gfk1nyfQ@mail.gmail.com>
From: "Liu, Jingqi" <jingqi.liu@intel.com>
In-Reply-To: <CA+CK2bA8iJ_w8CSx2Ed=d2cVSujrC0-TpO7U9j+Ow-gfk1nyfQ@mail.gmail.com>
X-ClientProxiedBy: SI2PR06CA0018.apcprd06.prod.outlook.com
 (2603:1096:4:186::8) To DM4PR11MB5469.namprd11.prod.outlook.com
 (2603:10b6:5:399::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5469:EE_|BN9PR11MB5451:EE_
X-MS-Office365-Filtering-Correlation-Id: ce551948-3a19-45fd-81e9-08dc05d94db8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j3Bj7lyRwi1Wd/4Kk0pOSrSG8+VpPZm3mmb14U0PRJgCr3aCUMFtRCkM3iSPIADy5UIdEhRElev2topzuCdLGAgpZo2mAXq49YwzYTDLgmqHLbCRm81FHd2zgEw/x8t503I9NQzEmpWAKDHnaD7cIZQjzD1/3jZ/sME/jh+utoHx8sqqxiSioYh1/heqK7uVWBVdFeUyqcvLKe3eAhesgxQLoX+q/upiwLEEetedhDSI0Mkdm+6uggPDCuq/O6mn0h07MFD1yu7nM4FlMP4mlz9fyatrX/+6oiy83/fnAGmKRqteCqKDKNJ0kXEpm4J/lpKVBrk6wQ1wCTYKCdZBZ0AeqFDXQuna2OkDJg+QvG8JVzRcsobDoTvHCpvckMr1JQm9XtFIHr6hQRxjLE3hGOY0Ye6Jq1RVyETFohaH8b0nItjoGVfSZCDu9wZJQxtCt+b+O6ewUTa6YFRYsggA1oQF02zsknWkie1Xpepk4Nbt1bqFBd2L6lZFAkG5B/CicMZNKa9hx5uMGQ2KZrPA3uqNFvU4NANJ9wydVTyaFs6qxyJe+qMp8OJVusw7PGkOjokAxupTwiqfGNg23zhnk8rFw7mxt/ihcNLrDVikaztCz4JZBRheJsbnIgmQDPCD8rgHDgSZKNjG8qjtWBZ2tQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR11MB5469.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(136003)(396003)(346002)(366004)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(83380400001)(82960400001)(36756003)(31696002)(86362001)(41300700001)(38100700002)(5660300002)(7406005)(7416002)(8936002)(66556008)(66476007)(316002)(66946007)(4326008)(8676002)(53546011)(110136005)(2616005)(6512007)(6506007)(26005)(478600001)(6486002)(2906002)(6666004)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajBrQm9tK3JYNEh6Zkd2d2p6aVpWWDBMTWdxNHBQN0JGV3VqOE9HZlBldkVV?=
 =?utf-8?B?NnFGNUpBdENRVGFNZ1hqZjlhcVByMDdEektqb3U0SHgzV1RhWUNQYUIwY0xF?=
 =?utf-8?B?cFZZMFplbW90d241eno1WTZRWlo2SHFiQmpYdW94TktOSUNXVWRjYm9tNW8v?=
 =?utf-8?B?Z0V1aTQxUjRpbklkNTBUeEhsMnF2QlhDbmNVdmRBRTBlWVlJRmNsY0Exb2Iz?=
 =?utf-8?B?SGx6TG9YTGw1UTF4Q3hCOGtjVExwT3Zhc3Q3V0ViRFNVeFJkQ2lORUZ2RVZi?=
 =?utf-8?B?SUVTV3Q2MzJ0azZBWWpMWGRqa2hQY0FnTWRYV2gvdk8xaFB4TlVLdklDVm1P?=
 =?utf-8?B?NmVxbjVNeEtzbWVsbFdvRWRZbHFDbWdva2p6aWVXMVp4WE9rcngvUGxTbDJO?=
 =?utf-8?B?UlNHMTlYWE9WYjVCQm5nendzcXhFb1QyREtySmZ0eXptNG9XTWlDamh2TFdq?=
 =?utf-8?B?MW1iajVjSUtaWWdLVllFcXN5Z3NscDh5WDQ3NktyaGFPakpsb0lUY2hBNFNT?=
 =?utf-8?B?SzhacmFsTytiS2JQL25JanA5cExNQVhaVzVMWGs5VGpVNmRHS2pzNXZkQVZs?=
 =?utf-8?B?OElLMDJzWmJiUG85eTlnZXpLdWxBSjNoRkVBSXlJQlZUMVlwOWFpVGJIamJI?=
 =?utf-8?B?UDdvSkNWUWVWTnNXM1RjdEJ5WlNFRFF5KzgxcEwxb2dUcWtRSkVsMDV5SFd2?=
 =?utf-8?B?RXNJZHowSzBMOHVvWWFBcmtiMnRZVEtLTXdyOExGTWFuSVZITEI5NCtkRVhS?=
 =?utf-8?B?OEFQNHNCSitKTG5sN3hlWWF0TjdiQjJ4VzYxVzRwdjZqcGRvT0Y1eG5wS1Vy?=
 =?utf-8?B?OTU5ZVZFN3RVbWJ1a1h2Ymo3TXZBM0xzS1E5VDJFMXFtb2t1YVFadHE1aFZI?=
 =?utf-8?B?b3h4RHJxSjFwYVFXeU9ZTXczdlk3QklqQmlCY3lCcndMVDFCcURtMUpFTTdM?=
 =?utf-8?B?ZWtCWWNETEs5YTE2YWpTajBYNW5xOGpxZXhoQjhsSmVUckx5NzNObGtUeith?=
 =?utf-8?B?c0dyUVlJTXJacVl0NDJtREh4VklrNVQ3R1d6a1VCcmFZKzNWQ05EZE5yaGRn?=
 =?utf-8?B?OVE5MDdEdlRVMzJVQk5JK1dHZi90R0M1cjNWVEt6WmtYcEdGcmgya28wUTdU?=
 =?utf-8?B?eVRGc2lUWktSWHl5MC9kQXlSWldJZlo2eXlNS0o1NXhPbDhTeWd1a2ZDeC8z?=
 =?utf-8?B?dDkyK2NqSFlaVVVSR1FXQW8zRlRsTVlRS1UzWkVUQ2hxUGFXbE5YS0ViWHlC?=
 =?utf-8?B?VitqNnRnbC92dHg5dWpLQWU1SDErL2FzM1BQbHF3LzN6V205VmR4WGNqbjEy?=
 =?utf-8?B?VXZJaytoaElDYXBST0k3cndMT045dElldkJHYnBJaGgwbUFLMWJFNnlDSG1z?=
 =?utf-8?B?RjZjbEh0RjhSL096MEozcUhKYlhYTFJ6NFJsak9lTGpGTm1Od0RidDlYS2I2?=
 =?utf-8?B?RVh3SEpEL0lQRGJ6R21aVmVPVXB3WmxsOE91NTFndG9Ic1JBNjF1b0wyU2Rw?=
 =?utf-8?B?Uy93MGViOGFCVFQvcVMwL3J2cDIvR3E3K00ydWZnQisrdU5uUUNEa1U5NEtD?=
 =?utf-8?B?Z2NxOXlkeHFIamdQOGRENmtwbzRWb0xxZk5kZUFGVEI5L28yVUJ0MVZQbERV?=
 =?utf-8?B?M2ViWjRNQThIYWk3NmJXNnB0V3NwQjF5Rm43ZG1MRkFsVVFGNkJGQ2pYUGJL?=
 =?utf-8?B?S0dhMWdIUFhiNjNOc1FVRUpSMldOZkpUQWZ2ZUNkdE5OQzJEb2lPV29oQ2VK?=
 =?utf-8?B?blovcnI1NXhTL0ZQZ2QvM2VXMkFlR2lIYTgvYWdNa2U5RDl5UmVTSXhXM1hU?=
 =?utf-8?B?SHlvUDFXdG5URUpaUnNPaHlQbE1EbGIyQVJUVUpxT3hYTkd1b3ptVk45eWkw?=
 =?utf-8?B?ZVl5WjBQZ2lkNWI3WHpXL1RadDdsVm9vMmtIaDVFci9VRjdsaWF1MnVtOTRU?=
 =?utf-8?B?cGZhak9zbXlGdytCK0piNmlhenZ1Nk9JNmpSalJhVmVORkxEaXN2TTJqMkE2?=
 =?utf-8?B?UkV6MUxHREloNG9RMzZZU0xRaCt3VnhmQU5pUjJqeVB5TDF1elFGcGYrQ2ZZ?=
 =?utf-8?B?RzkxY0FtMDBXK0twRXdUbk81TlRrbm96Tmd3OHdNdVJiYzhFN0h0ZGFXU0Er?=
 =?utf-8?Q?3y9OqVlNLA5Ur3SmszelvsZuF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce551948-3a19-45fd-81e9-08dc05d94db8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5469.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Dec 2023 06:10:05.3321
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qy7TaEZXs462FSdSWGMKIBTyc88uxEEGAC2WAd+kvyqlkPZ2boaR78CyO+ZFoxEk8WItl0kK7BWkW5fm1d6lTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5451
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_221026_089182_10761AE0 
X-CRM114-Status: GOOD (  28.78  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAxMi8xNS8yMDIzIDM6MTYgQU0sIFBhc2hhIFRhdGFzaGluIHdyb3RlOgo+IE9uIFRodSwg
RGVjIDE0LCAyMDIzIGF0IDEyOjU44oCvUE0gRGF2aWQgUmllbnRqZXMgPHJpZW50amVzQGdvb2ds
ZS5jb20+IHdyb3RlOgo+Pgo+PiBPbiBUaHUsIDMwIE5vdiAyMDIzLCBQYXNoYSBUYXRhc2hpbiB3
cm90ZToKPj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2lvbW11LXBhZ2VzLmggYi9k
cml2ZXJzL2lvbW11L2lvbW11LXBhZ2VzLmgKPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+PiBp
bmRleCAwMDAwMDAwMDAwMDAuLjIzMzJmODA3ZDUxNAo+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4gKysr
IGIvZHJpdmVycy9pb21tdS9pb21tdS1wYWdlcy5oCj4+PiBAQCAtMCwwICsxLDE5OSBAQAo+Pj4g
Ky8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KPj4+ICsvKgo+Pj4g
KyAqIENvcHlyaWdodCAoYykgMjAyMywgR29vZ2xlIExMQy4KPj4+ICsgKiBQYXNoYSBUYXRhc2hp
biA8cGFzaGEudGF0YXNoaW5Ac29sZWVuLmNvbT4KPj4+ICsgKi8KPj4+ICsKPj4+ICsjaWZuZGVm
IF9fSU9NTVVfUEFHRVNfSAo+Pj4gKyNkZWZpbmUgX19JT01NVV9QQUdFU19ICj4+PiArCj4+PiAr
I2luY2x1ZGUgPGxpbnV4L3Ztc3RhdC5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9nZnAuaD4KPj4+
ICsjaW5jbHVkZSA8bGludXgvbW0uaD4KPj4+ICsKPj4+ICsvKgo+Pj4gKyAqIEFsbCBwYWdlIGFs
bG9jYXRpb24gdGhhdCBhcmUgcGVyZm9ybWVkIGluIHRoZSBJT01NVSBzdWJzeXN0ZW0gbXVzdCB1
c2Ugb25lIG9mCj4+PiArICogdGhlIGZ1bmN0aW9ucyBiZWxvdy4gIFRoaXMgaXMgbmVjZXNzYXJ5
IGZvciB0aGUgcHJvcGVyIGFjY291bnRpbmcgYXMgSU9NTVUKPj4+ICsgKiBzdGF0ZSBjYW4gYmUg
cmF0aGVyIGxhcmdlLCBpLmUuIG11bHRpcGxlIGdpZ2FieXRlcyBpbiBzaXplLgo+Pj4gKyAqLwo+
Pj4gKwo+Pj4gKy8qKgo+Pj4gKyAqIF9faW9tbXVfYWxsb2NfcGFnZXNfbm9kZSAtIGFsbG9jYXRl
IGEgemVyb2VkIHBhZ2Ugb2YgYSBnaXZlbiBvcmRlciBmcm9tCj4+PiArICogc3BlY2lmaWMgTlVN
QSBub2RlLgo+Pj4gKyAqIEBuaWQ6IG1lbW9yeSBOVU1BIG5vZGUgaWQKPj4KPj4gTlVNQV9OT19O
T0RFIGlmIG5vIGxvY2FsaXR5IHJlcXVpcmVtZW50cz8KPiAKPiBJZiBubyBsb2NhbGl0eSBpcyBy
ZXF1aXJlZCwgdGhlcmUgaXMgYSBiZXR0ZXIgaW50ZXJmYWNlOgo+IF9faW9tbXVfYWxsb2NfcGFn
ZXMoKS4gVGhhdCBvbmUgd2lsbCBhbHNvIHRha2UgYSBsb29rIGF0IHRoZSBjYWxsaW5nCj4gcHJv
Y2VzcyBwb2xpY2llcyB0byBkZXRlcm1pbmUgdGhlIHByb3BlciBOVU1BIG5vZGUgd2hlbiBub3Ro
aW5nIGlzCj4gc3BlY2lmaWVkLiBIb3dldmVyLCB3aGVuIHBvbGljaWVzIHNob3VsZCBiZSBpZ25v
cmVkLCBhbmQgbm8gbG9jYWxpdHkKPiByZXF1aXJlZCwgTlVNQV9OT19OT0RFIGNhbiBiZSBwYXNz
ZWQuCj4gCj4+Cj4+PiArICogQGdmcDogYnVkZHkgYWxsb2NhdG9yIGZsYWdzCj4+PiArICogQG9y
ZGVyOiBwYWdlIG9yZGVyCj4+PiArICoKPj4+ICsgKiByZXR1cm5zIHRoZSBoZWFkIHN0cnVjdCBw
YWdlIG9mIHRoZSBhbGxvY2F0ZWQgcGFnZS4KPj4+ICsgKi8KPj4+ICtzdGF0aWMgaW5saW5lIHN0
cnVjdCBwYWdlICpfX2lvbW11X2FsbG9jX3BhZ2VzX25vZGUoaW50IG5pZCwgZ2ZwX3QgZ2ZwLAo+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQg
b3JkZXIpCj4+PiArewo+Pj4gKyAgICAgc3RydWN0IHBhZ2UgKnBhZ2VzOwo+Pgo+PiBzL3BhZ2Vz
L3BhZ2UvIGhlcmUgYW5kIGxhdGVyIGluIHRoaXMgZmlsZS4KPiAKPiBJbiB0aGlzIGZpbGUsIHdo
ZXJlIHRoZXJlIGEgcGFnZSB3aXRoIGFuICJvcmRlciIsIEkgcmVmZXJlbmNlIGl0IHdpdGgKPiAi
cGFnZXMiLCB3aGVuIG5vIG9yZGVyIChpLmUuIG9yZGVyID0gMCksIEkgcmVmZXJlbmNlIGl0IHdp
dGggInBhZ2UiCj4gCj4gSS5lLjogX19pb21tdV9hbGxvY19wYWdlIHZzLiBfX2lvbW11X2FsbG9j
X3BhZ2VzCj4gCj4+Cj4+PiArCj4+PiArICAgICBwYWdlcyA9IGFsbG9jX3BhZ2VzX25vZGUobmlk
LCBnZnAgfCBfX0dGUF9aRVJPLCBvcmRlcik7Cj4+PiArICAgICBpZiAoIXBhZ2VzKQo+Pgo+PiB1
bmxpa2VseSgpPwo+IAo+IFdpbGwgYWRkIGl0Lgo+IAo+Pgo+Pj4gKyAgICAgICAgICAgICByZXR1
cm4gTlVMTDsKPj4+ICsKPj4+ICsgICAgIHJldHVybiBwYWdlczsKPj4+ICt9Cj4+PiArCj4+PiAr
LyoqCj4+PiArICogX19pb21tdV9hbGxvY19wYWdlcyAtIGFsbG9jYXRlIGEgemVyb2VkIHBhZ2Ug
b2YgYSBnaXZlbiBvcmRlci4KPj4+ICsgKiBAZ2ZwOiBidWRkeSBhbGxvY2F0b3IgZmxhZ3MKPj4+
ICsgKiBAb3JkZXI6IHBhZ2Ugb3JkZXIKPj4+ICsgKgo+Pj4gKyAqIHJldHVybnMgdGhlIGhlYWQg
c3RydWN0IHBhZ2Ugb2YgdGhlIGFsbG9jYXRlZCBwYWdlLgo+Pj4gKyAqLwo+Pj4gK3N0YXRpYyBp
bmxpbmUgc3RydWN0IHBhZ2UgKl9faW9tbXVfYWxsb2NfcGFnZXMoZ2ZwX3QgZ2ZwLCBpbnQgb3Jk
ZXIpCj4+PiArewo+Pj4gKyAgICAgc3RydWN0IHBhZ2UgKnBhZ2VzOwo+Pj4gKwo+Pj4gKyAgICAg
cGFnZXMgPSBhbGxvY19wYWdlcyhnZnAgfCBfX0dGUF9aRVJPLCBvcmRlcik7Cj4+PiArICAgICBp
ZiAoIXBhZ2VzKQo+Pj4gKyAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPj4+ICsKPj4+ICsgICAg
IHJldHVybiBwYWdlczsKPj4+ICt9Cj4+PiArCj4+PiArLyoqCj4+PiArICogX19pb21tdV9hbGxv
Y19wYWdlX25vZGUgLSBhbGxvY2F0ZSBhIHplcm9lZCBwYWdlIGF0IHNwZWNpZmljIE5VTUEgbm9k
ZS4KPj4+ICsgKiBAbmlkOiBtZW1vcnkgTlVNQSBub2RlIGlkCj4+PiArICogQGdmcDogYnVkZHkg
YWxsb2NhdG9yIGZsYWdzCj4+PiArICoKPj4+ICsgKiByZXR1cm5zIHRoZSBzdHJ1Y3QgcGFnZSBv
ZiB0aGUgYWxsb2NhdGVkIHBhZ2UuCj4+PiArICovCj4+PiArc3RhdGljIGlubGluZSBzdHJ1Y3Qg
cGFnZSAqX19pb21tdV9hbGxvY19wYWdlX25vZGUoaW50IG5pZCwgZ2ZwX3QgZ2ZwKQo+Pj4gK3sK
Pj4+ICsgICAgIHJldHVybiBfX2lvbW11X2FsbG9jX3BhZ2VzX25vZGUobmlkLCBnZnAsIDApOwo+
Pj4gK30KPj4+ICsKPj4+ICsvKioKPj4+ICsgKiBfX2lvbW11X2FsbG9jX3BhZ2UgLSBhbGxvY2F0
ZSBhIHplcm9lZCBwYWdlCj4+PiArICogQGdmcDogYnVkZHkgYWxsb2NhdG9yIGZsYWdzCj4+PiAr
ICoKPj4+ICsgKiByZXR1cm5zIHRoZSBzdHJ1Y3QgcGFnZSBvZiB0aGUgYWxsb2NhdGVkIHBhZ2Uu
Cj4+PiArICovCj4+PiArc3RhdGljIGlubGluZSBzdHJ1Y3QgcGFnZSAqX19pb21tdV9hbGxvY19w
YWdlKGdmcF90IGdmcCkKPj4+ICt7Cj4+PiArICAgICByZXR1cm4gX19pb21tdV9hbGxvY19wYWdl
cyhnZnAsIDApOwo+Pj4gK30KPj4+ICsKPj4+ICsvKioKPj4+ICsgKiBfX2lvbW11X2ZyZWVfcGFn
ZXMgLSBmcmVlIHBhZ2Ugb2YgYSBnaXZlbiBvcmRlcgo+Pj4gKyAqIEBwYWdlczogaGVhZCBzdHJ1
Y3QgcGFnZSBvZiB0aGUgcGFnZQo+Pgo+PiBJIHRoaW5rICJwYWdlcyIgaW1wbGllcyBtb3JlIHRo
YW4gb25lIHBhZ2UsIHRoaXMgaXMganVzdCBhIChwb3RlbnRpYWxseQo+PiBjb21wb3VuZCkgcGFn
ZT8KPiAKPiBZZXMsIG1vcmUgdGhhbiBvbmUgcGFnZSwgYmFzaWNhbGx5LCB3aGVuIG9yZGVyIG1h
eSBiZSA+IDAuCj4gCj4+PiArLyoqCj4+PiArICogaW9tbXVfZnJlZV9wYWdlIC0gZnJlZSBwYWdl
Cj4+PiArICogQHZpcnQ6IHZpcnR1YWwgYWRkcmVzcyBvZiB0aGUgcGFnZSB0byBiZSBmcmVlZC4K
Pj4+ICsgKi8KPj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgaW9tbXVfZnJlZV9wYWdlKHZvaWQgKnZp
cnQpCj4+PiArewo+Pj4gKyAgICAgaW9tbXVfZnJlZV9wYWdlcyh2aXJ0LCAwKTsKPj4+ICt9Cj4+
PiArCj4+PiArLyoqCj4+PiArICogaW9tbXVfZnJlZV9wYWdlc19saXN0IC0gZnJlZSBhIGxpc3Qg
b2YgcGFnZXMuCj4+PiArICogQHBhZ2VzOiB0aGUgaGVhZCBvZiB0aGUgbHJ1IGxpc3QgdG8gYmUg
ZnJlZWQuCj4+Cj4+IERvY3VtZW50IHRoZSBsb2NraW5nIHJlcXVpcmVtZW50cyBmb3IgdGhpcz8K
PiAKPiBUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcuIEkgd2lsbCBhZGQgaW5mbyBhYm91dCBsb2Nr
aW5nIHJlcXVpcmVtZW50cywKPiBpbiBmYWN0IHRoZXkgYXJlIHZlcnkgcmVsYXhlZC4KPiAKPiBU
aGVzZSBwYWdlcyBhcmUgYWRkZWQgdG8gdGhlIGxpc3QgYnkgdW5tYXBzIG9yIHJlbWFwcyBvcGVy
YXRpb24gaW4KPiBJbnRlbCBJT01NVSBpbXBsZW1lbnRhdGlvbi4gVGhlc2UgY2FsbHMgYXNzdW1l
IHRoYXQgd2hvZXZlciBpcyBkb2luZwo+IHRob3NlIG9wZXJhdGlvbnMgaGFzIGV4Y2x1c2l2ZSBh
Y2Nlc3MgdG8gdGhlIFZBIHJhbmdlIGluIHRoZSBwYWdlCj4gdGFibGUgb2YgdGhhdCBvcGVyYXRp
b24uIFRoZSBwYWdlcyBpbiB0aGlzIGZyZWVsaXN0IG9ubHkgYmVsb25nIHRvIHRoZQo+IGZvcm1l
ciBwYWdlLXRhYmxlcyBmcm9tIHRoZSBJT1ZBIHJhbmdlIGZvciB0aG9zZSBvcGVyYXRpb25zLgoK
VGhlc2UgcGFnZXMgbWF5YmUgYmUgYWNjZXNzZWQgY29uY3VycmVudGx5IGJ5IHRocmVhZCBjb250
ZXh0cyBvdGhlciB0aGFuIAp0aGUgSU9NTVUgZHJpdmVyIChzdWNoIGFzIGRlYnVnZnMpLgoKVGhh
bmtzLApKaW5ncWkKPiAKPj4+ICsgKi8KPj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgaW9tbXVfZnJl
ZV9wYWdlc19saXN0KHN0cnVjdCBsaXN0X2hlYWQgKnBhZ2VzKQo+Pj4gK3sKPj4+ICsgICAgIHdo
aWxlICghbGlzdF9lbXB0eShwYWdlcykpIHsKPj4+ICsgICAgICAgICAgICAgc3RydWN0IHBhZ2Ug
KnAgPSBsaXN0X2VudHJ5KHBhZ2VzLT5wcmV2LCBzdHJ1Y3QgcGFnZSwgbHJ1KTsKPj4+ICsKPj4+
ICsgICAgICAgICAgICAgbGlzdF9kZWwoJnAtPmxydSk7Cj4+PiArICAgICAgICAgICAgIHB1dF9w
YWdlKHApOwo+Pj4gKyAgICAgfQo+Pj4gK30KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
