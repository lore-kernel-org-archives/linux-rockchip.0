Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E74BC83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 10:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/oeDuD/waY4fDGput2BsR98FohBnwxFEVkb3e6rioA=; b=lt9r495Kfykw7n
	5G9a3DxL933Qs8uhzSNN/q4/zHoCCgVHCn8UyissafVTDMUEmJUgRqjzWAWUfLBHW+HYhahMGrhIt
	p8DuQ2Z/5p5+69KAKIl2vKz7PW+8QG/r4KxytXNK+L7dfR2c1x//t8CQBMPfGIz2W0jwlrBPlZ2x4
	9959yYJI/m23qPPzMtaKAl5ZQlPWnbBqEgcst4QSx6NJ8GsJbmf1JJk68DXIjP6/h7nwneGyFHYDt
	lfDxTODo7vRUfkOjXQXysvIB70L2be20Ll+aOB/drZpiLgzHrv9q+wf5fLgd/s+GGjm/71dO57EKp
	o9EQQemkC+ZsZmh/yIDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoMF-0000000BSmz-2m7a;
	Thu, 10 Jul 2025 10:18:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnOX-0000000BJW8-1Fj0
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 09:16:46 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A6H6ad023580
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:16:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Omsp8mXp75/hXn7qkFWCOKSdc9pZVj0sVSquHLqjEXQ=; b=hlnz/YnwwphwltN1
	B59JKt/4Cda3W++kZCcYOo9CUN2kq5szLGlvUjEnJN+hHg6XkqySGAIX9kQIIt7L
	yrSufKUVrc/KR4S2bSfNKA380RSozNd9AgKSBBzx4eS3yMxCVAZm8j8y7yOClmvp
	LLDXTzNmRH0uL2jaQlSmOisOnSjCMULev+gXx2boFoy0eodr5fHT2uH0Bp+9Q6LT
	iSjO6AjrB8xVeHDwSwL9cFkRia7oTfDG9y/2LnYkem+xoIYk11EbPDgd3Kax1Do4
	1+8qtWyq/c2hdkNwC+lwYBwx017JrvAnatQCzfezEv89DTTcdRAjWFeIrIAypGR+
	T1I8Bw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47t83u0jv3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:16:44 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-31215090074so1498057a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 02:16:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752139004; x=1752743804;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Omsp8mXp75/hXn7qkFWCOKSdc9pZVj0sVSquHLqjEXQ=;
        b=Zdik7fQ+sTRDLAzJD7YjmXzr4TWChFVSwlDOam5LxDwGM+OhvWc2gWtIo8cjimn/7D
         KTVjz5UOfGlqndgNg99RL6+CJ3lgVKbWj/OBuFNR3Yi7miaNRL2G6HbIVTUKb/vsB5nx
         9PA6jk3Gr9w44ZycocKb/LBOm7aQZNZZQvrbWvFPAeyok/Do005d0BHNWsfd3B9DC8O6
         BUM4wQduIfMwegbktPmu0VQiCsNpDPcl/jZydOLnYF9jmtfgWUNPyDO6KWmc/IGW12pn
         1j4UbI14rzEwFJ8J+LNyyfIvxA8rlg9rfzJrTQYQgZRHruG03MIGas/Ak9s0ea1l8J1c
         vUYg==
X-Forwarded-Encrypted: i=1; AJvYcCU5zCByhP/DR5L2Yn8X8mUE6jAb80fA4PNNKZZRnMiVP8sd5P4zUTvy79bDy3m9fEdpanwPZKojkWW/wy4RNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyuHxkL7v+ZMIFXGFBeIWhrQsIdmNjwjr3uJ4ffCMKk/M8MWRIi
	fEyOOxIshS0aUD6XATPOLqR0YeQrHURM1TYkb/EqHbCuiQiIclmgfpdURZr8XHxEgAJYcaF/ODO
	4u9056zZzMxSBxB8F3HkDZ1dTR1sXthxuCAKcaVOMnT/nFfC0iEt/RRj9aWIotgOKhskt/XQafg
	Y=
