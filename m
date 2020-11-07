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
	by smtp.lore.kernel.org (Postfix) with ESMTP id E487CC55179
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 11:37:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8654A206F4
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 11:37:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="EkypUaNX";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=suse.com header.i=@suse.com header.b="iH3nDyh5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8654A206F4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=suse.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sqUalnW4kvVLtvkOQIAt8WL7HjNUMzoURn8QcXIY9m0=; b=EkypUaNXmrWb1CEmv00+uF7WL
	TIIHBSpKS7GxWBN4NCFFjTT+UAKrCpEhA3saQ/Gsk4IdRMCfGMefcufmJUPIjW/z16wq5jx6f+UYk
	L9Cd88LtuVGd2U09HH1hFNjUpER59lD/ewOaIZjNUZQyu8h3lToORPMq/o3q4Vum6wzOYMXejkM3s
	uqUeaY14GVYJdb1eXDy4YfdglnlZLi4KhgpcOmwuAflc36DETlvP5lAduc+XdFoGvwHalxJANeQCH
	invmCI77sZz7WEayEWsjiI5zP59eeQvOp1PrE5PJSvFDrh14RnPVe+IBO6o+CW7QTp7ysJBBeYMv+
	Yv2F2nxnw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbMWw-0003B2-Sz; Sat, 07 Nov 2020 11:37:14 +0000
Received: from de-smtp-delivery-102.mimecast.com ([51.163.158.102])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbMWt-00039g-Ou
 for linux-rockchip@lists.infradead.org; Sat, 07 Nov 2020 11:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1604749028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=/sVbUwGz/jb3cVXnd+6Z9Z/er2Ya+C9N3ChN63655TY=;
 b=iH3nDyh5eHKRW5LYxsXJeN1JujzkIW/CM+7QLeBZy7S9f8R8a3JxZ6gbO/2fkHGj9m8+xz
 gccT2j1wtqLbthho5M4P6qINp/3AR0+yK6NccZ0s8hrwN4rjpLjGx6eqC254VAA8bNz5iv
 13q9DO7/sxnJqvh2BX9xkuD9pho/jjg=
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2057.outbound.protection.outlook.com [104.47.14.57]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-19-BhjcTjdiO1-tVePm3qF8dA-1; Sat, 07 Nov 2020 12:37:04 +0100
X-MC-Unique: BhjcTjdiO1-tVePm3qF8dA-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=esu5mAxZ7tO2+GUmjb6iA5RKHhk4Ov6K66oBXnCLN1SrMa3j2jnZetuI0cXHadOPu9BKinqN2HmD3I5Z5N01uJwIhTVPYZ6W0XJwcpkBJoTMXGI3CELsLjkg7vl7zrw6e4PLfQMi9WHP0ZxEE6m+lusHYB3IfVVoVn3pTU7IwhvoZ1WAmIpbC8BNxRHBh2M6eBTuGkFTdhpboQAYIIu+UL2ZaFTR9TLn84erFuY3j8Dyfgc1Cse0UlqwRQ3CAPUhnOA4IAii32WMv3nnBGJJxzaRcoULiYinKL5Q2emm7vZApTejfuWFa68AiVecaPbDbQQEegfwq6Lx9uSTmFnhjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bk8LqKDMvJIm3hBdlLwFqvtkTI7AsOPtbo9UEgYW/hM=;
 b=SAvEy3u0nKQUPL40yboT1eqjlEgeQodU3yHA+zDBtf1VHtcncLB14I4UU3rvD3TBoZB+OSRz1s26jb2O1KYGMnXIC8mO3LnjyqJcpwrOIi8zgSWCO/iBDl3OXly1/XaBPzv3n/lfHLOZHoh31NDQbNuZm5Ftq7SzUljiCRFUW+VS6YDDDOTivDhJKyqOd0IrOhW2ufyP/1H69MYfbjj6a+3PmrOQEVDsOgXf9yReD1B7c4t7NCqHW14DBiHTTCddlCIpdxf8UafP/2Lq458D4tdioLdzvqQyRp5WRllnItLCfvfEoSHo+0LtwayWpoqu8T1UDR7Tm80skIqhe9ukAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=suse.com;
