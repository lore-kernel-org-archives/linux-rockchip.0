Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 726A0CA5FE4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jan 2026 18:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTgdtDqKHTIssxCuWYI3lZiG6g2b8pesUk+MbZgrsEo=; b=xUlHeIk1xQbqXq
	RQgfDysqsOg3CObs/3kvJmvun9bc7/HAJJbaDQ8iCQfe0gE7pxhqs8usvjvpJsasl8OJTT8m3OnHu
	eK4XzeHyvlXYekRiOE5AU58WtKbHQfkTeWfLxRQK9MOQ5TI8NHa0t6W0xpJGOdzQH2JSTf9DYlW6p
	G9S3c0XqUuN4VKRJi5we2duvhRy8ouUqTTBlkXpwkWhOXjOrPRKenJMPcvfqDI7BEac+PpoI7oFlV
	MbPg+KfOP9mVoYOu/sKCEcD+kJgBS9MWOSlUVocK8PDDVEErh0l8p+dPhf1YH/V+yNWynhY+Fv8Qh
	NXhfYs0alGmU5gFoflKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXEO-00000000fr7-3IUv;
	Sun, 18 Jan 2026 18:10:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXE8-00000000fZx-3FEj
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Jan 2026 18:10:18 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60I4a6JS1908514
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N8rDVtwaqFFOKGAdA8c98jUQvXsuqYrjM/OKm05D9ak=; b=japKNcnfAcEprVtV
	0bUawGTTXZfbthfW6B3TsG8SOrANCsLkg7+/n7DXtuSnDQSKAnz3usFRiyGjxOj2
	+tPoYHPy0SDVDav2D8OMjbHMnyAIRUOJCc6YT7Ti8/Jsu0oJRI9rek6MgZf2St3c
	heEzwj4GUyubAeqSY6lo5q+3kGDRU7stWSWOAZ2olHVwkhtTkyTRJpQ1rr+wzOHB
	+wVhVSdyTbXGW4rCcE6MUCDGhhR16OCgC2i5uhHVrodFaAum1yFa5gvt3ks8eXrZ
	m2q+iBAO2sdTs4NNckCqDI+IQx8+BEUWCDxfo5lF8Ut1fbWYDdG0O/PFOwgxIs4y
	0wCOwg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br04e34y0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a5bc8c43so755691085a.2
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 10:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768759815; x=1769364615; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N8rDVtwaqFFOKGAdA8c98jUQvXsuqYrjM/OKm05D9ak=;
        b=L6CY8rg12Xl1QsEAQiUIUtYzQGC8ZXSUlYY8WRpuT2boQyhgxA2dir8BX8zllIM0hx
         g7gEsKgi8w7IYZ8ezFCbos3QxaOO1rfew56aGuj0PtMhMDfkTgvzIsammYKlWTHzkYNZ
         n4LhPFBNZcpzagdMQ4OOLvG6jwky5X0LzrDkXzlIB/6HFqJG/fsLv7lqDkM5hqnTITk3
         V6VU9fmXjjEjE3dkqH8xsbGtpgbt2fp2Yq2o0P01tM2MsmrmDQr0clNqxaodiFtqwOvU
         mQWN9K8qo/D1gJmei+P481kSR/n4rlLDiczSHSiWpvtnlojGaWLqVuTL8dnW58GJ79EZ
         QOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768759815; x=1769364615;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N8rDVtwaqFFOKGAdA8c98jUQvXsuqYrjM/OKm05D9ak=;
        b=oqdBXHsVBPbjfoKGuCNGUvNTn31WGGeKs9yD1FSwIXPbWSEI8kfPHLkRyNIvAzK85b
         /9AS8MvZWJ2hZiM5EWtSNGfaWDw5r6LA4g0flSJE6qbLVGgogCFYPapUXvEBFWmFkRCB
         iyBzAw1j7FO+Cvg+NNV/+LQzNYkYUOV6WexjGorStFR9qkgKmN12Gj2dOqLEydqdvz0B
         MuBulN3753yyqxs4ajelMNYnzH7nOmEg/kKpk86upVgEEKXmm9Bhe7cIKGaSMzqHZTrA
         k9S7EMwQr1WmDNA95FfP7uqGXOkXa5mumSAFyer2v8r9W0bqOnJPaxR9CemIa8E+JrP4
         PCKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeg9xBuaL1+4LT+GPLDPQY2/oMiGWnEbSBiCPs6W15RkFO3NNZ/xcHFYPLIyomTouLGYVlQFJEG5gnSDnUUw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy58yy7GPLcCQo6LMjRYXO2V6g2F/W71YPbaRcbxguIfU01cpO5
	MIANNiAouTZOfOOhSEwppeepXUO9dzHpZrPYQOKGnhGTapnWiu7fXdKpG9EQZDNJpEqFQb/zFZe
	7FR3f72+2o0gohRSPL4Zgoh2ABUgsoKtJltBx81nCXrn9g6KMmaLtVLYH1IAgvsES54QKagg501
	E=
