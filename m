Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F010CA5FE4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jan 2026 18:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqGakhj4a02aW8OV/GBcIBkLI7U3geOG83KMEYsQvd4=; b=ZYXFlI4IzkRw3g
	kZK/dFfG79VeO9p6LEfwYpLb4pX8qWPdr28tdGwW+GwZLJyTX0ifNeAOGN2XpIZLMf0hHOkBgiZe1
	uAWZtya+HCgKLQC1C4ycDySSbglOgsnqXcgPVnPec5IYfl34UuSracc80nzNDTcZ+llOjdGjD0N25
	15KQFkYLpa0zWkr6DtgdaAYv/D1mKJ42rW1ZgsBRliQ7paYZbmCMbJD+UjJWCtSQLWBGW37I/oHMA
	OXsno1hN7G7wzfzBJ8AmOzoAmpSb4D5A3iwj4Sbn1ton56/Wc8+x7L8xRt1Ze8NyWcx9yjRxGQkvw
	iQLip0ON4xz1b0aIgAUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXE8-00000000fab-3hKf;
	Sun, 18 Jan 2026 18:10:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXE0-00000000fUK-2auG
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Jan 2026 18:10:09 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60I0DuJn1400670
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xF+EKsCw3DAcisLqyjUVzy9KuncQFl/L6/ZeXlOHhAo=; b=eL0a1Qb7gDs4Ddve
	0NXzoUo9WM/0fPiz+owufJ/TN7UB1YorGCL5iME/3xC20RYpToTyzU9rMAl69/cX
	p0se3f7oX63VGOYHAj579mzRleSJhJKqA1K2iejV6rNmmjQiZuwrXiluUYJeYd43
	p05ezSi73YZu3gmMpnkbK/NT/g02StJ2p+xr68eOs+RhPvxe+nqM/+kqh171eNhf
	e1I7pgMXFtt3HuLgyHGwJnoLoHWAQ8vKfYIWwT6yLRTTp7thQtJU6gCSi8EfTM55
	bOH6F+Br1a/t/yoE7EIMymmpb2Q/8yYy+chJp1osPlgMqMctqVegdOP9YCBrenu9
	NTwUXA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br04e34xn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a2ef071dso1092431285a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 10:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768759807; x=1769364607; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xF+EKsCw3DAcisLqyjUVzy9KuncQFl/L6/ZeXlOHhAo=;
        b=MmnZdci5BLHFDYRT4tf+iCsVZ2mjJobTSp6Z8DCcabJOApMG6zFF2oh68sHi0N+iuU
         /GXysh+V2YxmQPsPeZKzkvQF9tt+JpFygdde/rCC4V1hS8KID34Yn/+iVeuiClz4C0b4
         FsyfVqdiCL8nrPkUctFFk7Oy0EVy0gRhA7ap+H6Q/C7M4Ud7ntclv4/+9iLRsLPlU0hq
         IOw3Pj6NgzokoIk+u7PhvjURjjAZ6xNnRxmk7FSvdNta1nwp5fA03SHplzv/0Bn0JuFL
         uKT2fgFcNRK93PoLXfXMHJLKY6z/VtfppRDbos2/0HAJH0tP/t4PBENeEoLuc7GisoOI
         Yptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768759807; x=1769364607;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xF+EKsCw3DAcisLqyjUVzy9KuncQFl/L6/ZeXlOHhAo=;
        b=qhYgLxLjgrfkCs+5vlv9smROEkwF+fJ6OJwdxUkOGmWxQauDpJQ3M7+HPMVxEgL+Kv
         ljxf0va7AEuLlLsHqnn8iXNE74AhHkaYicyUo4Ugwz2JucKQ7E2Pi5IpfJjnMFQGOsEY
         sqbEELIs2k0Xr9x8y4OoeUEW/4iys2EscDegWWzHOhXPQwBfmn2Z7sutS+oLt/Q5sXaM
         uKLI+ulIng5kwmH+fhXm7hKuTcH9vHg3f49zDjviwbRKNQAl3iwpfTwzYyb1XvrJ+8Zt
         OkCdcefiRkzQnM2wrE4GkOBrBreIGLYzqj9zUK11q39tRoBzuiapGP7vjeO6wpX0dfGz
         tXxQ==
X-Forwarded-Encrypted: i=1; AJvYcCX81IJs9mJc84K6qXMM4tiqV0stqXlFQLhOL39t1MppIMD0VNDNRVQEhrpXkVm049qV0BWvtpHiSLDOYJlFcg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkPPWkMnCReN6aJM2xWAXGsGl63Cbi7PKrm/dXkP+hl8eo16df
	f5VczhpKDnmEKAH7Ziuevi2zJvB+OJAT8MdcJLdC7Vn5lSlKLGnwT4hIm0Ky8v0nFl4QWIsPPoU
	akBtCClCatujKHEqnqScgUJG0yGkep+JK+bAfLpzt6v1TOJC9HaThFLvXjnlsDRBqZclgME1hq7
	c=
