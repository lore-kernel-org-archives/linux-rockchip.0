Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D2A7D37E4E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTgdtDqKHTIssxCuWYI3lZiG6g2b8pesUk+MbZgrsEo=; b=vMjHjNpZtfkYuX
	oEM2LDx0aduRGDJMiuOA3Am8hPnyO3iiT0qxQUqNbYLqfOaGKQZTBVinHLzMcOe2vO3K5C6la1/MD
	F5RIBB1rRDTiNtNBrdIC4ZpONLhElU6M4iLqqElQjh24znBeXBhLeVftWKX/8dwqu6tSmcfaajVqq
	777QDuZMUS4YLR+diWMQT5zc6KiOjq0YDkJa5ZD5PDi3ixLpnYMGM0R11KAhPdf7IicN+I7hNmvxq
	/U7+vn1eGUmmhbj7T/jWjU9kAx9AoIMXnIXpMrhi+bthrclxZqI5U4wVO7pD8OJtmDl3M5ms5JyF8
	LPF6rFkPRBLv1tudPeWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2q9-00000009ho6-2b8d;
	Wed, 14 Jan 2026 15:31:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pN-00000009hKn-3UYi
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:30:35 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EEB6p32497475
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N8rDVtwaqFFOKGAdA8c98jUQvXsuqYrjM/OKm05D9ak=; b=HcXKAq+nTSgWrzSK
	w1a4GoUXM/XuGU5b7mwyhHaftes3dWz2FIYh0ZaE3kTLg6bSA5zLrYkRq0l7d56I
	Zm46EvXyUcb4YHxT4q3XQ2xwvlv169s2XhxgxhrLV9wGHbn/acVHWUrKL9WeiN34
	oxI+nkOmlEgGJ40GzzFOPwIfQ1plkTis7W6XEwSy+BEcDfNNCKZeJK6ntJDy2gJT
	7cNvU/N9ASdtjEEo+ywOMZabQlMvmsZWBwHPkVfHcbdvH7QZIMXscPa1ebEWAwza
	qmm4xfI7i4asmD1X0oDozzuRdnBuTqOGzH+RTAb0dKUgJPvntm6VZtTm/Ycu5NDd
	OjjOJQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp16x2xv7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52c921886so197323785a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768404632; x=1769009432; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N8rDVtwaqFFOKGAdA8c98jUQvXsuqYrjM/OKm05D9ak=;
        b=ayPh5pIBbTcfqo9hrFn209fF90czSJisn2j5Wha/PeJJbP1rB0TT7GhP81ChtSewlX
         owU72O1TWY9ZCugoK96ELQsoLL80KnL3c4mXwsJnzPp0hChs3W3lFzH9mf3I7zUsob4E
         SrWePbxEBX/J7/+PL5V/3xUnxjLfG4XZl3QZNZXD2XJxCaUj177PbWL12j3nmkwKz5iq
         VlIOCEHFzednaxbYNJVnlIWle8hv+VFBVkTbYzJlDcmo3viWDT2kOkQo50gDTPyEQJ4r
         YLPaMyJCf5Qin57A5XYEovHQCU+T3XySMQpwBVOLbbaybisKmkIiwqIMdbeTY162i39d
         8XLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404632; x=1769009432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N8rDVtwaqFFOKGAdA8c98jUQvXsuqYrjM/OKm05D9ak=;
        b=jD4RFYFfzjfqhwnEm2wiPwrtp1QODRGDxsJZxJuLh4GaRG9OwRSTdDjF1W/MPIIL3Y
         uJ6sMreE/4SESF76HAkqtfBQc8VqwSap4cayH03rdEZfH3AxLv40ajsJ7Mjcc+7v/K/A
         i+xqC/jNeo/lXO+F47o3qFH1G+bZBjOkLRzmybLKiWa9BKgwRl3idixhUVcqyHOxdJgp
         KBZL36RFx6KHnBVVfKR7P0fssO7sWJavCzNQWS4svnd9faeykxesUXw3xQ1YY5b82hj6
         vQXUF4Wib72FgK/h0vS5/B25bqlwBfEuiB8ie1OceAHxRkyvt5Yfljsy5Hz8cElOGx3S
         /bCg==
