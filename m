Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7C48CD6E79
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 20:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mZ/FJXAe6TKxofB7KdD6ZIEqb3J/NGj4B/2XtPP6KgY=; b=fkUU61ocni5y69
	yZjDAV0CUPjB2A6ZDgGHYB8Vkg4lhCGOEh0sRuWjJSVk4sXwl4hkz5dXEWtKlvikUNk/oTKahz2lm
	sDlHQ7K2YNJmy7oDmESA9BCGu89uaVHxO46Z7ScjUHSquj1sEpC1cCHYZKYCviLjUG7qyqEa6A5CN
	Pzvq2RTRJKz32LQyJOQPrFJaNUUSpQ0tjpH2B6oNv3ZU6eRLdmAYSgu7fvcq0Ed+3IS48Uj6l4GlN
	KtjE7BpNQvdZ7MePyS9VX6RDCU110Oa0pQ7atG+bfrkIQVT0WuPnikoz8SFtgts4ANFdrxrvxS3ul
	g5RFJ9UJD95xiJIbs4+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgps-00000004NG2-2pzB;
	Mon, 08 Jun 2026 20:44:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgpq-00000004NEt-1hEM
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 20:44:39 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658Ix7ne314986
	for <linux-rockchip@lists.infradead.org>; Mon, 8 Jun 2026 20:44:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=JZcc6TPeUx/2ww8Z8bbTx4
	r6S+aoLRf/jpoC61OzVbc=; b=MGT7HmAOHcVdj0yATV7HMAwbU5uk4J313+T5nm
	84kICFmcHfToU9Lqm9Zj1W8my/y4+rF2I1dGopuun62rFv8Fw2trVIkKDB3yKySW
	qydpBOtZnfMRszANz62Pt50+mwOEp0Ujx4Zp18DgPJCVsRwORM4Er5MujfDwelpy
	ptJDMUpbk/tCmC6s1na0lS+aQUhoepuuYyFJBT0tP7qg8AZABd46rd0j/jD4sGWe
	Pih62qqCqyu29l++9QOUW7MKDU7kcjJF5AxMJXi8jD4J37DBGonSUMg6w0aopY6s
	ItlzeTEe2ujWvVOt4J54RBTMEjcYrpwJuSquw8sPHnljJNCg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4entr0k59k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 20:44:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5174a23afcbso58696181cf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 13:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780951476; x=1781556276; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JZcc6TPeUx/2ww8Z8bbTx4r6S+aoLRf/jpoC61OzVbc=;
        b=GK1xXeB5jM4lYDk2MuBiyeJXjAXCRJ6Jt/K/lz3ps2iYfWQmVHksE+IE2P1CGRgMWE
         DUkxxIj/SdgRX2M84LBKoMtFwZtFvCnvYcSCGjhlCcdMVUaKi2rN89AN33YPn7RGCd1e
         BPivTi53Gv1XVpMsbZDwGwvdbTDCn6hG+q5JlqICzuiFOdaZorlPdwshe70EvoAroTXf
         h+OCkRq4NRzSNAJmJ+KAK68GUfIeg+420HIFT8qO/luRbK+LU1yye6VXJ56jM74KXqxA
         wAy8AyJcAa+vuMzF8naZ/Xi5vVRN2lFLwbGic4KNeV3zo7Djbwbbdj+8WfgH2yQ3/TWV
         Jg/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780951476; x=1781556276;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JZcc6TPeUx/2ww8Z8bbTx4r6S+aoLRf/jpoC61OzVbc=;
        b=HT3hTFoTpCk5il+udPt05C2Q9ZZsWhStgCOdVUhiGJi5hZK6SRC60bVF0nLLaf91PC
         l58JodwE26PHMe6F8aqoqHu04WYQdDNTI1aKBZjDYfoN+5axh7RiEV5ZKEuBeBs2OY+F
         FFgT5W3cxOP6ehvC28KyS+lWxOww3zPjNfNR40WFUYcVL2hex7HTaND4ri/hXLjEfw+R
         KqWxt4qHdZYCKvxLzlvftTBQK2NcsDZeP5nvg/Cll41i11CsYhQmdxqJDQSYPKvRdsrU
         4tWd5jHIX2BW5MfnKNVm9IcpJo4Z/3vJZKLUZmswc00eok8w26GoBR4WDbO300Wn7nfM
         IClg==
