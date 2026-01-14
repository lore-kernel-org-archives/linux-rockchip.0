Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63ED4D37E4E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38gaUB5mfxXQjA44lbsUA0LKWndCzEE7Dh1yjMUsQ0s=; b=jBV3w4rKIJdYci
	klg4LPgBS1XsHw/qSQVYIu9TknNeHMTuXyuVh3DIArK8IC3T5D6iD2sdRG1nTdS0a08s9JoGXhtFQ
	yGRQE7GnOHNx0s0oYTpn+lzRo50T/n1jZQ/Gzm0+/xM+wrMXP1CnomfWmVoqpn6Uw9QS2j8uc2KpM
	ZyMYmcXfBe7Lp+6Titz1gYxjPgr1MUGvW0C+Lh92Ft1l+KH35z1BGoSODvuypbkETir+LJvmpoxRS
	3rsu/X8x9Jq7qiLpneFyzEQEhgnoh0fKjF5uvofSoekwSbYjtf0gyrfOrnfxt1Q/B/NZpcep561ao
	Gzdiy/SLapI/eXzubrOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2qa-00000009i2s-0uuk;
	Wed, 14 Jan 2026 15:31:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pU-00000009hOy-0eNK
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:30:51 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EChZ9n3925545
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	taXBNyuQJxmj4iOFqIUfDmb0YEDOzZ29KLE4Dq+0LV4=; b=oI7iubuJrJC0fgMI
	lUkAMQMVAzmfEMIfufrp9rsjWsXcH2o+6+++OU+t1AgtWvYToBTqLzfCTJ5hbWWc
	zsOmvaBPgp/FPEP8JHQwucbS/WuYShGxyW+lgPoVyVgGAfV3FaYqJ4LDeQjsxxWb
	Hp+0cgOkI35fRxgRp+kIaZ0O0Kq0Jd8CNCAK9GvKzPufghCvcwz0vq6alk+/IZLN
	+Yvdv6h3DUvdafI+5Fb+qaCxdCVOlggJXoBSasoUUjTrHxP+nU8ZL9/9fuBl7ZXb
	GOHzOvBGPL3LIchFN7uT6MG6DvhW9TaYkkitzZ1yRJ71Tmhn3kONflVTlxvRYGfg
	EW4g6A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpbdbrh9v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b9fa6f808cso2634235485a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768404638; x=1769009438; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=taXBNyuQJxmj4iOFqIUfDmb0YEDOzZ29KLE4Dq+0LV4=;
        b=OWHpGX0UDgBZBmkpekU7ECd7pnZBAYOJgv3zy9dE9rO4FB/Y5zLRuiLZl2oQPWJZ1k
         wMwxj9mhjJKUbm88ouyYO6H0zSuN+RjU6qg1czIK6vKSADFVpiwIhwBPWVRR72+AFV69
         T5ddCpEfxhLNCthEKuVKGAcoxIxjHzKbcvzsyr2n4E0mPt+zrD+yXH1Wwgr0ktDT3aoF
         pZo/pTE2iunc+YFimmMD5qXZJni6mBX3cVKbZCZ2dH7LH2eDdBjrKjC+UWLAY7ngMJwM
         mW4Z0OCuEzqqyFtG+zifhBFtgUwszZQm33FvnKigv1LIgq8hFeftarwE4qjvrQKkeWf2
         EfQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404638; x=1769009438;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=taXBNyuQJxmj4iOFqIUfDmb0YEDOzZ29KLE4Dq+0LV4=;
        b=v+jwuYFxkTeTwVpxPmr+t0BBrUL5ujXTVmuJQRvF3yIACFY9A5AhKT+28oUgYtVna6
         2qxxuNgNKhiRCc1LdH7WfpgdsMwuEij43Iwl+jIklmuW/gddqzlhARGp0xtqwdvfMKkb
         NDkNgpX+ZnMjK0U24vqglngE6gszZeOHJEUQ3zr322fsr0bghPxRVvtJGDT9lW5TVKVW
         CSAlstYvmbA3eLNP8v8LVvt+5tuBvkKcTd17lHdsbosfL40hjXd1HA5rvK68CfZWhdkj
         S/E9HEUUU1rfKkZxGZ2PgOnBnEx2ziTLv4c8JDDIqUJkni6qm6jSbE9Jt/MAWkLpj/Tw
         mhHQ==
