Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 736B6C47DDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 17:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4gDuA2cE3VkC1sihtuHHb9H/7NtflmiXhjSym0VpOOo=; b=EVY3zL/vuVFsIb+GqK7M1jV47/
	0vPrLZgf557Mpg9Kj7sUQ771P799CRUNX52sQwYPU6iRXkVwuvpzflNsHVIa6yZOclfpzo22uGWyJ
	VCffsHzqo1cs+rmihYhkmBPTJUDLZIi94fCBsj5dJoIHmig/oM9wIlShE/KA9lqeE1IdrMVTiHS8v
	OR11ulQWfov0P8pTBLr0Dt2O/bcrm4HbjxoYLK/Tu4IwMjCB8Sg5W8Aho4+UW39o1Mt3VWRNo7z1v
	SAUiNz7mZEYLPSXvZtjQWNLDdsfteSgLxQreu/udtw1mW57R5k4fK9ixQE5NpaGcHYJ6+J8EZr0sz
	woChiNeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQ15-00000004tW6-0x9X;
	Fri, 26 Jan 2024 17:29:23 +0000
Received: from mail-he1eur04on20601.outbound.protection.outlook.com ([2a01:111:f403:260f::601] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQ0W-00000004t4N-36gD;
	Fri, 26 Jan 2024 17:28:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c4PJfOL8syYwVaOOtf90ddGCyWx06lP0du2T2BtffzeQLJFqFv1ElEOkyd1BTlSVkrt9VTrNRKYOZDn0H4s/0g+VHHgQsn0+C2wxTASvEapm/2CuXG1OCAc2lOWyJHTU5Y42DWhL2JelPq+JY6jdQsywUSuTwV1x2S4pH0Vl2i9i9CgExe6JYhFG5eqAt3tHQlwa+UQYpA6K1f975oFa0ItxlW1NepevFl89xPOxm8VxB4E/X8q65AlwlPPjEPcR7loIpF9mUGQ6/9/fuzzYXE1LmOej518YQOdTVbhvojsSwQAuADeNkMTIw9efoNEwLdFi8mWZT+Y1RFH8t2kP8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dh9xD3qkAnT4zDfH45UENOftyY6lM3S9XnELbSMrfDE=;
 b=lxyP8SMaStnFyGAMjsn8ADQP6VQeo5gbYeYXYVcEX1umtLnqU7CRHOmlxvA4q9/ZPPGlN8xQTHGzgDtNSvp7Lfucf2o6PIWkOG6ZpY+qcR74fZJcmWnRBgge+hR33bgp52sY+qVoY4O+UBzlGSIbExYgb1/Q4FJEfHizj6g8uSbSrIecu5Dh7V7c5JSfT1tqRsFazzjeRHzABossXd8GEfhkASLsLzFbY8iuAsG9TZ45gO2xmexDopNeU/XvQaIpgDCmyKc35XHH5sAndlIiqcWuNuj/nm/5Mv4SjOfO0tWU/KCiu6AGPPHsIm+s4nVZH/OUwYXMh6bTxeBGsLgTzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dh9xD3qkAnT4zDfH45UENOftyY6lM3S9XnELbSMrfDE=;
 b=KZu1LqGh8+qInNNL81pOkUxVMksZ9nX09qMBDPyQXQ8p3/YYhuovCNEtNiCe7hXdleNtq3DGoYgK0BsFXG0JwxLOqoCdQ/XKBfDgpNeQZqRw66QvB0NAQtWtBkwBYaBCunoOgz4KI99hSaxAazzY37n2O6521Jk6S+1adANEp8Fra6P+/WHod+iaNh9+Gn83KybYwI3//jzuP3FsqUwHsDDafuEkQ0+rtxaLYhzf/ERYeCzSfe27AsPwFXOTPDPAGvJmJL6hFL/JmaswQLIS8bsN0DsqtWkdKvKaop2IFEzIDIz23gKtGF43kjNMrHCbaw45GYXGGc52MzIM0F+fhw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by DB9PR04MB9820.eurprd04.prod.outlook.com (2603:10a6:10:4c3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.26; Fri, 26 Jan
 2024 17:28:37 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::d4b1:cea8:7085:ec50]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::d4b1:cea8:7085:ec50%4]) with mapi id 15.20.7228.027; Fri, 26 Jan 2024
 17:28:37 +0000
From: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Date: Fri, 26 Jan 2024 18:27:46 +0100
Subject: [PATCH v5 5/6] arm64: dts: rockchip: rk3399-puma-haikou: add rs485
 support on uart2
