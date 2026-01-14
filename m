Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E91D37E3E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Q1IB9JnVf7VDiVWYLPP+KbPqdg1UTkTw895Pwgk2WE=; b=UrjKhoOLicekKg
	3l3SjhaS3DPTRCz589TaOxuqb5IjZUj7+iSKlB8qYyR13xGx/+GQ14rUFTMHlKn85TO00wYnCv99W
	wMiiz0XM/WRWHEKAdyz3YSedLJmEZ6IcE44Z6iMqrk1g98DJBzsjQqpr7lCK8ElRqQgijT1bj4lYU
	lhgkoZll+PP+mXFnRhMwj7i8iasOV/49NurJrZiD0cZitPYhAsSAm7hV7kSzkj6WCeWNlV6XklwvI
	EDi+yOPBnslfSmG8QBOTAGIc7IqhJny4k6nPq9oNcN0X+Qwimz5I7EURdstV1JxVOlaLiE2tWf2Bc
	6gXZ0VBa1wvX4PmigE0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pg-00000009hX8-3Ly3;
	Wed, 14 Jan 2026 15:30:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pJ-00000009hGc-3MbX
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:30:33 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60ECrj5n2736076
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Mv0nQD2Fz+xmN887PWY6S7g+L/xnSZWABnal0geai9Y=; b=Ja6yf+55fHq9cr9+
	3BmQxbt5bpN7SHtBWVenCY2tSp/rN7yEiuQCqdkiBXi67+06a/9pLEqUAeXLTdNc
	a1grs8LrblCreo1vw7SXp2xl5M9w4EIMROi0sTqscq5x2HqimEYP+t9LG7NSfIN0
	oW0mJSmKZfsrffOl10LCS9I+c68oIPg6PMdbu9NWlAbfYeIljtZ5LwgkSSYHwo0I
	3JOnKWXYOoVsAlspcsRJg5tELpY5u/wJniUo+jZfwG6wj8mYx63YcXGrOMDwboK7
	SOhO1+6gPKgS8ghvVXEQWk1ZVwZqbf1Hap0Q/5oJrgreJR5QtLCL1pFJaKpiTSIP
	2G8J/Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpbj5ggp3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:28 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88888397482so257936686d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768404628; x=1769009428; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mv0nQD2Fz+xmN887PWY6S7g+L/xnSZWABnal0geai9Y=;
        b=iCSNs7xWUCaCFcdukRNGt3yYCjLu/w0BVRmAbqBGgKaao/SEosct8p6z1bGrixNFWt
         5O75UAyliEmufduaOKf0pKzCyb7Z1kMcDVHB2AwZ6XDGv88GDI8LXjCiL0DMIYWIyUKM
         I7Lu4mAP0TAGsNQ+vuDRRc/yYuFfH+gj9qEc7STIcYANNUu5FCNMnCoiYFs+wXhi3OxK
         evbOCu3VeqAZ8M7hDeiRv+72mKGCC8tR/PBv5uUh64HtIMl/7/lUWRkG9i5D8rIslBik
         GvYze1RRgLUspER0FauB0m/QmBsJDDRppKzjmv0+gXTvnNyC8aPcCQXf/ut0GI0/dn7I
         6u8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404628; x=1769009428;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Mv0nQD2Fz+xmN887PWY6S7g+L/xnSZWABnal0geai9Y=;
        b=QmFW1LtdC1E6pJ6SwI1CagNOnqzrIsbpOYd8g9uDOBzP9JfMa3zEuy7sYGAbzfgENC
         C5G7GRgTq8sdFHC56A+wIU1DqD9LllrLoK4eCupkYMHitog0f0C7KdPezgPGXd0I7hxz
         GxyjerXQ69WnQ75Lpz2HkOqaH/4SMopMM+HGoZSi9wOCK0yaIr1hbUDGaA5llQ+VFmS8
         EyZOt/Bb0EKRIKnRAChHdeDjI+ZX8HcstE0LZv3YdZDd7YmOc3PEabYqm5xeR2k8EWAw
         GGWDKz2CGlBbnklgA3STev+oWqXWX4nuP4xUV7XEEfVPM0MpglHdN/2T9Bis3pxSPV3A
         DOoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ3OswFKAqIimNA9Dwc5f2wwmqwiwh398tWqFjfCtxIuhw50h2wgFmpx6EbomYWlq3KmF/7t8ys9aaExQM5Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwF1pzEwPIZRfgSWL9JkLDN1rrte9ThWtdHmGhsubt9PivKrgZw
	jB8Ib2lPXFb4srIlIk8a6jmfwjZBEpvbcA1HKiaea7Nm/D7Kjfk7O0Dat9K48aCmeGhgkWfdOlj
	kSam737UYM8B1k3To1xzv/nPqNrr+GEUYgMy1q0+B0hR7b1esgAwY7kG7P/06drIwXt/3JT+ZcB
	I=
