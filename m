Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D7EDC43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 09:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jb7ehS/pKbekntQv/AzxmoHdVJw+FauXLBLlXEipaIU=; b=V21m79cL0pvixh
	KsmPSA+mvQfeOIxSkFCGjarT/xwTfwXeNuf9pQAdUSQbfzwQqICV19hHKvHZri4gwPc4R2+3fg82e
	t6IYnhx1xegDCczg13pXzuABA8/lUQLdrcpDZidFuBFztJVFbLbm+lhT4fX1IMxyH9KhNMZh8DYLn
	B2xiPSdUoHx37owMk+e5dWWQ3yIf6OeZ+o6VS/IdBObViuSOemBobKO5wvMe4OB1XR059Udult1hP
	b7o/g7bvvImmPjhsmG49OrvrW4ipw47GnbrdVX3F5r79cusHjlH5LPg8xyOiWhC0FSAp8W5Fp9+V8
	L7e382Y2m9B8ikREK4LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfig-0000000C2p1-13T1;
	Mon, 06 Jul 2026 09:34:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfid-0000000C2n0-2nLp
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 09:34:28 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66694GTs142727
	for <linux-rockchip@lists.infradead.org>; Mon, 6 Jul 2026 09:34:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=0UQSMtZb2dkaGCmhPnl+4tNtTS3hjmr7Jep
	Ip4F7f+8=; b=KPyn6K98VP+mkssB6+0f8pRk8ckzkuygXCealfEm5Ot03UAeeco
	zhguKZPAr/R9jS0yYEFK2MGUltC5kkJQ7v+CxEY2nCaZG8SynKpYUgmlKuT1aNCT
	8+XSn3zpDRLseiyXvmrhoukcFtVR1CUZ5FJkVuft0SkQX4jWexeWgTX3ogBF83iQ
	R97HmPvZa3f8Yk6VNi6KTaeO1sXL9JJHlpn6iZcs2hzzrg6WcYBBSJKWccVdET40
	DHVKRqxrCBvpfG20paBUBHi8sb4aXOKcHktDIuQQ93Z7LJ1HWrqed0dUlPKjkM1c
	jTyGrPG13A+G/kf/Q0rcn43v6aM6pc5sNNg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6s4swp74-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 09:34:27 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e5fc4c7e9so285504085a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 02:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783330466; x=1783935266; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0UQSMtZb2dkaGCmhPnl+4tNtTS3hjmr7JepIp4F7f+8=;
        b=hmOqrKjK6d7jdyh7Ds+CDIvTvXnzu4Zxc1adb1sX8upeW5HJ+TQ88qslZrMSq/u/bJ
         3Thb8E8J1qZf0dYeRQT2qRVSVoQuDrflROOOXYr5twqydTdFet6ccoD3dKSIgJfiWvCD
         m6ngKYCw8MowiOoOnGe6++GR/MWklhEx0rDvz/CFwA/dmdL4GFGZAPcNucMhrt1qBLrx
         7ydWrDUJeGIrcnPi2Fx67tiwQ3oHWjkpQRJpidtkbJDAmJaDTk62aA5uAJowaXnxXD0J
         br30fedbaWLsMawmh75aSLZCgEVNcxSfVOHNT9x8zqeOi2tOqI0YmuS3c6KcRnCNQB+L
         lv4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783330466; x=1783935266;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0UQSMtZb2dkaGCmhPnl+4tNtTS3hjmr7JepIp4F7f+8=;
        b=DfXVRimP/IBjycpRauOIl5mwk229TP+BRkXHZbvfOHLkY5OJUuijIVaNoZ2GlWa0g0
         JYmfbd+TNu0li88yJ6tekmHqjxFBdbnyK1QeLbYFfpJm8lIljR2sfKcmr9do7yVkq4R8
         FFyfQURcyLRXkY12WF9z5W47exLxXhmQR0LHJ7/7SlGsp0jDLaqw1beiE8uGSdRU58mC
         coUyguix97mPCflYxZFsRFHwBefos1rG4NxKBVPqAnaqZfHT1D8mZq1YhNT5KjVjb+mO
         mKM9D8zZHXT8oP6TSHa8BibxM/KDzPmJrVmd5hDip1s5cT9Z4vWFxXD+o8aMwLN0v6M5
         8Ncw==