Received: from PA4PR04MB7533.eurprd04.prod.outlook.com (2603:10a6:102:f1::19)
 by PA4PR04MB7952.eurprd04.prod.outlook.com (2603:10a6:102:b8::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Sat, 7 Nov
 2020 11:37:02 +0000
Received: from PA4PR04MB7533.eurprd04.prod.outlook.com
 ([fe80::545:8a04:2a5c:f4c7]) by PA4PR04MB7533.eurprd04.prod.outlook.com
 ([fe80::545:8a04:2a5c:f4c7%6]) with mapi id 15.20.3541.022; Sat, 7 Nov 2020
 11:37:02 +0000
Subject: Re: [PATCH 1/2] PCI: rockchip: Make some regulators non-optional
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Robin Murphy <robin.murphy@arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <20191120170532.GC3279@e121166-lin.cambridge.arm.com>
From: Qu Wenruo <wqu@suse.com>
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
Message-ID: <e8a91353-49ab-7581-f2a8-b8b4729072bf@suse.com>
Date: Sat, 7 Nov 2020 19:36:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <20191120170532.GC3279@e121166-lin.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [149.28.201.231]
X-ClientProxiedBy: BY5PR20CA0018.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::31) To PA4PR04MB7533.eurprd04.prod.outlook.com
 (2603:10a6:102:f1::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [0.0.0.0] (149.28.201.231) by
 BY5PR20CA0018.namprd20.prod.outlook.com (2603:10b6:a03:1f4::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18 via Frontend
 Transport; Sat, 7 Nov 2020 11:36:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fd659c27-2d81-49bf-371d-08d8831171da
X-MS-TrafficTypeDiagnostic: PA4PR04MB7952:
X-Microsoft-Antispam-PRVS: <PA4PR04MB79528854EFC5BB50757C8138D6EC0@PA4PR04MB7952.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SM66tJZFlQkhyHsjIs6BUy5hdmvJeC5kEa79r8rKKTZyQzvmXmj8Q1261MhaZxz+xvKI077byNIyBMe+guCdp3NG0ISfZbj0ltnf5KlzxWOc3oQNCGZHvIeNy0ZVOdL+oCWMuliJteB68R2KzV7pSA1Jk2iFnuwR3Ts6TwVsNxsQom4y13YIAsOMtFz4p/UR/qRGVmgyjl/8Ob+9XjfDoe73j+EccFS3kiwLUYOcyKXC4QWv86JufW+lKlE6APkqlIuRrvykKiJhYnGMweYpfyz0M6ViEwJtcx/2+1/L9eHkQK/VdU9J1wexHYTdGgg7tkdZBhYdUjOCpvUeZoK8qoug2F52Sj9Ttlws1T2B6bi4w3nUv6agM9eauabaV8+N9AHQCZYrK6d5eTNhPbylQgwp9gQFTLmNg2UYDmv1FYFjTI2zJlnUJ6uBVd/awx/0gO+hEvmtbGMD1ARJQtJZgltY/j7mt7qHpRb82lPj69Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PA4PR04MB7533.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(136003)(366004)(376002)(346002)(26005)(5660300002)(6706004)(16526019)(31696002)(186003)(110136005)(52116002)(966005)(4326008)(66946007)(316002)(7416002)(478600001)(66476007)(66556008)(6486002)(31686004)(16576012)(8676002)(36756003)(6666004)(83380400001)(2906002)(86362001)(2616005)(956004)(8936002)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: E1/Sfv5eG9a7TnBQBajY46gR4YEvjOcONf7rHop4MndaNLMcbRzxn+BScZoUdJ8Qm83sNatVqeuucnKbK7uJAXrMqocnDq621gMPEcqzWxrrymKEjCObkie/kE9Yrd3Qn57jgT1GyebIcQk4+XaTAXlEA0eUGbg4qbuyLO8J19WAjFRUCdeZIk0RH/TG5eQtqs0Eb+NX9F3JW6CrwSh4rpHS8g7IcUU/Hlv5WyR+V+oC/hrikbC3HoIzOZTVKe4IkE9Z+metDbCufTOHT6xULu4xmKvLyLC14W66qYsF12x+W7jW3AOeWnjHMcA3HeJoEY7we1K+KDDsuLKIB+xwvPX9NV2WkEbX7qG+frHccb80n77ySYSyWmqrRNvbakeHPuPqZ4BzMe8E4fNh7cuYssKWXpSXKAlFKpdfSsx1dzOKDQvMNsMBoGP3bQIry9a+2sRlapI66oaBIHh+fpWNbeGXkELl7QL7FtTzi8cJMd6XPNrBIRPNhKjOULqKYytsdOXj4yOdFWc5qITvqxjlRSoAOugCXFyCGekmCJ50Fro53Vw+wTaRbzjnmB0XhTBngJGArmxdtkd8oXcQNLhtD/eO0bH+zvN69trlcVjHjA8tc4/SiqDm/ejrY60NgKzHn9tqLI+kOEMeIBFNPfzBbg==
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd659c27-2d81-49bf-371d-08d8831171da
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7533.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2020 11:37:02.5154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YR81QprKu1TMyYMxp9QRTGGC1KkXaG+NNwA4cXizh+PHG73V7YhxDBzv4RkrF2HS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7952
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201107_063712_100677_684536DA 
X-CRM114-Status: GOOD (  19.05  )
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

CgpPbiAyMDE5LzExLzIxIOS4iuWNiDE6MDUsIExvcmVuem8gUGllcmFsaXNpIHdyb3RlOgo+IE9u
IFNhdCwgTm92IDE2LCAyMDE5IGF0IDEyOjU0OjE5UE0gKzAwMDAsIFJvYmluIE11cnBoeSB3cm90
ZToKPj4gVGhlIDBWOSBhbmQgMVY4IHN1cHBsaWVzIHBvd2VyIHRoZSBQQ0llIGJsb2NrIGluIHRo
ZSBTb0MgaXRzZWxmLCBhbmQKPj4gYXJlIHRodXMgZnVuZGFtZW50YWwgdG8gUENJZSBiZWluZyB1
c2FibGUgYXQgYWxsLiBBcyBzdWNoLCBpdCBtYWtlcwo+PiBzZW5zZSB0byB0cmVhdCB0aGVtIGFz
IG5vbi1vcHRpb25hbCBhbmQgcmVseSBvbiBkdW1teSByZWd1bGF0b3JzIGlmCj4+IG5vdCBleHBs
aWNpdGx5IGRlc2NyaWJlZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogUm9iaW4gTXVycGh5IDxyb2Jp
bi5tdXJwaHlAYXJtLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAtaG9zdC5jIHwgNjkgKysrKysrKystLS0tLS0tLS0tLS0tCj4+ICAxIGZpbGUgY2hh
bmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgNDQgZGVsZXRpb25zKC0pCj4gCj4gQXBwbGllZCB0byBw
Y2kvcm9ja2NoaXAsIHRoYW5rcy4KClNvcnJ5LCB0aGlzIGNvbW1pdCBpcyBjYXVzZSByZWdyZXNz
aW9uIGZvciBSSzMzOTkgYm9hcmRzIHVuYWJsZSB0bwpkZXRlY3QgdGhlIGNvbnRyb2xsZXIgYW55
bW9yZS4KClRoZSAxdjggKGFuZCAwdjkpIGlzIGNhdXNpbmcgLTUxNyBhbmQgcmVqZWN0IHRoZSBj
b250cm9sbGVyIGluaXRpYWxpemF0aW9uLgoKSSdtIG5vdCBhIFBDSSBndXksIGJ1dCBhIHF1aWNr
IGdvb2dsZSBzZWFyY2ggc2hvd3MgdGhlc2UgdHdvIHZvbHRhZ2VzCmFyZSBub3QgcmVsYXRlZCB0
byBQQ0lFIGNvcmUgZnVuY3Rpb25hbGl0eSwgZXNwZWNpYWxseSBjb25zaWRlcmluZyB0aGUKY29u
dHJvbGxlciB1c2VkIGluIFJLMzM5OSBhcmUgbW9zdGx5IHRvIHByb3ZpZGUgTlZNRSBzdXBwb3J0
LgoKVGhpcyBidWcgbWFrZXMgYWxsIFJLMzM5OSB1c2VycyB3aG8gcHV0IHJvb3QgZnMgaW50byBO
Vk1FIGRyaXZlciB1bmFibGUKdG8gYm9vdCB0aGUgZGV2aWNlLgoKSSByZWFsbHkgaG9wZSBzb21l
IG9uZSBjb3VsZCB0ZXN0IHRoZSBwYXRjaCBiZWZvcmUgYWZmZWN0aW5nIHRoZSBlbmQKdXNlcnMg
b3IgYXQgbGVhc3QgdHJ5IHRvIHVuZGVyc3RhbmQgaG93IG1vc3QgdXNlcnMgd291bGQgdXNlIHRo
ZSBQQ0lFCmludGVyZmFjZSBmb3IuCgpUaGFua3MsClF1Cgo+IAo+IExvcmVuem8KPiAKPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4+IGluZGV4IGVmOGU2
NzdjZTlkMS4uNjg1MjVmOGFjNGQ5IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC1ob3N0LmMKPj4gQEAgLTYyMCwxOSArNjIwLDEzIEBAIHN0YXRpYyBpbnQg
cm9ja2NoaXBfcGNpZV9wYXJzZV9ob3N0X2R0KHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hp
cCkKPj4gIAkJZGV2X2luZm8oZGV2LCAibm8gdnBjaWUzdjMgcmVndWxhdG9yIGZvdW5kXG4iKTsK
Pj4gIAl9Cj4+ICAKPj4gLQlyb2NrY2hpcC0+dnBjaWUxdjggPSBkZXZtX3JlZ3VsYXRvcl9nZXRf
b3B0aW9uYWwoZGV2LCAidnBjaWUxdjgiKTsKPj4gLQlpZiAoSVNfRVJSKHJvY2tjaGlwLT52cGNp
ZTF2OCkpIHsKPj4gLQkJaWYgKFBUUl9FUlIocm9ja2NoaXAtPnZwY2llMXY4KSAhPSAtRU5PREVW
KQo+PiAtCQkJcmV0dXJuIFBUUl9FUlIocm9ja2NoaXAtPnZwY2llMXY4KTsKPj4gLQkJZGV2X2lu
Zm8oZGV2LCAibm8gdnBjaWUxdjggcmVndWxhdG9yIGZvdW5kXG4iKTsKPj4gLQl9Cj4+ICsJcm9j
a2NoaXAtPnZwY2llMXY4ID0gZGV2bV9yZWd1bGF0b3JfZ2V0KGRldiwgInZwY2llMXY4Iik7Cj4+
ICsJaWYgKElTX0VSUihyb2NrY2hpcC0+dnBjaWUxdjgpKQo+PiArCQlyZXR1cm4gUFRSX0VSUihy
b2NrY2hpcC0+dnBjaWUxdjgpOwo+PiAgCj4+IC0Jcm9ja2NoaXAtPnZwY2llMHY5ID0gZGV2bV9y
ZWd1bGF0b3JfZ2V0X29wdGlvbmFsKGRldiwgInZwY2llMHY5Iik7Cj4+IC0JaWYgKElTX0VSUihy
b2NrY2hpcC0+dnBjaWUwdjkpKSB7Cj4+IC0JCWlmIChQVFJfRVJSKHJvY2tjaGlwLT52cGNpZTB2
OSkgIT0gLUVOT0RFVikKPj4gLQkJCXJldHVybiBQVFJfRVJSKHJvY2tjaGlwLT52cGNpZTB2OSk7
Cj4+IC0JCWRldl9pbmZvKGRldiwgIm5vIHZwY2llMHY5IHJlZ3VsYXRvciBmb3VuZFxuIik7Cj4+
IC0JfQo+PiArCXJvY2tjaGlwLT52cGNpZTB2OSA9IGRldm1fcmVndWxhdG9yX2dldChkZXYsICJ2
cGNpZTB2OSIpOwo+PiArCWlmIChJU19FUlIocm9ja2NoaXAtPnZwY2llMHY5KSkKPj4gKwkJcmV0
dXJuIFBUUl9FUlIocm9ja2NoaXAtPnZwY2llMHY5KTsKPj4gIAo+PiAgCXJldHVybiAwOwo+PiAg
fQo+PiBAQCAtNjU4LDI3ICs2NTIsMjIgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3NldF92
cGNpZShzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4+ICAJCX0KPj4gIAl9Cj4+ICAK
Pj4gLQlpZiAoIUlTX0VSUihyb2NrY2hpcC0+dnBjaWUxdjgpKSB7Cj4+IC0JCWVyciA9IHJlZ3Vs
YXRvcl9lbmFibGUocm9ja2NoaXAtPnZwY2llMXY4KTsKPj4gLQkJaWYgKGVycikgewo+PiAtCQkJ
ZGV2X2VycihkZXYsICJmYWlsIHRvIGVuYWJsZSB2cGNpZTF2OCByZWd1bGF0b3JcbiIpOwo+PiAt
CQkJZ290byBlcnJfZGlzYWJsZV8zdjM7Cj4+IC0JCX0KPj4gKwllcnIgPSByZWd1bGF0b3JfZW5h
YmxlKHJvY2tjaGlwLT52cGNpZTF2OCk7Cj4+ICsJaWYgKGVycikgewo+PiArCQlkZXZfZXJyKGRl
diwgImZhaWwgdG8gZW5hYmxlIHZwY2llMXY4IHJlZ3VsYXRvclxuIik7Cj4+ICsJCWdvdG8gZXJy
X2Rpc2FibGVfM3YzOwo+PiAgCX0KPj4gIAo+PiAtCWlmICghSVNfRVJSKHJvY2tjaGlwLT52cGNp
ZTB2OSkpIHsKPj4gLQkJZXJyID0gcmVndWxhdG9yX2VuYWJsZShyb2NrY2hpcC0+dnBjaWUwdjkp
Owo+PiAtCQlpZiAoZXJyKSB7Cj4+IC0JCQlkZXZfZXJyKGRldiwgImZhaWwgdG8gZW5hYmxlIHZw
Y2llMHY5IHJlZ3VsYXRvclxuIik7Cj4+IC0JCQlnb3RvIGVycl9kaXNhYmxlXzF2ODsKPj4gLQkJ
fQo+PiArCWVyciA9IHJlZ3VsYXRvcl9lbmFibGUocm9ja2NoaXAtPnZwY2llMHY5KTsKPj4gKwlp
ZiAoZXJyKSB7Cj4+ICsJCWRldl9lcnIoZGV2LCAiZmFpbCB0byBlbmFibGUgdnBjaWUwdjkgcmVn
dWxhdG9yXG4iKTsKPj4gKwkJZ290byBlcnJfZGlzYWJsZV8xdjg7Cj4+ICAJfQo+PiAgCj4+ICAJ
cmV0dXJuIDA7Cj4+ICAKPj4gIGVycl9kaXNhYmxlXzF2ODoKPj4gLQlpZiAoIUlTX0VSUihyb2Nr
Y2hpcC0+dnBjaWUxdjgpKQo+PiAtCQlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUx
djgpOwo+PiArCXJlZ3VsYXRvcl9kaXNhYmxlKHJvY2tjaGlwLT52cGNpZTF2OCk7Cj4+ICBlcnJf
ZGlzYWJsZV8zdjM6Cj4+ICAJaWYgKCFJU19FUlIocm9ja2NoaXAtPnZwY2llM3YzKSkKPj4gIAkJ
cmVndWxhdG9yX2Rpc2FibGUocm9ja2NoaXAtPnZwY2llM3YzKTsKPj4gQEAgLTg5Nyw4ICs4ODYs
NyBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIHJvY2tjaGlwX3BjaWVfc3VzcGVuZF9ub2ly
cShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+ICAKPj4gIAlyb2NrY2hpcF9wY2llX2Rpc2FibGVfY2xv
Y2tzKHJvY2tjaGlwKTsKPj4gIAo+PiAtCWlmICghSVNfRVJSKHJvY2tjaGlwLT52cGNpZTB2OSkp
Cj4+IC0JCXJlZ3VsYXRvcl9kaXNhYmxlKHJvY2tjaGlwLT52cGNpZTB2OSk7Cj4+ICsJcmVndWxh
dG9yX2Rpc2FibGUocm9ja2NoaXAtPnZwY2llMHY5KTsKPj4gIAo+PiAgCXJldHVybiByZXQ7Cj4+
ICB9Cj4+IEBAIC05MDgsMTIgKzg5NiwxMCBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIHJv
Y2tjaGlwX3BjaWVfcmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKPj4gIAlzdHJ1Y3Qg
cm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4gIAlpbnQg
ZXJyOwo+PiAgCj4+IC0JaWYgKCFJU19FUlIocm9ja2NoaXAtPnZwY2llMHY5KSkgewo+PiAtCQll
cnIgPSByZWd1bGF0b3JfZW5hYmxlKHJvY2tjaGlwLT52cGNpZTB2OSk7Cj4+IC0JCWlmIChlcnIp
IHsKPj4gLQkJCWRldl9lcnIoZGV2LCAiZmFpbCB0byBlbmFibGUgdnBjaWUwdjkgcmVndWxhdG9y
XG4iKTsKPj4gLQkJCXJldHVybiBlcnI7Cj4+IC0JCX0KPj4gKwllcnIgPSByZWd1bGF0b3JfZW5h
YmxlKHJvY2tjaGlwLT52cGNpZTB2OSk7Cj4+ICsJaWYgKGVycikgewo+PiArCQlkZXZfZXJyKGRl
diwgImZhaWwgdG8gZW5hYmxlIHZwY2llMHY5IHJlZ3VsYXRvclxuIik7Cj4+ICsJCXJldHVybiBl
cnI7Cj4+ICAJfQo+PiAgCj4+ICAJZXJyID0gcm9ja2NoaXBfcGNpZV9lbmFibGVfY2xvY2tzKHJv
Y2tjaGlwKTsKPj4gQEAgLTkzOSw4ICs5MjUsNyBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2Vk
IHJvY2tjaGlwX3BjaWVfcmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKPj4gIGVycl9w
Y2llX3Jlc3VtZToKPj4gIAlyb2NrY2hpcF9wY2llX2Rpc2FibGVfY2xvY2tzKHJvY2tjaGlwKTsK
Pj4gIGVycl9kaXNhYmxlXzB2OToKPj4gLQlpZiAoIUlTX0VSUihyb2NrY2hpcC0+dnBjaWUwdjkp
KQo+PiAtCQlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUwdjkpOwo+PiArCXJlZ3Vs
YXRvcl9kaXNhYmxlKHJvY2tjaGlwLT52cGNpZTB2OSk7Cj4+ICAJcmV0dXJuIGVycjsKPj4gIH0K
Pj4gIAo+PiBAQCAtMTA4MSwxMCArMTA2Niw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgCQlyZWd1bGF0b3JfZGlzYWJs
ZShyb2NrY2hpcC0+dnBjaWUxMnYpOwo+PiAgCWlmICghSVNfRVJSKHJvY2tjaGlwLT52cGNpZTN2
MykpCj4+ICAJCXJlZ3VsYXRvcl9kaXNhYmxlKHJvY2tjaGlwLT52cGNpZTN2Myk7Cj4+IC0JaWYg
KCFJU19FUlIocm9ja2NoaXAtPnZwY2llMXY4KSkKPj4gLQkJcmVndWxhdG9yX2Rpc2FibGUocm9j
a2NoaXAtPnZwY2llMXY4KTsKPj4gLQlpZiAoIUlTX0VSUihyb2NrY2hpcC0+dnBjaWUwdjkpKQo+
PiAtCQlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUwdjkpOwo+PiArCXJlZ3VsYXRv
cl9kaXNhYmxlKHJvY2tjaGlwLT52cGNpZTF2OCk7Cj4+ICsJcmVndWxhdG9yX2Rpc2FibGUocm9j
a2NoaXAtPnZwY2llMHY5KTsKPj4gIGVycl9zZXRfdnBjaWU6Cj4+ICAJcm9ja2NoaXBfcGNpZV9k
aXNhYmxlX2Nsb2Nrcyhyb2NrY2hpcCk7Cj4+ICAJcmV0dXJuIGVycjsKPj4gQEAgLTExMDgsMTAg
KzEwOTEsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4+ICAJCXJlZ3VsYXRvcl9kaXNhYmxlKHJvY2tjaGlwLT52cGNpZTEy
dik7Cj4+ICAJaWYgKCFJU19FUlIocm9ja2NoaXAtPnZwY2llM3YzKSkKPj4gIAkJcmVndWxhdG9y
X2Rpc2FibGUocm9ja2NoaXAtPnZwY2llM3YzKTsKPj4gLQlpZiAoIUlTX0VSUihyb2NrY2hpcC0+
dnBjaWUxdjgpKQo+PiAtCQlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUxdjgpOwo+
PiAtCWlmICghSVNfRVJSKHJvY2tjaGlwLT52cGNpZTB2OSkpCj4+IC0JCXJlZ3VsYXRvcl9kaXNh
YmxlKHJvY2tjaGlwLT52cGNpZTB2OSk7Cj4+ICsJcmVndWxhdG9yX2Rpc2FibGUocm9ja2NoaXAt
PnZwY2llMXY4KTsKPj4gKwlyZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUwdjkpOwo+
PiAgCj4+ICAJcmV0dXJuIDA7Cj4+ICB9Cj4+IC0tIAo+PiAyLjE3LjEKPj4KPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