X-Gm-Gg: AY/fxX4zBh1rL7zjHXDurfJYaDcRRd0dJvWZlW92X4bXO7p4MdDQ/7XRKFN6g3UglGx
	mImM7vF2vlnl0ELzTqcT7ItJH9One4EdrNG64gnqDcwQuGGqorxyevae8W7Evu5/+rXqgESZxTH
	yW9fMAZgt4ooJeQ5dFTysNlEJwfRF2vrhE93B9x0iW9KOfX6GQkQad620CFKC5CVnMWoefgo3Xs
	ay8JiWDIbgUWW+9gPIeGvUtAGaEBU5dz9EfdYJUReVmWGPFIwpkHmp0r6IdW4qUfHr5UJq3USV6
	JWVafO1HOUaYTlVPZVjAS+iQzAcqSl4V1OnBHtz2Xq5UXB40k4SFexEstaV8XBkcQcLGpMqnF4b
	2PvSnTTOwRaykssNspHIqmZuVEIpTj4Ld5A==
X-Received: by 2002:a05:620a:4443:b0:8c5:2dbc:6244 with SMTP id af79cd13be357-8c52fbcf013mr422896785a.47.1768404628271;
        Wed, 14 Jan 2026 07:30:28 -0800 (PST)
X-Received: by 2002:a05:620a:4443:b0:8c5:2dbc:6244 with SMTP id af79cd13be357-8c52fbcf013mr422891285a.47.1768404627841;
        Wed, 14 Jan 2026 07:30:27 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22812989a12.29.2026.01.14.07.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:30:27 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 16:30:05 +0100
Subject: [PATCH 04/11] pinctrl: amd: Cleanup header includes
MIME-Version: 1.0
Message-Id: <20260114-pinctrl-cleanup-guard-v1-4-a14572685cd3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=775;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=KS2A41254/IzptP8+yKUiwH8wnfKT/gY+cirH/V2Wao=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpZ7aDV+noj7ZcYLzGFw85urth6DKCl65+zERGB
 6whzCjLMW2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWe2gwAKCRDBN2bmhouD
 13ELD/9w2SYmYalYA5vFc6Rf1PTVYZ4B1dYRonz1b2DQNyOu2VbPve8mcP3qP5S8Lunlmu9pnM9
 XxA6ShVzZzR8X9u1+aHI18FkeFftaZO1X/ipHiRgWYmwxHee50F43GoRYkUKtL5EeGs+pgVFtvS
 N35v5ZOaS4dRcJ97oRggrrqF3+rewugdNfcOjABy9z+5McTb/al3fNFk7obz1H3xjL77Jo3RQcb
 jKwvKaJYn+puhraiSHisoI1Q8H0GnWywr6Yq12zvOzY10VAU828u15UF1rvvfdSZBMNoDaZN8YR
 MY/C4aYFC0Y84PtJu62kmJ4n4v4JBd/PrIYVnOSEvIoAZkqMo4it79WoNtuEoNx+OhSQ0P0+FTw
 ncPMJVQ0RwPTjUhmgU+Siqc1uuFokQOIgc8sWxA187rXXifisB8e0Qz8cofr4vT2YdFLTDQlTtb
 DsVJhtQvL20afD8ktEE3e9SBn/kC2U5XBha9yUQiLszF7/SkefUvWkoLphBJoHJQesPlcSGwLES
 8ZjODkLNTik+YIzT+y6r9oBPDa+Ft1z/sPRZtZpjZCeGeSqLeOkBl2iH5kgzmgSjGANsVseb/1k
 xn+gb1RtR8rDo4/67L+lt6mr4ki4euFWZMFfg8c6VM8c7ZQonmBPCX9sGdbGnfFG3z8Loh8tgWe
 NlXvgC6SiJVTR6A==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEzMCBTYWx0ZWRfX7owGMHMeUt1m
 hnc+7rGpLZ0wMYGGdZxUSr7BKg0n7N/DXGmTGZviowmZH2L6HdMrfj12NkiWyTJ5KrOm1AUPmnJ
 CLDJrv/ul4SXisA7FoJnD9xx7rHTsF0Tr+Ld2QYg8U9n+x1BwwROk3eFVLhHB8dAuH1v+v/CQrT
 AIMyoMnofsH/cLsOJddlY0LD0ypHhvFXIUaYQLog0jy07SwevOeFSGCqjDeKHU1lLlaxYImSFWJ
 sekfv9d6GW2zxXFeWTM9y/jG4klb8X+tmqTADLOT8jh+qdZh2g/wMu5eorXDG/97O1BEdc9L5jh
 j7QVblWYS7V28hbzsOkYlPLALY4gZ3LONXh9WjRIzOUyPrlWIWvuN6jrpMT2qV0fczDfzbGhVx8
 nLCsR949Aq9jJFMQm+cw0SYr29vWSiy83nuf4sefdRz6+sQiKaRZRAMIVEEF4rCus9eZ94jN9zn
 L8dD3PqCHt0VrQiSB0A==
X-Proofpoint-ORIG-GUID: evzc1PmqggAdmcSzmLpSvMUuoIZ1kbTa
X-Proofpoint-GUID: evzc1PmqggAdmcSzmLpSvMUuoIZ1kbTa
X-Authority-Analysis: v=2.4 cv=aapsXBot c=1 sm=1 tr=0 ts=6967b694 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=tMXyHTyi87mTYQFNLaMA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_073030_049909_4FB0B5EB 
X-CRM114-Status: GOOD (  11.26  )
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
