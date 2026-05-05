Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43527CD3430
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 09:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3+OA0h2cTWQrZBt5AVho9zQAGriipBPOeiXxnkNclc=; b=peMb8lMYLuQHKs
	R+NTkQthxabPsKaSB+eHPgggYHOaBl16zre5bSLqHGsL/80aB+E/deEJLq/FPPlnDYhR+8zs4BB7a
	b1QSrXH51Hx9AmXYZBJYTtgmW12F6XR7qakFLcPydsmzMlqfiyXW/2cXWIAUgFid7wl7DA8TJOYEH
	2qKt8Gn4YW/55yOfHgJ/dBpf2ubxVzbDv48dSy6k6wPEzjSxPEb9crBhCjHqCU4t9w2lqMamwJlWY
	O7EzERj0Y+yyUNVFC/3BIlf8yj/HdBO1MTks59YNiew74QdaIYW0swCV/6HbfYayyR9RsLzAio5qf
	i4sH5AqcVK6oXSFNLD9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCJZ-0000000Fh7S-0sXc;
	Tue, 05 May 2026 09:43:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCJX-0000000Fh5v-0GYa
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 09:43:40 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6459Ewiu3410684
	for <linux-rockchip@lists.infradead.org>; Tue, 5 May 2026 09:43:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6KS2SQLRduV
	fwpc3NGf5lfKiSMPz8UqWMH8LhNcjEEs=; b=IHI1EGISjXRgcr2goKmywHG64qA
	WOY1a9Jo1R4VUPIFq4PDJZC6RwiN8CBJI8DYRp1vNOSIvT0sO188clS2U5dk92KX
	pVSCJzQuMeSIk306daJCPVeO2zoBMRlfajRddakne0AUxPbf3Por/CmdGlDEoaBi
	Q5wyIrmaJ6IjUKtesgQ7biqEZQ6DDRmd0MGGE5T3bhohwgoUSgodqcL8R0tPD9Uf
	WsfJ4/dG3TONZaNhRZ+6dYJxGptRMqSnPbcQGdBqiQmWJFoTuUSS+70oqhXr8BQ3
	JiwSuv3TUrj+mBLwbzN9QmAY7XBKYekmGycmby5m8WPqjfktws0Yb8wvtvA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxx00uc6w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 09:43:38 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50b220c72bbso125686381cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 02:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777974217; x=1778579017; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6KS2SQLRduVfwpc3NGf5lfKiSMPz8UqWMH8LhNcjEEs=;
        b=YABK5BczwMbS5uA92YxNk7xS2e79As01yGvBLQrifrtRBFkQl/Uu5+usDq8P6YCAeJ
         6k4h/PmIOoNsYlHcdc/DaQ7pfPLxKOWRRr/8FrWezzpUpyugKuDm6IPpQmdwFCgON1Ya
         pj/mPInP676/1moSeVxbumgW6bWfcK3AZry+SdUWUCbuFFHFw7SLVnAo8AgIUmRN6ReC
         8PiP+NkzZ7L557ofUokV/CDYae3B4yf+FQ1UpLKIEIQnfEU2WPQrzMKbDUKa15pfni8H
         l8Pdn3SdziLoTCztCh+HZOnyisr1dn+fPOpQjGT+IulsTh3KrfTgw+GXsGXhPIdhoqjf
         Zq8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777974217; x=1778579017;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6KS2SQLRduVfwpc3NGf5lfKiSMPz8UqWMH8LhNcjEEs=;
        b=Q6STouXb1mS2gZMpU+MdkW6/Ec5yGbB7eGrKiTlT/+nZOCQYm8/tcCA96T9ajab9w8
         5C7M8jfsEwG/VihfxLCnzpFdCvMBgFBde5ntyqhmDPgZF5KkvSEuwgSYKnmnBVMXUfFD
         DDrZBI7YH0Sf9E4ZeuwW9o4rTfj+wtyYbO3bosY0oLeX5r6JU+8NZxZjLZ11pPSVjNjY
         CxaInb4EWsf5wNY6oAwEuGk4LlXgFg5o9ezsLW1Udy14FJFUl9OZt+971rvjf05YQUAU
         VLJ0lC8Nj0JE4yUdgZG2KPxHHJQdN/ADxbd5BChAni3dQYj5u6BD42YUxUW6OR0rsGX/
         2ZZw==