X-Forwarded-Encrypted: i=1; AJvYcCW975z6gbAJr7ox0p10QGT2jUIvWUhNvZcZFFVsXW9YFSV/cZrvokyZEqatjXN1Ggvv2FvIr43Qokx3VCtVCw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwiFmijgPqh64GxNZp/dP07u1WO+/01Bc0OOng6PbVOKss8R0ao
	8ngdRRx9eN5PS7i30xWqALDrJeTM64PD6S7WYmNFwx8r2cQGGUzaEOGBDIgO8MI8/jepf+ufrh0
	gmcsz4IsbK3Kf+ysG5omptItUIo6NWCmxg75LL44GJCMUxQA0ckqqmHiM68cfvV3CV7wtG/c1Ev
	I=
X-Gm-Gg: AY/fxX4WdvaGCGF5rdkf/wabzL3ws3gpgk3zMifmjWfyOdA1AMzZlmLEUqnpLn4fCzp
	CPgOS5hICpZ5dBYKiLD5Hl5WP/h2xHWZuI+sovUr+pLQMkaaCjtYkD8Kz+cLqf8QX4paG+HTtMz
	vn+RxHPGr3+lVfqeicFWCysCedAsW4KgC5KofG4Vs2KY7O6fKPo8jpUbZRRhhIgzJ1B4Yso6MK4
	IGikAtNGsgKjo7Gix0vsL5tlkwHyBh5hkmnA1MUBz1I2FYx3yXKC+L2TjgxorWMfKW+zpSFPG90
	WrQU2ytsHVm3MUYl53Nz8RflKhymvIJg8//8cpjbYtFeV7zpSN6SrZYV7MfAzFOlhXiPm/TtHM9
	M2p2M2sTx+cxJem8oOU8H7MNfuDjZ1f0VsQ==
X-Received: by 2002:a05:620a:6ccd:b0:89f:5a59:bf30 with SMTP id af79cd13be357-8c52fbffa64mr413614085a.78.1768404638301;
        Wed, 14 Jan 2026 07:30:38 -0800 (PST)
X-Received: by 2002:a05:620a:6ccd:b0:89f:5a59:bf30 with SMTP id af79cd13be357-8c52fbffa64mr413605785a.78.1768404637689;
        Wed, 14 Jan 2026 07:30:37 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22812989a12.29.2026.01.14.07.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:30:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 16:30:10 +0100
