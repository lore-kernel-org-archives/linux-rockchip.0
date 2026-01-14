Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 445EFD37E4D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0ugIJ1zC9TjUH/cTJvsQaaBp74QUo0zxyCQLPBrPuc=; b=h1Ve6YIP3eZ3fG
	9aJm5YbRU3vg14fp6wj9BKL5PfDAKmPew6dTStTj8nk639dopCS1BEDuUbl8JWy4iQGddVdz0E48/
	h0wJYhg5gjBpBYsZNjvLc3U+3sbN/7k3XYY2s3pJbYKakkJZ7prknawPMph+NAz5RHcntxogXxVD4
	EgF736LDArv3gy6hVbL0yAZ/R/sY2YmWLSEorahYNcoXbWzbgwTpfglYNgGnCZPax/cRozK9kRfr8
	lTOMoBE1VTxQ2YX/Xhj5GOVMfpuOsuPrk70mrJ2yRjYXqI/wNJ/gFcBtFr0QPDnTqcSeI/QGLcvcc
	kUnIzw1u17KA4j+ir8Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pP-00000009hMq-2KiK;
	Wed, 14 Jan 2026 15:30:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pI-00000009hFN-2pFo
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:30:30 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EDV5jA3551566
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TQOWmZ4i8qr9JpAuK61Y9RoWdOmJcEUPWfdU+wHADeY=; b=Nd+c0nG/FDs7XoIV
	szExDaUVSYkyrbiaHalQ7Ap9+Ae6UJ/LuHmENsYmw2Y917XAkpOSA5PDn/ucsIXw
	RLjTwBfwp+vw9JlBmnZtHYYPA+nuxAqdd1pB4mQdMxi8gLqJiqMqFue9dtxzWhhw
	z2Mh4kP3YONo/VwuqMbCWqIdg2ZulAZiBjr4/v+VsHOzRPeea0BMSLLBuepXEfaK
	4TcnFo8VnR36XVqUEY+VzZlVDB5GSRQreJSVMoii0SAdOXRljAxbNb1718WPAMnT
	H1EH+vCGRqzwWc6iLgCOM8ppr/Cv0FkS9cCCOv2YBPPewR6rimIDRchIvZsKHfwn
	UwREZQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpc3jrd3y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b9fa6f808cso2634156685a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768404627; x=1769009427; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TQOWmZ4i8qr9JpAuK61Y9RoWdOmJcEUPWfdU+wHADeY=;
        b=Mhe3RH2OgZl5LJYU7BnA2faKgkqMAOhRPiWgoQIGEodG2R7N+EuH2b9+/wC7FW3Kth
         X7o5OvS2CdeF5ycvJmXb2BGReK0rnx1sZqvinf6UWermErqbRNtP77JXiHQZ6P0VES+g
         RlR5twKo9Gf5eHshn0zlodthrDUzBA7edGIhHu6H8PtB9adZQpIBQDE29t7zTaOeKApK
         UQ2YpH70UQZsRAQKdISWrsoZcyaKz/ZI0DGAqqYsqMy2JBXHfevz8whVhB7I6+D4yIDl
         XEuC3LfsP2FmXJLz9VJHyK98TQNVjo4ryNL3GCwCugOf6phS1AboCxnVUOOM/9PtniHc
         N/pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404627; x=1769009427;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TQOWmZ4i8qr9JpAuK61Y9RoWdOmJcEUPWfdU+wHADeY=;
        b=RMoYiykKgNBk+FXFONzGDBobcTavZnMvOwwCTvsG4jeV3KrtOnt5helsmth1dotf75
         7yWCxPXl/wB/MJcTnBMdAp0TsXyoB20Lpy7vs5ZoArRCBRgad+rm43+iaPNtDkYbb4f/
         BUYv4KniEdK9FxTiT76xXyzMxYl7XJDAEB9YXRp7+9Uz4cAi0TDhAQERvLTW8v9NYx+0
         9WCPBzKhT/EBicLlfwMtW4fBIDDvQL+GuJcvR7sToSi4UIje3zN/hiJTiMiQhC86Ug2O
         K3r3likERwUlzt+sKzqawpR3UcUv0n29hFggbza7FdkAst6fOigMxcVm8O6smLx7+NWH
         aA2g==
