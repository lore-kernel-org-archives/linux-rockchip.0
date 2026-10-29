Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED7A60A2620
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 16:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rsn6Sn8M;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mmlqFbrV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=DTShVfET
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZGQVu871tcEPh4m5mGsewwD8shVxmXxpUszlrznw7DI=; b=rsn6Sn8MLSTCfTizMh8HflDBfb
	/Ausk5aR2FQqvx3CgMqX6/AkGjx+M5Y2fI3iU1zTh6jQEGt5tg0NCrh2Vgtmb9X4wDNksSQzl4KiH
	G7c2mF0T+4agdWpSydS+80zCVWzbQ5MmQPQEGHybtl9zbdQz2rrpP+z0spWjSUBXxiRRR9J2ZUxft
	tPUn8PgxyKEUi/usuNCU87f5PS8UYIxqUJurpURF0UXDofkzZs3FW7cLELsnY8zY8BZiUpz2+ziPC
	abBnVHxp7NlTS1CjbxMT3kd8wR8VBvPBdoCV7USlC7z/T6Xt/NXMqIF8h30MN7TWxr9OUtMCvjb1e
	pKAngXGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTRj-00000009tTs-3qx2;
	Thu, 29 Oct 2026 16:57:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTRa-00000009tJ1-3iJU
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 16:57:42 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69TGDdGi3234449
	for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 16:57:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+xV1RGjg5KU
	41r+LCzwCOMC6Im+qEpwWkzwUNymeeJg=; b=mmlqFbrVGnojNptRIp2Y0FfR73/
	wVV/o5gTl0sCSMYCHjuF3Dx6l0i5+dOf8jR6p65QP1QMFMPWqGx0EMXVgd6dbauH
	gdakoBqo/m9dYUGh5xACXlDUC4wCrqj39o2uJq7laJlMZUyh7kOcGa0InIpCK165
	6WlNbRcScA8H2Sjc/YpxU4HfKK8QEXNqvo77ljPo43uBpqhXz5cAhR9QkF4qQxMX
	5svf28nfmCH6fqPn7+p8M49RKPZmG7OQ7HilRO3lwccPNt/JQ28mwIbGboEUWZDF
	xEd7ajB1dSy8HHKOBP6FSUd4j8X9GrXE2IGybfIwRnCbmvDY8UBT9I6lL5g==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hm31b207r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 16:57:38 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-98bcae867a1so607154241.1
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 09:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793293057; x=1793897857; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+xV1RGjg5KU41r+LCzwCOMC6Im+qEpwWkzwUNymeeJg=;
        b=DTShVfETqXyGoeqV9ZWZ7pqE0GUdmmAWSY6OxQUdYCoNJ3rsxHZcMer+42UdgPTuxQ
         kyT1ce88dPY0WPXYMgC0xdqdc8/G4lMWYATtlkOd0ydPTkSz3MpaPJhqleT39HobHl9l
         rm3Eo2DdTNgW+tafgzPIYI/V4q9aDAor6XC4yK4LjaixElh6CM99dDEkhg1Z51i5ecVE
         wQ3B+sgOQMfQ8Msh27OhLCkAEN3T+MS+zl3q9zB3gMNMSHnmqFZSzwx1MrMkrjo+EjcA
         /sVH8i1VgN/YiPBrTiW189XlqrJd70F7kYbJbGTk0GdiKCZm6TepRQcqGXOhLjfyj5NX
         csGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793293057; x=1793897857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=+xV1RGjg5KU41r+LCzwCOMC6Im+qEpwWkzwUNymeeJg=;
        b=2bm62PWDcodfLRigZkYaAZNE2kEHwGdE3dIB6l5okgTSTkDSbb6kvQex7spLqG82Pa
         5rjesNi6dbCI1/G5cAllFkT8A6+/q0hOtP3+CpDs2/3GO4U85GaUtE2MUiGoYk2t2UIV
         OJ8/oWuRLNiT9XNMkhFWIPhrkRkVGBPo6aXfjPoJyL/qRsPpjliKs1LcLB3EnhUI45ni
         0DDWCmi7bUxPx4y2cNczZKO4ND8tMytHJpQceIihrIcMUmBCVJHmqA8CfMiK7DZH0Ld1
         PUbq6jFMQJnyvbCNdT9yai71wc1flXgT0FrrFLlZAi58ERhzaHGu7ms2dP+VqA0e+uL+
         5vyg==
X-Forwarded-Encrypted: i=1; AKwUvBzgtlAio0xs5M5xXP17zTg8/kU50VA9GZhC2FL2WLgWPirskW+DNxqXgYSAz7a2qsTqQxC1LpTyKq5U4nQftQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYLinQ3CNHPuny61MXnDqgDhZu5OIzNpg6+bl3OqM+87YGJTNQ0d
	QKgm2ohNKIBJsxUludUUl8EnbghAx3GXEMGuFEwx+R0wJKMDMiWEZghNJeBLSBSfDCReb5R4jjL
	0KpIzFCBo4VOgSV3NPRLzEz5PlUrkiFcAclxvGUQxnkMaspuJjBhBaEvR0Q2XxI7fgeEw9NtZaU
	Y=
