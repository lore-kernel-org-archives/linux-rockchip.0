Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCB35D4A5F4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jan 2026 18:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Q1IB9JnVf7VDiVWYLPP+KbPqdg1UTkTw895Pwgk2WE=; b=hZFVDP0bnIM/QO
	/roBm3N/zefU0/ciKbcTiDMpFEmTFrtlpne9QPjV4RdkCQgj9+y5MrShho6n4fv+uv8tQGYb2o5/P
	ZGHsTzqNlfMovJARJnvMvcfV0j8WZ/Q/IlmVRf03dvDdK1nO/BJ3r+i2XPpprIMaiIIa9iYwb+BAL
	iipKHFWe4J5DFppz4jHWvdyuxdrQrJKmmbRIzhfetHjlbjuwzL7bAQwoZeqnGe7iCx6nGEqZmWaEp
	LFx/k+aYvpDQWOXXUb/vCCad/EHk3gbtlRWE2OY2/Yi7anea+/ogqv6VS3DFjLVoA/3AJi5Jzbhip
	/ktb7cRBgpOgx0b0XLbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXEM-00000000fmv-0ISY;
	Sun, 18 Jan 2026 18:10:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXE4-00000000fXK-3G2m
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Jan 2026 18:10:15 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60IBvKq73171885
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Mv0nQD2Fz+xmN887PWY6S7g+L/xnSZWABnal0geai9Y=; b=EKd0XTCH2anl67j7
	+xoS3zAwyuw5gexTX4UDZDbMLnC5kc49ZKBvo/PRSfX8H9/mojr8PFpvgc3ME88b
	6axcSF5oETo3Ez0pN8KFbvoEFyhPrF7c+uSatRaUEvMLzXAK644V1AGsZn56bvQS
	bCZLsjvXGEqpYS3LnoXqvUCuqUI7H7Y11WJLUaxSPHHwguRGZ4Q7IimJmipOt+50
	Q6aw2Gwamt/7NCO5mbtrghH/O7wwME0l9ThG+ASTltN1oWwT7WSEvV1+2j1EvAR2
	nzqjOBiZ1kktZ82XgQPuWYmITvwpCe163Q9AwYzYfAfXeJQ2iw890FeCl+fRz5AT
	mTlM1w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br36darrr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a291e7faso309783985a.3
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 10:10:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768759811; x=1769364611; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mv0nQD2Fz+xmN887PWY6S7g+L/xnSZWABnal0geai9Y=;
        b=WGdUkJaPz1KaEvkXYrW6y+RXfNmNEmQZerqVEdlOTheUyRbReRFDDQ/d8PAQClEA+u
         jJ+E0lM+SKnpfdl/BH83bWjjtvOcUNVpQdQOt8ebZA6CWWKdp3pHgbkWhcvQZPnxlAni
         NAFRWPJy96h2Y5dBovWJPz3jxthIH37vbccs/QU2XE6BvAejI9G/xmmH/N9z08H0UGwX
         ed/Fu6JzGVnzpsFptke1D68Io2Nqf7vCTb7Y+UFSaiZ8aJhnBGUAKRUzvJzzWGt/NWDg
         r4A9UaAkoKbI4YEnGiZ1fnBoMQZ6l49RG0rtB5/dzVv0GIYP+gXghj96+1Nutm7TZKJL
         r4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768759811; x=1769364611;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Mv0nQD2Fz+xmN887PWY6S7g+L/xnSZWABnal0geai9Y=;
        b=PsdLIXQR6jfHsGUh1OpdRI7pXlND3I1cuhCKY2V8Ki+cGPmIxZMvU60NUnm9mNxa1d
         WTTcADR0OJ+eK9/GUD3utDU5U0tQCm1UI7KaVciCPYTJ7EMggv1/pn9a3nCas3NG0Oy0
         gOA+epr0lbP2R3N6kJDvOCNrjW9T29riNpfMsU9WHZg0IRNogAuT07OWE8XQocnu39Uw
         CRiMZFY6oBQYO3H/wCDudXxZDY2DY5zaCkvolpSmZ+TWkh+HlH5Ykq5qeDZLG7uKW/Iq
         gBLzIjb2H4gw2g5BhExhQzpQaGSxR3+Dyc5O4td+Da5qfVsFiMpW0Pko2YNW/VqyGshu
         HeLg==
X-Forwarded-Encrypted: i=1; AJvYcCU+D1jiB27P0ktFrmK+9jJ5EmOuG4nzETgl3TVLE30LeKE43kT2gTr4tYe01AewtpZc69TDZ4vnAZJicYf5SQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzTOyMmyTjfj2WJtIg6y0QrcCG2/gaoZ/QyLm4U/4B1F0JSfZbd
	5ynJUcZts1lNVzVw2nwmPHu+SvUcj5Zi0f05TyCkPjBlikxrKzkbYyJDOJ7hJP+XrBDP9trm8e8
	/cgZzda/hUd10cuGL7sKp/lu3Sm/FkOPkw5gyhFXuPJQrszgOZf1Tn9kvbRg17xxwhxLLJqLf/z
	w=
X-Gm-Gg: AY/fxX5FUrVn5RdlWZaGtz/BSe8Pw/8b5ftXspviKBbfpmfcqAyaaWUzIbCXsfr46yh
	kdwjbHkGyvaIuuFme5DyUPG3sZBzMvolTvZq8RikSF+X5VnKZT+MluX7SV0MiyJeiYyYi4C6iiT
	p867BxeRaWmz7uHlWUyv2we11ZD+DEKanr1EuqaC5CA1NRM7qaNEH94aZppSxayxNoHNvSfUOh8
	SjqM7ei7J3rcLcDOyh+omUeGdfJWxElpu+d2sQ1z+WkqxivXWzMxUhIPDQoTNNmQ1g8qfpeFXk1
	DUSUUakvupIQrIkZX3NK5Ruj1nHZT+K4ym2zcLPeJF3r4UfPJPcFzlSrkB36ChZY3N98AvXHu3n
	3qy85a3vafmwLxeZjDm+QfEq1zMrO1pTzWA==
