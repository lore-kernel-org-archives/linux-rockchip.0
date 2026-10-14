Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3511CCC6B2A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 12:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azgootGlCXG5e4voH6puzW89vuocRS/AJW6KH6It0t8=; b=NTp12q+AGvPt11
	bYp6ghn6BRPWYKXXXaO0NyZCFAcfZxS3HbGrlpKADdXDvwQWTPE/YhNOD4AvAuPJt4MPeSo0I31sJ
	qDhCYc8d2W8XfKb3s1yDuPpDeDXIPfZ9fIUUINMKLdS+tL5F/KnCgOV/7cSUXvFctrD4T25rAnqZo
	EKO9S9Wj3qrkmO2Ws9ymJQUiZLJexJLK94bgtZDK3XU9xfoWwRNpoBeUI6f83Ol+wwkUkmQTpG0rc
	xm5z+Y3qOb6rZZUnLmp13goLj3rEto7oZgJx0vu/ev+uYIxSIAmtX03TnKtOWcVKTAB2GNskDwyX+
	TN1trB/TkO/fBl4nC8cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGyEL-0000000FRcn-3jG3;
	Wed, 14 Oct 2026 12:37:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGyEH-0000000FRY9-0KoH
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 12:37:11 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69EBbAZb2685707
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 12:37:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rewnoAte/tJ+Uf3m9Ci2S88OVFipQXBWInPmr2cUEoY=; b=AlfsYFZZiHLF5rCi
	wGlfXU/2kSJ+RvyjkPXizaFvhtZcX3+soS8b9X0bEtpg2jMZ1/KehuZctksYXhy4
	w9GsiK/7mhC3RvdEaF0j0rqYO4HWDnEm7ERb2G+36WyxrWGnY0dE6DebcM/ugyeB
	jcWDmG/3njb5u1KZ+SCDCpOEG3IFdeBR9BKxj0xw1uOjuPDUzMhV27+gBwH7VX28
	69lITh8sNIuvikehQB59dc4gYzSmSRJLtNZ1wxtF94p0evtDy02VaTKHFKw0NBeR
	WsIqoCGxiZowXFKI1j+zcpye3M52Ah7lbkDzsUaoqMPSQPZSH1LDw32zKDvstXIp
	qoiYLw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ha46u1hwf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 12:37:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93e46c120dfso39453685a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 05:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791981427; x=1792586227; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rewnoAte/tJ+Uf3m9Ci2S88OVFipQXBWInPmr2cUEoY=;
        b=OHPXxj8J4VpRvN7aOs5iNLeE7kXy/kbgQtPry0QJFhidNErYGI+zyJDZK/EYhkB7hq
         BY/qpEwwgcYJ4pgmldekGjCTpz6/ocz8P743HY0iE+hE1iVAwyR3gF7aTEQO0r1iKyLE
         QxGHpVuCAK7cVYuqXnXJJkh8I6ZysizcvE7K0ICsDCQnu5Ke1NFXNCNdahhTbzcNmq6+
         0JNitQaDLR6Zg+T9aSN9QJwPli0uJI0judAenzJOMH2+osOUpKVxrj3THPJUUvNiJmM+
         6OER49CdcmmzVsifDW5NGZl15mD3rZ+cvPmnhXyxM6Idy8CxfBgNLxImPXh8KV6+4JXG
         RUNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791981427; x=1792586227;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rewnoAte/tJ+Uf3m9Ci2S88OVFipQXBWInPmr2cUEoY=;
        b=XM+6Px0qG9gAjBdAN5XdzmiAfVidvzqrw2njfAInRcHJSoJ5iABloCu2lt9mk4FBZ7
         E/pfS9oME9jMwaBDJ9dO7l1QZk2YqYKRBi+z2nG2mS/Wpd3tWJirrfRHz2d0DAN8pT2C
         pLwN1RNvZvrA5IL8oQqyQwAq/Dj2/8yXA7RqVymRXqTkEj2pVwC9H1aTTnoqWuzXWG1F
         Q9k+dci1Swniw66XPhJSLISxkXXn6VrIMrvGMubP6PbiBayNnt+PY/p7xvnWwW0bMZKY
         A9DEqwnQ5l7VSKYKfx2ZPqKbch53oIghSvCQ/+M320rbFUUZp1ThLeVvgzghH0Zm/NFW
         vpxA==
