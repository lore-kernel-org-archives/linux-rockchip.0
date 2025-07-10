Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42AD8C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 10:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1ga9kflHeXe6vhgvDPUM1oKbJ1pdMObjiaa1EE0FW4=; b=Xr7NIxLqwGnkk+
	xgWjXoj3L6JxU/RDztpEnPxvf+8Eiek82aHcSSN8FrPYW4YHbOejFKz7N5/g8Tvx0KT4fQdQKS4hU
	c16pBY/u3djwsLNOdGxHLDSnuwmsKHWB3eCFfO0TTrDZi33bXHpH95Q06/6cnILlrVPSvGSisQeNW
	F0jGmyBMBj4Yx2ow+5+zzbm/nt+kbdWnhB57qe8q4SnF8iHnRRjO7j4Or8ClsPvrq4ARBwu3l1JgU
	Ee2tbUKhQs/y06GdmuFkt1+UTGSUzlRnqmerS75prpRJ4Ph96c59BS0vnxitL4JSQ8pcnXdSMVtkX
	juSkmOuPSata7G2FxDUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoT9-0000000BTXL-2LDD;
	Thu, 10 Jul 2025 10:25:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnP3-0000000BJca-0ydS
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 09:17:18 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A1HKcq011316
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:17:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bm688pDoN1t58GLFHGhBI++/OTcmZdbP8x57uiG6loQ=; b=ni2uPbDRJeSqMnI1
	f5s4NXc92iTmeb4IiqlqTefRpdkV3ssbPXnkVqXkAAld3lrVzQD1hX4klx2Ooj8f
	89z5aHK6uVOdc3rE0936FhwbP75pr+yoDnkQdLYtqtjf4Sar4xpk3loikBcq+FMK
	Cjch2UovUfMG/CMATQlqe6GOo0ToMf/kqj++zc3uQ9+bzXtydsNwW5n4FVoD+5Bq
	fMfP7H12VkLkSD+aKEin91RVxLZIxvtZJiQJhrbRpFyboJbPSLnEmtbxNQRf+A5C
	+IESMd4WSO4/mANV5+oUz50rfb1+fMNHA+wdy+B2XuxNBwCqx4L1RpgEaUTPS/Q8
	vnPlQQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smafmapv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:17:16 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2356ce66d7cso13834465ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 02:17:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752139035; x=1752743835;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bm688pDoN1t58GLFHGhBI++/OTcmZdbP8x57uiG6loQ=;
        b=cf2ld+qBR9tee0kOUM50n7ghYayfwHpYLiaSMnyXWMsjWw1zmly6acL90wubzpeVgA
         3wwrnWvEb++wpLdUi7GtVHDv6hCfJr/1RA0zvcUlqtcv6TAPAzFjZqXzSZIpbX3EYWUB
         PqjaluL2RhUjFxkf+DqpArk6Ld28fozq8TpfpbfyZfgEIy84i9LHpCKvLEOlgnA9meOo
         EcP43btZHVBDYGqyr/9fRvRgdVl4x1vclCNl8hSbGzRDDkTBpmegdFTHxYb4kFpdk0/K
         g7rbOum/0v9GYSJlJAqcwYWUirG9+HfiIOeL0rywQsq5utcMjL9Pz6OGd3V0n/y7Kp5L
         HVuQ==
X-Forwarded-Encrypted: i=1; AJvYcCU91t5E0yMQJ/Zpy86RY+7TI/YuykWAsFfKhyWhnvc/lp2Z740E1Fd74ZjW+nbbZjHwoiUt9H3uOQawTklzrQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7CwottlyL6dWXWJ5qFLniVxCYDs/EpZ2h0sspVy4V4e87VDN5
	vu4MkMH+danIYUlL+F1H/B+0pimbUQ/Wv90eCTYz4T0fWyd6iZwi7KXIJohp1aivGoXJEfh8ank
	asc6ZFVgtRGFujPtL1lztQK5Dqu6Vk3d/cXkAni0gpaVfxIzA9fdaEH0SFQlEgyH7DRTyYK41KY
	E=
X-Gm-Gg: ASbGncsGRhKOf4T/mHtYTk+CNuvyKqtXwzntKgHakPgbLeK7bmj2C6pV0hpG6bNi3RS
	GfI8ZAmAkQIu+r7abmTm1FgXL6TxtUBNky3e4iUc7WYMoUPmPqLJaZdPGjsS8ditlrNWVxWmctG
	YtssMBi/b60He0EZxixOez1GB/csAsEUwashq1t28LN4auROCYHQUSKF0fz2yspoXuWdRyLmJU0
	uP8KTGYHI/DSzbmt+iysUP7swmMPZz0sylimx+ub3QfeosEjxBkaE+JZDH6/XKyoETAnKCXewnx
	TYizc53ErQiMFtt8OTJuvwQ9F6sxdoiO4i6MWJEytHRs9Z9eq+gq0uiXeXE=
