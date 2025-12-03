Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBD88D12D60
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 14:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dakqqzIMwOgdP+TldACsWH0lU1OGSqoDhdnRTCzTSzQ=; b=uqgCWZ2A++VxwX
	2waHF01NRCyVWXmMm3LqpH/Chwx3/OQQX+IN8DamxHE7b8oG7E/91Awtvfn1OHXoopHiEpXYQrB93
	wuUW9DnrV77y/u6ZGAYxglFmtwzTTVACVJ0/12yaWVJIqrjPqrl2QGtTTs37JekruGxcu4FgF3e4m
	lyut9XJALHSdp4kBFP6tIZmzlil7IDHsHrgR/mh/bLlItBKP4inj56QIBNQHqbLWFDrr5z+wSal8H
	mL1P8LlKpNYBypN6/aXcL2NFCyw8w7iUsD3HBe7ME0X7tDwGMwFCPXYh84dL49rAceuONMACQDKHX
	F4jy9BUHwd54Wd3gRhog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQnf5-00000006dha-1aL4;
	Wed, 03 Dec 2025 14:16:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQnf2-00000006dgH-2gWR
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 14:16:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B39Nu3d2114369
	for <linux-rockchip@lists.infradead.org>; Wed, 3 Dec 2025 14:16:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=J1NXnOkK/Qmx+2DM8A9HAXXFuC7IO83iTO9
	9OYxwL7k=; b=T4Nvj6PW7LMBuAD4C3nSKwZb/0hdzFJFRE0hQLWgBJ3r1BEdDpv
	sEomukT3/gukYo22s1tVbVTNdg7KfUx7L1bFYAOlRLWzm36RfqFYM5BwNN9tkKAP
	kMCWkESEvpCwB75lnXbBuUJQN9BEah5MwIYa66YsAjY4Ymtw6PUFOypQsVEv+nRl
	+cFANBqT77/uoPovBH0DDSMuq6wHOpdXhzchK1KqO7pvG0nizQRDs9JF8C74us3Y
	jAYTnlHrvzaf5YLczsKY4ooIFKVL1EIM5llfzMAP2oUFADdO8MeHX1AmJilrKjSQ
	7l3UAqxTNn3lmk9im1tH8fXtTxhyX6s3KMA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atjhpgwc3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 03 Dec 2025 14:16:50 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-93721362924so2554751241.1
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Dec 2025 06:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764771410; x=1765376210; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J1NXnOkK/Qmx+2DM8A9HAXXFuC7IO83iTO99OYxwL7k=;
        b=DseAKXaQrf7O98i4wLEZ5j+8vDIXgy6rxGPmwWr/rpnbLon7T+V0NTx/RPqFsveVwO
         cKAgVsZjr0HN24Fvhv2KP5XDuDtPD2i8cB4EztwprkcAhRryZkfwOI4nyo97pKewvjHK
         aY4uJFttHfYo/agd6xDcfgoJF86eS9VnwuYS1rMI0F54h9faU8SXwxCNXrm+NUyTo71R
         YD+kbSy7h+r3VPlaROaaZ5gTux9RGeVfJruH+dYAqJifcpcMEOs3aKbonLwKSg1v4PlT
         zRbNrjC9rnEAhJxOACQoHTD6knNwXmVhQvEgkiA0i29FsnNi/oLn+glYxFOAjmtuxk0Q
         cv9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764771410; x=1765376210;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1NXnOkK/Qmx+2DM8A9HAXXFuC7IO83iTO99OYxwL7k=;
        b=ksAmtP+9+HlNhCCtF1P1MbLqA5oPraG8cyLUraeKFTwETDyAG8kqST6FenDswxApId
         wIMHssWNKN3XDpqHt3nOZfxIV/WzrKpZ/vgLWhwFx9OKZMb/CZJWNn2zQNfNHp2uXm8t
         E9nNGdklG9SirZP+ecallwxm0/DNzCdiZVxFiiEhQ/di60V7Pg1lBr2581xRj2A1gU/U
         ufJzEeWv3T0TJAphjgLYCdwFgt85yrXHvs96oTaUDMeVCc5UsynWLVOMPI5xRNWChZuS
         QobQqHaw6xvp+mPJRSnXA5N7vxSkPCQMjGB39xFFiquIIXfPOTm02JUmZhB+3VH9ZtXM
         Jl6Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+7x/G1sN+R11R8qii1y4LUn1lxfwZpCLFZIJkHmmvr6BmDjm5j1LQwJe1h0WfBa6sx3PL5z6JpCYOWrcDUw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1lB7aSvuMMTtkMUyba+cubmBBfT/7b/DH3z+fU1YY1PmA/LD6
	WmA4ezZB3zuNPlQChUt/EmsPYtsmFDMKFBGrJX6eXvf4hoyP3zb0MIngTsSLPJ3ed1P8SNcDrjr
	/8mOhzBETMwg4tPVFRI1KsFOPGPKiSBGS6ixlw8ER8mP3Pmfew/yELhxeT1CfkeqlsbigkXPnpy
	U=
