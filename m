Return-Path: <SRS0=QBjV=EN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D4CC388F7
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 11:57:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A8FD5206F4
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 11:57:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mAstcV3X";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=suse.com header.i=@suse.com header.b="fGD94/eq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A8FD5206F4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=suse.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dr5K+3zmSb6Pa0745vtwrz3f+rupdkAWTADpp1yTT7I=; b=mAstcV3XJVcCcqe6vVyNxxFAR
	Jve2rov8YjAErjWMllV2EZlot2fiIRF4g6ucQwcioj5AMZi81mmHxYYZMvnJghl1IG1UeIpOn0aKt
	ACNpk+wnF/lpuqBaD3w516eYmakR1UUNfnOzrmUsVl8eSk2qve0dlbzSE7tsGIsYgv0JIE+fm5EP8
	KD/Qz46S+mL/tqHh16Trm93hbU8LA49BgdFsb5uNs2P+ez6FQEkywN+gNA/N12DACcGCjJtMnNtNs
	JhLnCDGkJmWtOzQaT6DzXKaq9YQcODRzqP8x7IC9jCmeNS/P67o8x4nP6867LWcZ7w8OIVLRB3GBJ
	GH9FpDibQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbMqj-0004Pc-Uf; Sat, 07 Nov 2020 11:57:41 +0000
Received: from de-smtp-delivery-102.mimecast.com ([51.163.158.102])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbMqe-0004OU-LG
 for linux-rockchip@lists.infradead.org; Sat, 07 Nov 2020 11:57:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1604750255;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=Vz1u/3L7SjfQYeRgbd6bjB8qPPSUa+yeblNuhVO3jLg=;
 b=fGD94/eq/pTJXWpZz5TXOgUaIwXoddoAoWIn7sR22gBnKcCOeVplm+EW+esbVr/8YLEL5e
 abvYeijLh3qTRpJIGl24sgEURh/9rwQaPTDji5s3M+itibBxsaCiiJ4VCza0eayTGCk30O
 qzX38rx9cozG8VWoMAXM6y5XjSwDoAY=
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur02lp2054.outbound.protection.outlook.com [104.47.4.54]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-31-cCOpCt28Mg-F7BzJ5b0Y7Q-1; Sat, 07 Nov 2020 12:57:33 +0100
X-MC-Unique: cCOpCt28Mg-F7BzJ5b0Y7Q-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+6vgWdxRLy/IJuz9Gnp2OdCw6vAbNoWFCw3yv7KL9LZXhcCLEwtnRe0f1W5I8jQV3MdtjNQWTD8M6tAkCKzLxXUxloXfdIdgKMn9LpK0+ZiwOHswNcA9Z4TCgXa/JwHx3NshpbHDjPCTg3J6hiCwLRXf1GJXLFGp/Ya0zZyJGXCBs7G8HN7HvdL52p8wLG/e6CziQ+ZHqvWgif3eZHrvzobi06yLI6GZTzJv9KexccK2EP+cXRV6iEWt1AGVUSBQZt5DHOLABd+DG+w26o22VMfpT91Z9AV02i1UhKPH1dcckAcU2klC88JgUu7Xn1y4ebesF3eWm3TvJo28bgFVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+aYPPTjseWHql79dS8YarCmkA4PrZoN2mUr1HeMgn3E=;
 b=ORoAIeNrn0iesX6wQm8W8s6QCYcpbRVA7jYMo5S087ERWG3uMTYCfTB9Bl+ektF7yi3U+LFFDHfwJ1enxUTG6VWFlaY06E/s41qcbesVk2sVEmrD7b4a47fGL4VA6U8XHSorzGr4RCT5dkmh+M1v70nFjnxXa2iDiFfbAb+YP80BEekUw1VCYVC3LzRKuVKUpCAZQdmnbjJjP9lBeRcCo2RZs9ixuTOjs4qoXQ6jRkWJAb2NHvQw5E/5WUeLgAk76KYKwQETsg81hE/Nsx3GQ9XbWG5n464j8gyjt8dJUHfqLkO/Z6JxcskEWyZhbKK1cP53QDdVWcZgGbH45sJMBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=suse.com;
