Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE19606A32D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 04:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Jzi1DJZt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=JfuvBzZW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=jf6cYtdG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cC4d+2vi6wAIh8AjEwjZaR+Mqrj3RoqiAZm/zsUkXZo=; b=Jzi1DJZtgi71UjcTg4pyQ+SXcZ
	YfeKzcHN4em8c4f/rvwwKF2/uLTVHEbKjRzzqcnADFb5aiaktJyG9C/jQQO2+GZjUmcxqnSUV6pcE
	lFNTgsOZxspAwh2YRrZKTLa5Gg505X5ZdAh73RkrL+EtrehHptD/qBSa9RCDFoVpI3NgjsAqKArdJ
	k1DzTzehy/S30YFyZ+1TOjKJBxMl2ucMsH3DUGbB4Iun2JZu01OEmS/A/hoybCKfWFIIlstb2NXU1
	fLHaxvZp5+LOqK4K/u6qk0qsIMpPQRqVyyeiCp0TUbRg9kD5zb+VK4Pvt0t+Ie2gI+kIR5JYkvAsx
	72oMpqsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO6ST-000000015fV-1gyW;
	Tue, 03 Nov 2026 04:49:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO6SN-000000015W4-2lr9
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 04:49:16 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A32Buo62106691
	for <linux-rockchip@lists.infradead.org>; Tue, 3 Nov 2026 04:49:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=7upwgKb79Qw
	zvuf7T+5r1o67QI1wWo0sKlpFyeIZyUQ=; b=JfuvBzZWpOyroViKIwsL2V0fmIh
	acu0P2X29m1aWJ4Jn4qNnJ7CFIPHDvjKOYdDArJ/CUZ/N6E5m7SmANdcPtuqAEhl
	ISz2zgn2Zw7NlCkwQs99Nz44gIs5RsqyB0tSuU3Os+qpBdYF13XqyP0JtA5UR0ag
	KGf/IbuMnS687UXoGnKzrvp3fk9q1w83KUIr2i2mt+mKMw7ZrZQevV3h7UzgAIOR
	l3V1NZDP7LjGGCgdUfmAHlhhsxi8UGitR6COavU2yF3t674+GqOLSy5NUbcNVgGy
	6Tf7MsaxyO2Dy+9czyal4Eyz8gk2YO6zO7X8IFq6qJcemN+BnmZkPexn6oQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq6m98fqp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 04:49:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93e92aad34aso722216285a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 20:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793681350; x=1794286150; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7upwgKb79Qwzvuf7T+5r1o67QI1wWo0sKlpFyeIZyUQ=;
        b=jf6cYtdG6JmP1JjZ0Qf71U5uDB2prumClgXjHGGHxzYFEeDESSvHlcxwA3jLuL4DiW
         1px6uhkjZ44z/miqHwMnkDW6WjHj3yODFyXmOOHCMo4f1bdU4eRpdBgym56xJ/UOQyfv
         lYko97V2zhO0UbkKMYjDdXcEqxB75unqfpDPI03CCHgFJRdR2KQfQY0BbZqPHiyQTQHz
         dD0QP1N++sVY6lY5QrCNPidgJcBtoR7kENdCYB3aaE+9PL2CzxyvCtTqe8la3HQBojEA
         sKH71RgrVYTVGeN80DvFu3QI3X+wplDMLGfiZ4Z/l7riJaJor33eDLqdgiXaMHC1Zj1z
         Xwyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793681350; x=1794286150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7upwgKb79Qwzvuf7T+5r1o67QI1wWo0sKlpFyeIZyUQ=;
        b=JcubvKgcUjFdtGySyrte0N9e+/Tcqe02xRax3Mw4Xn+GUcBzpgUuORPQBKWBFgpwnQ
         95DaP716q43q3K2SVcLBTJ9Qb0yqRLybJGoG9qKE0kgrPEJOQVrS20crlYZVngbB/t5t
         I0+R0//f4ywTbbAZ+1OeAMbuqDExXqFtHdEwZXZRVr1hIUmGzxmuY7ZIYfMIwaX5y/gw
         aG3dEnaHVHUPx8Gw8c7uFXmWRKV/4lnEYiHCJ30YK9b77t9hEW8MJpoWtubu8SphW2vr
         Z70+ZTAJTljKp8ytztHpuszuamYRDCIJr+1c3n3VCgLArUjm7Gl52Lu1c0oh9TBosFyo
         3csQ==
