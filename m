Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E12C7D37E4D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jb/kv9DcJn0OX5LN8rl88bEXBozUCabqm2p983BCSrk=; b=Qu4uYai7O5RDV3
	OVQwO9rjO9kD8lxoFzb/sYRGerhGlWe8+gycPqXieDWP204c6qNeYIVxc62WNu13ekkX2tBrcdVcb
	K0u6J0ag7svSWY9HwVY1RHjemKDGhLT1Oz5PloYE51ZYsLFRlc/QyB5CUir6y4BJD9Uj2VNiGd7zi
	GqWzeM7P8w9PExbzUkK+JLm54zYQUhknYtDKqmM9r1Eo8aMMKQi6VR08Rw3b/XTcsG6J2GiFQ6PTh
	+C2oIRoB0vZSE2ZWP6NUID0Z7eBCt+pO8QGy+NMQtkwUmxMILgv4nLKba+uZ7ZNHgAYI/yeeuyPnx
	jzwDDUrJLBc8nc5nGm8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2qI-00000009hsn-2uGz;
	Wed, 14 Jan 2026 15:31:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pQ-00000009hN3-0WLF
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:30:41 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EA4uWH2902724
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VMrQrzLzDincZEvSf3IY0LWe8Yq0vnY3RbOd9IgAleU=; b=I6kkEHcwYHnmLqcC
	bCog3zsSNQt83q1g15rqSXMAHoCS6ayKBCuK/od57mJZRARRmEKWePBZ++KRDRFf
	nA/wQ3gmm9OmhEdA75fhn5wCblufkPBQS4FPjA1MLG8XjHUW5rpj3ThuLbR54inW
	ZC5Wo+bUgahzHKYqqo6mScjg1mnK/iL0PhMHXVhGcvGY9zbAELUEeRa23OKCvh3x
	urMzRY5AmgIdBLrvSeX0LZzwdcJr7L2+2n1AHSumMEuqSkZsHx4g6FgrUQB+0/FM
	xIJf0EElVUNgq68df0rWEdMcPXSuVq5wvOXdMLZwdMvExgqGYam5JXWk6HI6mWVO
	XotTrg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp931h2bd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:35 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52d3be24cso190128185a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768404634; x=1769009434; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VMrQrzLzDincZEvSf3IY0LWe8Yq0vnY3RbOd9IgAleU=;
        b=T2tPuUFxo+ixohzErscVdeLuEV0TIQmX5g9btZR4GVs0i94Fc2tFYVdeX+hw355V3n
         leViizl2w+5cti/wJBxMfM3PASi0BoUCFd/c5+hge4+nhivDYF3wUS8L9c0DJn/nXWNa
         4RyA4OpUVjSDXyUpUYPyZ/yZQ14EK0vjo6BRNV/n+MBGyVu7kEBEVKV1cA+/6T/w6EUx
         dIQTXBGXLGaj3OQ0hhuadcMjuwq4Oss/4JqEZlHx7lczbIpegva5ISX5FOa0OV98dVEj
         T+TLkCvWFFPe/xB8U7m5FJ3uCFVRkAlrH9kxvegG39M2weSyyGbBTvOCvxJ5MI1dnIm/
         sjkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404634; x=1769009434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VMrQrzLzDincZEvSf3IY0LWe8Yq0vnY3RbOd9IgAleU=;
        b=e0gV0LGWHSHvZHM2PzvcE+L0wU9RpWRfTI7Gm7zy2m9eZkTg/iIkCsaNVshWyWOP3s
         4Qu1udUSCJ6qccGpnQ/1jN8Ntl/WZilGSaDMSgnahVp349LZ3qIfsmO/prBVGlI51FYd
         SUAdzsv/AV+pFLIkvcqcXqSwL/rZ6RGxB5pdoU9SMlyL/1T/TNUY9LRJuuBg2/5rXiXB
         bVexAIsrR/uGsZ3+jSw33kERYFGW5+9iIdSKjkkYEzv7hjmCiCzBWtGo5GVFPH3NQoo0
         o/THZnj02k2Is1pngnZFEZzKMaGIWxHJUhXyNrhynAD/ZqLCn7g9kFhq4Tt/hhnKc/yl
         PJpg==
