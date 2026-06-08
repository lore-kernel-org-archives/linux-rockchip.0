Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74F3DCD8CAB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 20:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y30Zj7/kkd5588b3LpXD/Gq3o+ylVNTujxc7WdZZi1E=; b=nVGXhLmP5NCJ6H
	DcI9zSv05h+omI0V1smPSKnMjRUEQd4JpbyHNOywIUEaD8rOo+6zmvIt+cRsrU3Bx3yIjiYBAzec1
	xeiOkNXVjvHvCgmUdxn0dbVQSen3nMvMzd7uJU4xjqiTLGt/B8yGW1Rq6NPMwQfYo+X4zPwLuJE3d
	ptv0wJWUEMPIVqwhbTmKRb5IXp7VkqDKmCCLvpR9YW7QfuLLc43837X2JRn5yWK4cEiIddDZstJmF
	p04qkOqbcep6Am13kEn3RCQuwhix39QGH/5Fda0c1++FD2I6pJhfn35y8e3nkLjC5oebzqQC7Obvb
	1ymgB4lqRxlPG+HIGKRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgpw-00000004NJY-11DG;
	Mon, 08 Jun 2026 20:44:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgpt-00000004NG1-10zr
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 20:44:42 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658Ix0rA345920
	for <linux-rockchip@lists.infradead.org>; Mon, 8 Jun 2026 20:44:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aa+ndaOgUThxNdHVB0ASmJ3j4g2yeUEnhZvQ4B/J6e8=; b=UxqmRTY9puFB7LWL
	ZMu0Qiib4RidpT67QVHaJx2XWnplGgMlJDqfKD+FGvqkOGj77M2IhfxwqatB3Bh6
	MeAf4wYyOGmzSi0oSa3FK7lEHss0rngDg95X8K1nywjpEmgKCuAiqFQ+ONKNH1Ud
	ScjuO2ZDFawf0CTjKgY2LE8K6QdrArARPhp0oQZj6oDAFZ1EwOylfi+IfUKOBtoy
	3onE4g7R4BmbKCdZurEZArH9podQMV73f6cSVxds3g7DT2AIhIJ0jmZ/EQmQwwxq
	+FkX9f+XnfAEPJJQcwup7UXe9Yl/DaaPNiCll092tEMxTZCmQIrpIf8XB9SHUcSe
	v31jAQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enxee235j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 20:44:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-517c65e497eso9094181cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 13:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780951480; x=1781556280; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aa+ndaOgUThxNdHVB0ASmJ3j4g2yeUEnhZvQ4B/J6e8=;
        b=jqUBQ7o+GxdGQ2Hj0kh+vejVKWqjKGOr+bGIZ8nnZM3b35eUmmgQ7MDXA2ilg0+9z+
         UmwxCcEzskin4IGogWMx1xAA5p2+vXLBBj/xgF98ewogZlLFslYFI/PdpkhgGcgnf6TW
         i1zH4B9GTRBvG7Yz8QcZ8V30vyKkErexiAtAeoh4557WCzZSc63J6ABhtt+OJ13UiIYs
         e5ggeh01YKLc510mSeZ8FTV+Ky/1FYr0KFuZxHPd1KKCEFrury+9e5wzhWEoaVU2BwEB
         Udf7UXM4wp0brRwY5bp+Nm0jpL7ThMAJmSVi0Z3pP+PGMMi3SluczjZT4VTw9b187P1O
         4mmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780951480; x=1781556280;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aa+ndaOgUThxNdHVB0ASmJ3j4g2yeUEnhZvQ4B/J6e8=;
        b=J7n6WjH+El9XxMmjHjHB7jumqfnmcfcwXw2n5FrpAAKg0dj+cp7fxHQkmhfw5LnW8I
         3p2v/NAVb1awV3/ovLKMH7U7rBrz3zBsamDInlDXGsZmW9Bow5h1yNhp8GDOToshKJ/E
         b+HDkY/jWAN/gxHjulFg8mqLbRFFQ7SRCWDKF3ULaaEbEVFUD+20BvB3Qx5gFv2C5q03
         86/y606eVm5qDOVX9Wwzi9qeXpWtwwhkjxnhDpy6rYOL9YzAFBQjDysyRLw9c5aFmxFx
         X1TqVlJnkkJ5gHjbT+98Q8HcUvUUI8q4lq4p9YUsq3CpYkNr9al4K3Pu59XQwXjlIHom
         c7iw==