X-Gm-Gg: AY/fxX5DFqax3bRodTyGBF/6t5x4TWvOoe9giLCcPdkHi4R5M2SZtkSeNjzmy70witw
	ZUzTjNqX3UoykJZWBQVIoVgIkbUi+voyZo1+y/ax5NuKOYsmrfnxgoxiIq6fThWJqDk+mA+JuDL
	xWvFF1QmUGMEEF94LUmHbZoMTmTIzPCyA7vKuqK+FVWVws5iEn//ox2NSibb30FQPxpFqsmLzse
	aWpr2MVRjEAAWYOUzPC/17MTT+89KJ1rhX/tEcMHsfrzUyMpdBIijSHqkJUrsliqmotxTCBZ7CI
	WBzHEv/OCZt1ZH6/V4iSdeBpyDktZJPdq68V8rieyJBWgFBtImb49+btW+Ub5uw3FBBrdHxbhNO
	jSGSUHK2ICs3pDFzNnXXrTfruvZBlled8FA==
X-Received: by 2002:a05:620a:3942:b0:8b2:dafb:9089 with SMTP id af79cd13be357-8c6a67899b0mr1275475385a.67.1768759815263;
        Sun, 18 Jan 2026 10:10:15 -0800 (PST)
X-Received: by 2002:a05:620a:3942:b0:8b2:dafb:9089 with SMTP id af79cd13be357-8c6a67899b0mr1275472285a.67.1768759814840;
        Sun, 18 Jan 2026 10:10:14 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe44b37sm62162085e9.12.2026.01.18.10.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 10:10:14 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Sun, 18 Jan 2026 19:09:29 +0100
Subject: [PATCH v2 06/11] pinctrl: microchip-sgpio: Simplify locking with
 guard()
