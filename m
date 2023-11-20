Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D121C197A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 09:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W6+Rk6oV/KHYq23ITmRh+YUlWn16fd1sI7xlleitg+g=; b=H+0BldpaSBr2N8nEIicRCn15hM
	wzILgARUtvzeuk/uocZrSanz5UeavM2nyDI36bf3pZoSxlIee1qQFajPeHc3qEybph6mYGt2tEyxW
	6PF7g5tUXtqpchsnC5JmkEb2PGvPjAKzFW9axgA2ou9CEMZ1IW/0dug6lzPntEl0uEfP02EeU7sMo
	1mR8NZUe0JsrK2EX6axN89kD9y5LHk+pCTVGivtwVNFLXGBkul45gMOI6HFPdtXCn88FTHf6z6mOk
	iHIB+SA8/0/afGBkisxFZjxCdXf7rKjKQAigsOY67rtVEUuIntRCVfSVWhD1BT34aHYhIoPz9DE6s
	8QjglDEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r50ar-00Beid-17;
	Mon, 20 Nov 2023 09:29:25 +0000
Received: from mail-ve1eur01on061f.outbound.protection.outlook.com ([2a01:111:f400:fe1f::61f] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r50ao-00BegA-0n;
	Mon, 20 Nov 2023 09:29:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCqND2ZVak2VC4AjzrQQl5Llzmuzull7i5yjTTWJVV40o2D0sSZXxogfgzATtzoQPVmhnL+AXAvhjZkvgabKska8/9XNY66qJRQTcgxdFNYbjBdf6fWpQ51Bpcn3gJQ53/80ynKJEBVbosRrddqvYDMBiklNiKN7HQCwAzX2JrsMQGmFmkq4vdVi0Y0w/2BDXMSi6rarpv9kc8HtLGWyUNlC/lbbHYohwBBubTYTEpIQHj+hiyoMPgUA3N8sMTHpMgl7q6L6sJd5oiV776PPRDvy7eTvo5Gp+IYS6Xi6G+4oyGakQbli4rH76Sz73Yqzc/W+U2fL5XPZij4JiSzSrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mkPt7B4MTOTp1PMr7Hu0WLTaWGVdrLSN6bO9UCdCXg4=;
 b=BHQf1+0H2XSncnkpMtM0YywgGeDy0WMdlWaEfSgHV5b/gWuY4E8uRDryOjzMPwdvozauGc3doI/y0vB2lBwmz+QKV3I3Y1jj+iNiqcSGYelRO6H3+/bbpAG7dNHTr856CeUI58927hx7sOqR5eFBeXhnuCqBI0appdwp/LyYbspWIZofpRKepD7NG842bvl5HLe2+m+f+ybuDHbIZfzskdbaL1LVhW/6CafCpEYD3jQj/YYQynBWdpwDvoUf9FEhOaiISWM3ZDFSHeG2SbUDQkA3ek0P6dLdD39FKqbJ493h9A+Fr5xZ6t2URSKQCJh/dWjVTFES+pcjqZju9+V+kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkPt7B4MTOTp1PMr7Hu0WLTaWGVdrLSN6bO9UCdCXg4=;
 b=H+4wldsx7iRXWdqvRLvZmoAl2icpqxgEpjr34Ah7Q5uka/8IKvoMCEDdMgwa7+Nbnd663PWu1TOXfhnuctS+1TwPML7mzqeBZzDQx4698abYEEMItaYIzrSVsSPVYEfHiMKpcYleN+WXAO4lD8W2JXgZ1xOcfomUPFSOFxWDMSV0N0BOXhinjQbd6urkyemgrfvLhVxbsivDE9iSWjWmUqjBxdpnogHp9uqEy/v65WcBWKaC7gcpPKDYt85HVGWldXew6L8DTac++kqama5UiuRKCLhPH/AOKQjGwnNT5kyBM0oP0hxMkuhGNVIskhqdai9dG6jO2uvbrV0Xac973g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DU2PR04MB9097.eurprd04.prod.outlook.com (2603:10a6:10:2f0::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.16; Mon, 20 Nov
 2023 09:29:14 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::7488:a852:6c9:5ecb]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::7488:a852:6c9:5ecb%3]) with mapi id 15.20.7025.015; Mon, 20 Nov 2023
 09:29:14 +0000
Message-ID: <052cfc94-fba4-4d1a-9bc8-42d81c8cc1ad@theobroma-systems.com>
Date: Mon, 20 Nov 2023 10:29:12 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: lvds: do not print error message when
 deferring probe
