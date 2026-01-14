Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AE37D37E4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jS+0qK6vYLML3DFsKXfOYapBfYGBPjQZtTOvtPhMF+E=; b=N42VPl1TecdsA+
	L/HSkiostx40VmAkOPiU5q7IhCdzt55do3AwfHjopZxnjtJJER03HUXQEQTupBb6pNY0f/BRn6IaC
	2SU5Sc6rzQTdcBS7cH2oH3l5Iaom8OJuG5kE0L+lNSTDmERxGNY8Gd+ifIbyPeZsTBTWCQt7gMlTL
	vrkBhQzo4veG8/wpH8+2hAxEc4uOZib+wYH9v92XoQ2nByCsgzA48oIsJOY2OO6q+ZQxM8pn3hNI6
	pZjGtVaJ8otcipxex7is2BylXQ9BDHuvQxG/4SkatGFwfdawOOaq9Xl+CsCqQtkUCYXo/t4lWQB/f
	MBZh6TGAKqaJZQxIcS4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2qa-00000009i3N-2d9g;
	Wed, 14 Jan 2026 15:31:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pR-00000009hOW-3vGT
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:30:52 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EA4uWI2902724
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ssy8kvmbkidBSVa4bIF/Sg6F1PMs1iwvsiG9/WVtcJY=; b=kk8JIzgWD/bAHEgM
	0ls96MNXXtEja6QlnGHg+sHWfdxg9wDNaEzJfvyQq5xMnTuFWVseT9s6RLHdO5L9
	fiiRlWgh/YHepJkNkuC0AnfkwGL0Ld6YutVOHruXFFvt2zdl1KPFXN2Cdk+9raEf
	zVwyi4HdbYB1Qm3iEm8EXAmNAB5eexz3+aKnzn6LtAne6tKxrKfpmd2Pdf1s2JA6
	PGnyZKWvZl78FlUvryh6W208cUEVgEwxQtAzboLq6Fvy6bXHKAL+r7R4mbLDWzH6
	KQ/pTMq+l2VkT7Uu6Vm/oLuuz9ef9Gr2BrJAtjOSQ6YQeOgumZ7CN3XyCY0Zv1ZS
	hqsjxw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp931h2bm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:37 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50146a67232so38177831cf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768404636; x=1769009436; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ssy8kvmbkidBSVa4bIF/Sg6F1PMs1iwvsiG9/WVtcJY=;
        b=QAZ35Gzt49NYLRWj6OnhS5ZvNnxxS1L8NxzGkYXF7KE1O23OAxAQEJZ+kyiQYQqOjZ
         8WVMZ97wn80WDzzYNP75qX++4h8qtw9cyBXzvmQZYlrxpeLUA+meTlvZpUX86s75M4Jz
         k7fPkLZoMH2MI1pBNXA2v4H/3SuhWiHyY8C/3R0uCzF5R9OueUBLoAmPrAztqagRi6rx
         ELCpQF6MDKPNovlV+hgu5hBjnjQWis7rMfAtjUUvhJJTce0iO8G6X80g1bpvXajJvypx
         CAk9BpL3swmuXgKnnH63DQu59LKxd7zK0p22JM/weth2VMxgoyLebPOTbo6bNjPpx7PS
         A44A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404636; x=1769009436;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ssy8kvmbkidBSVa4bIF/Sg6F1PMs1iwvsiG9/WVtcJY=;
        b=gKAUXuuVXjVIpKQ/Wj5ft7lI99m7ETH4tnrL8FckXDNAtjoXpxqyJCwan+co+gQp8R
         PrMxaJdYUwptGVJLFHTFdFCtWDJzI7vsRWBKc2BVji77SCbMQk4NLCBq0/22IawszC7A
         qQPXyNkxqVikSOvQd3Kwq2lInF22rfmk4N9rR0EP2+zCF7AizleC7aT96Od6NvnsS7We
         YY9non8qPAw/Wq/wXYhpRlVejSKLPD8RuPJ/M45/loIDveaOW30ycdLhKCtWGuDjOMXi
         FpVS+3cC5EnLlhgQsfUpBDt1aFVrz4ybXc1PGjDU23YI1Ev0/IQxJKiZbcxkMVvmmik3
         C+2A==
