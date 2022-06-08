Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AA76C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jun 2022 13:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=smPe3Eio95Eo9hEV/0BRlN8c+rlm66rwXCHmFxDY/Rk=; b=zjOrCPI98jYXFv2PmeZCg7NEyv
	OJlvyfjxQXzY9gJpVHO6Fb3oItSvZGhYXz8ygCTHE8ULDjxRS+R8qA8DPGmQgOf540Prcwt32uR71
	O1gVQp+Fz52/kkuHTl/nsYkDlAOU1Vy+iFdBOxZ4L58IIn950CyssKdFyHx4uVez5FhFnuoNho+PI
	fogHFBwH6fLad5qi+wr0Hcviec63gYoLr+IxNh+Dy9Tw5IV+GyB34Hug4V6LDT9NT3YOIkMYMx29/
	3/1ffaBmgrXmuflh4OIen7/xGhJdzKvXr+2K9TwOtXhhoF/PDJK0h+e0LjEisjDIQpLQ2dDoaEEZH
	geYeFcng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyvQc-00D8zy-6r; Wed, 08 Jun 2022 13:08:54 +0000
Received: from mail-vi1eur05on20624.outbound.protection.outlook.com ([2a01:111:f400:7d00::624] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyvQZ-00D8yq-N2; Wed, 08 Jun 2022 13:08:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BdnhUvIuukzohfTgxtbWpXwlR3MZjsN1TOXbqMyetdwJWuPXXRECbeGMYRGeRWgOgorUb4AdIUJI1DbIV88jvDGsya+Bh+QRFBECdSb62gOUvaebcF9BfTyZzYY0X2UeKZ+NKxreoEQUMOQ/JGA9+VNiS5zdfj2+Njp2Z/n0b5kT6LPccMbinwODQ8Hg2sBxeyx+dae5uEzkqjjXuMXHBl0m20hTUMfFBElNSU4GfHDR19/RRjBEynKd35kCEbrT843UmOzQNdyU31jzSfFqnA3itEpQ2Wd67iF248+EOEKmBzLh2SJ7ybhq4pqQ9yMrX1UWOWt3qJqTrzpusU8KPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zFhnqP082Ay0394vc5XMq/xJxQ6OACLoSFSjBmjD4M0=;
 b=LttWEcamzuYud1jB2s2qIvSJXv7xl84RXguyw7WscZ25n4MgpKZRPblrROsZeNEPLPWlWETKZQHKdlODUtu7hSyWh/pyYPCAbYzaurNPXI6q41l/GDrnFNM10fgwz2ff9qgRz1pty98GzOWwVyO4ssCYjMGp0kwJLeuS3s8dVRK6IbN+RycqIZHgo5pdNcca8o9E6q+8Ckf5EHm/z6qmlMmzcHTg70eucKWm1MDi2subWn+zzKu9uuuUNBJtd0f9pRJINbU+HBwHy1vucFw2WsyZ3bCNwlE1CW5gBaNGMZw+9AO5ItyTONlHAD+RcVUtXMzTKH6+qbFu52rXdvnt1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zFhnqP082Ay0394vc5XMq/xJxQ6OACLoSFSjBmjD4M0=;
 b=I5V3kNq22SfrrlI2bSruhKrnfCjPGFmVfHuEfjvvr13r+kdpXMDFA+iSlCi/bhyoT9SVSChu0u0MfkkaGc8vUA4uIQSpzNoXEtYPxtlRQpjYjOhWokEXBhFMOFG26HSW0l2g/mm9zysvaVkZ8zn+Q/otXKYIlFLjjk/+7ENiM7Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by VE1PR08MB4704.eurprd08.prod.outlook.com
 (2603:10a6:802:b0::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.15; Wed, 8 Jun
 2022 13:08:44 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2%3]) with mapi id 15.20.5332.012; Wed, 8 Jun 2022
 13:08:44 +0000
