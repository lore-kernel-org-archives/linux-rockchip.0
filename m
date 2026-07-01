Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E2F4C43602
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 10:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aKIskYsxNTgWXBJEIyGpmPbAXVqOZIlmVydaQXpU6ww=; b=pINz6X1DCdxZ90
	QdoTRu98yjLcYC4EZTsFuGaS/vBeIDPeBrjDnV3Mk4RShr8Xj2F8S3RG+1NJz31Fsb2pMOq7dz4Ti
	3jrEYUNWNvf2vvornXWyQ8bA4OOzgB+f0hNGKf5i75YR5A2uO7iePUh56MbLNLBC/h3Auh3rFhXqF
	O0kRet8uiOFLUbZwIsVr0jDEvVz4Q0jV34m9dvxRb1yEdDRiNy2E4e62relKw64uWjqDRWQE9bkSv
	Y0b+z97nju+htWOdC77H4TrfqJ9RYlIE9EfeWf0IxmZhCxHHgfhzGGQGTh4VIkdANzNxVVaZBcKjm
	M0EqhR2oaSyd9hz9YVXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesen-00000001OIJ-3Orm;
	Wed, 01 Jul 2026 10:59:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesem-00000001OHH-2zM8
	for linux-rockchip@bombadil.infradead.org;
	Wed, 01 Jul 2026 10:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=NoB+JvcT8HDMjNFxuGeWyu1B07bjfVTBwV14/TaNUmY=; b=TeHfHxnqJykzmpt4BBbMoNbNzu
	Z4EacciUtEsHtHIboTtaj+TwVKjBgBUVND6pu6qj1+CBczd+hVccYfCY2XRffnGCqwPqyrIiLj8mL
	P9BgH6CjUgMPdDiCKWb/bYxwZxu/v8qyKc+pmo/UryDKZuGK4YCq32jz14yeofM8HeTOaCJMbqd0C
	/XAGh+GLBTu/rk9TKDtgywQ3BjilsNRWVCCebfAM/bLuhHJCDHm8V+DxhDB61k4Z6vVx+dH4do0yA
	R5N7lRNhXt1NCgbe4CSSnXI0nd8VI22p4Y5bp+aTZdI8YkSSzOO9TT2yvp3VhLRnfmHmbPBSQYDEn
	/k0iueDw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wesei-00000002eWK-1IiR
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 10:59:03 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661A8vT3753533
	for <linux-rockchip@lists.infradead.org>; Wed, 1 Jul 2026 10:58:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=NoB+JvcT8HDMjNFxuGeWyu1B07bjfVTBwV1
	4/TaNUmY=; b=MazSSan1rG2SE9ANLk6d1pDCFKtI37lHFeOoIdGhKXVSlgMIfqP
	qdQ61+JcdxG+v04KdUOQ1lXp32XK1lcwlf3w+06YqsS7uc5Up2rtSGtt1NEKkIRa
	PZyOrY36wiayvS90MsBvqqvqX/BTRPMWo9EC8jQs2KbFy6oOHZn3mqKzippxcTFC
	GWqnmUUlezynm5lJd/47jTfmxiQrCvAIvn2goUDmRdWZ+91oCowIBdVah6nYnzAN
	FkRdlR4P1AuH57B/9oxF65RFtvlePIHGP8pvZDQSssecwCTJ/r2NgyKEYV2XTEsQ
	ECCcYA1Cw9R3ClOXaMNSfpOewZxkfGbxGGA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4rsy2ack-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 10:58:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e663c29f2so61719485a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 03:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782903536; x=1783508336; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NoB+JvcT8HDMjNFxuGeWyu1B07bjfVTBwV14/TaNUmY=;
        b=g0JJsuIxnk6s/9emdtcfRBknRnbzAWT5CjRV1GAt92qEEOqWhD9XolchrM5U036bnF
         uZfF4AlvbXjs6K2Fe7ZsQk/typzzNngu5yPSke1wYWYc4ou1s81ND5NyH4hv+3mnJaul
         L6Tjg0O7qOKyGT3lddtQxr8KPQlTxOwMcDVK3sSv4JzjCAN/Y/jkz4HIZrQHLBKBKlbF
         TGzMEZcdCN9FTnmGfBHbS++eRMaYdSZtVJjs1pMfqHgc0vjAbQibOQzl4yTdzDs9TOFs
         /f4l9Eo4K8zHJy7iq7g1vbENR95XcTCGUBJhAqlSOWmYbwh+DlY58Fy+HivlADqtN74k
         iSsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782903536; x=1783508336;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NoB+JvcT8HDMjNFxuGeWyu1B07bjfVTBwV14/TaNUmY=;
        b=CwAxtMNgq2b/97BT3EB9DQvmEXP+pNFpRpjberH57TsPAERZ0lXPfNlk6kDU1lSGis
         ybmWvBYN2JpsSNo2NYeJngjP8FOw7wmgg5S4vdbYgCZfa6Ao9Mk/a04jmDaCgs7iJBqu
         QelaA67cfakIAuQr0igp6jlW3RjK50LId6gBcd0pseWUJURZMukCk6Na20prvfDFgnpv
         F+uwX89rlVC7yvWvp2dnI2ejdijVPhUvYF4GAm3iol1I0uwbatke1rBr5em+0+ayX1rI
         7vp/MIZLR+KEbr35fs0QobYdp+OsnThBwcgYpPAGVr6+KlgkNQHsSUCMBBApY2oXuMwC
         kUQw==
