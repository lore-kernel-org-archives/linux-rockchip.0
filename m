Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65583C3A59D
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Oct 2022 15:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTdzQa5lozGvWVm3TikNDBY8oHXgcFefuEt4bRA1TGM=; b=xAd9mKWcj6DMOf
	2v1l/62sO9Oknkvy9ocClHvudrGVgJ4NC9q9wE/6+JbxAh2/j5RtL+g67xjKVezhzT+DkOflpDodB
	cF7cCWZfCptdLYFdOanTCs4jvcAnMVRDK2itXXDRQwFDHZoO3Y9QgTfNvJWC2TpPynpaUvaciFuRP
	30E35CUFelHv94XySE6FkpYE/WTMdUn5R4WE8F7FafXV8HJspxraIbsRUjbGtX9ph61WHSXyArfUG
	mtaw1lvreNdw3Fa0yAuNS7dK1IIgcJhOEesWVJfjhQHhYAEStj8n0pINVygSpbani+aP/vjnK0RWd
	YjyXY+ROMpHfoWkEiimQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omcrR-00FZGa-HY; Sun, 23 Oct 2022 15:26:02 +0000
Received: from mail-tycjpn01olkn2056.outbound.protection.outlook.com ([40.92.99.56] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omcqu-00FZ2o-6F; Sun, 23 Oct 2022 15:25:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V/hu3rULIeckHwMJQEW0Ytkk6YF6aFyU2dcY2B64len1z2y04JeT5dhbEVo9VNrhBuPjw+TYrUr8EbsN72iMqKAD9C+v9L78o1s+zwHgb8fDgxseGXTLK90YPW76JhIvXlRskGpXkCSTLgqyVo5a1FmO6G2/lkI7yE4n84U4xm7HQyGnDgP2pAh6lbSVlGOKy66wlp8vPFlZyB5S4rd05Zju+q+WXAnIRdFF25OrDcr52TIl988qvFOtlxBSzWcEjBOcWbEjKhSOTqLnCjEOJ1aQ6MajO6rzEUvYww32EWGJkjudGZOuzD/kJ+pZJ8/7iC5pr9/PO44q7gx/x5rumA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EYONljbYO1osIJNtMa3kUqciQwg/i6sFQnwzPYgQQgw=;
 b=FAvy82mYX3WqfZH17reMvaIzMQuz9BLfikrCWE2aIsGTxsNr98XzkqoLlqUpdwRdsxApc1As6bNdsuB+ZAcgKZwG4NKvvGPodklbrbMSeGLpTPrKVh0Sps/RRuHHqrXkeCdcbi68m3Hzi5HsHaRWKB4UyTAgYiO9UOTJ5TVzgGUAsND+LGE2V8seOnny21PQxT9hz5KZw7QeZ0mcbszUYYRR7eKKk2+OzsUfNX6Q+C5WfO86apDLqp7L4akmldLDil7UyIaAxJ1IPiI9RroqANI6RiL2xZDd4yz4euUBARyvvPqzrOUrzHkh18FQGMQ2V/VDXf8PCHUkUgN8Wj3hpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYONljbYO1osIJNtMa3kUqciQwg/i6sFQnwzPYgQQgw=;
 b=thSgr/rvJPUeKRN/D+wTY9hzzCYxY2DTF06NGW0AJdIViToPKuts2EclPiKN1EJzuU5BKjKGDtlEtxBeOW8V0I9hSvDW6zPooecFnyqnmWB/gT0Z/r0s8Z6Haa8Ll81VNu73j4jW6NyP16+okBnlF5WWtQSzJkWkQb8UaisAhJUAjeVvSytPSZBINMd2KyQ8StQ9RhW1h5iYMuHnVSG07Zyx6PyY4e3aX1noxmA8lK5w+UqREOV+u2uAeOfG54CHdE6xRwUfsFUQFvtR3d4x3XxuOBCPFsEXvkoTEa58aSrl6kg0+mjSnNj9UlGqB1gkPDBwnD8XDBD1za+K2ZC1vg==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OS3P286MB3403.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:208::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.23; Sun, 23 Oct
 2022 15:25:21 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f%6]) with mapi id 15.20.5746.021; Sun, 23 Oct 2022
 15:25:21 +0000
From: Shengyu Qu <wiagn233@outlook.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	michael.riesch@wolfvision.net,
	s.hauer@pengutronix.de,
	pgwipeout@gmail.com,
	frattaroli.nicolas@gmail.com,
	frank-w@public-files.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: Add I2S2 node for RADXA Rock 3A