X-Forwarded-Encrypted: i=1; AFNElJ+7USVaL6d87MVF8Lpvio/VEtOJ3gkYXuNWBIX2w13ej+ebTzLiczGtHLW3L14LfgfTkcpgN49WRGe9Cul9dw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyd9PrOkPvhg+HR95uExWK8aBS/EEaWjTrrO5F93jna8wkaITio
	dOl89OzEYaVsxemFclddZoAz/X7XxreD8aEUuM7JSiQQeE3FQVWMrBjdik7UpccX1JWR95R0FbI
	vSROvx8EuMBmRgiI+/jbpXa1IFmbZ5RgTMbig+KvFAREcU6r4I7WylSRju4V0mljtfxv1yJhuZz
	A=
X-Gm-Gg: Acq92OFZpiElDJWpWsnuXdEUJwT0QvCiv8lZZuFhIj/6BbxEY08h+x3VVXgGdQg9YqV
	jtYUxFq1DBr5LjVqdxTOpY8tbsmb2+D/ygpu82J6itGpALL9s/gQn4BMwbbdhwWfXLX8w84ZZZP
	zisyjnaQeZAByrYU0y0gOLKmAnK/vmNyQx9XA+eqz23ONGeH+r9C2BIXl72HZJu1dFO+t3GoWJe
	kxNDpp6oEGCvH3crr2G5pl7D0lNPw6o/xLUX3BTD0xqDfXAcpV7NJjOncuCvxwjMb0B7Y9sz+0R
	1NpIlD5ORa6sMW7m1f6exm24TyeaiE+geI1tEZIxAdW0l0XG9N9nL2AT8JAC0UP9EmnG92iRwsD
	+20S2HM4UfKmtaKcXrPCi/wEpOWcRCdwmszOBU+ZbXqjntJ+8dtMURhA=
X-Received: by 2002:a05:622a:1f90:b0:517:75d8:b95d with SMTP id d75a77b69052e-51795c0cf7bmr247057201cf.40.1780951476565;
        Mon, 08 Jun 2026 13:44:36 -0700 (PDT)
X-Received: by 2002:a05:622a:1f90:b0:517:75d8:b95d with SMTP id d75a77b69052e-51795c0cf7bmr247056621cf.40.1780951475888;
        Mon, 08 Jun 2026 13:44:35 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4602cda3651sm44018439f8f.32.2026.06.08.13.44.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 13:44:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 0/3] dt-bindings: mfd: syscon: Tighten checks
Date: Mon, 08 Jun 2026 22:44:23 +0200
Message-Id: <20260608-n-dt-bindings-simple-bus-syscon-v3-0-4eba9ec1212a@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/42OwQqDMBBEf0Vy7soSRbSn/kfxoMmqWzSxrkpF/
 PdG+wO9DPNgmJldCU1Mou7RriZaWdi7AMktUqarXEvANrDSqDPMMAcHdoaanWXXCggPY09QL8F
 uYrwDSgrbpJhXqK0KLeNEDX+uhWf5Y1nqF5n5rD0THcvsp+26sOoz9//aqgEBNSaUGZ0W1jy8S
 Pxeqt74YYiDqPI4ji9iGIV15wAAAA==
