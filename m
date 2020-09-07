Return-Path: <SRS0=WHqa=CQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 175A2C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 13:10:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B0EDB2065E
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 13:10:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2Tak8O5h";
	dkim=temperror (0-bit key) header.d=outlook.com header.i=@outlook.com header.b="Jem9FxZ1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B0EDB2065E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=outlook.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Fe8dRDyDd/+V4BCK3qprsWaEuBpowLpm268wKjP24iw=; b=2Tak8O5hIHSJMdOADhQmS/txYP
	QwQo3K8jwTefgjS7iXupFNQNhKi4okRKN01nZNMD8HNLsBWlTryZJzZw9WPqF71wMbJSIOKeE2efw
	hLb4omOFhF1OlJt+Ikz0mBtvOAOyDFFYF1dJTFkBQUdgrgG9QSuiAx3ePRiIT1iNJXA7l8DG9D48j
	17m93TJouLLvaulM4da++YLeNw1bHnNvZLjeTBlAixs8JHbHRdBKJT8vAX1yBer+Hv7fo3gvy2olH
	rDmitiQIsHoX+kQ/ZGNAGxWiqPGeuKbfHBXVfvUJjlTnUzlAzfy/kcqBurCoMkV/RolDcJ+y/0sv1
	dsNMyZFg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFGun-0006fz-4v; Mon, 07 Sep 2020 13:10:33 +0000
Received: from mail-oln040092255092.outbound.protection.outlook.com
 ([40.92.255.92] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFGui-0006fD-EO; Mon, 07 Sep 2020 13:10:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=js78pOZ4pYWnyHAu6RUmHVCN0IloHkXCZzm0ZjSNjiWVpbeOSUym1KkI/P+K1tJv5gZ76PyjQo/je1y5F2weGF7vvCq2ujeRs0RUTM00V1brAOigKvJ6E+kVWNPLFRWN+iYGaEpMbyT42SLrsttbHm2kgAQrQsGwjXxtJKwdxaDUjwwb/s1/zc400uTFEJPg5CJb/JndK+DUGu2KVO0T9EnR2IYGtYkjIOuyP6Nq4586MA6EehZcSQm5yWBQVo8IVENMEqhgOFLvoZFvn3J4U4HRm+u+TWJm8LH7ly6SRinUN19MjMyhnN/jzTIEiTGD/7ouzCBTMc1c0kLSYE1j9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xM++dEIvB1D6MZvpG9mUZiNZaEEB6SGlisJUyHaGXqA=;
 b=HCxSit34cvK0MlrVd0wkZTXVmQRfsXgoSFZiTYBT8lMKMLoHvdQUC6KQT+1EJzejMGsTxQRNuYYja1cL0nJltQdihietSeMV3dIjHJ9PTuQzTlLfdC+tBtkKXwvUGSO/HFTeyEfBTz4BWojHtss/ekyCgAAf0Fcqd9gZBpNJfcenSMvH4Ttk8UAvQ4Pxy5AdARnZiKNQNc0Sfn7hpVK2boNAKQBtU6HBzh0HHGZUmles2sCEH5PEZffwE9pjmbPO8d4wcroIq3zYI8fMPcRq9bOpUhqPiji/EM8mZLB48rRcHCXhssbsow1S2QYojAXN5ohhZqW4scQQm5R6Bh3mVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xM++dEIvB1D6MZvpG9mUZiNZaEEB6SGlisJUyHaGXqA=;
 b=Jem9FxZ1dG1iVo7+K4ivX+2X/qwz9tmYN2xW2nF59kU1Th99kL5te7yMAHct2eN6H0vJZVOtkhVya2ajBA4unrgZ40wGyx3NFq9N9tSFeiHZTXSjK1ZLzZzz456ZU4hqmo6I5zBstyMVBRz4Vuq9l3rHXMYXIr5H5WBjY6TTo97l/t2D9WZgg8A+ImFKpfVDmYYzHAHffNxuiUEJrtoyC7W00PDAJIiqDDG454QlH4ukXRAucwOIIe8sBX83sowWWi3K63pr4fQRKFM4AzxNgKbDw/6Gjj2wNU1h/L8nYsThq1PJ/anRSOb319WMcWVV8fnfggC+sVKlE7pQwi9tQQ==
Received: from HK2APC01FT011.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4d) by
 HK2APC01HT102.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::291)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16; Mon, 7 Sep
 2020 13:10:14 +0000
Received: from TY2PR04MB4029.apcprd04.prod.outlook.com
 (2a01:111:e400:7ebc::46) by HK2APC01FT011.mail.protection.outlook.com
 (2a01:111:e400:7ebc::153) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend
 Transport; Mon, 7 Sep 2020 13:10:14 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:B6E8F06CE9A02A73162C4D2DDE247661788504803B6EDEDEAD9F6063A94F1B77;
 UpperCasedChecksum:3BCD6C970AB85451360DD602DF6B751DF150374E86099C5F102DAFF5775664CE;
 SizeAsReceived:7641; Count:46
