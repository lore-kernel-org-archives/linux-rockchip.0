Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2E1606A329
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 04:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bdFkuyyn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=IiyEcu+O;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=VHrRGZSm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pKqe2Jr8wje+Kl7U+5i4sUb8uh++ojaTFopGq0uKrPM=; b=bdFkuyyn3KwM3EHdnisJrPHq/I
	kGyeAa7nMNilkM8VOD3STW6mW+Nj6LwQkWtxNktkg1qEQUzB5hiihE7Kpsf96rZ+DUgDt0iuG7YwD
	BujljC0tnszwclapZTvenpCYRSHG2g3Hj6ex/bqo1snfxrEEMaWjd04iBWmhzVP1sCsOnpm+9c3YI
	/f865n/p1ERAjhZfiHe9X1heaAguo+tLmCZvUvMRdwVr1nG4unn4iAM+JYjSWADK3yE50Opx1pSyF
	x3Grg38l6jpsMzP1z5KVkY1FmWTYPw3c2YiK/RMktQb+O9g+IHDzFw9h/Ti2AjahZO3obUc5S5h19
	JYNUJTug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO6SM-000000015UN-2Bpu;
	Tue, 03 Nov 2026 04:49:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO6SJ-000000015R4-2EfU
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 04:49:09 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A31eO0w1082292
	for <linux-rockchip@lists.infradead.org>; Tue, 3 Nov 2026 04:49:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JCqczoWRKss
	8snbeoW1OQA5p86RlP9skpTKlIpuQAs8=; b=IiyEcu+OqwEx+AHLh6dxF0HFLuN
	v98LajLChhJP5gTSB9kX9r74mVC9QrqEke9Qvoy3ed90rvutsx8p665rpcGY3QOz
	rObsNdhMw1wXKKCjJUQ54Jj0L7YJh9XG+rnrM0M1/DKI7T/c5BeO+1H9l43OcQAg
	muCb0jxv7fkOZPu79mX/YzDBC3jOm0pCTidi4z6wxi7uB+L4uhNGm5wjXWuw31ls
	O2titeVUNp71mrAKHObPSZ45Fk3C92LDopi6SiW4n8zmMgsBtJWAHsvgoIETBbHB
	J/N6Om7Sj6P2Q+ea2kI8eUsyr0f5QOeLtwtmQcB6WG8EawbK7aY01JWjOrA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq07r1xyp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 04:49:06 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93caf7856ffso756614585a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 20:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793681346; x=1794286146; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JCqczoWRKss8snbeoW1OQA5p86RlP9skpTKlIpuQAs8=;
        b=VHrRGZSmRJsipgtYni3NXUtrJ5Jn3cl/3hHHM11wxonGLnXd6hHPe9ORcCRlhFdxus
         1qjNbeXpOdnKpPoAQ2jmufn1VwVzekDzgdIlXJHSCnDyZRZArTae2CCUSJycGkv/Fln+
         r+a0qjpHLJb9q4oMSVoyhPQXGr0TCv8LNmcvM1n6mlujC93q6yfS4TM8XJam0dC24L6d
         yzhefkKHz5EV6beCu7PF1Tf8DIcARzBaRBYULVp8bnX/INW9gppCMCO30ln8bVrlKj/Z
         rHrKLbiUM+Yz5D+Acpx1wlH3G9md50ebE4dC9lHcKWRtP3PXvgrylDqyGKhEgeAfB+Gm
         /r0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793681346; x=1794286146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=JCqczoWRKss8snbeoW1OQA5p86RlP9skpTKlIpuQAs8=;
        b=zbYmr2yleVzg7ChMpBiKlUi6J5+mBcM1GNujEycBk91VgzCCq0DKFPECK5VUnKR9tD
         GXDdGqvKZJu8YzvoM/mZdaKDeThDwuWiva/Y5RXpn5mLpTalktr2CeznjMYhHtAC3J6I
         EX7+DGKP+EWCA1izBRbc+mbbWgqQHdtdQ8QxFuzPzKdCfgEblTGmI9ftBkN3zvETsabV
         F4D4nSSRWmL21Pp+cbLZ6pvsFHnRgNYp4QdHpTjsmHnbiHaZYLJ5M/uflTf8vIZPFG/m
         noTvhmX8GR7qoXEB0tqmKB+5Pqq5w8eL+XCjgEmhbSfs7XgknrzCZqpq8jYlmo4tqYvK
         A4Xg==
