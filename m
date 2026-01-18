Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB7B1CA5FED
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jan 2026 18:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkEPxHKERd/xmnQDFwtnepz6n32nfHU9LBXjYtxjBS8=; b=aCxCOs/CVgX3LP
	xxzKdrqbsVmSDOg6gVsj9IcY1m5V7lZLQguQ97XFAKvyRd6ps8hQ7Te/FyuMTsnRsigDJh01hys5l
	jRS6WqKa0rMCEjb+wYHijUkT502CkAPkOX4WGaUpy8x5GmDi0kSjMapN29tqng0NTabUXW/PAKoBc
	6DMStC4wgmm6LHMgXqtYKmFyStDCxUj2T3eZIslzoBVAfHzZWnvadxjbw+eOfoSTLdMs+JPfvVuat
	Go1Azsf8sEvz8ZotX8UDDlOncwjfusAVe0nT/oKXIQE33nNFDs0ew0FCYvdO5xN+ugB40uD9KsC9B
	WC/zOZn6v/EpNi9n6qqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXE8-00000000fZs-0jOB;
	Sun, 18 Jan 2026 18:10:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXDy-00000000fSo-3wn7
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Jan 2026 18:10:09 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60I9ClxT2020529
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cvBXEQRwk0vB9MxtistlWfSV6Vaus6aoeJvtQZzjTG8=; b=K4oQQsBNqYVZw4QH
	PjC93dzL+Hz3LWNfTQn9Viz2RAWjfWaMdQn+XQT1jUJQ1eVTll4XbPiZYIT+fVmi
	x3jDEAb3C1dOVGQjURrLEAeFU8nBZnO9SpeOqanXZAbvzSZge+gZufuN9ZeyAeUt
	VTjwhd8Lcu6dok0QAc6B8iEhMhncREgFSCjkTR1s5IkSFJpOF19qirc4gu2x20/U
	O2ZBSKiSBzFkmb0qaoaO299bc02LShw2HQovLbVbnGpCKtuxd2fbUYTRAF2El+rS
	Ox8De3k7GnXYCb/Sv2uTpimVD4QuaJ32BAyW4oXQvIexvZJU1c/dARph3HFIPOb0
	risUjA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br2t72r3e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c5311864d9so795876185a.2
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 10:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768759805; x=1769364605; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cvBXEQRwk0vB9MxtistlWfSV6Vaus6aoeJvtQZzjTG8=;
        b=kNTZWHDXoSr5QxmqN29eUdJaXofKX/xZyxE+w2KpGIvd5wcoL79W+BzOb7wwwyxnrE
         DVddOvj1scFjY2B7qeKlscN0hPs2R/h6QK8Ol9YV3a627PzzDd/nVMwrVADzo0X/gu+8
         Tzx7FamzGFn68k+H7epUsklsij8FO3y6aViijyTAcszB91DFDCibKVrdZOybOevbx7m9
         AB4NJhn1GHZ49btsvXGmupH4TA9Y9s3MjYtJb9fvv2f/xP7tmTgwG61fKT7Rwv0gxWOa
         kGrHO83vax71eQ9wdRN0HXx3oWG0snYFfsd1WYa/gQJA8SYF5As4lfCRIvrFx41QdKsa
         M/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768759805; x=1769364605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cvBXEQRwk0vB9MxtistlWfSV6Vaus6aoeJvtQZzjTG8=;
        b=cZoaDyCoG2t2CgmomRHPXx32MJuegMSkUkUFI1cmVwvvbPiSNvRwt5vpHuDu4hYzNV
         sk3jM/9F5ugWMp4dFkE+ON9pFv5z7DqTZ8xu283J4NbF74+NpkscxKbQTOSPNv5EpvhS
         Kd7lHUJfKgIwGZSQt+DNuVHzWBF+uEm3zD5dIiHaBoo3LflkapxMFeNvH19zJFaRhvK0
         ntFbEUEgtAvzf7Dwk6LhqhqNXkufNxw7Ejgck8/QAtrr7tsg4EXnELw0ghxmrMcO1E0Q
         70dnrdHLoXkcry3AWpw7EWmqUdnzZK7g83GY68Wny9nKc9TpQIdZUpWi4DeGDNTiYqGc
         F1ig==
