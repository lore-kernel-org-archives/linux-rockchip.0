Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4D1606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 14:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rAg+ajE+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=HTPDiGzf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=AHTXK47i
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmTVIKScZXT98pFPtT27T8KkCzjCvG0iNREI43uTCog=; b=rAg+ajE+nzRIEu
	aFY0+Oua432QAR4CyF9y1YqwJKzwhoTqoP5AuOWiXJWniczWhvRCDR6W7zAbgthcKkGdTw9lns1qd
	x11CsHGltpENVPNKVa4QZBTXPV+Trce8WpwBcAdzmXrDewBOcYS46mneExSPXS+ufy/S4anWlYCmN
	cdkNZKzNG4ztKLuCzUXnfMKLZIKkw/hznThBu7G6MSzYlSHgyrNhQob0eh+oDoaxBfqV5FR2XbC+N
	KEiNv4UdqeS2YyJN5Bt2i2gB+7JRvEENslW2QhuIqB3xTsg3u+cAr67Du3JkseSsZZY4ndVnMCfrv
	l2lZ+4jl5WF+OcmJH0dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAfG-00000009ujO-1KcV;
	Tue, 20 Oct 2026 14:18:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAey-00000009uPS-1LDa
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 14:17:50 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KDA23M271966
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 14:17:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Yt8E290dh+t
	ISv7RUY4FIj09Mh2VhHp+yj63FHALQjc=; b=HTPDiGzfWdVUe/V1+jG0cjMtZDg
	whabYYTeFVEldVcYw0qR6EO1OYDdKi0ZaVAjAkOznL+PaOwru5/S7K6yF9njp9ld
	17R056nH4/QOBZ9gO2sRZgbXH9yTwvYuJ9+NWwlezCC9mmJsjVkZJCoCT1dVjXms
	lnBjyV8wDGo2eoV9WDnBQ0h8uydGxNYPUM4sNtdAS5siRok672umX+l+eg9L/Bqk
	XqA8wtOC3j4pEowXgV0hvvxN8ltatQaGNrD65uk+FKexRvO2+g5OT5FsG/il4Jp1
	VHMQYiDa/jW4fcxk2eIVxX3FM6Rej5JY+EnUK4HOlVEOekTTTWDrrSuQK9w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4he7hv8hvj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 14:17:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-934963b2bc0so674259585a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 07:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792505867; x=1793110667; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Yt8E290dh+tISv7RUY4FIj09Mh2VhHp+yj63FHALQjc=;
        b=AHTXK47ihTKYmhWIskcZGC9MRVgvh8wwqqkhJ+gDoZR3vSfYWEVYg58lkFqp38iWcn
         1SL9UqGOR6H9/yNnqSeHlMvN5DJiQdYXGcGAbZkZxf8Wb64Weh3ACn5Enc/DGezHtaRl
         vKm5mCJpO/E0DT8xTw0UnB7mfF0GcY78XpLLu5nPEcKGEnbz3jyo0nFvW8X71tgKVSsl
         QHMMgsLgQDYULQrVHFDeoWWymgvhC2Yy+fsuiJGJUtrfpYH/fZXVLnlfJRxZ9E3s9EdG
         QpCXVGBUrVQo5+2sPT1rvT/yHsQUzpWTL7A2I+9aQni6mAKeyIBNhgEIr4rJxVojGgQQ
         jTAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792505867; x=1793110667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Yt8E290dh+tISv7RUY4FIj09Mh2VhHp+yj63FHALQjc=;
        b=y3fGZPei5GFNXCHqY5626rN91YYgxIxkwpwb2dgQTeX/O6aQZ8IDDVGBD03V5TkDEr
         81BudYfL6Jc6qfMeiyM8PwuaTRJQKpV7XmbBCdT9xe5gkMEVl5AfrD+/aJORq0/KqWsL
         JJZGVWmPYo1EPscVc2T3hHZdNb3+WSqDoFGoIG/EtpWG5lG9AsujaBLkib/QjR6/M/yV
         k/kSLiUsX+Jy7VH5da5jgu2NqSbLp4QHs6uW2M2M7RFi8BSFIzV7arvKWRxnacUIyNgH
         BKDKqBVu6Cq+wDGMNnrOqIHJLoQtXwQU/6oWoSAEQeIzs9WhL3C3mSqdwKZkbSy4rXJ0
         qWfg==
X-Forwarded-Encrypted: i=1; AKwUvBzPi9IVsOw2yh2Z6UF6n9uzM2tEP/wzVQ+RqWyM1Wimn/XayDUiNHPljfTMfmogwDfh7eo77dwOZSfyrRZ+9A==@lists.infradead.org
X-Gm-Message-State: AFq9FYID1f88DxUP9vV6ub3ucHtJaJIevNzzvJ0bBc65QmxiLn+NKyUS
	oo5ydl3Zj1gsbRgFzQQky5JZHy4Zp62AhTi+rX8oXjgiEFG5zJUdDlvKQO751nw18oaYpNf3bOR
	3/L/FXum+kleJ+JDGEknJKJpEh2VeLlVGicTp5xLtmo90lTlyyXmwecAbMCENNjnO/r/9j8o7Hs
	8=