X-Forwarded-Encrypted: i=1; AHgh+RrIEXbsdENNBoWB2YG6VHi0e++roR+wuTA4SanDbdo7j8E5rTHkrkR9WGqa5T9ghlrllb90r1GQ/9HMRqBy5A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxk3g0mu9rrlgCT0N0gOhFGR16374zmCtLScj1+6UP6shIbxC6T
	VVOBtR3I6t4lbt/D/odR8jWo4wtRwvbjPzzmBSvN6bNMlV7i6T2cdHit2gL+grY+xF1odZPTkdf
	XIlT3knbsJJ/Lhd+xG09dbdVbPrOy3Z6PItmzcoQ9fOkstNqzH3N6rc4c0q+Zy8TAzTP1mGO8mS
	8=
X-Gm-Gg: AfdE7cmoCRY3aCfe5Erb465wqYBfs0CgLUS2jCgVyS8Wke1oYXTSO7R6ffKZUqP1dmL
	0lheC10jo/XL9lDWsULijSzP7ZCLpWfu6TR3UOYHenFD86MVGbn8GSHJjg2wiixH8wbI1DEz2ro
	phNQh1HEsdJ8O6CFhCIkDgLDs7UrAmKcGjkNA91DpzouTO57rtSfPeLUrL3qd6ggvHR8g8i8rL2
	W3i3yO4vGizHC6pJgHP7CvRtT8OZdY+vMzWckuTwwrNLVsvnldFmuQXDUP1ehScuLtAYfH9X47R
	/v4pWRVxA7R2zygkvCN0gm3gQiCeq+clKsvQtHVeRsMdpJlEbF2QMo+CqXrWbynfr766YuoTllI
	L+aqvUMz54x3VvfbVkcid4mS8OnA=
X-Received: by 2002:a05:620a:4486:b0:928:f440:2dc7 with SMTP id af79cd13be357-92e9a48f671mr1300833985a.35.1783330466170;
        Mon, 06 Jul 2026 02:34:26 -0700 (PDT)
X-Received: by 2002:a05:620a:4486:b0:928:f440:2dc7 with SMTP id af79cd13be357-92e9a48f671mr1300826185a.35.1783330463974;
        Mon, 06 Jul 2026 02:34:23 -0700 (PDT)
Received: from quoll ([178.197.223.174])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9de1d910sm22610871f8f.6.2026.07.06.02.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 02:34:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: rockchip: Correct indentation
Date: Mon,  6 Jul 2026 11:34:20 +0200
Message-ID: <20260706093419.273625-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1729; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=L7FpJNgmmdFvafbWuh2M8eJdyOikGO0LNl+eQQNyUTo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqS3abFxhXoFWPo9u+R/DFwgtbt8gzn29qroFS5
 g3aXI7FUnqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCakt2mwAKCRDBN2bmhouD
 1xbbD/4ruIoImEerlkWKIhHVfjMOELsSaJEHfnm36aStXPBUhDxfQL8mCJu3e+r6qOIjb7Kfd2h
 rvLPWOnk4J9KTk87a+M55w9zFf7B0LNBAp6V2lkybe8QoWSVCvpHncG1Z2TTbr+secv5C7sPSSF
 rSwAw2Z3jy0JCrfq6z3KCiLi1XZOC+Xdxph/q/HcD2YQG6sleZbaSbn+job7IcPRsp6metGvBg2
 2AzTmcBYiNYBZtvzdvHbPZsHGgKWcVoqrJr/gth5A2NytofWCeG9bEcYoj5M7CKAh50M4dergGL
 JJksrlEtqZZISzfOv/vbNJy4uzGaXf9JXd13Ul/AwI7DUQX99ekv5CZSIFrRcAjf173/gQ1URqI
 14RsuTlqD0WB0Dm7I3ECv4fyA/Z7wzGrTx87qpfFZpkUydyN9dKwwywJVG/zcj1ZdDqLjaFYDO1
 /U2OXzAhH/yxIXpQNwV/oAq0DxPJ3BkRk1ZcdXpd2VOvO4uA92WxFIh9UlrQkt1LQt0sLzEgnvm
 1/7Pwi3sav1AE6DGXK0pz1gJQNrDCpQfoxilTvkeLTuN5pvhbSqOT9cXl2NkiPXimNyeC/uT2u0
 GO9eunj1E/5gBc26eb7AhBwizjtqaXUS4rvZRHrXdbxMMXEQVyNpBMvGgmaYq3dTZopvMI9oVv9 AU6dSVW39of+BOw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDA5NiBTYWx0ZWRfXz2A2Grw1D7Oy
 M4EgBRYq+Eih6Nr+wgBeianvNznsqL+4zV35cDffRZd2Z523P4WwNdk4rvP1LIhocRNna1GKtPv
 nFBl6gb0+qHX5Y/X/9rbXAeLdl1SaI8=
