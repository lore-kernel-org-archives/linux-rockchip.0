Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42540C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jan 2022 03:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jZM7VhAhCXJwdJN0Oi7NHv9fJW53LTHh/R5EFNsb1eo=; b=znG7ECv14pMm1J
	2Nso6DLzMm5Diiyh84I9Q/qX6t91GCWAGoUL5jsLp5mbcHm0/WfdwcRPUpx+5+s+IXqROL4+g+dI9
	C8knP+93jjIWc7m8H4lY9Ti/8m4Vpg4ANtGNz+cVdhxcsS8EOK9Z3BR/knpMr3a05lVY2ieYfrJhn
	jlpD/Xc/ANHMAotWZVYBYNtVDu6whCJvOBZpGBJ4iecI8a3L9SfSM82L48s8EY9gr1911Qk465r8m
	Y36F1wYip4muJgAYr/HRonIhPYvVxdXI5YAAcqiveg1PyVKyerX+j0jT96eMJ8lii65phA4LKZvOd
	t3mxqrb2NgKNubO3uiCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9fOD-00HY8y-5y; Tue, 18 Jan 2022 03:42:33 +0000
Received: from mail-eopbgr00042.outbound.protection.outlook.com ([40.107.0.42]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9ekc-00HFRf-A0; Tue, 18 Jan 2022 03:01:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QLrJXZA1s1NyGZqz69cIy3DQIlYGEmwHNm2XrVjxRj8GTFiS4/PbX0IJNOy0ZYfkqlfjPHr8fGSr64EB1roFjB5xiDxYiCZjtnIOZLFhcMBjmfFR5XcOXpSnNtgNCax8rKPZXCfB8Z7kBqbhOE3WgDHSAQ0PxsoRGC/NLJavXcqJLUGymZ90CA3zEj8hTPSNhz52Ejar/pokDVwu31rSLD0O18tgLPAXDl5ZRJlMk4Ph3dA+yz1v06uViLtaz91BWWSTCl04506of6QmsDxmaXb+CmCHKwAtF/G5NOACdOvq/rky59xdrbrR+RDaCy4XGYE6yyIqoZoSB9ryPmZL4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VCDwhEtmmEYLIzpIeV9i0fc7ATrkV+SpOyNtCaGDeSM=;
 b=G2TC5ijf6arJ5omNCvJYKFRPh41mY0Jn5wJTbUOpLKgTsdvcLnvlZWSqloPD1kA88Sq2l+fKPe5l5EN0DEmNm5BOa9qcuBlZqm6PsAFO073S3kH1/fY1yrJfjN8FqsZoWcutMg6zKW0RTFbVWr025+wiCRGc/k7/anDd3ES/yz0m3Xv09V9DHlhu/Nf9D+JTMRne/Um+1hPfEwuTuh/DjYPRh5PeP+B1bOEDw7Wiq7Bws3Kn+WFAh0IUN3SzGKCr+kHOplaz/gZl8nHqlrclRtsHVe2gjwzq9GE1kxsAl3mBAhIoOVGJDXPIiDykyslXq2rJ6POkH8O/zUeWvskJMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VCDwhEtmmEYLIzpIeV9i0fc7ATrkV+SpOyNtCaGDeSM=;
 b=QiG/ldUrvJIqiyyNNSTDkCKfZ3LLxTHvHaoffDq4xYp8wFf2c8lWCk/QfjsTH9kCYD7mfxA2Vj9TsaxyUniqKWXbIuEqR+HGJZzhp4fJg1SelGvRqvnYQsBSUd2+9FLzInj8ARjxMGasBvqfvlr0asYYOs04K6DBvdiSi+asmI0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AM5PR04MB2978.eurprd04.prod.outlook.com (2603:10a6:206:5::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.9; Tue, 18 Jan
 2022 03:01:27 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::a5b3:9e5:366:a3fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::a5b3:9e5:366:a3fc%3]) with mapi id 15.20.4888.014; Tue, 18 Jan 2022
 03:01:27 +0000
