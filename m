Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09919C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:From:Cc:To:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vIqv+v4F1XzzRKs5nflUSDQMKvBAsh+EJFxE+QF7b9o=; b=B+C5Fnd2M5HXpS
	Xo0oN9YnRUkgOFxVXv+ar5DvN1Q2wRslukVaJSHeCdwYRgsnYhkEIkH0fHmLw9HV37BJdOn1DtoB8
	Ir4onY3aI/rRuKX8KOT3wI+Mf8LECMcKu+vUIAHuiMV9XB17hKo1h8g0SWW+N3UNZSqw54VxhDT50
	pFlyIZLCW/sUPYnyGU+mXrRWkQO8dQIvAcE8NSeh4x704cHDu9w6lekwuw7ZpEpH4VXInawjk7GJQ
	n5qWtHeNVeUZfAZykDXW2+WTn7DMu7NnTmrPSF8Orpi60nSW0lQcAR4Jeo1YHNj7+PT2QmeMoLHgC
	A9qC1ZHZPJDw8zyAy+Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuZMU-0003IB-8J; Fri, 27 May 2022 12:46:38 +0000
Received: from mail-ve1eur02on0617.outbound.protection.outlook.com ([2a01:111:f400:fe06::617] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuZMS-0003HJ-3a
	for linux-rockchip@lists.infradead.org; Fri, 27 May 2022 12:46:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PXpvjq+/SI023j5SlmsLIQgFUSlusN8fas88JCL4i5xu6cIAXe5y1ZcG16y/s1Iafr3EwlYHfMD19GTlxP33HVz+OhNUBYPn1s3s+Gkpoa7y50hiRP7AW8BjceqT//88QLlKJgmxEbe4iLWxKXDneXU5QCS8g35N1I3XdEPVjPM3/zTWcxK2SFEonr0HS8+J62T6GWNa1L6ZiIZzlyptPf1ZeF9hifGekAxrjMk06Y0RXbD0bj/9JH1zpXu/FzBkEShsjMfH+bHi80P/hXNLV63Ja8UqyfQNKx3ieNenqAF5fngrdHKjSSMqnzkpB7/m7FixbXe5n93Tpu11oU/Mtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uZ3aQwxDu7RKCIg9h0QGBMmBnGmR8PiCUs/GJOHF69E=;
 b=SO+uxhV9fGMQkhlf2fomVIdg55XVRCJ1brtu/gzDjPBrX+t2yQ3Yy4Tvqz71gNPt8AOUl1rLB/jLlhhYWc34IT/oqB2CXqD/Gpb5/r8AZkWmAcHodA+3zgFHD5tWox6lieUWVMBo/VH548s+krSNRzDkfvpDg1XU53smzbQNmC2pn6z1J5vhMyT0AUXlp9dbVYixXg6qug+E4lG46MOXaXKbPcYBoMFYwbGEkmtnFG4Xumt/3ebeTqrPuK+vVpybAXkL3/frmTf/BIiSIAXSBP3yuTeVL6fvdEy9aJuFZEfw09vdjbqOAHrnHN6M8aCMagGq8uUyhRaucIFLrfhKOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uZ3aQwxDu7RKCIg9h0QGBMmBnGmR8PiCUs/GJOHF69E=;
 b=z0dq6CLLZXzgNQoIIb/Yf0TLcm7NkIZnAfRjWsaDcCKdFYu2UK4yHFilkAs4xDr9tOhWVpkyloPezrZh8tMcMv5Uln28bsCVlsgYgtEt7H2ghC5lDa8gxx7mq+rbn43o+765kJ2cisOF3igctc9rr/nq7DlPmJQjuqp8FqsKipQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4348.eurprd08.prod.outlook.com (2603:10a6:10:cc::10)
 by AM5PR0801MB2099.eurprd08.prod.outlook.com (2603:10a6:203:4d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.19; Fri, 27 May
 2022 12:46:27 +0000
Received: from DBBPR08MB4348.eurprd08.prod.outlook.com
 ([fe80::398f:4be9:64cf:dc87]) by DBBPR08MB4348.eurprd08.prod.outlook.com
 ([fe80::398f:4be9:64cf:dc87%7]) with mapi id 15.20.5293.013; Fri, 27 May 2022
 12:46:27 +0000
Message-ID: <3e9619d3-2a59-80eb-b701-90328c6943e6@wolfvision.net>
Date: Fri, 27 May 2022 14:46:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Liang Chen <cl@rock-chips.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jens Bauer <Jens.Bauer@wolfvision.net>
From: Michael Riesch <michael.riesch@wolfvision.net>
Subject: rk3568-pinctrl for LCD RGB666/RGB656
X-ClientProxiedBy: ZR0P278CA0100.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::15) To DBBPR08MB4348.eurprd08.prod.outlook.com
 (2603:10a6:10:cc::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3964119e-4d55-4bdf-d9d2-08da3fdeea8a
X-MS-TrafficTypeDiagnostic: AM5PR0801MB2099:EE_
X-Microsoft-Antispam-PRVS: 	<AM5PR0801MB2099FE4EFCE7839B8BB29999F2D89@AM5PR0801MB2099.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	XV0q3dtXkgFNqYAQ4joU4xvzRtP7VeHJs7OHMDU9KFI3SIFZts/yA5+WlPLk+RXLjvpgrC0JpeQG0nzt+CqhpkNX0kWwmX2QIfcWKOhLM1ZOc7yr/uTcTokDK6YN3ILtqyH88kM4SXxrGBrw5553luU5dMgheoVTLW2xWCtvfIwz1+eOizr5wfc8bUOdH+P+7rraMw/TsESx01eIDiISSI5u2MKFuD9Pd3ysxUAXl+vzC837F+MIzGCp8fL9ElSMTty+/jz9aMhK7lUrls8MfYuzKJmaq4Ypls2Xjsg43Xy4kqUahf4XYo81VGBylk5jQS/rTT8nvLCU8Oyhy/cE5qNckbsERFb9cUNKrUN9XCImB0zIdDPa6z6HOxWwFj66poa4ubEhlWPI5mKoFXcU4+7xgyVFYMMWzVXk2P6AIjbC+F1wwmx3N70XXAGiFYi+yb+l9OpqYa0ERuiqJ1mjaHaEl85qg7TfE+aNmmsqqYMDeLXIRzP93hgxS7+4rxRsEtxiEz3ZZoFn5Sy2OnC1eoC6HevP8Mgfqo1OeQdLC7sCs97OBu0CJpsySzyEUVS8uyzWrh82Kw/j6UjJ6j5dkjMq6VZgsRN/Q7G2SE4d0UsbKaghI8A1mPxTO3myQ4tu0Gd0oV319pgRw0xtPDKYw7ExIJdrS7QDhbHQOPAP3FQK/vGgPZTJjFIO1C/LVTNybgzLffpT1YvrQveyaSycDi/8FgG4d4yGDX9vJhEDjpA=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR08MB4348.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(396003)(39850400004)(346002)(366004)(136003)(376002)(6486002)(508600001)(31686004)(36756003)(186003)(38100700002)(6916009)(316002)(2616005)(41300700001)(83380400001)(54906003)(52116002)(107886003)(2906002)(6512007)(66476007)(6506007)(8676002)(4326008)(66556008)(66946007)(8936002)(86362001)(31696002)(44832011)(5660300002)(4744005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?MTQyYURFdmxBK3A1Q3FreklDSjJOZzNyUlhMcVJCV08xY2o5clZMTlJRUkEz?=
 =?utf-8?B?MDQ3L1dRSEJMbjhFMmZuSHhRS29BdnVjS1pIOHl6aUxKMlV2bmpsTGRKaFVt?=
 =?utf-8?B?VU1uTlFGd1VkWlBzbkFxeWxkdVM0M3k5Ri9xSjZkUGpLdXJYRmJUU0E0L0Mw?=
 =?utf-8?B?UGJ5MmgzZEpEVEZaWVEwZlFRSDcxVEVWY004dlh2V3l4Slg2TkN0RW5BRWhs?=
 =?utf-8?B?Snk5bGZobXNMT3FYTnJZNGpZdzV2by9HWDRVdkh4QnBJM2tNc2wwd1FrOWo3?=
 =?utf-8?B?cW1NU1p0TEpmeWRlbS82WDJLZ0RDb1N5a0t0NWhJTjVHaG9ubzNYL0FQVTly?=
 =?utf-8?B?blRDeERvZ0l2cktPTW9QUlhTb1ArZkVRY1krOFBnVGZGY2k0UzZEcnlQUVJa?=
 =?utf-8?B?TkxqUzZNQU9KVkFxRXFWN2ZTcDAwdXI0UUhDQ09RdnIwWmZIY2hSZzk3WTFV?=
 =?utf-8?B?ZEEwKzhPMjZ6WTBXdUZrblBBcDRBdFRKWERLckMyYVk3VTYvUFVLSDVUbWJq?=
 =?utf-8?B?end6S2Y4OFUrYis5OHNwTjZxSGVZRERoK2xVeGNhVjdETlUxYWNHOTR3cC8v?=
 =?utf-8?B?ZUp3UVpVeXdyRGVlalRONnE4VlhYVk95VGo0a2tDNXRDZXJmbFJrY0VCaVNl?=
 =?utf-8?B?eG44bkUvbWZUOGt6aUdCVzlUbnZtZ1QyUkV2b2h0VUFXL0tOcGt2QmtlVXFU?=
 =?utf-8?B?R1VpYkx1ZnV0bmJvSTUwdG9YdEtzNU9JdU5Uakt0VGd4RFc5Tk5PMDNZWHJi?=
 =?utf-8?B?MUxiR2FZVEtYdXY0QWxyZ1ZUb1EvcGZnVWJ5VUpTUmJHbDdRSXN1YmNtdXNp?=
 =?utf-8?B?clpMcFlmWFdWUS9tbmViZTJXdUZjNUJabzVFaG5kSnh4eStUdmt2QTBZNjlC?=
 =?utf-8?B?Y0J5S1gyVmlXTFQvdFZ2enE4ZS9MTlRPaWNWSlk5ck01dU9Ha2NkRkhQL29N?=
 =?utf-8?B?dk9CRHpqbHZUMG94VEtpaWc5TDNGN1BRSXNMc0xtVVY3dmlBSUVuZWNsRkNi?=
 =?utf-8?B?T25QL29pT3dnclZjNUh3c3BlMFUxOTFuYklIYjFTcWRyQUE4cjgrWnF4Yk4w?=
 =?utf-8?B?K0RUeU1qUzFQSHVDcEN5OXpRNDBHaFh6Z1BXak1CR2lOOXpvRThpUGlYNnN0?=
 =?utf-8?B?emVsdnNrRW1UdERua2tpWFN4UkpyUXc3YWdETHFBZG9YckFUNlRZQXB6QWg4?=
 =?utf-8?B?TWR1emwwWW9aaFBOdFpIOVhNeHN0eHNwZWFZTVllS0dKb0ZQdlRmc21KVUFZ?=
 =?utf-8?B?b2NIQ2xVbFdMNVE4ZThTSlVmSUprQ1BEei9Ea05Oai9Xbm9PcE4rS1djVWFp?=
 =?utf-8?B?dFpwRk01NXRmTWRoSmNybWg4SnpPSld0ZlZ4UXlXK2pXK1FTZGdlS25zZm5y?=
 =?utf-8?B?aUxkVjB1OUZvaldmSGVUSTd1TWRqZmoxMUR5b20xZENKaWxFUmdaYzJrVm5n?=
 =?utf-8?B?aFB5b3F2dVZtRkZuL2l2U1k1L1huVUwrMVJidU51Qjhvc3I2THpvMWFLVVg5?=
 =?utf-8?B?V2w5MkMxRENkcHcrN2xmaXRZbWJaUDMzK1ozT2VQMHdZcmhuZUtqdFdBeUV4?=
 =?utf-8?B?a0FMVGxPVFptMWpuLzZrcDVXNjcvTUNiYjM1YUc1dTRHb0lIV05rWVpTcENz?=
 =?utf-8?B?cWRxdE5SYXNWUS9TcGpzUlhkdDhKd0FiVXE3VGpjbGdPbHNiTTV1bVNaZG9Y?=
 =?utf-8?B?bDVIKzRIcGU3ZVE3ajN6YTl0bTlONWp6VjBqZnN1cHYrS0ZzM2cvR0g3RWdM?=
 =?utf-8?B?eWlSN2k4SGc2VC9vR3djcFdveHNQd2wzTnZobmFuSVYwWis5ZHFNZDBLa050?=
 =?utf-8?B?S05WRitaOEJBMWYyM0xkK2E4aGJ2QUhoaElGKzFjUjBIbytoYUNENkpySWh6?=
 =?utf-8?B?YzlXemJUeUVFWDFjamd5c092R3J6c1NxMDNDdDFHb0xhRUZiN3cweUJjczlR?=
 =?utf-8?B?VVRZZmhCRlRkQ2tEYmUvY3ZZakkyNEFEc241VzBDVEFUZE5ERUpRNFp5eVFI?=
 =?utf-8?B?NGEwdG5rT3FVeTFoVkNxaGc1TkNMRDcvUHhxMVJIVFByVnRDRHpQMDhKRjgx?=
 =?utf-8?B?amRudi9QRjZxb2MvaWt1dEhqUEVadlp1UlJzc2N1RTY2Zy9yVE4zTmp6djU4?=
 =?utf-8?B?K3hUbUcxQXRkeDNYUU1QR3BWV25Pd2QxNmg4U1lQMjV3S1ROc3pLd2t1R0tr?=
 =?utf-8?B?VDM3Mm5yTTBzYVluakZyUllUeEdNekQ1R0x1dGFzSGIvbk5xbGE5TFVBNXkv?=
 =?utf-8?B?dEtuUTNRc2tkQm9PQVpCdC9kNmRTbWRkcENkUm9tK0djakFDeEZaT0lhc3VH?=
 =?utf-8?B?dGwrbDRCbmJ2Vk9sczRvMDJtY3o5TjZBK00xL2hZUGxpOUxNTkJOL3NZdUxq?=
 =?utf-8?Q?qNUXF9VCvSQz0VtTUkw8jQePQn6Di+me4JvDfXFd86R9M?=
X-MS-Exchange-AntiSpam-MessageData-1: 	NBgEA71y7blEOJfXEYfyvi7YZgNuh+PFxhSpemWSP/Sx2HvnFEuQzLxi
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 3964119e-4d55-4bdf-d9d2-08da3fdeea8a
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4348.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 12:46:27.7854
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NLOBnXLLJda1R2u1B9qHMiEfD4kYC+uLHrY0mje4/WKhNeouoD1K2InKy67xbDV4z1R8QW3n3A54yNqa9KmDoyu1nD6n+txvoUwbwSm1OY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB2099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_054636_407887_F132E749 
X-CRM114-Status: UNSURE (   5.16  )
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

Hello Liang,

According to the RK3568 TRM the Video Output Processor (VOP2) is able to
emit parallel RGB data to LCDs in 24-bit (888), 18-bit (666) and 16-bit
(565) format. Based on this I would have expected that
rk3568-pinctrl.dtsi specifies one group of control pins (clock, hsync,
vsync, data enable) and three groups of data pins (with 24, 18, 16 pins,
respectively). Does this sound reasonable?

However, there is only one group with the control pins and the data pins
D0 - D23. I cannot tell which pins have to be assigned to the different
groups. They are mapped 1:1 to Rockchip pin names (e.g., D0 is mapped to
GPIO2_PD0) but it is not clear which function (channel, bit) each pin
has in this context. Could you please elaborate on the mapping of the D0
- D23 pins in the different operating modes?

Thanks and regards,
Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
