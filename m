Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3D91C83F1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKrcUbL+ntjMEX4KUDbrWhXkzogRULeOd7Mqk1hmC0A=; b=TYqcc2wXufx206
	Bx+Q8o0gc/8MFyuVRMMnQvb5FhShJnHk/z+DruEve0qZKm6agcLKlaoAd8HJGg9D2P/sjTayyZDF5
	S3q3qo1zcZ9mtCHvIt45HZojsvSM7opuXDqK104gL42KWUI+sOBY++6pnpI0KEFfwyNO80pIQip1O
	Fequ5l11DqFzi25iARX6gxKG3kuTqWd2EYae7DYVMvJMt6t2E8qTbRqIP4zMaSz7w8jRN9tL0lHRf
	tOS0qlVceCAxFaOsgbdIILo+3heebsk4Kw5Jw56uliUnWvzCVGdYIQTzJz7YFHlhehjTqhW5z+G2o
	ryCaBbSfA5DuyZtFRBVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoaA-0000000BUrr-1bH2;
	Thu, 10 Jul 2025 10:32:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnPX-0000000BJju-0QtJ
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 09:17:48 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A9G9to016991
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:17:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LHGeVOx0U2s9qP0ikhLwIs2P+IuUNoY0lfi0EgG0DtY=; b=T2leWwQnvLvOkFT5
	FqxaS8UlSjT2B3VyMJW/m80MFFazSucqvPBpJnIE0FykN9J0Jrnn0TBJjigP3BFp
	HC5rSlMxaCCXV6ZY8ZVsx2Urc4vVFfdjEmW+OiaYUeRYXredSnDRdup+9khzzpxk
	Y4ZoRaX8ySim5buzzTB5VFaujIvS3dBRpSSReF0L3SahKEkiyGO3vRBSfzieGYtv
	EKKUQszXEPp+NWhoiCHdFb5cw9Jrn2WFcCYkOeug/I7wyK32bMS4J026Yl3ZbmLo
	4gtNC5Ddh9jurzukUaEA3mUSYVGUzXqUi9P4m3rUqXQDK215N6e/BtyeWqJllsVF
	D34PwQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smbnvbeu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:17:46 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235f6b829cfso6552585ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 02:17:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752139066; x=1752743866;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LHGeVOx0U2s9qP0ikhLwIs2P+IuUNoY0lfi0EgG0DtY=;
        b=o096vfGHTQB0gq4PdfLbtcPWxqgID9FgZXopQxsFSNMbdqPMNZXkIucxaj4T62gR8M
         IeEp51J1+U6luMRHaHqZ+cw9a/uoEOCakkbNadVrzq0o9T0Je1yPe9kpGSg6WC/FMKbX
         i3vgAvxiIDBXrwUlk2odlFMkuoc8j+Z9DdyN2q+ftzuOKk+f7t3/lK5On84ubfI5zXD3
         am/l49hnjIJLq/GBAWdPAFp90fhaxKH4MsNTfL80sstLbZ7NWPg1EXZyWQCU2LN4RJai
         T6M4Jkw1mIZXqJbVbd+HID/C/C/mQVda8vFQViDSxl0HVjlq6iBfHq7SQEx6HyzRQE4Q
         Hm1w==
X-Forwarded-Encrypted: i=1; AJvYcCXtEisSNoteGdauJJP/K5ZcUZ+fu7ob2Iow+xWFMF8DX7aJjlJrdmG/gnBF5Zpg/7W0HsczEGa8ypMXV7dJow==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1r2bvkx2JKqt9/rZQriqOrEgPGIqPrY2Hz30NUkBgsYFFhW6N
	VShk2uI8xd+1dg7qxAFH8GgawDtl2IaAQfCqFSBCP5GxkdzY3EDIxXkBP6oxSKSLlJTJTOWdEA2
	SV0fgxCgru0GdNoT/DnzL7FiEupLxISoqSoBHnfDaDwbRib27IgSo4SAi3UtlTT6gyWgjzCh6dX
	k=
