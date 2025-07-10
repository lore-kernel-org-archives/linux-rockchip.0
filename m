Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA4E9C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+3hm62EPl/X+5YgbedcGOfGe4JXgaFrOtWTGmLv/MQ=; b=YDSqXbGW9am51L
	pCW+DQqUzYV5lWsCdUC0VBPKg/CER0OqDmRqBfEXld5/mjcwNTc4AkWsBxPo8aQTQROS4zD1/+q9J
	eoLKGxGzZNdHW+SoHYZatPiPHHfcw1id82fX/ELynxcMhTy4TrbbJFq/J24w+EEk2ccuWZGG1BEad
	s8vxzFv/HPnJ0m4KtKScacWeL+TD13LyvMJ7YCAfRXEs2a6Dc79/zKb/ZvKGeskRJ65hFPG5Zfzpd
	LYGr8xD697SoNOz/w+t3y4K5dz/ICDWXtJUVUyeXDPelbPaGwb7m6c0QU6IV7ZAsC4VPmCkwxNtcE
	vh7rzzRrg8BMGAyZPleA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoOY-0000000BSxH-07WO;
	Thu, 10 Jul 2025 10:20:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnOh-0000000BJYV-1FZg
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 09:16:56 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A1MVXW031802
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:16:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3JHDq4xNymeRQPJylCbaS/K0qseIZK5kd41UanSbGBs=; b=NBeaEdjdL1iocVeu
	/rYDdybPhTfaKd04D1Ltrm02Fx08mFrP8+Y/le3PKMA4E6Yn7JRUshnex1oLmzO4
	V17upqXQFqIWJW0VC2elJMT6XUKi+D6UCEpKt4Cnf5Dma+uw99D57W+ke5kFMZAO
	RZskEFFLo9fkAQzAEv/tQkbxDBDoMomQG3H75Tb8LgpktM7xhfI/Ecb3qclcxFy8
	hWOhYUJLNH2lqiMKsnz8McR/KxxeV0M8+ukKzBtIgWgadj+51FAihBM5uLeIVOzV
	GXb8SVOKU7QRsZW7Q2+WK8Bryx+WBb0Ifr1WrlTIWvq6wS78CokNJ7xx1x1abvlJ
	z2a13Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pw7qxymf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:16:54 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-235f6b829cfso6547315ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 02:16:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752139014; x=1752743814;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3JHDq4xNymeRQPJylCbaS/K0qseIZK5kd41UanSbGBs=;
        b=NTe49rC8PoQAD+2qRQr3BMGSwrS7/mT/6aOyV7Q5rExjX5tF55iWlsA/QRSIbc2u4n
         Z/Y1Obzl12n7jWzkqPV8+VBDZPpdAVfK2SKfhEc6AakwY2gwlFUcDFkvgLUQIYLWHLex
         wMgBAMXoArN20M0e93c5vIt2iCZn4PARSZD2SuZb8KydrJzOgdkIcWhQe16yywuzngs/
         +jT9ENvEKiSKg0mR5cfqrISn2hZG3SJMkETJKf5+LCoDETwkG4hWEfgq9fWJY2sqK5+P
         fly6vkXK0x/rpeXf+3/+ysijm3+GXpqDq2f8yKThMYCUxLainOTlI0PwTvQwXNyc1aYn
         7cnA==
X-Forwarded-Encrypted: i=1; AJvYcCWo0XOG9PGUuKXwAbA53R3Ro1UF7580fozLDtWc+c+OSMOIzF0G3XczXUS2MfUQeBaafnownmqCkKoaYEiOXA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzqlTtyqCsllpPFMaBNiEiBryoB51TDDAePXlmywLsTM+/Qs1I+
	jMyLTKtkUz+5i5A4bbO6sKZ2zlSQwPjWXJjqH1HME0z60AMJhUkBg6il5nGVDlhEZ3HdjDsvEec
	Du5OjPWnFPiIycZoWucwHsNYINehZg5iVNcqKqykg2iJvd80IAAWwTk5Z4qGEZZ59iSDuR9ifAC
	w=
X-Gm-Gg: ASbGnctrzgODtlmelJlpe98NYC2hz+S4a1I3D9mkLdQLBl0QnjoYjIXpNlnQJnrRDmG
	VXMnG6tlHrinpm6KEK66p7b570FMyMFpJRXIzQGj34ka9s1MOEnecoL4GuKilKfpSU9bq9AwAET
	wUP2yW9oJFtlBawiaFAJxcw1kiXQ5zDkZlixpshgN5hpPbr0Dkq+FHQ822nzVczJk4ublGT3Uni
	XEZPaZGRInly9p1Q4mwUDaJerLsbtl96A1gYTYHXj9jtEJ7RVYbeiebJaoVJhTqNwubWU/9CnMJ
	X4C1xD+hF5sNtha+uGwsdm9mYd+e+1Wpjk5o74GA5Ig1+UXdDkkZlixYoSo=