X-Forwarded-Encrypted: i=1; AJvYcCVwT0DBw+iw/ygZzexUgKTN1imwsYNElpARIheW0xZ/jmSr871bfl3LKZrr1wYjdt7HJrjoo0HGxguWMgjopA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxdw4oudAa4ZbhDKqC/BDFqk9m4/n1WLhP8Vb1uXq00DN+1JNdH
	NG9rIjbUH4Hlhr2y3XRjJmiDtWVwxXj8Q9rxIQzpj7khOvPUOZPbUhuTosTSH0PLMiADuABjnlz
	g3yUP/SHUyEUCDW31XouD31s9r14I/kfAeZ1BGZ5us/4WGcS0NcrsS2XRLsFB3HnamhmauV4a21
	M=
X-Gm-Gg: AY/fxX7S5EY1sGVvMkXhtc8YcC4/ue+i099aeT2ZEersyMjJT0neLknCKfe6Pmj+AhF
	eAGReWuk9o5gRX329HbMEybmx4IylfeZL/5/ZjhaRbfveK0eV+KTVWRvzIY1hhj/KhCSY/18jVX
	jCq2L/1eGt+UrdW01ewC3x6teuMyYlnfuGdBshoEREP2l6YTimfdqe08VrNC78OaRF9TZE3hcys
	4IeNQHw7vdhf2RgPNqEvtaDwi9DLxEqnHN5hdy1/jdGDctoGy9QKEzEtFBvVduRo+s5adu3Kwsj
	OfjDOK4pQCNfUTPOaHs0lK+AuLGQQ2Wwke0fs+fZGCKU4xkY2q/T/HFRrzBnIpEH0u53PLlXnSF
	qq68Wu6L2Dl2gIfqYMlPnwZBBAonyOZcxng==
X-Received: by 2002:a05:620a:2592:b0:8c3:7016:1d8c with SMTP id af79cd13be357-8c6a67bf39bmr1240338385a.88.1768759805359;
        Sun, 18 Jan 2026 10:10:05 -0800 (PST)
X-Received: by 2002:a05:620a:2592:b0:8c3:7016:1d8c with SMTP id af79cd13be357-8c6a67bf39bmr1240334885a.88.1768759804930;
        Sun, 18 Jan 2026 10:10:04 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe44b37sm62162085e9.12.2026.01.18.10.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 10:10:04 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Sun, 18 Jan 2026 19:09:24 +0100
Subject: [PATCH v2 01/11] pinctrl: aspeed: Cleanup header includes
MIME-Version: 1.0
Message-Id: <20260118-pinctrl-cleanup-guard-v2-1-bd36f681bdc0@oss.qualcomm.com>
References: <20260118-pinctrl-cleanup-guard-v2-0-bd36f681bdc0@oss.qualcomm.com>
In-Reply-To: <20260118-pinctrl-cleanup-guard-v2-0-bd36f681bdc0@oss.qualcomm.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>,
        Linus Walleij <linusw@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Hal Feng <hal.feng@starfivetech.com>,
        Chen Wang <unicorn_wang@outlook.com>,
        Inochi Amaoto <inochiama@gmail.com>,
        Basavaraj Natikar <Basavaraj.Natikar@amd.com>,
        Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, sophgo@lists.linux.dev,
        linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2575;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=baKkcqSJ65hc0ts9jVcHMZU7FH4i9Uox6/iD2KuATX8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpbSHuEhmtjxve35yyh5CVKYE/OjzBr9jYAtTm2
 cuacE/vqP6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaW0h7gAKCRDBN2bmhouD
 1+Z+D/9vnrXlH3u/GiXeOxQWIyZXbZQDkyEdActKpj2rvX7bL507HlztUm4KVnLg35wNcK5pjlI
 AB27rCgLeJSaUUY/Z1tYqFhPj5AMpwXMcHuMxxSsOZw4TZaGs8C74Tux+ZKoLxIjPHKBuGxhVTG
 xRvrIRns0lwCv3l1Vt61RY2eQWZ3cRzuTG70D1VNUCafSZyqBMfrseeOIJTQUka5DMx6p0OSCNh
 Pbide0KGADmwPF108KMVzyfXXSC7q3IhmoeLbX7y7tiru/iIGv623GQl0c3JCGE7E8wjQ+M8lDB
 CvSyDGn7tL9cDEbOm+G0FPZ9RXouXBE6EckA0eRvoQJGjFjdDAIc1Qai40rB+bydAmeDpHes8FD
 b9gsxIQnnhRFlHMwVSUB4QQ6Ue+xko4RD9aEy62jqjnnGbobSLUbADUwz+9ljllkjUsJo3MAwG6
 fwyIWtfhX9Hm0aMzMd3+d52ZQvzknxii2yMiTgrMsN/mDi0PAy647DljHlE2xCa85qCqU47Tff4
 V7uA0WcXPa4O0fVCDzDd4Eq5NRHKTtMDSMyx95WwGIp3uxnub4mphQkFe+0KnI/aXUX4PRJXLz3
 RiAGGtePI2G/UzMvmMhFoRFIFDBUBZVOoiZB1ZQ+re/oz01WEe6LXPUmCBORP+EAN2EtF3Ah6kL
 TBkAdeCK1+yugAg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=Fdc6BZ+6 c=1 sm=1 tr=0 ts=696d21fe cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7KBfExy5AAAA:8 a=EUspDBNiAAAA:8
 a=GlqkQvVaQCEososwM9MA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=eL7OMsOqQ-6kYQPn45L1:22
