Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED296ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Oct 2022 15:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDsk61V7ZFpza2I8lXk3VeYgGGC4GrBxWlUcxz3oVVk=; b=k4/urZnyB203Ns
	7ZNjk5yrwcU8s/NikQA1/MoJhnHYhZ1zq0Ndn86hS3fsmKCZeXWchxZAI9Nywvacfkm5NJUC8Jt43
	d0iRWM9Wx0s3G9ZZX5L8GutIdPYovqEFJ8d2ZQ/+mtIx7f6L70+H/sVu5bAQN5alARQg43ID36JoI
	brMBfNc6zukKTNV0xjUnth0HJKIoLfmvZyVre3LdjVDMHDczuG2h+57Hdjj9VZPb3UlUID9Z0mrql
	Ks1pHVqIfnZxAJTvEumqM+cCqqw7aiyMes4IrzGZbk0YP3eI6bcYIQZV1hXyqPlSjn4CpbHIgAI/i
	fSMxA82qqqYnOy0jcLCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omcqu-00FZ36-8G; Sun, 23 Oct 2022 15:25:28 +0000
Received: from mail-tycjpn01olkn2034.outbound.protection.outlook.com ([40.92.99.34] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omcqb-00FZ0A-RQ; Sun, 23 Oct 2022 15:25:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6LVAlSC/kYptupXqlTR8t9jI7va+nAZ5JqO+R8QH6FZywqdO/DHlKp8LagygjfvcMBeakOzAm1Fq0qUveBRbMNkFEpd7iBIiosAjCUncc5Y4lrtWbKFjxEqbgBtXc11IStkLgb3qjgnoVT4rtTVZfRULBYZyemEM0te0z1uTam8IXAe2Pj0JzwJtAOlZQWStPpifimnQSKGazCNF01u/n3T2yeY7FalGbT2KKgSaaW0RUNaK43xfg7ImTer/RhklGmBbVtoJUCvyIqNREw91TEu5ql+GYeQVxTlWEc6QehlC+abq6lBTzjryZkoUJcXCJFnDV5gp+ngBQoyN1Ddug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X6hiS37uoBVGNmSwq1StXLpeznmIMS0JGluHuTvrZmU=;
 b=Hg6MSb+Obex4Y4glykLM7Gzlb5IcJidjI6s0ROOlBiGjKZcGTPy2UEoJUiXmuBnxGS+Iei3NpV1ydb6WxoDlGRfyeTRBDIQbbByfYM0aK3buvFRSSKvFgeNMhy3Fx4cvNtm+hSLYXO5X6356Vzq9D1Oax92lRlvlaS3a8Fy9u2vwbiMhYSEdiiiGN5+6fn4s3aUyNIiAFpRnlzmvY5MocpS2h7HghXkPlm9cF661pkRBmd7/7g2S/fu4AMvRJCxpZUCahFTGFc9LtT2Nko2ynhPGAkVeljkAV4wRWt+Jnse24C8C9EaZzma9WQHSHuQH8ofcVRqLaOFfwwlPSxLJUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X6hiS37uoBVGNmSwq1StXLpeznmIMS0JGluHuTvrZmU=;
 b=UQbsVxLtdJ227lHLdawDYOqLf5BHi8hAqyBId2nb60FGqdJFLE6v/VadccpFzVBWSqzhMSG8gWZipPKSryiRuqurqToRmMTMxM2mdg8wImi5iRmXSZXP481KC+hgo8oViFzEy5JrLy9WLB30lo/3OBqAdLnfHWow5rCPlcC6qtY+24rkhlPF0Yd5j3zqvEpaJ3XjCUrTGcM6CD8pRQp8PA/x4Y0KoNAad0aDQgCYJEYklbzF3xdGpNgy5+ThrA0jAC7btz6bfMEa9iPY76gaIgdY/KRmueGBg1JozADujuflDdH59bA8CXMONpYlyU1s5HfHFxT23rNR9RinMgStEQ==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OS3P286MB3403.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:208::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.23; Sun, 23 Oct
 2022 15:25:07 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f%6]) with mapi id 15.20.5746.021; Sun, 23 Oct 2022
 15:25:07 +0000
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
Subject: [PATCH] arm64: dts: rockchip: Add Bluetooth HFP support for Radxa Rock 3A
Date: Sun, 23 Oct 2022 23:24:37 +0800
Message-ID:  <TY3P286MB26119DE35AC94A07E39F0E0A982F9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221023152440.2546-1-wiagn233@outlook.com>
References: <20221023152440.2546-1-wiagn233@outlook.com>
X-TMN: [JJRhjLnDuDbSN9MmyWo3IPl2hvnH+Wtm]
X-ClientProxiedBy: PS2PR03CA0010.apcprd03.prod.outlook.com
 (2603:1096:300:5b::22) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <20221023152440.2546-2-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OS3P286MB3403:EE_
