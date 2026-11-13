Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C93B606A33F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 18:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UWU0qwth;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=I9nM5+IS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=aCjoSJT8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=yzv3H2Ukb/gHf1GWdp5aAUdanF1g8m40gqfPCNzM0Ho=; b=UWU0qwthi0VuGDCd0kBcxWjmNw
	BGW21vWZUb/IHxlekqybBOdri57aZM9W4v+k1IhRZ/CM5As+50uWAM5Uao4CQFr9QUgT50l1FCo4x
	TCDsnttzDWUbf3jfMgGKIhHMVQPCfccPjB04pfOsQru7x+LiPlKqo2aiF3blengaokrFjP0CH8Ipf
	/QcrpgdyrUjdx13Gl9VGrDTqCDWPW91+QGIxRhAamGklZxOqQKita5AqTRyCsZQoUcnOUrbcgQ0A/
	GP38FXYldBuHylDUEZqWMZsSsrtWsV33TwhNzcJfKC/i0nl0zXUDNsz1xe0HCifxZwJ7Moxlp/2U6
	OgB+sH/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRwOu-0000000E0ww-3cNt;
	Fri, 13 Nov 2026 18:53:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRwOk-0000000E0rO-2A4e
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 18:53:22 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADFR0hP1011372
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 18:53:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=cwxAI3XOBCEUSdqA7JlE7nLy5CSrUv3dWQs
	I3XESnAo=; b=I9nM5+ISNqJ+v7xR4xPn4lKqp+FdLYNKSvCrLgsn1d0OcenQ8mK
	VJG50aMPTY7Kqt2XsxQiv/pNXcCQS4Uomn5oOe4GB5KRwRBGQCsMXvl+csE1UFBm
	OsUr2g907A6KldtokdWkdKKrAhLdD5KPAj2YMvma4FszD9DRyoA3P5NMtwIpj7kO
	7rX1I257LOuBicMq/sXqunWqQ7oheOKb2VhpZgc1bbH1HpCYIhjQND0Y8R2jZgja
	yyEkO3BD0I+W33iDraik2L1AwSrCsum34vpxB5OAXmS24CewP4vc2Ite1UVZdTPB
	SzYsYz8toXsOK5iOpnnc3ccQDfj2bUkqQMA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwkfdmhg5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 18:53:17 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93f26dd2165so435367685a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 10:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794595997; x=1795200797; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=cwxAI3XOBCEUSdqA7JlE7nLy5CSrUv3dWQsI3XESnAo=;
        b=aCjoSJT8107dbmtUtZ6xE3cmquqNfp2yDLsAkUeHWOwgMa/pGrs5lOh6oNK8g8aocM
         6nWGbtEPPCtphUpIpcvNZ9cyXCxIHnqpwvpntrWBeWsQ3Ed/GR8bVIqUiiClCARrfS9/
         hU+Vi05x+56tJhbVU5U881lG+J9x+iF/UOPbjmdxWwJAco63N6nEJnMYW2skIHdd1pQ0
         EcXoJvqzwdNh1fxKzUPrQ2X3G4Qk1zVCua1BXmPwnp64MxAfJVdZt0sIRxeDe80COk3/
         qB50Q1xK/YEl4+dzVcNioiYdf7xr9pMYYxYBwNMg89TT3Qd8awtnDR92O7zs69T7Va6b
         qcJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794595997; x=1795200797;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cwxAI3XOBCEUSdqA7JlE7nLy5CSrUv3dWQsI3XESnAo=;
        b=RGv08xneEOr+zv5ZJhDqKJZlBvZoXnBUyVh/4TrVsWsuVOzkEizWZublvmA0q1ikWl
         eaXSSXMKhJrGkKnJJQmTZb0EyWP/D62PMhrwAKeyVXVgdbI/WmrHonUkBcNgXECaVYbs
         Bzd0uKLGW7XHfVNehQOtKUWS0Aqnn52oVENl2lKUrCQ5JyKYWOK0V3GI7Cmc7Iy2vURI
         2IAmZU1wMmNWR7utHNMncoVIbOQU8xylrAYCEvM63x7CWz/YiWyvkbVMd/j+arSUievt
         sXIQ+laNSLNKchxg8FnuURFVwlJcsEHxwojF/w+MynM4gAq53JddQtinKeus4ab/NhDr
         l/dA==
