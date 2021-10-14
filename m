Return-Path: <SRS0=Ggyc=PC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09965C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 10:11:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BDCFF60FDA
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 10:11:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BDCFF60FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:Subject:References:Cc:To:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mbK9PqJ6XkX75dRw/O7XghuRmgNYah85FHFzcl2BzGs=; b=IwXVpZm4mMjc306DctPk7syYBM
	/YnrQ/+bduccSETvNkdWIATacpVdYH/qHGK59x7C58VM+/F93w7N/BaQ7nG42Q7a+zhcSGzBOi6Ed
	T0C5hLYgcxF5AQ8QIv2lJBIGCpbOSMLObD5Anm2u49LNhydYwCP6ofdPek/O+0oS0y55yKvvXkkkD
	JNMbXUpKEPeiRfbVEmO6ND4VwUuncCMK+rRoxn6Ow171UbqOR4MIbh7aQUxKaqgZvKicB+jleHfPi
	cyZZKWH94Yhn7ViRY/ksMYDeZjMmM7f2uH2z3fFrMGzCyRUQQzdqsZaGdOL5yo5oL3v1rmZ1HlY42
	Qa8WdWbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maxiB-002Wdl-Qw; Thu, 14 Oct 2021 10:11:43 +0000
Received: from mail-eopbgr70045.outbound.protection.outlook.com ([40.107.7.45]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maxi9-002Wcf-FM; Thu, 14 Oct 2021 10:11:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H/mutUjf7f9u8GtqhzbTKDDmOW9MR7xVcZBi0qNvbOttWHa8tOVMCZafqe+ud5WdKvXtbxT8/d4v0ccF98CfV39HXWOh2mCV86yPxfT6ZZe0BsW7n0n/1vUp1/nNByGigqEq9DZ2aQDsLtmZNdgtzkqrYCepb4vC3QuIxD1s6im1MkWe/cnH4NVna6ghnDrKrzFzIKNT6kJiOR1EBmGqQqjo+FNwM4RYO85CGfq0PejShQpMLkTw7SmnSkz3fkOmI4xGYNSGjLcHhaP+cQMis0XNaSBr5gR8wIUFZUS1gHk2WdB9Xd8H9aKgFl+uZ9m/gbuOv9l8G/6J9AsSGsQ7lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tjHYJ4tSQj2d9+4zPk+OjIZFT52sGzToPTyGx1OoteI=;
 b=JSYqcW8JTaCj+BHh8jA73xd9KARqPCKWUYWk3HeADMZqhIsQBcQAGsLZf2uaAfQ2nTj6oOrK8/FEWBHNzeOK7ZAzRE5TAO/GUlvhK3j/ZUe+6EhZdu5l1ReKdrBBKhM2SHHDzIO6mfJJ/PzLXDJXtjDZj2Q6kh/N2CwOfeVllsFRIcnifUJ/yaWgyEW99/5HIjKE2Y9vO3LU/232X/N2KQ9a4PTrePn12AUwClzsxesToioBbm+og2DQ8oNKs2IJQKe9cnhdMErbm/Im3Vz7H9yCRD+EsRVaYqnaAgynPqyKmYbhImGGW6CCfuox4OxLwPcn7t4YwrK7tSBBKNmCSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tjHYJ4tSQj2d9+4zPk+OjIZFT52sGzToPTyGx1OoteI=;
 b=i1Ha8IZYIASPePcq39s1ecrwYGuxerucFxS0YgKsusp9QmYeaUS+f6qRs/jwTKB6RHVadzahQ2RQra/CiXEP+jIl37fsr/N0QH5FPfLvovtonYZ99nF/oKG1fFGgL73nD8M9gm4esK0VgDFYAscAOUT0wdeUoYds9AzHGk1vhDI=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB5222.eurprd08.prod.outlook.com (2603:10a6:10:dc::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Thu, 14 Oct
 2021 10:11:35 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4587.030; Thu, 14 Oct 2021
 10:11:35 +0000
To: pgwipeout@gmail.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
Subject: Re: [PATCH v2 0/8] phy-rockchip-inno-usb2: support rk356x usb2phy
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <c2df4e64-a0aa-8da4-e279-2666e4d53d63@wolfvision.net>
Date: Thu, 14 Oct 2021 12:11:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20210812204116.2303617-1-pgwipeout@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: VI1PR0102CA0021.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::34) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR0102CA0021.eurprd01.prod.exchangelabs.com (2603:10a6:802::34) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Thu, 14 Oct 2021 10:11:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0b112b55-1b34-4516-688a-08d98efb00f5
X-MS-TrafficTypeDiagnostic: DBBPR08MB5222:
X-Microsoft-Antispam-PRVS: <DBBPR08MB522296029DEFDEBF8BF1F3CCF2B89@DBBPR08MB5222.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C9Q25JlgwLONNrsyCljkc4Zm35MlN60ZnTWGSU7V89Gl6hJHAk9hq+lvrBoGGkFnfKJ3q/JHBABJHezoRGBjniwZQJ0uxV7vXqXRketf+zY68MS8Mfndb8/nj0y9TuljU7AU0byG04wsmjpWyCNSwKEqfFI6f8SMSnSrzB+x9haTpw1xYZo4uhhXotjBoxo5aulj8M3slc2wiHBeAOZsky3si78C8ZiIwCWWDVUQCFsTrqsVwMbiJCDdcPb8brp+65f+ffT5AgngM9QLTwQhuYMw0ll1n60x1lUk5AvxfbEfzc1N5GNMGReT7h9VgZee+ACiPC/uYCatS/KiZ2gklgHYEx1+8o70FRduXamLU5jcwczqhligOUQkc3px8ouOTlSV96wAZJ8HSN4XpXXQvPhrSP3MsPJyDyCS9QXH98lFNVoQLfU1Q4ySI7TvmhTn9baLMdKrryMRrUDo4cRLtMc45wkz//Pts6N6PL8qoWejCTBDxCZGX7KdDZKPj6vfJxGg15yTBTpKaw1X+R5ltXaUTROmNLLzpqcQngDJ8VTFmqldBU76scmCvPFIP7LLAmmUHhdrKIxs2Ve6hbhTN1mR5+kjA4eONeuAA0AMbjPksuYXLOLR1jRO79yDQFco079kaNq5JdI8iA/NeIGgBsu9uvh/d21OPN7S/IJzVYsiRVzCFM/wCo+gJC7g5gj+sqvlQXTfQgSFD5LwxegFOJ2LqJWBPz5ZJWUW0+LkZzs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(136003)(396003)(376002)(346002)(366004)(8936002)(31686004)(86362001)(66556008)(6486002)(2616005)(956004)(83380400001)(38350700002)(8676002)(66476007)(6916009)(38100700002)(44832011)(508600001)(26005)(4326008)(36916002)(186003)(52116002)(316002)(16576012)(5660300002)(66946007)(31696002)(36756003)(2906002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MG45UktMQUtLN1FHTS84UjYwMU1rZVJDclU0SVNGY2lham4yUFRtSW5hL0pj?=
 =?utf-8?B?S1VOd2RhWlZ0dnR4VmRYZUsrNDZCdmdRZWdOZytpR1gyaEZQUGwzd2x3VTJ0?=
 =?utf-8?B?TmhhNmZPNEJiMlhybSt4OExEUjk2ZGJzbEE2VkJvMDJlSU1oSm13NmNYSUIz?=
 =?utf-8?B?bUtMUHczWnpTQ09ROFR3SEN3NUQvdWlGTUNybFRsK3Myc1dSNU9VVG9LQnBx?=
 =?utf-8?B?VFppZlR1WUdTbTk3dmhqa0VYOTl4c2tvNmh2dU8zWW1Ud3hYbHZJeWUwYjU1?=
 =?utf-8?B?THBLVURSZm5hWWpyNkVQU2R1Sml1NGlqTEdzMk0rRlFHZ0tCaTlyU1FEd0pr?=
 =?utf-8?B?a0xaWjVWTmFWVXA3ZHBFWmlNSW5SMXYrcmxjU3krL1phdlVtclJDbXdRNEoy?=
 =?utf-8?B?Q05ZRzJ5bjgyeGlVdy9DU3phMkphT3JneVhCRjgyYytneTJ1OUsyR2tGWlUy?=
 =?utf-8?B?d1V6b1lSSE1hOWpnYlZmS01RQzlNN3h5cWM2ZjRDQnBCTUtCakg1SzhoT2ZG?=
 =?utf-8?B?bXZBeStnU0I3eTAxeUZpSzVUL3ZabEg3eDB4YytVNmVUYXBONkYrV0ttQWds?=
 =?utf-8?B?NTFDTUJmazZ0ZVZGTFp3OTdKaENWdUFJbjRQMUxndDY3RmsvZUJGaWsvUHJR?=
 =?utf-8?B?ZFBMbzh3UkhUc3dmNGcvTklvcFhMR1VHTDEzNUZ3dThGT0hmWjN3eStvS1NP?=
 =?utf-8?B?c2tkaCsrOXZZVXZUNFBrTFBNRnZLZVBCc2MxaThjeUUrdWVJaDZaMFRHZlBu?=
 =?utf-8?B?K0d6S09DS2hyWnlGWkc1UjJiSk8xNVdPaWgrd3lwc3YxMnBTUUdva1lsVy93?=
 =?utf-8?B?cWpLTVoraC9PU25UTFJYelJBTlVrRU0zc3lxWTF3QStMVCt6SVRFTXV5OFFM?=
 =?utf-8?B?VHljSURtNStnV2dpRDQ5M3cxUlJuakQvQllsT0pDUjhLYmZJVDNyMlRIV1dF?=
 =?utf-8?B?dHBUVlhlYzE5bFRpY3NCN2xZYXVjRFpSMlVZcGJYejQvOTJBVzIxS1BPNXJo?=
 =?utf-8?B?NnhKRGVBODZ6ajFGKzlUallqMU55YytRYzNJbnl5SE1RU2NDN21tMkRUTjNP?=
 =?utf-8?B?Ry9aRDIzNDJDSENGS3VnMmM1cHFYRHNOWWJmQWdmeXBuVmlMcmVFS3VHWUFw?=
 =?utf-8?B?Mk9ZbTQ0ZFovVWZzVU11aXpCM0xTcHVzcUt2bmxmaU8xTkJCNWs1SWY3aGZD?=
 =?utf-8?B?NCt1QUtPenRIKzJDS3RqR0FrTklHUkFkN1N6SXEyNEVwaWZDdXVFRDF6Y1ox?=
 =?utf-8?B?K0w5SjJleUdEeVE5VTVUckVYT3BCY1U1MHFLOGNPVEVERVhxVDQ4SU1nZ21k?=
 =?utf-8?B?VTlVT0YzMXE0cThSSkdqMU1TdWVZZUgrMjFndE5HSG9YZFpFVEtnbFg0aStj?=
 =?utf-8?B?bXB6SHFUbENHay9vaTROSXJWMWxYeUpzd0dwTlNlU25IOXV2aE5PMGN5d21y?=
 =?utf-8?B?UUNhWGZYODZaZ0l1bVFLUnRLR05nUG9tNlhCajc3R3BVU0I0MG9ORk5kbUF5?=
 =?utf-8?B?MlI0OVlFSzhJMHhmWVhYMXFNZzQyQlUwRDV2UjNMcjhDUXI0Yk5MeGtSRXg3?=
 =?utf-8?B?N0lCOFJwcUFGRzNOYUJWSGlQR2ZtVTh4aTNZWXRlVVJuM0t1NHpPRHJxTlRk?=
 =?utf-8?B?VU9WOUx1bU1EZEcwcTl3dEdnY0EyMEhSaHV2V2gxZEhwUzZZTXFic21OS1Q0?=
 =?utf-8?B?WlhYdkJld1VXTmVhelpDSUhjMXdqSTVJMU85eEpzdFExaDZWdnJsbmFRMGpJ?=
 =?utf-8?Q?y+BFp5jsoJFGWb/m+cJZG9eUbBLBosHCDfg9D2c?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b112b55-1b34-4516-688a-08d98efb00f5
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 10:11:35.5753 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q8J5IH+/7g2cUsef84HDgn5RTYxGiETkGSZuj8ecxP2ie/3buE/E9wR8N7mR+vxtIz6NOoBk+LHusDSQyT5FQJisbyrnnBlMhjQw+yH6Px4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB5222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_031141_558779_7A318805 
X-CRM114-Status: GOOD (  17.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Peter,

> Good Afternoon,
> 
> This is my series to support the usb2 phy devices on the rk356x.
> The rk356x phy has a single muxed interrupt and has moved the usb2phy
> nodes out of the grf and into their own nodes.
> The phy needs to tie back into the grf for register control, similar to
> the rv1108.
> By moving the phys into their own nodes, they now have full
> #address_cells = 2 register addresses, but they still reside below the 32bit
> mmio range.
> 
> This driver series only supports the host configuration for the rk356x.
> I have have tested it on the following:
> rk3566 - Pine64 Quartz64 Model A
> rk3399 - Pine64 Rockpro64

On a RK3568 EVB1 with suitable additions to the board dts:
Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

Thanks for your efforts and best regards,
Michael

> 
> Please provide feedback and comments as you see fit.
> 
> Changelog:
> v2:
> - correct the order of the usb2phy-grf dt-bindings patch, thanks Johan
> - correct the conditional requirements of phy-rockchip-inno-usb2, thanks
>   Johan
> - drop increase generic-ohci clocks patch, thanks Heiko
> - correct rk356x.dtsi ordering
> - fix a dtbs-check callout
> 
> Peter Geis (8):
>   dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
>   dt-bindings: phy: phy-rockchip-inno-usb2: add rk3568 documentation
>   phy: phy-rockchip-inno-usb2: support #address_cells = 2
>   phy: phy-rockchip-inno-usb2: support standalone phy nodes
>   phy: phy-rockchip-inno-usb2: support muxed interrupts
>   phy: phy-rockchip-inno-usb2: add rk3568 support
>   arm64: dts: rockchip: add usb2 nodes to rk3568 device tree
>   arm64: dts: rockchip: add Quartz64-A usb2 support
> 
>  .../bindings/phy/phy-rockchip-inno-usb2.yaml  |  31 ++-
>  .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  52 ++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  98 +++++++
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 259 ++++++++++++++----
>  5 files changed, 383 insertions(+), 58 deletions(-)
> 
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