X-Received: by 2002:a17:903:19d0:b0:234:f580:a11 with SMTP id d9443c01a7336-23de245ff1fmr43550705ad.19.1752139013948;
        Thu, 10 Jul 2025 02:16:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhuu3BMPy6+m8LotTax4Q3myhPb72nZbkwXLoKvQavuh7mNiBOrFXL2YDf4RnsCd1Y59kqaA==
X-Received: by 2002:a17:903:19d0:b0:234:f580:a11 with SMTP id d9443c01a7336-23de245ff1fmr43550425ad.19.1752139013557;
        Thu, 10 Jul 2025 02:16:53 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:16:53 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:45:44 +0530
Subject: [PATCH v10 02/10] dt-bindings: power: reset: Document reboot-mode
 cookie
MIME-Version: 1.0
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-2-b2d3b882be85@oss.qualcomm.com>
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
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=1990;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=viCb3VHco50oE5St3/+zoJqA55BoCRGQlTkgrUYg/Ls=;
 b=+tAQXKo/oQadh3EVPYHeqksr67cJmLufTnVdZiv/vcBJ0BqSY+aKThnGkD+4p/OYWNsrrETxS
 MZV5O05idFJChRAtYALBJlBTh7VUYG0QMDDrgODlWIE2AZJ0ZArgeR3
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OSBTYWx0ZWRfXwXKo9Ja8Xr7c
 hx+oEQBT5zOy5kHp7werdKQg2GPwIoCGUaMdbNBMB1JSLIsZgVhi1Fe34oAyvwvhEhPRA0fQ3+9
 CjowBq1EYLLgGWfcILCNJ1CnHa6MOSAAwf3kp2qFS9BFje9z/qcntM1iBUXQs9sWStqigwvEcJv
 HIydqRJisu/TnokB+j131gKzX8iwURfzPzaW4qxLbDenE0jPfHVAZj8IJpVAXyfmVdthOpJnFYl
 kqH+A5el0xC9yaoSWCYa/haBiF7Vzt4EvQUAPQh59V0fCgligSVB9wrPqUCZjNngsiF0bpHaO3+
 2fOuJkfpFrx358cc7n/UttoB+XEOMsNOV3+5ktqB0V3ajNXLrOE3mqFt+6qqOrX1D+/8vbTkvtv
 20Hha1DN8DEkAYX4bN/MWv6FqCiR8H18MC/5qfCs5HQ1wnKRIlvfdyQOrwAVWEs6lmjX5gsy
X-Proofpoint-GUID: 7bT538pii-alGyloxb-rbuHPItNHqsoD
X-Proofpoint-ORIG-GUID: 7bT538pii-alGyloxb-rbuHPItNHqsoD
X-Authority-Analysis: v=2.4 cv=SOBCVPvH c=1 sm=1 tr=0 ts=686f8506 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=s8YR1HE3AAAA:8
 a=vfvPc3r3pdiY9V1EK2IA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=999 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_021655_347211_F191FF6B 
X-CRM114-Status: GOOD (  16.18  )
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

Update the reboot-mode binding to support an optional cookie
value in mode-<cmd> properties. The cookie is used to supply
additional data for reboot modes that accept two arguments.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 .../devicetree/bindings/power/reset/reboot-mode.yaml         | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml b/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
index 3ddac06cec7277789b066d8426ea77d293298fac..a4d2fe1db51e0c1f34ebefddaad82b8cc0b1b34a 100644
--- a/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
+++ b/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
@@ -10,14 +10,15 @@ maintainers:
   - Andy Yan <andy.yan@rock-chips.com>
 
 description: |
-  This driver get reboot mode arguments and call the write
-  interface to store the magic value in special register
-  or ram. Then the bootloader can read it and take different
-  action according to the argument stored.
+  This driver gets reboot mode arguments and calls the write
+  interface to store the magic and an optional cookie value
+  in special register or ram. Then the bootloader can read it
+  and take different action according to the argument stored.
 
   All mode properties are vendor specific, it is a indication to tell
   the bootloader what to do when the system reboots, and should be named
-  as mode-xxx = <magic> (xxx is mode name, magic should be a non-zero value).
+  as mode-xxx = <magic cookie> (xxx is mode name, magic should be a
+  non-zero value, cookie is optional).
 
   For example, modes common Android platform are:
     - normal: Normal reboot mode, system reboot with command "reboot".
@@ -45,5 +46,6 @@ examples:
       mode-recovery = <1>;
       mode-bootloader = <2>;
       mode-loader = <3>;
+      mode-edl = <1 2>;
     };
 ...

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
