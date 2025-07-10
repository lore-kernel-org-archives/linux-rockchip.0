Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2D8DC83F1F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 10:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwhoUIiRuw56ymde7mCpbcoAOi6pNzLI58+iUwlYLBw=; b=y+5N6GdfIFPBpm
	CrNbvPN7Mj+kshH/DFNp5DxTwdkfHNaivA1G1l1B1WVJxIUJ5emZC2vXLNFzf1ywLjpb2sL1dqYcX
	Ms4WWDvAXJ2PAZ7u6uHg1HFp+zvoAkglI45q4s6APpupaAIGc8HdTa+PpPxNHFmUYjZlmaQvHHIed
	nCWBWP1vtcydAAchovCGCDRblxCGsqA7sdwuI68VYZsl34vYAR/ShaYRaGrk+XLjiZFowm4/1Mh4f
	gut8puyAj0FBW+WZMkmiFgbwhgJ2K8J4BiLNoXzaSmyeNxfdgay5R+QYLWqtxCqrTWC/7KkKGP2K9
	myetVjHF8OORFg+6/R7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoh2-0000000BVgC-19oC;
	Thu, 10 Jul 2025 10:39:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnQ3-0000000BJsT-1NWd
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 09:18:20 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A0rdYx009968
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:18:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KEQrgZfA5rhK7t8SJQh+Tq/CWC0djSnOhUUgfmLwz64=; b=WhW8TMTQz9Or+5Ut
	JV77FzjSJBAAEaojl+gFV7Zt/eGLI01ypAewarNdVghtsxF2oIGT3R2uBsC4Fifz
	sZXNEm7OopBVSXerUVYv7zTOkEXYpRO0bqiv5AukWGyOSFdNGBm/QrajE5LLYJKM
	dtKH00yzERyxM/vIxhFGx7QNoKPRFkRIXXVg4r5cLhNAXPMYx9UIxBKwr5x9SS4x
	axJWAO4HzKZ833OVJ8Vt0OP68tWBjTFuYcg2lr4jT+qoxOOSEe/ILATnfYIsFtvW
	uW0iOGtC3IUBiKhfuHzJBf33uzKm1hkJg3B9OANZv2zVPByDU9gF0N7j2D60IdR0
	2lv4wQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47sm9dvbph-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:18:18 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2349fe994a9so7747595ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 02:18:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752139097; x=1752743897;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KEQrgZfA5rhK7t8SJQh+Tq/CWC0djSnOhUUgfmLwz64=;
        b=qtKCxsCaakNi9gHEjIDl6r9lyWCDxJwYQajXkVJF0QYYcLG3ITYo+4AXiAXD9GzrIO
         mrD3p7eRX5ZNSEVWbFZGNf3pGvPO8bOOHQ5SmVBRSZuhQm0VAlL6O0QxYXNIRXERGeoa
         HB8bgtH7eLYi0XTZPMKrfMSST5n6GhXRc8lW7GV5T3j2tqgH7t3cWY0RQ8FSYMchOLdu
         iNEH9sZJMmMJTI//XpiT4p1rr9yWaKBFeauUR4Y+SDbynOFhb6h3XMBWWrKbW4AaY8sL
         4GKQz2Pdyj60OJ5IuzeR2gEp/EFQtsjRa+oD2d9o0Bu+TiYlNbxXQvEV+qbzsYWZUyCS
         NYHg==
X-Forwarded-Encrypted: i=1; AJvYcCWxmYUeNNP++kg36sPHIw0i/bxmDxXPeqRnBwa9Cl/a1qUy58fObHyE/12Evkjj2Ikipte7km4j4C+s/xOvMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyOnb+UdHFy2TXKljtG+Y7N31hOmcXIBU1Eu777McvnDVssCxVD
	wptvzHf5ud6q7Np05xz/cQFN7v/gmV8H6kMcmkjWSSXw/00Ce7q8csVzDstWDPEglC+gBEzI6UH
	fVAbD3rjQ+Z1R6DVR5mLir1juoXNy27DE4Ok4Js508vVIe+7elluNtEzCfkJ9jmQgcXWCLF7ADJ
	c=
X-Gm-Gg: ASbGncusQNyk3sUqCHe6uWzxydOU8hTRniTiTu2Aj136wEaL5LFmTvFfUi3t0xZut4Z
	yzfczLoM/Uy3oteDITnkc29Tts9UCzKS15w1PlpqE1JoFwkg41/khf83fbI5DbRSBM7GAqDYdfq
	7CXzQPuQoZ3LeoEtFcaQh7Gha2PhSBL2mJopQrPuZcM0BbO4vor8hz0CzLxBOt2dycaQw3x890U
	xLsNJDnLiLCRW5HuV5V52rHjkdYfT+oRG3ix7KwhL0lF+VOhwlE+vg0MhVGNd5DQL3GhPf4kXGb
	Hx3lAATJC3GqmMTDOen65/l31J7g9QCJPTGAFUKP+VbcXMo3UmQp6PGJbac=
