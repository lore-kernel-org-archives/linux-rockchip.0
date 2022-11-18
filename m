Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FA88C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 18:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpJzis7vL0jKhegZM86QMcxjekB6b9Sk+laZuDhzFXE=; b=x4W+u96EvRRUyo
	Nlpqw0bkRzztGvKnZHcxtqNGLNnORehCjrU/jfB1cTOUj/fUn42vqgFH8rfHLsPaxPsYDryJyiF/V
	LUsfhImdR2XiCOaBXbWpSzO1bOSQhdjTI0cLI3KfRT7vO9SvFj64UvrpBDa83b6DRb2bMlW6pSZc1
	KSMaznecqrnmy9ZLvOvQ8EAbsUtGyB8ZCgBSAGyZ+uBM/jL52qPQKl73GlXsx0SgwKn5JB/rsz5K9
	TogkFgKbd53Yxy9pV4Ur8JYG65D23Zr315zHLZT3bZ8uvX10hsYnwFzEoG7G3ABTeGwjr8V+3iLfK
	BYZYAzF5sQM+c3QGIkvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow60R-006Qqm-AS; Fri, 18 Nov 2022 18:22:27 +0000
Received: from mail-db5eur02on2061a.outbound.protection.outlook.com ([2a01:111:f400:fe12::61a] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow60N-006Qj3-CC
	for linux-rockchip@lists.infradead.org; Fri, 18 Nov 2022 18:22:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dTOL9ulxRFV63MJEnWyav5QlVOEhl9ZF0xYWK+ImvZVYy27m9BpZzS1JApAekl5yYSZM0JiuEgt6xOf4+R8gbkI8uG0rmCBDEeb6GgJ00aVmGreL+CM+rYF06rQ9gs6ENLcYO+pE4eJP6zPlyMTV2HcmisHLNItcCkD88Mfy7vIOGf70L3RHpErO7IcRByHJNy08MIB1iHe1QNKuYU66bGuvb7cYWLKwq5vkWmLBisNUYtOmFDgLIH9NX8UJgOfbA1qw3Ejs+VsRQT0V9GCZwVbMU6RW1ZYINRQr04Nf1/dCR+DtUZf75r5HNhdeIK+9G5+U4ciDQsfr5/lstkpKMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qT6RyYIJrbLBGnB1jeBssU5glMO42XVqaMYxixQc9ps=;
 b=kXd/CPwVjX5/vCyJ+uQihiqWdtrmDpvrlt9NdWUGmpjrDtCn9y2n6T8/OUGClc/89AYOFiuce72JQ5MF9vPxDBudpF3nunqjFWtPkpt+TGqKVAYkr9FpndEbarJSU3o2KGjyMd17ylL/U0k+LbYKJJ+QYcC2zA2+zPLRO4i+b7mQqiTiZCro0yPsYO2wl5o8ZJT7xPiCOV+6VlryDFfdHx1KI/NcE+5IrXufkfzhLl1CgTINGb3UZ3wMo1nrva8oGi9Ln4ZEk0Vjfz56PmSF8XrMfKgmWP8JNwLy2qBKBQKPVRV7ZXCor78hPyqPEksNWk49ETcIv7Md6HufLYcGnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qT6RyYIJrbLBGnB1jeBssU5glMO42XVqaMYxixQc9ps=;
 b=hINywm1khjSuvXs47ZCWrgcKsDKK6bIVRgYBik/rVtmh6V5hIiEBdRu9XPJr4n/NqcLXWqoxUuQQpyJUw9RgzXbAa+GfclOj0lDan5hHNpDKH/fsuwPXsYZ2vQPsKxGKwAQTA4u99NzkpXyKdb4pXrI43Z3+ZmPY16rRNH3WsZ2Ag/6rWNwGJ/8P7Xee+ADwTBu5ICDOwOew87LfdksVRUbJfoylxaBMZupsj2ur4IOqQXChI0DHk3KjKCngs3IvyaaZ4x2X9tSfYtQeKHx0nKOUXs2DkXrigCkmbgk1xIFiL7E1lk6w9KjeDVIoxrVESadgk7depvAhsrvWExr7+w==
Received: from AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5b6::22)
 by VI1PR10MB3552.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:134::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Fri, 18 Nov
 2022 18:06:40 +0000
