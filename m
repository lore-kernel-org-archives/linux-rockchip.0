Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066FB606A320
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 14:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=K3xeqxQc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=hcTrGPNU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=jjsS06Wa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gM9UCia4IhK1AlsQX0x8t+OSPR2pgVLx4ubiyd+GE+0=; b=K3xeqxQcEQdDaR
	xVeXLequoIh0tyVQPAy4KfiBtPHunb5EqNGI2kfofd+en85xgXATwwDU7MhLFEGj95QPuKVwLmn6g
	xH8WzPe3hEL5vGhkldUnAEAczKGkJatlY8CRKSNC8hFrkWew5M+wnigxMmdkPrwCdtJEFQV4EmBaG
	kixIRDykzletijpnClCOMOcOykF87ypwl4gbsAgh3yLdHZmAErHLQVCTI8ybeazHnPcHZA/AeMEch
	8CI9NdV57KDjArw0Che9lTL9W/h09yoPKeQkSwWFRibJajNKgAtzjf0G4hm0kH7b9LV/NEzJz0J9K
	whbt4a19SWg4Rh+JdpTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAf4-00000009uVl-0hZk;
	Tue, 20 Oct 2026 14:17:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAev-00000009uLI-0T5j
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 14:17:47 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KDA4lD2845836
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 14:17:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=n7DbUgQ8rye
	h44YrJLt+uF5RlaWXXwkVODv8Z3SazcA=; b=hcTrGPNUH2Hj3Fc2hJS8su8yFlI
	HbcYogo/SaBpREI4OwXPgfME2NJR7nFxPWXWdSATTbr28hbvkVG/Kk8ZfUfTBKyE
	zPnsQmwilk5CfLnryHo4QRXgt0UL79aCMjddkRyFQ0Xe7Wwd9Tu8rZbqo6KEZnpO
	iFQ6cC9PnzRpjLjyqicWPBuqrakOHuCH7AFl+2cFmrslQtfxfrt+dW+87KgiDDUk
	V/fMKc/fe8Ej5qKiaeZ7wd4Q/ycIGvmzbd4dHAAMK0jOpz6qvQvfzD69nFxFVeea
	Or6LVty4F9smWFY3XlahNW5pF8XWI4Oqmd1tzLfDG1cw8V8OkAVJsddLR7w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdw5natmk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 14:17:44 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93f54f15b9eso47227485a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 07:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792505863; x=1793110663; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=n7DbUgQ8ryeh44YrJLt+uF5RlaWXXwkVODv8Z3SazcA=;
        b=jjsS06Wahpd2FUuUUEit71QpwEBEz8+FA2iJJYPr5gQLgJlFnIiZCdGUmuVGul4cea
         aPELMuK+MiEnI60FLiQiy/EPBCYACzjpP0Zus3o/I6asi3UzDG2MuPQPZV3qsjoQd1yy
         yXYCigmTc7zg09GXYASW3WAo5bPyT6uh+dPOvGKOtJMXIygjvx6QmoNuAN/cSQzOOdSU
         C7q2lFHMJ+kcb7w4H4cOmjctoBIJTBrWfJYLWU+KxRuK8nPI4J5cKiHmf1V3iCyGp5DP
         aDE7D2n8oj3gpibJ7iOE+V5s83kmlL86EcnyohbJGUK7DtIwGXSEhgjCxKJmdx185oVd
         T1aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792505863; x=1793110663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=n7DbUgQ8ryeh44YrJLt+uF5RlaWXXwkVODv8Z3SazcA=;
        b=Pq2HgdOhD/7bLeB9vt8rMISc405/GovkzlLYhYgwgiNlGpoSY5tY7JeyqQguj4f+AR
         dvWrAiUfShWvbXoaBRVRJ4aer58qWDprYxuCKUM3hJONxL1KHr7RGQ/3pBfmAf4r63dN
         Y28kWzp7CV2X01bEDyMp4ifKaKPrw45RMPCKEqwkwZfuADKMxgk3DzRMrcY/RxNZIWNA
         7pybfKR9vb1lDcdkEAVZZwdYxWLotFHkIbYhoEPm5OzzP9XQeupWEWX5mE6G3plfT93k
         PZWtEDCNBo5VP1PQ8+sCOITTcDj9GaaJaj//hHoFlClCzcgoRA2E420I4aSayh59AaSv
         /3YA==