X-Received: by 2002:a17:903:1103:b0:236:9d66:ff24 with SMTP id d9443c01a7336-23de480adf5mr26735355ad.8.1752139097103;
        Thu, 10 Jul 2025 02:18:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGJGyoIrfBA9Zxl0Ughrj3uMKfz6jdSKT0NaAjnNjMskqdtkAKMLUS8x/FzIhDGTyLMPqU7g==
X-Received: by 2002:a17:903:1103:b0:236:9d66:ff24 with SMTP id d9443c01a7336-23de480adf5mr26734395ad.8.1752139096442;
        Thu, 10 Jul 2025 02:18:16 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:18:16 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:45:52 +0530
Subject: [PATCH v10 10/10] power: reset: reboot-mode: Expose sysfs for
 registered arguments
MIME-Version: 1.0
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-10-b2d3b882be85@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=5404;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=Gh0wKF8f8obJZBIFY+YXRq0mvEFaXxY4KjC0e6ESP0U=;
 b=lw/w70/5HLBy4afjvzlsoilkn9KNGxxeob32fKCnRPLyN8EQy03rSeyCWxEC8VvLFF42hMkAU
 +dipiHJKDdAD9k39uxR5AmQE0RPKWUW9koD6OoeU2qqjpwjX3QrfMdd
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-GUID: 7ygT77IumpHc8axE-EvkzwP8CxKTLbLx
X-Authority-Analysis: v=2.4 cv=W7k4VQWk c=1 sm=1 tr=0 ts=686f855a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=YvCmAYiu2kffolCFmWcA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 7ygT77IumpHc8axE-EvkzwP8CxKTLbLx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OSBTYWx0ZWRfX7wk3MwIRBqUo
 Pd1kA8KYZ7tGhtj0E/QswuaIolp5ZBjv5sspLK4EU8Fw4XVmwvPrp/+KPsYuWf+WFckpxqk2vop
 y11TIilBZXFV8FxxRc4MdNe6TlN3UXcPb96ctgXLDONAXu0T6EjdEjjcFvRZTUrNk5HEp6fLqYa
 kYUWZ38//uATpYjuXDf+ajWqUDp/CL5KFOlFy1kJy7CR64Yg6dbX06M5Lgd8Nn5hmzseQjQq7he
 zhCO59Gn78gxCH1bH+t7x5s6jD5ZMG9mjSmdJgqOER3Ve4CNUggWKRwoB2DEdViv4WBfUc19DG9
 FqyltfKqf+tdKh06v5zpLf63l4uNS89sGPoLnTIh5Bhy/to/jBMQL1fsDxXd9GX9+8u2Hk71WJv
 XKq5lER8YnhgJdcn7FAKItkOYiKsLDIV6v6Lrlho49AQ3Va8eknJDZBIc4bV9KjEvkrNxDYN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 impostorscore=0 malwarescore=0 mlxscore=0
 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507100079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_021819_505322_6906F541 
X-CRM114-Status: GOOD (  24.48  )
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

Currently, there is no standardized mechanism for userspace to
discover which reboot-modes are supported on a given platform.
This limitation forces tools and scripts to rely on hardcoded
assumptions about the supported reboot-modes.

Create a class 'reboot-mode' and a device under it to expose a
sysfs interface to show the available reboot mode arguments to
userspace.

Create the device using the node name of the driver that
registers with reboot mode driver.

This results in the creation of:
  /sys/class/reboot-mode/<driver>/reboot_modes

This read-only sysfs file will exposes the list of supported
reboot modes arguments provided by the driver, enabling userspace
to query the list of arguments.

Align the clean up path to maintain backward compatibility for
existing reboot-mode based drivers.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/power/reset/reboot-mode.c | 95 ++++++++++++++++++++++++++++++++++-----
 include/linux/reboot-mode.h       |  1 +
 2 files changed, 84 insertions(+), 12 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index afadd823d62d0f7e7e645746b978cc8fecfb9ac4..128192d49d895beeacb180c1a92b44a5eddccc78 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -22,6 +22,8 @@ struct mode_info {
 	struct list_head list;
 };
 
