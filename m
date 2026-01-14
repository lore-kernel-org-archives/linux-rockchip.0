Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A310D37E4D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vO2JntUosZjlUQP4KaMZ2P8vUmY+va14mF8Dn5WwQpc=; b=EepPfLhk65zAZn
	4SLgk1bSFZAvcqJ3gl6vYasQ/3hXJQ+FroMsSNtFmNdKOlsiNvsgy3NcFb8xTyTgJkKll4RdJMS9K
	cbARZsbwzfAKvDNgGmXFahfAjHo+KsAepDjLeoqT3Cbu1cEnidrzLXCkJAB3SskStpQbLkuMLG5Je
	469tViP1mEzbvgoZgITappED3oM1bpTxV2/mRR8+l032YoFZ6NMs7j5YckBqg4f+r2o9oZT0ZItRP
	X8YlmT/GlrVSDGWDuhIpgW0MzM2YZsC16p2Bro3cpXLgHCpWw1X3YYhDY+MBR1AVY8oGwCgSKeSjS
	N2J3knuoS1QxhxdOsuMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pz-00000009hkE-0H06;
	Wed, 14 Jan 2026 15:31:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pM-00000009hJ8-034y
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:30:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EB2bSu3416246
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LXncEA4jW+AgdDM8Dn/nTshgL+Kv2q2dFOJVpt182v4=; b=L1bLn2gbhX1VQr5S
	DBrqZ854pXa6x0jHP6ADw0uJYdtEFgDvE4gD9u6gpzd62HMPmU14Zz2Yz+ffZGY8
	VY/nvssh6dZj5GnrLthMKJcVupO8HTQMojR7ZkiDkKR0XFxxqvBJUeKWNMxYJry8
	NwvqTbbKWLT75tdRH/42GO0jHIG6tsYxJZYxIt3+vwRt9jLFxqCKxsZvqH+nzhSP
	P37BGhyoY19MnsR0mwirGBB8vtCkN84A5wrbld369kXozOtYajjOcHWpNhrbOtSR
	u9dn/SmYXI+2ecIuTkyBKquonCEcC6bun8mA6WiUKZcz7VQzS0X7Qy1Zb+WncMs5
	/6FpjQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp9x2guay-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2dbd36752so2200293685a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768404630; x=1769009430; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LXncEA4jW+AgdDM8Dn/nTshgL+Kv2q2dFOJVpt182v4=;
        b=RnM/KeQLnWBGWsXnfwnRKIefepXxwOaT+m9PK/PEwVv9WLUfrnZb7cf+Yfd35cRl4W
         KWUk5QBqSVe0k2MHt4mULDX+vnFZ9F92rgqlD3n+ewWIISN5HzoDcfZG516jwhoWXNH1
         weNkxaKIHyYo5Be50g9Wvdqvn3bzmbGdUl/EwC2otYRfNFs35DDVSapFOf0Kp6ziklNS
         PihU34KaqvSElqWrwMmiuMv5tlND+UvPFp5Ax1xyxf/n16oQ9wCtl8Y2+jdrvCQU8YGL
         wCMGiNBba++DXNd7ZR+RjTNjsEeYrOHXTbIazN+QseJyZNJQrupMjWBt+k84/ocKBO78
         YFEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404630; x=1769009430;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LXncEA4jW+AgdDM8Dn/nTshgL+Kv2q2dFOJVpt182v4=;
        b=wcj0WtTOEdoJ+yezWmW0Dk27fp2d6zmKeIXUi+/UiT76NN4M8w4E8J8vzN0Hjo/+sV
         kvLOVyJJJT1yCp/xuorvK4vHqijbls5sd3Dh1gaNHyZRWSxb+WHF3Gkb7/2lVv6ehrnt
         5dEkBdcZEQpTrlr7hDo/lLbP9Zx3ta1QH86JawgRyC84vdDXRlBBycOJOfDJlAubCK1t
         nssLnuTwii5wnXAuitdaaHhug0A3SruZN78Yj76ONJqI+dht+LPrtoan1umAmhum3YUQ
         HUORy5Qlo1RcAPwNjIYlRRq3yDt8iTXsAZh+2BmEHvRD0bLdxJctE5s/21zuH6uthshk
         uAtg==
