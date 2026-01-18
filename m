Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB361CA5FE5
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jan 2026 18:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqZzeQH32FjwnhpNfYNV+7qskLNeOP0ZL1viMfGXmko=; b=AOVzHBx1wv3Ad1
	2dT9VDLca1DfCw3cAG/wpcovPMI/pL8MoJogHs0qCNxkbE+mgseOZD8G6kb4NszNSqrZ9Qs25VmLC
	UAWBoDo5P0DXPHsSJKHOdIHpenVZSE50AXYYIIymTolYLDyYIA6+3tTG1uru/iYjOyDobKtVyZHJD
	Xy8xU+XJefJwgHF9W01SsdXZE4Iv/l3o4QsV/HR39pBlIC/6+NFEnRChLj8EW2tZKivtyqMmiDXau
	3DubzZSDzMpC+EZuAH5GwojzaYvamRL4NK8hzTlpU6p6b7xHS43KW2DodzWzJiWfeyehkJYnNm+xc
	NIdcQGvZlIvoJW0gvYgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXE9-00000000fbt-2daO;
	Sun, 18 Jan 2026 18:10:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXE2-00000000fVq-3ZJU
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Jan 2026 18:10:14 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60IAPKZK2161829
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Nw/X4tXH2dJCM6CqOW5hG9dFyviCyY63+ly6mDS998w=; b=XM0kU0IOuobH+dzF
	6qVL0KuB91DXq8pk+r1qmhwUkydjBo9HyCAY1LKdpuGih0pp9iKU6HVfW9HWLFxz
	R3IvKRlSB4lkLTBq6Pbr+wtIL33Q2GypI40wf1+SQn+5VlMc+q/3g2J/WUeCGB97
	1dnPHYWjD5O3T1uXciWGtbVV3Wo7snw+1aYn8bU56XpkaX0IxdQtyK/Gfzq2EqHd
	49dgs7MxLA2i7SGKCaYTRZEYUpviIKBf427BxsincA+Rj5kL4djRYs1NICEOqLuo
	Xf2CJ7rrUcH9mKV8D8qc8HG7eIjsQBCiUZGE8GGMvx+q81KgwIcWKIef2/ofx/2C
	kdePBw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br2t72r3n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:09 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52bb3ac7bso614364585a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 10:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768759809; x=1769364609; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nw/X4tXH2dJCM6CqOW5hG9dFyviCyY63+ly6mDS998w=;
        b=XBRyraXpKAocUT/DpCKTGF7Ulr2pQ4ZRZiAqcnPp730Dh7QvUqz8hDHBXWyPAbFu2b
         Bjkg1XRB6t1tgrRuPvLSwcwocaVwjcCQQLFKyai7n+vnuZSS8SH6nlk39go5H1ilKe5t
         qkFrLZ/XdnYloltmqTXnCvV/ZGmvExm3NVw68O2BZY+rgZnQJzSk3nKSC0wIZTsu18fC
         2mtQWBNiCttKKk8LGgDcDsPbSjnmLPK/F6xfcCqQyvrieV6ZHrUlI3+XLINCGKP/RwQk
         pkYNzDrRQ81OQ+WNJ0lQray88EBH8kmIQG9HRmNeTPa96/CH31hxIH6AZrUR/SmrQOXO
         nIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768759809; x=1769364609;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Nw/X4tXH2dJCM6CqOW5hG9dFyviCyY63+ly6mDS998w=;
        b=UsSFsMz0AEwMOuchGUVvR1QiFAjNtlZ2G+MaLJpxzpMnDlXXIKxck2GjQZ6hTtoXHN
         wzBYNK1CsBHypl8+TBtJ967kf6C8B1XBEd66dMP4gKZL4Oa68yre7qodFa+BCs9nv/UY
         ytJstOJBiSqayVHabSLv98Yr2PWubRP1HOMbkgsxUPvBIhksaRvdCc2oS6xD6P/L6uUy
         +LykEpSW8IS/fjLYTT7TUAvRQAexlRU3rKzAUmAPaVMs/UKuV6xRgBC6qGA3eqHOFxXD
         hWH7uIWFCZLbWHCqkeRn9dTzSIOpLj23KFL+XFvYMskKdvm2y5S8WljSPjrObA9yYJW8
         AfIg==