X-Forwarded-Encrypted: i=1; AJvYcCUJ0WDJYtxAnWlivwvc8EWNPB9zgNnbVFKWEJ4uVYbDdBZZH6P8deV72VGlPlYnSI6s+ceWuHNGD5xm7ljAcA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzq9wgN4qldGllKv947Lv1mwa6BdjOVEKc4/W6/BRGjLIlDRS6W
	WZisxnkroZFAkzva06zegdo7H/ZCvzAHmDi7F+f4PpDe63L6Qi6wqYgh3nQEEX4A1rQqFMWvi3H
	a7JIUvACmInGmcC5cBckZX+vmu+ZDxYtxtOwkXCs11X6lmwyhiY73kLPjK5iltR6qMXwi0y7pkf
	I=
X-Gm-Gg: AY/fxX6TPQSx1/jBcfq2S6F5bfrF4WQ+f+rjOVMfR2bgWv0l2aQ6OIHwKHw4TpeFq52
	p+sGNGAOkJzQMR7UNW82unN6hme2lgzmOSs8FB1i3FyUUm0ICuGnLde9MvSVCvrn2BOG9dHQyaO
	pJpP4oPz0uJKgd2+ZwbDGgwXgz4WH4F0dySePEMTTaeFQvIISxXCl2VB8gXvItGtxetbPNHShSo
	kGLy2DoSm+60CahMjUjT5tD2hvjpj9R5crUDK1XG9haskHF3OEOsK+XIWzks9jjHB6v6LeFSX/K
	qnROo5SwS+euxVUi6CP6bpXk03jT8pEVYVhzAcO3sucIfAypiZYMqnKwwZ32x/TVs0c+yGTE7Df
	EVE1lLumhEgo4GV9scLOd0oVRo30pdva50Q==
X-Received: by 2002:a05:620a:4101:b0:8b2:d56a:f301 with SMTP id af79cd13be357-8c52fb32b67mr343233385a.14.1768404634224;
        Wed, 14 Jan 2026 07:30:34 -0800 (PST)
X-Received: by 2002:a05:620a:4101:b0:8b2:d56a:f301 with SMTP id af79cd13be357-8c52fb32b67mr343223385a.14.1768404633459;
        Wed, 14 Jan 2026 07:30:33 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22812989a12.29.2026.01.14.07.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:30:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 16:30:08 +0100
Subject: [PATCH 07/11] pinctrl: tb10x: Simplify locking with guard()
MIME-Version: 1.0
Message-Id: <20260114-pinctrl-cleanup-guard-v1-7-a14572685cd3@oss.qualcomm.com>
References: <20260114-pinctrl-cleanup-guard-v1-0-a14572685cd3@oss.qualcomm.com>
In-Reply-To: <20260114-pinctrl-cleanup-guard-v1-0-a14572685cd3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2163;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=adtV57CgOwnY60Si6YEP4k65ve4WmCO5x4rzf1ZqeaM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpZ7aFRdTPwiFL/h2YLFk/n9wL4n9QTdVBj0L6r
 8aUJ0hOsNiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWe2hQAKCRDBN2bmhouD
 15BvD/4sSskWeqqie+QnWNfV5njoEI/Dxm+OQU6hvQfAn6W+mFLEoVNCYY1DYciSU2Abpt2R3nR
 +qvBID4STILG6i8SyHTuaGcand6oW9yUTQpRJAmZLQwTU6t5Txha1TR6xku+5Oy8NyzMaHRuJTv
 +q5GGceQij71KHq+iN7y+f2Kh47ZLjY4bh5UEgUQ2UIoWQOKsKGVqFMR4D+URpgUMijJNLMK1eY
 OiA7jL0EBA0jRXolicdtAQTBVHk5WKJIlq2dKAIVzHYv12gvTtggiJd6gKyNR8t5tX+yOxZqM0D
 Jd4RwOyuhKazwxCfXv+bUlaqLfNnifpec2mksBSbNjseAfzxvkqxCt+VMZHZVoZ9mzpRmAppP30
 i9SP4gbwW16v6PBBhPIiLG0HrWfQ9XJ2JH7MYWKjn2JypFxHEA9Db766OZxcFqNRKVlsMAtIK06
 ZKalbIjY3hmQO2RLFsbhmE9qgNQm5n6vPYCORIFGTSFmcIKyeFghhXkkuZqhqTORTVXwOoPyhnb
 rrCyYVw4Twlq3ASI88CvQgLBkMD2dmqaPlhTZ37MJzVXVgufCKwBDhrq6xhuAlBI1vufryly9SE
 iw2aWK83dO7QfgeR/uYrjPKYMLwUfoTt6nq5Ph8Apc8jGok5zHX7/Xej2gYuXZnBbrTOGD48Hiy
 LRCCfd8e1rw2F9w==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=BOW+bVQG c=1 sm=1 tr=0 ts=6967b69b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fB2tTgKqvhDdEbG57mcA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: _imT1_39_7_fMEX3qlzWlin_8fgOc-VX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEyOSBTYWx0ZWRfXzC+YZt9VkSjU
 2zQ5p0p50kyEgVTpKJdEKueMIe1aBbdLcOmsiPgcAASEjVsc5af3g3+FTXNuD9TbjX8gcdAGlJc
 NJ8ylCzOVtRdhFcFoXVIlMqVQ8ze0Ep7cjVxIs5hhtaLcxLLiprLUvo1bOmKBLSBOYQUBxRipii
 Ssjluh+7F/nQOF70uyrMJ6FotSqb4pMFC8CvIgnKc2to6AC7eZl+ERjKPUtQtVoxYh5ZuexjIdo
 0Z+2kzsIafuaqlAOaL2LK0k2d1meREesmliiXn4mddOiQGFAQntZEQhuWPhLOCthvoRAFrjgyP3
 AtaM7q2+HMbtyPo5oK5Lzm5xQqQxFqxNKnq9Z3hY12zAmcMcDyX1DsIwEgN/4bDuGHT1SGTfJOR
 VnaEZuhWkKHlbAUvcQvfvqXRiNot++S8+CPDqrU5NQhtEjdk9rmfbXVREJrqwgth4aUMVzGJ2C5
 YqCQojDNTiex2gtvyoA==
