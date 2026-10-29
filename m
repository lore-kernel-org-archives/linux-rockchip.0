Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C1D60A2625
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 16:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UfRVfOAU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=K5B4EY4m;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=HJ5rqiJt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WY1RYPf9cIwIsrsHrJVtmP/046mCEcdgH2g8flAO3yc=; b=UfRVfOAUixf/VmKPGJJ0TbNOYa
	FfJaOhnAqPqERXBSexbylGWHJh308EFQnVT5kILuxgQj4q20l9+Ufjc2i8KKagVK4fZQkkXhdCWea
	+Fd41qhRAoDKzQ8L/b9rz7s75DCDyzgBF7bp6ZQdvdYig0GRaZHBUvMrNtoLq/piEFH2/MZn/KQEC
	hr30Nwkl8Zxn03ztGloE1uO7gdfkSXeVDePN65X+O8HvSsZ/UgKRUBXetQMIKJKBmpCD9mxHf8VXK
	fia2wR4xbL7f598IyJTRcAwmSI+R8x8Ip1J7hAqSDI0KoYhzCVQOTQiiLvDr1T0QvDKJKmUvLLFmj
	w4uUeHDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTRl-00000009tWT-09KB;
	Thu, 29 Oct 2026 16:57:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTRf-00000009tOT-13hi
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 16:57:44 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69TGDQIB594519
	for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 16:57:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ytOjkYgyk5L
	lmjFcxh3gPQQdewa7HVP6wQzba4/f+go=; b=K5B4EY4m88mryxZuLbPk7QKXc2F
	+bohx0GPOVwzeoz05M1vtTbY1G/RlSkU0t0d7BmUFdl2FGHmh2zw94EKW3kqyiDU
	M5Q2hQmVUQNKONVnE/q/FqJlsBAdZV2c41/yn58cj0e8XrAwdRE9xBEiJGQmlAcC
	tPP9kVwj2n9rHIP8EuVxpXWvwoe3+PQRhvUWLXI5dL2r8AvwXfC6DI3QV701Kbyf
	Ua7vj1nxum6/ahaYKeBgVjsOzDzlUuecvKAE7aZveMgc0xLOPOhAbFFCJnXLSGsQ
	W9ZG36XnnqtUdzHoyPbA/nPz9LykFPBypu0zpOFzWWKkf03ZSTXkO6WbGtg==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkut3kja9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 16:57:42 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-9902e6f65dbso331404241.3
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 09:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793293062; x=1793897862; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ytOjkYgyk5LlmjFcxh3gPQQdewa7HVP6wQzba4/f+go=;
        b=HJ5rqiJtJPZc+nFSwdka6mgKU8MjQe8e8fsC1HRZmdj0vhjfqtQmd3UfDBeqv4RC33
         e3zD0OeFgNpXhemHwKNcNYEruR4zNftk+lNHGhUmUjdjW3km9aJXQo14roC2QYrH81jG
         +YwG4DFmHSfOI0dtCu6v8j0zdvRe2bpa7WQc/hoGdeT+6tEh3EnS+LV0UjgY68TBcjH7
         676XN7vPf2w5RQLXeCH1zVudBn4pIp+ZGwaNqI8aUT+CGmaHbeuxZE6w+GcXcL98T0Ma
         dexUdwyxZqLlOsMMVjKGpcw3aS5gEM5DaxTJiuDCvUyPpsNPSybTzbbAIa4h5qnYBDGs
         SW/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793293062; x=1793897862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ytOjkYgyk5LlmjFcxh3gPQQdewa7HVP6wQzba4/f+go=;
        b=dJ3QvfqUhbGaRNFKjUHzvTB9w4kd5Idzo6ZXcBkb3fqcaSr/zUHhOJwAYCquAv7M9K
         RJq5xGymdVvlUnjR4jAQxSs9Ap9uz4jd2Fy2tTc/2btNlyrY1YrToZ2iZDeMI3IufgFc
         RfeIFSo8TYczA4kNQqemnEv6il3vik4CfYmgZkRHrX0h8yyyY1v8vZ/dlzxVqiD2ab97
         dr9Z0hDvJ/3NsNMnom7fuVPIvUnq52wm0DoOXaJtV3BrSReUzbMEqZbO7Yf5rDL0qcWP
         IKD+yP2471FGDIcul3kUsMbTzY/JoSw7kDIEmRE6Akuqxj97AdVZsZP93DbXDEb0c0qI
         cH7w==
X-Forwarded-Encrypted: i=1; AKwUvBwB9taLO/L2mcNigeKQ4E/sAVg18KRA7+igjQryvvXlXYzUu4XWzJjzItVkDcan8VaSmPdngVIDeGqXURNQ6Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYLdfgy65T3nVc9zIuVS+5VYiO11xRnh+NI/vhCW2yrVwgniHeDR
	eczjh+wALSCR6BnIr1UvUsDse0mA0ZkCnSaIRewjYFnyMNWvC7Gpm3zjcZMh/25w3OBJdKziRVG
	bS0XV8+iEeW1nAwul7VlVHJirS0EhBLRG7bS2oxv4hZF/osWhFDm42CkLI/4/ysvlyCWbMy3UBV
	s=