X-Change-ID: 20260608-n-dt-bindings-simple-bus-syscon-e39df408a02d
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1955;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=5Xa72kw9Ltgd7CByB7B5latAUb0JYhrgHD01OqlPHas=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqJymqXzctnjCZTlgfqtTkKkReZfSxm69dcth3s
 +3KPVCaK/qJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaicpqgAKCRDBN2bmhouD
 12o+D/9dEqmiBDrunvPNTigrYZ65joY0Y404B5kMuUHwxnjcIcSDy0bYTIMZus92hnmDEYvpC9U
 i2tw9EoYNrO1EeZYBOWcj+FJKTG5wLwU8EqAG5w3fIa2zQ5rVTe+zDoNtqRzLgckMUTIEZVoWSl
 xx/h49ZbzgXV9CJzte6U0Fp3ycwf0J/HUsNBQqNpdja+HyIoWu5Qd4HWIFShKkueEUH8KcNSwnJ
 1TC2Rn4T9MbSDCBS/0klhPlGPyYvR1WG42P3wjHdLDH8pUHPHYBBPrRNq85x/OK1BKmigWgYkam
 7ZIy5F0wlV+4bECVkaIfnFpsg2p78TeS9WWPQgGmIdmfb0GPbMkK9PkDozcrjmLEJk/QRny2IS2
 79lvO18dQiOU738h5JoKCuWKzvLCoBtiw627Gbqo21BHDrLWo8oF3ZWR3kXm5RUPVnRTQ8EVr7x
 F07R0Zx2p4W1tYV4zFk1IV+3EbHBSbfAJQle3zzH24lTJr8rOPXXbnu+2F2CbirwcO++zy7xoTb
 dXOxD+QhaGr6V/LYklyLnTx9IdHl0LJsEnzLdfpfUal5h6SuMSxFInElOpARadLe8wgkHeegyap
 mybKDxrB8IWZUlFjKaqVHhruAjaUBKUEjuTpgmBT44Z5ACshQzaraQj4ifeRN4qFcde73irdf/H
 QC7QfMmQpvt0MRg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDE4OCBTYWx0ZWRfX6OXymlpCKuNH
 uB+iuSVOX3C6Y6Ol4DA7QKl0k3ZMKE6jKEw4ym7A8A9xBaZt+FAE4xwC+X7jdbM0C9xryf91c1p
 7G91T6W6SRz5OOpmrxkP/e1FntaR4oGtP2cvAXJyCaB9aiC7+J6BElx21Xgk5+IYOKr3YKbTUCb
 etgPLpfz/jSE3SS2LJxwx8NWvoQBVukjhlVoeXNKxPlbNQmpKC+gXFB//8y6W9D7L+nKllSnSZx
 VR93jBaGfi8ixLJdi+RoEj4/J5lSaFRhhbWyiwJbC2m8eyl2YzYrT/L6jypn7dmrOPVfxrXOe5H
 pG5sQmjdu/aXSQHiz3CbKXiLw2mLYSYFtCHqjEtq4XzzwaGQsGOdqzegEIb3g6VwcgBEdiL/qh2
 NvJOrEd5VTzu5SVoCxSI574a7zoVRqclolwGzaqPyQtIc42+aWCs/6ikPtenV0LoSMH0ifmHagW
 trbIwUyc9BAiXUle7zQ==
X-Proofpoint-ORIG-GUID: 1SHCG_EeaJzWTu5dnoVpzXvdu5VHsSl5
X-Proofpoint-GUID: 1SHCG_EeaJzWTu5dnoVpzXvdu5VHsSl5
X-Authority-Analysis: v=2.4 cv=VowTxe2n c=1 sm=1 tr=0 ts=6a2729b5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=s4keiGDSzyMyFUzW_nEA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_05,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606080188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_134438_576823_40B56267 
X-CRM114-Status: GOOD (  11.74  )
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

Changes in v3:
- Drop patch #2:
  dt-bindings: mfd: syscon: Drop unneeded case for syscon + simple-mfd
- Bump dtschema requirement
- Link to v2: https://patch.msgid.link/20260608-n-dt-bindings-simple-bus-syscon-v2-0-0203e6c249dc@oss.qualcomm.com

Changes in v2:
1. New patches #2 and #3
1. Add missing part of patch #1, thus not adding Rob's Ack.
https://lore.kernel.org/all/20260531110404.12768-3-krzysztof.kozlowski@oss.qualcomm.com/

I tested dt_binding_check and dtbs_check for arm, arm64 and riscv and I
think I did not introduce new dtbs_check warnings. Old code anyway has
multiple abuses of syscon, thus tricky to judge for arm at least.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (3):
      dt-bindings: mfd: syscon: Disallow simple-bus with syscon
      dt-bindings: mfd: syscon: Drop custom select for older dtschema
      ARM: dts: ti: Add specific compatibles for SCM conf nodes

 Documentation/devicetree/bindings/Makefile         |   2 +-
 .../devicetree/bindings/mfd/syscon-common.yaml     |  34 ++++++
 Documentation/devicetree/bindings/mfd/syscon.yaml  | 116 ---------------------
 arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi           |   2 +-
 arch/arm/boot/dts/ti/omap/am437x-l4.dtsi           |   2 +-
 arch/arm/boot/dts/ti/omap/dm814x.dtsi              |   2 +-
 arch/arm/boot/dts/ti/omap/dm816x.dtsi              |   2 +-
 arch/arm/boot/dts/ti/omap/dra7-l4.dtsi             |   2 +-
 arch/arm/boot/dts/ti/omap/omap2430.dtsi            |   2 +-
 arch/arm/boot/dts/ti/omap/omap3.dtsi               |   2 +-
 arch/arm/boot/dts/ti/omap/omap4-l4.dtsi            |   2 +-
 arch/arm/boot/dts/ti/omap/omap5-l4.dtsi            |   6 +-
 12 files changed, 46 insertions(+), 128 deletions(-)
---
base-commit: 78f5e68a8d0a1123dd1b007688ccf0e6876a5c15
change-id: 20260608-n-dt-bindings-simple-bus-syscon-e39df408a02d

Best regards,
--  
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
