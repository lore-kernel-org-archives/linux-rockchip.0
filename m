Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3B75C48260
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Feb 2024 15:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZoPPQ7Mt1YeCxXPr6A4Mzd3AUXaeozDWJD/C9GKC3Jg=; b=I/qRnCc9+DNzIr7Zx2nplqyeBA
	5ngs7WZIbcDn+20B8Jx9jmdiKamG3naeYyYNZzqpxqOhtosvLD+Omr87LN51jgHKngYmVUKVp3DEs
	d2htq9l0CPJQjUTfsAU17SdELrL//o/xFn7/WCfLiFu/IwZrsCk1zb9xoQsoHylToh28F2aqCgVXj
	OmfaDDzakqvd3lgbPglDa96IXWGjiTWv5KIWj1cU1a2s5Imyj12LeTTBvd0N/eLk+dOknS59vXvbV
	VWcZ7TdRKs5CvCG2f4mw4WhX5K7CJ1YELFghfXfa9aqhF1RaHjKVrOVljwyyYGpkfy73zR2OPHheP
	HH/e2tHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY6bk-0000000ECjT-43b0;
	Thu, 08 Feb 2024 15:46:36 +0000
Received: from mail-am6eur05on20701.outbound.protection.outlook.com ([2a01:111:f403:2612::701] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY6bh-0000000ECgE-0ybg;
	Thu, 08 Feb 2024 15:46:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YA12bv19AiCIMvGLCLsKJDtIYX1hAgCA53mO4QN2HbAUwNrNwvcMxJbCseLcaFZTX+AWzuajVodgGmOz357O/PYAcI9w7Bv6hqzWujYCLvMiMBdS2ugORALuBxlzaN8zoNKCRDP2JLTgefVf8Ds6zcSzADW8P1LLlfMOABEyaWDeFjLZd2k1aNFvgcg8fJrWHfcCW2mSQ0mdKjsEax8XY4+2y2Bjot9KR7Oxbip7Cl+Ul+L1kWIm1AGjcoRR9UWxzRy6Ia0jf75AW3//uptpR9jd+qWmtSGpU/wkujgfEY32ZNz8Py8MMcEeN3jyRoDUMVIB0mxoLUpA49qSY1kjAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vfI9vsopVcN40cRol2E2WXFCpZQaU7ALGL+hksIw7Rg=;
 b=TQmB3OneXRInfTcS62orWX4+Zi2hU4Xl22kdgdsdMbbsUTC+yv64wcQPmotGgLdqW77r9qVj1RsX7UY+MBhlFEwyN6sqbtDbKbfJinTmG87GLXd0u4np+f2jnvA5O6r1W3lwWpfYI1KbA973oqJxxCcOGf/ma3JBYiHI1VwjBLOEnrw8UXdVRppiNeVqCn1U5SjwdFULN2Yr0swBtrzH3Nhiezw4MO54gJfW9fKgw8R0VCBCfYXjM4GStEnjj9v2+zqmmU4Xv5NTreS7inKuGEf+wkC15Ldr/0KuRhHPUkMY8JUbxhKHKPRRB2hx9XUczz2kDDrYudH+PNstrv6Sfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vfI9vsopVcN40cRol2E2WXFCpZQaU7ALGL+hksIw7Rg=;
 b=OwuBULebIqGo1GhsO6SYjng804nt/eEspTthPc1RdNQ6HcxsxZRf3L5+L3ZYbfdXPxVIsnblWEMi7nq4lkVu+MUJuyrDPULyhbIQQ4uH5Q1cIF5KoVye2Bk9B3rWNuPQz0jQabOHzLL/htCLgxk3pcyXn8HRIQ4l+E1WAIdlq+0HRretqR7TpnOcTovLJWTUFC+kf5BbdmTFSaljXDmA9Mz8LPCh1uR1wYwhw5vNJAPKtSHf61u2cQRfsaFHWNZR5kbOi3g7WeL2gr8K+rb+n40fK74XnrEgpoKK8xNeB8557q5oYU91s378fBAgcsJwxErlCm272cQ4jttYWS76Rw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by AS8PR04MB7621.eurprd04.prod.outlook.com (2603:10a6:20b:299::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.39; Thu, 8 Feb
 2024 15:46:20 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::d4b1:cea8:7085:ec50]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::d4b1:cea8:7085:ec50%4]) with mapi id 15.20.7249.035; Thu, 8 Feb 2024
 15:46:20 +0000