X-Forwarded-Encrypted: i=1; AJvYcCV7c2PhHuLefZwdN3FYJ11pklWHTtzTB3O9x4J2lZbw7Xbxv6k61ZXZ00IcZdtrtx43mTOz5WohUBR/EyyrBw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwH/tkX3Ckz6Lyqk3bnvBkGmRHA+OtU62J9Af9cM+OfrHwaH2L9
	gMYPdmYgCPFHj4q9xoTRluq8xaGxWt9yPHnAdaNQjhK42dwLa+GxEhkDdoyeZQO4QOqKu0d120/
	sLe8lXTjSb/FlmN+aQSpBc5mnEKd6iOdUJet6EXePcv4opQk/pc1GCq/GdYBr6cO6KhWVJ0jlIz
	k=
X-Gm-Gg: AY/fxX4OA+51hEJzXfkwIG69S/2GkNih+yEQkpcwvPjItjr60GqKy53b9nwTzfgXtiS
	Y0EaUeZq/Y4S8Poxs0+o0GggsLbgLvyZDjVBlov3hE1Tq7lA2DxKHZ6MutPspJI/hir20dedebS
	GOkLS1SnyNkN9vHTcdGZwBFWLeGiEO9wrur4qU72C3ocbZM2gaFXkFoWplwjOc5FeA1Ws9k0lJs
	BFvwqwUjD6kX3rBAYkMunhbphuZMkS5XRNLsae1PwxXIDKWQNyfmeceWH/6zs1xjcRwtNwdDkQ6
	SJSP8hHlYQYyiPpSwSBszmZ7wimQyL8mUnZM4UTww0if48gC+4ghragR503NoEnUKtpfSsYQJSz
	2EcGKMLKWaB/nLIlBKFwkhyj7c9I6RX2dgw==
X-Received: by 2002:a05:620a:4549:b0:8b2:db27:4268 with SMTP id af79cd13be357-8c5317f0aaamr303446385a.53.1768404636490;
        Wed, 14 Jan 2026 07:30:36 -0800 (PST)
X-Received: by 2002:a05:620a:4549:b0:8b2:db27:4268 with SMTP id af79cd13be357-8c5317f0aaamr303432485a.53.1768404635555;
        Wed, 14 Jan 2026 07:30:35 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22812989a12.29.2026.01.14.07.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:30:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 16:30:09 +0100
Subject: [PATCH 08/11] pinctrl: tegra-xusb: Return void in padctl
 enable/disable functions