X-Forwarded-Encrypted: i=1; AKwUvBxTCThRbY1xSo3VzX+bSjKTcurE4SH685aBLlu2in22UCTgkyjIsmknXfMuPaMbTX3jhkeQuFQqqCSfk7JqKw==@lists.infradead.org
X-Gm-Message-State: AFq9FYI4Raeex76+ZtOeLMPR7/KsvoIQbGqZmSWuBEPRtbv/dhTWrhpA
	Ybz0U1D3XmihidSLsmjJhHCUn45ZmZgfPu9gWxjJ6BdyiiBG6BvYAErMGZQesvI8G29Fr+S1ahN
	FqtN1ssUx5aobWMmwkT6kxGBxsl9dWX0/tDWvoxkO8NcY21ikWGQDnMoaSafuJu+nn5UC4rPHAR
	g=
X-Gm-Gg: AYBFou1WE9osofDJr+U/iCJQZZq5ApA6tND+wdZBTgLp7qHDlCVZm3eMqNNjnjH3yje
	JP2ZBGkB2xcg49QKL5px9nu13lT0Sm3IS6gcafSyPTUg5JQGdDFSxLYSi3ImI8whjxZOCbztV1u
	gE9xotQQGRbl1gAaoY88guXyG3kmpbzI1zxaqk+rzc0YCIkH22mw4XG8okqgfTc2mTxhleohmxu
	Ohn+vjmAwdL17HkfhUtEwHP+csCYhhvJv9XsaZ4jgxGSk3MPpy9E6X8l6ZJbTqzT8d3y7On3sdp
	2DEfu7i9xHHMRWJxdQW3FWRl66clCEcjQ2riD6bCqHrRnwuez2NA04/kyNSN9eqhOB8Xj4zPslt
	w/wbBlTZa+WbePDGZWZweGte7+fc=
X-Received: by 2002:a05:620a:2893:b0:93f:3523:cbb9 with SMTP id af79cd13be357-93f3523d70cmr1372914785a.33.1792505863001;
        Tue, 20 Oct 2026 07:17:43 -0700 (PDT)
X-Received: by 2002:a05:620a:2893:b0:93f:3523:cbb9 with SMTP id af79cd13be357-93f3523d70cmr1372907785a.33.1792505862311;
        Tue, 20 Oct 2026 07:17:42 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:4884:6e9a:d9ff:9fa6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d810043sm6642276f8f.16.2026.10.20.07.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 07:17:41 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: [PATCH v3 4/6] powercap: dtpm: Use generic powercap hierarchy helpers
Date: Tue, 20 Oct 2026 16:16:54 +0200
Message-ID: <91ce02128e3a9a69cf9227fa2b5c5a19e5b529cf.1792504834.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1792504834.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1792504834.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 3weuMkGml33vHIL17VHHPEpKxWLtTAVe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA1NiBTYWx0ZWRfXyt/rJfPF8zLR
 CyIZ5wwCxH5HxNv9C5L++EqKJVJSnuYSyLCMAdixDjMmJ01HSfKZOm/KO1X+0yd6Gr2ZB+6iswf
 aKXI7K3IfE3TRdPWypvv33MYG1+KeLOIitwGgrt6wU7foSERq8hk4azEp0msFtoDw/C9baLw8V7
 FopkCRN7teRfDKfFFJ0wrkOCvUc1OpWkOzExZ3t68yW468kdawoPjwgNNAIjjai2JU6bQnTUWau
 q1jEzdtZJujh6/WCPM7rA5D3Gn6FzU9OhbmzZlmAtIKwA94mUI1CpJwGVtzEZsIobqbcQU5GDAg
 9FSWj4jZ8Ye4hdv8uLzRirqf4+Z8G9YxxYVd86tXVir0QKHmnVW3hSOzTAsuj2Q8M1yYaT+eEVY
 LC2URXKhxKWcR6+GLlN4A0OvUZ5wi5d89bBzZxEQ6Vn4uEnKQgDbIZpLtHSMsSYJXX+f1XK8zBF
 a2j3ZHPn5Y+52gSddiQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA1NiBTYWx0ZWRfX0omN4ESyvp68
 AVHmjef71upvyAl2j3UHZhz0zjiLd42E2vJGQhe8l10VA5USIM8jAAdhtibwVdyjW9TKaIlaBfD
 IDxL6cr9TyG4MV1EdHetMXGNdcRYqyE=