X-Forwarded-Encrypted: i=1; AKwUvByiMCDnkRpBtEEMRBGGWKKKVM10Jhti2cOB0Rg3BvY6mZXQLI+QPMRnNatv/xYQS39hWmsL/mSN33HmfK2nZg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJiQr6qMg1AbF8YjhbzYmku+GyHQe6xcd9AHdxjy9QPOEBAqOHI
	jqn/X0ZaJzvUGoNGaO7XVfVV6lHTOb4q0wM3+HdaI2f6L04CqGQwckXyVfXU5wkbZd89CG0SruF
	fL+wn3CKTI8Awj68MfOH6ck0QBHgPtgkZcnz+f3iZG0RLvJRDqqGJ13gFpqaAeDHdEV3LJuGcon
	w=
X-Gm-Gg: AYBFou1s/zjVmSIT8thpg8DpxnvUhObqRAfjZ1qC1z5LeBVJra/d+gpNbysszruF/gZ
	gOxiFe0j1+MShBi6j/kRU+jA7FdLWx1WcCKW6ybQ2i0Exud6Tp/zNSmmsVYNSHfdNcNXpfWs30t
	6yRbjd9dk56rA18aFlhguudDE4QjSk9sfmry86r9W9B6UxhrTJ+Ao0CWYgaW0lN4TN9wTfIEBCf
	9ybvsShIgm+9UDh3yDgLnHBRiXS2tFIDfQGBemvqFZA7ag0hoX7isc+xDzgDwSWJOaOZ4tBxzQ4
	gmNcvfy/fp92la4M8VtAPlrfBQQh4oRwtEzNqnriMMMVd8itzecEzTRHMk/bPdTHjy0o84nFoAx
	IkTapFvsZLdrRDQTmcfie99vIpQAM
X-Received: by 2002:a05:620a:44c4:b0:93b:d7a2:dd2b with SMTP id af79cd13be357-93ebd282089mr2546073085a.59.1791981427422;
        Wed, 14 Oct 2026 05:37:07 -0700 (PDT)
X-Received: by 2002:a05:620a:44c4:b0:93b:d7a2:dd2b with SMTP id af79cd13be357-93ebd282089mr2546067185a.59.1791981426847;
        Wed, 14 Oct 2026 05:37:06 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a19f318c31sm206122615e9.3.2026.10.14.05.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 05:37:05 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 14 Oct 2026 14:36:40 +0200
Subject: [PATCH net-next v16 1/7] net: stmmac: dwmac4: don't program the
 1us tick counter without a CSR clock
MIME-Version: 1.0
Message-Id: <20261014-qcom-sa8255p-emac-v16-1-0266c2ead980@oss.qualcomm.com>
References: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
In-Reply-To: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>, Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Romain Gantois <romain.gantois@bootlin.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Eric Dumazet <edumazet@kernel.org>, Radu Rendec <radu@rendec.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org, brgl@kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2229;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=2sBp7G5mc6uJL64UNxM6dPPb+46Qh7eHGxK9GvyQ9M8=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqz3dl4m+qpuql2x9Vuhi+JubZ+193cRWj0/Vsd
 rhj3qvfaZWJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCas93ZQAKCRAFnS7L/zaE
 wxR0D/wIXdjVmoAyOQeH7rB9q9+tq0uz6+cpOevgEQPFym6rHDfDydYuv+Yx0TwmDKaVxqZEqA9
 jkqxQdxY0HzAlkxLaSYJL9dSajCUAOaQizKey3sUqyZ7gTnQDdYKJIM0saQvyScb+N+VM1CDA8k
 nCOaR4A1ZkyhRe1eaRwXPwqDRV23Y3dscokhHny/y2qlzPrjHUcocoY9Pxz2mKFyd/1dPshepuB
 ALhQTHp2qyGnx/sbNa40NyMyYIxUSOqLNpg7MPPZ/eHcKYgkGdFKBuvD2nc/aTbpFGHG5jyxLP7
 frCLl5Xa+7k1cT8qg4UPQXAjT5M9VZGOy0QgPZLiQMJdI7DjYAqQCNwAjEPF6Bdmm3tpaZetRLC
 XgnGVlbnhs/uZHx/2whbV9/5bXedTCMQikDfotazCFTGCdTIo+U5ShDYDkAFqkFxFAMdt1Q77RU
 FrTnQ/+A4OMvVXId7/C5hRBwuLsxeyoEqwLXi7guVcuc++nVFS9OqFGBV0mCz2L/Hv3+M0qQ3SK
 5kDrgaYLzvgplw4JYzqeNct7wnTR6M+0AxpMQbSCzDQKiIXYKo22NyVVXf8wZNCzpQ3j8Wix6vp
 14Gpzo8HiHXuQp4PsyR+VZQ3zaYmSmsJGP8CN32EV6T2d1AeDhgTNRKD1oP6kJRByraeJ6rRevV
 024vzSVRofGO1kA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDA1MCBTYWx0ZWRfXyp5tM6zuwK16
 S01SuRMBWXe4Xyikn2XfCy5CdNFLYAtI7nX/sFShoTLScWpsQw2TF4daWdL7cCn0NwAzURAGFlB
 NNEqSXjlGbEPCpAJWFcFCj8Qm442ozo=
