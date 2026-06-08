Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D80AFCD8C9D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 13:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0iU2a5fzOAaDPQUzLjs+HTiLEy0zOISnO70Cg5VR2E=; b=YZREmI/sL18xgG
	2TKR0JUSIvxJI34udyGX0GvIc+db/FWvIjh10zcR+iQWWZkyMIMjLm/LSQABX1ndPP8Z5dcedHUBv
	bekxt2PsoLTDv6KmcCZXq63vlYaz3zHqUrpr57erS5pfL/PO7BST6OuonvMSqsIcEZCaemXDwp4R+
	O1vxnVWQiQMKqOqfDUkt0HzWA3mOePHQEp7q3MEzFnayukbcnvfuyM9VHOyXN/2TVu1OIUwKobzLG
	rWOeTPvjXjyyXLGD2zTHHNiqUjWhyMLeNVlr8Z1IvNwLcNDv5IUYSzVA+Y5/wdgfYf28jVc2JKDKW
	3RXk3VWo5NxNL7N2llcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWaRV-00000003fGv-14f9;
	Mon, 08 Jun 2026 13:55:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWaRT-00000003fEC-14zL
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 13:55:04 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658DRAmU3340126
	for <linux-rockchip@lists.infradead.org>; Mon, 8 Jun 2026 13:55:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CE0ywq38rbkHvJyR+YXsYczNfViYtChFgXOkvyQ3mBM=; b=HE8V9I898hiEnvjd
	WXThoSGLHy1Uov/QdRACXp+qCvo/yPAfD3XNHA+UdSB+0b3D1D5J4dICKdJSxQob
	Uhe2nvdy9YzePsEHGJifH7aXA2hBFy/zAM8t+gihx81pgZVNAs76vMYnAvpg1CZ+
	vfCj9EcM5L2utHz4ohjBgDZyZNzXqSEIl8Rfj0lgc2QZ2Wn+K+rHxgGqn2/e9C0I
	gFGoMdRenILm5f7ighMjrxkkcUXMZVqeDH897zSEIrySUdEKUD8RlPIGJMBpPElI
	RCWoZh4Ev40/FIIGP9H5cOwqC58kttiPFY8o/HfoT8FeKj4uqkr1aprpX62j2Y9h
	DBi60Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enw5m0jd1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 13:55:02 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5177f07ea82so110176591cf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 06:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780926902; x=1781531702; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CE0ywq38rbkHvJyR+YXsYczNfViYtChFgXOkvyQ3mBM=;
        b=aceUxrnU+ROBX2UdeIvHcrB5XoAC5Erpsr947Knjv6KiC69Lu1cE31tF+ZYeK+BzeL
         YtfcVaJp+aMWjZXi7IElsaDo/uD0ht0ASu9vKjUaa9iOE+U9FAc0+74QNUqYetDHaTVr
         G/ztJZl/drHDlJc0XP2g2ipnsz2LE3YPG8ux+3PWrs50EZbZK2SrcYKpvCeNdnRLDRJ4
         tcYVE1LcqFVdhsJhZOM0STeGe9mRUZGgWlj24JeezPFecA2Fd/wAMnjh91L6Ip/QhXgO
         D50sskF6adQYjepiYvbvf0sQU+2kjvjS+2EGSksL5NF+K5r8NdPgoUja2zMaxK3ZArY8
         pKGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780926902; x=1781531702;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CE0ywq38rbkHvJyR+YXsYczNfViYtChFgXOkvyQ3mBM=;
        b=smGcN6OIo/wFOTNFNVfSwr2jSGVK8piae5zljP7JDpqfrd2gkHMl4irsaQiHqy0RO2
         kix3ohQ/1QV3flln0edumTIaWOYFM8QqtFW2Uus8Q0aTp7cTiY43Vb04rwqEBnqnboJw
         iF7+AVgQbmT9ygBYy1NKWap3ibXNHmbMqZWYYZSZ9GL9WYraHiO66j/8wkaJFrjwdow4
         mkDOKte3axVoHjZ5odcEgESAU8a+TKGhDlrowM0BGmkz1bn3/ojkOv0hZzwqM3i1q+nY
         LIVrN8QLNmSVJN1xOjKfEdtuqq5TcejkEKS6cphqj8q85btLiUlUw7ROnHQfeq758lRD
         0yXA==