X-Received: by 2002:a17:902:cec2:b0:235:1706:1ff6 with SMTP id d9443c01a7336-23de46edf4bmr28705355ad.0.1752139034624;
        Thu, 10 Jul 2025 02:17:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwquEcV/DEQgNHo5i5rKIMG5wYJOS8HD0ETiQ+J8XjUT4+2RRoWOqCstZDWnrO0s1dBiyXug==
X-Received: by 2002:a17:902:cec2:b0:235:1706:1ff6 with SMTP id d9443c01a7336-23de46edf4bmr28704665ad.0.1752139034147;
        Thu, 10 Jul 2025 02:17:14 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:17:13 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:45:46 +0530
Subject: [PATCH v10 04/10] dt-bindings: arm: Document reboot mode magic
MIME-Version: 1.0
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-4-b2d3b882be85@oss.qualcomm.com>
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
        Elliot Berman <elliot.berman@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=2500;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=LJQmaaDtgt8TROVTUTsTmEnpeK2uj+7rigIrzNpy/l4=;
 b=iy9PU4ZJOiTEn2epqZUOkW8+Xr7tjFQnf02iWN5UFpijHHJzDb+DQE9zwiCZcqY66/IiKYTBH
 Qa8lCfgZ15ZBxIImBn1nkijQHRDyoW0jh2GQrhRaXOvI4e1VEJRpOEa
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=ZJ/XmW7b c=1 sm=1 tr=0 ts=686f851c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=UInjrUrXc7y1C1sAkbYA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: qdE1ARFC1xkN0J7dV6jWnf2CPkP-mMxS
X-Proofpoint-GUID: qdE1ARFC1xkN0J7dV6jWnf2CPkP-mMxS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OSBTYWx0ZWRfXwkeFFHF+ljuv
 Md6hkkNrRSyUNnOn3A9+tqHnTcPMjlX0UDcdOMqKb7KPvtG3zeiMRaLGjWLT0QlMS08igPRWEKG
 yaM90OIjpWkm6og12dKzyH5eYAGN7vXWSApY7pkUTqK+7zJP0Y9iP0YCaxxeEF6y/pZ15aHVSLc
 fy7CTyvvnnOD1TCCOYazPg/4PpiNGAzGZ4DKSMP/c4PiGRzSQ+uFvI4RsA1gB+OCqzX9GhgUpwF
 HUANT2iWjqBT4YMGy4tzqSwqaySXGftnT4gcHGbaQCC225k/0WW2kaAhy1J1fMACkKO5LItOkXU
 WSlLoauWcYOWw2yFFdFbv2eLBbQAzDfHPoX9I9+slY/6jp6Yvsm3dUKtVA0bcAmJCsmuC71W4xn
 reJi0y5wCZoLfBE5CYZWM3/qaxDXk67AD+ZLjkj0RuAQk2JXezZqIlx0IhcRAmHqN5ppYnpz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 impostorscore=0 spamscore=0 adultscore=0 clxscore=1015
 bulkscore=0 phishscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507100079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_021717_390555_7966D01C 
X-CRM114-Status: GOOD (  14.54  )
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

Add bindings to describe vendor-specific reboot modes. Values here
correspond to valid parameters to vendor-specific reset types in PSCI
SYSTEM_RESET2 call.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 41 +++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 7360a2849b5bd1e4cbadac533c1a7228573288d4..672fc28f69ed7cfed4baf8c2185e0cd7b2024376 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -98,6 +98,25 @@ properties:
       [1] Kernel documentation - ARM idle states bindings
         Documentation/devicetree/bindings/cpu/idle-states.yaml
 
+  reset-types:
+    type: object
+    $ref: /schemas/power/reset/reboot-mode.yaml#
+    unevaluatedProperties: false
+    properties:
+      # "mode-normal" is just SYSTEM_RESET
+      mode-normal: false
+    patternProperties:
+      "^mode-.*$":
+        minItems: 2
+        description: |
+          Describes a vendor-specific reset type. The string after "mode-"
+          maps a reboot mode to the parameters in the PSCI SYSTEM_RESET2 call.
+
+          Parameters are named mode-xxx = <type[, cookie]>, where xxx
+          is the name of the magic reboot mode, type is the lower 31 bits
+          of the reset_type. Both reset_type and cookie must be specified.
+          The 31st bit (vendor-resets) will be implicitly set by the driver.
+
 patternProperties:
   "^power-domain-":
     $ref: /schemas/power/power-domain.yaml#
@@ -137,6 +156,15 @@ allOf:
       required:
         - cpu_off
         - cpu_on
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: arm,psci-1.0
+    then:
+      properties:
+        reset-types: false
 
 additionalProperties: false
 
@@ -261,4 +289,17 @@ examples:
         domain-idle-states = <&cluster_ret>, <&cluster_pwrdn>;
       };
     };
+
+  - |+
+
+    // Case 5: SYSTEM_RESET2 vendor resets
+    psci {
+      compatible = "arm,psci-1.0";
+      method = "smc";
+
+      reset-types {
+        mode-edl = <0 0>;
+        mode-bootloader = <1 2>;
+      };
+    };
 ...

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
