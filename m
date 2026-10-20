Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091F4606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 14:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=z5eTxPyK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=O1u6Asj4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=cHBmDvEb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qt8xVz/2P1f8ZikrYGSySbnY01p+TGu3qOenw1Hsbxs=; b=z5eTxPyKQPLjOf
	Z05TYVyNr3euns5PPhoQxNryvTrjfQiKmLZ+pOLNx61+EpEZCcICWhqVrxs+IYvgMFhTMvAI8/XJC
	TnKDCdYYehCveQUAyN0TCurUOXW69mARLwKs6vMZoRdQPodUleU/42PpZq8rNTF+V/TXx15BrBOeK
	aP74R6IZAJrw+gDM9WPKJDNQe+DKrflbs8ORqNx92rkD/AIKTLvhH8DX7xiGp7W6hey10f4cco9sT
	/+ludQT3JHY48I1sIIFNz6LxkB7ecn1qnl41UYbywvZ9HqwXfzDDydcSbBnPswAHjQYd6bXTLeLS6
	iUPIAVM5QMSkg+UzY6Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAew-00000009uNG-1jwp;
	Tue, 20 Oct 2026 14:17:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAes-00000009uJL-179W
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 14:17:43 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KD9r6b1781315
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 14:17:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8J4j0djyVVF
	C/C1z8k5Rma/HbptDjpjZS/vt1pUoijY=; b=O1u6Asj471qzv8lGc4di8WmrEup
	+DJtLvvwD5gLoCj0Kfqmwnbvj3SUqfuDtfGq5rWZaSa66O9VGQ8X4SmJHkSiJYcd
	2Tq9bPtyIAW/W6XskJSCNhA1aEivFnqcx3B1Aji9aLbEtoMOyeoz1J2YoZsKxlOL
	F1Zb+KQAlT3+xZT5TPU/oXEi09LqG8zy/klXnsdRHnRI2bsS9ywkeZn7fzIMfloQ
	P1K/NN71OHE5VlZE5//45yBAQcPTWFLp8zqo8sUUB3P+EzH5DMwgyN4d679N0pus
	LJhb/IiXkgx9RGeS7LIbvn+NYcRWjO0cHZhPb8PudVNbMUopp8DLb4sGcbw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4he7h28k6h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 14:17:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93f33438950so854193285a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 07:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792505861; x=1793110661; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8J4j0djyVVFC/C1z8k5Rma/HbptDjpjZS/vt1pUoijY=;
        b=cHBmDvEbu1Dm8xw9eGX9JaLwzsLEsZHBf1nG7pTlIklMMuQJAz7gsNNJLaPH24vA7c
         35sUt4e1i3/5MkyWp3ijuv6vJdevSD+o/5e/Q0yBWl889S+fctpDPHcYa0uAJ96k9iTN
         is5ZszSfrHs/h6pIwuKXPXZjr9YKxcyQsV+6OdCFzL1wGmDYluSZNdP2+T1TkSsYhh5G
         vaoJZIPuj5tiU7tdvJdcwP1S+quCACfoj9vHBDjXAqS+zZLUaizuKclOJ0CL1LmBwQxa
         evSjcw3JDu+WBkmbr8k3INFtxMJY0egGn5jpZLG6LEOXhYDegAcnK7mRJHH77nM5vEcN
         HySw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792505861; x=1793110661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8J4j0djyVVFC/C1z8k5Rma/HbptDjpjZS/vt1pUoijY=;
        b=qjdStk3q+ARVHCbbBxYCQgoWFRTNtJO+HcN9b5nkonV3CH99KAGP5Z4orzz8tpah39
         G6VTjuCvIuJ/C6NDKFoPCLGZRn3D2jfYThYGoNUPitAglPdZCYEGJYWQLPokuhU0iqo0
         jap+Kxss/hUVmCBhGpTr2mHMWb5SBz4FGATDKGP81IYcJlbDi13V8GBmAvgZKG9hfIBR
         MyfkGF9ECbQnrtNVIdBnoDtr/6eYzctUtn10JKHmmff1MANIyF3W0XLjC3XDuJO2pJH+
         GGZAis1Sf/mRL/wwI4YFddYq+NFSdbGMdg9UonTw8Qik++v58UeWW2+bFG21st4Bqv8T
         7VNg==