X-MS-Office365-Filtering-Correlation-Id: c6d50817-9140-4b58-2d47-08dab50ac3ee
X-MS-Exchange-SLBlob-MailProps: 	HeyTOiyEx6bXUCkHGqUvW+yTD5AlCjqABIMbdjslP6oNbFrLHUoo+prP9UBotq7qz851PeKMKEcuKgHKPzQW4PqF8NlZkosceKBmww28nC4aeWvydmwLralKMMIlh4pCANRC3hXZoo+viAV/0uTHEaIU9Y3w6CN5t+YMx3HROp4T1i+oKpBxaSV5cDGYSmtvRnaq7BFiCjkXa6W9PY3eiglBm9PZk1gQ97ZbY1PuIFciGaKWfj+ljJsd2rmiWGH+y4y43q3pZ2pXzbFFy/MRHXQNHlaDv/kfuV4z5btH4s5BnODimbXve6C6eLt7ZwZT1itQhmrIw1nsHTeGmmr9J8zQirZJ2ImZYVH5hYXj/bmaPduhBqDKIGjz9s/ldWPqQ4iVToWAPPrMxs3yjoxjGNV4v0QMLE+vAhddYoFvWziyv+o15yU9Lv86JxtrV0YG8/utgz3pnhIJ6vByK3RocZpxXa6ifrlvnCrvaBww1TZqHQDpQMv7Q/WoQqg5kX5pMs/FaLq4CB3UryQy4iJUD+yhn+U/rrzXvdqo3vwxRTjgBJQ17XQ8EoLO8Sz2aG8vizkGKeDN2I+Np3djCsVuV86LIfK9h/vmr55psA1tRSsY9M8amhYaeIesRPRSNHOZHQf6unfzvr6k2kX1bhfYzYy/rKbpIszuBKT9Xtu2WWXxKmiW/N6xX3ERsRrRj+J+TwqF4UH7D9MUjIlrBZeZbVVwuaLkDvw3ry6q+NPK6Uhwlk4viBnCDNp8Vh/ZJSs1Zo79tZ7efs4Wz38vN7jlCQ==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	QmQMmwhLxlxUEF4jRS8lTExPs5MNx2IQE0BqER9trhd6A9YyixdTzEKB14Lc601GJlXxehm1yOyGwl1Nez2ClKk7ESFACprnMfgIp2rBWZP/YAuEwQeyqjqP5g/LEI0u/sjI5Sim06oZ/ig3VdiIkRU2ecybxMle8p3k3LRKlT6gV2TdEV8Jcu7YLi1uYwMVrPaQQiUB5CTMgyu2/rMrDFmaWsrV+CtQQ7UweAqSpLS6oFqykHGS5VUKW571LAlIWn0WzSrihlcq51SmyQF6K4kgrvcsuxkky9Q9ZCOG5QyEU/J6GawAp8CDow7XQXSxyJratGHO45P70I+8xNz+eVts6L4ncyg/PPjAUEaOmfnfBRHpL4uKmg8pt7CjhECYJ5IDOzt8wIu5wwuNczl0S+pfBLAoeuGiIFaUgdtoJA+yholP2C56OolYxVRmtesTjIHX3aPJr+3CTb+CMlkkCbBcLGUOLKp/LLeoodVQKyCm5Rw49lx3nr4ywFDLDX8IkyAT334M38oXqfYDr/nWhusNBpNYE2gr8Nco21B/BJWf5GfMpRo8zhsp8ZZwyYHoZ/QwHqMIORb2pK30i8bzrbTJsSQ2Pet8qgH24UaDKylTLwWVTcwqRxOrLNOE4fYuPr9/8v2Ka5GpWqROVjHl9B4OiFBNLD/NXaM87Nhi4vEzCOCiIxZqrhfc3vnSqiFo
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?YL7bhyUW10IfwJ5L4lZisaF31wZSyDWmgWxRFYWEmCWYJ+rmHLUvldWeGdTG?=
 =?us-ascii?Q?wb5H5QtA4ruwmqRczbFc5eP2wjUgDGIR90YKbv6MEpj2x0ZBIgKD+kqjpic+?=
 =?us-ascii?Q?i+5YukSRiNlIR7vW+Uf6FPAHXDtT07wLbXU9AMc+mWbiHFDuwkpSr/8BGzKW?=
 =?us-ascii?Q?8CHGBOWhg8e+x8KUq/S7HUpTBufkjG4P6VY8DrzJcIOhA7sNkX8K0mRbINuI?=
 =?us-ascii?Q?OJEdlK8Cn441TxChTgMoZ+eNXTw/GYUzutrk0/NWrgFJLwbrkFiG0xHtrNIb?=
 =?us-ascii?Q?dQlwB8fz5NGCnzgoHiQCoJPqlbOBX8C2UatXMo1G7ZbLAt/WydpmYoRIfFFh?=
 =?us-ascii?Q?lbJENCIzmW3q28Sl/SEtvdZvwNgLlYRuJT3sGJ8ZEZWQJGXo79SUV1VzQaW0?=
 =?us-ascii?Q?1NzcxQpCVEG+QOUuCvoYV6EMgb0U7d1Ir5o7N2FKmW04D0jujlE8CCzuTno6?=
 =?us-ascii?Q?FSBfK/kuXCKgnu3HmdC+7r71oMvJrWgbhy5mOWEGHF/1FA0DPUdQ0/e8VZHh?=
 =?us-ascii?Q?5DJcCq+QqGTAQnBS4+PViXKCktakSTL7Ha0MA5dW+Llr9a4u5BHuYpy2cU6s?=
 =?us-ascii?Q?nPR2coRYgrMCTEZNRRliicD87ctMko8K5MolcXtxEbC4WqWboZbxSNTqCsfd?=
 =?us-ascii?Q?+MFCnbf03Sa7zUCDatyvooTBdu15ZKEazXViOZumdj2NIP9zNLPJTqkCY83W?=
 =?us-ascii?Q?/NkVbzi8oY2aFkGvYE6+xWFgvk5xa1++phbTHwblrrZSle1LdQW9UZFb5jkA?=
 =?us-ascii?Q?2YS4YuBT0vw3ylJJJcp/5y1vlKAJ4YrWzCivCW14dTO7UDKFiFqvFpvAu03I?=
 =?us-ascii?Q?v1F4aaBNZBfuJhy6Krf2ODF9nynTbh934JKlG+NskdywAHIqmCPSoukgy17h?=
 =?us-ascii?Q?a14ky0e9HBdhx1kk5YhI9kI4I6TDEqBMgSLaxvxzYHjLU98pYdX1y+PUOQ+X?=
 =?us-ascii?Q?l8yPq+3DRr75Ohu8Vn2gQnnEirAQKHCIwOjQ2LrhBwRfKgGuNQQAdVW2dt19?=
 =?us-ascii?Q?IjGDu6xeWXEzyqR9Uyog40PG5olN1ctrNS88mrGOLrVZ1lcAN+STd8XM33RZ?=
 =?us-ascii?Q?B5PyRsI2VjMcFbvTUCX7CVo9zaGcKLxm5B66enwn2aj+9IHpNvUetGASyOSt?=
 =?us-ascii?Q?JiVrI+IAGm3G0JBT68xfOhwdB2vCnHqDSsE3Cjn9CELUKWH+90DfV2x/zlMF?=
 =?us-ascii?Q?Mh2Aw+qULTBykFiviX9bv0qqLU3J+7DgHdGRPsmLaNyPZYPUp2sU6Ppesf3t?=
 =?us-ascii?Q?39XwUPwZ+EaAV2LCLqH23fyRfu0hpfd9s2kJze83Aw=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6d50817-9140-4b58-2d47-08dab50ac3ee
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2022 15:25:07.0624
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3P286MB3403
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_082509_914625_6B71F1DE 
X-CRM114-Status: UNSURE (   8.12  )
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