Received: from AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6180:97c1:d0ad:56a9]) by AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6180:97c1:d0ad:56a9%2]) with mapi id 15.20.5834.009; Fri, 18 Nov 2022
 18:06:40 +0000
From: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
To: "a1ba.omarov@gmail.com" <a1ba.omarov@gmail.com>
CC: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [RFC PATCH 2/3] arm64: dts: rockchip: rk356x: add LVDS bindings
Thread-Topic: [RFC PATCH 2/3] arm64: dts: rockchip: rk356x: add LVDS bindings
Thread-Index: AQHY+b4GSnIUZXWRF0GV9tw3wI3Rw65Bp1qAgANWKwA=
Date: Fri, 18 Nov 2022 18:06:40 +0000
Message-ID: <d48538acdf415b051b21876504187859074b38fa.camel@siemens.com>
References: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
	 <20220923160115.2946615-3-a1ba.omarov@gmail.com>
	 <e02b6efd7d242f95c5cdfb2c5cdac29fe65a7d13.camel@siemens.com>
	 <CAKyg=SU_1pFcBvwfTHgPbzFiUrNkx=aTWSbN59K2Gtzb5nZSXw@mail.gmail.com>
In-Reply-To:  <CAKyg=SU_1pFcBvwfTHgPbzFiUrNkx=aTWSbN59K2Gtzb5nZSXw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR10MB6867:EE_|VI1PR10MB3552:EE_
x-ms-office365-filtering-correlation-id: 7b467dba-0be6-4723-385f-08dac98fa4c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  8z9xAS7XBSzLXE2an7KUrp6HOhJ7ZKE5+VnwXYa95w/itwEnUywJEvJL9tG6phBbV/3OaYq7X9tR/AYb3qgcpfohyaTHkOqlxGxngqKngPqyq2STtblOKn5jqTyBx8Yd01+BjkiWtcda8VQHMgIXjoOBCGPzIG1QydIbrcd+PgFQ+aSz3/ybkV0iWx6HKP19XSyeZl3AzE4izb2FCc78giR2f0w8xJeU9NVvzlhDEcxezN1XOQC4RUBSFKDCEl7rhtI1hBpDsRkIC7o/xF+HVh4xSKR7FLGHLbHj15kW+ZhLZFFtKKJLfosbiJ2s22kJWL7oW4yLimuVl0C/BtqXCIHGUEsNfTLc9TpGpxi7oP2vU6hCKGf+Wo78XWAtbbcvtjqqUnXouimstG+0jDWgYb4c1ZTlQCdQZc8zRWru1JuFepzT56Z5L1+aY3S10A0ISuC7qj6ejRAxgx6s0it4ACvYSPZqMftfI4v0WXliJjS3Oqhr3pn3xRGZ+puzHyyO5c5PyEaDqUJxDeVx4NOlgv3p0idrQUcD159mYwFJNz0HiXnb/oQ4c5ko/oSmRp/3M3H2FTo7AxbvZqAcArS8gMxfdcfH9GBUMFdPbCshgN43li9Jy5YGlKAxMD8JCINvHF6nQf2ZcJC26sZktouoIO80lXPW5f/2XEJ2oVbSlpRnu25U2UdiuwfcNmqxEuCqKeYPlKvT21rCfx7zenpvIUpMiIElN2nk8TO3yHZNSD8zBkusCexG1oYuGNndLZFBK77JxAnBUcqdXyIRT62MlA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(346002)(396003)(136003)(39860400002)(376002)(451199015)(38100700002)(4744005)(4001150100001)(41300700001)(8936002)(122000001)(316002)(6916009)(26005)(2616005)(6512007)(186003)(55236004)(6506007)(15974865002)(2906002)(66556008)(66946007)(71200400001)(82960400001)(64756008)(8676002)(66476007)(91956017)(4326008)(5660300002)(66446008)(76116006)(478600001)(36756003)(966005)(38070700005)(86362001)(6486002)(18886075002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?emZRRTZ6M1dzVThOSEFGRnJSUFYrRFdzcmd3bmhBdWJSbU1pM1YrN01ZTFBE?=
 =?utf-8?B?eFpBSnJZWWZxTG05bmgxa0gxM2l3cWxTbndkSG84RnBPbkhiY0EyOUtmVVcr?=
 =?utf-8?B?Wm5USzFnRXZvNzZRbk5QYmNqSFJiM2dUSEFVQXJibE1MWVJVaHE0TGlCYnVn?=
 =?utf-8?B?a2Q4WSt3bVAwOUVodkhvOVBhTDVHZEJTV2c4aUJISWRJUGRwdmFNOGtBZnMr?=
 =?utf-8?B?dnRiTHkzRWQxejlzYU5xV1NpVDQwWTEzaFBNMEtwQXR5WUpuSlF5OTc3LzZB?=
 =?utf-8?B?bkhkMnZ2NmJ2aUV5aklUZGt3b3g4aXVRQ3NNNXZyTTNlcElRUmZTVExVK01L?=
 =?utf-8?B?R3kxYjJqUTZiNXRBN0d4VFhJTE53RXlLMnZHczVtZkZmUXQxbFphVmV4aVBV?=
 =?utf-8?B?YzY5TmFLYWx3UXJzZDlYLzFPNUFDTUVBQ3lwc2NVTUVNam5MdU1QSHc0azdX?=
 =?utf-8?B?OERJVExxOE42a3VVdnIram85ZFE5TmQ2d3g4dUpodlFTeWRBR2JNYnJpS1ZW?=
 =?utf-8?B?akdrWVJhSEZDNjZLVmxONzZRVVBVVU1MQ1J3Um1IOHdBcW53NHdyNlVuOFVN?=
 =?utf-8?B?ajR5dE1ZRVFjUnF5dGlxTm5JVTZSYXZCVXBGV25rdnN0ZXgyUTVUeUZoU1NN?=
 =?utf-8?B?MnpscGs1ZWx2Z24xL0pTUnpWdHZucWl1a1FlcVdSK21iQWJIVlhWM2pIS1lK?=
 =?utf-8?B?T0J2Nzc5ZTZqNkJyVXFFd2EwVXFJM1FZVzZjNkY4OUs4UkhSeDA0VStyekl2?=
 =?utf-8?B?YnlCcndZcjFuaWVpU05nb1VPWlA5UDc2VTRHTWQ2UVB2WGhPNWhNSEJqazA1?=
 =?utf-8?B?RUhCaVFtZWRnNktaeGRNekhjZmFVTDM0SlRRc09DeDJHamhTcVM3UGN2d1FJ?=
 =?utf-8?B?SVNCUVk1STdubWNnL2NZVHloUDBEb2R4RW54VTFTeUJITC9aalF2akdyTEh1?=
 =?utf-8?B?REJEaFR4TUlKdTZPWW5iVThpN0FRUXh6TUxOTlovZURZMmdGNnhRMkN3dUZQ?=
 =?utf-8?B?WXVBSHZ2dEk0SnlQNDM5YzM4Wkx3cGU3QnRIcDJrU3JFSGlJMDJ3eVpnUEo4?=
 =?utf-8?B?Z3R6bWdKbEtnWVV5K3ZPRzRjaURydmpUeitHS0hiMmN6SDdURWdRSUtQZFNG?=
 =?utf-8?B?TityaHJwdHlCay9lNzdmbkJhUk9aclRaTTk5TE1idXFXU3hZSFp5Mnp5UGxM?=
 =?utf-8?B?Qk1PWC9XVGxpd0dJVDg2ejVCdVp0bldPOWVCM3Q0SnpKUVc3M3E4dGRkRmE5?=
 =?utf-8?B?M25xeTZlMmNoRHpUWXZrbDFUOUhsRGJPdDJLaTQ4OFN4Q2FTYlNiOGhMbGJo?=
 =?utf-8?B?NVd6MXdLbC8xcXBSN2s3YkdRUkxwQ1QzNHdvOHlrc3RCb0Q4Sm0xRUtNeHR4?=
 =?utf-8?B?Sk9YQ29JRHVKYVVxR2tkcWNEck1EKzZVSElkeGlpcENGNW12ZjA1eXhZNVBT?=
 =?utf-8?B?OUJWK3Zxa2hDWExRN1pGQ0R3RHlGQTZqTCtsa3VmTjRCVG50aDQ4UXVGVmtu?=
 =?utf-8?B?WGhocVpCVmIzYmtjVmlXMzhEQ1Z0V09iQ25tWWtYK1FSMWdMWnA3eFQ1bndT?=
 =?utf-8?B?L0I4bk1ubnZvWWZvRHdxY21kNEtDRGoxUElQYVIwaW9ISmw4ZGszZzNXQ1h1?=
 =?utf-8?B?aDBVUitSMDdnbVBRRURXb0c0eVVSS042NzNuL1FBemc1Uyt3SEVCZlRVSVRS?=
 =?utf-8?B?SEU3Yk1HU0p4cHZzbHBxWjc4Ny9QUzVEcFVsb0lIVU8xUi9aVmRaZ3JvMk1B?=
 =?utf-8?B?SWpWK2ZGenh1RURnaTlhUDlNN3grNzhpbXhueFlQNHkyNjIzNVJwdGk1Wmdo?=
 =?utf-8?B?Tmc5U3pObWxHSVpoZ2ZKb1lnenlpcWFTbUtyNDR6aEpvVU8zNW9BeUdVSS9G?=
 =?utf-8?B?eGVDYTFMcTU0TnhYTTFrV1BUODJRTnZVaTlESTZsTFArUDBGaFZjVzV5UU5U?=
 =?utf-8?B?N2RDYjZLWi9qc2dLVTUxUkVla0RucHdDcy92LzJOejFVN05OZDRwY3VyWmVH?=
 =?utf-8?B?N2J4RGV3bGMrQ1pVRDdFOEZVY0g1d1BKK3hUdVZ3TjV2S1luRGRWVHRuVlp0?=
 =?utf-8?B?TTk1UjdMSXVLckU0WldScnlQQVp5b0NVVjlrbkk5MkdPU05KcFl2TlhrdWtP?=
 =?utf-8?B?LzB1aHExcVlDYzAzU3lNQ1BwU1k4Z0xpemc4Q1FWMld3bUNPcWNlc2FsYlVm?=
 =?utf-8?Q?g73twlzcEEjQClaYA9Uja/0=3D?=
Content-ID: <41B4F4A8FEF093419A4DF90D995DEE44@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b467dba-0be6-4723-385f-08dac98fa4c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 18:06:40.8150
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4AFyqlzALdawacHn6MAy0NXicAx5gSdZsa+8GPS9xwSOneat4km4qNIpR2Qj9jTKa44ZQDX3YEk3YcHajF4QtEeCfShqsGTXS3cz5+1YZVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB3552
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_102223_810931_43030C1F 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi!

On Wed, 2022-11-16 at 18:09 +0300, Alibek Omarov wrote:
> > patch, then should the phys reference "mipi_dphy0" node?
> 
> Looks like I just linked the old patch version instead of the one
> that
> got merged.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/arch/arm64/boot/dts/rockchip/rk356x.dtsi?h=for-next&id=e18d9b093006d8abd53e1ce13c0d5a8d0fcd5f64

No, it's me totally missed v4 and the whole rockchip tree, sorry for
that!

You can add my
Tested-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Your patch works fine and shows some LVDS panel graphics on a custom
rk3566-based board, thank you!

-- 
Alexander Sverdlin
Siemens AG
www.siemens.com
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