X-Authority-Analysis: v=2.4 cv=VI9IDNPX c=1 sm=1 tr=0 ts=6ad77808 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8 a=PNS_9xEdTJF3v_BdtpwA:9
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 3weuMkGml33vHIL17VHHPEpKxWLtTAVe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_02,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_071745_206987_0BBC51CF 
X-CRM114-Status: GOOD (  30.46  )
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

DTPM implements its own hierarchy creation and destruction logic while
the powercap core now provides generic helpers for this purpose.

Convert DTPM to use the generic powercap hierarchy infrastructure.
Duplicate the platform hierarchy before creating it, and use
powercap_hierarchy_create() and powercap_hierarchy_destroy() to manage
the DTPM zones.

Add DTPM callbacks to create and destroy the zones associated with each
powercap hierarchy node. Adapt the CPU and devfreq backends to return
the created DTPM instance and use the node name provided by the
hierarchy.

Convert the Rockchip RK3399 description to struct powercap_hierarchy
and keep the device tree path as DTPM-specific node data.

This removes the DTPM-specific hierarchy traversal and destruction code
and leaves the hierarchy management to the powercap core.

Preserve best-effort creation: an unavailable backend returns NULL to
skip its branch, and setup failures are warned about and skipped rather
than rolling back independent zones. Invalid node descriptors remain
fatal.

When the representative CPU is offline, find an active policy through an
online sibling whose related_cpus mask contains it. Hold the CPU hotplug
read lock during selection and setup, and initialize the zone through the
policy's active CPU while keeping the hierarchy-provided name. An entirely
offline policy still has no active CPU to initialize through.

Assisted-by: LLM
Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
---
Changes in v3 (since v2):
- Rebase on v7.3-rc7.
- Preserve best-effort branch creation using the generic NULL result.
- Find an online policy sibling for offline CPU representatives and
  protect policy selection and setup against CPU hotplug.
- Keep generic API behavior and documentation in patch 1.
- Fix __initdata placement; match-table indentation is handled in patch 3.
- Name setup callback arguments and remove whitespace-only lines.
- Update the description and add Assisted-by attribution.

 drivers/powercap/dtpm.c         | 177 +++++++++++++++-----------------
 drivers/powercap/dtpm_cpu.c     |  62 ++++++++---
 drivers/powercap/dtpm_devfreq.c |  22 ++--
 drivers/soc/rockchip/dtpm.c     |  67 +++++++++---
 include/linux/dtpm.h            |   6 +-
 5 files changed, 195 insertions(+), 139 deletions(-)

diff --git a/drivers/powercap/dtpm.c b/drivers/powercap/dtpm.c
index b7a65e543f19..09197fb4f740 100644
--- a/drivers/powercap/dtpm.c
+++ b/drivers/powercap/dtpm.c
@@ -35,6 +35,7 @@ static const char *constraint_name[] = {
 
 static DEFINE_MUTEX(dtpm_lock);
 static struct powercap_control_type *pct;
+static struct powercap_hierarchy *dtpm_hierarchy;
 static struct dtpm *root;
 
 static int get_time_window_us(struct powercap_zone *pcz, int cid, u64 *window)
@@ -191,7 +192,7 @@ static int get_power_limit_uw(struct powercap_zone *pcz,
 			      int cid, u64 *power_limit)
 {
 	*power_limit = to_dtpm(pcz)->power_limit;
-	
+
 	return 0;
 }
 
@@ -412,8 +413,7 @@ int dtpm_register(const char *name, struct dtpm *dtpm, struct dtpm *parent)
 	return 0;
 }
 