X-Forwarded-Encrypted: i=1; AJvYcCWJrG7vGsxzElxgjA9skz/flBaLIli9Of+V7Cbr4g/Md157XJvSpwgGAT53h4bzomjbSxbLrE9MaObhwoyD1A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzY7kFyLX8z/xhtBWFZ+eXdQbEJqOOC3rHw5PtyrFT+/eMqfxMJ
	Zyt3HxrXiwW+pRAkqpd73E8Iro87z6nA81D6smRcBn/nYkadB8J02iWJQoIeSSKB2SEqEYh+UM7
	BG/eCRttCIPfosKgpDnHu52q1o83FZbv72oe2YVBrawvsLjAswIpqoVq5x5SP0nPy08sL8sr/5v
	I=
X-Gm-Gg: AY/fxX4WiIenzU+BKWooAFJNORaaoFyQRl80OANlBpNM04xFVmJvQdYDX6furb+UUwf
	TuycRnd8uu1VWZW9B0cXWmHRFL8YdynBEOhrhbHcrGrLbk/DM7hVJ1yftw/JDnmeNRhU0I3B66x
	gayrpOHDBtmZFpbq5hTpitE/iEAhpuBaIQd82JpgeObsxiX2Y4ACPd57EyP6J7wK9rwUzD7Z0iA
	ACoYF782uTQGsTXRNEV/FaEJiSsMUzZGXzp6znMK0gDtgz8KU3NwFS/HTEClvP4Lg4xCrXaiPQc
	ULkA7BG8lIhvyN26ZvNBTQpynmrcaODbMsP0js75/bHAzxqasRuSzAJDKMQdEiXkW2hPJRkIEpn
	hFuMorFbEqymuZ/idTTMfqxPIDLM8RszwsQ==
X-Received: by 2002:a05:620a:44c4:b0:8ba:5255:107 with SMTP id af79cd13be357-8c52fb2406emr386805285a.18.1768404625665;
        Wed, 14 Jan 2026 07:30:25 -0800 (PST)
X-Received: by 2002:a05:620a:44c4:b0:8ba:5255:107 with SMTP id af79cd13be357-8c52fb2406emr386788385a.18.1768404624120;
        Wed, 14 Jan 2026 07:30:24 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22812989a12.29.2026.01.14.07.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:30:23 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 16:30:03 +0100
Subject: [PATCH 02/11] pinctrl: starfive: jh7110-sys: Cleanup header
 includes