X-Gm-Gg: ASbGnctcZJ/9jcSY6IR+RSHkHj8txVXoJnXX8MAf8KxKnLTkmGinc4YZZTuj7Q/ubMS
	xLH7s41Z2mTSlxXBDe4IwT0o16A4cbJUOyBimVeAotXIg3FCwCCRDN63YF1XYGZEpLYzf2h5w9J
	AmzJwvSXb7KBAWh9QKJSGSpzZxS1Z81Ir5FPoB/iJ/4ZK+4hLNGLR76AEbvBhAB/iMD5BGFMIkU
	5x1IY9p9dC68pf5HdVXphg9m3BjAahp2CcaT+XC6NZKou4X8P1lMWsBneFQIL8k8qPyR0Pl+mkx
	AoLUEo6BaSzsLTLlk1YB+LBt/SZgdRECp3pIB2GTazHF86w4aAcSBQgXMwg=
X-Received: by 2002:a17:902:8f85:b0:23d:dd04:28e2 with SMTP id d9443c01a7336-23de24f375emr43328185ad.35.1752139065786;
        Thu, 10 Jul 2025 02:17:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRrq1v9TOcKehLshyNd7Q9DOKQg1TlB7iqx+awqZ/WY5auAdU7wXya8kio0FJy8iSW3PY2Pw==
X-Received: by 2002:a17:902:8f85:b0:23d:dd04:28e2 with SMTP id d9443c01a7336-23de24f375emr43327605ad.35.1752139065322;
        Thu, 10 Jul 2025 02:17:45 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:17:44 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:45:49 +0530
Subject: [PATCH v10 07/10] arm64: dts: qcom: qcs6490-rb3gen2: Add PSCI
 SYSTEM_RESET2 types
MIME-Version: 1.0
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-7-b2d3b882be85@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=1169;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=hDcOEnYaWsyU0iqVg0jGaDC9VsmHgvyimm+9MopdURY=;
 b=LLxxdiwC89+T3X5nLirDzCvhuvPRD/c3MNOaVzUQd4mRVGpcSzTIh7ADcfoFeLkJX+zkArk/k
 5kif1NoHvivCPiFySaWIVEsxNKuvF2Bu4vUXGv4gtaXwnEgWXYmX131
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OSBTYWx0ZWRfX0ezpyyErAr4h
 C027CcNBgTgnBXLiD1AHOUUk7J/V7uksGoa0YF1nC3l+dfXjO3O0vUpOzf17Kzxs7/uo6xUgp05
 Q9ftwnBXVHwlX2NV6E22jh/Gs3yclayIs2qgOfQQiWnOoBApkbsP4aLm/jvcPO3T2A/20hybjAF
 HMN1vOw088jWwhfqvOZpj4h9eueeBAqryIMCl9TDpt6bGm1NEkAqgn+G9DQaAUkiJqjyjgQfVZw
 gECa/yX4O3SJLgTpoD5YztTIzLl05NYIIaNY3WJIogsqXsXyR701fpEfuAwE0vY7gYHyeyAaPy8
 dEQea9iCrCq0AkE1TDkjTIVf3+DM2+GGdO32FrxsAjgzBfJgGKJdZbMBsVo9mWBUB1VNcs7Tcqe
 1iqy/E7hkiOu/BNJNr8w++ap4GVJWBLTksiVVjGbHnltiHIAtJo6vajZCXnD8oSpc3qBxrUz
X-Authority-Analysis: v=2.4 cv=QM1oRhLL c=1 sm=1 tr=0 ts=686f853a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=mlMSzhu8tE62a9u_TvcA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: TpCAeO5M69CIrjUQeAzJNZvOldvTQDgV
X-Proofpoint-GUID: TpCAeO5M69CIrjUQeAzJNZvOldvTQDgV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_021747_142298_3AEE5B3E 
X-CRM114-Status: GOOD (  12.86  )
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

qcs6490-rb3gen2 firmware supports vendor-defined SYSTEM_RESET2 types.
Describe the reset types: "bootloader" will cause device to reboot and
stop in the bootloader's fastboot mode. "edl" will cause device to
reboot into "emergency download mode", which permits loading images via
the Firehose protocol.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 5fbcd48f2e2d839835fa464a8d5682f00557f82e..7c06fe496e800e758d59ca793785d7c2907df8dd 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -966,6 +966,13 @@ &pon_resin {
 	status = "okay";
 };
 
+&psci {
+	reset-types {
+		mode-bootloader = <0x10001 0x2>;
+		mode-edl = <0 0x1>;
+	};
+};
+
 &qup_uart7_cts {
 	/*
 	 * Configure a bias-bus-hold on CTS to lower power

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