X-Gm-Gg: AYBFou3Hft8S/4Fa/v5rAwr9u0yfLMv6QOc/PcbbXRsFouOnAfFL6sNGwhFdtt9f6OM
	cvx5qfz9Viz1a7ijnqroIMQoPsmkp//7YlywFA4IY86reux+WeKToX3rRb1YPZlOf7bcOADWs2v
	oCOf3Qn7+ZKysDyqtPlMDycgwEifPMMYYcGrCQmxCJCVXYffe+wEZngfnINaQh6ZPQgwzMidAah
	mFD2yfBVJD4FNgHhwmnf8lf75VwLk5pR2fpwxMCriIskis2T9LCiyToplC8jU2EClD+xOSB+MNK
	Uikqng0rgV7e3PLwqHqzGjV6trev3+9SK8FpK62QbFHtA6AqWggO7p8p+NyIbzjZmK8kzaZCH5A
	w74VyckyH2lB206SmTu6UhY+2BO9vubXdasvcSl0iCQhDF6YjB+wcVeFhxQt07GaoFdl2PHzxdT
	Hn
X-Received: by 2002:a05:6102:6a8c:b0:7cc:2c29:54ef with SMTP id ada2fe7eead31-7d03a5abb96mr2605288137.19.1793293061850;
        Thu, 29 Oct 2026 09:57:41 -0700 (PDT)
X-Received: by 2002:a05:6102:6a8c:b0:7cc:2c29:54ef with SMTP id ada2fe7eead31-7d03a5abb96mr2605280137.19.1793293061411;
        Thu, 29 Oct 2026 09:57:41 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:7fbe:151a:486d:a2cc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e6df961dasm325669f8f.23.2026.10.29.09.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 09:57:39 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: [PATCH v4 5/6] powercap: dtpm: Rename Rockchip virtual node descriptor
Date: Thu, 29 Oct 2026 17:56:49 +0100
Message-ID: <063f0587a6c951ca57e941ebab39617a0d0a305c.1793288783.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1793288783.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793288783.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI5MDA2NiBTYWx0ZWRfX6ywmEjlfIz6y
 jYkQIsog+ThWemniFiIai4iNgJXtiUCzDTb/l6afPeLJqNzbdtUz3kWnx+G3dzxoF+nq5qECAdQ
 n3UIJK67qrC/AAI/XavbQexmqHXB9Z4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI5MDA2NiBTYWx0ZWRfX34vcZ9h5xHPo
 dv6Pfje4ke5bhJt1vDzlSzS00axBrAW1V7dz4AT+8oDC62r12DACOR4P3LV7Yg/JOPlVsL92n8V
 yWe71fS1Cw3xHvhI8cXkB13bktp/IQ2zDEdKDtLS+6ogjzmWlgWNEtWxoLufP+44aZJgw9O5O9B
 lTzODxfpjVwrwDnuMkC7RTsSfiErWzVXUjT/waH143QrNZ4OdMiwDmeM18UCmCyo6Anki81tIg9
 XPKGaR23mseupFeBxKxBcE2XTjGICTgr4rCV7Q4OM8EpLZ+U57v9KYzPn/JLk6D4h5l4G1HKOBj
 tSaZPhMI7zbkIFDnWN7JiO6hyjdgUj5PNFBDSlVyJN8Wgrk3FsvRfC5bSOV8Ad4g3IL7Ab+eRV9
 3Ex6sV8eeMpa4Znhn8+oF2kgwICc7bOFmEOcGW2yF6++AxKYw6Tb24FM0X6P3thVbMcNInvfXrM
 CJiHYtA1cunbl2I4grA==
X-Proofpoint-ORIG-GUID: DeEmlBRja0W5EzTP47QrOrzjMEoFxPZS
X-Proofpoint-GUID: DeEmlBRja0W5EzTP47QrOrzjMEoFxPZS
X-Authority-Analysis: v=2.4 cv=HYSB3SE8 c=1 sm=1 tr=0 ts=6ae37b06 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8 a=_NZqlvP9bvTAGtRSC3sA:9
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-29_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1011
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610290066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_095743_338530_C23C7CFB 
X-CRM114-Status: GOOD (  16.48  )
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

The virtual DTPM node descriptor is named after the RK3399 even though
it does not contain any SoC-specific information.

Rename it to rockchip_virtual so it can be reused by other Rockchip SoC
hierarchies.

No functional change intended.

Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
---
Changes in v4 (since v3):
- Rebase on v7.3; no code or commit-description changes.

Changes in v3 (since v2):
- Rebase on v7.3-rc7 and refresh context after patch 4 style cleanup.
- No functional changes.

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