Message-ID: <af4d5f3a-b514-47f9-9a8c-54d7bfd565f2@theobroma-systems.com>
Date: Thu, 8 Feb 2024 16:46:18 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/6] serial: 8250: Support separate rs485 rx-enable
 GPIO
To: Christoph Niedermaier <cniedermaier@dh-electronics.com>,
 Lino Sanfilippo <LinoSanfilippo@gmx.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "quentin.schulz@theobroma-systems.com"
 <quentin.schulz@theobroma-systems.com>,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240126-dev-rx-enable-v5-0-5d934eda05ca@theobroma-systems.com>
 <20240126-dev-rx-enable-v5-2-5d934eda05ca@theobroma-systems.com>
 <098216ce-50b3-43e4-ad1a-42228c58b761@gmx.de>
 <37522087-d3ac-4cc7-b11b-c844d36206ba@theobroma-systems.com>
 <3d31b17ffd4a4f02aaaa1b6c33a09009@dh-electronics.com>
Content-Language: en-US
From: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
In-Reply-To: <3d31b17ffd4a4f02aaaa1b6c33a09009@dh-electronics.com>
X-ClientProxiedBy: FR0P281CA0135.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::7) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|AS8PR04MB7621:EE_
X-MS-Office365-Filtering-Correlation-Id: 260b75b6-bb47-44a7-1c4e-08dc28bd1879
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VRFB6ZP68T+zB9uUB7+04SXvJPk2gremO/7BoUUeBUmHS5Jhlx8rcwTZLPuE7G2jel6ZbzLn/OHLbXr/rVsE0d0pHC5nPfQhI08rMru/Vb0SskAzzmD2MarTSM58PrmqspfiN79eU5VWFfc/Ym0ZEc2MgS70rkv1dpao/q0j2rEdl0LkyLHGXeNGnGynnSQiTm2YHc+/B8yidBqwFHAiJDnJdillY8gdjVPFYAcru+2VRkP+8do2qr524/enQ2g4GrTqyagT4/EEJURO+vpbH89YoDt3rr5tvnBhBqXXcAvGSfcEdR+ils3UTctUr2jMnA7eq40QaLuz9XIuPgnxIBK085BxGH7tmPbGbv1trvni4RBmpIti0jC11/PA2BpiT+bs5+iOoOdp+Wre2v6BFStboiJNqpcGw4nSzelQNoTYCSEkEB5k5CRRxuLz49Zk95r8c/pfmnVPH0/FV1YR8PnStYnwC4F3RFFCnYLuiZj2xGZHJwBh/IILLYPH57ZMA7peYzZ7G1X4uEtei4Ws2NP+Qn3pfIu9XawaCzMUOw4dAnl/1lmkg5wuHyZXNwWC
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(136003)(346002)(366004)(376002)(230922051799003)(230273577357003)(186009)(64100799003)(1800799012)(451199024)(38100700002)(6506007)(53546011)(31686004)(83380400001)(31696002)(41300700001)(26005)(86362001)(107886003)(66574015)(2616005)(4326008)(8936002)(36756003)(8676002)(6512007)(5660300002)(478600001)(6486002)(7416002)(966005)(44832011)(66556008)(66476007)(316002)(54906003)(66946007)(2906002)(110136005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDIvYmI1VmVpVkkrclptYWYrMnVaU3Z6bFlPOWE4UDFrZFkwL3hZNytNdGwv?=
 =?utf-8?B?bkRISFNFUWhvajVKZWJFcEFpR2dUWGZ0MWNNNnBPSVNEb2JvcEcvMk9LYVRU?=
 =?utf-8?B?YzBCWWc4SjN5V0xjNjRSS3FEM1ZBeExOYlpva0pKVFd3Z21ZUVg3T3N2azlD?=
 =?utf-8?B?cGM1Ny9aWEFvSVFkbitNVkhDZG1YTHBiOEVwanZTOEhYOHNpeER4Q2M0d3hZ?=
 =?utf-8?B?M29HbTdDRW9uU1d6NHpWZVZKSFM0ejY0TXBBU2RRZGdkWWpFMHRaczEyQU85?=
 =?utf-8?B?b29UQjZmWjhEQWlDaENUZkRhWkhFOWNwRElUMyt4STBjWmlKVTJQOGNkeU1W?=
 =?utf-8?B?WGh6czBIeDhnNFJMbkNrRVVkalRsQW9ZL3VidnZHcXRXb0cvZEUxYW13TW93?=
 =?utf-8?B?ZjFueFRsdGdxb2p1a2JVWjZzRGdBNkNRa2cvdWNzeEtFbWN0WEc2UU9qdlZk?=
 =?utf-8?B?d2pmN0ZXN3phUHZTY1VYMXVvb3NNVWQxY2FyNlhyV09janQ4S04vV0k0em1R?=
 =?utf-8?B?UzhCMVRKZDN4Vlg5TE1pNDd0OUVDV3lSeGxNVFpzOUVFQThzNnJGY1V3ZkRV?=
 =?utf-8?B?U3dMbDl0QnlQU29leE4rTUJ0bXdjOStXbDVLdFB3SC92dC91R25wY0hZV2hV?=
 =?utf-8?B?dzR3N1g5d1NBMmRUZE9wM3B1OHlwTFI4SXorMjhtVCtnaU0zdFhzVDVOelNv?=
 =?utf-8?B?clRsL1g2V0xrWEE3UlNLT2pRRnpUdzJNUmZBT2wwcFFwWWhTakJNWVNwMThE?=
 =?utf-8?B?WVg0SUFhME10Nm5BYkpZZUtNVFlsdmJrWmlEbHloeGhxQi9DaXlZdXg2RVA2?=
 =?utf-8?B?dVpraUtEWEg2VVJReGJuMmNKcXdPbUttdEFmVEVNN3pQM1RqOU1hc3U2WkUz?=
 =?utf-8?B?S1hRUDA2MlR2R0pXWStXVjBlaDcvVWdITWw2Y3NtZGdPVUNUTDg1SitQVXpE?=
 =?utf-8?B?OXpKUHZiNXBsQlRDOG9HR1M0V1d5TFI5Q2ZiWUVsVjNTODdYNmFNdDA4U3FH?=
 =?utf-8?B?cklRZHdRdys5UEtmUnB5cWhyNjdZc29mdlg1TklkZGFRZnJPcDcxV3FEamN4?=
 =?utf-8?B?WnB1OVVHeHFHc0J4MUlJWnlNZzh2bU83SGdYZzhRZ1hlYTJBSkJrb2VtbFho?=
 =?utf-8?B?MlN0NlY2dVRrUWxVVjNFWk0wUXpSZlByNjQyZXNWUUsyVWpwZjU0TGN0QUdw?=
 =?utf-8?B?aG1uNDdHd0ZybWViSGpDV09tMytPVjFJb3RlcFFQMDdIOVB3OUlva3FZdHJJ?=
 =?utf-8?B?VUh2bFhlTDlUREt1Z2hqdnc1QzJEbGM3RDlrM3plaVVJRFJVb2YrOEg4NUVO?=
 =?utf-8?B?aXM0aE9tZkQ3VHk1RXZXZVMxL1I4bCtPS0lwU0IwZDFRTnlIOW5YTVlncHNX?=
 =?utf-8?B?VEFvUEd3VEo4eGJ1ZmlWT1RYTGZUOVJnTFgyMHNVRHhGMTFPM3VINnlHb1Qw?=
 =?utf-8?B?bHFOaS9yZ2RqSElwNS9DSmdodGlGM1c4c1habFhyV3JudEtIaUdSUE9FWlFx?=
 =?utf-8?B?YjJ0dDdBN3hCNUN1aWJ0TUdaOHY4OGhTSy9GMUJzOUE3Z1M5WXh4SnN2b2Y3?=
 =?utf-8?B?WW5HUk5ZSWJ0eXJpUlRoZW9kRE5OMDQvM2I4SXVRUU5BUDdSNXlta3ovamNv?=
 =?utf-8?B?dk1FUmw2aklpU1FQdGd1OTlNTzBGdWJXbURTTFdoS2V4OXh4SkEyTjJNVVBr?=
 =?utf-8?B?cHQrSUNiM2l4T1hRNE1ubjY1MlZHRU9BQTlIc1FjZzBYN3p1QXd4VzQzZEoy?=
 =?utf-8?B?emNVRUVQKzFONmJ6MGltaHhudmhhalFnVVdrZGJlcW9JSlZPL2YrbjhzZnFw?=
 =?utf-8?B?OWp6TDVRa0dkNjR0NzQyblVydXFNTXcrMU1wRjdPMDFwSndvSHRvWlZVMzN3?=
 =?utf-8?B?Zk1mOXhCK0VSSnhFTzJ6T1JTRXdpN015aHJMQllOSXVscFVUQUtWaHZBQUZR?=
 =?utf-8?B?aWZmYUQwRVZjVkF6THlGR2RjV2JjUHVCRGphZHBBMFZsaGw3SS9sVUpFRlRy?=
 =?utf-8?B?SUNNelNIcHBCandnNCs1V0lsK2REZEpMd3IvWjljYzR6U2dwVlhuKzB1T0po?=
 =?utf-8?B?TFZEYmhsLzY4UkRMUW12clNVN0VWOGh3UmRVQ3JkaFVDd3NSVlRVbUluanJi?=
 =?utf-8?B?d0pSRUhqWWJKYmZwVlRmTDZZc285MzNIeU1GeTdWSTFGQUR4STAyTHJyRmpK?=
 =?utf-8?Q?2eJLYCCxO8+urHuimQJcyA4=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 260b75b6-bb47-44a7-1c4e-08dc28bd1879
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2024 15:46:20.5934
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2NTsCoofuF+v/q+gMH06P14jC6fQ89U3evfbKGllhUzJXBc2NIzsWen8MAkWTJUuCci4V2OWy7YEmlS9bLM7kCUljY/ka/sAeoX/uaKDXq1bxFsdVYXUs8nhlzL+Bbpc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240208_074633_297965_9C7B7E85 
X-CRM114-Status: GOOD (  13.47  )
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

SGkgQ2hyaXN0b3BoLAoKCk9uIDMwLjAxLjI0IDEzOjI5LCBDaHJpc3RvcGggTmllZGVybWFpZXIg
d3JvdGU6Cj4gW0VpbmlnZSBQZXJzb25lbiwgZGllIGRpZXNlIE5hY2hyaWNodCBlcmhhbHRlbiBo
YWJlbiwgZXJoYWx0ZW4gaMOkdWZpZyBrZWluZSBFLU1haWxzIHZvbiBjbmllZGVybWFpZXJAZGgt
ZWxlY3Ryb25pY3MuY29tLiBXZWl0ZXJlIEluZm9ybWF0aW9uZW4sIHdhcnVtIGRpZXMgd2ljaHRp
ZyBpc3QsIGZpbmRlbiBTaWUgdW50ZXIgaHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRlcklk
ZW50aWZpY2F0aW9uIF0KPgo+IEZyb206IEZhcm91ayBCb3VhYmlkCj4gU2VudDogTW9uZGF5LCBK
YW51YXJ5IDI5LCAyMDI0IDk6NTcgQU0KPgo+IEhpLAo+Cj4+IE9uIDI2LjAxLjI0IDIwOjU4LCBM
aW5vIFNhbmZpbGlwcG8gd3JvdGU6Cj4+PiBbU29tZSBwZW9wbGUgd2hvIHJlY2VpdmVkIHRoaXMg
bWVzc2FnZSBkb24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbSBsaW5vc2FuZmlsaXBwb0BnbXguZGUu
IExlYXJuIHdoeSB0aGlzIGlzIGltcG9ydGFudCBhdCBodHRwczovL2FrYS5tcy9MZWFybkFib3V0
U2VuZGVySWRlbnRpZmljYXRpb24gXQo+Pj4KPj4+IEhpLAo+Pj4KPj4+IE9uIDI2LjAxLjI0IDE4
OjI3LCBGYXJvdWsgQm91YWJpZCB3cm90ZToKPj4+PiBGcm9tOiBIZWlrbyBTdHVlYm5lciA8aGVp
a28uc3R1ZWJuZXJAY2hlcnJ5LmRlPgo+Pj4+Cj4+Pj4gVGhlIFJFIHNpZ25hbCBpcyB1c2VkIHRv
IGNvbnRyb2wgdGhlIGR1cGxleCBtb2RlIG9mIHRyYW5zbWlzc2lvbnMsCj4+Pj4gYWthIHJlY2Vp
dmluZyBkYXRhIHdoaWxlIHNlbmRpbmcgaW4gZnVsbCBkdXBsZXggbW9kZSwgd2hpbGUgc3RvcHBp
bmcKPj4+PiByZWNlaXZpbmcgZGF0YSBpbiBoYWxmLWR1cGxleCBtb2RlLgo+Pj4+Cj4+Pj4gT24g
YSBudW1iZXIgb2YgYm9hcmRzIHRoZSAhUkUgc2lnbmFsIGlzIHRpZWQgdG8gZ3JvdW5kIHNvIHJl
Y2VwdGlvbgo+Pj4+IGlzIGFsd2F5cyBlbmFibGVkIGV4Y2VwdCBpZiB0aGUgVUFSVCBhbGxvd3Mg
ZGlzYWJsaW5nIHRoZSByZWNlaXZlci4KPj4+PiBUaGlzIGNhbiBiZSB0YWtlbiBhZHZhbnRhZ2Ug
b2YgdG8gaW1wbGVtZW50IGhhbGYtZHVwbGV4IG1vZGUgLSBsaWtlCj4+Pj4gZG9uZSBvbiA4MjUw
X2JjbTI4MzVhdXguCj4+Pj4KPj4+PiBBbm90aGVyIHNvbHV0aW9uIGlzIHRvIHRpZSAhUkUgdG8g
UlRTIGFsd2F5cyBmb3JjaW5nIGhhbGYtZHVwbGV4IG1vZGUuCj4+Pj4KPj4+PiBBbmQgZmluYWxs
eSB0aGVyZSBpcyB0aGUgb3B0aW9uIHRvIGNvbnRyb2wgdGhlIFJFIHNpZ25hbCBzZXBhcmF0ZWx5
LAo+Pj4+IGxpa2UgZG9uZSBoZXJlIGJ5IGludHJvZHVjaW5nIGEgbmV3IHJzNDg1LXNwZWNpZmlj
IGdwaW8gdGhhdCBjYW4gYmUKPj4+PiBzZXQgZGVwZW5kaW5nIG9uIHRoZSBSWF9EVVJJTkdfVFgg
c2V0dGluZyBpbiB0aGUgY29tbW9uIGVtNDg1IGNhbGxiYWNrcy4KPj4+Pgo+Pj4gd2UganVzdCBh
ZGRlZCB0aGUgcnhfZHVyaW5nX3R4X2dwaW8gdG8gdGhlIHNlcmlhbCBjb3JlLgo+Pj4gV2h5IGNh
bnQgeW91IHVzZSB0aGlzIEdQSU8gZm9yIHlvdXIgcHVycG9zZT8KPj4+Cj4+PiBSZWdhcmRzLAo+
Pj4gTGluby4KPj4gV2hhdCB3ZSBhcmUgdHJ5aW5nIHRvIGltcGxlbWVudCBpcyBhIGdwaW8gdGhh
dCBlbXVsYXRlcyB0aGUgUlRTIHNpZ25hbAo+PiBpdHNlbGYgYXMgd2UgZG8gbm90IGhhdmUgYSBk
ZWRpY2F0ZWQgUlRTIHNpZ25hbCB0aGF0IGNhbiBiZSBjb250cm9sbGVkCj4+IHRocm91Z2ggTUNS
LiBUaGUgcnggZHVyaW5nIHR4IHN0YXRlIGluIG91ciBjYXNlIGlzIGEgZml4ZWQgc3RhdGUgb2YK
Pj4gIk5PX1JYX1dISUxFX1RYIgo+IFdoeSBjYW4ndCB0aGUgcHJvcGVydHkgcnRzLWdwaW9zIGJl
IHVzZWQgaGVyZSBmb3IgdGhpcyBwdXJwb3NlPwoKClllcyB0aGF0IGluZGVlZCBzZXJ2ZXMgb3Vy
IHB1cnBvc2UuIFRoYW5rIHlvdSBmb3IgdGhlIHN1Z2dlc3Rpb24uCgoKUmVnYXJkcwoKRmFyb3Vr
Cgo+Cj4KPiBSZWdhcmRzCj4gQ2hyaXN0b3BoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
