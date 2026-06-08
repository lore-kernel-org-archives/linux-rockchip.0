Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DADCCD8CAC
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 13:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QJtfATDp3EL4wYKiJ/JZMqoVmxpEJSgIj7SjHByg35M=; b=uc9upTSAYuGYq2
	V1v0tECB2upjbS/IayuZ3w0sSlZy0S2KXgT/azr/hJpipdFG2nsTSup5V8kJcQTtQhiUGLOvvKHWe
	4YzRC+JmEExYsVW2hI6q+/FGyVX7Vkiuq1B+I27nmfTjx7uAbOkjDUcDGht601jia8RL9zGh5uaXj
	ML5RoewZ8AzvJxya9o9LEjo6N7NC3YD+lZWDnyFZixHf3pOS/KO4QxJeRJyPP7xkp4NzcvdqBQkZU
	O1/sFZoIrPV3raB1lrKHX9IKMfRvqUfowoHjh+qFW5bLQ/N5ee6apeBSl3C19i+RndANiApiTXdly
	q+Yc0VkibgTDhDkv9q/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWaRP-00000003fAM-2FKf;
	Mon, 08 Jun 2026 13:54:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWaRN-00000003f8n-2cXE
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 13:54:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658DR4Yj3336111
	for <linux-rockchip@lists.infradead.org>; Mon, 8 Jun 2026 13:54:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=VHXMBaaaX43r38R6RMvQ/2
	0aqiKNP6NgI1zIfoFP+kU=; b=g/j42oMMs+Fe0nmeaiPMbyCKM5tZKg7Ag2eOCh
	yTlu7II9SF3Vxql2ESnehbY3S6T83qBpheA+jzS9qdVv1g90eFnmz0H7lKdutCSp
	8YJbTEx/4C5q/H5vNqSy+/mUfucd/IGYNKEjzUq3JBE1FSGUSqgYZmLu5gGrMn4X
	YAajqJLRzbvNgbHAoiDob4FsMBUEBBCeNGN56R/qtSWX0P3KtAJIxMYOBr68Z0Cb
	eH8rWbA+EaQFlUjtMluDqXfauRSFGvSPAt+qtm4/yJr7AK2AH+Zz/5DUShhEfcvY
	AJ+y27sA4bwlxESIWNNvzJRv85g4SLRpetcyiD6au9w74ghw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enun40ygd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 13:54:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5177f07ea82so110173971cf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 06:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780926896; x=1781531696; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VHXMBaaaX43r38R6RMvQ/20aqiKNP6NgI1zIfoFP+kU=;
        b=kvbAdQr8j8NYy4bpYWuZQ89XRJQ4nL1tvbcg/G1vEiS1PRYU8vmbGhxwZR8Rh0Ug8N
         +VHedaiVFQCB7xf9CKMnKkrNyr9soOOud7EoHv4XfhRbF5ZbDoNvGB8bIHb3UBPNhVCw
         C9kto0XYCSBxjwMz+0z3y/OFdQ+fWL99r+hzS8IpvIXv1JtfbS+rYn/c0kVb5hDy1x1W
         yCGcZ2lmsidpx2cpKSkav2yAaY/IY/A4AN9zQOZk0HluCKkqZF9uNl54BQdkmgJFX4By
         w7edDQggj0YZzBvFgOoyfFvZr+kl8g+Ov5QNO8GzPRiNupuTYmTVFb1u9T3n0Pw7NyB9
         bHUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780926896; x=1781531696;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VHXMBaaaX43r38R6RMvQ/20aqiKNP6NgI1zIfoFP+kU=;
        b=Zm4DgS5YzUZr+tCEsf2vAWSu3xUORipC3OzFT1cJ3xOQk9JHBkncCxcNOUgSOkt6Bz
         y+KcDrYK217I7HInQTrm2aVmYY7svubaQNqfS7H+azFU2GNjpH6odnla77fZTMM5HS9W
         rS4yKmkLvgWCzuGoM67+6P08zy2IzQDDHb7AqxdIFUpJ3hmDpM9n5ONjjB8ifGQ9dr81
         WixwcZsK76Ze7K8VYK0b/cty9DbuYXexweM/maEceHujW48jCeA30Dr1SN1beBjlpNLv
         3DPMQ3tJpm8+6aC3Ezz+DoY0C+sjcPfCs/2aO1jPZcGoeDJaf7QlIzckXUoatEI/eM0o
         LXvw==