Message-Id: <20240126-dev-rx-enable-v5-5-5d934eda05ca@theobroma-systems.com>
References: <20240126-dev-rx-enable-v5-0-5d934eda05ca@theobroma-systems.com>
In-Reply-To: <20240126-dev-rx-enable-v5-0-5d934eda05ca@theobroma-systems.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 quentin.schulz@theobroma-systems.com, 
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
X-Mailer: b4 0.12.3
X-ClientProxiedBy: VE1PR03CA0003.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::15) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|DB9PR04MB9820:EE_
X-MS-Office365-Filtering-Correlation-Id: 35e969dc-7779-449f-0453-08dc1e943a75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yhiJ4mEDdHH0FL1sWUhWScgkQtBBT3jR/OCLENTIPV8ofMEk7arVnUeVnulNkLjMPNsV5rB3f/mEV4Vu5I9+MdXa/mPscQJpd6eC/XsiSuQJoQx6tTcmqnud3QASjfq35SgVcFbrlZYSFQv/uVxiQ1RzrZSGgq8G4yu9AVDg2CSABcUi5+uNtyBsYsvluxE7dUGt76S/5W07xzhqeIDWMQwWZJw1stjqbBEhWtF1nzEzAIsN5Ut2svHExnLzFS6vWW90XkkDNLmwl8BDQfJaVIgT72OcmwTLIOi/tYd3OlbxEYzb1/5VkreONFg1khSEhL8Y+Y23lRso+oEXgHL1AEIRlbzjkFmNrxMp868ZjBQi+VovCBM5zdg2AK7oJLJQY/l+tgGLNRRWKmjKEJN9BdjrUOcYZW90pIT/TMAny1WXSTOsfbzQd5TrVr9ovzVVTILf07pHn2nzuFjW0CqVXFHcDliFVhPyIvRQeqv7YiRUpo7W01rM+MNIR6cn6XgK+w1CPA6NH95myzFnrC2GUEJVOOYZx+8YbSSUozfPF1p5an7vFNs1Gpw1H/x6PRHKHyfazMZC5pILMC9EfFSga+tCoLeHc5Xfkw6B+M1Y9BU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(136003)(376002)(366004)(396003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(36756003)(478600001)(8676002)(4326008)(7416002)(8936002)(66556008)(54906003)(5660300002)(6486002)(44832011)(66476007)(316002)(2906002)(110136005)(66946007)(86362001)(6666004)(38350700005)(52116002)(6512007)(38100700002)(83380400001)(6506007)(2616005)(41300700001)(26005)(107886003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2llYTV3WWpsMTNoc0VXcDcxWHE4U2hUQWlOQjB0aG9vWHdHcXl6eDlzZTAw?=
 =?utf-8?B?bHA1b2NmSm5uYjlxbDVxZGVOSDZJMkMyMjBIWFpnTGZrNmcraEgrdTZBU0lF?=
 =?utf-8?B?Q0hMTW9ucXNNQlN0cmtEaXQ0cFdIK0Zyb1V6MTRFODU4QVROU1U0NHdSbGxy?=
 =?utf-8?B?L3kvZWlCNFEzMUQ1M1RuRTQ4SnBiNWl4ZjhoTEFrNXhOVVBZeVBPcWF1NWU3?=
 =?utf-8?B?dk5PWlVCbWk3NTFhV1BJK2sxVERKb3VFTURDQkZnTTI3dXNGQ3FUSnYzK1ho?=
 =?utf-8?B?OEFJb3NGaTA2Z01UQlRUb1ZIdm8ybWgwQTBKSUJSZDVaMjIzQzNNY2ZLWmxS?=
 =?utf-8?B?a2twcGlTT08rOGsyZHZtSkJmRTVwdXJ0eS9IdzF4K1p2YjF0SUQwdGxwSW5T?=
 =?utf-8?B?ejBuaXc5c2VhYmZNMExoZ1NCNG5YYk16YmtVM1F2aE5tQ0VmYjZQeXk1elFw?=
 =?utf-8?B?cGt3aUU2aUcvNFhQeFVaaTJYdDIvS3VxZ2hiODFORldJZkpTdUlMZ1FnVkFx?=
 =?utf-8?B?aXBXOFpWL3BZM2JlYXUwV1ROQjAzMExzVGZCZERkbElSUituZ3ZLR3BCWWNE?=
 =?utf-8?B?ZU5aVlhySDJxdHZoZklod3daTkQ4TllqL0JmTzNjZ2txMm94bG41RlhocVNO?=
 =?utf-8?B?bFZ4c0NsSjd5eU1GQk9YNXFVbXJzZzJaSllneE1LNUtEaVcxZC9QNDhDTzJE?=
 =?utf-8?B?Z1lPbDV6eGdNd1YvNzNaRjFJM21YTGlqM1UvdjM1TzlPcEY2MWZUWldGSm5I?=
 =?utf-8?B?bXQvNnVJMk5wNTRycS9aa25XVDQwenNsVzhaTGo2UmFSU2ZTVEFVSWk1RTAy?=
 =?utf-8?B?YUJqUGIvRlBUZGgvTW5mVXRHNmNjQUl5ZnR3L3ZUQjhKMVdKV3dwWXp0Q3hk?=
 =?utf-8?B?a1RUYTM4WnNyVG5uWWtaU2N1cVArWHpnNlJLYWV3L0JYb1FrYlFxTjBqK1dv?=
 =?utf-8?B?VlVvWFpVYzBzNnR0elJlK3dQdFd5Z1pvbHJ1UWVOZXN3U0hwQkxWMmE2STR1?=
 =?utf-8?B?bW1nQmg4NEFZNlozTU9wRmdNWnczV1MzT25aZW9pemhmQUVzSmFzOTFwMzBz?=
 =?utf-8?B?dkZCWXB0QVZ3Ry9OOTg4MWtqT2RyLzZwek5jRngwR0c2NXlTdzF0T095SDRa?=
 =?utf-8?B?RExRSzQwUnpUYThVdElsLzNLWnJDZFZDakRSTmZzcU1hdk5xOHRJY2ZIY0FB?=
 =?utf-8?B?L2pPTm9pWm5aekZzQUxma2FkNjhYMURkWjBsOFlYVzVDYW05ZXMxODNIYnpD?=
 =?utf-8?B?d0l3dFFOcGgxR1ZTNjZNVVdiMmhJYnd3R1BTVUN1WDRhZXZqdDlHU0JIaCtN?=
 =?utf-8?B?YmNQQk5ydm9GVTI5TTBLS0RJVmI1dTVPZHJ2YWZ4bTR5cGlWOUgxOWVMV1du?=
 =?utf-8?B?S1hkTDlxOXBRenArUlIyKzFTRmdyVTF1VVJ4dGNmZjBjV0ZhTk4rYzlBSU5x?=
 =?utf-8?B?NE05MGdSTU5sNzhVdDB6TW1iZnozS2NYTkx5WVNvODV4WGpKcjA0aCtEZDg2?=
 =?utf-8?B?cXh1dVQrSnYrY0VNWWEveHNlMDdNUG90Y1d5aHE4MlJlSTJkSmJuUitMbW9B?=
 =?utf-8?B?Wk12eXRaT3lEcmwzSmdQb3gxS3l4c2QxcjJaUGd5cVpiMHgyZVp6TGt0cGJv?=
 =?utf-8?B?bVgybGlVWXFtT2M5YVdRV0JHYmNZenppNHR4dy90VWVyR1liR2hHelBzM3BE?=
 =?utf-8?B?SnlwL1ZNVmUyOVdGTHNXd0QwNm85c2FLOHJDeGlvTnluUVduUnFJeTd0MWFi?=
 =?utf-8?B?N2poVG1XcHBzem9WT0J3dnU1Q0dWT2x5L2tuK0V2L3lzNVdNSkMwQ215ZzVR?=
 =?utf-8?B?bTlaNE93cmxhSWovYWtYZ1F2YzlITjE3U1JnMkNTUkRqUkxjSGQ1SW1sNUdM?=
 =?utf-8?B?amo2SjVBZHlCaXhUSHJaK2pWRk9tRFFKMEtjQXBWeWJCeTVDa3VsMUthajZH?=
 =?utf-8?B?Mm03UEtueFAyeCtRWFVxZ0pWTytHWlRtMWcxRzJXeFZCQ0VJTE1zRDU4Q0J2?=
 =?utf-8?B?bXBKY1VxL2x2Sm01dEVmaWtKbWVSVGlFSGozcUJUbDVIc3BsWS94OFBhSTYz?=
 =?utf-8?B?WjVBQkxLcTBDekZnSUUvb2xDMGg5dmpab0gvOElOeGJyREowSnFnWWRLakVa?=
 =?utf-8?B?WGxvRmUxb0ErYU5HcGFiRW5DWkRKUjRVdjI0Wnp4ZTRVeFg4elVLT0NVTCtj?=
 =?utf-8?Q?wU0jgurXmqBhszYm56NHJ3M=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35e969dc-7779-449f-0453-08dc1e943a75
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2024 17:28:36.5372
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G/UjRLORkzuuOoS9afUVC8Pwrv4yTWeJhyppC/9XsqRYFs3hwy1pG+H3JiGWrYOVCI+yGxQbyWPxIR2kV1cRjZlzEpW9zM61p/dTWE5Iy8NSvVOGkPLkQnS0FTMQckPw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9820
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_092848_801785_6252948A 
X-CRM114-Status: GOOD (  12.10  )
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

A hardware switch can set the rs485 transceiver into half or full duplex
mode.

Switching to the half-duplex mode requires the user to enable em485 on
uart2 using ioctl, DE/RE are both connected to GPIO2_C3 which is the
RTS signal for uart0. Which means GPIO2_C3 is implemented as rs485
rx-enable gpio.

In full-duplex mode (em485 is disabled), DE is connected to GPIO2_C3 and
RE is grounded (enabled). This requires rx-enable gpio to be inactive to
enable DE as well.

Signed-off-by: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 18a98c4648ea..576024c745ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -273,11 +273,13 @@ &u2phy0_host {
 
 &uart0 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	pinctrl-0 = <&uart0_xfer>;
 	status = "okay";
 };
 
 &uart2 {
+	rs485-rx-enable-gpios = <&gpio2 RK_PC3 GPIO_ACTIVE_LOW>;
+	rs485-rx-enable-inactive-when-rs485-disabled;
 	status = "okay";
 };
 

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
