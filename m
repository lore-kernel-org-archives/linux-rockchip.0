Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36C33CD8C92
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 13:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaGiINjIJtwnVaNk8i4xJ4RwUHiDu0jkoKFGlBsuyVo=; b=RgqVTECoiMHNPJ
	Vk0B0YMMz7z+498wVNsrpmso2396btkLvUsgvCZqYUo1W65vBJI9nKvMKEnq82YXZhdo6S5cAdRCn
	/3sLx1o9xNhHjTj6PGw2Q9XFCVbTKkAPU2UtN7cSGUNXSGGuLPxm6RoeqBCKrCRjL8EuuW6N2ED6R
	POVw+MhPq20Agrf7S77oHkdJwAip7k8gsbq/MU2THS/8rt9gumBhcVDLUhCuJ2WtM/bdKozPVSPrO
	S+Kb6BATTqndg6mcP1gI0PdC3IvidS5Lm7x/glSFKZIv9PUQ3CE0oE3KxKfTPKEf7LLLN7DIw2q3z
	IzNmv0XN6pQu9jLG7Bvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWaRR-00000003fCy-45hD;
	Mon, 08 Jun 2026 13:55:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWaRP-00000003fA7-2KHg
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 13:55:00 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658DR44V3336093
	for <linux-rockchip@lists.infradead.org>; Mon, 8 Jun 2026 13:54:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q7Ea94Rrz+UAH3itxmW5/gMgVCOZgJd2bHTd3ZfBZeA=; b=hYpbfRSlRhjxcN38
	GnSZlzDqT2XzTYdZSGTisRorqCFjwIv9YzM7G2BoopwHnxrIVbonG0+6Nz7r0Xx/
	SShVIKSd0kEA3wQY7lC1WuNiQN0Ht8MUyKxj6irPGD2Wnz5bgkVk7P3qBjSogDx2
	h0v6kQuDACZskcJNkPV2ihMEVyJhj6Nk76C2JxGsahUfqBRTrG6bLe3PRfkMyH4f
	VTM/F5vvc7Fw05pQehhB4PwwlHhCbtQuDMOoVD/9LSvbfKjpBgw22C49NpdqJBTi
	gwa3AmccsdtuDy3KeYFhbifTPKXSZ9xTEOh/Q2gvmj8i6A2pnhAY1a46AHQCKsGc
	ZExAaQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enun40ygm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 13:54:59 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5177b8df670so66852971cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 06:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780926898; x=1781531698; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q7Ea94Rrz+UAH3itxmW5/gMgVCOZgJd2bHTd3ZfBZeA=;
        b=dHqBMSGTkRhJU1k/pfW5zSVpp1TIr2auxIyFtfX9xCRDmDSfn8ZpZLikMddtiRxMmA
         4LubR3KwbUO1vEyqi+P8haoMk1fqfxNQWPup1vtN/BqbiqswQPln1BHvqTIVebWYIkgc
         6f0Elo3SoqHFHKwjT0haCyQ7CnNGJN8rxi211vQGxVk9dSY5xP9VVBmkQATbSEa3cOKP
         rnxAH65FDaR0+kD6DB+KMifebLSo4uNO2dAH6z0RBDwBwksm0+3KKQs1sXcyPaDZK4zE
         lQSYMZd3+egohC33EHIRbG8W8UG7FbJpT9dFAii3dTI5ynOvZL2yZT9mMYsKzOxdPIGi
         hRyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780926898; x=1781531698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q7Ea94Rrz+UAH3itxmW5/gMgVCOZgJd2bHTd3ZfBZeA=;
        b=eNmKMesvwnKevSXTsDfv6RWBq18a+tYnye85zof8PyR7eO1/XIHQlfJhhcJY/0OgQR
         aTmW7AwFqMiyMc0X0Mma0n7+KUEMBFMWzv1KZr40mtt8iJIVgbA7R0wefbsxkbvO1v21
         NNxmaKUAGfrmuLGEf+Hx83EACNLBYqLN9aQT/7X9Vu/jh64H3IQhQC0/Q7Lwr3MteLJi
         cMPQrl04AB64m2vy2VyydndZtohIDKv1K20dubLHqnZu26bs9yHKHjQj+Shgo8LcCRts
         m6bp1EIe9rqjusT+UxcHbBjDIExbGc5y4vgZTjTob6EjhYHfpSgyFkGzW2RXX/nLsy5V
         ZDoQ==
