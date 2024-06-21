Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 433ADC27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 07:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RSzljVVyapm4sbV9K1MA0w73SXGgU4GMgV2KbecJ2lg=; b=UyDvXDtX9bpJIn
	g0Gskh6mdPI+x7DBFj5MkF79OizcXknVZut87Y8zGwpLc/mdYnb5GLz5QXU2IBLXEXOiX/7Vgl5xt
	rE9rnjeNOlPws+z2dPxntrgs4rTOrY5s2wSudVWfIsZmoS11ARXOVbpaSK8xfY+69Vb0xxEMHKV30
	Dp5H87AzLrtsdnq/rMLoEgyDhMP4P4YDvJ8CuKLc9QYMtS+Rymp7Ie+/lKx60vDP1C5/S5nlKR6zT
	oHEWuoB+H4VRSyIDr3cVF5snxWKQy22dzELZFgKMUGtxKcrNO6u9DzRenkwzdABx/bmnaUxg1YJp7
	2eiENQEXXDcopVoJSeEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKYxp-00000008Bke-0H0R;
	Fri, 21 Jun 2024 07:45:41 +0000
Received: from mail-tyzapc01on20701.outbound.protection.outlook.com ([2a01:111:f403:2011::701] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKYxl-00000008BhK-0BM8;
	Fri, 21 Jun 2024 07:45:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=newnGffG8+c/PHC/YxTbJj4ZB/dSWVuAmjE7a2M4PG6DtrUZGEXmJTJ0BT14IuI1h1ijt0ietak3dWsekkErHxcZIYENrJGtQ4fqHq4gS9VPd7gnsFEI1qTQVOI+guwOIFSUInEMVNL7nS9TCwPNFaIDv41faunLl3fqOEt8e44ZSVm7q6byOiVNMR29lRB+HQrRe7sxXEGET8h3HDsfsDxVh06HGTm9uWk+EtPnlztFgxzSFn2UqD8NMt1wqyPkLUPdYAKI6Rtn6SZ/5BdcdWAF1KiwRDtbGTib9+axfiNuF/fEfa3Tv+N8vvL/OWg2IMxt7Diui2kqklJDOoNByw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GnfkCtfmZHFYitto3clFnOdWv6+nJs71fGghNGHAl/8=;
 b=LvmDxwQcTrSdRGZbsjP09tyqC4sBMFDxVOZ+KNgjpHwQDcI6umcVzQOMN4LYM7NknG38yyieuk0QFTUjTuBK6N6Ozpv+MsDIGOQjXeWcrxsNaeNVn9t1o6bePoQv9w1+JgRyV7vpjxRcWNEBhot4bdANTiIbEKoIA/3B9UYMM8LATr8z/bt88YWZseghJ4605sqv+rEGBFKC/3WM3XXz1tZtXGqVg9xyLVsO1RJzuM7pvoKWBIGfJaX+MMXfQJqE3gTO1usLmX7EfkR2v2UhhtGWu81oxTq3rL8Wgq5A8xpthw/PBL5SC3pI6TqesI21BQRYngjVQ6N6i+3gNAlqqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by PUZPR03MB7043.apcprd03.prod.outlook.com (2603:1096:301:119::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Fri, 21 Jun
 2024 07:45:20 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7677.029; Fri, 21 Jun 2024
 07:45:20 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "arend.vanspriel@broadcom.com"
	<arend.vanspriel@broadcom.com>
CC: "kvalo@kernel.org" <kvalo@kernel.org>, "duoming@zju.edu.cn"
	<duoming@zju.edu.cn>, "bhelgaas@google.com" <bhelgaas@google.com>,
	"minipli@grsecurity.net" <minipli@grsecurity.net>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>,
	"brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
	"megi@xff.cz" <megi@xff.cz>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, Nick Xie
	<nick@khadas.com>, "efectn@protonmail.com" <efectn@protonmail.com>,
	"jagan@edgeble.ai" <jagan@edgeble.ai>, "dsimic@manjaro.org"
	<dsimic@manjaro.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 2/3] net: wireless: brcmfmac: Add optional 32k clock
 enable support
Thread-Topic: [PATCH v1 2/3] net: wireless: brcmfmac: Add optional 32k clock
 enable support
Thread-Index: AQHawrWiuAGxh4zirkWecOsl4aArsrHQN+OAgAE7PgaAAEjuAIAAGYyI
Date: Fri, 21 Jun 2024 07:45:20 +0000
Message-ID: <TYZPR03MB7001C517C5BDC8967DECECD880C92@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240620020015.4021696-1-jacobe.zang@wesion.com>
 <20240620020015.4021696-3-jacobe.zang@wesion.com>
 <b8b89ef7-2e92-4e1a-9609-6b0fd6d64d7e@kernel.org>
 <TYZPR03MB700143E13635364FF5A316D080C92@TYZPR03MB7001.apcprd03.prod.outlook.com>
 <4533403d-11b1-4f73-b57d-3079be1e300f@kernel.org>
In-Reply-To: <4533403d-11b1-4f73-b57d-3079be1e300f@kernel.org>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|PUZPR03MB7043:EE_
x-ms-office365-filtering-correlation-id: 924f5771-a69b-41bf-75ce-08dc91c619c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230037|376011|7416011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?XkE1jPy8m+89F2M/w5ecjOVp8IdCzbvHjy+AvrF7A9BX4OiZnaRgF4hv7G?=
 =?iso-8859-1?Q?FGy6IY6vI9fGXe/ERkcG8CCbUvKRzEwJZ+BkRq+xqlmiFbNqOxdtwc1taN?=
 =?iso-8859-1?Q?GKZN3m8OSXw9+CdeVDnk4dmvkH7o+nZKCYaMpR/ARPaXLrHMtuTtnIZEcy?=
 =?iso-8859-1?Q?FCvDZgV8viTlBYBOSO4h6jH+Ez0M/rHs/nqnZ73tVJ1tKeyXSnYI9MZpwt?=
 =?iso-8859-1?Q?u3msxk1FAszOLvjNWOVFPhyvUaL6GO9gWNqSJTR7S8lTl2aYItZVHaH08y?=
 =?iso-8859-1?Q?d8UDvHn8n5S7j2vvNQ9SYL++hfsq2oYXuXVDQr/2OLe3bCRkJkMH48MKF/?=
 =?iso-8859-1?Q?P7Rhsf7P1woal02FWE73zpANaG6Au7JyVWVAolKoLfVJfSKS//tvJezcWI?=
 =?iso-8859-1?Q?yBhM4xPoO5B/wwAhZTaOhtioxmxzPQSnxqJ4SdXzi8DPnQE76yJbXFIvel?=
 =?iso-8859-1?Q?P9pjXNWt5+EbiEco8jeZ3QZnqL6H3F1R5Sj+fj1FLt0TtOT5Snn702Skfu?=
 =?iso-8859-1?Q?JcDE0Fv6GEkDGp/Vq5k0AqPnLf1udWHsWuhFflpUNIgE3zXGXOYK7BY1rT?=
 =?iso-8859-1?Q?6QMb0DDOMxjh/hXghBRvwqcUdi7Es0FaqNwWKylB9OXu3l7uXhrTuz1PcH?=
 =?iso-8859-1?Q?HHT08xTa9/RJ/YY5DTyuea4U35NK9/LB7E5GXXYfX3t5SSze3SW90DgFKM?=
 =?iso-8859-1?Q?8kuvlIaUoiFiNOh4EqU7cNGvkNm4bgl3grJXBO1uqrkEycsJrHbDLlWVr2?=
 =?iso-8859-1?Q?p0VolBzoWI4rVrqHJPrwER4gIbeK5HGYZInkdrCt4FhhmJXbbWO2LdDE8G?=
 =?iso-8859-1?Q?tgcxjRHSPRhvX+qQE4uqG6Pgrbx+aTrwGoRADrz6lZVnLmEYpcCng6LQNi?=
 =?iso-8859-1?Q?qzaxKJl+oIu47PYtQW9YeH8IiAphaAjv2XKepsN3JbNCiwBDOY24NFa7KN?=
 =?iso-8859-1?Q?YeIdPrbRxjp2OflBxVBAOk9ieEsZCylEFlZhmDjFA2/xLnmH1vIjvH9nGv?=
 =?iso-8859-1?Q?WguAiOZtvkwWo7d7+MiS+qvjqhHkLfstWOJcruDgKu5Pbm/g6iuCmlGxKI?=
 =?iso-8859-1?Q?mVB7B0Nsb1yMKPkohQKMk6x5nYTdCQdobrfw81wz56Agamy4F/ZKIoF31M?=
 =?iso-8859-1?Q?aXNc+G5kHYmm8VKn0aOGu9LGbWVmys8wHQFuygMwO5hFAfIm8xTD2fga4r?=
 =?iso-8859-1?Q?xvUY9D38cI6gzKK0p51dACZ3y0JCe6XOXo7919/ipF817ZM7Td3Al2EPVk?=
 =?iso-8859-1?Q?WM71Bjz7vw2gawN/8MLGcz2mnVLsmqTE4tARvyYsgx5wn++2o/I/yC4kRD?=
 =?iso-8859-1?Q?+9DHAEUokxA8M04Kjr/07RpDhax1u+Xki4QGJkcQPTSD6JGyfDIKD3p6DL?=
 =?iso-8859-1?Q?SezlRA5NwP2FJWQor9OjqtPOB/Rou9GU6yxZLKYntTg2MC7UanjAY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(376011)(7416011)(1800799021)(366013)(38070700015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?NTzVa5t85nqBshggJBVS+T9ztQmSbzTXqlnDclwkylDGfr7FkBy6/V9G2N?=
 =?iso-8859-1?Q?D0go9aTHtiw1WhbWeWfv+dkMg4gbdOe5GKxMPbIvIKUplm3BU999Uwc+/N?=
 =?iso-8859-1?Q?TRxq3XMSfQ9Wmhbo70ecaH9hle4d8mFDdaEb/lGKRb3rvTS531CjmLOY/j?=
 =?iso-8859-1?Q?e/gPNqQXOFCYTbhQGV8t3lAlkxsTS+AxvnUFAg7521pPKJMd/c0yEshI3B?=
 =?iso-8859-1?Q?WToDSDDMa9AWSXLCRc/fRjnwyqxi3gsmE7LGBV8ohGEYm5jkuDCiw4cIsC?=
 =?iso-8859-1?Q?NoxPsxok4+VGMrLrDKBpIpxsuS//s+SRXVdnFcfhW8Ty3m+FfbvGZuIhxJ?=
 =?iso-8859-1?Q?YW16BJxryJd+zvs6+Y5jjvqtzRrYNo0ZxklbO3pwFRInXtX77M/FtR6VwA?=
 =?iso-8859-1?Q?OgtwaH90a9Stb3gaNMLg8lLCoZMCu/H1ZwdD0VTjN2LtunOCttccL4axCN?=
 =?iso-8859-1?Q?JiQ1rxB6pyz1ZM1V8Ey6nnjpeo7BkXlYn9UuLl0KzHllHcj+hN0NWW+VGv?=
 =?iso-8859-1?Q?Eb441LqO/B6Ei0PzA+e+DI+gFQL1tiaqCwoaO5aYtXz2nRUQJEPzaGJAsM?=
 =?iso-8859-1?Q?c0oVlnG99Blkqws9M1iws/CTkfVNR3Sdz4kO/D7aQ5R6cvxVrs/ep/lcg0?=
 =?iso-8859-1?Q?sPoHZXAgzCEQPOMrAzH/LVHsi3I0vqEA/kAfhqb1uMph32NLNVysDGoaRj?=
 =?iso-8859-1?Q?Qx8K2RHmTTraQmMX1yDDrmbnE0c7m227xy+Zo1ociPh/xExN/0X2OYVvWZ?=
 =?iso-8859-1?Q?hLyASGmodsq7dTC62as/iMvg0W1Yl5ezAPQ203DHq//R8XRTpj19NwP1+f?=
 =?iso-8859-1?Q?HuR4fz5UN128+v0Zi3j/yFbDpA64h9fJc53D9DvUkfPiOwwM+45MPqbmNm?=
 =?iso-8859-1?Q?ab0eMca/TXX+WS8zQfxq1MR6peLXHs0Rf3IzPgbuCRXNDShnNlUaVxC7Qd?=
 =?iso-8859-1?Q?Ye6VDALkcIcvk4hIVsesBLN6GGlJq3iHgBTMu8qPauWoU3PuuZHWFbkFJR?=
 =?iso-8859-1?Q?W2i+sSH/nT1ZJHmI7XR1TfGVi6dxul1ASUia7wXqNKdpq2UFB9o7et8VPF?=
 =?iso-8859-1?Q?MJgQ7BY+On5dQQtg/0p9gCWOVkbCDBEpsD4qt4oj0n/9MEJaA9PVCxQQ+n?=
 =?iso-8859-1?Q?A2o/1QAh1Sv5B+HtCiLLII8BFmAmrUBQ9L6aEQcwy50p02KRXwRJrKiPWg?=
 =?iso-8859-1?Q?AaMsc9cz2TvSbTyH07Ku2vlOcNQB0omZpRdzuCn1k1Y1QZo3+ljey0ANbY?=
 =?iso-8859-1?Q?BfbYvg232AY6+laBlw/6iuoNyL0q6AFE53CqQfqz8sUkOu8pCtCJXRt1ba?=
 =?iso-8859-1?Q?R27yj1Uwz7afFOgp7FBbt0DIwsEa2/AKp2FK3Ht14U8FdAuMmAgfr/MxrG?=
 =?iso-8859-1?Q?ubRehVGOb8rpZmijZvT5bQf3I28IYxXGbd/yVl5VYhs2hQlwvTMYfUJLFn?=
 =?iso-8859-1?Q?yRcq3eC8TQU5VRW+MyAzf6jGIEnTo8xIsHWKhiqld2tPpJrfBJK67sdZ9l?=
 =?iso-8859-1?Q?QmqJDWt0l7sMXuubopadmZdSl4Hb81GokRPSBwx86uxKf1tfNL8jiRjRq/?=
 =?iso-8859-1?Q?JpH3/ZtoXZX5O4jljmgo2dbTqXExooG+TBV/BIFe4dpNs6is2jhFc0UVKz?=
 =?iso-8859-1?Q?25NNHOZJTPXgiB4//defiW5M+1XO4rrnn7?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 924f5771-a69b-41bf-75ce-08dc91c619c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2024 07:45:20.1366
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PTgFiS1L56xDznF87454f2963goIhe3RroL8ziDFr+DOpYOvb7Xri6Ssh2p4hIouC6yhZwCToIlFdbeKVN8BVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR03MB7043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_004537_108953_2708DB12 
X-CRM114-Status: UNSURE (   7.56  )
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

> That's DTS, not binding. I ask about Devicetree binding.

Ok... I have grep in all dts files and can't find wifi node which is under pcie node has clock. So should I add an example in the yaml file? 

Just like:

diff --git a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
index e564f20d8f415..2d9f8de447659 100644
--- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
@@ -153,3 +153,19 @@ examples:
         brcm,ccode-map = "JP-JP-78", "US-Q2-86";
       };
     };
+  - |
+    pcie@0,0 {
+                 reg = <0x400000 0 0 0 0>;
+                 #address-cells = <3>;
+                 #size-cells = <2>;
+                 ranges;
+                 device_type = "pci";
+                 bus-range = <0x40 0x4f>;
+
+                 wifi: wifi@0,0 {
+                         compatible = "pci14e4,449d";
+                         reg = <0x410000 0 0 0 0>;
+                         clocks = <&hym8563>;
+                         clock-names = "32k";
+                 };
+         };

---
Best Regards
Jacobe
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
