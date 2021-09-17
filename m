Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31A92C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 12:20:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E7E2761041
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 12:20:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E7E2761041
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/wgoVJfDwrDWv455jaZ9rYrZx/pPrqwCprZNeHAO2is=; b=d9qYhOKaOxX/sF8W0bqcSV9xxe
	9ibuttFCxIQPraZzkmOwIhGSbffcurpUURINdx90RPEEoiTgG6z9m8nc9tvBrmBukLeulQ77OkApr
	O3t54rKTy2VWjH5JLCbMq/4jZDUVQK3HKMDTrc3ghaS1EKuDN6OJe4g10gBfJIAZc02miorvpkA0J
	PrlpKRXnkcxEveCz+wvdg6KHqrh4XePUOMu4sJMLT90aZaMYkjDSaGxxPmF9d9+fWyT79qaPUe+1u
	VWQ66a0ZfL9URyrled1+jxtvqfB5/bKVqc9X+f3dad56sJ6t1eZ5V5zxKahYL5mX0mP3hsSznFms1
	8GwNFKfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRCqW-00E1J9-I4; Fri, 17 Sep 2021 12:20:01 +0000
Received: from mail-eopbgr00078.outbound.protection.outlook.com ([40.107.0.78]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRCgE-00Dwwk-U1; Fri, 17 Sep 2021 12:09:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQVcWqwY012JnXwNgn8kUCCOlkCdSHcqwZRGmdPESkr5AWiwKAsecAYwcU2au4PZGBpMALs0QjrRwHcXm9fCvoeGVkLhH1Z7Lq6pChCo9gXsmmMMQdDY0cpu6mqiatinMecHQ0QkfErZpJoBg5xfD1VUSgem/tYBr9QqfLlRxi1YORoHSPJkvLSTH6ZeBde16FpjomZSDLEm/gZpFuvKW3amVEWj4MzNhrxw6YfxNvduiybc0BqEdY6AFBHK3ohH9/Eek43UkNJw88Bi7yPYDDLT5+cisXr5Lft9O06aVP/D1/mqtlhIKUPNx4b4liHU+ZVFgYikHNoJxQEfH9/6ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=SQhy4bwhKhDdbMG2T+EYjhRb76Un272fpVe1OEKKa2w=;
 b=XSKUxSsIABhOjZ8s+p26PimM4KXpyhngq4tI+fXINJfnrnYP2Du8+3TFrEEoqqP/dqvR7TLWFpUOMOMBVQ0Nmj0Le5uUOAvHQ6q5WehYTP05ZpilWTdVXsKmTLid12l42ZBSaGIFGXO7NQzc8RfG9zhTZojm3WFqz+YbzDxsKp7ok4ejZ1gQqSnxsu14Msi2LiN9zMzeNHQHmZ0T4zwP9/obuNqeC9SHl+l62Lq4inaE1q2H8KRMpeApFrDpdspwkuX9OoI2gepBhr+F8Z6/JVs7mozPI5F40FDUahfCIMwzFNVq9HpvoKqJI0DTmwWehv18btG6g8MIM7XOLQxD/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SQhy4bwhKhDdbMG2T+EYjhRb76Un272fpVe1OEKKa2w=;
 b=fxT3KRTsd/6L5kNVdOqEtIxvpT2w/zlbk1DawZEOpBY84MXmAHx7E2hbPCMky/vy7DNv6cPp8pGfCHCzE6Ww52Tgwc1ZXByNNAl/mF93vC7x88/EVB49Pzbkf/QP0B0CnIApUYbLr34yRCQ2IJ6MV/FN9tXWEhuhlXOxJ8KhTmQ=
Authentication-Results: rock-chips.com; dkim=none (message not signed)
 header.d=none;rock-chips.com; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB6PR0801MB1944.eurprd08.prod.outlook.com (2603:10a6:4:73::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Fri, 17 Sep
 2021 12:09:19 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4523.017; Fri, 17 Sep 2021
 12:09:19 +0000
Subject: Re: [PATCH] arm64: dts: rockchip: move aliases to rk356x dtsi
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>
References: <20210917110528.24454-1-michael.riesch@wolfvision.net>
 <2397289.mVTDCA6dLn@diego>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <4574b70a-3979-f04b-221b-5cadfbfcd07d@wolfvision.net>
Date: Fri, 17 Sep 2021 14:09:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
In-Reply-To: <2397289.mVTDCA6dLn@diego>
Content-Language: en-US
X-ClientProxiedBy: VI1PR0701CA0060.eurprd07.prod.outlook.com
 (2603:10a6:800:5f::22) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR0701CA0060.eurprd07.prod.outlook.com (2603:10a6:800:5f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.5 via Frontend
 Transport; Fri, 17 Sep 2021 12:09:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 97262512-3b3b-4f41-73f8-08d979d3fa1b
X-MS-TrafficTypeDiagnostic: DB6PR0801MB1944:
X-Microsoft-Antispam-PRVS: <DB6PR0801MB1944E45B0C06C886FE0BA904F2DD9@DB6PR0801MB1944.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pan6AQVDKe5uxl3C39Na8DggcQewojkqoX3N2aURmXZ6l2/cfZbJIGPoqphdHuGw+ym8f0or9125aVyMFsitOSECgumc8/Y2apz9eKGmcUDKAEaTcChYAodY0baph+eian+g9BH6mQ4J07/86hjJgtYum/z55H1qwBMEB255J2gF9PyhjwioPehCrG5ei1Zht3NeWBjyU0B/qA+Mp+mGDQT0nAF5ZkcMYcPg2cI+RHXi4rU0j4oGDQr1mvAg9986YKziLvDoKEDSM3FMYWcmb0fTQTzTwTmcCtRaoYMjAoUMOx+vuxH3mAvPU0ciXZTSUKqA50ecVUS5UdJj5bZsykWLqSYgECWmZ/FIMuppEExLOVS5Z8QQYa9vAkWWQxhlWpnTJ8eTndBZrlH6TcP4QTLLMIta4f06poUTqbD+FrWh4Snx6hNjCYxZ19zNTbg8CT2uD+4MNJnHl7fsOiQi7HWickquYxDBafkF4LnKyJEFRjSgcOgbxQ+rjKe70DAuHpwf2ZpTHZTjVL/67c8rM6ScVvwcMleGgZYZh0oVTsHvS4Daidt7CgJgV4P16haQ+3IDnrvtBwmITd2hZYPiMuG2K3kPvsmrsA8KFG7zCMhcurgMj4IHvohPdKYfAwwj35xyhRLgR8HBnsyxf0iNsJXqfnv5YWgUaW7DVWj0ZaS3/it6mpfn00Haripd3crewaquxLuCCuvMwkxu2UBln8e6oEvrUeZlHR4Kpo0nHxUEVM+3XYoaVMjhr88YuJq3wgtWB41HUHS3q+y96NEt0w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(346002)(39840400004)(136003)(396003)(5660300002)(38100700002)(2906002)(8676002)(4326008)(66574015)(38350700002)(66476007)(66556008)(8936002)(44832011)(36756003)(31696002)(83380400001)(86362001)(186003)(26005)(31686004)(16576012)(478600001)(54906003)(316002)(2616005)(956004)(6486002)(53546011)(52116002)(36916002)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDc2Njl2VkM2UGpwb3JQMTZIQXVERjU1TDBVTG5sSVdVWmNSME5NMktyWURW?=
 =?utf-8?B?cDVuYnJtTkROejR5WVpDR3IyTUxON3RVc2I5Qncxb00xdXZkeC9ScFJsL1dM?=
 =?utf-8?B?WGhWTVBGakJrWlVyMjZZc1FwR1lpY3IyNDJWYWd2SmUzZ2lqRnBvczVQVVBq?=
 =?utf-8?B?aThyU3IwVkVOZnZIWjV6alUyRVFDT3l3amo4S3hQekR6aHk5U0lJQ0ZqQTlp?=
 =?utf-8?B?K2cyajdVSXNkTG9td01MVjFtOHBrczlScm90ZnF6YjJiTmRwWks1SGt5c1Ev?=
 =?utf-8?B?aHgxK1hvbG5aUitwZUIzZGVUdjkxc2JMcVp5eFA1dks2NWNjeWVhTHlHMkdo?=
 =?utf-8?B?bkVFd3FwNGwzUENuZi9YNDRlNDdkYVZ0Ni82c0tDS1VJQ1JITUoraXpHcGFw?=
 =?utf-8?B?cWJIZm5FdGdtV3FrS3lhSjUxS3V4VFdlSFZBbGdGUjdvM1hKTndKclFMREo1?=
 =?utf-8?B?cWtQU0JtZUUyMyt6MXNtZHJiVmIxQkxzZzVkZzl4TytHSjVibkRMeE9GdUk4?=
 =?utf-8?B?VDVGb0xDTXdrbDArekx3ajNOT3JlSllVRmZKWklIMnJkeHVETXA0Q0NmcTlK?=
 =?utf-8?B?aVdXVEtEVU00Q1F5TzFlckt0eVVrK1Y4WDJ5QndHVmxQcWkwVHhMY0c0SnB2?=
 =?utf-8?B?SmxYTWlLUkIybXdBa3hrdlF0NVF5b08wRjUyNHVTOGRtOS90ck5rV2xlc2Fw?=
 =?utf-8?B?aWJQM0MvNjJMR0ZORUtsUDR2V2d3by85b0YzQkJudzR3OHhIbERubEFYdU82?=
 =?utf-8?B?aU1LV3BQOGtWb09jRjNCY2tlb0htQjRvYWE4TjQ3WS9VMVpnL1pvRUN0SDVw?=
 =?utf-8?B?dit5NFRwazZlR0dGQUZUS1Z6VzhFcW1PNGVHQUNoeEtHWXFLUThyV3F1b0Zs?=
 =?utf-8?B?QkJwZDJ5TVBhOUh3UlY0VVZHRFpTNHlOWGovZUV5eUV3SUZ3MFJIZno2R1Vv?=
 =?utf-8?B?Y2RPZ0tGRjZvdHY2cGFpOEhhTzA1SmNXaHFNNzVyeVdLdm9zV2RGenlGdE5t?=
 =?utf-8?B?ZFZ4Z0hDQ1JRcWVONzZpVjRScVZJcnV2TGFKVkJraTQxT0trb2JtL24yUXlz?=
 =?utf-8?B?anQ4U0dqUXBVUDJoN05UbHBCMlBLNWN4VzBZVEswbzV4dXdVV3AwbWcvV29j?=
 =?utf-8?B?MWtGcVhPMjhVaXh3YTdFMWJ6Y0R6WENaUW1KVi85ZlBkMVBrN0pSN3BraVZU?=
 =?utf-8?B?a29nUDk3L2p4YkppTHpDQ2h5UlJ1UUdOM2Jsem12RHphVHB4ZlpDYTFZcjUy?=
 =?utf-8?B?RUgrVklIaXNMNjl5ZGpFNm9sQW9iQlgvbFF5eGFRbktIMUh6Z2hNTWNZTTZo?=
 =?utf-8?B?bFRXMnlvSzBna0xxUTNsaEpHRjJsKzZObzJIM25hMEdIZlo2aEZmUnVkc25l?=
 =?utf-8?B?UVljYlhmcVJseGoxdkl3OEkrSUtjdndVL1FLZ2I3UTQ2aU55eW01cTMrbWp5?=
 =?utf-8?B?STJHSzI3a2ZlWjlQeERVTW5uY0JBUFVhanRhK1BOUzBWU0lvREVQcUQrRGpr?=
 =?utf-8?B?T25RNTJtR1czNmRJSVEzbDBoRi9iazZyQzZtZTdTUUUyRGNoc2Z2RVE3RnFX?=
 =?utf-8?B?MGxaREo5NjI5RTA1c1AzQk5MdktVK0x5UnhjeC9uM2JjN0NFR3lHb0t0U242?=
 =?utf-8?B?ekhpUTZ3amZ4Qk9mQ2NsT1dlTWM0Uk00cW03T2ZyRVE0dDZwQVlIZVpZQnJu?=
 =?utf-8?B?RTU0TTRuOUVFSnllcGc5YWEvUTRHZHBjSnVHaXhsS1dKNGROMzU5ZWZRU1pC?=
 =?utf-8?Q?aahbMW+eUvz72Td/jKyfZgeg4NX4FxcGodA5uge?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 97262512-3b3b-4f41-73f8-08d979d3fa1b
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 12:09:19.1798 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bC1xJBgUzIV6n/i6HBFx4/1RZfymePPbfrjRpj9kWylnspI9HNCQALbXK3qt4qB6qh25nR8vWMCxoeIvSj2QfeYHddWjhoSmNdN99PGlIj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_050923_081424_03B08AF2 
X-CRM114-Status: GOOD (  19.75  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiA5LzE3LzIxIDI6MDEgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhp
IE1pY2hhZWwsCj4gCj4gQW0gRnJlaXRhZywgMTcuIFNlcHRlbWJlciAyMDIxLCAxMzowNToyOCBD
RVNUIHNjaHJpZWIgTWljaGFlbCBSaWVzY2g6Cj4+IEluIG9yZGVyIHRvIGVuc3VyZSBkZXRlcm1p
bmlzdGljIHByb2JlIG9yZGVyIG92ZXIgZGlmZmVyZW50IGJvYXJkcywKPj4gbW92ZSB0aGUgYWxp
YXNlcyBvZiBvbi1Tb0MgY29tcG9uZW50cyB0byB0aGUgY29ycmVzcG9uZGluZyBkdHNpCj4+IGZp
bGVzLgo+IAo+IHBsZWFzZSByZWFkIHRoZSBnaXQgaGlzdG9yeSBvbiB0aGUgb3RoZXIgUm9ja2No
aXAgU29Dcy4gV2UganVzdCBtb3ZlZAo+IHRoZSBhbGlhc2VzIG9uIHRoZW0gX3RvXyB0aGUgYm9h
cmQtZmlsZXMsIGFzIHJlcXVlc3RlZCBieQo+IGFybS1zb2MgbWFpbnRhaW5lcnMgOy0pCgpPSywg
SSB3YXMgbm90IGF3YXJlIG9mIHRoaXMuIFNvbWUgU29DIGZhbWlsaWVzIChlLmcuLCBGcmVlc2Nh
bGUgSU1YKQpoYXZlIHRob3NlIGFsaWFzZXMgaW4gdGhlIGR0c2kgYW5kIEkgd2FzIG5vdCBzdXJl
IHdoYXQgdGhlIGRlc2lyZWQKYXBwcm9hY2ggd2FzLiBUaGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0
aW9uLgoKQmVzdCByZWdhcmRzLApNaWNoYWVsCj4gCj4gSGVpa28KPiAKPiAKPj4KPj4gU2lnbmVk
LW9mZi1ieTogTWljaGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0Pgo+
PiAtLS0KPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0LWEu
ZHRzIHwgNiAtLS0tLS0KPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LmR0
c2kgICAgICAgICAgIHwgNCArKysrCj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC1ldmIxLXYxMC5kdHMgICB8IDcgLS0tLS0tLQo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjguZHRzaSAgICAgICAgICAgfCA1ICsrKysrCj4+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpICAgICAgICAgICB8IDIgKysKPj4gIDUgZmlsZXMg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1xdWFydHo2NC1hLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0LWEuZHRzCj4+IGlu
ZGV4IGEyNDRmN2I4N2UzOC4uMTU2YmJiOGFhNGM0IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1xdWFydHo2NC1hLmR0cwo+PiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1xdWFydHo2NC1hLmR0cwo+PiBAQCAtMTAsMTIg
KzEwLDYgQEAKPj4gIAltb2RlbCA9ICJQaW5lNjQgUkszNTY2IFF1YXJ0ejY0LUEgQm9hcmQiOwo+
PiAgCWNvbXBhdGlibGUgPSAicGluZTY0LHF1YXJ0ejY0LWEiLCAicm9ja2NoaXAscmszNTY2IjsK
Pj4gIAo+PiAtCWFsaWFzZXMgewo+PiAtCQlldGhlcm5ldDAgPSAmZ21hYzE7Cj4+IC0JCW1tYzAg
PSAmc2RtbWMwOwo+PiAtCQltbWMxID0gJnNkaGNpOwo+PiAtCX07Cj4+IC0KPj4gIAljaG9zZW46
IGNob3NlbiB7Cj4+ICAJCXN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTUwMDAwMG44IjsKPj4gIAl9
Owo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LmR0c2kKPj4gaW5kZXggMzgz
OWVlZjVlNGY3Li5jMWIzODQxY2FhNzcgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY2LmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjYuZHRzaQo+PiBAQCAtNCw2ICs0LDEwIEBACj4+ICAKPj4gIC8gewo+PiAgCWNv
bXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY2IjsKPj4gKwo+PiArCWFsaWFzZXMgewo+PiArCQll
dGhlcm5ldDAgPSAmZ21hYzE7Cj4+ICsJfTsKPj4gIH07Cj4+ICAKPj4gICZwb3dlciB7Cj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1ldmIxLXYxMC5k
dHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1ldmIxLXYxMC5kdHMKPj4g
aW5kZXggMTg0ZTJhYTI0MTZhLi4yMThmODVhZjczMGMgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWV2YjEtdjEwLmR0cwo+PiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1ldmIxLXYxMC5kdHMKPj4gQEAgLTEzLDEzICsx
Myw2IEBACj4+ICAJbW9kZWwgPSAiUm9ja2NoaXAgUkszNTY4IEVWQjEgRERSNCBWMTAgQm9hcmQi
Owo+PiAgCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LWV2YjEtdjEwIiwgInJvY2tjaGlw
LHJrMzU2OCI7Cj4+ICAKPj4gLQlhbGlhc2VzIHsKPj4gLQkJZXRoZXJuZXQwID0gJmdtYWMwOwo+
PiAtCQlldGhlcm5ldDEgPSAmZ21hYzE7Cj4+IC0JCW1tYzAgPSAmc2RtbWMwOwo+PiAtCQltbWMx
ID0gJnNkaGNpOwo+PiAtCX07Cj4+IC0KPj4gIAljaG9zZW46IGNob3NlbiB7Cj4+ICAJCXN0ZG91
dC1wYXRoID0gInNlcmlhbDI6MTUwMDAwMG44IjsKPj4gIAl9Owo+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPj4gaW5kZXggMmZkMzEzYTI5NWY4Li5kZDBlODAwY2Y3
NTIgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0
c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+PiBA
QCAtOCw2ICs4LDExIEBACj4+ICAvIHsKPj4gIAljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2
OCI7Cj4+ICAKPj4gKwlhbGlhc2VzIHsKPj4gKwkJZXRoZXJuZXQwID0gJmdtYWMwOwo+PiArCQll
dGhlcm5ldDEgPSAmZ21hYzE7Cj4+ICsJfTsKPj4gKwo+PiAgCXFvc19wY2llM3gxOiBxb3NAZmUx
OTAwODAgewo+PiAgCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1xb3MiLCAic3lzY29u
IjsKPj4gIAkJcmVnID0gPDB4MCAweGZlMTkwMDgwIDB4MCAweDIwPjsKPj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4+IGluZGV4IGU0MmZiYWM2MTQ3Yi4uYmIwNTQw
ZDMwMDhjIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
eC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kK
Pj4gQEAgLTI5LDYgKzI5LDggQEAKPj4gIAkJaTJjMyA9ICZpMmMzOwo+PiAgCQlpMmM0ID0gJmky
YzQ7Cj4+ICAJCWkyYzUgPSAmaTJjNTsKPj4gKwkJbW1jMCA9ICZzZG1tYzA7Cj4+ICsJCW1tYzEg
PSAmc2RoY2k7Cj4+ICAJCXNlcmlhbDAgPSAmdWFydDA7Cj4+ICAJCXNlcmlhbDEgPSAmdWFydDE7
Cj4+ICAJCXNlcmlhbDIgPSAmdWFydDI7Cj4+Cj4gCj4gCj4gCj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