Initial test.
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 37676e8a258c..423558fbc200 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -60,6 +60,31 @@ simple-audio-card,codec {
 		};
 	};
 
+	bt-sco-audio {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "rock-3a-bt-sco";
+		simple-audio-card,format = "dsp_b";
+		simple-audio-card,bitclock-inversion;
+		simple-audio-card,frame-master = <&bt_cpu>;
+		simple-audio-card,bitclock-master = <&bt_cpu>;
+		simple-audio-card,mclk-fs = <64>;
+
+		bt_cpu: simple-audio-card,cpu {
+			sound-dai = <&i2s2_2ch>;
+			dai-tdm-slot-num = <2>;
+			dai-tdm-slot-width = <16>;
+		};
+
+		bt_codec: simple-audio-card,codec {
+			sound-dai = <&bt_sco_codec>;
+		};
+	};
+
+	bt_sco_codec: bt-sco-codec {
+		compatible = "linux,bt-sco";
+		#sound-dai-cells = <0>;
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk809 1>;
@@ -611,6 +636,15 @@ bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk809 1>;
 		clock-names = "lpo";
+		brcm,bt-pcm-int-params = [00 02 00 00 00];
+		/*
+		 * Parameters:
+		 * SCO routing: PCM
+		 * PCM interface rate: 512KBps
+		 * PCM frame type (0-1): short
+		 * PCM sync mode (0-1): slave
+		 * PCM clock mode (0-1): slave
+		 */
 		device-wakeup-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