X-Gm-Gg: AYBFou0gCsMfItvGESbN/TgZ78BvVbJYe388XjerEKNbQwGb6UYlc55EyklQa+uB4K9
	nnIsQUGpuzUPlhdEbMz3lLQm8s2Jtr2tJHPGwmWYaNZ71d5v/CiZopKjt3E1wOOB4DcTrgxKf85
	kBADUE6D8jHPoGxp1Emxn6dKBqNTfmgeKlKP19e5gWJaVCCED8mMTYuxzPdDpFAf1lf7K1K3ID/
	Xf1i4ZW5k5R0QSALiOo5/5Ab5mosakBNy8FmFxJgjlN7n30ZGns3Y+g+myn6rCiz/T32Eor6WjZ
	bLXsFxIuYPN9/G6qZUbNQPUaEdaDBAU/GU1o42E9TGJ8P+oQ0iJMmzErBMslSi4v2gMqp25AgYH
	mK7Ys9YwJWknz/38XEObJ3mKVQRGgAJX9lO56ibpLHdBgwOitJjHUmlkyyFc0TnawxISP9MHKhj
	Zh
X-Received: by 2002:a05:6102:1483:b0:7cc:9d82:61e2 with SMTP id ada2fe7eead31-7d03a4bec64mr3117846137.13.1793293056999;
        Thu, 29 Oct 2026 09:57:36 -0700 (PDT)
X-Received: by 2002:a05:6102:1483:b0:7cc:9d82:61e2 with SMTP id ada2fe7eead31-7d03a4bec64mr3117824137.13.1793293056511;
        Thu, 29 Oct 2026 09:57:36 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:7fbe:151a:486d:a2cc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e6df961dasm325669f8f.23.2026.10.29.09.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 09:57:35 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: [PATCH v4 3/6] powercap: dtpm: Remove duplicate RK3399 CPU hierarchy nodes
Date: Thu, 29 Oct 2026 17:56:47 +0100
Message-ID: <141ad25a137cb50516bd92f9a13dda7ec940f6da.1793288783.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1793288783.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793288783.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI5MDA2NiBTYWx0ZWRfXzBmYuYfsNw/a
 tx+Qd08wdTFz5swpAt775V4ACNNLJ7PmtduMeK8wZ7+s7JN/s1mz0hEBsKGMgQ7FJiNGuD99e83
 nCZw4tNY6O2wrrfy/nmqX3N6SszYGBI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI5MDA2NiBTYWx0ZWRfX+ZweQr/YOYVx
 muVBxa7lm1s5e3jJdY11FQxDcluAeDJWMUB7sB+7X6f23Qeb4jKuhMYYWuWcXRPEvpOePEV+bev
 NDwS1BiX3d0ge/0fZNygbc9OcEePQLkpInWwLEffgdWCF5lckKWJmx7OIYfjCYifPbQnrmhQAHF
 LdRnaoK3zROcipyN3OICz4FQkAPnMwDTFLgy/82q3oP6/F4AMBZOB7UdXIMHSPDGMBtTZVZiozR
 XZuwDOGLhqgP6p/1TMzpRtsMWN5aC3S0a6W+0XqJlmVGSWrkbLBVAcuwS1VV4utCVH8N0UmI1Vi
 gjZIimrLk9caWKZKKUHf/PJ/X8Tvf0igaBmZQoiZ40kPlPhagdAsqBmZEyDxqKTXbJRzY1fJXpA
 L67VlMC39lGUfph2+RLYp8EjhSE0+0KIV/rAHWXHXfMHa+Xo9pHxrVQdkEiFRfqWNH2Rgpoe7A9
 4OYPNma+VsHG3LSQZOA==
X-Authority-Analysis: v=2.4 cv=A8T5rKWG c=1 sm=1 tr=0 ts=6ae37b02 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8 a=EpzjDTW3ywHV2UopgxgA:9
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-GUID: NA3Ig7myVzZvlAUtENidzzpGrK4fdIeK
X-Proofpoint-ORIG-GUID: NA3Ig7myVzZvlAUtENidzzpGrK4fdIeK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-29_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610290066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_095738_998263_DEB4E301 
X-CRM114-Status: GOOD (  15.92  )
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

Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
---
Changes in v4 (since v3):
- Rebase on v7.3; no code or commit-description changes.

Changes in v3 (since v2):
- Rebase on v7.3-rc7.
- Fix Rockchip match-table indentation here rather than in patch 1.
- Clarify that the existing backend suppresses duplicate registration.

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
