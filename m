Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55847606A322
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 14:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=L4VH7ZeU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=U2eK5zmx;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=A79St4aF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxiMbl111QKV6GLwZ0PMBvozE0UX7C00b3s2cZxEVNU=; b=L4VH7ZeUf7Blwc
	hi6wfHqFTK1TMlIEO2iPrsymteOTbDXDC0eJircIXm79liLipVS5l5spIqVnxYl2YofnzqQFYRT7x
	BQwkPjoSssDcH3NJ2SH7ctVCQLZndOZ7bv/vkcqlt5nBORYHYGiOgBr7uaUssWVzrH4Ri7PfnbEPy
	vd1lDv70IPXLrOVKGWKNpH9TlHp3MKz3pqnj/JpU9700vknqmsWNl+jtBn7a4uXal52rV5KcZr3sx
	bAhPR/GZ7FNityZmUESmuhM4P+j96JTrk9bAg25XhRwrDDHAIZA+s14MWeE/sM9e13YvKrNgL8v7D
	UGsYPfeUcCi1Z1V42RUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAf8-00000009ubl-3PSi;
	Tue, 20 Oct 2026 14:17:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAew-00000009uN3-1PmJ
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 14:17:49 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KD9tT12809544
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 14:17:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=uXpc2QWgMGX
	BiYzG6BvVA2zeICE/TGbAAGJgn9nSWvw=; b=U2eK5zmxQX3gkfz5ViE8MyntVu/
	GrSSZFnWeIMrCaS3S4TNkmw8V9udeZu2ZINdcXicQRI4p5I+b8jApPKP/kI1N0Wt
	gq0Fwp+6bvT1L7tz8n2cQ8/loJ7m4UBYudoWcyCK+sbYmga8N+y2DqtUdAs1cczu
	MyWN8Vq5G3I/uvesRwwR19+5LvEvXMPrdUTC3B4vyl3IC/oqkc91xmrBaxQWLAKY
	boNvwdCkAqTeHn1JDDDatQ/WFw1/n+1CNP7Q7DAMbEHuAs8MfmWMkUbd2q8k2IJ0
	570lUYY/3oV6qHnGFV9aE2kXqmC8MWyLIIol/1jDn96t16EvY1mn1bxC2og==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdw5p2v7b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 14:17:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93c5ab5c136so543253185a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 07:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792505865; x=1793110665; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uXpc2QWgMGXBiYzG6BvVA2zeICE/TGbAAGJgn9nSWvw=;
        b=A79St4aFbC+sc+ygl8apY26PV9IyJXx1pQMTEjgyGX8c+Q7fUA989jCFL2mj3R6nHx
         fABHQ0CwqwSne1X5mQ8pGJv19n5mOG2LGj3R0OANx3cTeFj7JUXrPD4ogZMQzp92R7TP
         mQyRw8EAQuHGcZpGOlTN1xnso3YopO0vXpnZF+INyxcoLnn7uAG7p629UV8dFskgHSxQ
         ceaXww1zbS0Rx/D7gkKHqBgl2jDD/GVANxPbTMKySnASLJWn0G0nnfljpOPt6veocvOR
         UN2KORq2zOnkl+kgK7UgcB5456F4HC2+Q5Cki27K4iNlI5DxINzDjxPLEkQOobnX1Qbb
         QrbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792505865; x=1793110665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uXpc2QWgMGXBiYzG6BvVA2zeICE/TGbAAGJgn9nSWvw=;
        b=ytR/LUbD4c/qtumYPKDaIEEDbwCBfHH4RlBv3XVUbriOotqueCBE3hKMj2EVDMPlRg
         TRZWkZtQmzNRaeo8o1Z5jxVnYhuTrW1rOyhMKFRu1KhaXQYdNuj9HAChdSh03VVX+yFd
         OtPKKNnCjLjqbg+JDCHiH8ZrrOzuw9/hj1pCh2XpiC3NkwIUmdlOhfg7wkuL23OSv5vW
         XELl/kqT3VU1eVPq1YahfDSMn/OnvWaXEa3gSLeEsvMkaxtK7zwioLLRYk/09cIzsc0u
         NOVO2dgiB5Rf7LfJeFtvY90iFTofTSC/3QIHFH4Q5ERPvvZn3I/K2wOyX4+1NRSFiI1y
         22Gw==
X-Forwarded-Encrypted: i=1; AKwUvBz6g2eoFMMSlygJpXoc2hmdoqXDY1PoqBaVDLx7v8KLXI1MZcCKYNSCaklBomtw4efQ8HQplHdjVxYks+HEWA==@lists.infradead.org
X-Gm-Message-State: AFq9FYJcILReFFjYD4fYFMGJZvlxxnuIfluyOcIS3vU/CyzTzOGDmfmQ
	OHsvqYztuXwvTVsxoHL6RzjeLn8QTT89YeHHGwp5WvlHRQQW2syzwB2+BAZFtEdog6p9KuRsPQs
	cklX5+SqiSrJ2nd5ON5kqmCvtWUWjEX8h2l8/iVDr8dtSFpsYiDUHAyI6oJP4hTQklME44cc7bZ
	o=