Date: Sun, 23 Oct 2022 23:24:39 +0800
Message-ID:  <TY3P286MB261149F4EF283626B04CF5E5982F9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221023152440.2546-1-wiagn233@outlook.com>
References: <20221023152440.2546-1-wiagn233@outlook.com>
X-TMN: [yWmVc0hkMrD9MeghDME5QRD2uLGZEbQG]
X-ClientProxiedBy: PS2PR03CA0010.apcprd03.prod.outlook.com
 (2603:1096:300:5b::22) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <20221023152440.2546-4-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OS3P286MB3403:EE_
X-MS-Office365-Filtering-Correlation-Id: 6db99673-abce-4dc8-fbee-08dab50acc6f
X-MS-Exchange-SLBlob-MailProps: 	HeyTOiyEx6bXUCkHGqUvW+yTD5AlCjqAT/8lSU7LuOWqF9jQkDl7JQtkNWwUSl4+NtuM1KXmvPGxE2eowihIAcFcGGQibMPHkgYy9ezJcm6K3LNtZXD0fCXOpdaVEEvsAfK/SkNcubyAn73h/LESOijQWZYdm7uRv8rNViDcsoDeFA+ox0+HIL+aTuGOcZlRZ12Gi/TP0J42GqV/0kf1b2Qcga9Vi6in21kxnc0yyZcGElgDhhMFlxgXmeJHIMuC7j8MPBFniLCDUnU+baVIvX44Kqax/vbsjyYatSmFZzSmJyVUrJ6SJ2R1cWsLEZZhuEweBu2crHgjYsRUIhjkc+r+C6UXvo6NIj8VqQaWzUhCjrwp2pXyOY/GRURzFOjsgu1xHZcxx1t2/7oQ/n/hVMfwNhuvUypDpcXAS6lAPRm0fmlsyye9a/HCspzQDq8EwGP4ruQzd8CzUC9TaeM+8o2vonZI8PjWfpIFIiTmxcQbMahaPrcApNoG+4jwwbu5iKzawxwS8dxWnhl58ANPxP6Kd/n9V9aBtSrqCUM7ps9eCqpAAJ2Ga8yR3fclE+txfODeyood2C4mjmfWJkCdFdCO7CDiHCmqSr9DfQtKihzsL55LtPBe0GNEXWYG89arcaC521NRAFYp3iGMXu5i22I/bviGUkm0l5TrpYsOxpxYSzTeApgyxE8Q9i3G23mhIP+6jpujKDnkm+JY8cT6KVSZUGLz9JQ2oHHgGslegxTBoYtqmnzYvc682qZmvBWR3MxOUpRKnctG1TxQU9NO7Q==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	vyYv5/+F2XMSwfN0CBo4l3ANhgm8oAOF3XfbndtAveGsBIMYoCNvutBlqnfaweV8hRQHpvc783Kf3GWASZ6g3maGE7J3oEA5ZgdS4OyZhpYub+pNkgOubT2pfMuywuYHz9nq3u+KJEGszAWDu2FMb7Z3VOG6yL+Jgjk0FYKK7xh1AqdEoNYLIMqDh+SqakRhHDFv2RXsJdDKN+TyZKQC7luhJQWrncvvTVhiYm97Mjs1SDHV3RbcR+KXPm2MkR8wT/akP11giv2Ne01cR8lQQAHGtIReVz8HNhyp+aQ9Im/EYDxW1xT8mK6+SArumWDlPLgTQsciCWEYOhXYcuqN8A+Nc8kzkaYyc2qIKFkmvnoTvhZhItkdGq7W9M8G391fzoHp4jrqLMa98+MB6DEvVodmtn/fn7/KbUjgx2oePByNTtxVO/7fc1STCi/1/Y5zXmXt+1PZSKlqo6Nb/yndv0zWj8x0+NwIYAB4Iqh1Z0LrNg2uPKLx6z7n1OxdaugHCBFr7RvtpD4cLAkZnpcPMk1zVAqgxRCQZRWyDXaqRE6gw+In4IVOtyX7w2CxXFv+lpVZJ/Sqgp3h3ZOmRX9QG+c3SLSUo/txmFGqGiHR9Kh7tF5WJ4BKQumlIFW6wvg51Ye2oyoysRIlmPWwT6IbsE3dLcWb70S7Jaa4lJq3zpRa9JZjOJMvlTI6hlBm7yx3
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?XgNTrsFk0v7K/bpAFXCeQtq5trqLqDhIFJ7oi7LCBCfRpzO3Kni4e0SluKPg?=
 =?us-ascii?Q?yq01d5BTNYn/TCbqmIZN06dePJeNs3TmzotOSISifv69BcwmKJQuhQfLTsmU?=
 =?us-ascii?Q?X+8lTRk2wK+ieNosINEwzKEnbZnvsmqxmvn3TPY2sCWuUwoBNyEEAWVRgo2H?=
 =?us-ascii?Q?/7ycQz0epqIDRJ792dUTVfax25n6uC7PbtOwFJcskBoE2ndFV25R96y2aCR2?=
 =?us-ascii?Q?69QDCdhCSjwveiNxmD3rq3nVWktYwKxCFFL50j4PZaF/RK6aUwMqobozleiE?=
 =?us-ascii?Q?Z7gelw2JN40e5tiK6w5WD5dVAzKZMpWj7EBtZ+3IhQL5GQYBjcjltxEWHRRf?=
 =?us-ascii?Q?1RWpiaKwtB4peoThkXDr5oG63Sm2YEPftjfWhC8TGnf1bDtlHDbmnXeK4oHL?=
 =?us-ascii?Q?Dy1cRdcd2kb/IG7OaZvmOPLgGsXdTEBDEGgYQRJeQAUzDYENXfwZUT9ScHej?=
 =?us-ascii?Q?8RNqPPbpL1/hQtOcDHVzXrNcPxlJl1xPgCp42earvZHoUQ/RmJ3YHkzV0Lfl?=
 =?us-ascii?Q?iD16viY0S7NJ1IeCQutnTNgbRnzC441H9FrXnkZe6bOxRrVVn5p6kbcsASp0?=
 =?us-ascii?Q?4gTOEh8CyIa81r8fMUIViAB6xVwxC0GQvc+bylsg8/Pp33N8JT9LKvXLdHli?=
 =?us-ascii?Q?qp9i9ByZ96L74jSvUOP6N3j7s2365sDRBU93WRwDW8A4z6Y28oeZTvLoWDAa?=
 =?us-ascii?Q?lcBRF2wcDOkyrfDbPeC9jmYeuMdkYtNaPxhzSmh+10ExKn6/g/WWZIJgE8Il?=
 =?us-ascii?Q?l3RUze2f2BnVxq3nfZFxlBRiJdvghDGKNQPCOLwhLM2gJa1q/M+GNklVEXj+?=
 =?us-ascii?Q?pH9ucGOm4CjvVKcaFnaTrqej0W31oKFkiRgin6SJBVbPxeNxRY0MB8ZVa/6b?=
 =?us-ascii?Q?F5LnkzkH+x31/zUc/iecTHqlql8JU+zmnKiD6MUqexgejRrjKfmOB5B7Md7N?=
 =?us-ascii?Q?koD9KkLnxdBkz0FSD9rIGDXcDmR6rq2bIRbYLPKGcQSukJtwWKfda0tsocLA?=
 =?us-ascii?Q?tPBNG8AWdBeh4JxJ32JeKaf3Q5kUR2Ia1XPNwcfaCfyfFuANj/CxmkTWNzwh?=
 =?us-ascii?Q?jAKl/vtmx1+KHC0mKnXVZdinogROuaT+1EqSOBa56cOJv13qd9bTtMOrKPc1?=
 =?us-ascii?Q?/Mi2l/zsGNTrCWdVuSyqT2G5cKlx0r6WyBgLp7m0AX9w+zbaY/Ev5eH1X1LI?=
 =?us-ascii?Q?OSEzwTHn4Grn4K2iA3ctwKM3KIHQOTQrX9rYGaz0KEhUuuoUEmXi2zF15k09?=
 =?us-ascii?Q?dZK0DCh4I2Bw8fHu0fjWP5nriHzGQhGm/KZYTS1y/g=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6db99673-abce-4dc8-fbee-08dab50acc6f
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2022 15:25:21.3206
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3P286MB3403
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_082528_264460_515779F4 
X-CRM114-Status: UNSURE (   9.15  )
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

This patch adds I2S2 node for Radxa Rock 3A's M.2 E key slot for
Bluetooth PCM input. I2S2 is not used now, but could be configured
for Bluetooth HFP over PCM in future patches.

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index fb87a168fe96..9577a34bb367 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -526,6 +526,11 @@ &i2s1_8ch {
 	status = "okay";
 };
 
+&i2s2_2ch {
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