X-Forwarded-Encrypted: i=1; AFNElJ8bsil46zjHfbUzPl+b51xZGqNLw9+Uqu2sGRZMmuC0iRg1BhVLyBF2GLyHTSTXs0G+33iMJC5d64r41QpAJw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/w4GUPSgurVCWXPuApRN4Ab9Spf4ooFI7+2KHTPMXs3e8sIW6
	qmBHkjtSjYSddJxWSapZEK00EnuKImKdWhMAqkNR7DSw39r6Bp26udzHZrgZVrD9aTM+lpV/Jen
	E4VFs0pTxHSqlpB9AqC1gHFf0Is9e3W6E62npkyoIFs7OsVCgeTKV5hYEeVpVjcjogh7e7soq0o
	k=
X-Gm-Gg: Acq92OH8uXxWmyZhYc8XQr+uj9zM491FfuhIT9xXF7Pbd3LjC0Fcec1c3g9P1fsztLk
	Xyq/duNoAwQdcmzo5c9L6WPgDcN2PfJ01lLt1Hxut7cOzxQwFngD462NDSkT4ejNhaOLeUwR3Yh
	QjZpESs5SUWVbvFYQ9R9//yCunVTOfRKEMLgDLc5BEP1i76lom3xbMNhZNX5oRw/IMWduPrx6eN
	aI5RrquAYkmh2m7INlTWtjpCtULBm8vd+vU/Q6jhhdiwowfxokRITosB0bPwcX7AGN8rVfiS1X+
	hveGr2ZWmc+GQmTpb9rZgZi+878vJxwjpbRCGtUPYhpG7gy+/qmNk1bBT3lzDrav+y6pDOSa+GJ
	OGG+sGn2f1JSMyu9y84w54ubjTRXzahXxAc6mjLI+vLPTSjhBxOhZi2Q=
X-Received: by 2002:ac8:7d94:0:b0:517:884d:3801 with SMTP id d75a77b69052e-51795b510a7mr238024511cf.25.1780951479407;
        Mon, 08 Jun 2026 13:44:39 -0700 (PDT)
X-Received: by 2002:ac8:7d94:0:b0:517:884d:3801 with SMTP id d75a77b69052e-51795b510a7mr238023911cf.25.1780951478802;
        Mon, 08 Jun 2026 13:44:38 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4602cda3651sm44018439f8f.32.2026.06.08.13.44.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 13:44:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 22:44:24 +0200
Subject: [PATCH v3 1/3] dt-bindings: mfd: syscon: Disallow simple-bus with
 syscon
MIME-Version: 1.0
Message-Id: <20260608-n-dt-bindings-simple-bus-syscon-v3-1-4eba9ec1212a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3471;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=GGm0AisNFCyHSk5n1cRU+JBiint9Mvk66lCZxnmAJS8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqJymuLrRKQk+tXDx2C3XILUa/Vb/m5SqeAMHbs
 hX701Fcl6CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaicprgAKCRDBN2bmhouD
 1xNzD/4owClN9H1JCOAoIzeu7RK56xSXZgce4N5pJJTSqM+cmLpO4VODAdnX9M90nuMT2mDNxlD
 SdZfpjjNTupJPwAZX5x+aSPrqbWsyQm1nVutsjB3jp7H6S8/1OnP5Z4BhuiwQEAhch5x6k4NVvY
 qL447Hya8vixLLsgY9sANwVmoXUKUmziA/9FQDpSgQUsoZsBPSZushtTAtPvFjdglp3PTDWJrSL
 QDkuLE+q61ip5Hpuble0C5lsc2dMCKrlXW6Lez7hvabG0BOoND5THfBuKNChvxJ4qRTArQF/VLU
 AAqUynQwJTUDLRNmHYcsvOuss3E1UqUdj45pZe23Wnlx/0WyPokJRUyqWtxelGER/rgEH4lAp3q
 qItSXbI1oiHviWpwFk0wcXYCZ28ekjTgqi6y+NctPbsPQk0mtADjQiu2eoA9gP6J/gR0fpYjBrC
 Q/en3j42uVe8KxZkbNTMCXke5RNveZKSbcz5vRoSFJiMNphlzRR382sRUXdhW8VSPf5cUIVjqlb
 cm/On61l90dg5x69fhEH+rDEK1Sc8U1+vsUhiYhWoq9jtHVBFEWUxcS5GFohZLrO5VrGSfJb2xe
 WRXhX3b9AoNrhcspfMTcxEmE1w2Z+SX9qPJ50ERHH5VTjFuC2lKRS09/TExgKqaabbdOzG+bCnK
 L1BibnK0fC/izPQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDE4OCBTYWx0ZWRfX1F7cl6SGSucC
 hUY3AQPrsJCRUw+2aOiilq34uj+MSkjZpc2x+aQop9K/QSqEYhBCfWFIkjZ7YW0pxVPLS3BdocT
 kDgPZPdnFCfDt/ff7W0xRDvC1q2fhyTQGlfhXvq6cZdPj0LoD+spkxyu4CHO+ocJmuslSjqfD+i
 pQO2MZmMXJSpf39KjaELy5nziSfWq73FugA0OzqPKZT5UGyK3gdp5Rv4OtXdSRbkur3x1cwjkGS
 gErTEeBlDXcuDXCd2/P9qDsqR8uQvtLT19z2tx4A3JSkyhF9zCRqzl/b1tXDmisw2BHxS+0KMU/
 6bbrzPlf/WAM6ov9hq4LzQ586vjOgJKcynp5SNYLJ3jEaMgnIyFX+Lpxe1TKraJqsSEa+y1WEc/
 wjlCmvqB9yjCpHas8U8so1SAIDTCkQI/B3awHzu2mK8Il6I/AaT0OxAIeTnxHaWHs3yxgo4Tp1P
 FglDXD4w1nccSjPN1XQ==
