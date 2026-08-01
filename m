Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2889C55172
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 21:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bwkokG9de6iJAbXRanUudoF8Arh8izlD7CeQA4fj9Y=; b=Lxr0ei8KmonU25
	Wn0QgTvVuxLPUe/fbrPZZ98AuoOmBYTcmoSWPyfR4oYk0o8S3rAEmNOiYnhWaYZIcon4/zxXvKx6p
	lm8RuICGtB4BSTefVxQq3WOQY9ntjNri4zkwDKEOI5qfs1eSC/DBKR/RRRIrJpfOBEAwIBxtaYhaf
	aPiTM5aU0PQVvuBGfBzK4YPF+OjVlAy9Rn8GellYI1qCliaqsSlxnZdbV0a0Mo7hG/k5fJn9C5wuD
	jQ050QyFqobCvXOM0elsHxWsNOsC321xba+loYRlvWzpw8FqqtIiEyFapdmzgBzny6+ItF82lp02A
	SHNXr6AQPwHjFbZmckkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqGrJ-0000000F4O1-30qd;
	Sat, 01 Aug 2026 21:03:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqGrG-0000000F4JN-0GBh
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 21:03:04 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 671JBpPe3548317
	for <linux-rockchip@lists.infradead.org>; Sat, 1 Aug 2026 21:03:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=3+4p/BPtvf8
	MlHftL7UlQ6otWoYTySkIKv9dedYNSsE=; b=c4WAUAgWOBb6i3yJOWnRXeJ/EAK
	9rPbTGF5nq4VT46vRSRbBFiiN8WkOBcQ8TEVVQSK8EXGyWVR9hcoAaK5VSnJqzIv
	1b7wzDY4CpE41pT3OHxls+RpVEcMPvgwIPcwc1gfLoGKdvxzUj8pCEHWnczercPO
	MaZRdFx1uLtDQDlOEDDY3CYBqNBqlNR8kHoJngpg56XZZWmKwjB2TMnZPxdWV4tU
	Cm11f6cP9YGeOGw3cXehKWfN2afM/JmOiAfkTBaxLBeZ8e2szoGfyFQpGz+JQeMp
	Sib7Fd+rhsHyk34HWulGjY/Rvm9ehyLm7xdwdjs8uFok3krqekAItlj9mjg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fsa381h3s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 21:03:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8f000e221d7so22495546d6.0
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 14:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785618180; x=1786222980; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3+4p/BPtvf8MlHftL7UlQ6otWoYTySkIKv9dedYNSsE=;
        b=CGQYTiZlU0mDTzYCv8zCOZdynblwKjOMsZkGkkMC1syIuQ3Nwg40KPHaCqx/ezJMPr
         EJDqULxDW01k38UghIF8hMc5pN4iK3uFBQDW6MBdME5mt8DKSwuOrFPkbIAknTFD5HRx
         Y3LGRh4HUfrut0ZCr/VI0Ty64W556q6fxCeLwxBjJNd+u+UMRWky6PCvjvdOamzY3tgk
         diSis7X1UutFDIfZ0U5sKRNInYQoYrBbH/dLTvgK9rCE6oQHoNCOmGk1vmwIc+nYGXcE
         q1VsKMCyOeuYFRn3peV+P+K4NbGxcRk4DkP/pSSQa7bfPXFRWHzRkLE+LCow44maOtVH
         Bb/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785618180; x=1786222980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=3+4p/BPtvf8MlHftL7UlQ6otWoYTySkIKv9dedYNSsE=;
        b=hNjNZsWQY4r46Jt67wM4LHC8wlTYKUtmj46m1NfPxaDN01FPJ818jaaNCLMsHHVngl
         OLEyZH0uqSbarT4xd9xlnijRbhXj+8cOfC2MLByhtUey9tLE9bSdAEYRFSFqa+0wlafh
         bsGIo/7zFxTJrTw6G4mniH5d6sGzrLj8q6clvSQZeBMRnrEYCKnppRUeBWLXkq+XnXDd
         CrJH9Bp/D6cQp17/yME6vda6aYTDc+Xj9q925vweZMaSwG1eHiTO4v0dbYDSq4WDqOv0
         u9yZgtu3cyf2QlN9nNln0Bfkt5xYKPsJgpiy6f1SN+PVn6He0NczGTHFurcnYXHikWtm
         FNcQ==