X-Forwarded-Encrypted: i=1; AFNElJ/zz0IN3fEKff3t/S0jjBS4PsDHZb22cxUjoeu51qNQlmZl+JKLlNDwVci8ka3oHbn+nMDGmZtN3rXh6fZCYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyifyU2GH08z9KtnO+eLczUi19zBFG3fstV9b2YteUehJlUWh1V
	ftk/flGRafTUe3/xxeAR2VVpmu1CnoCdSXNQTcLv1Cgj2grGxGh/Xm1KzQ5JNZ+gWU9AiuoTDiU
	6Tj6heeM7v/ayBs9MypxFd8eoWcn/ytETe5hJXj2N8B8QHmNO/1iQperwAdg0aW67OE9xGNaDbM
	w=
X-Gm-Gg: AfdE7clS6WK7WR1zbpIhkf1gNxGQ5Hir56OAPfZ/Y+s8Wh5LuAUfYYmbJybHUD6KNtT
	gKSlTM5OVzHonA1KqcSBNNd6tbGBtMMWDA5eDXWsStUyNY/ev8OyAVoddL3ENZGf0tPD7qbuEqK
	a/m+g/SRpEi3MudiXKnh/ixlkiLQLijXzBrqWJO/KZv7dMGI8D4SP/pg3bTbGNu1gR9f0lVEF/i
	MVX/DL9MOzF+DV0/AIwz1+yShyfOD+Fm9qRBZ6Rqe++QUjD/sdM+vgbQhRZZIT4Ksw4mtcQDBG9
	QFwgxzApDCVFEIRYWeIb38v2f7dFspGlI1eU56PE1WLqpHgvoOORoLqqvpnUN49wvkKOm0AteUX
	FaGEqwGwXqsqmvQeuXDlexzn/X4M=
X-Received: by 2002:a05:620a:4413:b0:910:c1ba:91d3 with SMTP id af79cd13be357-92e69867895mr690843485a.45.1782903535679;
        Wed, 01 Jul 2026 03:58:55 -0700 (PDT)
X-Received: by 2002:a05:620a:4413:b0:910:c1ba:91d3 with SMTP id af79cd13be357-92e69867895mr690841285a.45.1782903535300;
        Wed, 01 Jul 2026 03:58:55 -0700 (PDT)