X-Authority-Analysis: v=2.4 cv=V6BNF+ni c=1 sm=1 tr=0 ts=6a2729b8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=SC3sQ6iH9rxi55wiDKQA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: FR4MyS00dq6dEOTEdPeGrU7K0W_wfwQH
X-Proofpoint-ORIG-GUID: FR4MyS00dq6dEOTEdPeGrU7K0W_wfwQH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_05,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_134441_403584_E6B84694 
X-CRM114-Status: GOOD (  17.53  )
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

"syscon" is a system controller with registers having their own
functions, thus not really a trivial MMIO simple bus.  "simple-bus" on
the other hand is just a bus on which multiple devices sit and the
"simple" means no functions are allowed here.

Combination of both "syscon" and "simple-bus" is abuse of DT for easier
instantiating of Linux device drivers so add a schema to disallow that.

Unfortunately there are a few old cases of that patterns, so add
exceptions:

1. "cznic,turris1x-cpld" and "img,pistachio-cr-periph" are already used
   in upstream DTS.

2. TI has several DTSI with a child of SCM device (e.g. "ti,am3-scm")
   using "syscon" and "simple-bus" but without a dedicated compatible
   documented anywhere.  Add new compatibles for such cases.

Additionally, add comments around code enforcing two or three
compatibles: it is similar safeguard detecting incorrect bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v3:
1. s/ti,omap5-scm-conf/ti,omap5-sysc-padconf-global/ because it is more
   appropriate (specific)
2. Add comments, why simple-mfd+syscon has dedicated if:then:

Changes in v2:
1. Complete patch. I accidentally sent only part of it, built on top of
   internal WIP which I forgot to squash.
   I received Ack from Rob, but change is significant, so please kindly
   re-review.
---
 .../devicetree/bindings/mfd/syscon-common.yaml     | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon-common.yaml b/Documentation/devicetree/bindings/mfd/syscon-common.yaml
index 14a08e7bc8bd..2d5eef5add54 100644
--- a/Documentation/devicetree/bindings/mfd/syscon-common.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon-common.yaml
@@ -32,6 +32,7 @@ properties:
   compatible:
     contains:
       const: syscon
+    # Always require a specific compatible for syscon
     minItems: 2
     maxItems: 5  # Should be enough
 
@@ -52,11 +53,44 @@ allOf:
           contains:
             const: simple-mfd
     then:
+      # Always require a specific compatible for syscon with simple-mfd
       properties:
         compatible:
           minItems: 3
           maxItems: 5
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: simple-bus
+    then:
+      # simple-bus conflicts with syscon - if a device is a system controller
+      # with miscellaneous registers, then it has at least one dedicated
+      # function thus it is not a simple bus. Allow existing exceptions.
+      if:
+        properties:
+          compatible:
+            not:
+              contains:
+                # This list CANNOT grow
+                enum:
+                  - cznic,turris1x-cpld
+                  - img,pistachio-cr-periph
+                  - ti,am3352-scm-conf
+                  - ti,am4372-scm-conf
+                  - ti,dm814-scm-conf
+                  - ti,dm8168-scm-conf
+                  - ti,dra7-scm-conf
+                  - ti,omap2-scm-conf
+                  - ti,omap3-scm-conf
+                  - ti,omap4-sysc-padconf-global
+                  - ti,omap5-scm-wkup-conf
+                  - ti,omap5-sysc-padconf-global
+      then:
+        required:
+          - incorrect-usage-of-simple-bus-and-syscon
+
 additionalProperties: true
 
 examples:

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