X-Proofpoint-ORIG-GUID: uYJJHmLMIvDv6p1jx7WzXiacrsjNryFW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDA5NiBTYWx0ZWRfX/gDCPOt+/ljX
 TMU+dZpjpKbQyRWUBPzq6gsT+X4FoBWh2xpL05eo9hFpJNvgcehCdpniWsjJhIlMGghd6KWz26A
 0497290L0KPz8VTX14/Df5IPQhD7fZJPpZYw8Gr8JUpYe/riOW/5mq3TqeH1DDkBgQpQDdmD5lv
 QQ2nvLsJcpwWwboDLoUO06MY7XIJlCbBdQ906j8sKiOUm6BhO9jXcN2NoAcnkUDxo/QDvQrqjd+
 U4qztzqZJ1ylhugn+wqqpd18XWNZaVA9Cf9AFCPrCFs9cp4/vErOeLP6oi890swcwtZIDDY6pLc
 gYz9N28LOH6zWZGmZplcUAuM1cQtY0U+G8qp3CarbpPlc4r+uWPn5SMJWgEt7tRzev1lc61uYH/
 VkybtvAR4kDZKaVdmsHebXvP8DcX3CAVEi903vGmy6XKt2nnFnsOYbmYrafaZDmbcuACps+w895
 5i/htpTYIY9cHSk9A6w==
X-Proofpoint-GUID: uYJJHmLMIvDv6p1jx7WzXiacrsjNryFW
X-Authority-Analysis: v=2.4 cv=ZfQt8MVA c=1 sm=1 tr=0 ts=6a4b76a3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=N6niishs+lR9UBL1FN3Qrw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=LhIDl_lpc6LIOOucnsUA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 priorityscore=1501 clxscore=1011 suspectscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_023427_703191_CE15C06C 
X-CRM114-Status: GOOD (  13.32  )
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

Correct spaces or mix of tabs+spaces into proper tab-indented lines.
No functional impact (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../dts/rockchip/px30-ringneck-haikou-video-demo.dtso  | 10 +++++-----
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi       |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
index 760d5139f95d..d0725595ade0 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
@@ -45,11 +45,11 @@ cam_avdd_2v8: regulator-cam-avdd-2v8 {
 
 	cam_dovdd_1v8: regulator-cam-dovdd-1v8 {
 		compatible = "regulator-fixed";
-	        gpio = <&pca9670 3 GPIO_ACTIVE_LOW>;
-	        regulator-max-microvolt = <1800000>;
-	        regulator-min-microvolt = <1800000>;
-	        regulator-name = "cam-dovdd-1v8";
-	        vin-supply = <&vcc1v8_video>;
+		gpio = <&pca9670 3 GPIO_ACTIVE_LOW>;
+		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <1800000>;
+		regulator-name = "cam-dovdd-1v8";
+		vin-supply = <&vcc1v8_video>;
 	};
 
 	cam_dvdd_1v2: regulator-cam-dvdd-1v2 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index 7b1086682d11..acf44f8b47ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -382,7 +382,7 @@ &i2c4 {
 };
 
 &i2s2 {
-        status = "okay";
+	status = "okay";
 };
 
 &io_domains {
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
