Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAEDCCA5FED
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jan 2026 18:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vO2JntUosZjlUQP4KaMZ2P8vUmY+va14mF8Dn5WwQpc=; b=XTd248jZthKJc5
	JIgD0hnE5FRi8q6BIMAy7I3wosW7vUVdNjrh4eqiH7Ei75NptHkwUO32pMaGys+XaK/QT/rzXOdkr
	s2u1jKdFT3ALsfXgxOZzLEcFM3q/kkNf8+ZFvhHY9S45odDDU+0oxsFQKzoqI2/oLlLDjka361tJM
	ZL4KDJ/PVmXzcNh3VINVkROrpIWgFlMoBNPRP3WrrVCZ040yE8vfgZ1Lrdu/wCoMa9VR1OJ/blqM3
	4uFpW6rnD9I1y2x4xfjrtiHCDn9PDSPhrwyXbO3pFyArQXUVYnujzZRVbxnEc0FKg37Q1aBI4nJir
	DkSS8IkYv0wJZ/kP0X/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXEN-00000000fq1-3u8T;
	Sun, 18 Jan 2026 18:10:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXE6-00000000fYI-4BEN
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Jan 2026 18:10:16 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60IBvLC41838393
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LXncEA4jW+AgdDM8Dn/nTshgL+Kv2q2dFOJVpt182v4=; b=KXHpX1m8m3rn36Jg
	XAOXwYt+u9K3TjPostd/Ga+OJGx79TdYs516hJ7Uuj1DP0pic1AGnEgszDSbZwne
	PlDfhwKpRxALzLVi9/aOTpk6UditMnDm/26xLFGDtbrHEDQ8D8GdH0lLQR4Svsqo
	pnP7iEh9mMwx8zLBM9tlTFKD5OpkE0j97kbRdyVpYBq944m/m/NN6wbfgx+b0Do/
	6FHtL3IJp+oK9lZqxZHck0q7vU3B3O9QpoRqSvP9CfcaD0RXSV07ytsg3tCUjcGe
	ow5J9jBBcx1u5RbtkPZs81+1yN/7xDoG6TjVaRHXngafujCzRFemL8NSl76wwWQ1
	/MK8Jw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br20x2vg0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 18:10:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a0ec2496so717974785a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 10:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768759813; x=1769364613; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LXncEA4jW+AgdDM8Dn/nTshgL+Kv2q2dFOJVpt182v4=;
        b=kqE6n2rt7IhMiw62kPPZpyFreJCWPsv6EN/YBEtTfbrixjaiL4goYwACBJ3iZD7OMP
         JfFkwqLwSTMUL88q72JPptE3qnjPbrBIgLH4AOoZopi0nI5/DEzbSj8YhnIDhfC3fWp8
         De7w889HSdy9m2/gUswYlEEksB5JolhK3DLD/mlIMUF6ZhNXh0uONO1ywpy7TbcTkUeZ
         icssZaIGDeJDlt3T+kiLkvgv4TggGNQ1LXbmoXN4rRskhH18Q3ZDGoL3l4YzIEIj+9um
         wx4/Zwktt+yiNoQ/Qxz7tjLknrmP53p8LTnx5y2hGZKCe4cveAyDqrz4RRevsgBQNXJw
         BM1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768759813; x=1769364613;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LXncEA4jW+AgdDM8Dn/nTshgL+Kv2q2dFOJVpt182v4=;
        b=Yz8Oeq1RfltfvCGnVLe4d5VBMBcoC9hJjwPFoFPTBdcB2E/zAC0u52vTdQ3PTK/Din
         nfZl+n+BwYnc7Hw0MtRbASXCQdLuzkVsMdY80CZjT7S9D3cZFI+Vmlm1uw6nOPBP6xHn
         ZizlIVQ68QVUr9qZZD+QOWsrOw8ru3tNi57g2bhzKhLFNdmMhmSk1mxaI58zgdVgqkbo
         7ox/hlkxgkd+5KyYmNFBvfByf0vYCU6USkG55nI2siIf32YT2yM2xKeYbe3vCuGLN5yF
         Ek6t1ioCmGZp8CtC3bHhcjC3oTZ4llqxVGvY/vWYPIrasdd+4x0302cQc+m28oKCRxZs
         L5Yw==
X-Forwarded-Encrypted: i=1; AJvYcCV4wnx0F9tPGbPX53OcRNebDd/70CpAi/kzxnlzPWHUoD34JwYTA7p5DvMnKT/L6XopDP5wVBGy3VDjlMN0mA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzwJNus+ULgb+DPjxwbk9n8iEaL6Z6O+zFl+0Op5eiCcyIiDs2D
	SuOmvWxgxPpXVZkEicAI+r+5o3y+GfxJvJB09ylru+JqptEWklFto2OdvwPh2Ot+DZ7CGiYPB8y
	Mk6HNsKGox6NJMLYclNEdUr5BMuufc2gspz6DD+uQ4S6IF+WR7vCKPS84MDBBnxTuG1DqRdY8tk
	k=