X-Forwarded-Encrypted: i=1; AJvYcCVQscXSGtaqIbUHFeCv9nLxsORRJNizzsfSOZPWZ7B+IZkCwIdLGAwD2NJHS0gtrQWGtJzu5XbJFLD6ONWvZA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzKs+E3se8fglr759zsS9/3kPXOJeDE5+yH5b/fhHE7wy3f+Nhn
	iAtz9awhAbf/hJHXgHyFJCva3OPx4Haedi96OoZVWeg5og0/If8pchitQOMHL5tS/3GG8XDHLQo
	E1K0r/+5c+g7ebM/C4T96F6L62PKZD+XgsAKrYXMmwqMs17La6G6D1xjOTaQvTvBLcz2RAteRBi
	s=
X-Gm-Gg: AY/fxX5b+Hjm5ZtgjT0ap1ftLAdaVOBhMb4efcf8ISmBqN0ZFortiA93dCdGrtMU4w3
	rHgeiCC+X6B9dLwzSRwRk5xAECxPbdwtuJ8nrWDxE0sGZql6MPvJDsrel7Z7xdiLI4YWnL+s087
	TwcvWkz6rZlmrTb4oIHh6KTALTVe9QWv0Q7LZwB45/mVMJP+rXb6VJlFIvTJhum2A48JxQ5pJ1X
	UTeeX2f298BPIX5ZRpIk+pcUlGStNFGDTjtRllyAvKF0108CeGL0sJyJKlqF+wiZJbRXMF6IOxy
	f5JlAvV+meMLCLyfzVXABkse9QkvEtM6Sqx7i2z7nPDJqzBVTWCKT2mH8N2OTq1FDpFotemFym/
	KdBfMsPw426scGKpEMd4ACnQYELXnEznVAA==
X-Received: by 2002:a05:620a:46a6:b0:8c5:2ce6:dc9 with SMTP id af79cd13be357-8c52fb4f058mr411705285a.23.1768404632246;
        Wed, 14 Jan 2026 07:30:32 -0800 (PST)
X-Received: by 2002:a05:620a:46a6:b0:8c5:2ce6:dc9 with SMTP id af79cd13be357-8c52fb4f058mr411698485a.23.1768404631550;
        Wed, 14 Jan 2026 07:30:31 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22812989a12.29.2026.01.14.07.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:30:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 16:30:07 +0100
Subject: [PATCH 06/11] pinctrl: microchip-sgpio: Simplify locking with
 guard()
MIME-Version: 1.0
Message-Id: <20260114-pinctrl-cleanup-guard-v1-6-a14572685cd3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1197;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=7TcfQldnwsgDeNj9THUL7ZJpvo8wBH6EB0ftex+EuCs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpZ7aFcSlR3KaVGiIyNYG8oZHo4izzrC/c7v2QI
 ELyljV0aeOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWe2hQAKCRDBN2bmhouD
 1/c+D/9JCP7uMMFoU+h75eykrt0KHmHUnHV3rqtg3g7Ut1d2/As83e5bk85vikvVmZM/NczFXe7
 tQxswgbhKLPilQU4gCP3Ga6silueQpxzqiLbJaccYmtFmcy4rr0I3ATIJuzeZ+xjLqKsMvlDsBN
 5CciXjKG5O5Br5wwG9eSTc/INEM73B0rn+881EzVNAJtEBSP1fNhWwkx5nIiBvGhEp49M99L5nS
 Bxm1JS8AA76I0eJm+s3lVShXx6sccqHmnDTkkB6m8kAdFeJ7lqn0UpVpX6q93orxxxwlAPeVs92
 gp4l4zUpAWVSv5rvRJCGzn3CRbKUXlJ+XXT3EVZsRL4mvrX4OY18izt1M0rKQ2jLVDxHs7pKBKF
 WZMNHrrcyTlCIQ7WSfVzTKuXZaeUtqQezfcYz4QJu73AoUPusr4JilaxDmzkvLOvxaeGWx1aQA3
 XxTSCpYcLEW+07K8mVmDNCtsc3UUybPPwSxVRYBMSHfr0R/Yq+w13B92RZUz3SvitQ1RsSGFGPP
 tZPDshniy8mMJMUivX7pjR39HjGg1DJXYUG1sch9D6IG+YQgxZvHQ5G9tDMnhlrjry3n+cjsAxb
 tBNq5GvN/JX4WDvzpXbCaXdN9IH2zgxN5gPkt0cindxysAHiXqL0N4ohP4zkibgluS7P0+DFsIC
 uJx7nBKwy1ooASQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: ZVnj_WOpHgcs21ticHt3o5IEqWcHG_sg