X-Forwarded-Encrypted: i=1; AKwUvBzs9CyFdUNAH7yUjMGaTTwkAewMZ2WNNCgjq+9DgUCR3Jvg3DC/KCd8LkWvoHDVtMocEJx0ilhv5Isv+yV+Ig==@lists.infradead.org
X-Gm-Message-State: APuU4Z8QQTxq66ppwJaMnc0FS2chaXXOsDbkhhPQ/fkJv/UTfH6NFI00
	MQgDcGcrcabfgESy/SydXgdWeWe0HURUn9yKXRwrkmkTWZSjtuMZEn/6zxkU9BiYyQ4Lw9ZuG4W
	H/Vopr1R2FS1F+Cnwwqq1KGg7NYLQq+4y5J8Zbgn1OH4Ge8EDR9rqTRD5sksIx3x1IEkGpZc6cF
	U=
X-Gm-Gg: AYBFou3Mh99f3L4UyhqxHyjLei50YoPpZ4o2ZtEXyGmDpApwR3DV5b2XGOlaeo05MFs
	t9teEs0e3WEfwTJYpaEc5kDYxo4KjBt9ODN1euqbvNKX5ReEs/W0FZu8WRA45ks8tQv/2QYmrpj
	+u+DlzbiwwM3gLW7lvZU0TMYgLFeKszwvpmtZ+2RW7FzE487GlHi4rk14S+BDYfzS7rdseXgIeL
	YrDHwXsB2Tp470S+d4otWg4BAGnBouLXAz2EDvdpvHYVU24Iokbj8hBsjaDei3HNOemiVOwU1zJ
	m+KRIL6wC2Ti3XCp2MsKd27Aa6+fxTHBAVmXb7SFvZWmSptBVnk9zXWR4jUQF/Axed1Y+4foMbw
	Gw3JFUtkX+H0s8E8nIkYBBQp5BaOJ/lTvm/rxsmclzz0ynwkDG2c/bB17NrPGTFBwKaFJrJxgMi
	zJ
X-Received: by 2002:a05:620a:6844:b0:93e:c12c:4400 with SMTP id af79cd13be357-9442172bcecmr1859912585a.77.1793681349882;
        Mon, 02 Nov 2026 20:49:09 -0800 (PST)
X-Received: by 2002:a05:620a:6844:b0:93e:c12c:4400 with SMTP id af79cd13be357-9442172bcecmr1859911485a.77.1793681349430;
        Mon, 02 Nov 2026 20:49:09 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:8b9e:7797:dd05:11cb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a879fb29sm25685445e9.4.2026.11.02.20.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 20:49:08 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: [PATCH v5 5/6] powercap: dtpm: Rename Rockchip virtual node descriptor
Date: Tue,  3 Nov 2026 05:48:19 +0100
Message-ID: <d58bc47b95fad310cb506ca01b59cbc54f0d8c75.1793666444.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1793666444.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793666444.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: gkrWhL9EnPQ0dwgnD_wH0if5w2rRKE03
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDAxOCBTYWx0ZWRfX5qD6UYYzNaA5
 92Oxer4jY+ByXXGVKZeXRanO7IhqXQOuZWaf5QnL+/Ff3ugnJW3m/We8BGjgfl4i3vCDl4RbrVq
 LpiNbzVQFU9WD4w6BAttFzve5udVjb4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDAxOCBTYWx0ZWRfX3agb8FDnJzuW
 jeNVZUNBvBTosKoxsqUlGRqhcSlhqu0Zfyt71dLgBXc1NqXqu4AADD1b5pC3/1HM9qtqoDYzk14
 4v8tQ6mq1suYBbgIrQD0oLVSpuRryox4knN/X4b/h6eL6SmrNre/EoS8r+/klkqIBZ9OBeTjRva
 2BOU/0eqwIx9qfAyHC3ysgQGsBo5K9DWk7AXSg6cdSynPy+4fh4n9MPGXOUE7NwsZoPGquUZYBU
 nyzCWOdz442P13rKfbn+vUBbh3CazWvrvWJdHBYiXMVbK72KEFKrM+bjXVTK4oBKqt0GEvUYQaX
 ISeM2K3b9qFoPmlghDcPLc3Q/igCgUpvZdQ21OL+PFyAzi37T5K1IlN5pqFUlW3v/h1M417b/IX
 R1Avz5PxaJRiogxXplZ7cYmbKXfTiHRR0Fsc/s7XP454i6Zq7tkXhvDcQ0mYs1zIzRuZOm5RG9f
 eBqzp9KvXWLBzB8IXRg==
X-Authority-Analysis: v=2.4 cv=C7B8WgP+ c=1 sm=1 tr=0 ts=6ae967c6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8 a=7CQSdrXTAAAA:8
 a=_NZqlvP9bvTAGtRSC3sA:9 a=IoWCM6iH3mJn3m4BftBB:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: gkrWhL9EnPQ0dwgnD_wH0if5w2rRKE03
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_01,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 phishscore=0 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_204911_864769_D9B02358 
X-CRM114-Status: GOOD (  17.43  )
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
Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>
---
Changes in v5 (since v4):
- Add Reviewed-by from Lukasz Luba; no code changes.

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