X-Forwarded-Encrypted: i=1; AFNElJ8j9D1eFIBT8lw39C4kAyJoLQZfCDP9cFl+UBM1l9WdRDCD7fJA9iAECN6Ekjb+c4GH+WKKZ2ZWpp/Qx4Pwig==@lists.infradead.org
X-Gm-Message-State: AOJu0YxjfzLok7meldv6bszfGaZJb2ELN2/QcBmemdqS11l8yltHOtUV
	YkeiJmM80HuhaQytNCcr+LWysKX+q8G7NQmHQ73MKYHotUctGP6ocGjJts1abd5vr+EHESr6FOZ
	uP2LW0WeAXB7HofqshpIAyPeidzOjVUM5Kno9fYEA9vqsSZSt9IeJapbB+6YBH0doKrmLbV7k29
	Q=
X-Gm-Gg: Acq92OFQ1PRtHx1QQ4TgddygnGCJ1ahiHQdhtO1VVypAVGCMTDtzyjvBiaT8BWZ1QXK
	Jk8G1073nVdPDX6CZfAk3F7uHWDx+Y284BToF1SjfKCak/rJRKcxEt0zgBd3O2O8tGZ0ecVP3wX
	e25kMV0Ybu2wxvYuTzxm58U4p/bLa+3J5MNCnws6QJ10Tdo7Gqot0gx4/bZFCOHc/8Cp8oQPiMT
	msNjbGrQ4UH+Rrd0G1BC0Q4UgxkRWa5O4VjUyf+vhcBX3/qUbLQoogPUCQSawdRuRkp95JbGgq9
	S+s1kURL16jP7R5HGuEDe0vPAQgJh3T0ROI5GA5IREd3lVhoCbm5x8B06qNaeexWAQ8JON0wxm3
	K6cn/lj2gc2aWqVJ35MxhN5sW+AGGjGAIm5/nkrJLK+XWrJNbczhEok8=
X-Received: by 2002:ac8:610f:0:b0:517:8d76:5975 with SMTP id d75a77b69052e-51795afe67amr214335841cf.31.1780926898157;
        Mon, 08 Jun 2026 06:54:58 -0700 (PDT)
X-Received: by 2002:ac8:610f:0:b0:517:8d76:5975 with SMTP id d75a77b69052e-51795afe67amr214335231cf.31.1780926897572;
        Mon, 08 Jun 2026 06:54:57 -0700 (PDT)
Received: from [127.0.1.1] ([213.55.209.126])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc39def5sm385972925e9.5.2026.06.08.06.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 06:54:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 15:54:14 +0200
Subject: [PATCH v2 1/4] dt-bindings: mfd: syscon: Disallow simple-bus with
 syscon
