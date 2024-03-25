Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3718C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IrTDe+Xl2LEOG2SaOrlAxJN8uEurt9qI370m2YCNObA=; b=jkruMFi3eGBjIhwtcF7gttyvwJ
	mZDuRWfliQS7sEIgQUs3X+SGUJqnAZ7T0HXVOXxTi8HUE1kLhjGZSRgyuvSOGzPs9zSxvo7NWgqrL
	/0erkGq1SQcDCzmoBsA/GHvW2G0ac+0PsIOL99CwiRpq9HKrBQCRZMo1P/nJfoojFs8TmB7lR/SQz
	PrAxF2i9QhJZFv7eMMk9muwStMDIfMMzymqDa+YS02xSBzhheB/+xGxTpOFp9aOHhxs6Ui9y2XmJ/
	P9ml6b58lUg8B02Axa8iMrqqcD/cGLIEQgw75jlbH4eYqtmv8iZvbm7607gA/dtqaiOv/Fnje7ca3
	FZlELwdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolEP-00000000Cew-1Saj;
	Mon, 25 Mar 2024 14:23:21 +0000
Received: from mail-he1eur01on0705.outbound.protection.outlook.com ([2a01:111:f400:fe1e::705] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolEG-00000000CXz-3iWv;
	Mon, 25 Mar 2024 14:23:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gCYJo3iyCSgLkmhk3zCxzhR743d/OLp9IdGu3LxoNeGq5wWKqh9UpFpB2c44jTZnh/rXEzO6jwivIJvqFsWSx0HpTsRj/WT6VVXbwWjXZYrNhk1Zt88xEZDdXP8Y+NMCJ/F2vWTvPb4A/SP7Py3HHF/b/JOwXFu2Ruq3aixrVwQUwVbHTGsCrsAMgCKC36+OEYOpQ0vP9ZyNE92GiLuFjbknhfH+NulmgtjSQqvLmarLxhpOaesg7J/vaaABQ27XroYcbh5/jyJ5tmIKfuC+cWnPMA41XPQYBdoQiTyMtj64h8skZmjIJqYYAx0EH9GO3V9meic0hIqsUFaHXU8rhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2IHXLgF9vQ/LSmn30Nf9Mc/PwJmn6a302CJhBRIobgA=;
 b=kIM97mb+YqZOOId/QDLHjbkmbg84ir2ij4PzPhQxkx3hnXm0Er6KIoscORRA0ZK08ITdxoSpwzlWcsHoCmNKcSUywoR3COmOWJdh3+wtCCNnU+ij0XFSv20e4Nbhf1SoxL/EHdabyGtM4ob/E1WDJbChVDoFadwv8tns+YPKEB5lSpAzBcR21PW/004C5Tcwj64ldjOZzKFdlUyF0jniMAcKHIZ1Xw/B22rbR2fpAAqw6lyFrfEO7XpcLHAeTVUNcJHXya3+9xfBhB5zqxyubTSM46loS2UQXTnRnFYZZyKjZFEqDsb7Kks4HM8MB7IZeztNMZJyIzqQslVxSNUBAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2IHXLgF9vQ/LSmn30Nf9Mc/PwJmn6a302CJhBRIobgA=;
 b=Ul7FuaBjo6mBy/h7EeDBnxBL3qv/4Ir5eWQV+qH8KLyJRlhtn5rhsG+IOTS0Wd9LavZP1F3YgNsRGOFchSNZHPx5u3C+ua84HAA1t7UCebOJSCipJ8Eup9glsKke3/FOVMTNKPmdMNHUuCtj5G8UTHHm1Wplzbh3rKAwYH31bak=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV1PR08MB7731.eurprd08.prod.outlook.com (2603:10a6:150:52::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Mon, 25 Mar
 2024 14:22:57 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.026; Mon, 25 Mar 2024
 14:22:57 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 25 Mar 2024 15:22:32 +0100
Subject: [PATCH 2/4] dt-bindings: arm: rockchip: add wolfvision pf5
 mainboard
Message-Id: <20240325-feature-wolfvision-pf5-v1-2-5725445f792a@wolfvision.net>
References: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
In-Reply-To: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1711376575; l=1015;
 i=michael.riesch@wolfvision.net; s=20240305; h=from:subject:message-id;
 bh=eEjQZMdfwxtkx+d/EMg51FiqlDDQfInShJoHZKuhtbM=;
 b=RpkwZJ3l6Bf2C7g3dCzfcjlnJ/CwpZyUqn0hK2pNuFD66NcYHextzHYrZYzm3bt1zta9/aXp3
 gPKFRfqlRBZB9zSFcTx0ujqan6y11Ie1J2qlWhHGHVZmevG1lBMBffM
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=vXktx+l75RJD3KAojVKL7503UCD9nnGRcgujrB9SRp4=
X-ClientProxiedBy: VI1PR06CA0127.eurprd06.prod.outlook.com
 (2603:10a6:803:a0::20) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV1PR08MB7731:EE_
X-MS-Office365-Filtering-Correlation-Id: 750e231f-0739-46c6-6f36-08dc4cd71115
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8fe0Lwz1ObOKPolILl2YncnwHbFAZLO56O3cGFrJObEdKD/5TUAuoGSgBEF3AQakeptbRuoYp3o6QZiNeoPU+IEfvHjd4FlpxcB41EfS53J2LCuFZNUxnJhp7M3RL10yJQq4hwLbuYncFKYjA2+v8BCLPQsizTxMsMqXXr76Rq03h0SfGTRLXfgm3Qihpny1NxON/y1bCifOnRiw0MPqjFxNzbHkuaiTU1Er/z4oxyQvWhaoEYr+b+KMXvknWWhdf1Zg5Nhyg2BR8762vMXlFHAj+vIh02Knb6BjTuYzd1EA7n1pTYmKkWFqjsM1RgfCjcvQdu/MQJGXOwLQrW+x/nBknPeu+IcCXMUUBFaVT7gYpnPgJlVFYvytOpCLbZzumsi0ynWQPTW5EEtiYdznTyU7WzDMehBfJXKUjcN38QUb0iFIHp8idyUi/zEkloqCBFk26Ahjat63hfbIOK+Pf5OJ5/fkxty9N/CIXIDBPb8CbEn43sikg1H2r+IMsixUVobmywc58kThjUmoPJfi6n0FMwpUh88NnYYS4bQ603Vlg4vun+hSqBy4VxTVXLW4i1b4GO2AMo5ApjAYKv/VLZX6HbqH/3GZ56g5+mykddciY/U5xjOsLm7xx44HEZSDHPf1RmXrqNAvBVUQumkRcq/eKYWJk9CSv+Z5C0Kt5QWBdlAWUpGsWvarnb7lLhb2JGkggEpEkJn8v6W0M3CgVw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(1800799015)(376005)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1I1SkVKekpGaWwvVXFab0VyN0hxREtlWC9ab0NUUm8xOEFISFNCRDUzRU95?=
 =?utf-8?B?OFdvVmhIMks2em0rMmdoc3dCOU0wT3h2b2VDOTBUaUdmZENnVStGcXJ3Rkcy?=
 =?utf-8?B?NDBLd2Vyb1ZzUTVxcXVuTEFhcE1YekcyWEx2MnB6Y1pSeXNIWStLNTAxL1Jl?=
 =?utf-8?B?VXM0WjlNZE5TMkV1NVBFUWc3dzhNTnhidkxRekZPeXNnOFQyU0J1ZEZMT0J5?=
 =?utf-8?B?UVB4UmZhN3htTjlWYjYxb2pPRERTTmxRYkYxSVA2bjhjcVdwMnFuVTFTbU1D?=
 =?utf-8?B?MTdPQnNaQzNOa2FaRDJiYjB4OGFuT1QwdlNoSEZIdXpzeUdzeC9xVXFPZDlC?=
 =?utf-8?B?RWZMalVaUnNTVERrZEsvcVFOVWtzU3d5aDUrQU1PSi9CRnNvYkJVRC9tYzli?=
 =?utf-8?B?cnFvTElxcVJWcHJDb1BMd1VzTXZOY3k5Y292anU3Ti9MODJQbHQ5dU1saHYv?=
 =?utf-8?B?Q2ljdDZFUGVTYUkwUzQrQUtCSXBxb0ZsTWlSMGdNOXM5UE5kNXVkdFc3RGVU?=
 =?utf-8?B?VUdSNWhBdVgyUWRsNEMrZWtraXQ1cmZublRxMnkrakM5amEwZ3JwVEthTE9F?=
 =?utf-8?B?VTBxVnVQZ3NrVGlqTHlDdWZZVzRHTWxPT0tzN2tnYWc3ZTF0ZDFtZVY5bVZt?=
 =?utf-8?B?dnpxeWlSWk9YSEdKUzRmTnVxdDNpdVppZHI3aVBoL2YzcnphaytPZVVCbDdw?=
 =?utf-8?B?MDZPYWVaV3BieHVmaTNWb0RvcHRFMnoxMzBMRDRmd1lGbEFoVklNR3Q2TGdl?=
 =?utf-8?B?bWc4Zkk3MTYvOEg0QnFjUnNZZlY1ckJtNFB6Z0tlNThScExkTzF6NXl6T1V1?=
 =?utf-8?B?WUpHU1JteDZRQmpCZjhuTzhhS0ZGd0xRcll0REJzV0w4TVg5TVJzamhyQmcv?=
 =?utf-8?B?Y0RDeWUwczhOZ1dpNTFBYjEyVE9kMkRSZnNiMXVsUnFTU3dHR25sSTdBSjJ6?=
 =?utf-8?B?QzEyTmdieEF0UUdZMDhuVFFhdW56S0RNOFk0clBtWEtGSk5jVnNOdDNXTlhh?=
 =?utf-8?B?ZGM0dmdkeCtiNlJTeExWdndtYXlsd2YxUURnQ2RoK1RZeVREVjZhWG90TEVz?=
 =?utf-8?B?R3huMUpVZXZHeFdiMWpPM2loNTRnclVILys2NXRWc0NXaHN4RGwrUnZwNVBz?=
 =?utf-8?B?RFUxSEttY0FtTVp1eGRwWU82KzZpRno5VHN5d3pneHBYWjIvY2xpR3RJL01S?=
 =?utf-8?B?WGVxVU4yc2RnZEwvbFQ3VzJLSmE5MW5hUWFYUlRySVNCSzhTVjE5cXo3L2xG?=
 =?utf-8?B?elpkK2syL2dhVDQyYXlWSXpFN3RYT2R3c3RrZjNnUXZINW5aWjZUUm5kTy9n?=
 =?utf-8?B?RllmdGhBUnFQNjFBR1IyMGdNUUptZktZYWVwUHJSYUt0bGpPVXpINjlZS3ox?=
 =?utf-8?B?bzFwM2J1ZEpEcHdidVA3UU1KYmpjSk1rWkZNVFdyWVpuZ0VpOXVvNk1ZRjIy?=
 =?utf-8?B?Nm9vbU1rMSsrOEdtSTdtQjdiWFpEb0VaY0FBd0tldDU4aExCcHk3ZzJzQTk1?=
 =?utf-8?B?UEJZN0VydnFwdXYvNzIxbzIyb0ZuWDhpQ0JTNEpmYTVYaHpTNGFUb0lpRHVi?=
 =?utf-8?B?cnpGWi9qaTdsM1phQ0NPc0F1QklCUm9HNlQrREsrWktkNTdkZFFMdU4ydytN?=
 =?utf-8?B?aEQvaHV5NFhtazlTbVlzWGh2RUpoQzhCOEFwK3JMWHVQSGlBaUtNNkdub0lB?=
 =?utf-8?B?aTk4WHhYN3NTcDBLdU9TY00xaFBzK2t1c1hLL0pwamQ2cnZmVVNIVUlJSU9h?=
 =?utf-8?B?SFJQdjJPaUpxZ1ZIL3Q3QUlzZk93Y1JDSU5yWmJadXF1N09mTzh6Yit6eERp?=
 =?utf-8?B?RFVaQU5kaDM4eHA4NkJxMjVydVVWNVZXRU5VMHBhN1FCd1dBb0VRSm5OWWtJ?=
 =?utf-8?B?UEdoc3Z0V2c0Y3FPeld1STNJR1lWYzkraEdFOVV1dEFWbVA1ejE5bWhsVDNy?=
 =?utf-8?B?NmlCKzhlUUlwSm1UV2RFRllKRXZzZzVHdmh4cTFpbm5ySjN1MVZaRnh4ZGVp?=
 =?utf-8?B?WkczdEVQdGh3OGRXKzBOK2o5cEJPSGVWTnh2Tmc0SVF3NkZrZlBaalM1ZXZ1?=
 =?utf-8?B?bDJPRVh3MXNoYUYxWnN5NGlSbHIxOEtiUTZ2bERGQmhEcU80Q2d0b0VFb1RW?=
 =?utf-8?B?bktuVFdxL2ZUU2hyQzlEU0JRY0piNVM3dmE0V2xMQWgwbkdhWkVYd2c1eXhu?=
 =?utf-8?B?M0E9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 750e231f-0739-46c6-6f36-08dc4cd71115
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 14:22:56.8689
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: toAoHSwZQvpzub2M193j/kJ/0dmrnhypld7hou0pasX0LWDFj59Q9rc9I+lUnpoaI44pSflmO+nCpJ+fx0Ln2V2zMf0MVg8oWFvzgRWfilo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7731
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_072313_090966_5984A4C7 
X-CRM114-Status: UNSURE (   8.09  )
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

Add the WolfVision PF5 mainboard, which serves as base for recent
WolfVision products. It features the Rockchip RK3568 SoC and can
be extended with several different extension boards.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index fcf7316ecd74..99bd5e2c76a0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -927,6 +927,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: WolfVision PF5 mainboard
+        items:
+          - const: wolfvision,rk3568-pf5
+          - const: rockchip,rk3568
+
       - description: Xunlong Orange Pi 5 Plus
         items:
           - const: xunlong,orangepi-5-plus

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
