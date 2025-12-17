Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A017D6409E
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Dec 2025 09:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dvY/JIRvS0cokMPmZdgILA4vIHoe1ZHpBAAiX8WQs14=; b=VZ5ESBxZIjMN3O
	Q9ZblviS0U0v+/yQxrXT5oZtT7BtueszgI3aG+65YPfcUva0JQerxcV5zMqCtu3jchR+8h028vbsv
	Cnb6RxzfkPmEnVGTg9If6E3oW7yrtlOiCcOyRNm5AeqmNmXT3aAsqRxlFWCz8jcHU8NjB4gA7iD9p
	I414iK4NTcPt41eT5uk35sVtL1G28y3WMGnTRh0tNyw0Z+53XSJHmZ/hNximdj99eIsD5Br64nJxv
	yicNZPBZ8OS6klW5VxU7ji6yD+IGFLbOwsCOFASOfOy4ZY0tgJoQ3ifI3s0SIHKwSb87b8S9vGuHY
	IQYBR4UcOQ6qLXrM9iLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVnfn-00000006P5B-3AXO;
	Wed, 17 Dec 2025 09:18:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVnfk-00000006P4P-44MF
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Dec 2025 09:18:18 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH4XUYd2316144
	for <linux-rockchip@lists.infradead.org>; Wed, 17 Dec 2025 09:18:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iW9wZaWu0n+wWXjapGPyksjgNP59SZ0JKHg
	FWwFtYnc=; b=mAqBTl5t0c2GZ9tM5D7wGlctBgMNnWEyYmSRMZ8ng+V/7lMsi+D
	BDhpISb66qWORvC0uIQXtKsWYGfzGAr+SKwJTWQ+a8LyNFxh443w9WdB+zu8QQ6d
	FPz0j8+5u07A5XgDzF3qNKgt4CCDnMUNCl2TzS4E813/Rp1P0v1h2U5e/oE+obF4
	7RF6PQ9By7SlxGY5+l31UQ6SgkArDrb7elas4ZvxTNYdIkz/KyXSpTC2Qfw24w8u
	k1FzDH2P4VY8xv/P9pnlZIU/6qRQb0CThZGZLVZ5QTIKJaVuOjngtJGm5dJshFGV
	o6zLLYg20elb6P6QA/qyKQ726cgPfiuG7FA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3nkkgw83-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 17 Dec 2025 09:18:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1f42515ffso70400891cf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Dec 2025 01:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765963094; x=1766567894; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iW9wZaWu0n+wWXjapGPyksjgNP59SZ0JKHgFWwFtYnc=;
        b=F1NJQN8rBHF8JBPXuN6XpAfhNBd3+nm++tp1LblQkvpDOmTVI5RaUq9Fe9NdMqwwI1
         WEXjSJhcNITV8rTAiRd1LTB7fJ17C1DfE3mIe3W0mBfoKwoLUmhyv/SectxfubMszbzp
         YyaBpPZ6k3YRQR/SUv+T0gnhlfe++9NP7KkpF4nJ6q8KwbpAG9jgbNCqhbizDxKLqSf8
         hNmxUYuAN3x6ZpL8gFoZUFa15cm4gPPXvd35NXdLHqZ2Ew5lxgDF+bt56fMKJLHJ/M5E
         FU/1ST546rS6X8Q7Z5AIo8sqbdJsajuMBE9pTqRsSXAT2DQdNGmz+nIoyCWoY5OZrIJO
         ekJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765963094; x=1766567894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iW9wZaWu0n+wWXjapGPyksjgNP59SZ0JKHgFWwFtYnc=;
        b=FxvfThctuublDgKEPLorV2N08ba9PMpCNuBjwbPCk0iDc6ognGyqwNhUrnynPZjKe7
         zyGzypb0oJ2wm92b818Z3lCNNyZyKuXuveD0Ck/qDebWOcB6DhQyFqqZ3Qb4fXpZqx37
         lYIkVrz+WQZ5WQkLbR4tt2HR7Q21Bxd5op+mz9mF8sldGm5szO3U7qO+5faN33AmKt9L
         tGlMI1ozSoOV7wUV0RBnqca+hW0dvACrJgubJ3HuxXIyFQ6pf9nhgw+7WitHqfsmaHZu
         C35Ofx2c0jCUsNdG8x1XEGRe2M98EWy2t/pEUQvrvRr5gAHv1pA2INXayiV5jRqYKE/w
         NVew==
X-Forwarded-Encrypted: i=1; AJvYcCUcNU4iCQ8iSAsf+O8AUsqIaH/vHv66T2KeY85l6CPrqxDPWSnd2lYCGmF66+pWZcXyVtoup67UXn2KkSF9rA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyP1l8R8ftQdvfh/u507Z8JEa8u0p41TaGVopSiV2J862RiS+7l
	pNavSC89qDn8cQXGfPEo5EY2JANx1xSbJAL0rWHhKIGtYsdaTssJLyzOALB9QtT2hnqhxqg3kc5
	6TRUEga7X6tIyzIB0BKh4fgnLfSaIORTAnTTsMPCqZyOBfh1BC6zzcKBFJbg/62JKJzBVLxNcqK
	g=
X-Gm-Gg: AY/fxX49lprz478cl63sSdrzKVO/8z8pYwQcRl5EH8MXJeV6mYc9KGGOeOOBYXrSH1l
	Yh1rbu0ZRoMYvNwmNmHgZfhtHLueuCyCuj0HXSstGv5ujaj9stVWgR6CtCRlM/e0uT+2cHv3nQC
	fjTBm+MeS2pXaStZ0C+6DpYUdl2HUnRaRHErB/FTH+DMXAKuv1XkH3ODWTgc8Pt0l1yfWORNC6e
	X5fRXgNPmhaLlPekOy0AGtvjRLoZModseb37qABtxNA3NhegiPq8NboAOpGaizvURl9F8qAgwMr
	qBwlD4SfcXKnm17zvs/SFK1ol6TewAn9ZdZLbqVFZHEDyJ8eCxn+lASA5iTtSd012pjeaeNkUpm
	c94/RYDh4QTvzQiptTeNPsLIF
