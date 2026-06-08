Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A55CD8CA8
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 20:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7FUmlrzjHq8d7oPWuCsHs8eNSACt2yiSjTp7Ls2w1k=; b=QM2lCWJGLGJGMM
	zkrEdaWuh845I7GaYIO/7gi2f+d9hop4R8sFG+SdqnJKtPH9ys22RL4NbBrZJGJgAIv5T4j1fQTnK
	WC8FGLOvupJrZMK97iI8YCVAzoJulPKgL3H7DoCh6h72vFK8YbqpYU+FWGLpHLAdOSfkHbfqsUa7x
	Pakt0OEmnlAAvT6TeNPQWNyWrIupHgEaUFqDviBYipRIJ/HiMkUWHcCB0yHyROyqKOF3zltuSUStc
	EStN5LQaZEwBXTAgxI3OB57HXsxv0JuIwHgxcGwh7x+s1bWC72EchI+hrMJfnhm6uGj++JiYrSRJA
	rMLmdIiGdk1IDVfr4J4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgpy-00000004NND-3Xhf;
	Mon, 08 Jun 2026 20:44:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgpv-00000004NI3-3Jlj
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 20:44:45 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658IxAZl348870
	for <linux-rockchip@lists.infradead.org>; Mon, 8 Jun 2026 20:44:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XCbndmvYUPntNWcEfQroOqXP5F4vnHs8kXOTKDYVs9g=; b=GTjz5P1w9kvJEM4H
	VQi+8xA1DP6kkN8ZjTsaDvNMxb47Z0roQMXk2bBGNUVLFUvo34XzuZe4tO5cHDTV
	sEdA0uB9VODea+YlvFSqHT+9GUB7uOr9JF13erHY9AyuRaNbAoi/48hp6yQ9hB1r
	ArwRi7QRqpNSe8GjE6sepXyOKCXs7QGQ73URaI46hn2dZ02SkTtesBsLLJHLSRb2
	wcfkQtQDzKOOr2iI9v8dOkjaInukaW/2JHUUOP92cCC4ybdsGi0K/nekqoC+V9Ga
	i5iUpneK+LL+enOeSBdUmg7qMBbtHwh/uFqNRMrfXKRTeyakZyoMM+X5Isw98rhF
	b0f1CA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enwsvabqq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 20:44:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5178aed25baso103712741cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 13:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780951482; x=1781556282; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XCbndmvYUPntNWcEfQroOqXP5F4vnHs8kXOTKDYVs9g=;
        b=bf86iLdN1zIpAc2O1Vi3tXOUM9UZImUJPACM0XyWCZO9u8ATOS7XQAqGah2UrZRmB+
         s0oHrsOHc+RvonACReyAtmKgKyAtddkGaitVb4eoA2thtJQgVuKfw6UPczfQajpzU5TA
         oywh7Ovlfm9hEGeaO1v/YeHR80BzUaPLvTpdzDET2XhvFN6hjRjI5d+17Z+CkeexXv1H
         tQD7QHvIuZiLtADdzxrEln0FLuCusXS/XzFQNB1YCXjXcy9KoeU2PVOyre/2wkv4Wy5H
         uTI3QDHnyCFcs39ytbaQL9ZdxVuBV48ZJJDDVsiU57nUZYdhn9tXy+d/JRkx93PTcDeR
         5Dsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780951482; x=1781556282;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XCbndmvYUPntNWcEfQroOqXP5F4vnHs8kXOTKDYVs9g=;
        b=KCGXvvxTg1rYyjM5zVtkGV725LZtBEG/MMzK5cd42AYElYuZEiwdAu/pLvzuTalYyw
         SPOZyWDV0ESuLmJu2T/CAcBTgZharWlgrc+ateVjBEG86haC9YnH0MLC/20aCVkZkvPH
         VetoaHueZqBJI30owYhnAONhvgvSNJdq2bUanaMEz2+F3ad03APxQ72pisIYvfhXISna
         qXVa2GKevgqcjn7HTppabWmrZTd+P/dQ/Rv/A2b59laGBlrymxkTwzZQTowM+dNnLyag
         TuLRQEVBTG863qjRYvFX7IohL1c5AE8yWRMpMA2D3Av1GTEWw5DWtYVMikNh+GbdZlFu
         dKZg==