Received: from TY2PR04MB4029.apcprd04.prod.outlook.com
 ([fe80::f89c:3b41:cc1b:bf10]) by TY2PR04MB4029.apcprd04.prod.outlook.com
 ([fe80::f89c:3b41:cc1b:bf10%3]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 13:10:14 +0000
From: Tuo Li <tuoli96@outlook.com>
To: lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
 heiko@sntech.de, islituo@163.com, baijiaju1990@163.com
Subject: [PATCH] ALSA: rockchip_i2s: fix a possible divide-by-zero bug in
 rockchip_i2s_hw_params()
Date: Mon,  7 Sep 2020 21:09:37 +0800
Message-ID: <TY2PR04MB4029799E60A5BCAAD5B7B5BBB8280@TY2PR04MB4029.apcprd04.prod.outlook.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: BYAPR08CA0018.namprd08.prod.outlook.com
 (2603:10b6:a03:100::31) To TY2PR04MB4029.apcprd04.prod.outlook.com
 (2603:1096:404:8005::13)
X-Microsoft-Original-Message-ID: <20200907130937.8571-1-tuoli96@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from oslab.tsinghua.edu.cn (166.111.139.154) by
 BYAPR08CA0018.namprd08.prod.outlook.com (2603:10b6:a03:100::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend
 Transport; Mon, 7 Sep 2020 13:10:08 +0000
X-Mailer: git-send-email 2.17.1
X-Microsoft-Original-Message-ID: <20200907130937.8571-1-tuoli96@outlook.com>
X-TMN: [4iHdCKPT0OLf+f0DeaUlQVsAZGFSHNHYbHoR1SjYg2U=]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: f30e2ed6-ea85-48ca-d6b5-08d8532f5b2a
X-MS-Exchange-SLBlob-MailProps: 6H6McBavlAgH38auFqsg93Z/iiafy1GfONNCBBwmamBg9zvLbel49YlABEMf84D08WhkwY5HHi1m6kKeaKlAxZFRQUCdP8eNnzb9cvcBbOoX5dBHgfwEhchGwJ98XQCm+zNgNu962yB8lwZCnH2tGKHK2Kt/ydBwjuKOac0EWfMeaM2LXwqVjCli07aN9N6jRygjOVSTkHwCtdJPACFwokMnJOe1QPlkCiKeDU2RnNdNwlxsVCPq5fVEfuedLWALDJSkC2/RQSJrrnWQFe7Zs77hlXzGFX84aQWmgv1J5eW5soH5Ofo1Nz1iEdirji/BnCQr0ZSBE+keqmtzo0NTAoQxrMBwbIOyejF2gVeWs2UqZ79XaeDVaAmINt/dx5mJFqEiKsPFjAqHvDS7ikas0oYrPs7ty2vg728Mn58kOsj6NNLvWZ2KSuUBv/P1Dk+ZO0D5/TFQKgcLr91QMZwJzsomVoC9ev583H8FPb3dvT7owKvJaRWP+YyM8gDhH9edK6RHdRV4Zp7EVIrH5Kk7V+oix+UDwdPiVBUMAqi0FvoPxa+FUEuK2qwklBLGrxgy4IXb1knQsaPQFFjUw1fWQFR/Ip9mOISO0BOYZhuq8YONugpiBROS2xkcCMuFwms7PRrAk88dpdUhYEunmVLUnI7KQuwsY37hL60Era0GskXHJXZwMLKiAu0qbw+5uEQ77DkFb0qsqNfdLcSRC2wlzjEWE1/p090Pp/7L0kvoBQUwWUB7kA2r5rfxpQR+5FUIp7QeMj7X1pA=
X-MS-TrafficTypeDiagnostic: HK2APC01HT102:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uK//X/gBgyTWRKyZ2pQnRmwZax/lmb2B5oCxGwvzQpky8lPmxfDD77tQRyVid/ouH4PeubsNsuckYpd1kODKN/AS2lx8QLqjDsJYakkXWdlB8Bu3DxQzbNTnhhhgwkNnMboD5rkCX/4/gocSiey0fEP12J0h95YspLzxZ1xtGhNINgG5NX0dNY9b6fsyE71PmQY9+MqT1h1fk/Y/UnRqAg==
X-MS-Exchange-AntiSpam-MessageData: StIP0lYp7vK9bq505sJvfNu2x/y7S0UX+ulC4ZV78Dv2DE+go86ju//zs9qih7mK1/2fP7zXQ6d+MdEiBQ8c4U8Z1Tc+0izZzSDZ/ne//cfwIJzOfILKOixk89VcOis+LKwcC6JjV52q0uGkHRZV8w==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f30e2ed6-ea85-48ca-d6b5-08d8532f5b2a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 13:10:14.3403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT011.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200907_091028_551333_BD302EEB 
X-CRM114-Status: GOOD (  11.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 Tuo Li <tuoli96@outlook.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The variable bclk_rate is checked in:
  if (bclk_rate && mclk_rate % bclk_rate)

This indicates that bclk_rate can be zero.
If so, a divide-by-zero bug will occur:
  div_bclk = mclk_rate / bclk_rate;

To fix this possible bug, the function returns -EINVAL when bclk_rate is
zero.

Signed-off-by: Tuo Li <tuoli96@outlook.com>
---
 sound/soc/rockchip/rockchip_i2s.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index d1438753edb4..593299675b8c 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -279,7 +279,7 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
 	if (i2s->is_master_mode) {
 		mclk_rate = clk_get_rate(i2s->mclk);
 		bclk_rate = 2 * 32 * params_rate(params);
-		if (bclk_rate && mclk_rate % bclk_rate)
+		if (bclk_rate == 0 || mclk_rate % bclk_rate)
 			return -EINVAL;
 
 		div_bclk = mclk_rate / bclk_rate;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