X-Forwarded-Encrypted: i=1; AJvYcCUlXytr0fmzDKOIhQnukSbFKWcyxaC2NAL4k3qav7sIbjJ1N/Xgh+bLveyf7m4zcrW5jT+XxXssFK6TAxBe4w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3whyck7x8yNoM0kzBwqtAMPBwmblVAlIwx5khwA0KVcEmOAbN
	pt5tSBKiy9QPnY9shburcUbLTcQxq9hYa5UXQ8E5B7VPWBg3bvqnJNR30chSHFFRG/MD60JtbZ6
	/htOph9/jhinyfDa9PIFIgexkWrNQn4+62JQvHNhg7GrgGTxnF3d5r1QCDFMOo16e8k6nA9zOtH
	c=
X-Gm-Gg: AY/fxX4UsoXbK9fMrStOusJYNaWeF3gyeb01J04WYR9YY+cJjAPVmmtmoCghSLEcLeB
	oyStqkwF9SVBlRkcY5yUBSy6lPrE6uTnOitRq5sA+8pmODEwlMd8sGslu86K1GiMPQzoOFsL4hw
	pUrdvczWsQLA9o3cAqp1jqqUlJ4Zl0kx+iwz0GLe97BOX2v1NT7Fnv6VtWAUach80E4q3WP3Xie
	DB3PY2qNeuJTo6/gp9N7eaQ0Oh7EdQRwNh6x/ABx5SpiTByqAEO8e+YUGd3CHKzH52xFZQcJP5Y
	oCge0Jh8VbWjedtKpgVsfz7jMq4uUujni0fu+DuYtKqOcC3Ka9vLVixJFdWJcxZXg/Rs1UVrgJP
	lhMNhtsxqFQBBDcN8KSoGxoQMSVkx0oVRNQ==
X-Received: by 2002:a05:620a:4804:b0:8c5:1fb5:1631 with SMTP id af79cd13be357-8c52fbcf18fmr431954285a.76.1768404630163;
        Wed, 14 Jan 2026 07:30:30 -0800 (PST)
X-Received: by 2002:a05:620a:4804:b0:8c5:1fb5:1631 with SMTP id af79cd13be357-8c52fbcf18fmr431947685a.76.1768404629608;
        Wed, 14 Jan 2026 07:30:29 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22812989a12.29.2026.01.14.07.30.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:30:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 16:30:06 +0100