MIME-Version: 1.0
Message-Id: <20260114-pinctrl-cleanup-guard-v1-8-a14572685cd3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1889;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=zRGKe5UJ9yNFcA3nCyV2yle+pcJ0o698KmnQ7j+oxLg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpZ7aG1jDmkP4a6PmHCk7jxdg6pIwc6m3a2BsZu
 jfRoWqEDhyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWe2hgAKCRDBN2bmhouD
 18PUEACGRm9HFTgK/BMYNlKpt3lPmWT9bCXtaAiUNJGcB6ffgJheT+i457oOaT/xTx1LOOiYEau
 UWjdo7vnfye/rqPz8xYcdQr+go81raUQ3IhBxe+LqfaMunA9y3Q+s3QbktSC3PldiTWJyw6MXBt
 uq+YFH0Vtnkbp8TC6c1687wMzaJsm5xlKxC6x3Sfmws6HwZXhBuTB4Hi0wT0my3LoS8gJTHQTNq
 +qkjU0hLXmrpN6ibgVT1FxGuHDuDSNeVSEIHmrFSXVlPBywSQGm5gVuLyiQCtiarsEhPhlP1a06
 OD9Hmdkv9AZLGDb+Nyi9BewRwnASnSvswYKtqIMj+lA+fj+BdCmRx1CeX2CIRINVcIZXzU4+VMe
 uKlw9dXawo9KJHktVbqmjTBM/mP3CqYpYoLKJ/Z266veUYfVXw8zFBpEdU0xSOqRlekxTnkGZEN
 dOEKquxcczR8jUIAagMutrlY6GtaQG8YcU5pIdWXfU7Mmly/s9fuJlOFKiCuv78MnGkL2CIwOxF
 saww7DthM71jMUAZ8mCReBzVQOz3GSqWUmdqg2hOkdn6kGEQgkbdIeWBCfvFxgKmUJOw6Jx3QkV
 ceyz1gCkgjID4vnUSP0ziWiUhEXkrHazIzGuYyBPUGmzvaZk1w/COGY+KgPKeu7arJ/qiUw/2Iy
 P4nTGG0eFE6fjiA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=BOW+bVQG c=1 sm=1 tr=0 ts=6967b69d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Ed5BEzkqmhObfCaRRI0A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: nudeCN0U7KDcKDu6GsKOMxo0qa42uQZn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEyOSBTYWx0ZWRfX8Xt/xtd6Lrbn
 23kkUYWuh/yloDRdwYp7T8KrAf6tpze6B4ggWaRwGyI4jRGiyK7IwqW3DEiSKzTdguvcVMFB0Oh
 rnm8tTwUFV3n0ffY6VKbtvbIsbVozflZAxLWR+DwfbqJOu+aaS4naY9m394xnOvgCHnDC/vrZWH
 VECrnMc6ef8hZ28T1Di/S8icNKxsnmB/JeJiQ5m/e38dqMhxNidL3eX3cCCWstcO8dmBgGmIYqm
 dQ/uZ49o4QEAjRDE4c4ENgYyyt0eOKUa8OKnCmhiWj+E2IYZ77recNKcpJWHMDzY/PItsos/oG1
 WDCLHZCiCyQ+4Vp50km6Dh3JHW3m/a//iIGqZ9Zj4adf3ili4YgRcQqJ1DcbXshF0I+L4DNu63U
 U4HzIrmF9O1WpxFTbGvu12ot8ckVRGXryw8itrp+ieeVGXQw2T6jqG6DnmWWzBA2x63daU91Wme
 a/aFgsgi5Hk00+gXZ9Q==
X-Proofpoint-GUID: nudeCN0U7KDcKDu6GsKOMxo0qa42uQZn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_073041_393032_5C1A8CFC 
X-CRM114-Status: GOOD (  13.72  )
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

Make the padctl functions a bit simpler by returning void instead of
always '0'.  The callers - phy init/exit - still need to return 0, but
these are smaller function without if/branching.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/tegra/pinctrl-tegra-xusb.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c b/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
index 49c5edeba87f..34a373f7e04d 100644
--- a/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
@@ -474,7 +474,7 @@ static const struct pinconf_ops tegra_xusb_padctl_pinconf_ops = {
 #endif
 };
 
-static int tegra_xusb_padctl_enable(struct tegra_xusb_padctl *padctl)
+static void tegra_xusb_padctl_enable(struct tegra_xusb_padctl *padctl)
 {
 	u32 value;
 
@@ -501,10 +501,9 @@ static int tegra_xusb_padctl_enable(struct tegra_xusb_padctl *padctl)
 
 out:
 	mutex_unlock(&padctl->lock);
-	return 0;
 }
 
-static int tegra_xusb_padctl_disable(struct tegra_xusb_padctl *padctl)
+static void tegra_xusb_padctl_disable(struct tegra_xusb_padctl *padctl)
 {
 	u32 value;
 
@@ -534,21 +533,24 @@ static int tegra_xusb_padctl_disable(struct tegra_xusb_padctl *padctl)
 
 out:
 	mutex_unlock(&padctl->lock);
-	return 0;
 }
 
 static int tegra_xusb_phy_init(struct phy *phy)
 {
 	struct tegra_xusb_padctl *padctl = phy_get_drvdata(phy);
 
-	return tegra_xusb_padctl_enable(padctl);
+	tegra_xusb_padctl_enable(padctl);
+
+	return 0;
 }
 
 static int tegra_xusb_phy_exit(struct phy *phy)
 {
 	struct tegra_xusb_padctl *padctl = phy_get_drvdata(phy);
 
-	return tegra_xusb_padctl_disable(padctl);
+	tegra_xusb_padctl_disable(padctl);
+
+	return 0;
 }
 
 static int pcie_phy_power_on(struct phy *phy)

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