X-Gm-Gg: AYBFou0zlxbqPUXGJvhr0ABtEkVIsy/yLSY1F9QbdA/g+sOjxeiVkEch5VIWIi69nPA
	qiu9NCea2t/MalQ0F2j6/6pOf7O/ZrSz6yrGygypzhC2bARg7Xgxt7L7+r5fui2zsEdldMo3aUE
	8JlLaHslrj6eCn1ubOgPP1VPrMD8gKto7muVhyRXY9ltxTbRywhBT1q6ylTD4eNDvLHwxQd6j81
	CNqOgKzzNX6IH3SSSwpz2o/9GAwoPwzdPkR/tCkQ7+mSS3B0MtlyBf7UnaCFpPPAl9o00KklbsF
	qCS4rKNNEDzgSaQp4s056YmBx1T5EyPxs6xJWPnXPTLHI1gwHmcfce5jk9xEVIeynKXBhI6qXGK
	UXSDyNCt0DZOfjUvEyi+LLE8gyR8=
X-Received: by 2002:a05:620a:8812:b0:939:6dfa:48fd with SMTP id af79cd13be357-93f29d8358bmr1660654285a.51.1792505864770;
        Tue, 20 Oct 2026 07:17:44 -0700 (PDT)
X-Received: by 2002:a05:620a:8812:b0:939:6dfa:48fd with SMTP id af79cd13be357-93f29d8358bmr1660644185a.51.1792505864113;
        Tue, 20 Oct 2026 07:17:44 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:4884:6e9a:d9ff:9fa6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d810043sm6642276f8f.16.2026.10.20.07.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 07:17:43 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: [PATCH v3 5/6] powercap: dtpm: Rename Rockchip virtual node descriptor
Date: Tue, 20 Oct 2026 16:16:55 +0200
Message-ID: <5ff8e721e9b2191439dc8f5342fec6f4c07b4fe8.1792504834.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1792504834.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1792504834.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: NoTa2sKjCzDt5ImqMVSe0rg2Kw2TB8dY
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA1NiBTYWx0ZWRfX9hq8uMvmphm4
 jZiv6aDpIu5dEIKaC9aNwgrXWJY7Lun5O7FSch0eoZDc3W3q9MEG1lr+2iJTJYdQ0MksH8s0dzL
 b02+dO3v/nWCOR/pglqJqVJYarKIh4I=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA1NiBTYWx0ZWRfX+MpAuO0Z/mq7
 AU0az9vbigBBG3K15MvaSQbGMmqpnMs0UjWCtLeBJj0RrLsJrnlvLK6vTLh+C1JEPdZUhR0JTcS
 Fse4dbkB/xdrGZFzUECA4iZvmTEkdQ8R0gn/KXXTeHfOi3WwJbrQo9rZx/rQxVN8QI0vDlPMv3J
 nE5824FbVJJT67YK23e9+c8arZz5VBPBvzOo8ynO6U9Q8Hrm54HiLQoj9Xc8Bv2VyUV3qUWxUWD
 Bwg5VcVglmz/XDXcHQQHIGTyhOUcGZrn0cYlZW5gsUW/n/D+Z2zNqRYupvZTHmWDGbuvHDsIAPo
 p1HjaGf9Xtm+o2vNSbYV2ET0crZ4ItibH54vsPvAVWzPlMdmCO3Meu1xpXpjlvhAXH4aTu5aw+f
 qPgB792XkYRxGGTrwdSOMMGo1wSeDDCE4/hKUNxPeNJcEB2xHGzIb18vwLB4bwpX7mPzeil0G92
 9j56sZS0wXLc7uTvoMA==
X-Proofpoint-GUID: NoTa2sKjCzDt5ImqMVSe0rg2Kw2TB8dY
X-Authority-Analysis: v=2.4 cv=crUOAF4i c=1 sm=1 tr=0 ts=6ad77809 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8 a=_NZqlvP9bvTAGtRSC3sA:9
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_02,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 bulkscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610200056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_071746_479576_D8B1B971 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The virtual DTPM node descriptor is named after the RK3399 even though
it does not contain any SoC-specific information.

Rename it to rockchip_virtual so it can be reused by other Rockchip SoC
hierarchies.

No functional change intended.

Assisted-by: LLM
Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
---
Changes in v3 (since v2):
- Rebase on v7.3-rc7 and refresh context after patch 4 style cleanup.
- Add Assisted-by attribution; no functional changes.

 drivers/soc/rockchip/dtpm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
index 222d9098cc98..5ae00680602f 100644
--- a/drivers/soc/rockchip/dtpm.c
+++ b/drivers/soc/rockchip/dtpm.c
@@ -11,7 +11,7 @@
 #include <linux/of.h>
 #include <linux/platform_device.h>
 
-static struct dtpm_node rk3399_virtual = {
+static struct dtpm_node rockchip_virtual = {
 	.type = DTPM_NODE_VIRTUAL,
 };
 
@@ -33,12 +33,12 @@ static struct dtpm_node rk3399_gpu = {
 static struct powercap_node rk3399_nodes[] __initdata = {
 	[0] = {
 		.name = "rk3399",
-		.data = &rk3399_virtual,
+		.data = &rockchip_virtual,
 	},
 	[1] = {
 		.name = "package",
 		.parent = &rk3399_nodes[0],
-		.data = &rk3399_virtual,
+		.data = &rockchip_virtual,
 	},
 	[2] = {
 		.name = "cpu0-cpufreq",
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