X-Forwarded-Encrypted: i=1; AFNElJ+nBZOEeNtfKORG+NY+JI1tvuBJx8V++nVjb84cIoXe9AN0IGE93fy+sS+9DAvvTZOoWe93fVj3Mya/Wivo7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzexXE9sl6g/Y8SYWqP0GB27Nzf8lNgqADWSk6YOl0R/98vsa08
	MMScGWlg1B1vR9Q1SWIpX9RqWjp2MfdHSYhQ43QbPXRaDLbm86/QWtSppmows16wGLnv4C3yu/D
	WoBzwDCfmNCb3NVFGWGFJFrmmiDt4NVLvAULrGY9mrAI/VMw2EBFQ2apnNx6ha/i9qVx9XHBWyJ
	A=
X-Gm-Gg: AeBDievBhCuD+riJi79uCiEc/rDY/KdVqjzfNdLFTxh2hGigP+5mGj13CbPmBNU1oMW
	T7QxGv4XWGAaaDAUokdmaG7urHqdyMtp0ceWBqsmpsyH034Wsv0N+r/cJZVl97hspsnLdUZarYV
	TprPkllVTOoh4bfyAtzWSX0d8bXNr5o9nOVH5UHRPhS5dmgmneIR1Fa4GPJLWvhG5NwcEZRHw/c
	b9zwgexLR8QVLKUa713bjOExvC6/OjpWa875PpgH9tUHaSrvOsXX+7vjAcdPgfBYK/Wh3dKOEsZ
	XK8GAKx4rZJSvS4Sn22iAVd+9VVFlRN5Empt44G9FhhscH1bXuPMa7sj1VhNGwOCMj6LHnFQSo7
	KuGekKsbuPH9UQIO9LFsiZ/oU1Vt0RViBqPeIz0NK2pQv2/s=
X-Received: by 2002:a05:622a:4892:b0:50b:2d93:97bd with SMTP id d75a77b69052e-51306a06ea3mr31211711cf.24.1777974217592;
        Tue, 05 May 2026 02:43:37 -0700 (PDT)
X-Received: by 2002:a05:622a:4892:b0:50b:2d93:97bd with SMTP id d75a77b69052e-51306a06ea3mr31211441cf.24.1777974217169;
        Tue, 05 May 2026 02:43:37 -0700 (PDT)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a8eb69698sm603858135e9.1.2026.05.05.02.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 02:43:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
        Linus Walleij <linusw@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/2] pinctrl: rockchip: Move MODULE_DEVICE_TABLE next to the table itself