X-Forwarded-Encrypted: i=1; AHgh+RqnnM7tAV+sTh1iu7ivO/fBI2SNfAyxDSuBsApHD3FDNHtPC/1PjJJbxEIiqtQIijTubct7L2n3Up+ENRM6tA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzSfWGZnE0Qoeuccyem/wQNvRvANuKzXkV5xNNldpYU/kiXYIFJ
	hdO+r2E9G8jEDs1+aSbKOm6gKIv/B++kVAip7ZNEJOX77R5BfQW94Pn4ec5ASFLyBbBulLhPjK3
	Ll4QgQR9IZNYUJDApQHpQUQZ3AVmTFXJuZquQh5plwg52Gt6BD4EVQ+9VuxiDPtryWRlhmK3FY2
	4=
X-Gm-Gg: AR+sD12cDxS9aMN/NVDavxazaa/YLpQI1Akv/5wejVX7yqEJFDrsIQEgxjzMCQvKkhk
	/fv10Xv8U6cAPL8yNm75PVvrVW+arptfL49MtT5aojijxIXw1qT0RlhwBa3D0HZ49S49ha93u8o
	UZwDVXB7b8CAOww3VRgYagxevEIb/NhGyk9FfHJNAfzlpRZd0TXyjW7nAA8OYPlpFDuHyom96fe
	zf615wR+jAjCCWuF5rPPfKFEkIZcSR/4n+t2Ukf4c6RML39JhL5kMRtpekEdSihJWuFKJfGXNiV
	G5bzKHBNLxA/HOMHG5/K+ysAQ9ZJVAtxhHJKhMhgm30zCCr6xj+bAMmL4Q0/wAPgRqgW7l8/sbh
	zY81bR90I4/7d1+Mt
X-Received: by 2002:a05:622a:2618:b0:51a:8f3a:13b9 with SMTP id d75a77b69052e-52b566b184dmr104068091cf.16.1785618180394;
        Sat, 01 Aug 2026 14:03:00 -0700 (PDT)
X-Received: by 2002:a05:622a:2618:b0:51a:8f3a:13b9 with SMTP id d75a77b69052e-52b566b184dmr104067671cf.16.1785618180027;
        Sat, 01 Aug 2026 14:03:00 -0700 (PDT)
Received: from quoll ([178.197.223.174])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49807ba8032sm66078785e9.15.2026.08.01.14.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 14:02:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Correct white-space style
Date: Sat,  1 Aug 2026 23:02:49 +0200
Message-ID: <20260801210247.383632-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260801210247.383632-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260801210247.383632-3-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2562; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=aFfUnKCMsaF6tMos1gT9OAGmHN3kY/TQHmkiRmzGUwI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqbl74CI6AUsA/V93KkMhdGpAnnVf3RadeXNPS6
 FPrsETyD+mJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCam5e+AAKCRDBN2bmhouD
 18S7EACT6L5MvTRrjsEmXg6XcREO6KBEzGw9quje6eYgE49HFxNq0k7NyoM5mMkfHzs/q24Sndz
 IJ0FdWjMPolTBCw7aRdi+cNxXf/t6jFDwYaxCIFrPAVh1PsUPSGsycdeeqMKKNU6JTiCSEunnWb
 tb78i9dnw2ZYes60Ne9k2OSvPvXUzU5T2cjQgp40liK9aPbX3HBJKuLX3E599COvUc7IkypWvQt
 X7ngYmpII1jf9dJ75nENiyHurJMOQR0MSV2a44uwn/aN27sWReJYiayGS48x1LsHx+kxM3nrV75
 gDN0TiVp40KLsS1+OrWnOyK8IA7sLCTaYHmpwG9f0oHBIjUWDRcxryD0LuK4MptnNzq37kQRKKc
 osoQRWTvONi2EKNGwA6y74gCn4eifXULmMC4fsNTBOwoc6Ucq2Yn1DAN7bqDvd0uUxADd6QPzy3
 XOL09OmSraGadaKUGsQuJYq+fqF5wNV9BSlBHkIbTK3V+Tvq1tBzuXvFdzwyZuadA6w01ehzFfy
 N1asnDM0hcmcTiqQYB7PGMyRaKThmTouJweqyvRTJT7ibqCsUALRgMspEFw3skd1B+zkt8FJVer
 78EF/n8mC1ZBdTN46SG+bTAdvCb+zpiMHKn1z1otgaQDJtGRVzLoNvDTcXIJY37QAxiIv3541sE qKz8rQi5D8QOqBA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=KezidwYD c=1 sm=1 tr=0 ts=6a6e5f05 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=N6niishs+lR9UBL1FN3Qrw==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=WAwJ1FRNEprDOCzB6JEA:9 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAxMDE2OSBTYWx0ZWRfX4sB3hhO3okHO
 v0RWZe+VwaPo/KhibM1yQ7hwBRt034/Yy477GCkG20p9HU+O2F85nVpHPA31Kf0uuHHJPk+Re+i
 rCsK/mgyM/HCJxx+7eBHLtAIuVt4hkE=