X-Forwarded-Encrypted: i=1; AKwUvBwnflUz1Tsf4nyeZMMZ2S7RAwwec7kSw+M67SK2mGesiPXmgZ83DJlHHwbZHOEfmFI022ow3Rcxx9J61yy0cA==@lists.infradead.org
X-Gm-Message-State: APuU4Z93fnbP+AqBHray8CMWWF+WJz0PmO+s8gK2tVcWOHSQE1hBIjCQ
	ZLtj/GHKmgvj0s5Cd0niG1pmCd9vXuo06iCE0xgtnvb0K1odZRaTJw54qejRnMnAShhvQ5Qs26Q
	3yJqyqszPjtbDgaBDz8wJPgnhBsCgl8ZuZX0nVobAa4R9FxTRIwiF09V0RTsp+p1AYNxC21kBYG
	4=
X-Gm-Gg: AYBFou2bkikC8oDMY0DdACrf6aMHWe4PwH4S/9pF2D5faQRwwz/sMJnH0BdPUlLkXk3
	BQpg54REOon7xUt1Tuo/akQQhtTVeKbpmcLDizY9ZaVStjCCUwbTrWjxcTMT4ULKFjLL1JfY9sW
	S7idVQwQ9PDjx3jewFGxz9Pd3i8BAoN01thGM5Lk+MEKUTLv+onEarYqTNrgo1lZnQZiIQ8o/mg
	c6uWoeV9wAP6jYnZQ8EEp5uz6uYiHDSVDAIONID/C48BE8l9CzYqYv+38c1FscsSEDcY1IqSbe3
	94TTKiFrfXbHOnblbuqJMnvXZuigJPXZYwYbY/3miJ+1/a2tmOrnNqonvkj/zd+JzXcAlGm0FPy
	Z6nEZd/shADcJHFt3qEDRMlFBk8TKp3CI3xV/h/h7a+TqFTm62jmkkzWOJlZideaFUmL5P6K2dF
	gn
X-Received: by 2002:a05:620a:a89b:20b0:945:51c1:c17 with SMTP id af79cd13be357-94551c11060mr930801185a.42.1793681345861;
        Mon, 02 Nov 2026 20:49:05 -0800 (PST)
X-Received: by 2002:a05:620a:a89b:20b0:945:51c1:c17 with SMTP id af79cd13be357-94551c11060mr930800185a.42.1793681345400;
        Mon, 02 Nov 2026 20:49:05 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:8b9e:7797:dd05:11cb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a879fb29sm25685445e9.4.2026.11.02.20.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 20:49:04 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: [PATCH v5 3/6] powercap: dtpm: Remove duplicate RK3399 CPU hierarchy nodes
Date: Tue,  3 Nov 2026 05:48:17 +0100
Message-ID: <f9b6ff8250f27e117facd372735b6c1f46e74926.1793666444.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1793666444.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793666444.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: x6TAVA4i4WgY3bmsEK_KCnmjCWHZgaik
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDAxOCBTYWx0ZWRfX0JNSi+2N1Atd
 TQz/j/l+A2uov8u2ga4FPLFFHxCFa9w8lrldmnoi+Sun+YCSCHGM+DsE7MUNh/B/PQ5wSbtBaPl
 G9yQ+uZ9b1PYlEGwVs2QQtfm65mMnFnyPzR+tpgNIUKNn2Zsc2KDsgdz1lut/3SmI/h7Kht6o3Z
 /+KNaOW2it+uh+JpCHuEqCuNfEYcKCo3Gy1lTeiaQQm4HyywmKXpmrJYHZHRXVRCDJ3EMyGhMMR
 kL7J4A/8qddm/M9JC1rvAzlAuxWYFgDmrqI3gd1415jY8Yv237m8Vfztl9ig+wsRfFSaIT8xKgf
 sSaJfD7s9amcLsMoamwglWXnZsbKn9CeEs4iGCBQ/2GSFetWpZmdx5G0LL0pot2ePiBU4QdmXkv
 KPSx5KupoSx2sss9rSkGLRXUydNEmLswh1hfw0vcK8OwvVhGlvNpIWScdlb767gH3n0AqnONRy/
 cWFH35oKAlu2SA9NWtA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDAxOCBTYWx0ZWRfX9Lof7KKViefq
 xP5epuCaxuP3/8HcTbqGB5lHWhaLf42c6WKO5cSUYhlnZWxjpj7vB3TZ72V3cBeo/Vlb2IwiiDV
 MP7fLX/qsh0m76ZgSzhUY5dCeFdgEmk=
X-Proofpoint-GUID: x6TAVA4i4WgY3bmsEK_KCnmjCWHZgaik
X-Authority-Analysis: v=2.4 cv=NZlzRGD4 c=1 sm=1 tr=0 ts=6ae967c2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8 a=7CQSdrXTAAAA:8
 a=EpzjDTW3ywHV2UopgxgA:9 a=bTQJ7kPSJx9SKPbeHEYW:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_01,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_204907_691283_1E365384 
X-CRM114-Status: GOOD (  17.03  )
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
Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>
---
Changes in v5 (since v4):
- Add Reviewed-by from Lukasz Luba; no code changes.

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
