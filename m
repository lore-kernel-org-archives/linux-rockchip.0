Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B8E606A321
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 16:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dd4A1/qo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=GXs86wpK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=EYFrANb1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FEOjU/FSq3GcyPSLmvS35CgWuF/JDcQ+Z0/F+VXMNX4=; b=dd4A1/qo4k4cAojhKuZXpO8eSX
	D1sAl0XilsqHea5qtcSW2hlTtHKO7awZJ5mMD/RYsPBmvfLrqvwJfd/zBYAdawVCNPqlvLkq7El3x
	wEV8g1+E1Sqhh7CoREviOndJXFaO/zWqO0APXvusOmbJAVyiiH+zCk4KydxCastpeBsZcaa8zWKi4
	fl7wbVNC9i/Z8rtzw6FV6Mw9pbn+XQnkkEnFb363S/Gm4Q+fK/5Yqh9S7PrqE4hL2uFrNkp8uHreS
	L1mZfjsWrkVAQqTFwytRP/At9jVTSY/tYRE2PJLTHe79iH+TiFKIirw+8pxNnZL5T71t4byrXW+iV
	wbTh6STA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTS3-00000009tsA-0hME;
	Thu, 29 Oct 2026 16:58:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTRh-00000009tQQ-1rZi
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 16:57:47 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69TGCxTk1619586
	for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 16:57:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=hTV/3nn/Rkc
	mn0hRyZbdsZoeAcUIyL6tsSbtRE9aXY0=; b=GXs86wpKTuJaEtB7IvbsrQaIJiD
	Vzau5SA5Ip+Va4Mf7Yqhhf2vXf1VBswh8RUkDV6XmXP4UTiDz83JhUF+8vSeo+Fl
	SIxDn4xWqgvL126WPyWvXV31hOW1RV9v3jnDpX/7UDRCeP7qR0c97qiVWXf5HEFc
	tD/swatm7oFrd2gPzLbFoMU1FyoI9OTwCeprbTcqlsSzoiqUukoqjDDju6Q6CrpU
	uLNUnGdd+69JCAh4/HgijN6/8kUn+oiYlhFekVGKj5hfMFiTK5vO3LLWUtD0fA6/
	ymfcWcqp4hGlkl3kp1PsW9LTPKvtkyJiIm3nt3868LpR3rnGO/ombmT9hQg==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hm44q9nup-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 16:57:44 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-7cc37ee6562so412838137.1
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 09:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793293064; x=1793897864; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hTV/3nn/Rkcmn0hRyZbdsZoeAcUIyL6tsSbtRE9aXY0=;
        b=EYFrANb1VKBZzWZ2yikSLNwnlutT0zSb4RdgKkusg0O+eOjElV0QAMvil+X80rYwW+
         AmBKDjK6Kc+ouD+Phl44mF5pIZcXdjykI8Is4s2D7rSElavzN5Ge3bJho9J7whiBZPLZ
         EHPTpP5VIbFgGTr6boKap665ZDXWvmAyTlw9CHZgXhytiT8O1vs894rZjAFfBVGv7bE2
         K9ajV5CsWRruDu8pN0QN74WLlzZBfsDpXx0nUpic9Cc2j7lXc/MOmCAh9VySgs2oF2j+
         r3OEpj8de/NcMxZjKEGmmRk57tUkQNG2jOlpInD4ocqb2xIzqrEuXa7RVKb13di7uyna
         /kCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793293064; x=1793897864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=hTV/3nn/Rkcmn0hRyZbdsZoeAcUIyL6tsSbtRE9aXY0=;
        b=am2Wgv8t4gQTBa1wDIuL94lXPb4l343i/H4s+3+4kha3zwqcc9Tdzet7xsAtG2rrdU
         Q9xTcQkoi3sKkVeeOzHB2R9v/pDcTX+Ki7GMi2GpIfap1OOorPf1qLUHcBLDMiLbS4HI
         rFNNnrffdj607WLGOjUdr86ckzUCbszr6tk2H8WY1YotYOKXhIcv+/1F19P1q1NFVzYf
         BgTz9sBRitsYWLPAkPks7ERRc8kZ5UD0qTNJf1Pxp0+GjES2pVKMd8HgZSyJL+wo3ufP
         AM2TWFOvnLhVxaLbl3NNbntcrivFNGc0FTamN/2kQNwuZDskPADm35tCbwnMcYvIjsje
         WZDA==