X-Forwarded-Encrypted: i=1; AJvYcCXb6Ucsp/Br0ZkoCOuUAMGBAApTMRApK/SdCRTKjiuVTv/BFL2Gr9HiuXP/nrB1R/DR73ZYuB6KbpaEMEx4IA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVWLSbNt1xjRaIlurS9/0rCO6/b/IUIiQmYEcLogyxEoX5GgGc
	KLcs0x2aZnbBQYQG2eBMvqwzupW64hXQuECIfdDsMSj3MwJeRrJPfZ9gdNyk5oLrfM/qKjrwCPH
	/lcmC02Ec3iJnM9p2TGwIcWs1TaVF0HMDUElfBXZQtctpvy+0eUlj6a/pQgK/yxiBEYLkAbjYG/
	c=
X-Gm-Gg: AY/fxX5rAH6f8lsl8NyLvFgLVbOHnklYR07iL8wANo0XW2nRB3IV5kAIkrfi/eDxyyC
	TMrpPg+fUbgrmWiAPDaaom0YoOuUzhU5Ep4JfcJ+fJqnyxDJu6I+AH/bwjQLPKHGxY2DRgC7xI3
	WBb1xgZbDhrGiH2FkDDGNKfUcHPd/XOrpHXMVhAflOK6UecPiu08hk5E7H0ufEgBbFKAz6kZMnf
	L2V47MoTLoOrL2FT6Gle99z6Ab/FD7+ovjUE/V8UVO2oAIkYw79puxKLhy9nA6lq9lX+/lnlPuy
	U6U/hmuWYMGlqURdB07s2kMjOw3zuPbOxtE5PhCgMQa01+zfr/oV+lEqAiXxZ1Epyyci5W7Cl7a
	z+3quB1hHN8Stm7gkLL2eGsIZmh4CUwk3hg==
X-Received: by 2002:a05:620a:2550:b0:8b2:f1cc:a14b with SMTP id af79cd13be357-8c6a67cc5c8mr1321766285a.87.1768759809381;
        Sun, 18 Jan 2026 10:10:09 -0800 (PST)
X-Received: by 2002:a05:620a:2550:b0:8b2:f1cc:a14b with SMTP id af79cd13be357-8c6a67cc5c8mr1321761985a.87.1768759808928;
        Sun, 18 Jan 2026 10:10:08 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe44b37sm62162085e9.12.2026.01.18.10.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 10:10:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Sun, 18 Jan 2026 19:09:26 +0100
