Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 831FBC83F20
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 10:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MF0efiYAZ8wmgAF66ZEbVF5zizFx3gzMujNl0CV+prE=; b=EVicBQVcDWCW7v
	cOfIOfCn5tNQjDBkPzJKgC924blqcQDFkXmBrBFFzbgGreyU34ii9MiS8SDuUmgTa04q1LFBmSe4i
	JP1bhY3n0ju/mLwIHNP9EJ8D86jxsKqwgtY8fD7CIGogdvFpSZOLQKow/T5gVOlJ7d4m248PLVaIu
	KRPbOEH6lxZ01fPQBOxjt3LjKv2O36LqFTGQ3dKxqIzGIqj2CvdxJuTeSi0FR5ZKd9/LJ/i7u1OAQ
	BTsBnOskKpnMTQhkcLXOVdaYA/SGaMYMjoR8AjYDeFltr1P7hadIAVtkczvWqUiNHbQSyKZLwpW1S
	QIbe7OxNFmN4LYPPF1Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoej-0000000BVPD-29Z8;
	Thu, 10 Jul 2025 10:37:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnPi-0000000BJnA-2lQt
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 09:17:59 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A1NwAP011520
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:17:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8ty1qg4MgFp/1KipjRpIWVF3P1K5EDIoLCixxlG+pA4=; b=dmIfAR97TkwUQ7Lx
	RnPSqBd6MFiaq/ha9POQEwKOOxDLFMXwItwBfB7t+S8E+OcVlnLQQcYZtKe0ReYA
	OF9pKO366O8724350FYgb4Kwacsi5oJVnpdxufv/kGOeJrQ0mQr74g+8Bm3AaMDb
	DwiWWhHUmMys1IfijrkU/TBXVYpziQl1l3xZj9lfbp9jxbAyP8F1qak3bAR6A8he
	KCkhN/ILC08Rrng235FTL4y0eSAnGWwX49oDBo9y6mPKd8vEXGjodyjzk9RLk0st
	t8P5q33CrixLGGswukojELhulegDKWVgY2P35xajEekZ2nwErH/5Z9g/SdOFFcXi
	k6S9nA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smafmasq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:17:57 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3141f9ce4e2so1381030a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 02:17:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752139076; x=1752743876;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ty1qg4MgFp/1KipjRpIWVF3P1K5EDIoLCixxlG+pA4=;
        b=jTRJFa51QVlriyWDWro4byqNHNG48Heg2j4yXObp0gvR+DJarQp0Nufl5kvslpqNao
         fg8GtaCPwC1O2t+Wl8TyN4p6ENsh79qP+MdhXRPGJsv2gFUaJbKQbhwwFo3+xfXlirsS
         1tZ9ZAw33fwpx1Y6d5cgaE5DqQ1ZOrU+1PxuJd8stIcFgj4BbuiS4TTOvm5HAvXHW9B+
         9JPY02C/XfUXZURa2EUwXGDVwPTr3+ssxQJ/ELe0gsjWBA8mJWAgLXaEPdQXPZtPB619
         11xVqhtvMg/d74OGqnqQnEBCm54/9Rsk24xNabxNQVxeYAaV9NqKTGZX4uxMI3kVoZCW
         CHKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUK5m988E8iUqJ3YzvQPvZADqKQw2lO1++7i4oRN2ecR93C39nCzxr9mG44FUfYLQr0vlfJ3TQc9pJPbMh4EQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyws98lmWlKgJo5XqP2Fh+Qm/RPNgEdhuCiGMBndrBfGzgm+T/U
	s+ahVBK2JdPG2dFzgC9ASd3OIcP1/kMDDA/s7gIKwcPr8YTD4RLothQCP8AlPxQAx9L6JXtMIzO
	v5HS6oGBGSqlieYEWIONgxunyDdkStDfWZ7Q+/FFnTnMkLTSyPLhbRj4WIUaX9HDY+78NHF2q8g
	Q=
X-Gm-Gg: ASbGncuFo3iCI2baZtW7M54g61+xSxWGSoWrvvqcpMMA0b4rR8LmM5JnzKt7xLyhpYo
	2LpKWiuYiltokP2M85fglLI9T0dFH8CTqpBUiaT1mLe8HkBTBbnOiq1G+EEf//tbi+2l313M8XX
	j/BBF9/6ySliIrJ4yyc+qgEn9YJUazO1fSlGmP9sbMJU+t830yOysgWWPne7Wz8FAADxzyYwpKl
	b1m7IUtzGx+uiQO9lbVNgGvrvFWsWKJPTms2cDx0eGTY8+JXHwLBbkAPZJHCjyWylVXa4p2pTDj
	AbBFx7+zHcKTOfDsP2o+KpO7zK3QrFLEisawv1CfTn1/0fg1HLQjfXP3uBM=