X-Forwarded-Encrypted: i=1; AKwUvBwFeY5m868Qfuwe7gclaUw28EpYVbn13Z791I2ufKaK2NMwBYw5z7nvhsLL8CsxELrdK9P88XMZb88Uo2fSyQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYLLK5DbVrwkAidl6ewOB72R15qa4AxlAdcBY5e0cqA0U05UZJSx
	oY8pop49ImG7T9Bm58CksDJT+kukxP2nW1D2Ygl2jtUSF2TvYx/wxHBHvzeTJCmEebppmqKS8w7
	JnxFZYpL72O5fntYHYO8CjhFQdM51Ti0oZk7lltYZ8+1kGalcn8FnK7dJotFFzERnHZlqhGKByk
	A=
X-Gm-Gg: AYBFou23hzxbKM1ZYbUHoha3hvDH8oD3HmxaV0S9ptzpsIf8UhJ2JXHyN1NvrULxmHF
	bAC0Y5uk5OdKkf1kFje1f5Ld8pO8pjpEJMlS3X8zdvNxb5lHjJWvcQGt2DruTp/qR2dFCaQbi73
	ASbArfmdAi1XGwOg+MRtOWfP7quSy/t5EZAukCoTB/T5HDDOHQTdxcdC4UAJ77kixaXl6e+EITk
	SmIr9xs/GUIWUPegSs8VLQM1gznJXuwvBzbKncP7IBNoaf6Gwob/w2z++tBFTmNKKnbwOr6JGm7
	MEVe7F4hVDuPlOKQBuPMYX8L5dLiTntV1GdcXWjZH+yqTwXfwIld3LUFB0H+gWdrB1lqnq0QLpb
	Y4yA670tKmt7ECBB0qS43npMeklXIi8GB2BhL2uUtEb8DQWIl4vqSGgH/ggraOQHixMcxd2b2YN
	Qi
X-Received: by 2002:a05:6102:80a5:b0:7a7:19aa:f0d4 with SMTP id ada2fe7eead31-7d03a651783mr2367406137.33.1793293063913;
        Thu, 29 Oct 2026 09:57:43 -0700 (PDT)
X-Received: by 2002:a05:6102:80a5:b0:7a7:19aa:f0d4 with SMTP id ada2fe7eead31-7d03a651783mr2367399137.33.1793293063416;
        Thu, 29 Oct 2026 09:57:43 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:7fbe:151a:486d:a2cc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e6df961dasm325669f8f.23.2026.10.29.09.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 09:57:42 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: [PATCH v4 6/6] powercap: dtpm: Add RK3588 hierarchy
Date: Thu, 29 Oct 2026 17:56:50 +0100
Message-ID: <50f06fc06f0e83ee59ecf9037071e02344ecd15b.1793288783.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1793288783.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793288783.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI5MDA2NiBTYWx0ZWRfXxf9yy+yxGrFv
 LulWh+WHse5c1yafFmsOi34DbkbR0BCzMPoK3XiSz/AOA76FXeDfkfQdJaYJ8+pusi6ZWLkAkI3
 eSAi7IU5Zwa9cHXk2qU4BpOj6hGjnq0=