MIME-Version: 1.0
Message-Id: <20260114-pinctrl-cleanup-guard-v1-2-a14572685cd3@oss.qualcomm.com>
References: <20260114-pinctrl-cleanup-guard-v1-0-a14572685cd3@oss.qualcomm.com>
In-Reply-To: <20260114-pinctrl-cleanup-guard-v1-0-a14572685cd3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=906;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=vQTc4Cx1cuzPah8LLXL26kybe/0nRvPEYAbDNlVXaL0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpZ7aBbIM2DWPBQNuBnGlAmRqfublmk+ABnSOCP
 +eX7CJ/kqCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWe2gQAKCRDBN2bmhouD
 13B7D/9HNpUgwKflmRiVEQKiqAHJlihytGsm6xhqvuPk0OXM6g4wK8KWJ7AoXqklkhVGJfLYvjS
 EVoKICEkLULEFDlMFEFKdNqN/uGc1TUwNp5gMcRJRrlIE+ZYvRo4LIknCsvHV1jT9i+Y2L23c3p
 +uDVB8dH2uwJv3IuhJUnA1gGMQM4xpw4ac7NB+UCOk2LnfcACtKncHKQ7jr4vbc3O0f3pfTQpJp
 dZkWVtWxp4BQm+5d1XuZwVzvgj4b/xAJcvhU0BzFKw41RORAakfzsVxAkTHHtP62LHFxnKZSwKi
 E8XvqOwq5O+74OFdv+vHFLcG/6f+rPsNDMLHCxupzCLkx6Pwqg6qJp9qYbsQJCEuj1EJyrotryy
 ANOtROt7QabL1HCVBOeWE7/I1c/PzdUslygkZyhowuMmtTrgMAsawR3fzOXHuQOQhjeKsN9lt/M
 fx0zuszc+shjokj+huAOTlufmrLlWzFxqM4Hu67hEma3ScG2iv485ncOEg87MQQpuFfjrtb+vDK
 ICaUVJAoHNSRifaTDmw6lMDG1ZAAU7vvujZpio8eHVdgOh3jPCnAMmeTePFgqI8N3JIJ+bkQyuz
 2wHidhJCNQckjPlFZ10HKxqor1PXsDvliPHX6i68yW1W61YZ+wIbn5bOmZ0GIDO6/jOlooNoy63
 tkrtX+1GbUIJE4Q==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEzMCBTYWx0ZWRfX7CbBxQDJAyGT
 8mweDzDL7q/ZvJUxeJfYDz5R84yHUp24bv01PXB5bDODlmbxQlgJPUX8vrdnFpvutIh30gXHT3V
 hDnIHwTJT8yRzndizNhzjCcukdJTA/g3rnzJ4yHJL52MG60qadGJFJsB/fRxHv9gE01Lhj9DgE+
 VKXLFqPg0j+s72uv6ZBe7WhWduUDNyanVLyiuUJzcxLkFU7hCbC2MxVxB/N3m6l9+yWOInT9YVQ
 AYJ67d8VPdaP2XAOk/8NUa5WcANBnGm6sX8fjcuoS7bI6IUdA7azg8bBepDubK/pGef5q6WkWdm
 1fXYLkfEmsiSkmUIljbwvfmlrZKvjjENYCJ8r4T6+N//7Cse2IWaOZY9XlrYnJB5LXjraRT0YX8
 pzgt0gvAYxiyJWtfPTTsGdC0rL/HRq20BIOs3f68ZXYOxQlDqzWiNaS/Scey+o+C6jwMTEtqhkt
 CK5+IwHz6CgL552Fbiw==
X-Authority-Analysis: v=2.4 cv=RLO+3oi+ c=1 sm=1 tr=0 ts=6967b693 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=b-TtO4hhcUHcL_E8iecA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: YomZR5D2k1Su4Ae4kZ29igxUI4Er1Cbx
X-Proofpoint-ORIG-GUID: YomZR5D2k1Su4Ae4kZ29igxUI4Er1Cbx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 bulkscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_073028_732682_CE498DF3 
X-CRM114-Status: UNSURE (   9.86  )
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

Remove unused includes: no clocks, mutexes and resets.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/starfive/pinctrl-starfive-jh7110-sys.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/pinctrl/starfive/pinctrl-starfive-jh7110-sys.c b/drivers/pinctrl/starfive/pinctrl-starfive-jh7110-sys.c
index 9b67063a0b0b..44f84e4c29bf 100644
--- a/drivers/pinctrl/starfive/pinctrl-starfive-jh7110-sys.c
+++ b/drivers/pinctrl/starfive/pinctrl-starfive-jh7110-sys.c
@@ -7,14 +7,11 @@
  */
 
 #include <linux/bits.h>
-#include <linux/clk.h>
 #include <linux/gpio/driver.h>
 #include <linux/io.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/mutex.h>
 #include <linux/platform_device.h>
-#include <linux/reset.h>
 #include <linux/spinlock.h>
 
 #include <linux/pinctrl/pinctrl.h>

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