X-Forwarded-Encrypted: i=1; AFNElJ+SEz1tTdOkDWXesZQZ7CfTtR8rzT+NR2xpvQQvapAzqcp6qOxDorq3ALYQJkNMULjHmXZ32Pkp6tQwhQrcEg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyjz4M4WQvWCunQC7LosA5s/7XFZszrvfiKg67TTD1AQiDH1Mgh
	JEFxyjM0KZoDXsHD3xm5ImiNwjlUPcBP0hnhPr8Z1AWV0V9s204vLXf4xtH3kli4Z6hPCNWyPBR
	DWLnbqyscFN/wwilomVjievB0BouLOFTccfxQ9YyCmGlYgj/w57kUpOdkGhnEQWPA+Jxn6mbrCe
	+O3u4zTTM=
X-Gm-Gg: Acq92OFFxEHDhExBwqRX6jrJEtcw364gdQCxei6AApWJX8D2NRaZnagWHy4Ly8qScyG
	iN79TA360S9RwNZBJpAmjJz+C/AizLhfiLsW/bJ5YOyz5mx+/5MkXlrNeC8aR8/yFe24/nBhNUM
	GzmiI0RHK6XHUgrx5lBfrryqcrNkPHcISx9e6YCgHb2RhPjNG9N0iS9hVCSbeOegwQUhoqb8i2l
	SiUoxFX6z1ywMSyaUbAGyDtNmuN8pjPzYaNi+6se7A4/H4H8jomJ+8bwmT1Ns1La2eeKQODDOhq
	kyGW3HEmOeZV7nZ/JNi/L3l05ZaW69q6WMZUR4FoF2W9APlBXZjNd2sckENUl/HT1SKQPu/bbIY
	ucGMTwGb4imxs1m32vW5w13Otc8YHezquybFERKBHiyosYGBgug9O2M8=
X-Received: by 2002:a05:622a:2488:b0:517:9544:163c with SMTP id d75a77b69052e-51795a08a3amr237897551cf.9.1780926895926;
        Mon, 08 Jun 2026 06:54:55 -0700 (PDT)
X-Received: by 2002:a05:622a:2488:b0:517:9544:163c with SMTP id d75a77b69052e-51795a08a3amr237896651cf.9.1780926895083;
        Mon, 08 Jun 2026 06:54:55 -0700 (PDT)