X-Gm-Gg: ASbGncsh6jMRK5AXwZM96b2hRZIG5wzRQnFUT9KD3WlujYHR265YRUgeAp3JSeW87N0
	Nlc8SYYNVIlKz3tcR/MZHC6IuNXwEqDgsmDAgYnjkImVVGNi2HBlM25L46TZOxpzkeT0EIELDXt
	3u+Sj8DZfsC2yPosfFk/V1e8oF60DcDo3TKmXlrxauEzwhXFzNeNZ9hcbizc+hCwbct8XPXdA2J
	G2T6Cm4/un0ri3xU0p9PM+TTl7t+D7lTxZIl9rEwNwjgK5igboWUnq1K+EiCjdkRHR6niBtlB5u
	iSriZ/v/4j9b3He0HemrAeAuKiLs+kBYC0Ch/EY/YORmUoTElDEHv7MhWQfqQXDNYu7++BWAPIF
	AIcyQhiSWB13nNeIdGlDacP0v/A==
X-Received: by 2002:a05:6102:41d0:b0:5dd:89d5:6e3a with SMTP id ada2fe7eead31-5e48e25c303mr433164137.13.1764771409968;
        Wed, 03 Dec 2025 06:16:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE6UKsgel+cVaxSmIsAYQXFf/qA13T7aiQPxMIWubRyO4RrLdF4k4o44RBgxUeSLImnvFEcyw==
X-Received: by 2002:a05:6102:41d0:b0:5dd:89d5:6e3a with SMTP id ada2fe7eead31-5e48e25c303mr433111137.13.1764771409564;
        Wed, 03 Dec 2025 06:16:49 -0800 (PST)
Received: from quoll ([178.197.195.159])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792a8ccdfbsm54150365e9.14.2025.12.03.06.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 06:16:48 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
        Bill Wendling <morbo@google.com>,
        Justin Stitt <justinstitt@google.com>, linux-sound@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        llvm@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] ASoC: rockchip: Fix Wvoid-pointer-to-enum-cast warning (again)