X-Gm-Gg: ASbGncscEptkjZLPhIGhdQWLcMxqNLyJ122USiqFC2crbICaA7Jm9LqpXAmDHPeEQ+j
	3zfqG5bAHoupfSvuB1dhuOUIo9vIT/V43dQh03cEs26uTvVENVJ9vxV/Ul00gSuWaBpTIVLxhTY
	RsyXxQH8wnCKR4QTA/mNnKPnfVODk98RDD91OHYUTkjbywiqhHKufX1qo89VY5RE0Sb2EUMTSS7
	JMv2Tosjx/PHewYGbXE0M6WrE+MDYjn7Ov/TGJ3maCILq2fTulv1rVnNKdQMXKxq6bS42F0O2tq
	0U6lRimh3W4YXWZo4cei7qI6oY+6969Peq8sjDSov68rge7zxlK/AIAtk4g=
X-Received: by 2002:a17:90b:4b83:b0:311:cc4e:516f with SMTP id 98e67ed59e1d1-31c3f0524b3mr3115627a91.31.1752139003783;
        Thu, 10 Jul 2025 02:16:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRkahqT6M3goz801R4gyUSxZaZcpl0nbaLVmNgBBfdCc7fPM+qe8CygBRAKPCeG1ssUoQs5w==
X-Received: by 2002:a17:90b:4b83:b0:311:cc4e:516f with SMTP id 98e67ed59e1d1-31c3f0524b3mr3115552a91.31.1752139003251;
        Thu, 10 Jul 2025 02:16:43 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:16:42 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:45:43 +0530
Subject: [PATCH v10 01/10] power: reset: reboot-mode: Add device tree
 node-based registration
MIME-Version: 1.0
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-1-b2d3b882be85@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=4006;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=ALwJqxoH5zAinvmbBAPI1a8edV2GbWb9vLZOWS7SaNs=;
 b=zmpgmDmSEZpp9iMryNZpCeFDIhc8RonTeW5+eqo2M22DtBxd4MaQSjx8XESzBCnjrPGhO181y
 zLKXkvptGoEAg7h41Z8ubtMkQzWYl+N4cZV+M+0O/SV3DXVGoygQFwA
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-ORIG-GUID: xMlhAPhjVITWwtEf8jHSQrvJFt36sg60
X-Authority-Analysis: v=2.4 cv=OotPyz/t c=1 sm=1 tr=0 ts=686f84fc cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=i5N5rYY7EEs6P5za-RUA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OSBTYWx0ZWRfX9tLS6oNrHm68
 0j8yX69uWyjg3DOPiQK7AHAQXnCUvFxhZLqTjavJSs8vCgZg3lfPdvCPAZXJyGrz7N/7rjflwPA
 9jkUZ0rCGSHysTp6CbDJYXiKjSW74cTLAJZUWP6lOsoEh7sLi5DNQPViHRpcSn3VUpEeQFe27Ea
 pELuQVHHAdk7wt5UEvINxqAl11g6GKt9R3Gvl5Hm4a/4/gpOY97VSi9PGVpq/5l7a9J0+ugTKBV
 EopAhHu6xykvuiD9s4WleV0jGcen7PCIs0cJMOwazSYJZQQ+Yj44G8Idfirm1e+n+OS+RhtkDE0
 JzAWadbNKaV+yKLC414/aH9+WBZXYPTKBjg6JhOhIguAG/TNuTkKAdKLMN4BPZUvUQTZQ2+tBZE
 MPdF0y41NaxkbqsZmIcZ2QOrU4OjszMc8fnUzsllnml5k8IT2JQmUkUbqz6LrgEViWXJF4zz
X-Proofpoint-GUID: xMlhAPhjVITWwtEf8jHSQrvJFt36sg60
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 mlxscore=0 adultscore=0 spamscore=0
 malwarescore=0 mlxlogscore=999 clxscore=1011 suspectscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_021645_753455_5622DB08 