X-Forwarded-Encrypted: i=1; AFNElJ/cmBgRScoRMpP9X8BRwPhz5YqZikCWAPhZivBCu6pC6DxdckVmU82auv3qyv1PmVB2LyEM4A0eo8mIsPDpEA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxtn+YYkUN6wVqZJ82+gj5Zs9AYo9JXRCv/O01c4f5gyguOv7sS
	SvxGOS0qMThUn3EDl6z+FD5KMga5UWPe2LOpP7ub1rdoCMI1wmU2I6xe2P3n3qVJr8/4G7bNdnX
	x8r2Qu9BAY77S4XR3vp66N1DKIxuvUYqfa2jUcV/CW9NkQLaEHzP/XCJuSwkjZAbFjVjpJ+66AD
	W6DMroaZE=
X-Gm-Gg: Acq92OGCIizBDkdAQoUP9nQuosERatoSfeeyPFtZeJI2NhiKt6A/Nd3NLc4zybeN/Ug
	ZUkRRyE/KiXjUV11lu9y4sVHiuEhwDtjz4RkxxU1flgJX97wmfa21UTJsJwMHYYHrxn0ePjjbf1
	bzP8nWrqi6bTyxIUtWVlvxGQbPaIIjcOMaTwKKHHNEVRfetHZzHNE6PVnCllbqRQu6eSfCT/jms
	CHtNV4oztkkT5BRvRWaOF9g46eOtSD9FyKAq5BnEc+56l58+4HzvEZg9K7i2BbFqgmNuIumdJVR
	hPNHMnbG3a2UI8e0A5UNCGGDAULXHTUjMO11uhKQFZyCJ7+jheeURwqfQnE5mNXVc2OT7H0vyPs
	lNBZyTm2jZZplyTWV3O5EOrXTBojgThWgVS9QmJSi4+j6XQYbn7q4KY8=
X-Received: by 2002:a05:622a:598e:b0:517:29b1:5433 with SMTP id d75a77b69052e-51795a48088mr230454481cf.24.1780951482136;
        Mon, 08 Jun 2026 13:44:42 -0700 (PDT)
X-Received: by 2002:a05:622a:598e:b0:517:29b1:5433 with SMTP id d75a77b69052e-51795a48088mr230453851cf.24.1780951481550;
        Mon, 08 Jun 2026 13:44:41 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4602cda3651sm44018439f8f.32.2026.06.08.13.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 13:44:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 22:44:25 +0200
Subject: [PATCH v3 2/3] dt-bindings: mfd: syscon: Drop custom select for
 older dtschema
MIME-Version: 1.0
Message-Id: <20260608-n-dt-bindings-simple-bus-syscon-v3-2-4eba9ec1212a@oss.qualcomm.com>
References: <20260608-n-dt-bindings-simple-bus-syscon-v3-0-4eba9ec1212a@oss.qualcomm.com>
In-Reply-To: <20260608-n-dt-bindings-simple-bus-syscon-v3-0-4eba9ec1212a@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Jacky Huang <ychuang3@nuvoton.com>,
        Shan-Chun Hung <schung@nuvoton.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        Aaro Koskinen <aaro.koskinen@iki.fi>,
        Andreas Kemnade <andreas@kemnade.info>,
        Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>,
        Tony Lindgren <tony@atomide.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, linux-omap@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6196;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=LzrE5EfUbK9IefyGKGGuG3khTkACTjk9dd3YMHxzIeU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqJymvG0dY6mMTSdz+7khQam5ej9BFaibSaOMor
 sL7GiV35QKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaicprwAKCRDBN2bmhouD
 10Y8D/9OqnVFNLC9XQmEFdzAH74QzkLpmWa4/Yo24Dy0TIOw3EGXdg443cUFe41WaMbLTAuOD5y
 CP565iVC2lK+gNRwl6lRON5SaJ3Tq+JBT0DcaeuKDAOGL1zmZpPMi1bOBK7L3Kf2/QpwqJjJ3lQ
 a9DB8DL/xyittFuwApbHvqaweBGVA+6GVivznOqsfC13PQH/t1EmfvYBKT+FzjoT2l+XGhjV8Pv
 nQIhqIT+lYhvbUzpIj4qxNGll0nVpRB0kP6nvKxdoTRpoJJXAWuOSsuva1LbvRL/6OBSle9rgmX
 xKShSyxMLcBX4dWrvvGNv2yiqdXYw5CgzUlhJdeJ41h3SvzU/9NZVXg/NtzQ8I0PdshDshcbYr2
 3S9lO402TpGbJwwpLwdGhPifY5fvAyL/HjjLnsB1ybFzsespzLLGvqvboOJVYhbtCpSK4L7i4A0
 xrYG1MJjK4qZx3yDYBqsFv0w/HONbJ7llLNlsgePjl5YDRSS2SiIf0aYRzDEfb89Aa5IAUzZktg
 ADiQJjOhT10Q5vySDleffnouEoffGofTkkqOCxN2vwRubLXL1rsKvuoBEWTFxFWbK9ptiYBnIlK
 slqYglEvdHKc+AkYfFWzp9bc5G6l5qw4IgPAZxGajRpR9z1evci5n3mDi2TF1XxXTrEPqXh/Zsg
 aXNz+LiQCbvBHYQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: N_HJBaTQVu1ojsMO8k_pFHxj5meOpDMi