Received: from PA4PR04MB7533.eurprd04.prod.outlook.com (2603:10a6:102:f1::19)
 by PR3PR04MB7242.eurprd04.prod.outlook.com (2603:10a6:102:91::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.25; Sat, 7 Nov
 2020 11:57:32 +0000
Received: from PA4PR04MB7533.eurprd04.prod.outlook.com
 ([fe80::545:8a04:2a5c:f4c7]) by PA4PR04MB7533.eurprd04.prod.outlook.com
 ([fe80::545:8a04:2a5c:f4c7%6]) with mapi id 15.20.3541.022; Sat, 7 Nov 2020
 11:57:32 +0000
Subject: Re: [PATCH 1/2] PCI: rockchip: Make some regulators non-optional
From: Qu Wenruo <wqu@suse.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Robin Murphy <robin.murphy@arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <20191120170532.GC3279@e121166-lin.cambridge.arm.com>
 <e8a91353-49ab-7581-f2a8-b8b4729072bf@suse.com>
Autocrypt: addr=wqu@suse.com; keydata=
 mQENBFnVga8BCACyhFP3ExcTIuB73jDIBA/vSoYcTyysFQzPvez64TUSCv1SgXEByR7fju3o
 8RfaWuHCnkkea5luuTZMqfgTXrun2dqNVYDNOV6RIVrc4YuG20yhC1epnV55fJCThqij0MRL
 1NxPKXIlEdHvN0Kov3CtWA+R1iNN0RCeVun7rmOrrjBK573aWC5sgP7YsBOLK79H3tmUtz6b
 9Imuj0ZyEsa76Xg9PX9Hn2myKj1hfWGS+5og9Va4hrwQC8ipjXik6NKR5GDV+hOZkktU81G5
 gkQtGB9jOAYRs86QG/b7PtIlbd3+pppT0gaS+wvwMs8cuNG+Pu6KO1oC4jgdseFLu7NpABEB
 AAG0GFF1IFdlbnJ1byA8d3F1QHN1c2UuY29tPokBTQQTAQgAOAIbAwULCQgHAgYVCAkKCwIE
 FgIDAQIeAQIXgBYhBC3fcuWlpVuonapC4cI9kfOhJf6oBQJdnDWhAAoJEMI9kfOhJf6oZgoH
 90uqoGyUh5UWtiT9zjUcvlMTCpd/QSgwagDuY+tEdVPaKlcnTNAvZKWSit8VuocjrOFbTLwb
 vZ43n5f/l/1QtwMgQei/RMY2XhW+totimzlHVuxVaIDwkF+zc+pUI6lDPnULZHS3mWhbVr9N
 vZAAYVV7GesyyFpZiNm7GLvLmtEdYbc9OnIAOZb3eKfY3mWEs0eU0MxikcZSOYy3EWY3JES7
 J9pFgBrCn4hF83tPH2sphh1GUFii+AUGBMY/dC6VgMKbCugg+u/dTZEcBXxD17m+UcbucB/k
 F2oxqZBEQrb5SogdIq7Y9dZdlf1m3GRRJTX7eWefZw10HhFhs1mwx7kBDQRZ1YGvAQgAqlPr
 YeBLMv3PAZ75YhQIwH6c4SNcB++hQ9TCT5gIQNw51+SQzkXIGgmzxMIS49cZcE4KXk/kHw5h
 ieQeQZa60BWVRNXwoRI4ib8okgDuMkD5Kz1WEyO149+BZ7HD4/yK0VFJGuvDJR8T7RZwB69u
 VSLjkuNZZmCmDcDzS0c/SJOg5nkxt1iTtgUETb1wNKV6yR9XzRkrEW/qShChyrS9fNN8e9c0
 MQsC4fsyz9Ylx1TOY/IF/c6rqYoEEfwnpdlz0uOM1nA1vK+wdKtXluCa79MdfaeD/dt76Kp/
 o6CAKLLcjU1Iwnkq1HSrYfY3HZWpvV9g84gPwxwxX0uXquHxLwARAQABiQE8BBgBCAAmAhsM
 FiEELd9y5aWlW6idqkLhwj2R86El/qgFAl2cNa4FCQlqTn8ACgkQwj2R86El/qhXBAf/eXLP
 HDNTkHRPxoDnwhscIHJDHlsszke25AFltJQ1adoaYCbsQVv4Mn5rQZ1Gon54IMdxBN3r/B08
 rGVPatIfkycMCShr+rFHPKnExhQ7Wr555fq+sQ1GOwOhr1xLEqAhBMp28u9m8hnkqL36v+AF
 hjTwRtS+tRMZfoG6n72xAj984l56G9NPfs/SOKl6HR0mCDXwJGZAOdtyRmqddi53SXi5N4H1
 jWX1xFshp7nIkRm6hEpISEWr/KKLbAiKKbP0ql5tP5PinJeIBlDv4g/0+aGoGg4dELTnfEVk
 jMC8cJ/LiIaR/OEOF9S2nSeTQoBmusTz+aqkbogvvYGam6uDYw==
Message-ID: <2ed040d3-bcea-c15c-dbda-fb589d6e2c27@suse.com>
Date: Sat, 7 Nov 2020 19:57:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <e8a91353-49ab-7581-f2a8-b8b4729072bf@suse.com>
Content-Language: en-US
X-Originating-IP: [149.28.201.231]
X-ClientProxiedBy: BYAPR01CA0063.prod.exchangelabs.com (2603:10b6:a03:94::40)
 To PA4PR04MB7533.eurprd04.prod.outlook.com
 (2603:10a6:102:f1::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [0.0.0.0] (149.28.201.231) by
 BYAPR01CA0063.prod.exchangelabs.com (2603:10b6:a03:94::40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.27 via Frontend Transport; Sat, 7 Nov 2020 11:57:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cd4bd156-a968-4c0f-00e3-08d883144ee2
X-MS-TrafficTypeDiagnostic: PR3PR04MB7242:
X-Microsoft-Antispam-PRVS: <PR3PR04MB72425D493D16C7AF45EBC48AD6EC0@PR3PR04MB7242.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: faB62e8UgJCMudvElap6f7UaXm9Uxmvif+MLvCiFYtupHkXOeDEXyIkBLV4EW96jq6F5GzwwDMp7oqH0NO2w6T/guHJEczcDykiYxKqt9503O1qXle5YU5LRNjGlxfPxY8caBHMGLGsSd1+iaQ+LqpR9M3OqBTh4ibQDkEJpVTu/TJlkT8GXyxpBqp5BVhrSRXdhDgQbPxHrCu0JY8wNVlvCTlq7Hby67t85XRNZ7W98Atz/IiD8uhHT79kakydQ8lx1Gj35ddwhou7zf9xTlPVIRbiedoDGbZcV0qs3ojewKagvtPKN/tUN8hap8QdUvJ7Rs3AjsP5q+bNd9er6IQG8C9L+PHXqULjiNHJF0NRC9wsb0UWypYtU+/eIjeLsVTNV3sJLbJpjG9HF1wnDLOB56VmjuglrACDc6hid6xbPeibEuPKGT1NMnQWMolsRBrZ3nxxAHGVbJ9FeiqPG8Zl5B2PIVb6u/hTVG2IGZVo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PA4PR04MB7533.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(346002)(136003)(39860400002)(396003)(956004)(86362001)(83380400001)(6666004)(52116002)(6706004)(966005)(4326008)(5660300002)(7416002)(31686004)(2906002)(316002)(2616005)(6486002)(186003)(66946007)(8676002)(66556008)(31696002)(66476007)(8936002)(16576012)(36756003)(110136005)(16526019)(26005)(478600001)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: wgkSOawnKt/J/LGybptAEZkwJctDxMDu5osSIJOYGIpN9OCWsD9BBFXsjwkDdOkMkwCflJvmlQsHHDUWlSkk3S15PlxJjQktYiAsMcvxX8OMt+y5AEXgVmYE3NV0VNcZg9ZwN5VU5rwT0nRymODyUBkZHRZ8QS7U5tHZ1vE6mZUPZCOUYO1TfNsfEKOIOSUK7ti8UqLRTcGTj3TyIDVofMroBcL6bKQ66BfZM1hpGcsBWL8VlRQOfOOsyo1mn81+Wl409yh9TvLohCC+z+L501y8ay/A9Vpp79V0IG84T9+9hOmPnDD5N5PQ9jL54xxF7zOzQylAqunHWU8RV8pK5JL57wCuKBWa7E0hL83JVRgyIeem4vypqy5DX/RBL0dmyCjySI/olJQkp+zP3MVYRCHh7fzbElZ38aAbxSooXCBk5OO2nRGNNCCy+xeaZNuaac/hVM8T529RNguZkMZmxU4MExtf+Kik0NyLGi3n/G5UXm9vWF4IAW4gywfqGWhrdeYx9eTap7p4GIPO8dDIbuNopwW3tjV8lFWBzfnrJ9XruD+5uVLvdf8h4lhlujgy/hLaPXmp3CMZdKUNtUuxdevqXaLO+VYcyckUiD3uB0JrY2xq3qbykOkfBpTyuF7EHAdYJKrdPGkIRH+8BvdAEA==
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd4bd156-a968-4c0f-00e3-08d883144ee2
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7533.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2020 11:57:32.1442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5eQdWZLpSlxVVksGCq2NOYjL5MEWk1PbUevRKS1l8eNT2UyIiPuqjlvARQmCf6Ki
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7242
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201107_065737_017345_62207E19 
X-CRM114-Status: GOOD (  19.44  )
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
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, broonie@kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAyMDIwLzExLzcg5LiL5Y2INzozNiwgUXUgV2VucnVvIHdyb3RlOgo+IAo+IAo+IE9uIDIw
MTkvMTEvMjEg5LiK5Y2IMTowNSwgTG9yZW56byBQaWVyYWxpc2kgd3JvdGU6Cj4+IE9uIFNhdCwg
Tm92IDE2LCAyMDE5IGF0IDEyOjU0OjE5UE0gKzAwMDAsIFJvYmluIE11cnBoeSB3cm90ZToKPj4+
IFRoZSAwVjkgYW5kIDFWOCBzdXBwbGllcyBwb3dlciB0aGUgUENJZSBibG9jayBpbiB0aGUgU29D
IGl0c2VsZiwgYW5kCj4+PiBhcmUgdGh1cyBmdW5kYW1lbnRhbCB0byBQQ0llIGJlaW5nIHVzYWJs
ZSBhdCBhbGwuIEFzIHN1Y2gsIGl0IG1ha2VzCj4+PiBzZW5zZSB0byB0cmVhdCB0aGVtIGFzIG5v
bi1vcHRpb25hbCBhbmQgcmVseSBvbiBkdW1teSByZWd1bGF0b3JzIGlmCj4+PiBub3QgZXhwbGlj
aXRseSBkZXNjcmliZWQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogUm9iaW4gTXVycGh5IDxyb2Jp
bi5tdXJwaHlAYXJtLmNvbT4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
ZS1yb2NrY2hpcC1ob3N0LmMgfCA2OSArKysrKysrKy0tLS0tLS0tLS0tLS0KPj4+ICAxIGZpbGUg
Y2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgNDQgZGVsZXRpb25zKC0pCj4+Cj4+IEFwcGxpZWQg
dG8gcGNpL3JvY2tjaGlwLCB0aGFua3MuCj4gCj4gU29ycnksIHRoaXMgY29tbWl0IGlzIGNhdXNl
IHJlZ3Jlc3Npb24gZm9yIFJLMzM5OSBib2FyZHMgdW5hYmxlIHRvCj4gZGV0ZWN0IHRoZSBjb250
cm9sbGVyIGFueW1vcmUuCj4gCj4gVGhlIDF2OCAoYW5kIDB2OSkgaXMgY2F1c2luZyAtNTE3IGFu
ZCByZWplY3QgdGhlIGNvbnRyb2xsZXIgaW5pdGlhbGl6YXRpb24uCj4gCj4gSSdtIG5vdCBhIFBD
SSBndXksIGJ1dCBhIHF1aWNrIGdvb2dsZSBzZWFyY2ggc2hvd3MgdGhlc2UgdHdvIHZvbHRhZ2Vz
Cj4gYXJlIG5vdCByZWxhdGVkIHRvIFBDSUUgY29yZSBmdW5jdGlvbmFsaXR5LCBlc3BlY2lhbGx5
IGNvbnNpZGVyaW5nIHRoZQo+IGNvbnRyb2xsZXIgdXNlZCBpbiBSSzMzOTkgYXJlIG1vc3RseSB0
byBwcm92aWRlIE5WTUUgc3VwcG9ydC4KPiAKPiBUaGlzIGJ1ZyBtYWtlcyBhbGwgUkszMzk5IHVz
ZXJzIHdobyBwdXQgcm9vdCBmcyBpbnRvIE5WTUUgZHJpdmVyIHVuYWJsZQo+IHRvIGJvb3QgdGhl
IGRldmljZS4KPiAKPiBJIHJlYWxseSBob3BlIHNvbWUgb25lIGNvdWxkIHRlc3QgdGhlIHBhdGNo
IGJlZm9yZSBhZmZlY3RpbmcgdGhlIGVuZAo+IHVzZXJzIG9yIGF0IGxlYXN0IHRyeSB0byB1bmRl
cnN0YW5kIGhvdyBtb3N0IHVzZXJzIHdvdWxkIHVzZSB0aGUgUENJRQo+IGludGVyZmFjZSBmb3Iu
CgpNeSBiYWQsIGl0J3Mgbm90IHRoYXQgZWFzeS4gVGhlIGR0c2kgaGFzIHZwY2llMXY4IGFuZCB2
cGNpZTB2OSBkZWZpbmVkLgpJdCBzaG91bGQgYmUgc29tZXRoaW5nIGVsc2Ugd3JvbmcuCgpUaGFu
a3MsClF1Cj4gCj4gVGhhbmtzLAo+IFF1Cj4gCj4+Cj4+IExvcmVuem8KPj4KPj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIGIvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYwo+Pj4gaW5kZXggZWY4ZTY3N2Nl
OWQxLi42ODUyNWY4YWM0ZDkgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4+PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aWUtcm9ja2NoaXAtaG9zdC5jCj4+PiBAQCAtNjIwLDE5ICs2MjAsMTMgQEAgc3RhdGljIGludCBy
b2NrY2hpcF9wY2llX3BhcnNlX2hvc3RfZHQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlw
KQo+Pj4gIAkJZGV2X2luZm8oZGV2LCAibm8gdnBjaWUzdjMgcmVndWxhdG9yIGZvdW5kXG4iKTsK
Pj4+ICAJfQo+Pj4gIAo+Pj4gLQlyb2NrY2hpcC0+dnBjaWUxdjggPSBkZXZtX3JlZ3VsYXRvcl9n
ZXRfb3B0aW9uYWwoZGV2LCAidnBjaWUxdjgiKTsKPj4+IC0JaWYgKElTX0VSUihyb2NrY2hpcC0+
dnBjaWUxdjgpKSB7Cj4+PiAtCQlpZiAoUFRSX0VSUihyb2NrY2hpcC0+dnBjaWUxdjgpICE9IC1F
Tk9ERVYpCj4+PiAtCQkJcmV0dXJuIFBUUl9FUlIocm9ja2NoaXAtPnZwY2llMXY4KTsKPj4+IC0J
CWRldl9pbmZvKGRldiwgIm5vIHZwY2llMXY4IHJlZ3VsYXRvciBmb3VuZFxuIik7Cj4+PiAtCX0K
Pj4+ICsJcm9ja2NoaXAtPnZwY2llMXY4ID0gZGV2bV9yZWd1bGF0b3JfZ2V0KGRldiwgInZwY2ll
MXY4Iik7Cj4+PiArCWlmIChJU19FUlIocm9ja2NoaXAtPnZwY2llMXY4KSkKPj4+ICsJCXJldHVy
biBQVFJfRVJSKHJvY2tjaGlwLT52cGNpZTF2OCk7Cj4+PiAgCj4+PiAtCXJvY2tjaGlwLT52cGNp
ZTB2OSA9IGRldm1fcmVndWxhdG9yX2dldF9vcHRpb25hbChkZXYsICJ2cGNpZTB2OSIpOwo+Pj4g
LQlpZiAoSVNfRVJSKHJvY2tjaGlwLT52cGNpZTB2OSkpIHsKPj4+IC0JCWlmIChQVFJfRVJSKHJv
Y2tjaGlwLT52cGNpZTB2OSkgIT0gLUVOT0RFVikKPj4+IC0JCQlyZXR1cm4gUFRSX0VSUihyb2Nr
Y2hpcC0+dnBjaWUwdjkpOwo+Pj4gLQkJZGV2X2luZm8oZGV2LCAibm8gdnBjaWUwdjkgcmVndWxh
dG9yIGZvdW5kXG4iKTsKPj4+IC0JfQo+Pj4gKwlyb2NrY2hpcC0+dnBjaWUwdjkgPSBkZXZtX3Jl
Z3VsYXRvcl9nZXQoZGV2LCAidnBjaWUwdjkiKTsKPj4+ICsJaWYgKElTX0VSUihyb2NrY2hpcC0+
dnBjaWUwdjkpKQo+Pj4gKwkJcmV0dXJuIFBUUl9FUlIocm9ja2NoaXAtPnZwY2llMHY5KTsKPj4+
ICAKPj4+ICAJcmV0dXJuIDA7Cj4+PiAgfQo+Pj4gQEAgLTY1OCwyNyArNjUyLDIyIEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfcGNpZV9zZXRfdnBjaWUoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tj
aGlwKQo+Pj4gIAkJfQo+Pj4gIAl9Cj4+PiAgCj4+PiAtCWlmICghSVNfRVJSKHJvY2tjaGlwLT52
cGNpZTF2OCkpIHsKPj4+IC0JCWVyciA9IHJlZ3VsYXRvcl9lbmFibGUocm9ja2NoaXAtPnZwY2ll
MXY4KTsKPj4+IC0JCWlmIChlcnIpIHsKPj4+IC0JCQlkZXZfZXJyKGRldiwgImZhaWwgdG8gZW5h
YmxlIHZwY2llMXY4IHJlZ3VsYXRvclxuIik7Cj4+PiAtCQkJZ290byBlcnJfZGlzYWJsZV8zdjM7
Cj4+PiAtCQl9Cj4+PiArCWVyciA9IHJlZ3VsYXRvcl9lbmFibGUocm9ja2NoaXAtPnZwY2llMXY4
KTsKPj4+ICsJaWYgKGVycikgewo+Pj4gKwkJZGV2X2VycihkZXYsICJmYWlsIHRvIGVuYWJsZSB2
cGNpZTF2OCByZWd1bGF0b3JcbiIpOwo+Pj4gKwkJZ290byBlcnJfZGlzYWJsZV8zdjM7Cj4+PiAg
CX0KPj4+ICAKPj4+IC0JaWYgKCFJU19FUlIocm9ja2NoaXAtPnZwY2llMHY5KSkgewo+Pj4gLQkJ
ZXJyID0gcmVndWxhdG9yX2VuYWJsZShyb2NrY2hpcC0+dnBjaWUwdjkpOwo+Pj4gLQkJaWYgKGVy
cikgewo+Pj4gLQkJCWRldl9lcnIoZGV2LCAiZmFpbCB0byBlbmFibGUgdnBjaWUwdjkgcmVndWxh
dG9yXG4iKTsKPj4+IC0JCQlnb3RvIGVycl9kaXNhYmxlXzF2ODsKPj4+IC0JCX0KPj4+ICsJZXJy
ID0gcmVndWxhdG9yX2VuYWJsZShyb2NrY2hpcC0+dnBjaWUwdjkpOwo+Pj4gKwlpZiAoZXJyKSB7
Cj4+PiArCQlkZXZfZXJyKGRldiwgImZhaWwgdG8gZW5hYmxlIHZwY2llMHY5IHJlZ3VsYXRvclxu
Iik7Cj4+PiArCQlnb3RvIGVycl9kaXNhYmxlXzF2ODsKPj4+ICAJfQo+Pj4gIAo+Pj4gIAlyZXR1
cm4gMDsKPj4+ICAKPj4+ICBlcnJfZGlzYWJsZV8xdjg6Cj4+PiAtCWlmICghSVNfRVJSKHJvY2tj
aGlwLT52cGNpZTF2OCkpCj4+PiAtCQlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUx
djgpOwo+Pj4gKwlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUxdjgpOwo+Pj4gIGVy
cl9kaXNhYmxlXzN2MzoKPj4+ICAJaWYgKCFJU19FUlIocm9ja2NoaXAtPnZwY2llM3YzKSkKPj4+
ICAJCXJlZ3VsYXRvcl9kaXNhYmxlKHJvY2tjaGlwLT52cGNpZTN2Myk7Cj4+PiBAQCAtODk3LDgg
Kzg4Niw3IEBAIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgcm9ja2NoaXBfcGNpZV9zdXNwZW5k
X25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKPj4+ICAKPj4+ICAJcm9ja2NoaXBfcGNpZV9kaXNh
YmxlX2Nsb2Nrcyhyb2NrY2hpcCk7Cj4+PiAgCj4+PiAtCWlmICghSVNfRVJSKHJvY2tjaGlwLT52
cGNpZTB2OSkpCj4+PiAtCQlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUwdjkpOwo+
Pj4gKwlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUwdjkpOwo+Pj4gIAo+Pj4gIAly
ZXR1cm4gcmV0Owo+Pj4gIH0KPj4+IEBAIC05MDgsMTIgKzg5NiwxMCBAQCBzdGF0aWMgaW50IF9f
bWF5YmVfdW51c2VkIHJvY2tjaGlwX3BjaWVfcmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRl
dikKPj4+ICAJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0gZGV2X2dldF9kcnZkYXRh
KGRldik7Cj4+PiAgCWludCBlcnI7Cj4+PiAgCj4+PiAtCWlmICghSVNfRVJSKHJvY2tjaGlwLT52
cGNpZTB2OSkpIHsKPj4+IC0JCWVyciA9IHJlZ3VsYXRvcl9lbmFibGUocm9ja2NoaXAtPnZwY2ll
MHY5KTsKPj4+IC0JCWlmIChlcnIpIHsKPj4+IC0JCQlkZXZfZXJyKGRldiwgImZhaWwgdG8gZW5h
YmxlIHZwY2llMHY5IHJlZ3VsYXRvclxuIik7Cj4+PiAtCQkJcmV0dXJuIGVycjsKPj4+IC0JCX0K
Pj4+ICsJZXJyID0gcmVndWxhdG9yX2VuYWJsZShyb2NrY2hpcC0+dnBjaWUwdjkpOwo+Pj4gKwlp
ZiAoZXJyKSB7Cj4+PiArCQlkZXZfZXJyKGRldiwgImZhaWwgdG8gZW5hYmxlIHZwY2llMHY5IHJl
Z3VsYXRvclxuIik7Cj4+PiArCQlyZXR1cm4gZXJyOwo+Pj4gIAl9Cj4+PiAgCj4+PiAgCWVyciA9
IHJvY2tjaGlwX3BjaWVfZW5hYmxlX2Nsb2Nrcyhyb2NrY2hpcCk7Cj4+PiBAQCAtOTM5LDggKzky
NSw3IEBAIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgcm9ja2NoaXBfcGNpZV9yZXN1bWVfbm9p
cnEoc3RydWN0IGRldmljZSAqZGV2KQo+Pj4gIGVycl9wY2llX3Jlc3VtZToKPj4+ICAJcm9ja2No
aXBfcGNpZV9kaXNhYmxlX2Nsb2Nrcyhyb2NrY2hpcCk7Cj4+PiAgZXJyX2Rpc2FibGVfMHY5Ogo+
Pj4gLQlpZiAoIUlTX0VSUihyb2NrY2hpcC0+dnBjaWUwdjkpKQo+Pj4gLQkJcmVndWxhdG9yX2Rp
c2FibGUocm9ja2NoaXAtPnZwY2llMHY5KTsKPj4+ICsJcmVndWxhdG9yX2Rpc2FibGUocm9ja2No
aXAtPnZwY2llMHY5KTsKPj4+ICAJcmV0dXJuIGVycjsKPj4+ICB9Cj4+PiAgCj4+PiBAQCAtMTA4
MSwxMCArMTA2Niw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gIAkJcmVndWxhdG9yX2Rpc2FibGUocm9ja2NoaXAtPnZw
Y2llMTJ2KTsKPj4+ICAJaWYgKCFJU19FUlIocm9ja2NoaXAtPnZwY2llM3YzKSkKPj4+ICAJCXJl
Z3VsYXRvcl9kaXNhYmxlKHJvY2tjaGlwLT52cGNpZTN2Myk7Cj4+PiAtCWlmICghSVNfRVJSKHJv
Y2tjaGlwLT52cGNpZTF2OCkpCj4+PiAtCQlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBj
aWUxdjgpOwo+Pj4gLQlpZiAoIUlTX0VSUihyb2NrY2hpcC0+dnBjaWUwdjkpKQo+Pj4gLQkJcmVn
dWxhdG9yX2Rpc2FibGUocm9ja2NoaXAtPnZwY2llMHY5KTsKPj4+ICsJcmVndWxhdG9yX2Rpc2Fi
bGUocm9ja2NoaXAtPnZwY2llMXY4KTsKPj4+ICsJcmVndWxhdG9yX2Rpc2FibGUocm9ja2NoaXAt
PnZwY2llMHY5KTsKPj4+ICBlcnJfc2V0X3ZwY2llOgo+Pj4gIAlyb2NrY2hpcF9wY2llX2Rpc2Fi
bGVfY2xvY2tzKHJvY2tjaGlwKTsKPj4+ICAJcmV0dXJuIGVycjsKPj4+IEBAIC0xMTA4LDEwICsx
MDkxLDggQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+Pj4gIAkJcmVndWxhdG9yX2Rpc2FibGUocm9ja2NoaXAtPnZwY2llMTJ2
KTsKPj4+ICAJaWYgKCFJU19FUlIocm9ja2NoaXAtPnZwY2llM3YzKSkKPj4+ICAJCXJlZ3VsYXRv
cl9kaXNhYmxlKHJvY2tjaGlwLT52cGNpZTN2Myk7Cj4+PiAtCWlmICghSVNfRVJSKHJvY2tjaGlw
LT52cGNpZTF2OCkpCj4+PiAtCQlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUxdjgp
Owo+Pj4gLQlpZiAoIUlTX0VSUihyb2NrY2hpcC0+dnBjaWUwdjkpKQo+Pj4gLQkJcmVndWxhdG9y
X2Rpc2FibGUocm9ja2NoaXAtPnZwY2llMHY5KTsKPj4+ICsJcmVndWxhdG9yX2Rpc2FibGUocm9j
a2NoaXAtPnZwY2llMXY4KTsKPj4+ICsJcmVndWxhdG9yX2Rpc2FibGUocm9ja2NoaXAtPnZwY2ll
MHY5KTsKPj4+ICAKPj4+ICAJcmV0dXJuIDA7Cj4+PiAgfQo+Pj4gLS0gCj4+PiAyLjE3LjEKPj4+
Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwKPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