X-Received: by 2002:a05:622a:1f88:b0:4ee:13dc:1055 with SMTP id d75a77b69052e-4f1d04a5c72mr244396801cf.3.1765963094245;
        Wed, 17 Dec 2025 01:18:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtrR0dfojc/ThO1CYaIhIbMVYq7VrKAdbcV769jHmAPjb4iV4IyeMoWNOQ216/0hFUXszc4Q==
X-Received: by 2002:a05:622a:1f88:b0:4ee:13dc:1055 with SMTP id d75a77b69052e-4f1d04a5c72mr244396571cf.3.1765963093762;
        Wed, 17 Dec 2025 01:18:13 -0800 (PST)
Received: from quoll ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bd9965f70sm25297475e9.19.2025.12.17.01.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 01:18:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Hsun Lai <i@chainsx.cn>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        stable+noautosel@kernel.org
Subject: [PATCH RESEND] arm64: dts: rockchip: Fix wifi interrupts flag on Sakura Pi RK3308B
Date: Wed, 17 Dec 2025 10:18:08 +0100
Message-ID: <20251217091808.38253-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1513; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=ZwxAd22PGTtRaMdztqC7ee+P15PZUdzpFtZpjJWf7mk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQnVQJOZRK7WoSSCXcBvccA+6D7B5RBBrZFJXL
 4C6f9+Y/NeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUJ1UAAKCRDBN2bmhouD
 1+HhD/4sPPN7zlglH9UDcsI99AT3MQQolUFpdyiyOCuu0AKcWNv2AhVTDLo61shgrGkiN2zVcKs
 eSOIGQ1x+4K+1dJWrKfQjy3QGOEhNLkWlTKecc6xLzpVIKYDTC4MlzFma2wgIXZa16QTFNRzLmF
 /WkkHYBdhFDpVB5So/tH8lGdKtGcCFnBBu45/Axugwx/IFfaULtGE3Bs2FVKK0vKCoV9pnvlv3f
 7/T8afM+iwObo8hdeqGS8ANfPxWqOPem+00GFZjCY6Hn4LqYZ60J+rqOTe/vQe5AzvqwSYH1z2r
 FyPExejpMgwH3FeUlEMS9thHB51FJ+eniXGbSDuER6XIARWuCrGSevA83f5Mf7UC7933SaD83q0
 J/bBTp/A5chnZ+8YzmzJ4UfdWvVXujBoLKtBBZBN3R3/+3NAVjR/fDy0CUw4C9Q6IZaNiv4/Ylu
 KNCXRta/IPBe7j3oagGXMAmf1+UwgIrYTlhdMiOgIZ8CeW9Wg+vmaRZ8qTlYRffZLVoiaSUqnZz
 /u5o00ARb3y+zoDYEnkYKMj/GrjznBk4voRV1ujAYo0XUki3/1lXO8gPQUdcqEUf93BklaqzFBb
 K3J1+1EVxCfkiuP08ksIFzLIh2AHNiFKXXKvlnSyVk7RTUeYlg9EFJVDGuRtE7Vo71DGoDLLKzp fLEz9Kl5Y0Z3YTQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: PaCzkqfXUq5IcWdfTYC9MsgC7Pdh39Q4
X-Proofpoint-ORIG-GUID: PaCzkqfXUq5IcWdfTYC9MsgC7Pdh39Q4
X-Authority-Analysis: v=2.4 cv=f/RFxeyM c=1 sm=1 tr=0 ts=69427556 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=XBPufoqijqhy9oh2KWMA:9
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA3MyBTYWx0ZWRfX2JDwFgAdz5zH
 9ZVUAbIBBPq+UbQJvorq8DGP1DFAcL3Y+AYWB9XHi8AtBICv1CPKxPbHcHF7l9sYDdIuhWMZzc7
 KAmn9EXpalXnoxG9J6uU+7GH62QMwQatyupjG395i2KkU8DHd7xy99NSMjcWzQfa/cGwOJwgXwt
 cpWMDIgix8KDZS3SU2x/zo3yhrdVSJpCTlZk3Xxxd8RkUps8pZJ4P5TPNy2OrA9mgMsYD4v3fD8
 ADDqG+ByhAiiqy3PeZSDkwmBAfFk0uLaCYkM+UaAEicvVk/X6I9V5nc5fzD2f/hV1mvV1QN0qbX
 H9ojY37v3GbgF+cJmc1PbN7cFb/7rLaDaW4GZPGkneWY7gQBhWUpumxNEgtjm7sdQwg9/hxRrak
 5DRMeArruH+N4gxgu7HXFUXLm2B5yg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_011817_233228_A6A00110 
X-CRM114-Status: GOOD (  15.93  )
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

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.

Correct the interrupt flags, assuming the author of the code wanted same
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH

Fixes: 79f2a1702441 ("arm64: dts: rockchip: add DTs for Sakura Pi RK3308B")
Cc: <stable+noautosel@kernel.org> # Needs testing, because actual level is just a guess
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Re-sending after 4 months:
https://lore.kernel.org/all/20250818090445.28112-3-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
index e5e6b800c2d1..3473db08b9b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
@@ -199,7 +199,7 @@ brcmf: wifi@1 {
 		compatible = "brcm,bcm43455-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake>;
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