X-Proofpoint-GUID: _imT1_39_7_fMEX3qlzWlin_8fgOc-VX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_073036_581214_6D54D668 
X-CRM114-Status: GOOD (  15.89  )
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

Simplify error handling (less code in error case) over locks with
guard().

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/pinctrl-tb10x.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-tb10x.c b/drivers/pinctrl/pinctrl-tb10x.c
index 129fa51d13b1..3f581404a9b9 100644
--- a/drivers/pinctrl/pinctrl-tb10x.c
+++ b/drivers/pinctrl/pinctrl-tb10x.c
@@ -607,7 +607,7 @@ static int tb10x_gpio_request_enable(struct pinctrl_dev *pctl,
 	int muxmode = -1;
 	int i;
 
-	mutex_lock(&state->mutex);
+	guard(mutex)(&state->mutex);
 
 	/*
 	 * Figure out to which port the requested GPIO belongs and how to
@@ -642,7 +642,6 @@ static int tb10x_gpio_request_enable(struct pinctrl_dev *pctl,
 					 * Error: The requested pin is already
 					 * used for something else.
 					 */
-					mutex_unlock(&state->mutex);
 					return -EBUSY;
 				}
 				break;
@@ -667,8 +666,6 @@ static int tb10x_gpio_request_enable(struct pinctrl_dev *pctl,
 	if (muxport >= 0)
 		tb10x_pinctrl_set_config(state, muxport, muxmode);
 
-	mutex_unlock(&state->mutex);
-
 	return 0;
 }
 
@@ -695,34 +692,28 @@ static int tb10x_pctl_set_mux(struct pinctrl_dev *pctl,
 	if (grp->port < 0)
 		return 0;
 
-	mutex_lock(&state->mutex);
+	guard(mutex)(&state->mutex);
 
 	/*
 	 * Check if the requested function is compatible with previously
 	 * requested functions.
 	 */
 	if (state->ports[grp->port].count
-			&& (state->ports[grp->port].mode != grp->mode)) {
-		mutex_unlock(&state->mutex);
+			&& (state->ports[grp->port].mode != grp->mode))
 		return -EBUSY;
-	}
 
 	/*
 	 * Check if the requested function is compatible with previously
 	 * requested GPIOs.
 	 */
 	for (i = 0; i < grp->pincnt; i++)
-		if (test_bit(grp->pins[i], state->gpios)) {
-			mutex_unlock(&state->mutex);
+		if (test_bit(grp->pins[i], state->gpios))
 			return -EBUSY;
-		}
 
 	tb10x_pinctrl_set_config(state, grp->port, grp->mode);
 
 	state->ports[grp->port].count++;
 
-	mutex_unlock(&state->mutex);
-
 	return 0;
 }
 

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