X-Gm-Gg: AY/fxX56DbvtwNAxbkdwWh8VgEwBLzivCL7sIhG/TqrlQ3oYANSO59c1i4NZrWOnDUV
	wpCOxZNzWu6/SXzk7n9HT2iSpRf46MMtG7RvWI+XWBWUil+RaOUba9LJt5IM/wXZcv5pq6Opv3J
	+YI2e4eMVj7qkRCbMZznrhYng34nNoVhv+k7OfLtrRYQklTI8UCgsfRFZNq0XTdLHhQELQAozxc
	FnXFoUwm2wjSuSN2ZoTZMBES7wXwjn05trU4LXtY036xlzhYKvQtc+Tv01tOgFiTVm6VZHXQwAp
	inFNDTUQL5TaLnStoxpmq7E7261z5iA7zdvKzMBIX19HdAvD3KiQuK3tswl7+p/+qwGi7M9uu7d
	kG/zqmfgezZQK9Y8w9FPYuUQgZ7KSD/wNwQ==
X-Received: by 2002:a05:620a:4801:b0:89e:67a9:fced with SMTP id af79cd13be357-8c6a6789e6bmr1223536885a.66.1768759813357;
        Sun, 18 Jan 2026 10:10:13 -0800 (PST)
X-Received: by 2002:a05:620a:4801:b0:89e:67a9:fced with SMTP id af79cd13be357-8c6a6789e6bmr1223533585a.66.1768759812755;
        Sun, 18 Jan 2026 10:10:12 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe44b37sm62162085e9.12.2026.01.18.10.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 10:10:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Sun, 18 Jan 2026 19:09:28 +0100
Subject: [PATCH v2 05/11] pinctrl: aw9523: Simplify locking with guard()
MIME-Version: 1.0
Message-Id: <20260118-pinctrl-cleanup-guard-v2-5-bd36f681bdc0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4481;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=Y+FQmd4rABqYPyTPKLcnkK9CTadziXSgsQ+69hWhimA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpbSHyayuoBeIp9CFs/To0KGzg5wtCKMQchY4rd
 ZTVsgBVTRyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaW0h8gAKCRDBN2bmhouD
 18jKD/0Q73dFNHHnrM5068MUNMPnIOmN7objobVATcjCxeNYoQiN8W7ivD4SWKVqA/DdX1R5St3
 0/tCDBGqXO12+uj40UIZE4ljdgKCD+fsn+WSOyeGFeJIxnFDyd8A6kCV+M957Av09NHGOuZzCz1
 n84LPH3ZRBC3uEP8gG7lVsIgTJ7Wd71Udx4I6Tf07bk7F2r+44NHCHKRtu55X8WAjRvLmynm86Z
 YOKnbZ2UCIUPJ62n3gMymM0/Ir+JkYjini6adzG92nXecsMf8J7ulbe3ZCqT5uJ5jTnZRR3KKGb
 psXi0oNg+Osb0wrW5nqR6O2Im3Oqs44dXVV3i/kbow6pNJeKSmmU5W+l68bvNbT281ghjvLIslY
 vvnRwxod3eZUawpDeP6T//3MNuKK2Gg8x9Lq9ey+ddE7nCFUTBA3ypX1ErFjwFg0DHDk12c8WII
 gi08BdhYaU8LtIxZzranwWhmvK3EgkrmYF+5lIoiIaY0e8XcmSW8WsiZCwrGUt/cBly3O7IY92Y
 FNoDXLaqmlFiFgTiMN2tVA1DpqquhFr/7fQp130j1BwOiRjF1OVqoVodqNKRPARHoBOIEmZMpIC
 PcI+/h6wyzJPyYXnC1UAQaCuoEGdkdUU7RcbXCWBfUmrFfqNlwHm1DgkCLMLdyMmi3GmnFcSM1m
 fHjfP614CxYOwQA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE4MDE1OSBTYWx0ZWRfXw6z0HnqDhs3U
 ewO9x88hQlhk2LTbFWkgnSfwUgl40sCsfq6xt1xeMc1zmW8joUVfqa1ot7FzuTVRrHRvtmTfMDT
 V8DDDycowRy6H8uwNJkfazPDblO4JNzVBFq2dBpflPgS6CtWOCB0D4MXRoLS52n43XjjfYAgSLY
 9++HV7o6kzoqW51W4R0ucR1MTOu2xn+H8Y/ks3Pbm9WgQRrvmYPpLYx6L3G6okxU2EgHIFetzCH
 welEN9OHzekiGVloIVreVGWX22i5qI5FDZOsb+HR9ae4HPc4njAm1w0ziUy7BKZPlgWUC2hXJFe
 Yk+LPL4oZ3LBbcRAB8cB6Y2q4WizmuHa+AvWUOaPXs3nQivQlxDinFdn1WyZc8s1wXYjHnFJX82
 IkjO15jRJjKAXpJlF0ApVhq9TqPytpWECQY6bNHxV8Ege+n63h2luWJM1eUe9L+V1M3OANYNDq5
 6O5lqKNcv/l85PQ5ABw==
X-Proofpoint-ORIG-GUID: qgQP7NiOCQKvdis5rICjH84elZnio3pL
X-Proofpoint-GUID: qgQP7NiOCQKvdis5rICjH84elZnio3pL
X-Authority-Analysis: v=2.4 cv=abRsXBot c=1 sm=1 tr=0 ts=696d2205 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=sJPWbbE6un6nfY-uGV8A:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601180159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_101015_171227_5F4BD6C4 
X-CRM114-Status: GOOD (  17.48  )
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