X-Proofpoint-ORIG-GUID: aas4XBfS8wzFL7oQezp0k0Z72L6H9vIy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE4MDE1OSBTYWx0ZWRfXzSRACh0StT0U
 G9MkYm+48Bou0yXLU8WskvRDT8X/vF8+ZGeycY418JWX8nCwzZ0f+3kCOE+w7wQymWZFeKmyWq9
 Gwzilntdxukq6ZzgiejpgWAS8eQ1Dxp6yYfw9+fjOMY4duHsDP8ShgfV7JglIdi2Qv+l2KJvxUQ
 BXHs50tpMsBTDLjoOJOLsUtWYwdApmYMN7VKsi5rCA8SwX5ZqELWyzhZt2l2WFH/Pwql02FFJEf
 pjmYKPKpbf6mH2u7TLaUZk9hHRXVTRH5HcWbqHb+atrKcBn932CzyDEMPZH8AyA/B0lmEWaZ0Bi
 h6TPC8dSb7sxaGUF00j+iCglwvj41e/4wINSQyi3m6QmHcDq+H4ITxU5mV1RQJrFGsm9Q+vuGk9
 JAafOnP8KdpbvgrYE+Qc5DWlo+yER55xN1i+UH5bDxJcttC9aESAre2Ik4F5lYnllewQqdTweMJ
 FpMVT462rfla94UNabw==
X-Proofpoint-GUID: aas4XBfS8wzFL7oQezp0k0Z72L6H9vIy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601180159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_101007_934862_3E391CC4 
X-CRM114-Status: GOOD (  10.71  )
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

Remove unused includes (no mutexes, string functions, no OF functions)
and bring directly used mod_devicetable.h (previously pulled via of.h).

Reviewed-by: Andrew Jeffery <andrew@codeconstruct.com.au>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c | 4 +---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c | 3 +--
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 5 +----
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
index cb295856dda1..f9d8fb1ab1ec 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
@@ -6,14 +6,12 @@
 #include <linux/init.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
-#include <linux/mutex.h>
-#include <linux/of.h>
+#include <linux/mod_devicetable.h>
 #include <linux/platform_device.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/pinctrl/pinmux.h>
 #include <linux/pinctrl/pinconf.h>
 #include <linux/pinctrl/pinconf-generic.h>
-#include <linux/string.h>
 #include <linux/types.h>
 
 #include "../core.h"
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
index 792089628362..9934ef6205d6 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
@@ -7,14 +7,13 @@
 #include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
-#include <linux/mutex.h>
+#include <linux/mod_devicetable.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/pinctrl/pinmux.h>
 #include <linux/pinctrl/pinconf.h>
 #include <linux/pinctrl/pinconf-generic.h>
-#include <linux/string.h>
 #include <linux/types.h>
 
 #include "../core.h"
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index b0c7e4f6df9c..8cf61aab81b1 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -4,13 +4,10 @@
 #include <linux/init.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
-#include <linux/mfd/syscon.h>
-#include <linux/mutex.h>
-#include <linux/of.h>
+#include <linux/mod_devicetable.h>
 #include <linux/platform_device.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/pinctrl/pinmux.h>
-#include <linux/string.h>
 #include <linux/types.h>
 
 #include "../core.h"

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