Subject: [PATCH 05/11] pinctrl: aw9523: Simplify locking with guard()
MIME-Version: 1.0
Message-Id: <20260114-pinctrl-cleanup-guard-v1-5-a14572685cd3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4481;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=Y+FQmd4rABqYPyTPKLcnkK9CTadziXSgsQ+69hWhimA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpZ7aELAglkIA71S9aDHg8tY0ki5ruKpcTIipIp
 9RdX4NrwWOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWe2hAAKCRDBN2bmhouD
 1/igD/9PwYlGol1XFHKqtfTdSYI+oQLSjl0z2sqJC/KrK4RW/0UQiErzillTKszLs1fzun100dI
 EhV3/cNFb7EkGAiUv0DOTJm2rLXXXAEKq4sfHj2AvOo4AOdm1Vhzaxohnqhz8lbieU5tgItO8kM
 CikX6JY0DNIPuK8tFa3jeDEczOXlluE7E41BjdvQjxbKKo8CAfks/3wwtIsxd1meu0Uh7pDT24v
 aYd+vgDxKOiXkiRG+CUevINMLknU969di7fKX4meZYuzU3R9984ZwT3wKVcWI1thioeP3d0iKIZ
 BLsydRVePUf0VtejFOq22/8mIaGexs7h91zpasohVsgWexuKGuKJNsUuVOnAKfAxsGZjauTVDrL
 18hpyd0FGakefMHY330a0Z2lqwnCW9k43rDquioM3Bdk17JEYl8zl6Ke/SDgqPsWJjHmhjt99ld
 hGunGrieUUrlWbMED9RW+3E0q0mHN8hMeN8k3fFjaBxIE0ScSmF/3Ln/vbtAuQF19W3wAWGZaJY
 GtZjFlirhF09jNZdVRAU8jaxTE4Y1Xh+h4BXysH0im9u+xRCGpdGx49RemYsLFWX5SsXtSUWzJE
 4DUYUyd6Czhj6ON/2GFFww6B8ToMmkk78qjK6kFM6DwCDfpPDItQEKm0PHRqNap0/QZwJwiIuvB
 W8opp7AXG42HEmA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: 6Qp0RZiTkWZ0Z3iNiou2QHCJQEsdrayT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEyOSBTYWx0ZWRfX4ddsZuCKZvMS
 EKyJJ8UnGfAEjjZbqQa5zeamQiUBjbHTLtONJ2F/ApPT1WM5XnN2qV50818kQHZGhVoG4aXUvUF
 8S7fnoeMs5Z3lxSUjgLvMfcAr5CUaPLtBCJcCytIxqhiVmMw98k+G6T/n+Dxu/xxPl+PXJCfkCZ
 veKWFrB2hzgv9w3+0UyX9Q5sbMPIe8GhGw/s1yy0rOKySRqOveOc1oFmtBkkLBGTFJIKo5DQduj
 yqDZowIIA/R0zpKmhEO8NscRaYPm9LxewCTIc2pjMmXXZ/MO15bv5grtTpLfc64gbEhePJYYlz+
 IwlB7ilkIEIlf4XLG2wD2QpAMh6u6SsM9DE9NJTW0/PjH9WfWEsffayOoGCl5nuWPxiituwOuE5
 XcIE1QURAKb4Q7TwswyeiPiDJBdjSIgIVNeVZn2/R7FlrDatQ8LiKj5UtsEL8p/mSB85vEh+6VE
 WGOButP5kqnIxVlb5Lw==
X-Authority-Analysis: v=2.4 cv=Fr0IPmrq c=1 sm=1 tr=0 ts=6967b697 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=sJPWbbE6un6nfY-uGV8A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 6Qp0RZiTkWZ0Z3iNiou2QHCJQEsdrayT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_073033_359248_3D7460A2 
X-CRM114-Status: GOOD (  17.49  )
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

Simplify error handling (less gotos) over locks with guard() which also
removes possibility (at least by reading the code) of returning
uninitialized rc/ret value in aw9523_pconf_set() and
aw9523_gpio_get_multiple() functions.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/pinctrl-aw9523.c | 53 +++++++++++++++++-----------------------
 1 file changed, 23 insertions(+), 30 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-aw9523.c b/drivers/pinctrl/pinctrl-aw9523.c
index 479553a79216..02a24ac87ea4 100644
--- a/drivers/pinctrl/pinctrl-aw9523.c
+++ b/drivers/pinctrl/pinctrl-aw9523.c
@@ -291,14 +291,14 @@ static int aw9523_pconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 	unsigned int mask, val;
 	int i, rc;
 
-	mutex_lock(&awi->i2c_lock);
+	guard(mutex)(&awi->i2c_lock);
 	for (i = 0; i < num_configs; i++) {
 		param = pinconf_to_config_param(configs[i]);
 		arg = pinconf_to_config_argument(configs[i]);
 
 		rc = aw9523_pcfg_param_to_reg(param, pin, &reg);
 		if (rc)
-			goto end;
+			return rc;
 
 		switch (param) {
 		case PIN_CONFIG_LEVEL:
@@ -307,7 +307,7 @@ static int aw9523_pconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 						AW9523_REG_CONF_STATE(pin),
 						BIT(regbit), 0);
 			if (rc)
-				goto end;
+				return rc;
 
 			/* Then, fall through to config output level */
 			fallthrough;
@@ -323,10 +323,9 @@ static int aw9523_pconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 			break;
 		case PIN_CONFIG_DRIVE_OPEN_DRAIN:
 			/* Open-Drain is supported only on port 0 */
-			if (pin >= AW9523_PINS_PER_PORT) {
-				rc = -ENOTSUPP;
-				goto end;
-			}
+			if (pin >= AW9523_PINS_PER_PORT)
+				return -ENOTSUPP;
+
 			mask = AW9523_GCR_GPOMD_MASK;
 			val = 0;
 			break;
@@ -341,17 +340,15 @@ static int aw9523_pconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 			val = AW9523_GCR_GPOMD_MASK;
 			break;
 		default:
-			rc = -ENOTSUPP;
-			goto end;
+			return -ENOTSUPP;
 		}
 
 		rc = regmap_update_bits(awi->regmap, reg, mask, val);
 		if (rc)