X-Proofpoint-ORIG-GUID: ZVnj_WOpHgcs21ticHt3o5IEqWcHG_sg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEyOSBTYWx0ZWRfXxH/vyHPjEoUs
 LF6UkzwXRHSIFxuFHSmu/cZUAPkIpnazf4Lmq++jRsQ4GT1DH4zvF9qN9WzFs091dHwP0XhK+Fe
 EZxFa/fytIwj4zqJKsfOrqpzQdcOXNmPMA+nOwAwtsZAvnk/otD613880ppRGiwgE+KZQbWeh0I
 mKWfntOEj4dfPqw8/XOMX37T3rVrLnd2zUDgA9A9Sqie4gDrrOPsjulb2+4WWmnhTyewcuQlSW4
 pRTpeTgUCv/dw45lF4FI8+01eRr9HnmxeW6ydsyT127HY61HqZr9cEOlxG2ihnBHwwpiFdHybVu
 AVniawWBqMm52oE9/IRklTeTP47OO80f10DPFGxUrsSCFNegCHRWCo0c/Ga6FD79Uf4ppJPb790
 PUchRWD2l/GeT/TBBQKxqqSQ7Sz1RXvVHV/Fr+1KbcBa2mJ/UADtBuVot7G0ovcLbMiVXBHwb2M
 UlEy+stfhVUSlpz2Dzg==
X-Authority-Analysis: v=2.4 cv=JvT8bc4C c=1 sm=1 tr=0 ts=6967b699 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6VTnscBjb5kX48BWP-sA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_073033_904853_D4BBC7CA 
X-CRM114-Status: GOOD (  12.30  )
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

Simplify error handling (less gotos) over locks with guard().

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/pinctrl-microchip-sgpio.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-microchip-sgpio.c b/drivers/pinctrl/pinctrl-microchip-sgpio.c
index b6363f3cdce9..7a6cb5f502b0 100644
--- a/drivers/pinctrl/pinctrl-microchip-sgpio.c
+++ b/drivers/pinctrl/pinctrl-microchip-sgpio.c
@@ -264,19 +264,17 @@ static int sgpio_single_shot(struct sgpio_priv *priv)
 	 * setting.
 	 * After the manual burst, reenable the auto repeat mode again.
 	 */
-	mutex_lock(&priv->poll_lock);
+	guard(mutex)(&priv->poll_lock);
 	ret = regmap_update_bits(priv->regs, addr, single_shot | auto_repeat,
 				 single_shot);
 	if (ret)
-		goto out;
+		return ret;
 
 	ret = regmap_read_poll_timeout(priv->regs, addr, ctrl,
 				       !(ctrl & single_shot), 100, 60000);
 
 	/* reenable auto repeat mode even if there was an error */
 	ret2 = regmap_update_bits(priv->regs, addr, auto_repeat, auto_repeat);
-out:
-	mutex_unlock(&priv->poll_lock);
 
 	return ret ?: ret2;
 }

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