X-Proofpoint-GUID: y1wBKEJyd3P35uTrDWjgdbhzCI57kvzH
X-Authority-Analysis: v=2.4 cv=Y6ttIReN c=1 sm=1 tr=0 ts=6acf7774 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=Xm6EMxWvXKbCXn_Kg3kA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDA1MCBTYWx0ZWRfXyjCXbT56llFr
 ASKa0CcjdKY05lSAJpGhxcD0McClh1eZbVlI9zLkk8vKpktjjYrr508ixhvTkqGZ1q+yCyFyDOC
 SELIH28wpEoxRj2ZjB/I7E6L/w/SF8H7sALKzKpuejDKz4CiVvPhHB2793la7y4hF8vK/ebZC7Z
 p44+NsQX6OzZulOQ66A42yC7mmaA3HsXJ3R9PuXqYdq/8pulaYBgdwKbx5nLsUS8ToNnbFNkEk8
 Jw0KMVGvwO4Y/PDXOwpc45XFUJS1m+aqTfQJwaD3DEmUKvANuEllB9VykLjtH+yIdDaca3rxoUW
 osJe/I6NNfaeRfVt82D9XNYqaojN2wM3ntMXOuasuyiX2NO321TntyZOR/tmlF/6TqkeuGN7EnR
 X3xIX3fNoW9Hzq9nAAfTR8oszSDvuTDlxLs3H2edRs5MuX1+t6Vz8AMmd1hn4MVkMPBPjlTsJOI
 Rqwnwbr0td2SeBNvQWw==
X-Proofpoint-ORIG-GUID: y1wBKEJyd3P35uTrDWjgdbhzCI57kvzH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610140050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_053709_183751_BD5A0B26 
X-CRM114-Status: GOOD (  17.87  )
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

dwmac4_core_init() derives the TIC counter value from the rate of the CSR
clock. If no such clock is available (for instance because clocks are
managed by firmware and not described in DT), the rate is 0 and
(0 / 1000000) - 1 underflows to 0xffffffff, which is then written
to the register and can break the LPI timers that count in microseconds.

Leave the register at its reset value when the CSR clock rate is
unknown. The RX watchdog conversion helpers already cope with a missing
clock by falling back to clk_ref_rate or returning 0, so nothing else
needs to change.

This is first hit with the Qualcomm sa8255p ethernet, whose DT has no
clocks.

Fixes: 68f5d3dc2808 ("net: stmmac: qcom-ethqos: add support for sa8255p")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/179052656185.2160803.1751830002645522416@kernel.org/
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index cd6c5d6f42b5445918f277a2b4168d8f473bfca1..259e2ebed8c14dfdb9318da9be03c5f1dc9b1284 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -48,9 +48,14 @@ static void dwmac4_core_init(struct mac_device_info *hw,
 	value = readl(ioaddr + GMAC_CONFIG);
 	writel(value | GMAC_CORE_INIT, ioaddr + GMAC_CONFIG);
 
-	/* Configure LPI 1us counter to number of CSR clock ticks in 1us - 1 */
+	/* Configure LPI 1us counter to number of CSR clock ticks in 1us - 1.
+	 * Platforms with firmware-managed clocks may not expose the CSR clock
+	 * to linux, in which case there's no meaningful value to program.
+	 */
 	clk_rate = clk_get_rate(priv->plat->stmmac_clk);
-	writel((clk_rate / 1000000) - 1, ioaddr + GMAC4_MAC_ONEUS_TIC_COUNTER);
+	if (clk_rate >= 1000000)
+		writel((clk_rate / 1000000) - 1,
+		       ioaddr + GMAC4_MAC_ONEUS_TIC_COUNTER);
 
 	/* Enable GMAC interrupts */
 	writel(GMAC_INT_DEFAULT_ENABLE, ioaddr + GMAC_INT_EN);

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