+static struct class *rb_class;
+
 static struct mode_info *get_reboot_mode_info(struct reboot_mode_driver *reboot, const char *cmd)
 {
 	const char *normal = "normal";
@@ -70,6 +72,79 @@ static int reboot_mode_notify(struct notifier_block *this,
 	return NOTIFY_DONE;
 }
 
+static void release_reboot_mode_device(struct device *dev, void *res);
+
+static ssize_t reboot_modes_show(struct device *dev, struct device_attribute *attr, char *buf)
+{
+	struct reboot_mode_driver **devres_reboot;
+	struct reboot_mode_driver *reboot;
+	struct mode_info *info;
+	ssize_t size = 0;
+
+	devres_reboot = devres_find(dev, release_reboot_mode_device, NULL, 0);
+	reboot = *devres_reboot;
+	list_for_each_entry(info, &reboot->head, list) {
+		size += sprintf(buf + size, "%s,", info->mode);
+	}
+
+	if (size) {
+		size += sprintf(buf + size - 1, "\n");
+		return size;
+	}
+
+	return -ENODATA;
+}
+static DEVICE_ATTR_RO(reboot_modes);
+
+static void release_reboot_mode_device(struct device *dev, void *res)
+{
+	struct reboot_mode_driver *reboot = *(struct reboot_mode_driver **)res;
+	struct mode_info *info;
+	struct mode_info *next;
+
+	unregister_reboot_notifier(&reboot->reboot_notifier);
+
+	list_for_each_entry_safe(info, next, &reboot->head, list) {
+		kfree_const(info->mode);
+		list_del(&info->list);
+		kfree(info);
+	}
+
+	device_remove_file(reboot->dev, &dev_attr_reboot_modes);
+}
+
+static int create_reboot_mode_device(struct reboot_mode_driver *reboot,
+				     const char *dev_name)
+{
+	struct reboot_mode_driver **dr;
+	int ret = 0;
+
+	if (!rb_class) {
+		rb_class = class_create("reboot-mode");
+		if (IS_ERR(rb_class))
+			return PTR_ERR(rb_class);
+	}
+
+	reboot->reboot_dev = device_create(rb_class, NULL, 0, NULL, dev_name);
+	if (IS_ERR(reboot->reboot_dev))
+		return PTR_ERR(reboot->reboot_dev);
+
+	ret = device_create_file(reboot->reboot_dev, &dev_attr_reboot_modes);
+	if (ret)
+		return ret;
+
+	dr = devres_alloc(release_reboot_mode_device, sizeof(*dr), GFP_KERNEL);
+	if (!dr) {
+		device_remove_file(reboot->reboot_dev, &dev_attr_reboot_modes);
+		return -ENOMEM;
+	}
+
+	*dr = reboot;
+	devres_add(reboot->reboot_dev, dr);
+
+	return ret;
+}
+
 /**
  * reboot_mode_register - register a reboot mode driver
  * @reboot: reboot mode driver
@@ -84,6 +159,10 @@ int reboot_mode_register(struct reboot_mode_driver *reboot, struct device_node *
 	size_t len = strlen(PREFIX);
 	int ret;
 
+	ret = create_reboot_mode_device(reboot, np->name ? np->name : "reboot-mode-dev");
+	if (ret)
+		return ret;
+
 	INIT_LIST_HEAD(&reboot->head);
 
 	for_each_property_of_node(np, prop) {
@@ -140,24 +219,16 @@ EXPORT_SYMBOL_GPL(reboot_mode_register);
  */
 int reboot_mode_unregister(struct reboot_mode_driver *reboot)
 {
-	struct mode_info *info;
-	struct mode_info *next;
-
-	unregister_reboot_notifier(&reboot->reboot_notifier);
-
-	list_for_each_entry_safe(info, next, &reboot->head, list) {
-		kfree_const(info->mode);
-		list_del(&info->list);
-		kfree(info);
-	}
-
+	device_unregister(reboot->reboot_dev);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(reboot_mode_unregister);
 
 static void devm_reboot_mode_release(struct device *dev, void *res)
 {
-	reboot_mode_unregister(*(struct reboot_mode_driver **)res);
+	struct reboot_mode_driver *reboot = *(struct reboot_mode_driver **)res;
+
+	device_unregister(reboot->reboot_dev);
 }
 
 /**
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index cfe18cdc2559be249969bba6c022940a508dd188..3aab8700a5961b90b07ed4d722c77484213ac6c4 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -4,6 +4,7 @@
 
 struct reboot_mode_driver {
 	struct device *dev;
+	struct device *reboot_dev;
 	struct list_head head;
 	int (*write)(struct reboot_mode_driver *reboot, unsigned int magic);
 	int (*write_with_cookie)(struct reboot_mode_driver *reboot,

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