To: Fabio Estevam <festevam@gmail.com>, Quentin Schulz <foss+kernel@0leil.net>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Yao <markyao0591@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
References: <20231117-rk-lvds-defer-msg-v1-1-1e6894cf9a74@theobroma-systems.com>
 <CAOMZO5BVX3UmZ-45OphM6WDhz_ENkxm+Sr1dXkt4jR+Mmo-1Gg@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CAOMZO5BVX3UmZ-45OphM6WDhz_ENkxm+Sr1dXkt4jR+Mmo-1Gg@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0374.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f8::6) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DU2PR04MB9097:EE_
X-MS-Office365-Filtering-Correlation-Id: a455d85b-8a58-4948-855e-08dbe9ab2947
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JV331Pcx/m6bilXcBcudI1WjnueETzpW3L7ldYWpjMeoYVzRMzk9RZvW3QnSJ+uJY8NvuAAeavRzmFix4bNtkitoju6eiWP79xli/ahCfq3r6hX1tZh1xDieOco9O52Eg4arbntLDrPZea8HNZzkWHF46dO6+nEck2LCDpRVGfYFHpUHkaGCcniVp/EPc/is3Nhf++lgSQ5lB5ayxZi2FaRpwCjM1eYRGu1wNfGThmsm9KnDNURM1cy9K8Ketk/gaDg7dCmF4vTYcPzP/T9oiYCPfzufT+5W5AByOHgHfejkedA4r7VArcrnzPeMIFYhITZqkUmAFvWvbH6aGbdasJCEqhZsP1i1+Ri0u6R22hu//a2AlooIxXLY5kUvSS8xnvl3QDDri75AFrxo7UlwTdTSU1J+Q1QsEkeJgO5G8qD9iQuxDwVfcGhVW31Q6SygAzaukNpHFY9d5NcNV3LFd83iyV18/0tLJSrd/LSFf4bZrCtxUmv/MSLbtf+wIylVjO4DwOmXBdBftZw6IhBpBsG41q5CHxEdQvlNddq2Z3KnuhvEAAjkBgmsic5D/My4+rx8mY9BG12jqi9px7UWDKX0rvSNUgD4HKXw1lexYZdwtrL0E/mhRyM5HrX93/+KwmYmMQ8/3YsG1IIiA5CczA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(366004)(346002)(39840400004)(136003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(478600001)(6512007)(83380400001)(6486002)(2616005)(53546011)(31686004)(6506007)(26005)(54906003)(110136005)(66946007)(66556008)(66476007)(316002)(86362001)(31696002)(2906002)(15650500001)(44832011)(41300700001)(5660300002)(7416002)(38100700002)(36756003)(8676002)(4326008)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVFVamVYR3A3VVMxRnF6UDcrNG9VWUFLaGdKbkRJc2ZIbnBrRjZ6YnA0OXpV?=
 =?utf-8?B?MmZVQXlOSEwrNThIZmxKMHV3ZHFNaG9hSVRuSUNuOE5zOHppdlYrZFhwbXlN?=
 =?utf-8?B?MTlGV0tnUEcrV3FlWHNkVXFDQTJLTFZvSnNtYlE2bTZ1N0MyTWs0OVpqVHgw?=
 =?utf-8?B?RlYwODNwVjMvajVGL3doVWptNDRnZGcvUkt5dmVPZXpQeEFYV2pkWGh1SVdU?=
 =?utf-8?B?SkNMTVQ2aDYrLy81dzgxcFNpME1CQ3BLLy93dWpWN1M2dndnNE1qLzQ5Ky9S?=
 =?utf-8?B?QUxRYU9qVHJCOTRNcy9hSGpINVFPQ0I3T0JQZTU4cGFpTnNDMU5NQm81MWNx?=
 =?utf-8?B?QnRtMXN2enQ4Yjc5aFhTVFpad2o1U2l3OTNZNUlKcVAzN1BWTjEyRTZXb2hH?=
 =?utf-8?B?UDYrWHV2OGJsL1RidTdvbHcvNFVHd1hEN1VacmNnL29zUXBxTlRxWExOQVJo?=
 =?utf-8?B?UlN5REtnVjFaS1FlNXN4Z0JWWHpNSUlsNzBXUVVDTlowU3VvT0NtSkRzcFlW?=
 =?utf-8?B?VXcxS0c3Mmd3YWpPTVp3UkpmSXlXY0RUVW1DS3E4YVpkSXhNNU8xbjdXN3lL?=
 =?utf-8?B?cGgyTEJhREpJMUZWLzRjNmNJVjFYdE1RcU02bW1Tc0pPVFQ3K2FneW5HUzlX?=
 =?utf-8?B?Y0ltRzlyQ0FyT25Hai9xZC9IODBpa2hibFhQQWNMbkhTUEdkbmFFSjNaWVBI?=
 =?utf-8?B?MENRSVRpa2I2RXAvdFlJVVBMR3haVzd1N1pRN1dhT0d0WTV1YTVGaUJmaWc5?=
 =?utf-8?B?aExraFJrZ3B2MnVjbW9NazlNVjFIeldBajI1ZDQyUXdhQ1NwOTgveVJ5RlFI?=
 =?utf-8?B?SWJVV1RjMUtDc0NpZkdhVWs2cTFnSUV3akwzczFySDZmamw3eUdHY2RRZmZT?=
 =?utf-8?B?aTVKVThBK3djdTY5YkZLNjdEK2JtNnVjRjAzTVptWFRvenpuYzBkbTVLT011?=
 =?utf-8?B?TE1rNjNKd0pEeEtiSnNkTCtEQUFhVFpPVGFNa0VNektzVlFoNUJiUTB5QmRr?=
 =?utf-8?B?VUFVcWxHSnhVOUI1RzF5QmVYQUVIWU1IdHNlR29PNE1WTlZMYVNhMHJUNEVr?=
 =?utf-8?B?ajRKb0p6UlJrVytSZHBqUkhadlF3Ym9RUVBnL2VvVndxbXpKMVh6dlZPZk1k?=
 =?utf-8?B?bVVoNUM4U3ZUcFhNcGVIWXFPWWU2QjBlNDJlMDJ6aFNMVkU4aXlKdjIrVzVh?=
 =?utf-8?B?ajZTV2ZQbTdKVVRhdjh5enJGdmlreC9qVS9hZ1ZlQVMwLzlrQkJQbVNSaEFM?=
 =?utf-8?B?VTVTNUpCc2J5Q0VJZWFkN1VCQW5xMklEK1N2MmdIdi9CNlhxRWZMemVhUEpD?=
 =?utf-8?B?ZFRBUUk5alVtNHE2RFBWVU1lNDRaNi8wWDg5Ulg2emZnWUZUdGZBdFVxZXdX?=
 =?utf-8?B?NHNRT3NZN05Cb0lDVHl5UTQzQ29Yd1ovWCtzYXpvZHduL3Q5cTFCMEpCcmVu?=
 =?utf-8?B?OHRzTmNPVlFObmx2bTJtSmRHVFgySDVKWGZ1ckVqSzMxakVWSEJoRlNWR3RP?=
 =?utf-8?B?V3JXazE2MncvV1lYbVpPS09JTFBOK0o5RWF1SWxCNGhMNkVmQ0FyZkphTDVp?=
 =?utf-8?B?UThYbkVtRWhud3pBeVlqdDVvbkdOYzRPQmpQaVlabUxiZ2hodGxIT3ZvUDRE?=
 =?utf-8?B?NmRjejJVLzVaUU1STjhZZXd6QmQ0aGhvUU5xTkkzaHlZS1pQZ0l5OTBkYjhk?=
 =?utf-8?B?LzdleERra0VaRVVnaHlBbDUvSE9OeGViZ3ZUVWZCYTJiUGpWS1I1Y2ZYek9S?=
 =?utf-8?B?bVc3Y0JPSTNWVVJUdTVPcG10ZG45MjVwUjNITTV4dGtpcFV4U1R6RFc4VG52?=
 =?utf-8?B?YUsycEIwK2tCeFlrNFFpaDE3R2JzeFIrTWQvb0FlMlhSQTFIamRuRWpXY01v?=
 =?utf-8?B?ejdkSVR5OWhGQVBBSnRPMzZ3T2pSR2tyY1ZHU1BsQVJpYThSNytrVlc4MEgz?=
 =?utf-8?B?Ry9WYXNRRHh5NkRtc1owUitXQVAwMG9mcWlJSFFhZDFzN2NmMjkzbkJURE9D?=
 =?utf-8?B?akxVblIvSXp2dXFBVHdxeTlrUmZ4R1FFWlFKUUkrT05DOTJDR1dXb3k5NDR3?=
 =?utf-8?B?OVZPbEtzT3pqWTROQllBQ28vdURybnhLalQ5QWpjRzZRY0JqZFpCaXFRaXpG?=
 =?utf-8?B?WGZVQ2dkcjZvaFhKQm5rOGVmVUZmRXdhandHWHA5ZWUwTm16WGJxZXpBOXpi?=
 =?utf-8?Q?RyzlnQOfZe80To/A0fq6iY8=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a455d85b-8a58-4948-855e-08dbe9ab2947
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2023 09:29:14.5767
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NoSk4o/qQcbD6rDcFEVAkXlT0nvCLpzkP2uz9MbBXfBSZgiFTHOa5eiKIwFUIRW/Tedd9XweAU/wBxfS3KzrPaR8b5CbgSF/CdYWEEQv79nKshZp6a62wKeS7AKaYRLy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_012922_451370_08943C51 
X-CRM114-Status: GOOD (  11.89  )
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