X-Proofpoint-ORIG-GUID: 0HTMzyPmvtBSGviI19_OB5QSHBbTNS-G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI5MDA2NiBTYWx0ZWRfX7sEVSkksKYvs
 gFfnOkJkja70G2kERSGNml4maF7zBMZKYFC8KG+C9YM25xlBN7lY3UQyODmOeOuoAJG0s7qZlcT
 vEqs1yfk40h5hBbvbqkG+Br0V4FEMB+7m/wFKMq5HM6Ny8wbF+rlyiImtg9eVSveWw83bfuk6nZ
 /sYfMGQZYj36oaHKa7cFRZxsu2hTFag3AVNfnho6lYcan139jMDou/rdBZwo/L5w1s/JPcRNEoG
 Q8w1uosDlKWa8uXvdkTyz/BxwHFLpn3couG/4s5h6iLf9OxAeY30RS7hKjtPh/M2CH2LUOICqMn
 brtZjNGWjjuAed5+GZLLNJ45zV+Ga9BiVHf+Q0ZvZIwW0e2q67EedsM6K1paseJIqyxuReDTRve
 f2cLQkqpTcT90NTOoJhA7uWnbGAOMTn4IJrHZYwQ3NJyy18nGvxoKmVtliDtBOdJRkTq/5RE1gJ
 dVJbtuWXdArjZvSFBAw==
X-Authority-Analysis: v=2.4 cv=CYmdd7rl c=1 sm=1 tr=0 ts=6ae37b09 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8 a=8Fys3Dm6xgAeGQ2jRPYA:9
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: 0HTMzyPmvtBSGviI19_OB5QSHBbTNS-G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-29_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 phishscore=0 impostorscore=0 adultscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610290066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_095745_486792_CD7E62F2 
X-CRM114-Status: GOOD (  15.54  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RK3588 has three CPU frequency domains, with CPUs grouped into
three cpufreq policies.

Add a DTPM hierarchy for the RK3588 with one CPU node per cpufreq
policy, represented by cpu@0, cpu@400 and cpu@600. Group the three CPU
domains under a virtual package node attached to the RK3588 root node.

Add the RK3588 compatible to the Rockchip DTPM match table to select
the new hierarchy.

Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
---
Changes in v4 (since v3):
- Rebase on v7.3; no code or commit-description changes.

Changes in v3 (since v2):
- Rebase on v7.3-rc7.
- Fix __initdata placement and the RK3588 match-entry indentation.
- No functional changes.

 drivers/soc/rockchip/dtpm.c | 48 +++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
index 5ae00680602f..664764f4b460 100644
--- a/drivers/soc/rockchip/dtpm.c
+++ b/drivers/soc/rockchip/dtpm.c
@@ -62,8 +62,56 @@ static struct powercap_hierarchy rk3399_hierarchy __initdata = {
 	.nr_nodes = ARRAY_SIZE(rk3399_nodes),
 };
 
+static struct dtpm_node rk3588_cpu0 = {
+	.type = DTPM_NODE_DT,
+	.path = "/cpus/cpu@0",
+};
+
+static struct dtpm_node rk3588_cpu4 = {
+	.type = DTPM_NODE_DT,
+	.path = "/cpus/cpu@400",
+};
+
+static struct dtpm_node rk3588_cpu6 = {
+	.type = DTPM_NODE_DT,
+	.path = "/cpus/cpu@600",
+};
+
+static struct powercap_node rk3588_nodes[] __initdata = {
+	[0] = {
+		.name = "rk3588",
+		.data = &rockchip_virtual,
+	},
+	[1] = {
+		.name = "package",
+		.parent = &rk3588_nodes[0],
+		.data = &rockchip_virtual,
+	},
+	[2] = {
+		.name = "cpu0-cpufreq",
+		.parent = &rk3588_nodes[1],
+		.data = &rk3588_cpu0,
+	},
+	[3] = {
+		.name = "cpu4-cpufreq",
+		.parent = &rk3588_nodes[1],
+		.data = &rk3588_cpu4,
+	},
+	[4] = {
+		.name = "cpu6-cpufreq",
+		.parent = &rk3588_nodes[1],
+		.data = &rk3588_cpu6,
+	},
+};
+
+static struct powercap_hierarchy rk3588_hierarchy __initdata = {
+	.nodes = rk3588_nodes,
+	.nr_nodes = ARRAY_SIZE(rk3588_nodes),
+};
+
 static struct of_device_id __initdata rockchip_dtpm_match_table[] = {
 	{ .compatible = "rockchip,rk3399", .data = &rk3399_hierarchy },
+	{ .compatible = "rockchip,rk3588", .data = &rk3588_hierarchy },
 	{},
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