Subject: [PATCH v2 03/11] pinctrl: sophgo: Cleanup header includes
MIME-Version: 1.0
Message-Id: <20260118-pinctrl-cleanup-guard-v2-3-bd36f681bdc0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1647;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=K3uQDGZFV9ixSLMAp+XTCn6w6PMJReQbBttCFQN0F/U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpbSHwFh1ny8ZUBi7E3yd3ZVK3fp/JTPumZY3DF
 DMrk8Bsjp+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaW0h8AAKCRDBN2bmhouD
 1xP9D/wKpjBpf0B5lT15hZHuDhBlqt/XMr+dL2IoW+gDe82hyBNbi9Mssn20GVc1WxaEnqmnq4V
 p4+swUeTdryZjhbgxuKOPrnBZ5Vk+8vlzjCsvDVQ2ReBaqMpORafXuxkCKFgclmPhchYQRR6b/9
 /6l9s0yU2jXLJ/19u2o6w1PYH9z2E0bXHvYkcbKNeJFQHEKOlKZO49UNYTddgFA6Glzh2kmdWa4
 iVPwqzZEAbi33uzkLpefoBgD2iQyRwmyLJSxN0ZlVWdPPd6cxYvfPMWlr/a4ZUDTTfEYRZzlkEz
 nxG+54c1yU+jxM5okvGMdms9h6U5n3xWwKQoHYLNd8q0xZXrjBesvQB1Z49IkKfDBFLbkNGgWTN
 tlOUZlfxVOe5kEK6DwJlPpG7xVCf1ey6yUYxBCnqM+1HYMFULN3Q1/C+0jxj9XJZ4mKG4AC63n9
 dYUqyGyPrLP8dKvvV619YhkgqwYnCKINxgT5jTECPev4nLqZjQxG2jWTZtVcGitKwo6aaZAPm4N
 nxmYst0BFODDdlwnUAIbEeTzcSbEfm1xCuURbI7/ir0a83enDBdVx7FY/SLEB55rhRpN63dJLgx
 Vciq6wWoExc3WoBaH3dwBm0ST1MNbLbF6lHxQqvEKQELGhE9JzTjOytPYUjW7UbvNKOMmRQ5Grw
 4tuQ43AnItwMaTA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=Fdc6BZ+6 c=1 sm=1 tr=0 ts=696d2201 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=XMepgddcWT0EFqeyVMQA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: AFBETnmRBH-LOTpEA2jW3B4pZyaq-psq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE4MDE1OSBTYWx0ZWRfX4wcCFL+7+ZlD
 0B1Ly6R8CtVquZEXRZ2bYnfJrIt+vlWhh2NNztmFBxsVF1GYmW9FijN2wLUWqk/1qrPnmPC7xK5
 fRPdthPC5w+AGZGeFP3fMEXfnjE47f5Ol8xwkoCeW+rGQCnacr0HN1aVCHKbsnb9ZtImfW22fGO
 E9/vl7mIRd5mwGaBly6kTEGTd2PBssziYRjdZjm9lzF+mA9QshVCjvKDCM7isv6bM476551bz3S
 mTxBaWNn5B+u7Dcybyh4DSCdbY6NhxHqm3QE7vE40L4HSFK+A7fVNdXU7LcOMYSnuUBeYGEKf3u
 qwiB14Q+zHCbtgJ7YQYCcd3JDOVl2nAkwvGrWOqySZG/rsU3w4rXISQTrTNjRv8TlHny/Zxrpxp
 J3DZBxPz9g8avrlaMSB55/Uiw/We+/sLpBE9qNsOFFVPgfOYK3FAgxm3fbwytAf1lLFYonQK+4k
 FJlwfSrQdRwaoaD+W4w==
X-Proofpoint-GUID: AFBETnmRBH-LOTpEA2jW3B4pZyaq-psq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601180159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_101011_038319_C9732CA5 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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

Remove unused includes from internal headers, because they do not have
following: bit manipulations, mutexes, spinlocks and struct devices.
These headers are included by actual C files, which seem to have all
necessary includes.

Reviewed-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/sophgo/pinctrl-cv18xx.h | 4 ----
 drivers/pinctrl/sophgo/pinctrl-sg2042.h | 6 ------
 2 files changed, 10 deletions(-)

diff --git a/drivers/pinctrl/sophgo/pinctrl-cv18xx.h b/drivers/pinctrl/sophgo/pinctrl-cv18xx.h
index 759c0e604acf..973ab9a38fcf 100644
--- a/drivers/pinctrl/sophgo/pinctrl-cv18xx.h
+++ b/drivers/pinctrl/sophgo/pinctrl-cv18xx.h
@@ -6,11 +6,7 @@
 #ifndef _PINCTRL_SOPHGO_CV18XX_H
 #define _PINCTRL_SOPHGO_CV18XX_H
 
-#include <linux/bits.h>
 #include <linux/bitfield.h>
-#include <linux/mutex.h>
-#include <linux/spinlock.h>
-#include <linux/platform_device.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/pinctrl/pinconf.h>
 
diff --git a/drivers/pinctrl/sophgo/pinctrl-sg2042.h b/drivers/pinctrl/sophgo/pinctrl-sg2042.h
index d481973fcf97..1a2b00dde1fa 100644
--- a/drivers/pinctrl/sophgo/pinctrl-sg2042.h
+++ b/drivers/pinctrl/sophgo/pinctrl-sg2042.h
@@ -6,12 +6,6 @@
 #ifndef _PINCTRL_SOPHGO_SG2042_H
 #define _PINCTRL_SOPHGO_SG2042_H
 
-#include <linux/bits.h>
-#include <linux/bitfield.h>
-#include <linux/device.h>
-#include <linux/mutex.h>
-#include <linux/spinlock.h>
-#include <linux/platform_device.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/pinctrl/pinconf.h>
 

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
