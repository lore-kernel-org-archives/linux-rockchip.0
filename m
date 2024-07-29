Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2B46C3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 07:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4Rk3PQ0Dolv/OsfyeWpLaBydSgZ2Y7I5fG8HgeAj1A=; b=hdOttow1zcRXbD
	3w79PQXeduBsn/lQan91aNQgCVHlHNdDDXpy2lRScUMQ7SDxt/AvXNfkgJfrFjAHQY53iXKNiMVZJ
	2dK2TFP+CkRcwqHvtUOkduNd4HRUNcM1en8Dz3ZC5VT+Ib3iAuM2hi5tPpeh6qZ+E6NvIKPOpJ3In
	oCxafL7iuZLJtZr9azi/4oBQ7a1l+AIiDV/OW0MUqzG1a+fJTb9bp2mTPx5LVxfKJVqsNt1f5Cwbs
	hWEuCPls6SJePHSB2GfePTT05hApUxmlEYjkg+0hSETUMDNkrdm7YLlhBisy9mvvwpKnZ6Z11cGjS
	oGISVP+ht8PHJrKvQ+WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKOx-0000000AEqW-0Yrq;
	Mon, 29 Jul 2024 07:02:35 +0000
Received: from mail-sgaapc01on2070f.outbound.protection.outlook.com ([2a01:111:f400:feab::70f] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKOA-0000000AEW4-1Sdl;
	Mon, 29 Jul 2024 07:01:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fLSEhzryZiVQfXu74BlZG7xGUafFLLv+ky/hILoUGExxeQqcNOrQQ1kYetXXFaPEUG9I9P3ofaY2BXEaZkyxOW5m3z4mGQuQrk3ZsTuoUT0LYWJynEkiASl7Z2vx3PgwfwxbBPS1O6NC1rWPVLMroXa0IWYKYqREp7CA57wbbx7kqMSPzae0LVIVs15PeEU6tUyclUX1YErtE9+LOvPSPCzJJtsdGDuIN6mlIptw1yGPrLyFAcw0ia78eGhQCGCfPqmi9fOLCCTr2rRKj2dFomnTXuc+Hi54qjaSFaUvaB8wyN4+9xdBgS2dp6I+5e8dt0Jjnkg57mkIwgm3zsItig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gJnaATap9OcPyNhPWle4Rtvrxff9malBiQFrlqhDmPo=;
 b=d/3t8w/tmnhkHkzZBz3JJ5DVJJjPy2lGmSSS3t+lXTEvOhlWUZi3ne7UpUXR/fTKRrBwYXo42Z/7sBwNJ0gy4aVAdqJNBXwqg/95d6NA4TDA/8SWr4OdlJpbIG9pGwV743SUCXLvMQAn3h/y364jyLxgQOjLu+Shwnms1/YHc1p/ZaER7+Wh3trEZu/KjTIJ6jjgVuR5Q8Wg2XbbwNPazftjGFN6UxDWHms93AtB/LTHiK9GoLcKHJU49r65dccOs+JWtOFGiqdRdUMZ6xmqPi3UsR8UphYUfaMGD/P1QNg8UW1seZahqGzeXJWnFELgQ6VFVQRgYeguLEH9e/Pkmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by KL1PR03MB7870.apcprd03.prod.outlook.com (2603:1096:820:fa::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.26; Mon, 29 Jul
 2024 07:01:35 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7784.020; Mon, 29 Jul 2024
 07:01:35 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de,
	kvalo@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	conor+dt@kernel.org,
	arend.vanspriel@broadcom.com
Cc: efectn@protonmail.com,
	dsimic@manjaro.org,
	jagan@edgeble.ai,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	arend@broadcom.com,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	megi@xff.cz,
	duoming@zju.edu.cn,
	bhelgaas@google.com,
	minipli@grsecurity.net,
	brcm80211@lists.linux.dev,
	brcm80211-dev-list.pdl@broadcom.com,
	nick@khadas.com,
	Jacobe Zang <jacobe.zang@wesion.com>
Subject: [PATCH v4 2/5] dt-bindings: net: wireless: brcm4329-fmac: add clock description for AP6275P Wi-Fi device
Date: Mon, 29 Jul 2024 15:00:59 +0800
Message-Id: <20240729070102.3770318-3-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240729070102.3770318-1-jacobe.zang@wesion.com>
References: <20240729070102.3770318-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: TYCP301CA0045.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:380::18) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|KL1PR03MB7870:EE_
X-MS-Office365-Filtering-Correlation-Id: 516d3bf4-cf17-41f8-2f0a-08dcaf9c48d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|52116014|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?iITWKtONOKDo/LirKxkjhGhszaiLi09Zk85YHN4SPbLCZrKNGaLXSJZuQql5?=
 =?us-ascii?Q?tv/dB+6FrVxYXbjlJJOwRDJbEmZ4U3e+dyV0Oc2urNxmJOvcMiqpTwEL5mkD?=
 =?us-ascii?Q?GXQltynGjEVyAVGsUnMzcO1sem4VYTsIy/GCPcmpUaM9bOE01kqNtpkkI73U?=
 =?us-ascii?Q?/R9SY0+60xb+1LSKt1zaJHro2qbq/mg1/9j3WYKvkGKFcmR1wyjAt0TDl1iO?=
 =?us-ascii?Q?xTlSbit2CN/twhzeRj47d+6A48KndcFtIY268Yw9vh4vJ58DNSM1Crjt3pS5?=
 =?us-ascii?Q?ALhCb/uwrpAmcFniZwmIh9nS6uy4OBNeYzxYj2a6aywi1Ic3c2VOWZ0LRQcj?=
 =?us-ascii?Q?oDdrSjTZrrJWXtIPR4c4B2WeAY002GxY/dR+/rQaMXMTqh0b2gPPynsY5JNW?=
 =?us-ascii?Q?PXlfdU4FjOuTVnPrhGHxH5OuJfmINF76L4yeTftKhkQ/GEenUUYdJFpWYbjm?=
 =?us-ascii?Q?EmsOE70kGZGNM8iREgR1Dxk5QCNRK89sQVi1G+kf+apub+8++caIh0ko/E4Z?=
 =?us-ascii?Q?vWvAh7szQDErYatpGRqOH4sr634B4LKalJzL4jHYIutN+U3YLG/v9PceK/s9?=
 =?us-ascii?Q?sVoBBWtsmh5vT7fXolTygq3TuQtsFXVf3vVqDmAdiZ5783kZewWfQpTC+x6d?=
 =?us-ascii?Q?Auu1Me8ZEHEDLktHl0LwSKgZ1KyiAh4g6aXBNL/Kwvh9RGaOYN6Yk9J9Fb36?=
 =?us-ascii?Q?eam2SFVnG12v+fPmMIM7b8sAzwz4LLoVnZbGApWqkkolhy+t29SGGt3l4n4A?=
 =?us-ascii?Q?iNqyGK60uS3V5a6lU4lwEBqctnesMko5uQUQVc20coXPtug2tgX4lw8WAaUp?=
 =?us-ascii?Q?Ph5oDeZ5rzOHE865ulXEj4zd10+vL4ERaofA7qy0FbnXByDXcE5skz1y+yzW?=
 =?us-ascii?Q?ZLK7PSkMC/peNFEI6UkYwDZe4YxBERoG986wZ4fpjg0RijCgvny0skzZ82ex?=
 =?us-ascii?Q?zZHcGD4rsfgmwTwS6mDASN2g08VGc5kAM2bKyYd7huE2U7BcqJl4u603fLrF?=
 =?us-ascii?Q?Xey9uIplAiaJnLUc/ycSoHUPAK0hymsh7+xxFI1KF61/m5LUHFotL6zOlz+q?=
 =?us-ascii?Q?dRDj669h3q0PH8OtzPN0pp9YAA+PcOaMVLmixu1qE5YbyHt5rTY955afyY3z?=
 =?us-ascii?Q?VUs17hxSUVmT12sbhGkqzP8c5V44Ndl0VfusCqrcqbLdGdHRVwwJO1xkRneM?=
 =?us-ascii?Q?LNZ1wIZwgKYlmwEWZDHC5QVBEFdnKmKEB4JwcrtvoHUsOYP21X2seum5mYgf?=
 =?us-ascii?Q?Ai6QXGWX15ipWAmmecuUdtJNI+H2vCrJrgvY6tH9WydrbulotcotlvbWjkNu?=
 =?us-ascii?Q?C4XkLeBrfv3blm2IWb4egtyOLSOkfqv62SYApjVv0uxC9NHVoOM7R4aLM8HP?=
 =?us-ascii?Q?uwivncrHNzmCgImciw7fUJMd5egKuOBze9yvIksGio44HxvjDDkEvae7lk2j?=
 =?us-ascii?Q?sEHPRPoZ6as=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(52116014)(366016)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qrVWMvZFHdx1rn36bwnyB4O1ejcFIRIGOWrOsk/uebg/5L560yFZU072ocav?=
 =?us-ascii?Q?cQQSE5bwy8ZdwONRaaqY6pIHOwNFZ72GXxFjxjuWF1kmX4RVTeZzQFNI+4ya?=
 =?us-ascii?Q?WXP9DMrXiIluXOZlGN2rpt64smLstpkCYC7iGqs2q2HgIKXOH37j/1l0GSns?=
 =?us-ascii?Q?R5PkqiUgm4ip2v8pDfcgbkQYjbcnW2pLe8gdpMMT6x0pjWQGs86HzNJECUEr?=
 =?us-ascii?Q?PMriNtzSOicRtUQYHr80obXH/SyiNxnyHLNfv1RuBcWN6kxunT47gg0pQiTB?=
 =?us-ascii?Q?NVmraUmbPV5SU9goNqbuaJ13fs3z9X6St41RUEYsBZ34M+ZafBV8SU4Ut1kU?=
 =?us-ascii?Q?weFf/H9s7OMD4CZjOuwPutHt6Qx98Cgybio0KMYjllusVI7TFkrBEx/PnM2C?=
 =?us-ascii?Q?/K8YI4azntVZX7OGPh1nhOMhX1LaOcANo0c/WG+czQFDuXUXzPFN1GeFeyAf?=
 =?us-ascii?Q?n447LokXrf6nbA9opdlzLc/CmcLxMPtUxpH4IZGuAocVT+rPvQ9udac2cRe4?=
 =?us-ascii?Q?ayyaY9mctGDw+5YGTk3h/FBL8CttKqKNK/1Pfsl2tAFvK7NrlYFyhsDPbMTq?=
 =?us-ascii?Q?w1bcIdIdEK0p90XuMNdskxo25EH4qArJUisq1uuRni0aqJiwN5d2AzyaCgj8?=
 =?us-ascii?Q?QVbyrECj55eiYlGhkU5LGC7TnvMiuvWBNLI9877jsxd/VB0Nq6CeDC+kTMGc?=
 =?us-ascii?Q?mErDwa273kCmIcGVz/a9xsDqCTDgN++akLEnzVti961em5tv9FsBz0GcYLms?=
 =?us-ascii?Q?BaLZPeYa3LSbF2e3eb10jY7aI2+kDWq3N2C5AI6Q5iPm5+N/E36PS/jtG0Aw?=
 =?us-ascii?Q?oEXATHjVU0CTtjDzbjm2bxh4eBNwViSYo+qg13cS/R2HjlWgv/qbgO6TdZ2M?=
 =?us-ascii?Q?98l27kmbr4xlKGeu+u3SpyA71CC70fCGrQyfj2lCc0ljzmy9Mba6QS03Vx7J?=
 =?us-ascii?Q?5AR2KhVtngim3OtwuvJUf2naLrrAH0I6ZXeXiUxPU8Plxi/cfMZDYLNsvmfT?=
 =?us-ascii?Q?Z0t8xx0lH3HnrcH9GeY533UEg5yGC17sMDzdpESU4gOvQHE910z05egYux4a?=
 =?us-ascii?Q?c1VEau/lc3wgCeqfY6NIZ2gX/DfnuYlwUuyIahPMv9EbZeaA1cHxhXeqere7?=
 =?us-ascii?Q?kG94mkmEIvbyDdZG+emQNJCM1o3kZACjCPdWMobRx+fdPF1ynBF/NTz/Bldd?=
 =?us-ascii?Q?kfEzk2VdRoio49Kp73ssYW29L0DyoaCATgjVPqQTY0oPVIEYNSM3/a/mHdqy?=
 =?us-ascii?Q?1OMhWV2PIVoxvjq+AZRcd6r+Aef7n5MA881kRMGK3pGg4ukG7+yoLXgLny57?=
 =?us-ascii?Q?ywOn9CmA79zIevePHtb/tW7toE3oNu32OSqXmzOleni8jyFiSwtYoFMqYs4v?=
 =?us-ascii?Q?oA/9QJ7iBhQADw6zFZ4Z/yICSWGbNPXxNfMTaCdHqI/kUNYtLh9ldQh/Qi1g?=
 =?us-ascii?Q?xagMPqCWqcOmFC6wzdJZL5Q3Ja+Mhd5cLEL6jotql1llJCHXY7QM48NE/Eaw?=
 =?us-ascii?Q?Nktbz5u7TZFD+OUFjGDjflMiydw8wlJh1Ph/guPrC9jS1GbFXtBSlHPBL2g7?=
 =?us-ascii?Q?Lkxi8J8SqaJdnAjjHFxkUkxxr53ToZfpKqZGQWyA?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 516d3bf4-cf17-41f8-2f0a-08dcaf9c48d9
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 07:01:35.3314
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PiQst60MFmmx/1Uah4bzx4dxqm/9TeK45S4VAdqNo6aAuUj6iMAohq+pXCUeALihtCubsIJYVtj5ZE06S+CsZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7870
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_000146_471150_AA037A16 
X-CRM114-Status: UNSURE (   7.52  )
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

Add clocks and clock-names for brcm4329-fmac.

Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
---
 .../bindings/net/wireless/brcm,bcm4329-fmac.yaml          | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
index 2c2093c77ec9a..a3607d55ef367 100644
--- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
@@ -122,6 +122,14 @@ properties:
       NVRAM. This would normally be filled in by the bootloader from platform
       configuration data.
 
+  clocks:
+    items:
+      - description: External Low Power Clock input (32.768KHz)
+
+  clock-names:
+    items:
+      - const: lpo
+
 required:
   - compatible
   - reg
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