X-Received: by 2002:a17:902:cf10:b0:235:1706:1fe7 with SMTP id d9443c01a7336-23de47c3198mr27936345ad.4.1752139076526;
        Thu, 10 Jul 2025 02:17:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZ5DuAv4hQzhi6yKoAY4RR5pKmk35nKETW7dTCDtaIHn7ZT+nH76uc5gC9jWo86sxbpSIxlw==
X-Received: by 2002:a17:902:cf10:b0:235:1706:1fe7 with SMTP id d9443c01a7336-23de47c3198mr27935715ad.4.1752139076096;
        Thu, 10 Jul 2025 02:17:56 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:17:55 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:45:50 +0530
Subject: [PATCH v10 08/10] arm64: dts: qcom: sa8775p-ride: Add PSCI
 SYSTEM_RESET2 types
MIME-Version: 1.0
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-8-b2d3b882be85@oss.qualcomm.com>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
In-Reply-To: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>
Cc: Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Andre Draszik <andre.draszik@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
        linux-rockchip@lists.infradead.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
        Macpaul Lin <macpaul.lin@mediatek.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=1717;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=wgknhYAt4nROUs/wPHMPDduf8A/Qll4soAM+xxnL6qQ=;
 b=3xptDSMJeo3n/kz2bsmlg89oPR2D+s7/G71KUw980yLr9mXAK6CEeli4EB/FEKrVloHBfPGNw
 SkdWoG5CPJdB2Plv4VSr76tB6ulp/v0kXwZhRefVTk3eBv1h3UuMEBA
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=ZJ/XmW7b c=1 sm=1 tr=0 ts=686f8545 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=agHhT1tg99JF3qhwDn8A:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: lag_HN7v-hJac_jw3AM3CoJbjiU_19HO
X-Proofpoint-GUID: lag_HN7v-hJac_jw3AM3CoJbjiU_19HO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OSBTYWx0ZWRfX2Y70WaPx16LT
 SB1hO/MYJEo6Aoglu9+FDCBqqTdh/N8smNCmY37hrj9gomkKmqsXZFElC1pCI7fS20sqK0fnaIG
 zR+Lm8BcpXGl8W0TTF87IEC21Fgh6XXogUeERyF58akn3K3oKg3UZZ5QQRj3o+eBgrbqlQg+mC5
 nIMo/rcC5e7Tha9isk3bEMjilUxOqNog3m924IMzRine5wmE0avNMnPA01nbs7WRM2d6iWKldr0
 bS96rs+uvb7XIMGrszff4k4s4WDQZ2JIzbJPJ1tALxa2Ky536s945mFOSevG9QMz+rwORqQoq4E
 G6XoXiB/QB3Cqgt+YpjgBbu0XjXyXV9vaN4+taSWfByrCCRfSO9+U2W7o+fIXUhaIx9BYvp7Czy
 rT4wOT521GBxrZLPdOjLI1FiVlYLXJeGNCkmKxZBOujJp+WFQNGV9w/lvrHy/b3PYJXwfVTB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=986 impostorscore=0 spamscore=0 adultscore=0 clxscore=1015
 bulkscore=0 phishscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507100079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_021758_806327_E284600E 
X-CRM114-Status: GOOD (  14.49  )
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

From: Elliot Berman <elliot.berman@oss.qualcomm.com>

sa8775p-ride firmware supports vendor-defined SYSTEM_RESET2 types.
Describe the reset types: "bootloader" will cause device to reboot and
stop in the bootloader's fastboot mode. "edl" will cause device to
reboot into "emergency download mode", which permits loading images via
the Firehose protocol.

Co-developed-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 7 +++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi      | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
index 63b3031cfcc15fe2cce58c0fb7502b19f058b80c..44840c37c2f102e7939f64c8eaaf8a872ba5a140 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
@@ -874,6 +874,13 @@ &pmm8654au_3_gpios {
 			  "GNSS_BOOT_MODE";
 };
 
+&psci {
+	reset-types {
+		mode-bootloader = <0x10001 0x2>;
+		mode-edl = <0 0x1>;
+	};
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index fed34717460f060e6a9dfdd4e29ca4025c401b83..b1f151aff478dc268e3405ef5bdd85e67bc25cf4 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -622,7 +622,7 @@ pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	psci {
+	psci: psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
 

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