X-Forwarded-Encrypted: i=1; AL+hErEOSxjHCPzBJKWL/Y5BMwvHzBwdjHJE4kTHjF9hWBLMqDrBEMoaET8hy8RM9nuoevovxIiv23YfFqWOdNth6A==@lists.infradead.org
X-Gm-Message-State: APuU4Z+wijiK866QZvyXCFGbDtNsISTlWLMNqORsPDTyv/WgwDJ0v8Kn
	IXQGrgZQ1Tx3WH2gevN3cspQQ0ui7zMNQzGD4hUjTGX1S0KMao7Vy9fxEszAcvOW4lWIbOxqq4J
	A2Th+FiNfLcNOsGMOc5O/Ergg7SkVzYM0axXhk2Zs+DPXe8uCTiiLu+9y+ha9Mr0Z2rSbBIe7D8
	4=
X-Gm-Gg: AYBFou1faUD8PhTDVZCuthh9SKfb9qdx3nTZznlI+rW7FHQXNLWAQ18NnCQboB7d5Ig
	LKy09YKKA6punTXSqHJIiWuyYQ2Bah9euF1ac0SktFU50uCENMJrxmtkMIbQISja1z2QPlp3lkW
	HOPlZd+03Pfz44eDDrJvwu4W/VT5hmSDhBADWcaW32FPFKtjfIj/ukrtohObqsBUtFUxvdPYSWc
	y4gwzkEKP5cbbpxJG8u/1yZax4Vso9Opz52vFkRVjVTCUzpw9UrkqIy0SPWAiM9amzheu0PNDv4
	RzwnxjTB3G2NzUGrHUDx/NA8xcTwcUMAyBsMH1mdNoJCB3M/ByODNGjhGigvvQZn0Ap9j4vt0dE
	JIo6c+xp9Gg7rb8kR+7/dF1YGoAw2EAsIOJ7fKYg4TAGyukUl3LMJbJWgSBEMMg==
X-Received: by 2002:a05:620a:394b:b0:943:f31a:c0a8 with SMTP id af79cd13be357-9494bb76dc9mr579498985a.17.1794595996865;
        Fri, 13 Nov 2026 10:53:16 -0800 (PST)
X-Received: by 2002:a05:620a:394b:b0:943:f31a:c0a8 with SMTP id af79cd13be357-9494bb76dc9mr579494885a.17.1794595996364;
        Fri, 13 Nov 2026 10:53:16 -0800 (PST)