X-Forwarded-Encrypted: i=1; AKwUvBwh2h4rRHqbxC/s9wq7Is8R+fnBTsIxo6UYay/niKut/b2IA19b4/mxLAEyUM0VUB9JR+oJiJ+dFDvnCZbR7w==@lists.infradead.org
X-Gm-Message-State: AFq9FYLM+LG6nMUyg5qKTfhjbW4odhnJDDZfgajO7vDD2IK5nQeFpLoi
	PHjeSSJ98imkLz8TB5nxRzSvJkQ1Jeb5iPY5r2mfCVJP7WRk5tyeWY4csSv9go7w39L/gGMNrxr
	/CNGbTrcQI3r4f+j+xw+Ed462qYhBWF5qpiCcJmib9lQlpPDufl4bq+rsFvKQoqKaLYa/ZEUqlk
	k=
X-Gm-Gg: AYBFou2u2+Y2Iso4riZKnzQXmColtmva9XZzY/aIrw2N6INZrV9ALkyD0i6zEsrHLbq
	b5Z8X+rCj16afPBKOR1Fik4z62Spccg5hQUKTNkLKrDuWSjGfzeF5ZsX6SasUsIVeWrActo1mpe
	OHrQJSwa3L7QVP/l1g+NL9r4FkSdb1EqgV5oCtCM8YpKlHQ6XKcSv+f7q3LdnbdyzrR41Sg1PLL
	AS8GTrLaKW+caKzmYM6PvmNZZv+xdo9tfyUXxrkQ+52BRTh/Mq/VhjwY9A7N91PLn2pMqKYtuv6
	w0QqztrIrTbo92xlhzeF2uUAPpIqfdC8RSoKdv4bDwOU1eq5iGqqrvFlNUW2ti7aE/pUd0ucfky
	6tkRYBDFoAxup3Ck8xALJgx4YSqw=
X-Received: by 2002:a05:620a:19a5:b0:93e:b0c3:388d with SMTP id af79cd13be357-93f29b7f65cmr1936774885a.11.1792505860680;
        Tue, 20 Oct 2026 07:17:40 -0700 (PDT)
X-Received: by 2002:a05:620a:19a5:b0:93e:b0c3:388d with SMTP id af79cd13be357-93f29b7f65cmr1936767785a.11.1792505860129;
        Tue, 20 Oct 2026 07:17:40 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:4884:6e9a:d9ff:9fa6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d810043sm6642276f8f.16.2026.10.20.07.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 07:17:39 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: [PATCH v3 3/6] powercap: dtpm: Remove duplicate RK3399 CPU hierarchy nodes
Date: Tue, 20 Oct 2026 16:16:53 +0200
Message-ID: <38f5964cadd33f8b03afaf9ff740653258367d72.1792504834.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1792504834.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1792504834.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: f8wc11H9jo0tlouGU242SVxbZKXP8Cqr
X-Proofpoint-ORIG-GUID: f8wc11H9jo0tlouGU242SVxbZKXP8Cqr
X-Authority-Analysis: v=2.4 cv=EuJHPicA c=1 sm=1 tr=0 ts=6ad77805 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8 a=EpzjDTW3ywHV2UopgxgA:9
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA1NiBTYWx0ZWRfXy4z5M2FkJt1f
 VbDXD067T4MlhfLrmA3dh1tF6DlOBgsZj4FjlLoDat5C9Z0MWdOEnnGJ/3NevzoazWjnqULqChl
 ulbi68fkdRRx0FsYhfR4JJFtFq3LBms=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA1NiBTYWx0ZWRfXx5C+2DttThHZ
 8l1SluRBJCqvBrcD52RUBbbN9Rgy4ZNf5ZBP/8BRuQi5zjKlrJVWirwvJSq38NQx36/R0c42osE
 T6vjzCeBl/d7q/rTNTXYCpkBxGhAp5mwl3lYqW5A3XfOcl6LfLR8AFhtTfi2rpBwtZBzu6SbFun
 hUHNCZXN+LKiofy4Q1Sdv3RfriohPedXok/ZecNu9CeBzYVtqqFdgfEwzu+/jV8CTHqucySA0mP
 96s65GcgYBZGjaaGBwlWKUvgcRlINGlAcwzYIRaY1dJiJNd1FuDJrMrSvCzMTQAYLha0qT3dw1W
 3FmEvi1GHOj2X7opyRz1jItYMb7h/NeRsrz6pJ5j0tCY766Ov90fGU4tk0JYkgjayv27ePcib5x
 NTunnt2hYQBqvIeDc03jNTp1LHC81ACON9y/qwJmrhPSZG6YyDugAFO19oXVRFFKnd3t8l4Ka7X
 RhxSrHq2MfH9pQhHPMg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_02,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_071742_316821_6FA66F9D 