Subject: [PATCH 09/11] pinctrl: tegra-xusb: Simplify locking with guard()
MIME-Version: 1.0
Message-Id: <20260114-pinctrl-cleanup-guard-v1-9-a14572685cd3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1933;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=Hz6iLmKEfxDKfrrjH8upUbRNGTU/avM3tmt35o0Wjvc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpZ7aHavwX9VGYJNPXqlYS557XrI51pw+HBiAgS
 ksF1auZQ8aJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWe2hwAKCRDBN2bmhouD
 14N6D/4u0Ishpad2NsggJaHhekQq6iqnAlDq+P4aUzZ2je0asU428AUXHgBNvCHiiaRNuJ7peKn
 kZaXFhOLRJL4lxXomi8DHl1w9D1wmI2dmJY6uuG7+xE0WxinMpd5kVfeW2Xtb54zER0cJh1D5bI
 sVk4n6tZOECbNOeSCkDuz9iEmckynK/jzlrOtYLy0nBFnaMx4id35WfzzlMbiT2y/C/eloosWov
 Hmaa4SZ3MfGPYTu36FG2d+rvHNNb9+WSIuzkjv+VTj3cK17PThBorYGBp/w0aJ8TZSzhi06ZV9p
 muZ8lj8SdZ97AguyfiMxk+Bn7pnrY1uffQ50Y+89Q0MUkED8IzjqPDYMxxlEPSUsTi4rcPT/Nwf
 YjxycS6wVR7jaqPzsW9sPjVnOGg4m4RSiiD1UI2kij+foiDbWUDEcdzMktasIlpA2SELsmvfpKe
 NkKfC/MRbCi7phtLl2BQz7sIegR3+lh5wHlWf5Bp+vdP/TwV+uSXTTrwiRsQhuSaTR+J7imqz7v
 rKwBAo7jL18AC5SjN42i/KN+kBPDr1ukX+5zCgQGI6rTDSkYOwuTeWTgHMyLQmymCwjNAz4SbuG
 wHlm83t3XUAC1jznj2naoOonPyr+Xpa9qqPg4IfTnnixh13WCTfgidggeW++iXeRSKLA/Q1o09+
 FxL7I1nczulzGhg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=NvncssdJ c=1 sm=1 tr=0 ts=6967b69f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=aRO1tsgHJH1V1zxVpf4A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: TjwadueW56ncIXY5Zn7s9CyV2ctPmujl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEzMCBTYWx0ZWRfX7eR0KlxNO86T
 8V2JcM7PFbJ1bN+cnN3SOA2A8yzgk1kBLPcnqenEmbk2iziitOikmfwl1DhW63ycZzjI90b7gvn
 Y4r6zk0SLBg2lUse9yKiyY8nJNrwHDmd82mYuxKfHH4cSUgKhBSfB0PXwJTTWFgQoVdLYk4Gdtr
 wuf3J5hnA53mJYWmWmNUTFYU2gQItjkv6Q6Nja0yAnyVfApOxmTB+N393KCOC8epSj9B8FbHAbI
 4WDlM9SSRBrIB3osPOroznb4NALJCdti6RSPgRl2M9lB8aD8tAHu85ULgdrpXVLTFt/Bw/0hrgF
 tzN6b1RNVYtxrvBOQTrIu3tmV+Edui2OBdj8us/VkQGJ9uRDq/6ipsFsuk7Jl7xmdZ68kZvdeCL
 eEq+HwHPxGWemFMYtNHpEInQT6C81+FsD3I2GiBnSl2UbTbKw8LrUJrJ4ph/ZeUZIYZBVsUV8uG
 QRHfuAUeDzUq+IFn++Q==
X-Proofpoint-GUID: TjwadueW56ncIXY5Zn7s9CyV2ctPmujl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_073041_428054_4166C3CD 
X-CRM114-Status: GOOD (  11.78  )
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
 drivers/pinctrl/tegra/pinctrl-tegra-xusb.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c b/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
index 34a373f7e04d..855f708ce510 100644
--- a/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
@@ -478,10 +478,10 @@ static void tegra_xusb_padctl_enable(struct tegra_xusb_padctl *padctl)
 {
 	u32 value;
 
-	mutex_lock(&padctl->lock);
+	guard(mutex)(&padctl->lock);
 
 	if (padctl->enable++ > 0)
-		goto out;
+		return;
 
 	value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM);
 	value &= ~XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN;
@@ -499,7 +499,6 @@ static void tegra_xusb_padctl_enable(struct tegra_xusb_padctl *padctl)
 	value &= ~XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN;
 	padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM);
 
-out:
 	mutex_unlock(&padctl->lock);
 }
 
@@ -507,13 +506,13 @@ static void tegra_xusb_padctl_disable(struct tegra_xusb_padctl *padctl)
 {
 	u32 value;
 
-	mutex_lock(&padctl->lock);
+	guard(mutex)(&padctl->lock);
 
 	if (WARN_ON(padctl->enable == 0))
-		goto out;
+		return;
 
 	if (--padctl->enable > 0)
-		goto out;
+		return;
 
 	value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM);
 	value |= XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN;
@@ -530,9 +529,6 @@ static void tegra_xusb_padctl_disable(struct tegra_xusb_padctl *padctl)
 	value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM);
 	value |= XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN;
 	padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM);
-
-out:
-	mutex_unlock(&padctl->lock);
 }
 
 static int tegra_xusb_phy_init(struct phy *phy)

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