X-Forwarded-Encrypted: i=1; AFNElJ88b5QpBVHDWx9cgyFNO5+iH/bA8IsKjmOhmShu9x3mNWUGo/bJPjW6q6i5jdzTisRE5EKlPK2w9nGYaQ5nJQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxDIiCid0UhfJNZ+gp7v3MisVlfCw5527nrzub/DW6UAUHs5IyO
	VBrtO4Mce3APwVjHd8EXkbJuqDwGrHH8aMeKxZItNoc0o3CTdFS/29JO1XiL75kGB9deVC3JvZW
	9Cu+0GDUmjzMOEWKnnzntc03W7CVkfqc14MkYbb44hykw3j6XbbnQnH/x4zj73hzkYdWfoGI7Fj
	o=
X-Gm-Gg: Acq92OFczitMP48kM/EPEWag736/yKznBkqnKvMcpLd2LYb3VEDeW4FgNwTQzkvpb9w
	nMqSYT2qZiRbk0lQPKL7SLLEgMHAWleGpiKTl7v/QdjzWb7KVHTNbpB2xLE8NdueOFDLWz8wgDO
	PQ8Slz+8pFPYmJKspyN1/J9omYwF3pItmRzNn9v7R0BzYCRUTgYWTtfou120Y9MwyVhTVz0qodO
	oomzCuanU5X8cEeK6aSN5f2lrjFa3jM6HxwGL9CkzkwAgjdkI2VD4poIGGD2pxpXdUlGeS4uKjT
	CvyoMjAS1Zi4p4bL0tF/puMBur2ERj2b+PAKr5oql91VSxsyW29AukrwyvIsjqVYTSdm7KHzBej
	w5hlzTubWbpLtuEEu5lzFh21UBvasHlct2qyHgYnHvC18o3bh9Vf56Xg=
X-Received: by 2002:a05:622a:2509:b0:516:daca:ea8a with SMTP id d75a77b69052e-51795a4149amr202288851cf.20.1780926901661;
        Mon, 08 Jun 2026 06:55:01 -0700 (PDT)
X-Received: by 2002:a05:622a:2509:b0:516:daca:ea8a with SMTP id d75a77b69052e-51795a4149amr202288261cf.20.1780926901148;
        Mon, 08 Jun 2026 06:55:01 -0700 (PDT)
Received: from [127.0.1.1] ([213.55.209.126])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc39def5sm385972925e9.5.2026.06.08.06.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 06:54:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 15:54:15 +0200
Subject: [PATCH v2 2/4] dt-bindings: mfd: syscon: Drop unneeded case for
 syscon + simple-mfd