Date: Wed,  3 Dec 2025 15:16:45 +0100
Message-ID: <20251203141644.106459-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1505; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=e+l7lF/YaKWFOMlUcwXbeT1V4Fhpjbegvq3plNh6NC4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpMEZNh7FzwkphP987MNUPpfj891znTilxMoU1S
 hQpihSCWvKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaTBGTQAKCRDBN2bmhouD
 1z5+D/9AxU46a28I3HA5bV2iDbqiXwWVMuhAz8E7pGzces9eaJ9jsJWAiEZAQgDRFpf3xiNV60c
 jZESmF8c8nlzcjuZL6PVkLkIHWCI/e4vhym9/KBwVzzTOfgfTGBIdaaOZL819ewTdsv7Ys6z+go
 nj8JRixBSMCQUZFCpNmImlMyqvhsY8BW5J+Y7QE9s4PH3y4kyfcm6WRQ3uFL1+qLceX2x3mWBEE
 itsfGehzJzQVc5UrvZmYrmPPGlZhbxuRAEhsSPXFrI1/R47/7XHKlVRracnxV2YTxSXu15JdcvQ
 Yjfftl/HUci3zlqiA6YFLdbWQoNIZkHWiOJvz8k6Td4Du+qkI/pvXGU3sdac9FzYxKa2+HtcoOd
 Ppe28+7LWcDPno5IEUr+sv1EYp23K7i72un1hT7zJRB55NleInx4UNGj6pDn36CTBomGj+DDlp5
 I8g83A/kec1J8b1TyYOd32f+i8991NII2igO8nQe7aDVKaVhGpTThxglLySzZcrGFZHUleUv4QG
 yxEkbDf/fR4uLjPnzogYIeku43EVHxXUzgdYpM/eNx514fcH2jd7S7ugf6jG2sr18EygsWb3qki
 34KA+Kd7sFi4y0ffJJXa7abnQ+TddMEK5Oyl/Uq4gfoqvrDSYYO2MgTUq/Rgc1DFuJrGqoOB5fC 0Zxs0D5QfcpSxnQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=JJg2csKb c=1 sm=1 tr=0 ts=69304652 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=FPK7cjBCgYbqzSTDLBmM0Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=big8P1NimtFHDgLWMZ0A:9
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-ORIG-GUID: c4R2D1apAzOZrqwe6XVDsQ6gM7oMp7-R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDExNCBTYWx0ZWRfX1ZDIPFMBF5Xj
 yvMmHasVcgpts3pvr54pvnp/wLIIDMmFpoJ57Yy+cdzx1uCQgTUgM/9b7jZbrG2YRImqelOq435
 uO8GWi1ghOJudCxOjUP4bVwTqOvS0tUkjP63UY/Vnyi2RlQ9dp0CyiV3+5M2BP0JDGRfGVMDPYy
 OlSozNY+RAOhoxFjckw7tyERGAq4INAc2O5xrUCWyIsyK8P3yifExLZPloD7FSDkLWnjAA6UesY
 zDMAn4eDiDeJ+nTIDULX6RAeQoGOuSRx/DSYJFMPdhNF2gq8PWPYNKmH7G/7mJF8S6dm1mhAG4h
 euYEdLlGVuMnLKf05GrHOXO1hC4quCrV34/jw3EalKHkGRwzghF9y+jDvT1IG6q7+Xa9zGb7i7e
 uT97TX7CWljPtFIzyToVsypNQQXt2Q==
X-Proofpoint-GUID: c4R2D1apAzOZrqwe6XVDsQ6gM7oMp7-R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-03_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1011 bulkscore=0 phishscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_061652_807817_B1F3DC2A 
X-CRM114-Status: GOOD (  15.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

'version' is an enum, thus cast of pointer on 64-bit compile test with
clang W=1 causes:

  rockchip_pdm.c:583:17: error: cast to smaller integer type 'enum rk_pdm_version' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]

This was already fixed in commit 49a4a8d12612 ("ASoC: rockchip: Fix
Wvoid-pointer-to-enum-cast warning") but then got bad in
commit 9958d85968ed ("ASoC: Use device_get_match_data()").

Discussion on LKML also pointed out that 'uintptr_t' is not the correct
type and either 'kernel_ulong_t' or 'unsigned long' should be used,
with several arguments towards the latter [1].

Link: https://lore.kernel.org/r/CAMuHMdX7t=mabqFE5O-Cii3REMuyaePHmqX+j_mqyrn6XXzsoA@mail.gmail.com/ [1]
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 sound/soc/rockchip/rockchip_pdm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index c1ee470ec607..c69cdd6f2499 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -580,7 +580,7 @@ static int rockchip_pdm_probe(struct platform_device *pdev)
 	if (!pdm)
 		return -ENOMEM;
 
-	pdm->version = (enum rk_pdm_version)device_get_match_data(&pdev->dev);
+	pdm->version = (unsigned long)device_get_match_data(&pdev->dev);
 	if (pdm->version == RK_PDM_RK3308) {
 		pdm->reset = devm_reset_control_get(&pdev->dev, "pdm-m");
 		if (IS_ERR(pdm->reset))
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