X-CRM114-Status: GOOD (  15.72  )
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

The DTPM CPU backend registers one powercap zone per cpufreq policy,
not per CPU. On RK3399, CPUs sharing the same cpufreq policy therefore
map to the same DTPM zone.

Remove the redundant CPU nodes from the RK3399 hierarchy and keep only
one CPU node per cpufreq policy. The backend already suppresses duplicate
registration through its per-CPU state, so the removed entries are
redundant descriptions of the same zones. Keep both CPU policy domains
and the GPU in the hierarchy, preparing for one created zone per generic
hierarchy node.

Also fix indentation in the Rockchip device match table.

Assisted-by: LLM
Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
---
Changes in v3 (since v2):
- Rebase on v7.3-rc7.
- Fix Rockchip match-table indentation here rather than in patch 1.
- Clarify that the existing backend suppresses duplicate registration.
- Add Assisted-by attribution.

 drivers/soc/rockchip/dtpm.c | 22 +++++-----------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
index b36d4f752c30..e71f315fbb6b 100644
--- a/drivers/soc/rockchip/dtpm.c
+++ b/drivers/soc/rockchip/dtpm.c
@@ -20,30 +20,18 @@ static struct dtpm_node __initdata rk3399_hierarchy[] = {
 	[2] = { .name = "/cpus/cpu@0",
 		.type = DTPM_NODE_DT,
 		.parent = &rk3399_hierarchy[1] },
-	[3] = { .name = "/cpus/cpu@1",
+	[3] = { .name = "/cpus/cpu@100",
 		.type = DTPM_NODE_DT,
 		.parent = &rk3399_hierarchy[1] },
-	[4] = { .name = "/cpus/cpu@2",
+	[4] = { .name = "/gpu@ff9a0000",
 		.type = DTPM_NODE_DT,
 		.parent = &rk3399_hierarchy[1] },
-	[5] = { .name = "/cpus/cpu@3",
-		.type = DTPM_NODE_DT,
-		.parent = &rk3399_hierarchy[1] },
-	[6] = { .name = "/cpus/cpu@100",
-		.type = DTPM_NODE_DT,
-		.parent = &rk3399_hierarchy[1] },
-	[7] = { .name = "/cpus/cpu@101",
-		.type = DTPM_NODE_DT,
-		.parent = &rk3399_hierarchy[1] },
-	[8] = { .name = "/gpu@ff9a0000",
-		.type = DTPM_NODE_DT,
-		.parent = &rk3399_hierarchy[1] },
-	[9] = { /* sentinel */ }
+	[5] = { /* sentinel */ }
 };
 
 static struct of_device_id __initdata rockchip_dtpm_match_table[] = {
-        { .compatible = "rockchip,rk3399", .data = rk3399_hierarchy },
-        {},
+	{ .compatible = "rockchip,rk3399", .data = rk3399_hierarchy },
+	{},
 };
 
 static int __init rockchip_dtpm_init(void)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