Date: Tue,  5 May 2026 11:43:18 +0200
Message-ID: <20260505094321.75040-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260505094321.75040-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260505094321.75040-3-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1268; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=V+HB4nqsZW8oIMtgAz9ozlJPzMJo4aEb1PAAhjZ/erA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBp+bu6tKfCRTw00N7V6Ex6xmKEBORVM/gT90aMY
 QaFkiqT5LWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCafm7ugAKCRDBN2bmhouD
 1xVXD/4qT2/aF1eWFpGlNTG1434igw4HqiB6LG9AXy9rrBTK6sy96WeHheBxdWG/z6V3qxXt77Y
 zyjqfRLpyiDO1CTaCaZk7XglihreTE8wc9mk+2ZCtEy6fVZ4ReNhkrDZPRP73gPAaP4IbzNlloc
 ph2bElfkfgUAX32ePl6LgSPsXXHqvxpagB8Sz6MK4KROH3N+/WhoWGtuVXLR8OSieKhsG6eldRL
 rD1umZ0lLdEeSAujIXmKzKbZV5cQB6cFLq2mQ7qNiQ3HAKnzMo9BmNajU7ILGapKpxlEvbsIyBw
 iedzMp3sWyDa5MmZKY7Gy22rOQny3ZIm7fFXuxrOQDG0/NI75WxQC1BNTS2+iFOfKv1a1j0kdib
 2ncKuKDa5vmYUQPAtFOuiik1O/5eHDf0BQIwB1TEGR8VBaen+8GViofu5Oy/Tbhi/I87OdLvGZ9
 fuMV+UAtSUAUfJVxke76/2MCqhUZO/uD8sUK6Lr2s+Cb5WAS12NqGJ6uh0YD0ijBSJreUZ5j41W
 F7DS9DTDPbfsBE51PqSeWa4xBPma8V1/g1zC3jS3/1sy+OJ4R2KUJ67LKEgHYHKkeyJ4JyzuNh5
 WXpwdY0ozPx9GingdlHErbqeAOLc/WnEmoISWlea7G7n8r/OGTok/X2nFFr9vo4RGUfBK/y6cXU yKxNTyNfjiPfnPw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=APflyhIR c=1 sm=1 tr=0 ts=69f9bbca cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=BzP98TPolLMEYMmIy-QA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDA5MCBTYWx0ZWRfX469VzD6JkVAf
 Isfaz0rf1kQRR4MAxqfLDg/t0zrfluCa/Hp/Rksyu4bqaol3/7RQIFVc7lXlW4LbDEMy8MzK+74
 hEHmzV0juhRDQB9ndvVcBk7H33RvdwtlzQy9u2fpXf5YxhmEzXVVzfgRxPmOaCKpnxLq0Uxhqa8
 GQuT+U1GjdEbE/foTH3wPKyKIwuteQNQMAeNy55rWt8LTiUBBJ1kyZWjFvalEpFx3qdo7E7WeQc
 jmlsG8zYvA3XR4tZG+OpXEOrqcHy7uyaJY9UyKAQYr3iy6n88FwSEsjMLkugjsbbwWLqky5tmbd
 IySfO8OjXVH1aSS//iq0zvmFSL2atpmIXCkNPK1ofGN9MpwmPyImS8BAM0vw7ngHs8C4hkCsfko
 EYVi8CqO1AMjUvYuHwBhQpUWGNoFdeBNmSmWvygXWrfx4Tr8zXCQctYlL1KR+GC7byQF6161her
 p0ObdxkXpF+/g8cFxCA==
X-Proofpoint-GUID: uChwNnZeNzgnxjAeoApRcs_GjeOQY5NJ
X-Proofpoint-ORIG-GUID: uChwNnZeNzgnxjAeoApRcs_GjeOQY5NJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2605050090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_024339_302728_26D7269F 
X-CRM114-Status: GOOD (  15.53  )
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

By convention MODULE_DEVICE_TABLE() immediately follows the ID table it
exports, because this is easier to read and verify.  It also makes more
sense since #ifdef for ACPI or OF could hide both of them.

Most of the pin controller drivers already have this correctly placed,
so adjust the other drivers.  No functional impact.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 2f14c7f9c95a..7e0fcd45fd26 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -5303,6 +5303,7 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
 		.data = &rk3588_pin_ctrl },
 	{},
 };
+MODULE_DEVICE_TABLE(of, rockchip_pinctrl_dt_match);
 
 static struct platform_driver rockchip_pinctrl_driver = {
 	.probe		= rockchip_pinctrl_probe,
@@ -5329,4 +5330,3 @@ module_exit(rockchip_pinctrl_drv_unregister);
 MODULE_DESCRIPTION("ROCKCHIP Pin Controller Driver");
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:pinctrl-rockchip");
-MODULE_DEVICE_TABLE(of, rockchip_pinctrl_dt_match);
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