MIME-Version: 1.0
Message-Id: <20260608-n-dt-bindings-simple-bus-syscon-v2-1-0203e6c249dc@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2763;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=H4Y30PW7n7YwDjrf08mPfxYtg1F+dQiEuh0m2Rr16mQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqJsmo2kW8tcedUBmp80JofuUehC79NguEf1PFh
 XcCbWPOMCCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaibJqAAKCRDBN2bmhouD
 14EOD/9xIcV/HQiHw1XWxvuHk2Qy87m3NTPa2K0+4RU1CP4cK1GoH+nzEBS/ufXxSxtt10zt1mk
 Fy4XRalyypu0RhdaJhAtKMLtpxpAIoFQKIFWIdRKbrZM1tPIhxG71dLTmu8wBXlS/TbTIfIarq+
 /G195Ly7XlZbsA0iqZ+djQbdPSw6FH9u6O7/Nm5cXsZ5OHUo4lhOaFCKZCWGrfMDZds4L3LHTmd
 ci8wqyYIKIHtVeXD7leuCoao/TZjklRZu2Mtr89T4UNkl+NEWeTTV0Yoqm0kIhqc4b3T+IRirNF
 pu8foaoHS2Gl5aC9POZ+aIg6lHM+PiaWyyoDzVRIx12hyT1MeNkczyxCgvvg6AzVhPiWR25Hk7L
 N43afrEN8pDRG2yLtFMGBD0LV+aDsRKZ7/Lkh8qaSEpdjnX64dCHtQHzZvNB6a3BqFZS2GxXoXi
 Zk+/N5t32NAGl0spVTiNXt7XaRqkVj87+bkdxz1g2d68N3Oa7GqkQpM/ZAXFlYz2e3JWoBJGF7K
 SG0GDpUY569JTrAZEZ0aYxkyDPHqPI4qO6M+lJdHLQXlxNh3J1ZI6vIpa+0HG55YhgjGMg48jU/
 MX1V8umG3wHBqRMKe7bLEAMiq16Xfj4PrfoREbeDpFxD7u2+niV0ph+kiyNGaV74xg1Gpvzq3Cr
 clwZfItBTLH+3jQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDEzMiBTYWx0ZWRfX1tplfwo4qblH
 yKfw7xNlNLdXxPaDE52XPUpZKkdJpV19LIImLqpFWX9WjV3obtXC1wvBenglYth94m7MnXuP9Cd
 lbe2L4g3iNmY/nEqWVYLSrg/kQn0scutW3pYA0FoA/rUpbgyenFZySnaaQBr8Ewj7SefUDRR6qC
 YB1u8TBZ015YGKqLTm2Zv40eHbmuMVV876qo/DqUGjLaIZe+/DXCOyyWMn+Yfui7BSiDWGO8AuL
 YDDvhTIzpxvIljkujUnqq3NHu1zKoT8romFTpK2SBktLVrRed2Ve9R/xRv8j0fKbR5pH6Fs/tag
 8DM6Va8fDTGec4w01vmp825Z8g/tA2xzWT0z8uyDL/c5Y/IzwJUWAT8win5Z4bwtqMUWNLNxx4b
 cL+IKO3ViY4+GFeAz4QA1hwpQ2HrJBYZNAemaP6s04lrus0/2LzhQbzVAxjpztlexfpwzJfOksS
 4oxsm95hnK6vCBMbpQw==
X-Proofpoint-ORIG-GUID: 6OkBze1KYGY79b_jrWtzjERG6ioSynj6
X-Authority-Analysis: v=2.4 cv=ZY4t8MVA c=1 sm=1 tr=0 ts=6a26c9b3 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=bD1TNsHgvEXzglPpcYW9rQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=YC08-fj938uaX1hd5_AA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 6OkBze1KYGY79b_jrWtzjERG6ioSynj6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_03,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_065459_618698_4863C0EE 
X-CRM114-Status: GOOD (  16.86  )
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

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v2:
1. Complete patch. I accidentally sent only part of it, built on top of
   internal WIP which I forgot to squash.
   I received Ack from Rob, but change is significant, so please kindly
   re-review.
---
 .../devicetree/bindings/mfd/syscon-common.yaml     | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon-common.yaml b/Documentation/devicetree/bindings/mfd/syscon-common.yaml
index 14a08e7bc8bd..315357da146e 100644
--- a/Documentation/devicetree/bindings/mfd/syscon-common.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon-common.yaml
@@ -57,6 +57,38 @@ allOf:
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
+                  - ti,omap5-scm-conf
+                  - ti,omap5-scm-wkup-conf
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