X-CRM114-Status: GOOD (  20.98  )
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

The reboot-mode driver does not have a strict requirement for
device-based registration. It primarily uses the device's of_node
to read mode-<cmd> properties and the device pointer for logging.

Remove the dependency on struct device and introduce support for
Device Tree (DT) node-based registration. This enables drivers
that are not associated with a struct device to leverage the
reboot-mode framework.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/power/reset/reboot-mode.c | 23 +++++++++++++----------
 include/linux/reboot-mode.h       |  2 +-
 2 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index fba53f638da04655e756b5f8b7d2d666d1379535..61f647b23959789a313f3af0bd967abcad45fa43 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -12,6 +12,7 @@
 #include <linux/reboot-mode.h>
 
 #define PREFIX "mode-"
+#define pr_fmt(fmt)	"reboot-mode: " fmt
 
 struct mode_info {
 	const char *mode;
@@ -65,14 +66,14 @@ static int reboot_mode_notify(struct notifier_block *this,
 /**
  * reboot_mode_register - register a reboot mode driver
  * @reboot: reboot mode driver
+ * @np: Pointer to device tree node
  *
  * Returns: 0 on success or a negative error code on failure.
  */
-int reboot_mode_register(struct reboot_mode_driver *reboot)
+int reboot_mode_register(struct reboot_mode_driver *reboot, struct device_node *np)
 {
 	struct mode_info *info;
 	struct property *prop;
-	struct device_node *np = reboot->dev->of_node;
 	size_t len = strlen(PREFIX);
 	int ret;
 
@@ -82,16 +83,15 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 		if (strncmp(prop->name, PREFIX, len))
 			continue;
 
-		info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
+		info = kzalloc(sizeof(*info), GFP_KERNEL);
 		if (!info) {
 			ret = -ENOMEM;
 			goto error;
 		}
 
 		if (of_property_read_u32(np, prop->name, &info->magic)) {
-			dev_err(reboot->dev, "reboot mode %s without magic number\n",
-				info->mode);
-			devm_kfree(reboot->dev, info);
+			pr_err("reboot mode %s without magic number\n", info->mode);
+			kfree(info);
 			continue;
 		}
 
@@ -102,8 +102,7 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 		} else if (info->mode[0] == '\0') {
 			kfree_const(info->mode);
 			ret = -EINVAL;
-			dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
-				prop->name);
+			pr_err("invalid mode name(%s): too short!\n", prop->name);
 			goto error;
 		}
 
@@ -130,11 +129,15 @@ EXPORT_SYMBOL_GPL(reboot_mode_register);
 int reboot_mode_unregister(struct reboot_mode_driver *reboot)
 {
 	struct mode_info *info;
+	struct mode_info *next;
 
 	unregister_reboot_notifier(&reboot->reboot_notifier);
 
-	list_for_each_entry(info, &reboot->head, list)
+	list_for_each_entry_safe(info, next, &reboot->head, list) {
 		kfree_const(info->mode);
+		list_del(&info->list);
+		kfree(info);
+	}
 
 	return 0;
 }
@@ -162,7 +165,7 @@ int devm_reboot_mode_register(struct device *dev,
 	if (!dr)
 		return -ENOMEM;
 
-	rc = reboot_mode_register(reboot);
+	rc = reboot_mode_register(reboot, reboot->dev->of_node);
 	if (rc) {
 		devres_free(dr);
 		return rc;
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index 4a2abb38d1d612ec0fdf05eb18c98b210f631b7f..36f071f4b82e1fc255d8dd679a18e537655c3179 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -9,7 +9,7 @@ struct reboot_mode_driver {
 	struct notifier_block reboot_notifier;
 };
 
-int reboot_mode_register(struct reboot_mode_driver *reboot);
+int reboot_mode_register(struct reboot_mode_driver *reboot, struct device_node *np);
 int reboot_mode_unregister(struct reboot_mode_driver *reboot);
 int devm_reboot_mode_register(struct device *dev,
 			      struct reboot_mode_driver *reboot);

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