X-Gm-Gg: AY/fxX4d2PFA8brAyFcmJhIGFs16Wsz/u3T2otPJhwA4X9Oq5he3NPqLQqlmEoruOZG
	5ECZJ/UFRe3TORPN+/0f82hHzrtqqaBTjaypGoB9KFHgWOXBlvDRt9xXvgyMIO1fpUZ8mkjIzNO
	Bxnuty4dperZY+FJAgUkKnY6+b5vMmIvz5uY5mbbHtI5lfMq+NgpDnBoP81dF/NrJeXQcmJbqRo
	3QZvxF62kK2bXPMx7hvyp/eTjk1MZQsUO9LkMfriulcUi07lbJbQwWr7acWOrj9/gIRZIpu9LY8
	ZrTSOJUCE/xmGZWTpnC8jdYflf/ab9Oqn32fRLDPgCcovmsiRX47OquhH0hAOzAWWoaib7a6PR4
	gFB/Zzaui9Qtmclhe87AyPJMk/VeVpPAD1w==
X-Received: by 2002:a05:620a:319d:b0:8a1:762a:ab13 with SMTP id af79cd13be357-8c6a68ed101mr1320493885a.10.1768759807228;
        Sun, 18 Jan 2026 10:10:07 -0800 (PST)
X-Received: by 2002:a05:620a:319d:b0:8a1:762a:ab13 with SMTP id af79cd13be357-8c6a68ed101mr1320490285a.10.1768759806815;
        Sun, 18 Jan 2026 10:10:06 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe44b37sm62162085e9.12.2026.01.18.10.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 10:10:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Sun, 18 Jan 2026 19:09:25 +0100
Subject: [PATCH v2 02/11] pinctrl: starfive: jh7110-sys: Cleanup header
 includes
MIME-Version: 1.0
Message-Id: <20260118-pinctrl-cleanup-guard-v2-2-bd36f681bdc0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=957;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=7QVsX3meH/ya2n+MBwkYR1pzRXVW1X0rbx6284HAjYo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpbSHvR6NL3AOW754D5v84SJb7LIyFBtY8KP66G
 rat0rpoDimJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaW0h7wAKCRDBN2bmhouD
 140hD/oDwb35yyHvtbjc/M0Lb0PMZ0C388lWdCmXu5PHWfBfqbi0pqIpiLHa/I8lydecaQng+2T
 6pXYaLCQXfyx6d6HjJ55DKT0y0CB6wGv6jNrkEel9RIEZtNF98EnmNQ16fH/1rSb9mkMC7i2p7p
 uDQZ4QUXT4LLz83NgAx9pJhb0KnfOtuSCj7ilWSVwBJAtUtjFo5I5GRJSTTEh56yE2ZABLc4cPM
 v3zF59Hm8PbD3E9MuXG9dkZ3zcW4LPXVh80oYbkUYomCkspDgpq1XUWslyrduP8BRg61ub43bFN
 D7b2pKxQcp9n4qRPG87arVBUJzO5bUdZriEhcvIwRA8g7Ty4t1XjUE2dBdcmlu1jHGR4yu0AvNS
 J7gZipSXXYh7pfrpXX5hfVYQaU0Rx5NjFvVJYlHsg3MPu58t0NRwsCZyu5njKqBnL97H23DcTnb
 OGU6INWVFiyd26HXHhgTxNPu8HbyBRFE4CXAtbLk+R38puFmLXoAIe93PD83NKVNNA5JuQ1qMDT
 03Mtb/klRnsQT786huPeUBAPeMhGoyfg8zbw5gZNhOsb7qtBjGABqQ2+kFMbdfME3WC2aEWdkol
 fQpOxqisp1hpLzun3NpNsowLGMaZelCuMxI2s0Eqx5whKM1Oq8cNrvIZKO9NQDkY4SqD/TZ+3rw
 05cWuH/pid0x7LQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=J5OnLQnS c=1 sm=1 tr=0 ts=696d2200 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Bq6zwJu1AAAA:8 a=EUspDBNiAAAA:8
 a=2Nzugx-BcEq53SDkSVIA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=KQ6X2bKhxX7Fj2iT9C4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE4MDE1OSBTYWx0ZWRfX6gm7pz8TF9cg
 QS4H0YQSAq7PYzdFAGF6QYXB2HXldhlzxVUDki9OjvnZBsOxkXnI0nqx0dUCQ5BwN4sQCyyIiZk
 uBLq3f7uvKPblOMbha2AhwNCM57K4WAVAgGmQnKstzit0Z1n5qxPTjVZIgtYJdRL8xFBnnKzZVF
 hX1/ti82kl2CJKSftRf4TuRd0a8R7tqYJUEgDYniYdt0urzmNX/jQDBNm83ZV2u66gjvyRrpZvF
 bsuzZ2UZb0MMH2/chmgHN6BdOk8zAeUKnhtx+SrfxUzASB407s+WAJUAX/URROvPQwWPS6w71L3
 lZq6zztKdNAKX1CtoSKe9Xbh/FHhmKm1lRBS+ewqbB4OdpXr+cMvvN7IDV8T3weq+Sh33pF5BaY
 m/sh/QXNK8S1Zs+C0b2eqkb7Z6zOQB5iuoMPDjEBdUBN5cz/33oymw/2eMKwdh3WYHkBWB1KaLD
 p9nApK2dn3Ks88W2HMQ==
X-Proofpoint-GUID: 1e-hijt6r7jP0c7uOa3N8FB2mi6XxuyG
X-Proofpoint-ORIG-GUID: 1e-hijt6r7jP0c7uOa3N8FB2mi6XxuyG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601180159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_101008_685471_D7EDFA2B 
X-CRM114-Status: UNSURE (   9.67  )
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

Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
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