-static struct dtpm *dtpm_setup_virtual(const struct dtpm_node *hierarchy,
-				       struct dtpm *parent)
+static struct dtpm *dtpm_setup_virtual(const char *name, struct dtpm *parent)
 {
 	struct dtpm *dtpm;
 	int ret;
@@ -423,10 +423,9 @@ static struct dtpm *dtpm_setup_virtual(const struct dtpm_node *hierarchy,
 		return ERR_PTR(-ENOMEM);
 	dtpm_init(dtpm, NULL);
 
-	ret = dtpm_register(hierarchy->name, dtpm, parent);
+	ret = dtpm_register(name, dtpm, parent);
 	if (ret) {
-		pr_err("Failed to register dtpm node '%s': %d\n",
-		       hierarchy->name, ret);
+		pr_err("Failed to register dtpm node '%s': %d\n", name, ret);
 		kfree(dtpm);
 		return ERR_PTR(ret);
 	}
@@ -434,90 +433,88 @@ static struct dtpm *dtpm_setup_virtual(const struct dtpm_node *hierarchy,
 	return dtpm;
 }
 
-static struct dtpm *dtpm_setup_dt(const struct dtpm_node *hierarchy,
+static struct dtpm *dtpm_setup_dt(const char *name, const char *path,
 				  struct dtpm *parent)
 {
 	struct device_node *np;
-	int i, ret;
+	struct dtpm *dtpm = NULL;
+	int i;
 
-	np = of_find_node_by_path(hierarchy->name);
+	np = of_find_node_by_path(path);
 	if (!np) {
-		pr_err("Failed to find '%s'\n", hierarchy->name);
+		pr_err("Failed to find '%s'\n", path);
 		return ERR_PTR(-ENXIO);
 	}
 
 	for (i = 0; i < ARRAY_SIZE(dtpm_subsys); i++) {
+		struct dtpm *tmp;
 
 		if (!dtpm_subsys[i]->setup)
 			continue;
 
-		ret = dtpm_subsys[i]->setup(parent, np);
-		if (ret) {
-			pr_err("Failed to setup '%s': %d\n", dtpm_subsys[i]->name, ret);
-			of_node_put(np);
-			return ERR_PTR(ret);
+		tmp = dtpm_subsys[i]->setup(parent, np, name);
+		if (IS_ERR(tmp)) {
+			pr_err("Failed to setup '%s': %ld\n",
+			       dtpm_subsys[i]->name, PTR_ERR(tmp));
+			dtpm = tmp;
+			break;
+		}
+
+		if (tmp) {
+			dtpm = tmp;
+			break;
 		}
 	}
 
 	of_node_put(np);
 
-	/*
-	 * By returning a NULL pointer, we let know the caller there
-	 * is no child for us as we are a leaf of the tree
-	 */
-	return NULL;
+	return dtpm;
 }
 
-typedef struct dtpm * (*dtpm_node_callback_t)(const struct dtpm_node *, struct dtpm *);
-
-static dtpm_node_callback_t dtpm_node_callback[] = {
-	[DTPM_NODE_VIRTUAL] = dtpm_setup_virtual,
-	[DTPM_NODE_DT] = dtpm_setup_dt,
-};
-
-static int dtpm_for_each_child(const struct dtpm_node *hierarchy,
-			       const struct dtpm_node *it, struct dtpm *parent)
+static struct powercap_zone *
+dtpm_node_create(struct powercap_control_type *pct, const char *name,
+		 void *data, struct powercap_zone *parent)
 {
+	struct dtpm_node *node = data;
+	struct dtpm *dtpm_parent = parent ? to_dtpm(parent) : NULL;
 	struct dtpm *dtpm;
-	int i, ret;
 
-	for (i = 0; hierarchy[i].name; i++) {
+	if (!node)
+		return ERR_PTR(-EINVAL);
+
+	switch (node->type) {
+	case DTPM_NODE_VIRTUAL:
+		dtpm = dtpm_setup_virtual(name, dtpm_parent);
+		break;
+	case DTPM_NODE_DT:
+		dtpm = dtpm_setup_dt(name, node->path, dtpm_parent);
+		break;
+	default:
+		return ERR_PTR(-EINVAL);
+	}
 
-		if (hierarchy[i].parent != it)
-			continue;
+	/* An unavailable backend must not prevent independent branches. */
+	if (IS_ERR(dtpm)) {
+		pr_warn("Failed to create '%s' in the hierarchy: %ld\n",
+			name, PTR_ERR(dtpm));
+		return NULL;
+	}
 
-		dtpm = dtpm_node_callback[hierarchy[i].type](&hierarchy[i], parent);
+	if (!dtpm)
+		return NULL;
 
-		/*
-		 * A NULL pointer means there is no children, hence we
-		 * continue without going deeper in the recursivity.
-		 */
-		if (!dtpm)
-			continue;
+	return &dtpm->zone;
+}
 
-		/*
-		 * There are multiple reasons why the callback could
-		 * fail. The generic glue is abstracting the backend
-		 * and therefore it is not possible to report back or
-		 * take a decision based on the error.  In any case,
-		 * if this call fails, it is not critical in the
-		 * hierarchy creation, we can assume the underlying
-		 * service is not found, so we continue without this
-		 * branch in the tree but with a warning to log the
-		 * information the node was not created.
-		 */
-		if (IS_ERR(dtpm)) {
-			pr_warn("Failed to create '%s' in the hierarchy\n",
-				hierarchy[i].name);
-			continue;
-		}
+static void dtpm_node_destroy(struct powercap_control_type *pct,
+			      struct powercap_zone *zone, void *data)
+{
+	struct dtpm *dtpm = to_dtpm(zone);
 
-		ret = dtpm_for_each_child(hierarchy, &hierarchy[i], dtpm);
-		if (ret)
-			return ret;
-	}
+	if (dtpm == root)
+		root = NULL;
 
-	return 0;
+	dtpm_unregister(dtpm);
 }
 
 /**
@@ -528,27 +525,16 @@ static int dtpm_for_each_child(const struct dtpm_node *hierarchy,
  * description of the different node in the hierarchy. It creates the
  * tree in the sysfs filesystem under the powercap dtpm entry.
  *
- * The expected tree has the format:
- *
- * struct dtpm_node hierarchy[] = {
- *	[0] { .name = "topmost", type =  DTPM_NODE_VIRTUAL },
- *	[1] { .name = "package", .type = DTPM_NODE_VIRTUAL, .parent = &hierarchy[0] },
- *	[2] { .name = "/cpus/cpu0", .type = DTPM_NODE_DT, .parent = &hierarchy[1] },
- *	[3] { .name = "/cpus/cpu1", .type = DTPM_NODE_DT, .parent = &hierarchy[1] },
- *	[4] { .name = "/cpus/cpu2", .type = DTPM_NODE_DT, .parent = &hierarchy[1] },
- *	[5] { .name = "/cpus/cpu3", .type = DTPM_NODE_DT, .parent = &hierarchy[1] },
- *	[6] { }
- * };
- *
- * The last element is always an empty one and marks the end of the
- * array.
+ * The platform description is a struct powercap_hierarchy. The private
+ * data associated with each powercap node describes how DTPM creates the
+ * corresponding zone.
  *
  * Return: zero on success, a negative value in case of error. Errors
  * are reported back from the underlying functions.
  */
 int dtpm_create_hierarchy(struct of_device_id *dtpm_match_table)
 {
-	const struct dtpm_node *hierarchy;
+	const struct powercap_hierarchy *hierarchy;
 	int i, ret;
 
 	mutex_lock(&dtpm_lock);
@@ -571,10 +557,18 @@ int dtpm_create_hierarchy(struct of_device_id *dtpm_match_table)
 		goto out_err;
 	}
 
-	ret = dtpm_for_each_child(hierarchy, NULL, NULL);
-	if (ret)
+	dtpm_hierarchy = powercap_hierarchy_dup(hierarchy);
+	if (IS_ERR(dtpm_hierarchy)) {
+		ret = PTR_ERR(dtpm_hierarchy);
+		dtpm_hierarchy = NULL;
 		goto out_err;
-	
+	}
+
+	ret = powercap_hierarchy_create(pct, dtpm_hierarchy,
+				dtpm_node_create, dtpm_node_destroy);
+	if (ret)
+		goto out_free_hierarchy;
+
 	for (i = 0; i < ARRAY_SIZE(dtpm_subsys); i++) {
 
 		if (!dtpm_subsys[i]->init)
@@ -590,31 +584,20 @@ int dtpm_create_hierarchy(struct of_device_id *dtpm_match_table)
 
 	return 0;
 
+out_free_hierarchy:
+	powercap_hierarchy_free(dtpm_hierarchy);
+	dtpm_hierarchy = NULL;
 out_err:
 	powercap_unregister_control_type(pct);
 out_pct:
 	pct = NULL;
 out_unlock:
 	mutex_unlock(&dtpm_lock);
-	
+
 	return ret;
 }
 EXPORT_SYMBOL_GPL(dtpm_create_hierarchy);
 
-static void __dtpm_destroy_hierarchy(struct dtpm *dtpm)
-{
-	struct dtpm *child, *aux;
-
-	list_for_each_entry_safe(child, aux, &dtpm->children, sibling)
-		__dtpm_destroy_hierarchy(child);
-
-	/*
-	 * At this point, we know all children were removed from the
-	 * recursive call before
-	 */
-	dtpm_unregister(dtpm);
-}
-
 void dtpm_destroy_hierarchy(void)
 {
 	int i;
@@ -624,8 +607,8 @@ void dtpm_destroy_hierarchy(void)
 	if (!pct)
 		goto out_unlock;
 
-	__dtpm_destroy_hierarchy(root);
-	
+	powercap_hierarchy_destroy(pct, dtpm_hierarchy, dtpm_node_destroy);
+
 
 	for (i = 0; i < ARRAY_SIZE(dtpm_subsys); i++) {
 
@@ -635,8 +618,10 @@ void dtpm_destroy_hierarchy(void)
 		dtpm_subsys[i]->exit();
 	}
 
+	powercap_hierarchy_free(dtpm_hierarchy);
 	powercap_unregister_control_type(pct);
 
+	dtpm_hierarchy = NULL;
 	pct = NULL;
 
 	root = NULL;
diff --git a/drivers/powercap/dtpm_cpu.c b/drivers/powercap/dtpm_cpu.c
index 21355db6419d..ccfc97e96e66 100644
--- a/drivers/powercap/dtpm_cpu.c
+++ b/drivers/powercap/dtpm_cpu.c
@@ -16,6 +16,7 @@
  */
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
+#include <linux/cpu.h>
 #include <linux/cpumask.h>
 #include <linux/cpufreq.h>
 #include <linux/cpuhotplug.h>
@@ -189,22 +190,53 @@ static int cpuhp_dtpm_cpu_online(unsigned int cpu)
 	return 0;
 }
 
-static int __dtpm_cpu_setup(int cpu, struct dtpm *parent)
+/*
+ * A hierarchy node identifies a policy through one of its related CPUs,
+ * which need not be online. Find an active policy through an online sibling
+ * when necessary. The caller must hold cpus_read_lock() and release the
+ * returned policy with cpufreq_cpu_put().
+ */
+static struct cpufreq_policy *dtpm_cpu_get_policy(unsigned int cpu)
+{
+	struct cpufreq_policy *policy;
+	unsigned int sibling;
+
+	policy = cpufreq_cpu_get(cpu);
+	if (policy)
+		return policy;
+
+	/* The hierarchy's representative CPU may be offline. */
+	for_each_online_cpu(sibling) {
+		policy = cpufreq_cpu_get(sibling);
+		if (!policy)
+			continue;
+
+		if (cpumask_test_cpu(cpu, policy->related_cpus))
+			return policy;
+
+		cpufreq_cpu_put(policy);
+	}
+
+	return NULL;
+}
+
+static struct dtpm *__dtpm_cpu_setup(int cpu, struct dtpm *parent, const char *name)
 {
 	struct dtpm_cpu *dtpm_cpu;
 	struct cpufreq_policy *policy;
 	struct em_perf_state *table;
 	struct em_perf_domain *pd;
-	char name[CPUFREQ_NAME_LEN];
-	int ret = -ENOMEM;
+	int ret;
 
 	dtpm_cpu = per_cpu(dtpm_per_cpu, cpu);
 	if (dtpm_cpu)
-		return 0;
+		return NULL;
 
-	policy = cpufreq_cpu_get(cpu);
+	policy = dtpm_cpu_get_policy(cpu);
 	if (!policy)
-		return 0;
+		return NULL;
+
+	cpu = policy->cpu;
 
 	pd = em_cpu_get(cpu);
 	if (!pd || em_is_artificial(pd)) {
@@ -224,8 +256,6 @@ static int __dtpm_cpu_setup(int cpu, struct dtpm *parent)
 	for_each_cpu(cpu, policy->related_cpus)
 		per_cpu(dtpm_per_cpu, cpu) = dtpm_cpu;
 
-	snprintf(name, sizeof(name), "cpu%d-cpufreq", dtpm_cpu->cpu);
-
 	ret = dtpm_register(name, &dtpm_cpu->dtpm, parent);
 	if (ret)
 		goto out_kfree_dtpm_cpu;
@@ -240,7 +270,7 @@ static int __dtpm_cpu_setup(int cpu, struct dtpm *parent)
 		goto out_dtpm_unregister;
 
 	cpufreq_cpu_put(policy);
-	return 0;
+	return &dtpm_cpu->dtpm;
 
 out_dtpm_unregister:
 	dtpm_unregister(&dtpm_cpu->dtpm);
@@ -253,18 +283,24 @@ static int __dtpm_cpu_setup(int cpu, struct dtpm *parent)
 
 release_policy:
 	cpufreq_cpu_put(policy);
-	return ret;
+	return ERR_PTR(ret);
 }
 
-static int dtpm_cpu_setup(struct dtpm *dtpm, struct device_node *np)
+static struct dtpm *dtpm_cpu_setup(struct dtpm *dtpm, struct device_node *np,
+				   const char *name)
 {
+	struct dtpm *node;
 	int cpu;
 
 	cpu = of_cpu_node_to_id(np);
 	if (cpu < 0)
-		return 0;
+		return NULL;
+
+	cpus_read_lock();
+	node = __dtpm_cpu_setup(cpu, dtpm, name);
+	cpus_read_unlock();
 
-	return __dtpm_cpu_setup(cpu, dtpm);
+	return node;
 }
 
 static int dtpm_cpu_init(void)
diff --git a/drivers/powercap/dtpm_devfreq.c b/drivers/powercap/dtpm_devfreq.c
index fa71285dee60..a783601fe74e 100644
--- a/drivers/powercap/dtpm_devfreq.c
+++ b/drivers/powercap/dtpm_devfreq.c
@@ -144,7 +144,8 @@ static struct dtpm_ops dtpm_ops = {
 	.release = pd_release,
 };
 
-static int __dtpm_devfreq_setup(struct devfreq *devfreq, struct dtpm *parent)
+static struct dtpm *__dtpm_devfreq_setup(struct devfreq *devfreq,
+					 struct dtpm *parent, const char *name)
 {
 	struct device *dev = devfreq->dev.parent;
 	struct dtpm_devfreq *dtpm_devfreq;
@@ -156,23 +157,23 @@ static int __dtpm_devfreq_setup(struct devfreq *devfreq, struct dtpm *parent)
 		ret = dev_pm_opp_of_register_em(dev, NULL);
 		if (ret) {
 			pr_err("No energy model available for '%s'\n", dev_name(dev));
-			return -EINVAL;
+			return ERR_PTR(-EINVAL);
 		}
 	}
 
 	dtpm_devfreq = kzalloc_obj(*dtpm_devfreq);
 	if (!dtpm_devfreq)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
 	dtpm_init(&dtpm_devfreq->dtpm, &dtpm_ops);
 
 	dtpm_devfreq->devfreq = devfreq;
 
-	ret = dtpm_register(dev_name(dev), &dtpm_devfreq->dtpm, parent);
+	ret = dtpm_register(name, &dtpm_devfreq->dtpm, parent);
 	if (ret) {
 		pr_err("Failed to register '%s': %d\n", dev_name(dev), ret);
 		kfree(dtpm_devfreq);
-		return ret;
+		return ERR_PTR(ret);
 	}
 
 	ret = dev_pm_qos_add_request(dev, &dtpm_devfreq->qos_req,
@@ -185,23 +186,24 @@ static int __dtpm_devfreq_setup(struct devfreq *devfreq, struct dtpm *parent)
 
 	dtpm_update_power(&dtpm_devfreq->dtpm);
 
-	return 0;
+	return &dtpm_devfreq->dtpm;
 
 out_dtpm_unregister:
 	dtpm_unregister(&dtpm_devfreq->dtpm);
 
-	return ret;
+	return ERR_PTR(ret);
 }
 
-static int dtpm_devfreq_setup(struct dtpm *dtpm, struct device_node *np)
+static struct dtpm *dtpm_devfreq_setup(struct dtpm *dtpm, struct device_node *np,
+				       const char *name)
 {
 	struct devfreq *devfreq;
 
 	devfreq = devfreq_get_devfreq_by_node(np);
 	if (IS_ERR(devfreq))
-		return 0;
+		return NULL;
 
-	return __dtpm_devfreq_setup(devfreq, dtpm);
+	return __dtpm_devfreq_setup(devfreq, dtpm, name);
 }
 
 struct dtpm_subsys_ops dtpm_devfreq_ops = {
diff --git a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
index e71f315fbb6b..222d9098cc98 100644
--- a/drivers/soc/rockchip/dtpm.c
+++ b/drivers/soc/rockchip/dtpm.c
@@ -11,26 +11,59 @@
 #include <linux/of.h>
 #include <linux/platform_device.h>
 
-static struct dtpm_node __initdata rk3399_hierarchy[] = {
-	[0] = { .name = "rk3399",
-		.type = DTPM_NODE_VIRTUAL },
-	[1] = { .name = "package",
-		.type = DTPM_NODE_VIRTUAL,
-		.parent = &rk3399_hierarchy[0] },
-	[2] = { .name = "/cpus/cpu@0",
-		.type = DTPM_NODE_DT,
-		.parent = &rk3399_hierarchy[1] },
-	[3] = { .name = "/cpus/cpu@100",
-		.type = DTPM_NODE_DT,
-		.parent = &rk3399_hierarchy[1] },
-	[4] = { .name = "/gpu@ff9a0000",
-		.type = DTPM_NODE_DT,
-		.parent = &rk3399_hierarchy[1] },
-	[5] = { /* sentinel */ }
+static struct dtpm_node rk3399_virtual = {
+	.type = DTPM_NODE_VIRTUAL,
+};
+
+static struct dtpm_node rk3399_cpu0 = {
+	.type = DTPM_NODE_DT,
+	.path = "/cpus/cpu@0",
+};
+
+static struct dtpm_node rk3399_cpu4 = {
+	.type = DTPM_NODE_DT,
+	.path = "/cpus/cpu@100",
+};
+
+static struct dtpm_node rk3399_gpu = {
+	.type = DTPM_NODE_DT,
+	.path = "/gpu@ff9a0000",
+};
+
+static struct powercap_node rk3399_nodes[] __initdata = {
+	[0] = {
+		.name = "rk3399",
+		.data = &rk3399_virtual,
+	},
+	[1] = {
+		.name = "package",
+		.parent = &rk3399_nodes[0],
+		.data = &rk3399_virtual,
+	},
+	[2] = {
+		.name = "cpu0-cpufreq",
+		.parent = &rk3399_nodes[1],
+		.data = &rk3399_cpu0,
+	},
+	[3] = {
+		.name = "cpu4-cpufreq",
+		.parent = &rk3399_nodes[1],
+		.data = &rk3399_cpu4,
+	},
+	[4] = {
+		.name = "ff9a0000.gpu",
+		.parent = &rk3399_nodes[1],
+		.data = &rk3399_gpu,
+	},
+};
+
+static struct powercap_hierarchy rk3399_hierarchy __initdata = {
+	.nodes = rk3399_nodes,
+	.nr_nodes = ARRAY_SIZE(rk3399_nodes),
 };
 
 static struct of_device_id __initdata rockchip_dtpm_match_table[] = {
-	{ .compatible = "rockchip,rk3399", .data = rk3399_hierarchy },
+	{ .compatible = "rockchip,rk3399", .data = &rk3399_hierarchy },
 	{},
 };
 
diff --git a/include/linux/dtpm.h b/include/linux/dtpm.h
index a4a13514b730..79a34d5923f4 100644
--- a/include/linux/dtpm.h
+++ b/include/linux/dtpm.h
@@ -38,7 +38,8 @@ struct dtpm_subsys_ops {
 	const char *name;
 	int (*init)(void);
 	void (*exit)(void);
-	int (*setup)(struct dtpm *, struct device_node *);
+	struct dtpm *(*setup)(struct dtpm *parent, struct device_node *np,
+			      const char *name);
 };
 
 enum DTPM_NODE_TYPE {
@@ -48,8 +49,7 @@ enum DTPM_NODE_TYPE {
 
 struct dtpm_node {
 	enum DTPM_NODE_TYPE type;
-	const char *name;
-	struct dtpm_node *parent;
+	const char *path;
 };
 
 static inline struct dtpm *to_dtpm(struct powercap_zone *zone)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