-			goto end;
+			return rc;
 	}
-end:
-	mutex_unlock(&awi->i2c_lock);
-	return rc;
+
+	return 0;
 }
 
 static const struct pinconf_ops aw9523_pinconf_ops = {
@@ -599,14 +596,14 @@ static int aw9523_gpio_get_multiple(struct gpio_chip *chip,
 	u8 m, state = 0;
 	int ret;
 
-	mutex_lock(&awi->i2c_lock);
+	guard(mutex)(&awi->i2c_lock);
 
 	/* Port 0 (gpio 0-7) */
 	m = *mask;
 	if (m) {
 		ret = _aw9523_gpio_get_multiple(awi, 0, &state, m);
 		if (ret)
-			goto out;
+			return ret;
 	}
 	*bits = state;
 
@@ -616,13 +613,12 @@ static int aw9523_gpio_get_multiple(struct gpio_chip *chip,
 		ret = _aw9523_gpio_get_multiple(awi, AW9523_PINS_PER_PORT,
 						&state, m);
 		if (ret)
-			goto out;
+			return ret;
 
 		*bits |= (state << 8);
 	}
-out:
-	mutex_unlock(&awi->i2c_lock);
-	return ret;
+
+	return 0;
 }
 
 static int aw9523_gpio_set_multiple(struct gpio_chip *chip,
@@ -632,30 +628,28 @@ static int aw9523_gpio_set_multiple(struct gpio_chip *chip,
 	struct aw9523 *awi = gpiochip_get_data(chip);
 	u8 mask_lo, mask_hi, bits_lo, bits_hi;
 	unsigned int reg;
-	int ret = 0;
+	int ret;
 
 	mask_lo = *mask;
 	mask_hi = *mask >> 8;
 	bits_lo = *bits;
 	bits_hi = *bits >> 8;
 
-	mutex_lock(&awi->i2c_lock);
+	guard(mutex)(&awi->i2c_lock);
 	if (mask_hi) {
 		reg = AW9523_REG_OUT_STATE(AW9523_PINS_PER_PORT);
 		ret = regmap_write_bits(awi->regmap, reg, mask_hi, bits_hi);
 		if (ret)
-			goto out;
+			return ret;
 	}
 	if (mask_lo) {
 		reg = AW9523_REG_OUT_STATE(0);
 		ret = regmap_write_bits(awi->regmap, reg, mask_lo, bits_lo);
 		if (ret)
-			goto out;
+			return ret;
 	}
 
-out:
-	mutex_unlock(&awi->i2c_lock);
-	return ret;
+	return 0;
 }
 
 static int aw9523_gpio_set(struct gpio_chip *chip, unsigned int offset,
@@ -695,16 +689,15 @@ static int aw9523_direction_output(struct gpio_chip *chip,
 	u8 regbit = offset % AW9523_PINS_PER_PORT;
 	int ret;
 
-	mutex_lock(&awi->i2c_lock);
+	guard(mutex)(&awi->i2c_lock);
 	ret = regmap_update_bits(awi->regmap, AW9523_REG_OUT_STATE(offset),
 				 BIT(regbit), value ? BIT(regbit) : 0);
 	if (ret)
-		goto end;
+		return ret;
 
 	ret = regmap_update_bits(awi->regmap, AW9523_REG_CONF_STATE(offset),
 				 BIT(regbit), 0);
-end:
-	mutex_unlock(&awi->i2c_lock);
+
 	return ret;
 }
 

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