Received: from quoll ([178.197.218.7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c609c6451sm7369881f8f.45.2026.11.13.10.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 10:53:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: rockchip: Correct double space in rk3576-anbernic-rg
Date: Fri, 13 Nov 2026 19:53:12 +0100
Message-ID: <20261113185311.183045-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=899; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=li5zaRLbjcgdl53eNiBCGywQR7ZOj81A+LBTsS7dipg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBq91yXeHEGZqRT6/RVGrwwPfQidox76rH+LTSJp
 7nYEKNA3gmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCavdclwAKCRDBN2bmhouD
 17r5D/0d40vumkoOXhkSDodf9sh1qigBkr/vyOW5jnYQZmdDU92dDDMuDxKoqEQnsdJmCHkTubI
 ixM4r0eunLEaDcfq2ke9GUdKE10iii0T0R/BWNkO2YCJKEvXo37YTD9xBkjnONSdzB18rowoSoq
 mlxP/N3Lp96xX9DMGcdLAl/C9HAnrYjGbXt4O4NxEZI1769sBMWT1k97/1zZy42FEedaIxsTxpJ
 puFFCtfhQ2mh1r1C6Fwy5u6BOvoaVO2het2gOqJHiGWuK15yhOAl+GThjLPdMgJPh+7ViFJg2Q0
 BTJtHm3b0al+LHPOUsCWaZBTpO+3XjFqClpl89rFyPVhN276sUF3Gh+yBjmGUHIxCsX+/wCCzrQ
 oMhICNCLxOuo2BUZvPNj3GeQTkhCftafV0s1ny/NLWfe5M8fLA2YNIbWDzbe6dq/gJV9IBxQxb2
 d+eDBV9fJtZ04ix+gcVq+X4V9NjF16M8sxIoDWHJIvLv9rFjWSjdDe2PUQKMKXuQwy9GDpl4RXI
 p4sMpjjN9Twyop3VdnwOn265Rlq3+aBrg+Z0OQc6wvZVVld3DVnBmuPQUgx3FKBuZGI+gmHvGA2
 rRE/R7qV4IYZ1aouUSHPCxoGMf0Pa5KykdMXRxvE3Q+P7wry6C95zFVa689zPV31WUKqLI/H2Sq TXH3KsVXke0FtVw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDA3NSBTYWx0ZWRfXyy4hLApMUSIg
 FalJpqbCgfvsLKNSn2i+pjmm4012M0GusZouTzclzcjEreEnStxWfsMbreV6eh8kxyKuGZlyZvI
 6W4B0RDsFBldG+MsdsVnisqfN5wtbGI=
X-Proofpoint-ORIG-GUID: LR741PAONdCLkRAKtXeayFLIMEnGD28-
X-Authority-Analysis: v=2.4 cv=DoTDa2/+ c=1 sm=1 tr=0 ts=6af75c9d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=uyPgTw0bjBTS2cVxpiNm5w==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=JQ9b2t5kTtvAtS6z_5gA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDA3NSBTYWx0ZWRfX2YNXxXLBNOyB
 IOWjGXy2Sh+mLqUQ4a/idJnC68OovBQu7oKDGppw+XCX9ou0yhUA77t6cDKIWzguTedZQs/oNev
 RFS1eDuqZM1d0rdJUrs/uha38SW3DmsXwadAH+SFkZZwkwKMu/tbQGqrblAAfV2ksHBQUWmVM1E
 FOysp1KfMZgr6y+uR49F3L8ucPTDymOBdmYmu2wltOCRZTnAUiuzEMIIqKVdTqoc80haYG71iUJ
 /1SmsMf6j5kF6tO2/WvgmnUjoTDTkDsWSdUaYzRknF78PK/k7G9qdFx13sz/6rqm9MJWtMwSw04
 0wweHpaRry1z2hpbmlvNextz20xLcBgcVA3xfAyhRXUCj6ahEmLW+it9mQyziBqGssYMb7rG6qt
 voHq/SWLxnWFQHf2gtKgG2nFmwrp0zutAEn1udhnYGIYHg4eHak1UJHQhvret7qmitmlJCmba1U
 LfR/fJwTFKnS77nJFkw==
X-Proofpoint-GUID: LR741PAONdCLkRAKtXeayFLIMEnGD28-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_05,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 spamscore=0 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_105319_179874_69232A9F 
X-CRM114-Status: GOOD (  12.17  )
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

Correct minor style issue around white-space: double space before '='.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
index 62585397b01d..4ac849329ea1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
@@ -913,7 +913,7 @@ connector {
 			label = "USB-C";
 			op-sink-microwatt = <10000000>;
 			power-role = "dual";
-			try-power-role  = "sink";
+			try-power-role = "sink";
 
 			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
 				     PDO_FIXED(9000, 2000, PDO_FIXED_USB_COMM)>;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