From: Liu Ying <victor.liu@nxp.com>
To: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: linux-imx@nxp.com, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
Subject: [PATCH] phy: dphy: Correct clk_pre parameter
Date: Tue, 18 Jan 2022 10:59:18 +0800
Message-Id: <20220118025918.1444288-1-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG3P274CA0011.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:be::23)
 To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3e97a0f-e19d-499c-fe3d-08d9da2ed1cf
X-MS-TrafficTypeDiagnostic: AM5PR04MB2978:EE_
X-Microsoft-Antispam-PRVS: <AM5PR04MB2978C5D6FFB7DC145CE1EA6998589@AM5PR04MB2978.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M2iwM/wfyhdFleFMe08me5erqKcvye4dFDeE0bWdgpEhfcVOlTYGk5mkxsSqQ5IeDrAbZ3sAmkFdMNPfjfpXkDvchTCO0Vb1IqAZ5QI7woNR+WC19ZU7U+ilA2qTV4fTOO2hWbshCawNTfUTsCkkPDjZ9DtLAHNFJNnT1bKMoCefdRT1ukuPpGsjyNBuvAxFYCm2915ttb9GD/7QJwdi467fzyMWYKpudLtrKTkhJneoFRJvStGHpdTTGuk5rKvztHkReslClgUNyeKNn7DZ0DZhCCGcfnV/LHHf+hTWI7eHXHqN2N/HaWKJ3N2UA/bcclsvKeqxcDlvKqdIuAJcrGujdKQdaIFyav+LxOEpM5F6pQAjgoxjxtN2REJNvFQDHrfYmdPH4FX/xaGILg7JLHWZJd7lTzzTVgYZzonf78YYkbE8IXcp96mySwqxSvYpWPqHT4jRCMVQgPluw/jhu7e7O8S13tolOyg6j0h02X48/m3DFGKWNIyWcaNBgmgPgy6ixoKjSzHTEi8wR4LsWW1d2MbiaockaSOOLFqH8p5loesxaws5C4uM7KThV/364vAQz+k/d/u26348+JbWz0jhdVyE/NSsQfzcOxyEigDM+2aQkOPg1FEZ9qwVTQCa2hbDfaHv/M4kNHGeNR39SCXlv0tYUQ+vBE9tq9MLrVadPL41txIs/TQCZ2OONQzjq3+TEiwmvMBKxs5LVhS3eQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(5660300002)(4326008)(6506007)(6486002)(186003)(316002)(2906002)(7416002)(508600001)(26005)(2616005)(66476007)(66556008)(54906003)(8936002)(38350700002)(52116002)(86362001)(66574015)(83380400001)(36756003)(38100700002)(6666004)(1076003)(6512007)(66946007)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjV1TFpaejhjL1JSNm1Ienl2TDVtM0xWNWNrQ0dXZHBMTTkycURFVktHcWVs?=
 =?utf-8?B?TFRCUkNRbHRjT2dVQjg3QmV4UUNybVVTMDJ5aXZQRE1LbnNGWmlGMmZXdFdR?=
 =?utf-8?B?V3liVXMwQk4xemt4anlVUEZTZ3dQNWhoNytCdFB5U29WclEyTmRuanZpRktQ?=
 =?utf-8?B?YnVyMmdtRTArRVU0QXRWL1ovajZRU0Y3VnA1SnVveVVQUm9zSGIzUVJKZDhO?=
 =?utf-8?B?TjZZVzhzV2EzR2liZEMwUS9MSmErOUsrY3luT0dEbDYxWFcwaUw1YlMrcmJX?=
 =?utf-8?B?R29WNmFNWjJtUkJ1TDcraTZpOXdtOWxpejJTT2xHcEE1YThWRGtndWxUczJC?=
 =?utf-8?B?SW14L2J2cUxja1BKWkYvS2FUM2hxSkNTbnRab1BCcCtKZ2FpQWlWQlZVTDY1?=
 =?utf-8?B?SlZFV2EwRUF0V21ZQlV5emZrblNkTklMSWZEb3lhWWxNVXJtMG1YM0NoN2w4?=
 =?utf-8?B?YjdSdXNJb3dWeTNweHBjZU45Rm5zTDZDYTRsdjJCcU1JaDFzSzRRcnRPa0Uy?=
 =?utf-8?B?djliM3ZDV2gwS0Zuc3d5YjFRRENoZUFFOG5nZVd1RTdhTXdCMTViQnJNTWo5?=
 =?utf-8?B?bFlsbGVIamQzREhwVjh4NWNZM3MyZk84TVNvc09TWUdEMXJLU250bmRNVWsr?=
 =?utf-8?B?V1VzNWs1ZEZPWlppWGwvTjNVazhRRzBka0JQRjdUVXd2WjNUK3E5L3VFUXds?=
 =?utf-8?B?bHd3S2tYMGFCY0ZXUWV5aUNZMmNNbDBsWEduZzZKZUdzZTR0N010SzQvUG5D?=
 =?utf-8?B?S2I1S2pnTTA5UTZyK3VFMFBNM3RDaUxhQkVocUduRk16K0NCakxobG12TVdw?=
 =?utf-8?B?ZFNmSzhmZEluMVRzVTFpZHJsQWlwZ2k0TlRzQlZheUxmZi9HdTk3Sy9SUGlX?=
 =?utf-8?B?ZjYrcTVqNDlEVlJFcUI2QUlrT211SStoMzRjbEZGVENCcVpYUUppL1J3L09J?=
 =?utf-8?B?YTlnTi9EaHRwNTJCM2g4UlorN0RHNUtTbXZReUhRNGVrZVhyVGIxeGRnWjY3?=
 =?utf-8?B?SkkrZmUyelJlVnIvYlMzclM3R0tjTW94OWwwdE1RcFQ2cUdBTVlkcUlENzMy?=
 =?utf-8?B?ZkpJOXkxdzNmcFNEczBQNzcyWldmUXhQU2Z0MTRlSWxvNWZnZzRpMUhKYk1Q?=
 =?utf-8?B?eVgvOGxnWHh4VHJ5MU9mUlI4N2dnTm83RGxVMVRxa05XQ3dZUVMwaFV0SmZF?=
 =?utf-8?B?bTRHWjhEd2IyNjZsVENlbjJXaFZySDNHZjdSb1haaElkUkFmQTFoOXh1WFhT?=
 =?utf-8?B?bmlpQVdKR2ZiWmVRRllxUUR6Uml3N1l4dzUrdEJsdVZ2ZWs0MHlUbzYvRDA2?=
 =?utf-8?B?R1NMaXhLM0tjQ2pXajJ4cE5BbUpmWjlhb3JQYTFyMFVVZzU0Y1ZseUNZcGlo?=
 =?utf-8?B?ZmV6T3Q1NzM4UEpnOGhzMGVTcjEzc3pLMFNMQkttejZxWDc4L0EzQUN6ajlr?=
 =?utf-8?B?aUd0YStrd2xoaG1hR29JenFnNkpJQWhwQWZ2eVVub3lGQmpKTTZpRDlrN1Bs?=
 =?utf-8?B?K05pb1ZoSlV2ZXlDR09wRTh2VjJlMHZ6alpQVDFxNkpNa0ZzcUVwZHpyVi9w?=
 =?utf-8?B?YXUrUG1RR1l5Qkx1YjRpeXIrbEg1UGRKbFVlQTlkckxBUXpwUDBBd2xLME5N?=
 =?utf-8?B?alNpWkw0MWJ5ZlpLNUJHVlY4QXB1Q2pQZmZNd0NlTjZvN1UxTlZXYnUxSVVT?=
 =?utf-8?B?MXFQZXY3NFNJY29KbVJvME9zcytjSEk5cGtodFhUZGhJVVJiY1d0YThOTTJl?=
 =?utf-8?B?V2tUOUFkYlU0WTlQNmdudE82WnZyU1JCcEh3ZVJBcmR4ZEJwOFZwYXJpSnJm?=
 =?utf-8?B?aWxSZ2hYZkVhMEVIekVVRHNCOXFyOWt3cTNYdStpa1BTSVJYVjA1RlRmVjdT?=
 =?utf-8?B?Q28wLzR6Z3dHc1BtVE1vblQzaVVTMm82LzZ5M2RVZWNsS0taZGl6Y0JhVTNV?=
 =?utf-8?B?ZHJjdjVOdmZGcW5NcXNydDg0bjZXaWNTOStFK0FLRC9PL0NMdGkwYkM5ZkU3?=
 =?utf-8?B?SGQrTUoyZjVuMVJPZlU5eTBOVWZzeHlkUVA4aW1Ra1ZGTENpWGltYlZHRlVk?=
 =?utf-8?B?YXZoOXR1NE5WSUFuQVJPUy9zai91M3BSNkVlNUwxalQrT2IrTS96RnhFS2Z4?=
 =?utf-8?B?SUhmazFyZHBMUytmMGdxWVNmUW9IYXFJbUord2FiRDVvb0dWaFdCMHNtUW0w?=
 =?utf-8?Q?dextzwZdxtomss9DrfemaCU=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3e97a0f-e19d-499c-fe3d-08d9da2ed1cf
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2022 03:01:27.4930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OYZ3/FSB27af1F5Ati2MzTZXhlOjcQZaHaDwzdHLLi7yy3uHOqiG6IVeckuXfi9syCmMnEKscLCxuerZBISjZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB2978
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_190138_481503_28509444 
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