X-Received: by 2002:a05:620a:1924:b0:8b2:f269:f899 with SMTP id af79cd13be357-8c6a6956472mr1391331485a.56.1768759811392;
        Sun, 18 Jan 2026 10:10:11 -0800 (PST)
X-Received: by 2002:a05:620a:1924:b0:8b2:f269:f899 with SMTP id af79cd13be357-8c6a6956472mr1391327885a.56.1768759810821;
        Sun, 18 Jan 2026 10:10:10 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe44b37sm62162085e9.12.2026.01.18.10.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 10:10:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Sun, 18 Jan 2026 19:09:27 +0100
Subject: [PATCH v2 04/11] pinctrl: amd: Cleanup header includes
MIME-Version: 1.0
Message-Id: <20260118-pinctrl-cleanup-guard-v2-4-bd36f681bdc0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=775;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=KS2A41254/IzptP8+yKUiwH8wnfKT/gY+cirH/V2Wao=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpbSHxcMweZ49Q5Nba1wrVt3CAmG8iWHmyaxcHb
 TNtiusHLMCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaW0h8QAKCRDBN2bmhouD
 10MfD/9Y8BgVbkm6bl+36BXzMgv1xbm7JsRk164MPz0v27NRR9/A7MTJxMXT6LNgShVq1djSxge
 6g8uCxUY/9zNFfEZbrbUevJi5cHtHc5/YUTCSNnot/lyVENX5O2KSCx3dYOpUdjrHDF8VX8ybHW
 wzM/tjZOoVQ7+gYxMukxqt3s8XLQOVct9PlD6qtPZmiFE1vab6GQQgLNVgM1lOYylEfR2ldNJXs
 jXDMtydYwc+g2dbP9e5rnGzbL2XkzK9qGia8zw1O8+ri8yvQ/U9eaHS+WXwTO7Vlr1QAxEc4oUC
 zKbv4wtZ1zeayUoWUv1YYDBGknxgFxwVQ+bjAyyLW+9wq3v6aKLX2CCdb7vhkv9IIbgJ0ieuMw0
 xixdCHOWfKQ+OYzmelQ7pXLN7RTHkKO8loGnPsXOAVHqo6wdt1FOQH1bb4xGl9Pd1K011ZOn4sP
 piveUlRUfW37nPiHBDROLc5yASzQBPjKA06V8RpaHwfC7I/9bVbiBuGyvVHdGhk6LBSFFKEjrBX
 UljGUMx3HN/A8uksjr0su24ucX5chRlqNVyncRJqPaYjbJAJ0zFKM64X1r9AnLRwEVfas7sruYn
 VGBFODgVsHuDAOcu5XDZBnuzDmqv88C04tW2Pve5Yakzf9c11d3W7hQUeI1nroie7c8OQHhI2ca
 a6OcgYeqNAjKKjQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE4MDE2MCBTYWx0ZWRfX+OBq0DHYLXql
 iG9U5egzZkit58vByC66KTVA25AjchU73dz77m7rWqTp3Ru2v7h5/XGOyGMZDB+MUWtaFb475Xc
 IOYa8rD3cBzUPCeKybOkBf/8/IX+sNv8+qU1BFu7VtP6G9fULhdjEdBvQMOOcE5E2Q/ZFgYJfRY
 lCeI+DBS+PM8TfrHBAEvjhw+jNlrxWmQBayfDpGT91bRvakMoRnqfczOL/TIG7I3SoNOXtfgrGm
 pEql0QW0mvIDH3J8tzWWve5rcMjvYaQe7WHT66fwcUzqFftA1ngOWPQFLPIMb7BI3KCI98QHzad
 sCDp4ozNI8lyYW8dNoptFe2187Z6vsW4p/6T//dVQGNgKJ4eeg8T9Wdwqm2j3mxBYoLKT0lE0Pq
 cvTMkfXXMG1P5XZCnFR4haT+c/dLi3RyQinHtqAdURRoYrASy0ZL8hCSzuUnp1FXVoWSFoUAId8
 sOhc/Kp6rgBR5ZaC1SA==
X-Proofpoint-GUID: GbCINcy-ub4Dub2pmfsswcsut0UPmT4N
X-Authority-Analysis: v=2.4 cv=GJ0F0+NK c=1 sm=1 tr=0 ts=696d2204 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=tMXyHTyi87mTYQFNLaMA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: GbCINcy-ub4Dub2pmfsswcsut0UPmT4N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601180160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_101013_974132_53C85126 
X-CRM114-Status: GOOD (  10.83  )
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

Remove unused includes: no lists and mutexes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/pinctrl-amd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-amd.c b/drivers/pinctrl/pinctrl-amd.c
index 2dac5c71eb00..2af94ef56434 100644
--- a/drivers/pinctrl/pinctrl-amd.c
+++ b/drivers/pinctrl/pinctrl-amd.c
@@ -21,11 +21,9 @@
 #include <linux/gpio/driver.h>
 #include <linux/slab.h>
 #include <linux/platform_device.h>
-#include <linux/mutex.h>
 #include <linux/acpi.h>
 #include <linux/seq_file.h>
 #include <linux/interrupt.h>
-#include <linux/list.h>
 #include <linux/bitops.h>
 #include <linux/pinctrl/pinconf.h>
 #include <linux/pinctrl/pinconf-generic.h>

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