X-Proofpoint-ORIG-GUID: 5lYlWmlthgcgaDlNXJ2dtY2aM5tQ49pI
X-Proofpoint-GUID: 5lYlWmlthgcgaDlNXJ2dtY2aM5tQ49pI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAxMDE2OSBTYWx0ZWRfX/l4Ylyez/k9l
 p4PbeOSeC8mdSIukbSceOitDLPriuoLRWwSvgS7s7dOKDjbWs/BADqbBtbNe2G6U6TxJj0FdJrX
 wwCytjLuQlvRxKmPNyubNVmH/PMc+rTd0lyrPx0QiwZmemDOqhaQrp/e6Ebr9DcjXqpGsIn6Vfb
 j80HVkKhRY9mcAGtArgVnidNhgWA8y9Rff6r5ODZtfu1fIzgezdNi8NO8650/ilRDrDWzoHZ43Z
 MeNb7XZSnPhP6sTSCOpN5/a1ysF/+lTBV9N7h98N/O8G7Tq8QCuSXP6GentPi6A5j83jjTE2Qgb
 NwVIZw2ZL4dXCVOuWaodgxDHJrlSLcJAnxYvPjf8Kepmzd8CMnlI1BPYW5n0wX2xAp03veqVuYj
 PjkC+CjsGNKZSaZCGy7453uUOzIRmlnMu0D3RArsGepH3dOmgDwVF+XG/FhC7s/tJ3u2+4SAWsq
 eal/RgzymaTfz3S8csg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-01_03,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608010169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_140302_126909_42928C5B 
X-CRM114-Status: GOOD (  13.63  )
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

Correct a few white-space issues, like missing space before bracket '{'
character or spurious space, which will be flagged by dt-check-style
("redundant-whitespace" warning).  No functional changes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts             | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts       | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 5e7181948992..74be8bcad7a9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -156,7 +156,7 @@ &pinctrl {
 	pinctrl-0 = <&rtc_32k>;
 
 	ir-receiver {
-		ir_recv_pin: ir-recv-pin  {
+		ir_recv_pin: ir-recv-pin {
 			rockchip,pins = <0 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 70979079923c..60ea9ff7fd75 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -85,7 +85,7 @@ simple-audio-card,cpu {
 		};
 	};
 
-	sgtl5000_clk: sgtl5000-oscillator  {
+	sgtl5000_clk: sgtl5000-oscillator {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
 			clock-frequency = <24576000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts
index b57bf7bf10f5..b17c7a43d54d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts
@@ -310,7 +310,7 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
-&usb_host1_xhci  {
+&usb_host1_xhci {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 873fbeb8daa1..935c40c5a9ba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -90,7 +90,7 @@ simple-audio-card,cpu {
 		};
 	};
 
-	sgtl5000_clk: sgtl5000-oscillator  {
+	sgtl5000_clk: sgtl5000-oscillator {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <24576000>;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