Message-ID: <5e0b908b-52c8-494e-a804-393c8aad097a@wolfvision.net>
Date: Wed, 8 Jun 2022 15:08:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rock-pi-s add more peripherals
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Sjoerd Simons <sjoerd@collabora.com>
Cc: kernel@collabora.com, Akash Gajjar <akash@openedev.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220606082629.79682-1-sjoerd@collabora.com>
 <4731d47f-ef02-d512-c599-274f8208f845@wolfvision.net>
 <3576f2af98a0d9e7128568777d85af3bfbab801d.camel@collabora.com>
 <2759751.88bMQJbFj6@diego>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <2759751.88bMQJbFj6@diego>
X-ClientProxiedBy: ZR0P278CA0066.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::17) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 124cdc9b-ffa4-4dc0-00b9-08da49500422
X-MS-TrafficTypeDiagnostic: VE1PR08MB4704:EE_
X-Microsoft-Antispam-PRVS: 	<VE1PR08MB4704B29970B5C44DE998DE12F2A49@VE1PR08MB4704.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	TRKTlSaz47Pg5UuwTjxcIF00rZaOoo6gqamJFjhD/6XD6TyiBSKRCKjE0wcRUViLuHBiZ34O8aZ97C/rgK95HLSaANHgCdHwLhZ0BXn/ClayTCGyT2N2IwFRrCDynqvgosPBrqmwaUnQEDFI6vwl8N12ADEcVbCA3uIW9vVZtDGGm82fz/ZCSvjpEQueXl+ie3tYbFIv8ayvBud9Io9mEGLsQ6XfzCDmRb86p1VT/o+LmULI7hwp7Xh05u55KCKeAi4P+g1FCWDzQzKMmJwDL0lars6DJngO4ndvJOS3/1T4M4d9zX2SzCZNV1NnnwuwUHJPz4G/7WalD72Uuj0CDiXSnH+F/EyaWftBMuz9PudG2OxOxblJJPBh48uTGpXR/PZWqC/FYRihtRf/5t65MoRZw8ip7tjrh3eejFB1s8kWb6nMl2JVxt3W2uJWYYThCqzWOEdE9rTpg6TeFUjYhrBrW/CwYUP4YLFyizLeMoc0enSnJtF2K93fAJdaC2wl1O3a6y/6MZQvW1WmPsro4lzbhwjPYIjWsd3XOF3HOEcFp18RRQViWh8TEmKHR/uvkXWgGi61jW9qQumC303MVAfs4w5gLCjlPEPIcK/ijnsuKo75MrPKpipRh3ms3w6e9BJfM45Kc03cHvQuSvv3BzvseMJ61HFfQNHjPoLNVg9OgddYCU6a2qrgJqn1YJaCykz/oKaOcMFTMp1OW3XuU8RrTBZpHUJ/icH0x+jRcxs=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(136003)(39840400004)(366004)(346002)(396003)(66476007)(6666004)(6506007)(316002)(8936002)(66556008)(36756003)(2616005)(66946007)(38100700002)(6512007)(31696002)(86362001)(5660300002)(31686004)(8676002)(4326008)(52116002)(7416002)(110136005)(53546011)(186003)(44832011)(54906003)(508600001)(83380400001)(41300700001)(6486002)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?WlFMdnFLS3JNb2ZNMXA5WkxtQlNZcnZhTmt3Ymxua3lMNzhjd05DYk9WUGJN?=
 =?utf-8?B?V2Yzc2ppOVF1UUo5N28zMi9PTmt0M3lFWFFEUDBmaXRsR3Z3cC9ucW5ad0FC?=
 =?utf-8?B?aFg1ZEpzeE5uVm0xMVNQWGxSbEQ0VVNqY1dxYkJhOW5CeVNYRzcycUpqYmhn?=
 =?utf-8?B?UWxGaEN1SGp3VlBVOGtrUWZ4RE9qc0JGYXA4QnVLVmtDMURSSThPcjBzOUJG?=
 =?utf-8?B?bFpCaDJJUlovdXZQY281eDNXMTlKT1ZGYkRHWVFxeHhtQkxlYkR5bXhZTU9V?=
 =?utf-8?B?UGRrNVU4alJ4cUVCMWFXQW5LbThGaitOUDhORFVydDR3azEyeXBrSVZ5MHFY?=
 =?utf-8?B?MXlYN0lCMUNMM0FtNlRqZ3FXcGN5TDI4SFRKbVNVeFNaeGxEL3dlT2d1REEy?=
 =?utf-8?B?VXBMQ010ZmNka1J6RGg4b3RQeGN5bi8vQXdBTlRRQy83T1J2RS9XbjRaODVk?=
 =?utf-8?B?QWNyQ3pIVFZacndyZWdjUEphV1VTRHhMNkJ6SzkwMVcvWHd3SG9FNEQ2ZFdi?=
 =?utf-8?B?YmNSaklodWJ6SmtWZHM3MDk1aUptN25LaVRPZVV3Z3hxY2E5OUhXeVo3OVJz?=
 =?utf-8?B?Tyt1ajNlcmxZYTRoZFZ5SVlnOVQ0aDQrS1dMV0NPbUtreHpieGdDbkVTLzVW?=
 =?utf-8?B?c2hnZkJJalpKU3NpN1pIajFmY1pBNEszRUtBTDRtRDlhYnZFZGZ4RUhKcU1X?=
 =?utf-8?B?blZiaEY4NmtZOEowUGZ3WDFTQUhXbUVHTTR0bFJuRWN3QTVMbDVOK1pXekQ2?=
 =?utf-8?B?WXl1RFZORjdIYVQrY0NzM0N3YUlxMllLdVB0U2pxaXVxdlI0VlROOTk2MU9p?=
 =?utf-8?B?NUNkR1hSUW84bHRwMi91ZXRiWlp0QlI4Q05zWWV3cndldy8vM2Q1TU1uWHdY?=
 =?utf-8?B?STlka1EwaFNwZkVrVjhYeGhZQmxxK1lWQ05Sc3pqKzJldVg4N0FMb0E2cksz?=
 =?utf-8?B?MkEzUkFHdDdheUlDQXFBcWZLaTI0RnBTNUJyRnNXYjd5TVVDWTIvTHNFcFd2?=
 =?utf-8?B?TFhlWFhDbUxSZHVPWEkvM3lKZDRwVUs4QU45aFpRTm5IS0Y5VTlUMTk1SmZK?=
 =?utf-8?B?NlhPVGxubFl3MFNzUXNlRk9IUldPUXNtN1BPdHpnNERYdk15VDgxdjJzU1hB?=
 =?utf-8?B?TmU5QmIrM2xBbmhNdXpjZDBmSDNYdU9oblM0QVRjSVBkdjZKaGZkTnlDZ1da?=
 =?utf-8?B?d1VKaks5S0JHMUd0M0hLTkE1aDUwTnJBTnZnZnJZaWxwa3IwbEJqZDkwSnB0?=
 =?utf-8?B?ZXRoaW1ONnFPUzg4UW1EZ0JPZDVxMHVVekNNYmNWQjlSVUZuOGZubk5CZ0hU?=
 =?utf-8?B?T2EzQTcvVVE0dWcwKzc5eU9lUFBnUnhDRUdSMVJEMFp1djZQY3NHbk0vNFZy?=
 =?utf-8?B?RnArbURLRUpWSml3MjRqTm03MTNEaHY1ME9oQ1QzMU5CVXhhVEVxUDZZd0tn?=
 =?utf-8?B?NnJkaDFCcjJLM1hTeWNjQkF2amJaY29IMlJQazJxVDBnRno2bVBwM01US2Nq?=
 =?utf-8?B?Wi9WQVZWQnIvc29XOEJJQVlxQTkyRTNsWHFxaUE5RjNCemtGMUw4dDI0NVpr?=
 =?utf-8?B?OWJ3aW11UEVjb2E4VDhxM2lzSWZkeHpxS0UwY25FdXVKcXJxcWYrR0V1OENN?=
 =?utf-8?B?cVNOS24vcHFUNHo3U2dOS0Nyem15VGt0TjFlVVoxa2NTN3oyMXZrSVlqMUgv?=
 =?utf-8?B?U0F1MnM3VG9oV1A4elpwN1Qycy9pQWpiUTRUTk50SE1tNnluMTFIcnk0cDA2?=
 =?utf-8?B?K0dkbmpha0VOck9UcnphTlpRSFkyOUxwNUp2ZFdUdzRoRUNUUVZIRzF6Snlh?=
 =?utf-8?B?Z05HV3U1N0JvMGIrQk1SZVNnbFN3Q1NETWhGWE9uVFJYRDRqUUh2SlRCbW1U?=
 =?utf-8?B?ZG9nREt2a29ZQ29lbnB1dFRiZEN2WFdKNjVUQjd3RzYwbS9oNE9oRmxpVGsw?=
 =?utf-8?B?UFo5UHVBOUszTE5QNlByNjRJcGxZRGYvWTh5eFpJbnBURjhablRteGx5OWo5?=
 =?utf-8?B?cGppbGp0Z3ZPaE5NR0c0Tk9heFNQdXFtQlV5WGR2TG9QVnJML0VsMkZJbG8z?=
 =?utf-8?B?TlZFcXhrSGZ1N2lHR3ZiS3YzYkFuek0wb0NZcnBMYjVMVE9aTzRrTmdyd1ZJ?=
 =?utf-8?B?c2x4MExkMVBPYUxhaGlEY1ZzYksrbzRGUmEwSVY1SElDRmRVcFBGOTdPSFVI?=
 =?utf-8?B?ZFJrczc1N1Byem9sMmthczhhckRyT1JWUXBnUWtqTjlxdy9memQ5WW5Na0pX?=
 =?utf-8?B?SGg5blNOYTZ6MDNzOGRHakF6SGlDOGNqcWNyUjN4R1E0dHBNVzRxSWlma3Ux?=
 =?utf-8?B?Q1dSR2UxSW4wVzFoMXlJblNpRHIwOVZTMTkzVzlnenc2VDFDcUpYMDYyQUl2?=
 =?utf-8?Q?X7ZT27ramplq4tFvIYyKhGGmZr8Gq7I2HSQUZe6qP1FkB?=