Received: from quoll ([178.197.223.174])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c0e92687sm33275565e9.0.2026.07.01.03.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 03:58:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Elaine Zhang <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] dt-bindings: rockchip: pmu: Narrow definition of reboot-mode
Date: Wed,  1 Jul 2026 12:58:50 +0200
Message-ID: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1530; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=nlgozW7Dobb2ylNe8MBLOd3H8mDshCodNwiOydcFYJs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqRPLpKzd8WLvvgIW5ycKME27CSjTwQ21dq6SZ+
 CjuRzJhJViJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCakTy6QAKCRDBN2bmhouD
 18zMD/0UC4obuG+GdQYwkzbI8qls0oHKONIO5UWSmI/IpEo1OOw+aWws+GzrtHLcuuuz7MEP615
 SJLX+jG976kQYODYQ/Cp3pFWrgCgXdqZ453qsxZ2S9jBFyevAihu5h8FfndQ6fu7Mw2sHJynVu4
 aY1BqYJXEymVe0FoCwB4CaaaIDladP/Mu9ihywK31bwkfaejVf1a7+tHdGOiJY7mYvT3SZlXYyF
 9/bAosYbr1Qfcj2GdvQdtwSYAba717afLVX5Y/MOz0aovsclxwebDKeOrt3Gw7L66cv8JEe+jB5
 QHevVkC2UMrOogVWeDIvC6GZLCRiSyQZF4owIk/kny/SrbdOLYCCtPnwEPo1hj8zLoLb8fNH8Mx
 UAhhqejRIrzNaUUPKi1hmargx6zWxnfIoiCn17s7ubfj7gICc6zgqirdN8JXMrFhsahABw0WrW5
 CKbZbdOEK6snD+0e1zyg40CfQX2rUuZvvNwlLCcVm1Zgqiw4T/BsxIyCFofNdQrnRr9rPmrafr4
 9hZCcUa2rcTIxflKyYn20r4tuGK9m95k5IP3ql3tXBSmKUSuvG6Md/LrwtuWPaD+LooyRVjPJnA
 v2KTlms4EDvQvIAXrPp143OG2tIrWC7TxsSKPsuJcg0DikLMkU+Jvc728ROCn7VjX90K09rF+Be snEbpDWFWE4N8vA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: FRHb96meUruvreUc0K1c9pzgw2zai1lZ
X-Authority-Analysis: v=2.4 cv=fLgJG5ae c=1 sm=1 tr=0 ts=6a44f2f0 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=N6niishs+lR9UBL1FN3Qrw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=uYWl5qKCkACiJsL7rIEA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDExNSBTYWx0ZWRfX7GFieyQ28+wv
 Muuvak9NpwON1Cenb41AQSfEtPNtIVKwlO13QgPlBz1w7c2e3eM2pH++f2F5kM8Owf+I1HyypTN
 EUIBLA0iogMlBhwcXLiPNlqR0QoAxKIkhrlKzjLGUckeRdSC6orPHbs3qERfgztMdTN40BI8h5x
 iSeBIA9RVZV5qoWINKtO079GAur9IHVwCVlrfmG1evyUz5SLHZK/Lf3J4KKafUTt2eprhhEkq22
 U9Ac0AiBO8O96nca2+X6OyDfDbPmLAfPdr8uJlDy85UdKAlYsAN562rNsdAibA335To3+gJYolY
 bihmKR8Oq1SW4AnYBlLQjjFH9p4g4PXCDP4x9fR+Ss69t06zu+C3v9Ycoi0lSzOAvc8k20t/8Xh
 wFJa8sOmnHi0HDgnjNq3pTvsKilVsBT10nuFqYQODcWS6Ag535D1Z/ILjmamUioIxLNjOONIzun
 TK0L1N6sn3YdLtG0BcA==
X-Proofpoint-ORIG-GUID: FRHb96meUruvreUc0K1c9pzgw2zai1lZ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDExNSBTYWx0ZWRfX1rpj279GGiHX
 OFjp4YbpgkEuQCkpumajBYRmkV97p2YQ8XOETO5UJpNUaLfncILjLw/HAEx+2A32oY+5DrYSKdf
 sRu9WVJ+023MKzxUjIWwts7TwCDE0l0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_115900_597170_9EF1769E 
X-CRM114-Status: GOOD (  14.92  )
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

The 'reboot-mode' child of PMU node must be a syscon-reboot-mode one, so
add missing $ref to enforce the validation and disallow other
reboot-mode handlers.
Defining 'type: object' is on the other hand not necessary when other
schema is referenced.

This can be further restricted to match hardware/firmware:
syscon-reboot-mode schema allows arbitrary "mode-.* properties but only
a subset actually makes sense and is valid.  Provide negative look-ahead
pattern to disallow any modes not supported by the device, which
tightens the binding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 55b2200d6e75..1cff2328cd01 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -61,7 +61,13 @@ properties:
     type: object
 
   reboot-mode:
-    type: object
+    $ref: /schemas/power/reset/syscon-reboot-mode.yaml
+    unevaluatedProperties: false
+
+    patternProperties:
+      # Negative look-ahead to disallow unsupported modes. The '$' has to be
+      # part of lookahead group to work, instead of trailing outside of ().
+      "^mode-(?!(bootloader$|loader$|normal$|recovery$))": false
 
 required:
   - compatible
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