X-Gm-Gg: AYBFou3ExVe9/kknzxED6djFH8ptzLOE+Hfasa6uQe8TBsjo2iSoGEqkAnkoFKzVbAB
	ia8rEjyKzGyucLN0k2+ZaFJq559DqZvSLghHwryittbZQSh1AzW/TPyFbXhvydVsHFjXbU5QKLM
	u7cii1J3DaqmrUxZ43y/EDlcOL/4QAAp/Zu8hKX5wFfuBtsyO7fbh2xMpcUzN0YW03LYu4pFO8n
	k9D+g5NlNRV1avvuifVMEONJFkfXEdG1GlXj0WyrI6tbaGfr00qwzNg6Vxbs3kMyA92T/KxfB5+
	H0v/uSN5bAi8gn3rfXZdMD1EYO0FblsOAAlxn9RdT0mR8IpP07C6FvWHiLNjXLamj5HzOOmffqT
	fhP62EplwNdS1gGFhIhQY2QwjaBQ=
X-Received: by 2002:a05:620a:2609:b0:93e:9934:d179 with SMTP id af79cd13be357-93f29d8f1b2mr1783591185a.56.1792505866761;
        Tue, 20 Oct 2026 07:17:46 -0700 (PDT)
X-Received: by 2002:a05:620a:2609:b0:93e:9934:d179 with SMTP id af79cd13be357-93f29d8f1b2mr1783586085a.56.1792505866248;
        Tue, 20 Oct 2026 07:17:46 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:4884:6e9a:d9ff:9fa6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d810043sm6642276f8f.16.2026.10.20.07.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 07:17:45 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: [PATCH v3 6/6] powercap: dtpm: Add RK3588 hierarchy
Date: Tue, 20 Oct 2026 16:16:56 +0200
Message-ID: <e271d25192830ee02fe75bf0d5e698487b1579f7.1792504834.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1792504834.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1792504834.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA1NiBTYWx0ZWRfX0iZ03JrzNJjq
 V6Ks2azlITb2k6NrObadTwSdmWHuPD0KzUy3YS2L93npPYCC6rRfhii9w7Tkky3QVclSpvrfnok
 8DFKIWkwXMDRTJauh2Ostuplf0K8XhvZo7z7eW/CQze9guukhThk9zTuPTRlZBxGFzMx4M/TW5b
 Eq5abseODFs3sIR+SXXHvl0fphUhfFfvFNA3NFJdIHN9MW0T6GiAijXBKSjlp6NPiobCfw1JYMY
 hL8Ax11BqGkQ9w398TNT37D8UMTHnl3D007p+y+JckkPC7G4AFxGzY2rAEY3Vy+EMhKxAAZxFsI
 sPpJQ+A1hmg/kAnGjl5jBFDVWMdBtkJHIFB5OVPYMzo9FYHf3JLM8GOM5k5qUBSG46coxxGwYFZ
 1YKiXhJm0xYuLYj3XogUnes3JEAgmya9DpLe++u/opG5XDq3/yCeWvJjmAWK8K2mKwiA/CjJE5C
 LupZbmz2tfKv9sZENOQ==
X-Proofpoint-ORIG-GUID: aE2022M_GuqLDwQgbTVHcWJrFd_O3olT
X-Proofpoint-GUID: aE2022M_GuqLDwQgbTVHcWJrFd_O3olT
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA1NiBTYWx0ZWRfXzIr0RKtg2oEY
 hR5D1ht7zOrHUIIfYh/MQ3HZIIpRb+pSuvJPTFgsATRz+Gt/+XfRJzKR/330LP1F3yEwmv4KaGh
 JC9qMSxMe5YDSS0kJpRBD3gNclMvj00=
X-Authority-Analysis: v=2.4 cv=NppE4MdJ c=1 sm=1 tr=0 ts=6ad7780b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8 a=8Fys3Dm6xgAeGQ2jRPYA:9
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_02,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_071749_290330_72EC2C6C 
X-CRM114-Status: GOOD (  15.25  )
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

The RK3588 has three CPU frequency domains, with CPUs grouped into
three cpufreq policies.

Add a DTPM hierarchy for the RK3588 with one CPU node per cpufreq
policy, represented by cpu@0, cpu@400 and cpu@600. Group the three CPU
domains under a virtual package node attached to the RK3588 root node.

Add the RK3588 compatible to the Rockchip DTPM match table to select
the new hierarchy.

Assisted-by: LLM
Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
---
Changes in v3 (since v2):
- Rebase on v7.3-rc7.
- Fix __initdata placement and the RK3588 match-entry indentation.
- Add Assisted-by attribution; no functional changes.

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