MIME-Version: 1.0
Message-Id: <20260608-n-dt-bindings-simple-bus-syscon-v2-2-0203e6c249dc@oss.qualcomm.com>
References: <20260608-n-dt-bindings-simple-bus-syscon-v2-0-0203e6c249dc@oss.qualcomm.com>
In-Reply-To: <20260608-n-dt-bindings-simple-bus-syscon-v2-0-0203e6c249dc@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1498;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=lpvEF+gT5fcjZ09COuS+KduhTUqK+dyTIeYaqErwUx8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqJsmprD6HuAcUIRBVQOXNOcJdz8AQBm1/59E2R
 DiKe8Ecmk6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaibJqQAKCRDBN2bmhouD
 1ybOD/9TTTiTOIm72paZbnNZ62/N87L70A5R6anWHdWGFq4pwhlun9eNRC5N+e3kQ0suiL3JbGl
 6LsQsTwGFhxDADb1KHyJb3IMOWq8anPjedxgEs/SK1W4hSSF7Gy3KRmm0enmIgK5DsvdZvzoX7/
 W0JSVyitDrsCGOQw9OaIXT57J4B9nIfXxFl0BmRBpfSRORSELC406pvTbWQLwF5M2GhYSGs2CO7
 a/zp+KDtNYT7m85FzFo/D+fHOPcLUXneuYROZPlLM64EEx0/itbHL+NwsUCamJ3l/yyT/r/T8rx
 4vpizNrNsHUesYVok8afqlxEjdefNeOKx4P9VCSbVRpkvDJJwMryWSmLPVlweEvRt2R1t/Pj11L
 Xpp2H4ncIKOoJVEG85aUPy9YVh6sonSbQylYfLb0LLlm5b+BxjemGExL7XA/qZ0yOCN5dH+lhCN
 CxpRc5u8LA4fWdrg/GO0KGMeHCTbKeQ5g813ZLYVkbpuBjkBSLAuJPsi+puemCnalsC3qTx5Mj9
 gaXEiAnHsHcbJQNprPAjpqGfTE+ZkILnU3RWvc50jxaWvkJOUWi9K9kwpXS+3/dYS5KdDrOQUte
 rPPlc8hburw82yv+bG5e4D+h+3QYOYB6sQWAHgTNHZlJtAAuqF4ig2gb4tlT2tyFdYOafeP47uJ
 oaeZTP9STt9FJ+A==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDEzMiBTYWx0ZWRfX+EGYTRhSIRyO
 9/PU4fZCxzASYyXEd04CjkL0f10k/rmMJ3PLe6/fkpVzABUiVbwvmv76Y6Kn7BVGt3tlC/1vcS9
 tp+il4SQg1bvoA6o475/Arn42XgCACRowN4ooAun96e2rPz2UuS2IVf1/fPa7kei5o7Ar+8Wkhh
 nZhlM1pgzFgURTYRva6BradqdQD7XwIp5dmG87pqNPNhTI6lKEppLI9Jw0sRDtV9O8x/QQYL9bd
 TDOG7lXmC5HowmntS8D8BssgChQupuRYKV4UROCGCDGk//4GN7iK47/mZof3lAlumpvuYdv2qw1
 QP6fQjo5V14GL0XcXtWqKl4B4SZ4B1Nw+QVQjeiZ6F786aDTepnAgnmJGp0UsoJAWiSBuEufvre
 KuWciLPKV9gDMYW0P5f5IXddDhOp5wX0Ri/vpQ78ePm+Bt9ZFuiJndlU58dodp/3t8K3LpLpoO5
 0qDxiPSTJ63Nhs9/qjA==
X-Proofpoint-ORIG-GUID: veYc8y7B-n9QaQFUWYdLhX6fQnpdE2GF
X-Authority-Analysis: v=2.4 cv=UptT8ewB c=1 sm=1 tr=0 ts=6a26c9b6 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=bD1TNsHgvEXzglPpcYW9rQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=iBsvbdzN5SDSf47EeGIA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: veYc8y7B-n9QaQFUWYdLhX6fQnpdE2GF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_03,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_065503_321536_616F6470 
X-CRM114-Status: GOOD (  13.45  )
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

Commit f97b0435c857 ("dt-bindings: mfd: syscon: Split and enforce
documenting MFD children") split the syscon.yaml bindings with intention
that combinations of "syscon" and "simple-mfd" will own bindings file
referencing the common syscon-common.yaml file and define its children.
That is why it left the quite generic/wide compatible list of up to five
entries with simple-mfd.

This permissive list of up to five entries with simple-mfd can be
removed because:
1. Such case - referencing syscon-common.yaml - did not materialize.

2. All documented bindings combining "syscon" and "simple-mfd" have
   their own schemas.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v2:
1. New patch
---
 Documentation/devicetree/bindings/mfd/syscon-common.yaml | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon-common.yaml b/Documentation/devicetree/bindings/mfd/syscon-common.yaml
index 315357da146e..b3462e876622 100644
--- a/Documentation/devicetree/bindings/mfd/syscon-common.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon-common.yaml
@@ -46,17 +46,6 @@ required:
   - reg
 
 allOf:
-  - if:
-      properties:
-        compatible:
-          contains:
-            const: simple-mfd
-    then:
-      properties:
-        compatible:
-          minItems: 3
-          maxItems: 5
-
   - if:
       properties:
         compatible:

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