X-Proofpoint-ORIG-GUID: N_HJBaTQVu1ojsMO8k_pFHxj5meOpDMi
X-Authority-Analysis: v=2.4 cv=dIaWXuZb c=1 sm=1 tr=0 ts=6a2729ba cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=y3quGObI61Sf3t9l_FAA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDE4OCBTYWx0ZWRfX2LFnmX5l3sN3
 2lVTXrL5jG5f+O7Ptahn2ptdEWb6o3tYwVcs09Kf/ArtSV8bCig8TfgJNskgtpEVmPCHsueqkK6
 QrDDsh4xZkjrLCYz8fqH5chqXKT6skfJ7HxdHBxJ1m7LF+Itqyhm45iRla/AEeEp5gJoMq8jm0e
 SabFo74qMx/jzIESDfDHqW2YYqxmG6QLKZdjijJOqDfdzlka1qfkovrZbaH1m1sew1SEzJl6SGH
 NskoHfbjf3tXSVQghdTi7rs7VyIMbT7/opa0dRKWZ4kryR3JSq5lqbcB45bojy9ekPkGGlXYeJl
 sW8l8rEyFBlkyXtaOxaoJMGdUjtDjtgKg2u2m0AreIlqj5wnJ3IQZbRDh51zJYPijali5J6xsBn
 hX2L/bkm7jvfjDdxCQEzIR6bgHB/r++a70I1s3XDnOkAlgG5McDifB6dpbk7D/h7t56J+2a1mbd
 gqDKsC+wzoCqjod3uTw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_05,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606080188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_134443_983902_634A0A07 
X-CRM114-Status: GOOD (  14.41  )
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

Older dtschema <2024.02 required custom select to avoid applying this
binding to anything having "syscon" compatible.  That's not the case
anymore and this additional select has two headaches:

1. Duplicates all the compatibles listed in the schema.

2. Is error-prone, because it requires contributor to add the compatible
   in two places, otherwise the schema will be silently ignored.
   The select list already misses mentioning compatibles:
   mediatek,mt8365-infracfg-nao and renesas,r9a08g046-lvds-cmn (with the
   latter being reverted for different reasons).

This requires bumping minimum dtschema requirement to v2024.04, which
feels old enough to be a safe requirement.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v3:
1. Bump dtschema requirement

Changes in v2:
1. New patch
---
 Documentation/devicetree/bindings/Makefile        |   2 +-
 Documentation/devicetree/bindings/mfd/syscon.yaml | 116 ----------------------
 2 files changed, 1 insertion(+), 117 deletions(-)

diff --git a/Documentation/devicetree/bindings/Makefile b/Documentation/devicetree/bindings/Makefile
index 7b668f7fd400..40c2094f47c2 100644
--- a/Documentation/devicetree/bindings/Makefile
+++ b/Documentation/devicetree/bindings/Makefile
@@ -6,7 +6,7 @@ DT_MK_SCHEMA ?= dt-mk-schema
 DT_SCHEMA_LINT = $(shell which yamllint || \
   echo "warning: python package 'yamllint' not installed, skipping" >&2)
 
-DT_SCHEMA_MIN_VERSION = 2023.9
+DT_SCHEMA_MIN_VERSION = 2024.4
 
 PHONY += check_dtschema_version
 check_dtschema_version:
diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 9c81010d5a74..b70018bf1bcf 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -19,122 +19,6 @@ description: |
 maintainers:
   - Lee Jones <lee@kernel.org>
 