X-MS-Exchange-AntiSpam-MessageData-1: 	FQq9TQJ1EAOWpLb9vquZiCNyWtbBBBOx5L8b+iAt5WLAzF7rX8/kb9b1
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 124cdc9b-ffa4-4dc0-00b9-08da49500422
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 13:08:44.3301
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jdLJPcDfTsPgxsc9YC7QTNHCCmwJLxOkBr9s2vDOqLHCeV/gnt/NfgB1+0d+1GqOFD5CFktKLXQpIoh7NXJPJzGix/DrGXXEkLVztqiMKPE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4704
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_060851_982434_A97B9D14 
X-CRM114-Status: GOOD (  16.89  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgYWxsLAoKT24gNi84LzIyIDE0OjE5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNaXR0
d29jaCwgOC4gSnVuaSAyMDIyLCAxNDowNzozMyBDRVNUIHNjaHJpZWIgU2pvZXJkIFNpbW9uczoK
Pj4gSGV5IE1pY2hhZWwsCj4+Cj4+IE9uIE1vbiwgMjAyMi0wNi0wNiBhdCAxNDowMCArMDIwMCwg
TWljaGFlbCBSaWVzY2ggd3JvdGU6Cj4+Pgo+Pj4+ICsgICAgICAgYWxpYXNlcyB7Cj4+Pj4gKyAg
ICAgICAgICAgICAgIGV0aGVybmV0MCA9ICZnbWFjOwo+Pj4+ICsgICAgICAgICAgICAgICBtbWMw
ID0gJmVtbWM7Cj4+Pj4gKyAgICAgICAgICAgICAgIG1tYzEgPSAmc2RtbWM7Cj4+Pgo+Pj4gU3Vy
ZT8gZW1tYyBpcyBhdCBhZGRyZXNzIGZmNDkwMDAgd2hpY2ggaXMgbGFyZ2VyIHRoYW4gc2RtbWMn
cyBhZGRyZXNzCj4+PiBmZjQ4MDAwMC4gSSBiZWxpZXZlIHRoZSBhbGlhc2VzIHNob3VsZCBiZSBz
b3J0ZWQgdy5yLnQuIGFkZHJlc3Nlcy4KPj4KPj4gRG8geW91IGhhdmUgYSByZWZlcmVuY2UgYWJv
dXQgdGhpcyBzb3J0aW5nIHJlcXVpcmVtZW50PwoKTm8sIG5vdCByZWFsbHkuIEkgZGlkIGhhdmUg
dGhlIGltcHJlc3Npb24gdGhhdCBzdWNoIGEgY29udmVudGlvbiBleGlzdGVkLi4uCgo+IEkgZG8g
YmVsaWV2ZSB3ZSB1c2VkIHRoYXQgbW1jeCAtPiAqbW1jLWRldmljZSBzb3J0ZWQgYnkgYWRkcmVz
cwo+IHdoZW4gdGhlIGFsaWFzZXMgc3RpbGwgd2VyZSBpbiB0aGUgbWFpbiBzb2MgZHRzaS4gU2lt
cGx5IGJlY2F1c2Ugb25lCj4gY291bGRuJ3QgcmVhbGx5IGtub3cgd2hhdCB3YXMgYXZhaWxhYmxl
IG9uIGEgc3BlY2lmaWMgYm9hcmQKPiAobm8gZW1tYyBmb3IgZXhhbXBsZSkuCgouLi4gYW5kIHRo
aXMgc2VlbXMgdG8gYmUgdGhlIGNhc2UgaW5kZWVkLi4uCgo+IEkgZ3Vlc3Mgbm93IG9uIGEgcGVy
LWJvYXJkIGxldmVsIHdlIGNvdWxkIGFjdHVhbGx5IGRvIHRoYXQgbW9yZSByZWxheGVkCj4gYW5k
IGxldCB0aGF0IGJlIHRoZSBkZWNpc2lvbiBvZiB0aGUgYm9hcmQgc3VibWl0dGVyIDstKSAuCgou
Li4gYnV0IGFwcGFyZW50bHkgdGhlIGNvbnZlbnRpb24gaXMgbm90IHRoYXQgY3J1Y2lhbCBhbnlt
b3JlIDotKSBKdXN0CndhbnRlZCB0byBwb2ludCBpdCBvdXQuCgo+PiBBbHNvIGRvIHlvdSBtZWFu
IHRoYXQgbW1jMCBzaG91bGQgYmUgJnNkbW1jICpvciogdGhhdCB0aGUgYWxpYXNlcwo+PiBzaG91
bGQgaGF2ZSBtbWMxIGxpc3RlZCBmaXJzdC4KCkZUUiwgSSB3b3VsZCBoYXZlIHN1Z2dlc3RlZAoK
bW1jMCA9ICZzZG1tYzsKbW1jMSA9ICZlbW1jOwoKYWNjb3JkaW5nIHRvIHNhaWQgY29udmVudGlv
biwgYnV0IHRoZW4gSSB3b3VsZCBhbHNvIHRha2UgYSBsb29rIG9uCndoYXRldmVyIGFueSBvdGhl
ciByazMzMDggYm9hcmRzIGRvIGFuZCBhaW0gdG8gYmUgaW4gc3luYy4uLgoKPj4gRm9yIHJlZmVy
ZW5jZSB0aGUgcmVhc29uIGlzIHRoYXQgbW1jMCBpcyBlbW1jIGlzIGJlY2F1c2UgaXQgc2VlbXMg
bW9yZQo+PiBsb2dpY2FsIHRvIGhhdmUgdGhlIGJ1aWx0aW4gZGV2aWNlcyBjb21lIGZpcnN0IChl
LmcuIGFzIG1tY2JsazApIAoKLi4uIHVubGVzcyB0aGVyZSBpcyBhIGdvb2QgcmVhc29uIG5vdCB0
by4gWW91IGJlIHRoZSBqdWRnZSBvZiB0aGF0IDstKQoKQmVzdCByZWdhcmRzLApNaWNoYWVsCgo+
PiBbLi4uXQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