Received: from [127.0.1.1] ([213.55.209.126])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc39def5sm385972925e9.5.2026.06.08.06.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 06:54:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 0/4] dt-bindings: mfd: syscon: Tighten checks
Date: Mon, 08 Jun 2026 15:54:13 +0200
Message-Id: <20260608-n-dt-bindings-simple-bus-syscon-v2-0-0203e6c249dc@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXNQQ6CQAyF4auQrm3SjIagVzEumGnBGi1kCkZDu
 DuD7t63+d8CLlnF4VItkOWtroMVhEMF6d5aL6hcDIFCTTU1aMgTRjVW6x1dX+NTMM5lfj0NhnI
 8c3eipqXAUCpjlk4/v4fr7W+f40PStGdhXTf4lcSjgwAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1716;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=5KXu1n1MOka6nMgTyyvyWK2ZkHmYE80bVGSOgJWhOj0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqJsmHTZEo9KGMUVk8BxpmjyNm9DOKUnoMB7qfu
 hcw12BUy2eJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaibJhwAKCRDBN2bmhouD
 12eCD/wN8FRAuWSrx58xHk1mCkSBOc0xnWZjU/Vmp7NUUySzrsPGgw+rjzllYoSGV37yUUSgLtT
 RFP6kVbQPnTOrhvLQd0LTqtuvmzXB565ufn2zII0aNaFSucaEqt5sqoPo0RMlBf8uY4xu+t0hkv
 43QmxGGRSEgkxuSFysuSoIeLEgNHb6s3uXpS07L5Jk5Hnn/tzcx1+SoxjPP8qesLe9bIWt+bObq
 bHqovEx/QEa85QvwTIwAWRJGizhyX5M3CpRiu/lr8ONY6GpXxGM2RD5H0RHEWsDMo6nwUt7ADGR
 Ks6xeJ9rnqr0DoH8SXuQNOX9m/+76XJQyO8QdosxZMXr81m3Pi1vBZZEiR+twCj+kjE7kTry2D9
 5vlDpDPhYfNfS62TR2g3KFWnYGM9JLem7e4KGxxGJf7jDAIA8FLFdLeQVATMTCs7mGW53sJSxQV
 kKvgk9iiwO1H1eaV/N1YTHISjneedRjAAx875WneAgpaDfXNghB3SMm8KTAuNq4sgaGvRRk3r/i
 9M0RXgorNGxhPkWIP+oLltRl+/NCAT89GBaGJMPRaQEXlG+Ux2sDxuIp+tInst8zBKgp5C2X7+R
 B9Klq4MoEGYYB+KWZPmH8amW0TySPq8/IUHKUbIudGKwjzv2vQdJEOd5F1RjOHhdr6ahgLpvAIo
 GONyyfGp+UgCmgA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDEzMiBTYWx0ZWRfX5I0i7uE9uQqe
 f1o4IC8xrF3ACkmqR8Uz5S4opFEbFvVWvb7GLJtm685w6d6W6T0QZVg5/ivVOYeqVDzEMnq+05+
 rGnmqC4q4rgUwbX2KoCK1+y/HHgq1FAdiLBXuRyIT5+7MIyj4VzDGOpZtyWvl8Eh1OtL5fB8B2n
 5uybp5WCA9FZZhlUBx6NXw2bZw/NIzFMC4HG8L6JTwnOWhY4BfqrikGWKRBogFj3+f7P5Eza3d1
 Q8wdrvBjm32y0o6bz7tne/M6Qwwfb6YHA4p/1ZTHcYOCAYbirLHb4E1VAx8wzOqbOkEpXPNBZWC
 ly5ohmXkWqv5xmBd/VjkkwOTZtXne+znb2dH5UyKwjPYINnowK2in9JYQ68c5sX1hBN3x/EuxiX
 JiDKuB7Wyt3VrOuo+xy/kOiRbaLEsE7aL6Ffm+90sAWEEMjjfAlM0jvLOgokVj1R9j4rLebtyIR
 ctNML96CzY/Iclio6ZA==
X-Proofpoint-ORIG-GUID: TMSAhKMAQXXu_toJmtfxEErDhtcGzzaj
X-Authority-Analysis: v=2.4 cv=ZY4t8MVA c=1 sm=1 tr=0 ts=6a26c9b1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=bD1TNsHgvEXzglPpcYW9rQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=s4keiGDSzyMyFUzW_nEA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: TMSAhKMAQXXu_toJmtfxEErDhtcGzzaj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_03,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_065457_677565_96369F0C 
X-CRM114-Status: GOOD (  11.54  )
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
Krzysztof Kozlowski (4):
      dt-bindings: mfd: syscon: Disallow simple-bus with syscon
      dt-bindings: mfd: syscon: Drop unneeded case for syscon + simple-mfd
      dt-bindings: mfd: syscon: Drop custom select for older dtschema
      ARM: dts: ti: Add specific compatibles for SCM conf nodes

 .../devicetree/bindings/mfd/syscon-common.yaml     |  31 +++++-
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
 11 files changed, 37 insertions(+), 132 deletions(-)
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