SGkgRmFiaW8sCgpPbiAxMS8xNy8yMyAyMDoyNywgRmFiaW8gRXN0ZXZhbSB3cm90ZToKPiBIaSBR
dWVudGluLAo+IAo+IE9uIEZyaSwgTm92IDE3LCAyMDIzIGF0IDM6MzHigK9QTSBRdWVudGluIFNj
aHVseiA8Zm9zcytrZXJuZWxAMGxlaWwubmV0PiB3cm90ZToKPj4KPj4gRnJvbTogUXVlbnRpbiBT
Y2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPj4KPj4gVGhpcyBz
Y2FyeSBtZXNzYWdlIG1heSBoYXBwZW4gaWYgdGhlIHBhbmVsIG9yIGJyaWRnZSBpcyBub3QgcHJv
YmVkCj4+IGJlZm9yZSB0aGUgTFZEUyBjb250cm9sbGVyIGlzLCByZXN1bHRpbmcgaW4gc29tZSBo
ZWFkIHNjcmF0Y2hpbmcgYmVjYXVzZQo+PiB0aGUgTFZEUyBwYW5lbCBpcyBhY3R1YWxseSB3b3Jr
aW5nLCBzaW5jZSBhIGxhdGVyIHRyeSB3aWxsIGV2ZW50dWFsbHkKPj4gZmluZCB0aGUgcGFuZWwg
b3IgYnJpZGdlLgo+Pgo+PiBUaGVyZWZvcmUgbGV0J3MgZGVtb3RlIHRoaXMgZXJyb3IgbWVzc2Fn
ZSBpbnRvIGEgZGVidWcgbWVzc2FnZSB0byBub3QKPj4gc2NhcmUgdXNlcnMgdW5uZWNlc3Nhcmls
eS4KPiAuLi4KPiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9sdmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jCj4+
IGluZGV4IGYwZjQ3ZTlhYmY1YS4uNTJlMmNlMmE2MWE4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMKPj4gQEAgLTU3Nyw3ICs1NzcsNyBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX2x2ZHNfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2Ug
Km1hc3RlciwKPj4gICAgICAgICAgICAgICAgICByZXQgPSAtRUlOVkFMOwo+PiAgICAgICAgICAg
ICAgICAgIGdvdG8gZXJyX3B1dF9wb3J0Owo+PiAgICAgICAgICB9IGVsc2UgaWYgKHJldCkgewo+
PiAtICAgICAgICAgICAgICAgRFJNX0RFVl9FUlJPUihkZXYsICJmYWlsZWQgdG8gZmluZCBwYW5l
bCBhbmQgYnJpZGdlIG5vZGVcbiIpOwo+PiArICAgICAgICAgICAgICAgRFJNX0RFVl9ERUJVRyhk
ZXYsICJmYWlsZWQgdG8gZmluZCBwYW5lbCBhbmQgYnJpZGdlIG5vZGVcbiIpOwo+PiAgICAgICAg
ICAgICAgICAgIHJldCA9IC1FUFJPQkVfREVGRVI7Cj4gCj4gV2hhdCBhYm91dCB1c2luZyBkZXZf
ZXJyX3Byb2JlKCkgaW5zdGVhZD8KCkVpdGhlciBpcyBmaW5lIGJ5IG1lLCB3aWxsIHNlbmQgYSB2
MiBhbmQgRFJNIG1haW50YWluZXJzIGNhbiBkZWNpZGUgZm9yIAp0aGVtc2VsdmVzIGJlZm9yZSBt
ZXJnaW5nIDopCgpDaGVlcnMsClF1ZW50aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