VGhlIEQtUEhZIHNwZWNpZmljYXRpb24gKHYxLjIpIGV4cGxpY2l0bHkgbWVudGlvbnMgdGhhdCB0
aGUgVC1DTEstUFJFCnBhcmFtZXRlcidzIHVuaXQgaXMgVW5pdCBJbnRlcnZhbChVSSkgYW5kIHRo
ZSBtaW5pbXVtIHZhbHVlIGlzIDguICBBbHNvLAprZXJuZWwgZG9jIG9mIHRoZSAnY2xrX3ByZScg
bWVtYmVyIG9mIHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9kcGh5Cm1lbnRpb25zIHRo
YXQgaXQgc2hvdWxkIGJlIGluIFVJLiAgSG93ZXZlciwgdGhlIGRwaHkgY29yZSBkcml2ZXIgd3Jv
bmdseQpzZXRzICdjbGtfcHJlJyB0byA4MDAwLCB3aGljaCBzZWVtcyB0byBoaW50IHRoYXQgaXQn
cyBpbiBwaWNvc2Vjb25kcy4KQW5kLCB0aGUga2VybmVsIGRvYyBvZiB0aGUgJ2Nsa19wcmUnIG1l
bWJlciB3cm9uZ2x5IHNheXMgdGhlIG1pbmltdW0gdmFsdWUKaXMgJzggVUknLCBpbnN0ZWFkIG9m
IDguCgpTbywgbGV0J3MgZml4IGJvdGggdGhlIGRwaHkgY29yZSBkcml2ZXIgYW5kIHRoZSBrZXJu
ZWwgZG9jIG9mIHRoZSAnY2xrX3ByZScKbWVtYmVyIHRvIGNvcnJlY3RseSByZWZsZWN0IHRoZSBU
LUNMSy1QUkUgcGFyYW1ldGVyJ3MgdW5pdCBhbmQgdGhlIG1pbmltdW0KdmFsdWUgYWNjb3JkaW5n
IHRvIHRoZSBELVBIWSBzcGVjaWZpY2F0aW9uLgoKSSdtIGFzc3VtaW5nIHRoYXQgYWxsIGltcGFj
dGVkIGN1c3RvbSBkcml2ZXJzIHNoYWxsIHByb2dyYW0gdmFsdWVzIGluClR4Qnl0ZUNsa0hTIGN5
Y2xlcyBpbnRvIGhhcmR3YXJlIGZvciB0aGUgVC1DTEstUFJFIHBhcmFtZXRlci4gIFRoZSBELVBI
WQpzcGVjaWZpY2F0aW9uIG1lbnRpb25zIHRoYXQgdGhlIGZyZXF1ZW5jeSBvZiBUeEJ5dGVDbGtI
UyBpcyBleGFjdGx5IDEvOAp0aGUgSGlnaC1TcGVlZChIUykgYml0IHJhdGUoZWFjaCBIUyBiaXQg
Y29uc3VtZXMgb25lIFVJKS4gIFNvLCByZWxldmFudApjdXN0b20gZHJpdmVyIGNvZGUgaXMgY2hh
bmdlZCB0byBwcm9ncmFtIHRob3NlIHZhbHVlcyBhcwpESVZfUk9VTkRfVVAoY2ZnLT5jbGtfcHJl
LCBNSVBJX0RQSFlfVUlfUEVSX1RYQllURUNMS0hTX1BFUklPRCksIHRoZW4uCgpOb3RlIHRoYXQg
SSd2ZSBvbmx5IHRlc3RlZCB0aGUgcGF0Y2ggd2l0aCBSTTY3MTkxIERTSSBwYW5lbCBvbiBpLk1Y
OG1xIEVWSy4KSGVscCBpcyBuZWVkZWQgdG8gdGVzdCB3aXRoIG90aGVyIGkuTVg4bXEsIE1lc29u
IGFuZCBSb2NrY2hpcCBwbGF0Zm9ybXMsCmFzIEkgZG9uJ3QgaGF2ZSB0aGUgaGFyZHdhcmVzLgoK
Rml4ZXM6IDJlZDg2OTk5MGUxNCAoInBoeTogQWRkIE1JUEkgRC1QSFkgY29uZmlndXJhdGlvbiBv
cHRpb25zIikKQ2M6IEFuZHJ6ZWogSGFqZGEgPGFuZHJ6ZWouaGFqZGFAaW50ZWwuY29tPgpDYzog
TmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgpDYzogUm9iZXJ0IEZvc3Mg
PHJvYmVydC5mb3NzQGxpbmFyby5vcmc+CkNjOiBMYXVyZW50IFBpbmNoYXJ0IDxMYXVyZW50LnBp
bmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+CkNjOiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28u
c2U+CkNjOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPgpDYzogRGF2
aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPgpDYzogS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4KQ2M6IFZp
bm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+CkNjOiBLZXZpbiBIaWxtYW4gPGtoaWxtYW5AYmF5
bGlicmUuY29tPgpDYzogSmVyb21lIEJydW5ldCA8amJydW5ldEBiYXlsaWJyZS5jb20+CkNjOiBN
YXJ0aW4gQmx1bWVuc3RpbmdsIDxtYXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1haWwuY29tPgpD
YzogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6IE1heGltZSBSaXBhcmQgPG1y
aXBhcmRAa2VybmVsLm9yZz4KQ2M6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+ClRl
c3RlZC1ieTogTGl1IFlpbmcgPHZpY3Rvci5saXVAbnhwLmNvbT4gIyBSTTY3MTkxIERTSSBwYW5l
bCBvbiBpLk1YOG1xIEVWSwpTaWduZWQtb2ZmLWJ5OiBMaXUgWWluZyA8dmljdG9yLmxpdUBueHAu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jICAgICAgICAgICAgICAg
ICB8IDcgKystLS0tLQogZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhnLW1pcGktZHBo
eS5jICAgIHwgMyArKy0KIGRyaXZlcnMvcGh5L3BoeS1jb3JlLW1pcGktZHBoeS5jICAgICAgICAg
ICAgICAgICB8IDQgKystLQogZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8t
ZHNpZHBoeS5jIHwgMyArKy0KIGluY2x1ZGUvbGludXgvcGh5L3BoeS1taXBpLWRwaHkuaCAgICAg
ICAgICAgICAgICB8IDQgKysrLQogNSBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAx
MCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1k
c2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jCmluZGV4IGE3Mzg5YTBmYWNm
Yi4uZjFmZGNkZjc2M2VlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1k
c2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYwpAQCAtMTk2LDEyICsx
OTYsOSBAQCBzdGF0aWMgdTMyIHBzMmJjKHN0cnVjdCBud2xfZHNpICpkc2ksIHVuc2lnbmVkIGxv
bmcgbG9uZyBwcykKIC8qCiAgKiB1aTJiYyAtIFVJIHRpbWUgcGVyaW9kcyB0byBieXRlIGNsb2Nr
IGN5Y2xlcwogICovCi1zdGF0aWMgdTMyIHVpMmJjKHN0cnVjdCBud2xfZHNpICpkc2ksIHVuc2ln
bmVkIGxvbmcgbG9uZyB1aSkKK3N0YXRpYyB1MzIgdWkyYmMoc3RydWN0IG53bF9kc2kgKmRzaSwg
dW5zaWduZWQgaW50IHVpKQogewotCXUzMiBicHAgPSBtaXBpX2RzaV9waXhlbF9mb3JtYXRfdG9f
YnBwKGRzaS0+Zm9ybWF0KTsKLQotCXJldHVybiBESVY2NF9VNjRfUk9VTkRfVVAodWkgKiBkc2kt
PmxhbmVzLAotCQkJCSAgZHNpLT5tb2RlLmNsb2NrICogMTAwMCAqIGJwcCk7CisJcmV0dXJuIERJ
Vl9ST1VORF9VUCh1aSwgTUlQSV9EUEhZX1VJX1BFUl9UWEJZVEVDTEtIU19QRVJJT0QpOwogfQog
CiAvKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhnLW1pcGkt
ZHBoeS5jIGIvZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhnLW1pcGktZHBoeS5jCmlu
ZGV4IGNkMjMzMmJmMGUzMS4uOGE4MThjZGI3NjA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9h
bWxvZ2ljL3BoeS1tZXNvbi1heGctbWlwaS1kcGh5LmMKKysrIGIvZHJpdmVycy9waHkvYW1sb2dp
Yy9waHktbWVzb24tYXhnLW1pcGktZHBoeS5jCkBAIC0yNTAsNyArMjUwLDggQEAgc3RhdGljIGlu
dCBwaHlfbWVzb25fYXhnX21pcGlfZHBoeV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCiAJCSAg
ICAgKERJVl9ST1VORF9VUChwcml2LT5jb25maWcuY2xrX3plcm8sIHRlbXApIDw8IDE2KSB8CiAJ
CSAgICAgKERJVl9ST1VORF9VUChwcml2LT5jb25maWcuY2xrX3ByZXBhcmUsIHRlbXApIDw8IDI0
KSk7CiAJcmVnbWFwX3dyaXRlKHByaXYtPnJlZ21hcCwgTUlQSV9EU0lfQ0xLX1RJTTEsCi0JCSAg
ICAgRElWX1JPVU5EX1VQKHByaXYtPmNvbmZpZy5jbGtfcHJlLCB0ZW1wKSk7CisJCSAgICAgRElW
X1JPVU5EX1VQKHByaXYtPmNvbmZpZy5jbGtfcHJlLAorCQkJCSAgTUlQSV9EUEhZX1VJX1BFUl9U
WEJZVEVDTEtIU19QRVJJT0QpKTsKIAogCXJlZ21hcF93cml0ZShwcml2LT5yZWdtYXAsIE1JUElf
RFNJX0hTX1RJTSwKIAkJICAgICBESVZfUk9VTkRfVVAocHJpdi0+Y29uZmlnLmhzX2V4aXQsIHRl
bXApIHwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLW1pcGktZHBoeS5jIGIvZHJp
dmVycy9waHkvcGh5LWNvcmUtbWlwaS1kcGh5LmMKaW5kZXggMjg4YzljNjdhYTc0Li5jY2I0MDQ1
Njg1Y2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLW1pcGktZHBoeS5jCisrKyBi
L2RyaXZlcnMvcGh5L3BoeS1jb3JlLW1pcGktZHBoeS5jCkBAIC0zNiw3ICszNiw3IEBAIGludCBw
aHlfbWlwaV9kcGh5X2dldF9kZWZhdWx0X2NvbmZpZyh1bnNpZ25lZCBsb25nIHBpeGVsX2Nsb2Nr
LAogCiAJY2ZnLT5jbGtfbWlzcyA9IDA7CiAJY2ZnLT5jbGtfcG9zdCA9IDYwMDAwICsgNTIgKiB1
aTsKLQljZmctPmNsa19wcmUgPSA4MDAwOworCWNmZy0+Y2xrX3ByZSA9IDg7CiAJY2ZnLT5jbGtf
cHJlcGFyZSA9IDM4MDAwOwogCWNmZy0+Y2xrX3NldHRsZSA9IDk1MDAwOwogCWNmZy0+Y2xrX3Rl
cm1fZW4gPSAwOwpAQCAtOTcsNyArOTcsNyBAQCBpbnQgcGh5X21pcGlfZHBoeV9jb25maWdfdmFs
aWRhdGUoc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkgKmNmZykKIAlpZiAoY2Zn
LT5jbGtfcG9zdCA8ICg2MDAwMCArIDUyICogdWkpKQogCQlyZXR1cm4gLUVJTlZBTDsKIAotCWlm
IChjZmctPmNsa19wcmUgPCA4MDAwKQorCWlmIChjZmctPmNsa19wcmUgPCA4KQogCQlyZXR1cm4g
LUVJTlZBTDsKIAogCWlmIChjZmctPmNsa19wcmVwYXJlIDwgMzgwMDAgfHwgY2ZnLT5jbGtfcHJl
cGFyZSA+IDk1MDAwKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tj
aGlwLWlubm8tZHNpZHBoeS5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlu
bm8tZHNpZHBoeS5jCmluZGV4IDM0N2RjNzlhMThjMS4uNjdiMGExN2JlN2UzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1kc2lkcGh5LmMKKysrIGIv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jCkBAIC0zNjQs
NyArMzY0LDggQEAgc3RhdGljIHZvaWQgaW5ub19kc2lkcGh5X21pcGlfbW9kZV9lbmFibGUoc3Ry
dWN0IGlubm9fZHNpZHBoeSAqaW5ubykKIAkgKiBUaGUgdmFsdWUgb2YgY291bnRlciBmb3IgSFMg
VGNsay1wcmUKIAkgKiBUY2xrLXByZSA9IFRwaW5fdHhieXRlY2xraHMgKiB2YWx1ZQogCSAqLwot
CWNsa19wcmUgPSBESVZfUk9VTkRfVVAoY2ZnLT5jbGtfcHJlLCB0X3R4Ynl0ZWNsa2hzKTsKKwlj
bGtfcHJlID0gRElWX1JPVU5EX1VQKGNmZy0+Y2xrX3ByZSwKKwkJCSAgICAgICBNSVBJX0RQSFlf
VUlfUEVSX1RYQllURUNMS0hTX1BFUklPRCk7CiAKIAkvKgogCSAqIFRoZSB2YWx1ZSBvZiBjb3Vu
dGVyIGZvciBIUyBUbHB4IFRpbWUKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcGh5L3BoeS1t
aXBpLWRwaHkuaCBiL2luY2x1ZGUvbGludXgvcGh5L3BoeS1taXBpLWRwaHkuaAppbmRleCBhODc3
ZmZlZTg0NWQuLmFiMWY3MzZmYmNkMyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9waHkvcGh5
LW1pcGktZHBoeS5oCisrKyBiL2luY2x1ZGUvbGludXgvcGh5L3BoeS1taXBpLWRwaHkuaApAQCAt
Niw2ICs2LDggQEAKICNpZm5kZWYgX19QSFlfTUlQSV9EUEhZX0hfCiAjZGVmaW5lIF9fUEhZX01J
UElfRFBIWV9IXwogCisjZGVmaW5lIE1JUElfRFBIWV9VSV9QRVJfVFhCWVRFQ0xLSFNfUEVSSU9E
CTgKKwogLyoqCiAgKiBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeSAtIE1JUEkg
RC1QSFkgY29uZmlndXJhdGlvbiBzZXQKICAqCkBAIC00Miw3ICs0NCw3IEBAIHN0cnVjdCBwaHlf
Y29uZmlndXJlX29wdHNfbWlwaV9kcGh5IHsKIAkgKiB0aGUgdHJhbnNtaXR0ZXIgcHJpb3IgdG8g
YW55IGFzc29jaWF0ZWQgRGF0YSBMYW5lIGJlZ2lubmluZwogCSAqIHRoZSB0cmFuc2l0aW9uIGZy
b20gTFAgdG8gSFMgbW9kZS4KIAkgKgotCSAqIE1pbmltdW0gdmFsdWU6IDggVUkKKwkgKiBNaW5p
bXVtIHZhbHVlOiA4CiAJICovCiAJdW5zaWduZWQgaW50CQljbGtfcHJlOwogCi0tIAoyLjI1LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