-# Need a select with all compatibles listed for compatibility with older
-# dtschema (<2024.02), so this will not be selected for other schemas having
-# syscon fallback.
-select:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - airoha,en7581-pbus-csr
-          - al,alpine-sysfabric-service
-          - allwinner,sun8i-a83t-system-controller
-          - allwinner,sun8i-h3-system-controller
-          - allwinner,sun8i-v3s-system-controller
-          - allwinner,sun50i-a64-system-controller
-          - altr,l3regs
-          - altr,sdr-ctl
-          - amd,pensando-elba-syscon
-          - amlogic,meson-mx-assist
-          - amlogic,meson-mx-bootrom
-          - amlogic,meson8-analog-top
-          - amlogic,meson8b-analog-top
-          - amlogic,meson8-pmu
-          - amlogic,meson8b-pmu
-          - apm,merlin-poweroff-mailbox
-          - apm,mustang-poweroff-mailbox
-          - apm,xgene-csw
-          - apm,xgene-efuse
-          - apm,xgene-mcb
-          - apm,xgene-rb
-          - apm,xgene-scu
-          - atmel,sama5d2-sfrbu
-          - atmel,sama5d3-nfc-io
-          - atmel,sama5d3-sfrbu
-          - atmel,sama5d4-sfrbu
-          - axis,artpec6-syscon
-          - brcm,cru-clkset
-          - brcm,sr-cdru
-          - brcm,sr-mhb
-          - cirrus,ep7209-syscon1
-          - cirrus,ep7209-syscon2
-          - cirrus,ep7209-syscon3
-          - cnxt,cx92755-uc
-          - econet,en751221-chip-scu
-          - freecom,fsg-cs2-system-controller
-          - fsl,imx93-aonmix-ns-syscfg
-          - fsl,imx93-wakeupmix-syscfg
-          - fsl,ls1088a-reset
-          - fsl,vf610-anatop
-          - fsl,vf610-mscm-cpucfg
-          - hisilicon,dsa-subctrl
-          - hisilicon,hi6220-sramctrl
-          - hisilicon,hip04-ppe
-          - hisilicon,pcie-sas-subctrl
-          - hisilicon,peri-subctrl
-          - hpe,gxp-sysreg
-          - loongson,ls1b-syscon
-          - loongson,ls1c-syscon
-          - lsi,axxia-syscon
-          - marvell,armada-3700-cpu-misc
-          - marvell,armada-3700-nb-pm
-          - marvell,armada-3700-avs
-          - marvell,armada-3700-usb2-host-device-misc
-          - marvell,armada-3700-usb2-host-misc
-          - marvell,dove-global-config
-          - mediatek,mt2701-pctl-a-syscfg
-          - mediatek,mt2712-pctl-a-syscfg
-          - mediatek,mt6397-pctl-pmic-syscfg
-          - mediatek,mt7981-topmisc
-          - mediatek,mt7988-topmisc
-          - mediatek,mt8135-pctl-a-syscfg
-          - mediatek,mt8135-pctl-b-syscfg
-          - mediatek,mt8173-pctl-a-syscfg
-          - mediatek,mt8365-syscfg
-          - microchip,lan966x-cpu-syscon
-          - microchip,mpfs-control-scb
-          - microchip,mpfs-sysreg-scb
-          - microchip,sam9x60-sfr
-          - microchip,sama7d65-ddr3phy
-          - microchip,sama7d65-sfrbu
-          - microchip,sama7g5-ddr3phy
-          - mscc,ocelot-cpu-syscon
-          - mstar,msc313-pmsleep
-          - nuvoton,ma35d1-sys
-          - nuvoton,wpcm450-shm
-          - nxp,s32g2-gpr
-          - nxp,s32g3-gpr
-          - qcom,apq8064-mmss-sfpb
-          - qcom,apq8064-sps-sic
-          - rockchip,px30-qos
-          - rockchip,rk3036-qos
-          - rockchip,rk3066-qos
-          - rockchip,rk3128-qos
-          - rockchip,rk3228-qos
-          - rockchip,rk3288-qos
-          - rockchip,rk3368-qos
-          - rockchip,rk3399-qos
-          - rockchip,rk3528-qos
-          - rockchip,rk3562-qos
-          - rockchip,rk3568-qos
-          - rockchip,rk3576-qos
-          - rockchip,rk3588-qos
-          - rockchip,rv1126-qos
-          - st,spear1340-misc
-          - stericsson,nomadik-pmu
-          - starfive,jh7100-sysmain
-          - ti,am62-opp-efuse-table
-          - ti,am62-usb-phy-ctrl
-          - ti,am625-dss-oldi-io-ctrl
-          - ti,am62p-cpsw-mac-efuse
-          - ti,am654-dss-oldi-io-ctrl
-          - ti,j784s4-acspcie-proxy-ctrl
-          - ti,j784s4-pcie-ctrl
-          - ti,keystone-pllctrl
-  required:
-    - compatible
-
 properties:
   compatible:
     oneOf:

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