MIME-Version: 1.0
Message-Id: <20260118-pinctrl-cleanup-guard-v2-6-bd36f681bdc0@oss.qualcomm.com>
References: <20260118-pinctrl-cleanup-guard-v2-0-bd36f681bdc0@oss.qualcomm.com>
In-Reply-To: <20260118-pinctrl-cleanup-guard-v2-0-bd36f681bdc0@oss.qualcomm.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>,
        Linus Walleij <linusw@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Hal Feng <hal.feng@starfivetech.com>,
        Chen Wang <unicorn_wang@outlook.com>,
        Inochi Amaoto <inochiama@gmail.com>,
        Basavaraj Natikar <Basavaraj.Natikar@amd.com>,
        Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, sophgo@lists.linux.dev,
        linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1197;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=7TcfQldnwsgDeNj9THUL7ZJpvo8wBH6EB0ftex+EuCs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpbSHzNyyJB2/5YcDkWVD78wo4fivaLa92BnhNE
 zEyQbnq1T+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaW0h8wAKCRDBN2bmhouD
 1/+ZD/9dLR0GeZEUoMpu1fyeS7gbRrh/E1fAhv5P7K1Wy6+T4QuZh0GJyRvYYNMop2bEXE+o/zg
 m0aJF5TNvzHCDEzDGh3hTWMW6zhEfdRW1x+41NwBiV+jUGVIHWeFXu64AMbTDIAep3SiKsUu5ur
 USeXISCYy7enjRAKdOU7c0fmdDnDnSSlMVF202nX4sHTfroJF4BlimVIpWz9/ILOSA18ewjMxl0
 PaymU0l2amlmpZmIpE3edSB7zCVqvIGVyl1rD1g1v3Slmt66Wa0oJub3si4o9gWtDj/1mE2HGW+
 YwsGcKQ0cx3eU9jda6IccRxjIrd1gwgf91zoZT6MdePaW7LZKOUWQ3TuPyA9SppV+7mNXJ6g7fg
 5iv4i/aSKv878Z/9BjfRec+iDlhMHFlE1U/0TNLeQEiSePRFjzQkBZW/VD8h12mdLZyJ25RIeIq
 zcvbjxNdMPYNXX6zyo9KpdnIGRzqPn2eow9j7Ty/MvWaRS2UaQldkFjErgbKNlYyLyF4xueV36m
 JPYBzgnsAenS6V9TUf7bUvkG/jLLhifIhTXucaqJudGLGgqioXPok09zN5scbaryZOnU3poSZa3
 r/njGSPDgsJ/i0ZuO82abROFWzVcuRbleDiqZ1V1y6SeGIH2EV1SlND3ueBORj8RHgxVja6hguI
 G262GYY0ih+1KCQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=J5OnLQnS c=1 sm=1 tr=0 ts=696d2208 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6VTnscBjb5kX48BWP-sA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE4MDE2MCBTYWx0ZWRfX1FGPvj8xgpBI
 vatVgVlDyr3m1oTmJhfOi4kZ+WPvCvZZTlL3CxDXP1L0uwRYtERXuj7IrugUnuVa8+VKaZnLPw+
 ko9SXT1gJLh8JzM5Cv+QtHxOSCzwDRb+B49be0hDBjyFcmWtceWwMQ8GkZasR79yRpjiM4fudS2
 yrb+IoAuB5oMYpfty1Urs6qf2v30qeZFcepZicP2x4YcoZmUM4FZhQVfZUpHQxo2poigUndwj6n
 Us3+br6tddqk0aggBa9Y+MOSooMCxp1vd28Joim9d7CgDtaKWJNqIPPIr67vL/+mJ6Q+NtLcvUz
 eBp74gjKgzaBPp+L32pwE5e+HwroAbHSXx2BfTVzEEdhwndBXSNKT82YOi+J3SeNle45QGD7KCK
 wPIwAalId6jfXMEq+STe87yTHNfJep6TadCBlEoMurkI+kHy+jNUE3gJAzo3S1kjgMVRFzAAjAz
 VAVoSAj7hlv7xEQKN4Q==
X-Proofpoint-GUID: o0rGaC2QSyn7s8VCJSRVf1G_ZKRLVyGh
X-Proofpoint-ORIG-GUID: o0rGaC2QSyn7s8VCJSRVf1G_ZKRLVyGh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601180160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_101016_869045_66C48001 
X-CRM114-Status: GOOD (  12.08  )
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

Simplify error handling (less gotos) over locks with guard().

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/pinctrl-microchip-sgpio.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-microchip-sgpio.c b/drivers/pinctrl/pinctrl-microchip-sgpio.c
index b6363f3cdce9..7a6cb5f502b0 100644
--- a/drivers/pinctrl/pinctrl-microchip-sgpio.c
+++ b/drivers/pinctrl/pinctrl-microchip-sgpio.c
@@ -264,19 +264,17 @@ static int sgpio_single_shot(struct sgpio_priv *priv)
 	 * setting.
 	 * After the manual burst, reenable the auto repeat mode again.
 	 */
-	mutex_lock(&priv->poll_lock);
+	guard(mutex)(&priv->poll_lock);
 	ret = regmap_update_bits(priv->regs, addr, single_shot | auto_repeat,
 				 single_shot);
 	if (ret)
-		goto out;
+		return ret;
 
 	ret = regmap_read_poll_timeout(priv->regs, addr, ctrl,
 				       !(ctrl & single_shot), 100, 60000);
 
 	/* reenable auto repeat mode even if there was an error */
 	ret2 = regmap_update_bits(priv->regs, addr, auto_repeat, auto_repeat);
-out:
-	mutex_unlock(&priv->poll_lock);
 
 	return ret ?: ret2;
 }

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
