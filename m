Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F8BCC9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 15:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVc2wBsdYxcBW2eZCBo8TMysoUSTg3j47kZ5MYIfax0=; b=oL4xpkE4HGDnzU
	bkZ/CEiczFYvo84vOo35x6zvJK+9a9FA27mJkbiGv2EO1shOarmO5N60OeCLoTeA9zInqdugOcqlW
	bo9p8YI3UqJxVcB59xnhU8SQ0hjTulyHiFSit8dYfxdnEjq6EEImdwUsmLuiYjvCKJYZ7t67bclIB
	Fjm8d59tM5KsMf/H14gtb+kXW8/7lreX8V3fLob6oBCot9pDGrxkr06pVaFe7B31IoC7f1F0eMGL+
	4fV67hqcGkZnXTieRr7nFf2vBTmdt356Hh73nVITBZgTt0Nl4y4GhkhcaFGc9NPTnaUClP8qM+NrU
	Sj0xCMT0yYslcLi0QKBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9OhI-00000008fDc-3bkS;
	Wed, 23 Sep 2026 15:15:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Oh5-00000008eu0-1oU3
	for linux-rockchip@bombadil.infradead.org;
	Wed, 23 Sep 2026 15:15:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=Jfr6FHf4J3HKMLFr5umwwFEv12n51Ck9PHChu4Q8jgc=; b=GpLn+FCf34MeyR4TCOaObtpk2J
	djPZMXm6VUAq71hx3GmJU+rIMJMfpZIaDaBbJ2K3o76iJUDkqYDMpstfNaqw1h5RXMul02cSpgSzo
	mnPIYY0W79iICeCgNo5ySZziCbKx/g6A0g+Ru5wOYWG2tlvhzbXZhPYVG38yWaiXdVhzi/I/BA7Pd
	DuG49ZLhGi+kzBHF+gdEsNSWgT3wMCJrNkFDUPeiQIZpQvU9ILdicLK04ScuD4SBZslrnOYGAbiEF
	5ThBECCqE/gQhG84x68xkwc0UEOCQZ9qZA5FE75YxCd+LzH1vmsxB06zjUaqcjMCo31Cs79ByaIXH
	TGFuXBVA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Oh1-0000000DZCa-01rr
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 15:15:34 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68NBbSKG3295494
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 15:15:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jfr6FHf4J3HKMLFr5umwwFEv12n51Ck9PHChu4Q8jgc=; b=AaCpPBUm1to8ix55
	YkhDFwNGndJEJ7L3tR8r37VpSQvubhHYsACyK6J90x4kkTaeCIUEb3S+P9NKkI40
	aTfl4kfGNFOglWyONfWlLouZ6GMsf7iGR6nWYEBGNex2aY2Iu9I+C4vAQc3aTuIu
	dIYH5326KgsmxdalAUoAGdqCJYkHtTZN2IV9ViXmpAkAwrqnYaD3fnVikctGLfgq
	WCDv91U06KYPaKN+mXGijS6SaM0l+KP5OX8QKLglxru/DmnP9+T46DjgTnp7XrTw
	27c0h4dWyOrxTZUaWBWMXzvNteUB28ZDzYh7VVSwEUW6x72CIQd2FaS5e3FHuozm
	YUVENQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvbwm9h2q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 15:15:26 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-7ac2663eba2so828571137.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 08:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790176525; x=1790781325; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Jfr6FHf4J3HKMLFr5umwwFEv12n51Ck9PHChu4Q8jgc=;
        b=fnmKL6d0cZz73hYHs+FNDGzVQWFnN4GZ5JJ0hie4TQ3OMOC+CBy3yx9t7caKgdpdMz
         txKzNQsXn4db5/BK5Q/fOfOcinfzxGtCL6pJXphNUY21d1Bb3p0fh5GFbdh+r729zt7M
         KYO7xkmCCL73Do5uMkmdIodLy5KAzES8AVk3v8T2mLxUZv9u60L7hz7mhN3btQNEKcEK
         yA/UaOO/USXmULpURm++3EVRo6fjk7amp2r1WHbHv8mNnWUTxZC2joFd+Q5hA4cVPdUD
         rjxcdhJCG+kS8xO9GktHmt3ebHWtVikl3DpAaHKNG6cAw3hyvp3vW0w9dLjoVmBQmegD
         AjHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790176525; x=1790781325;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Jfr6FHf4J3HKMLFr5umwwFEv12n51Ck9PHChu4Q8jgc=;
        b=i+hTig5Z6f6DgWa/8YoT0kAVrT51HE+kEqutXozvY2V3KWBpoMpTKrKNfBEZJ45jql
         201PVOwKH7zKLtdwemW7YE4Jp+akKszNq8xV02AaVlNDp6hydgOAcFnb+fYLgnp2dyQO
         Rz79bpGvGifqISeSsOjpOfHlwpgkyChNjQwiduxlar2t7iZ1yf/c9uIwHrh710URKiFq
         A+qct7fGKj/V/1ibjQMdLkIlgGGOtCxsnzC8no8Sfze5pv9QoNuJ5wWTdSeNJqfuhoiK
         0607srPlKXxA/zXdpcwf9Vjfwowl1ibHkLpSq+n5MFOpLSqNfHefH53kkn8O7rb7A0rp
         a5jQ==
X-Forwarded-Encrypted: i=1; AKwUvBxMDkyIz2CeyWnjateLTqbWjtbHBUyJeXMSbuUMX9VmSwUhlQXcwlFxWaEq8AiVuJ5mtheUww2P4fnqK/wbCg==@lists.infradead.org
X-Gm-Message-State: AFuF++m7docL75uqeynzSiKIX5i8qiLc7T2+jDcpHu6BQ6al/eSe06tD
	tSzID2LQMXiru/OvfyccRP75Qp/S2Iy+RyG6RQQpfSo9Ck891+5MOpESiK1RccY0/2jB5ztZMSh
	9YZ0nEKFMqHO2FZOGGyQ8fVniCOzhucOJJRsE1rvjQvCPAuaG6Lup8KHSw2fehwwTyx9o9fhbLH
	Y=
X-Gm-Gg: AYBFou2U6/ThvLXjOVj+urAuchpqja/7nnHdHNDm75GafFHtaaZ+amGsGfskW003Ta+
	s8Tm+L3lsFwMy15M3ZgKcN+ZO2lVnUugCf75QyiXh2IoFRe+XY9tBav3f8dUwjl3/DwiaTsnm8h
	klQBCxrikw5YaPdTiuwE8IrZHmradt/iV+aI+OERQVh8iR0a2M6PLp7YSXFEkD1LP+s6Vo+7YX5
	mHyKGkgtnzFzrs4Jm/8/BOdRlMws3uygEQDxDXMihPy2f0TD6IM116+Kq7vrbRtDUjzc3IQgXYe
	8nofEmVabxGUfV1hO0YG9UIRRy0AY2gIOcDeNC1+bt+CmhKvYXQo2KGv5vlqDPYNroqIFuyVxva
	LlkChzFH4h79yNGlckeg1+FLOl5eV
X-Received: by 2002:a05:6102:358a:b0:7a6:d9d1:7e40 with SMTP id ada2fe7eead31-7ac1d0cb288mr2726248137.22.1790176525313;
        Wed, 23 Sep 2026 08:15:25 -0700 (PDT)
X-Received: by 2002:a05:6102:358a:b0:7a6:d9d1:7e40 with SMTP id ada2fe7eead31-7ac1d0cb288mr2726205137.22.1790176524839;
        Wed, 23 Sep 2026 08:15:24 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:34c6:dbd6:5b58:a3fe])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fe0c4054fsm55126325e9.3.2026.09.23.08.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 08:15:23 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 17:14:42 +0200
Subject: [PATCH net-next v15 8/9] net: stmmac: qcom-ethqos: factor out
 linux-level setup into a separate function
MIME-Version: 1.0
Message-Id: <20260923-qcom-sa8255p-emac-v15-8-e82f33720737@oss.qualcomm.com>
References: <20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com>
In-Reply-To: <20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
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
        Bartosz Golaszewski <brgl@kernel.org>, Radu Rendec <radu@rendec.net>
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
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7477;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=tpTcvMP4H52TudHkrbQVYa2cd+espkFD2aaWl0S9lKg=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqs+zrRXT0r3nORrAE8NQw4rLtEBcjIlno0f6qA
 Jkmx3rXApyJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCarPs6wAKCRAFnS7L/zaE
 w5khEACbMwxMUkqzjQHlIJH+xcBUNLHl2G7C65mfWmi4h5JRhBxmdEw2s7HDnHehyINdGbuOGRB
 Ufe1qzPwJNqILCPLaptvpLZAUOEG3+SevH/gNtbZhMB8ggqb5wwCk+vPtXy5Y4uTSxSpbGKOegf
 ZGea1R24JZ2evdDWTNF+dL+hJGJf8Ntt2n0icGtIzjvJKuXyA+DBRNydgPVYleWfHGJxdk0Abwy
 52zaRg+M705uHPKjgIGSLdDyTUR28Udvgqmmrx9JReKegmGO3SxmuXhYJHv680DUKL7KjsFNpmU
 yu3uGEwKVH6q9CVkE3cfPk3A3Jmg1nzDNlpp85WuSfHkUh6FufzwanQnSz55G1KVsfNq+p9Suao
 6NulKVm3cil1nx5tltt5h8DkMt0FsTrWj1G2bKo/sTovnlrr/MZ2YTd82L6AYij/TVAzl4puR44
 DoGWu+tIyhd4LF3NmuR4QLLGiZRLQVD9tUF0GBNk1pbk9yCCSLO669//hcLbU1V1kBjlqkjOXag
 Gm9jh8Jyamzpwr/vg66JwXaZGg9lVcZAT21obE3gSN0nCuUqUM/27X1Ik2LbCDyCeN6R+fVcx9L
 yf1yOS8WD4hf/+ztK+lwysiRbP+Lakj1rThTb57b6fBfPtzBRhQnB1w5e8ttAzTaG2CT/549vN2
 VIgxFNNJr1aX64Q==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDA2MCBTYWx0ZWRfXzMNGIRx3hytH
 qAD8/II84TNWzPbDWx2XQmKQqJFJgbuxG8wTImxGeUrTcZa7aIXgsqgOqdY0bWfeWnI0FBBqO3s
 QvZcEnAbQ8cAMyVs4lV77deiJBqOMzY=
X-Authority-Analysis: v=2.4 cv=R/6WitRX c=1 sm=1 tr=0 ts=6ab3ed0e cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=dj4JEN0qHmgdNMwDfcEA:9 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: h-Q1mosKBXCtWMq8zffq4QI8fujNGc5I
X-Proofpoint-ORIG-GUID: h-Q1mosKBXCtWMq8zffq4QI8fujNGc5I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDA2MCBTYWx0ZWRfX5eeQQOZWL75c
 bCqs76cNbLJZkB3TbWDAQ6GzFHkOOs/3/ME+WO+gM4y/0oH+5LHTMFwjSx2LlJIfoAUDP4STftV
 ZVbjX2CF+7DmMh6yttf8PEocx0xBt93FnTz+v3YtNAZPmWRNpJ/Nvci9aHaZI2BTlXENZ3YdHMt
 pa3BjWk4qxwSMhQZOWsqTc1IUbgCDBtXhd329GPtAL1WYB1ZChrUnLtFck8TfNMT6N6I7Rshwva
 s81lsoAuYJlNfUfROsTbC48jqE73GIGIzFjc1NLprM2+FON7I4xSBuBYcRtf1h0M0vU71gnZEnU
 qi28O55rXhUEQHfIXUJqLlhg9bo5kEoxsCH+uiT3my1WiJcUnWavFxurrl5oB4off7l+pecRViT
 Gr9uOhCcnDPidfox/VmYmsTLrPNHn1uWQ2aTNCCcy833yFO4AROWV7RItUpbyzphhpM5Cai18tz
 4CHqROJ08SqcYOQnZbQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_161531_406634_66DC511A 
X-CRM114-Status: GOOD (  19.83  )
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

Ahead of adding support for firmware-controlled EMAC variants, extend
the ethqos_emac_driver_data structure with a setup() callback, implement
it for the existing models and move all operations not required in SCMI
mode into it.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 99 +++++++++++++++-------
 1 file changed, 68 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index ab1bcb7eb18e22f01556c190f7d8cd8eeba4d0c9..509a5368e69a8fa440bf3b4f58f7b09a683558f3 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -5,6 +5,7 @@
 #include <linux/of.h>
 #include <linux/of_net.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/phy.h>
 #include <linux/phy/phy.h>
 
@@ -81,6 +82,8 @@
 
 #define SGMII_10M_RX_CLK_DVDR			0x31
 
+struct qcom_ethqos;
+
 struct ethqos_emac_por {
 	unsigned int offset;
 	unsigned int value;
@@ -95,6 +98,8 @@ struct ethqos_emac_driver_data {
 	const char *link_clk_name;
 	struct dwmac4_addrs dwmac4_addrs;
 	bool needs_sgmii_loopback;
+	int (*setup)(struct qcom_ethqos *ethqos,
+		     struct plat_stmmacenet_data *plat_dat);
 };
 
 struct qcom_ethqos {
@@ -200,6 +205,9 @@ static void ethqos_set_func_clk_en(struct qcom_ethqos *ethqos)
 	rgmii_setmask(ethqos, RGMII_CONFIG_FUNC_CLK_EN, RGMII_IO_MACRO_CONFIG);
 }
 
+static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat);
+
 static const struct ethqos_emac_por emac_v2_3_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x00C01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642C },
@@ -214,6 +222,7 @@ static const struct ethqos_emac_driver_data emac_v2_3_0_data = {
 	.num_rgmii_por = ARRAY_SIZE(emac_v2_3_0_por),
 	.rgmii_config_loopback_en = true,
 	.has_emac_ge_3 = false,
+	.setup = ethqos_hlos_setup,
 };
 
 static const struct ethqos_emac_por emac_v2_1_0_por[] = {
@@ -230,6 +239,7 @@ static const struct ethqos_emac_driver_data emac_v2_1_0_data = {
 	.num_rgmii_por = ARRAY_SIZE(emac_v2_1_0_por),
 	.rgmii_config_loopback_en = false,
 	.has_emac_ge_3 = false,
+	.setup = ethqos_hlos_setup,
 };
 
 static const struct ethqos_emac_por emac_v3_0_0_por[] = {
@@ -262,6 +272,7 @@ static const struct ethqos_emac_driver_data emac_v3_0_0_data = {
 		.mtl_low_cred = 0x00008024,
 		.mtl_low_cred_offset = 0x1000,
 	},
+	.setup = ethqos_hlos_setup,
 };
 
 static const struct ethqos_emac_por emac_v4_0_0_por[] = {
@@ -297,6 +308,7 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 		.mtl_low_cred = 0x00008024,
 		.mtl_low_cred_offset = 0x1000,
 	},
+	.setup = ethqos_hlos_setup,
 };
 
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
@@ -692,6 +704,58 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 	netdev_dbg(priv->dev, "PTP rate %lu\n", plat_dat->clk_ptp_rate);
 }
 
+static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat)
+{
+	struct platform_device *pdev = ethqos->pdev;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
+	if (IS_ERR(ethqos->rgmii_base))
+		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
+				     "Failed to map rgmii resource\n");
+
+	ethqos->link_clk = devm_clk_get(dev, ethqos->data->link_clk_name ?: "rgmii");
+	if (IS_ERR(ethqos->link_clk))
+		return dev_err_probe(dev, PTR_ERR(ethqos->link_clk),
+				     "Failed to get link_clk\n");
+
+	plat_dat->clks_config = ethqos_clks_config;
+
+	ret = ethqos_clks_config(ethqos, true);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
+	if (ret)
+		return ret;
+
+	ethqos_set_clk_tx_rate(ethqos, NULL, plat_dat->phy_interface, SPEED_1000);
+	qcom_ethqos_set_sgmii_loopback(ethqos, true);
+	ethqos_set_func_clk_en(ethqos);
+
+	switch (ethqos->phy_mode) {
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_rgmii;
+		break;
+	case PHY_INTERFACE_MODE_2500BASEX:
+	case PHY_INTERFACE_MODE_SGMII:
+		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_sgmii;
+		break;
+	default:
+		break;
+	}
+
+	plat_dat->set_clk_tx_rate = ethqos_set_clk_tx_rate;
+	plat_dat->dump_debug_regs = rgmii_dump;
+
+	return 0;
+}
+
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -713,23 +777,20 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 				     "dt configuration failed\n");
 	}
 
-	plat_dat->clks_config = ethqos_clks_config;
-
 	ethqos = devm_kzalloc(dev, sizeof(*ethqos), GFP_KERNEL);
 	if (!ethqos)
 		return -ENOMEM;
 
 	ethqos->phy_mode = plat_dat->phy_interface;
+
 	switch (ethqos->phy_mode) {
 	case PHY_INTERFACE_MODE_RGMII:
 	case PHY_INTERFACE_MODE_RGMII_ID:
 	case PHY_INTERFACE_MODE_RGMII_RXID:
 	case PHY_INTERFACE_MODE_RGMII_TXID:
-		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_rgmii;
 		break;
 	case PHY_INTERFACE_MODE_2500BASEX:
 	case PHY_INTERFACE_MODE_SGMII:
-		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_sgmii;
 		plat_dat->mac_finish = ethqos_mac_finish_serdes;
 		break;
 	default:
@@ -739,24 +800,13 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	}
 
 	ethqos->pdev = pdev;
-	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
-	if (IS_ERR(ethqos->rgmii_base))
-		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
-				     "Failed to map rgmii resource\n");
-
 	data = of_device_get_match_data(dev);
 	ethqos->data = data;
 
-	ethqos->link_clk = devm_clk_get(dev, data->link_clk_name ?: "rgmii");
-	if (IS_ERR(ethqos->link_clk))
-		return dev_err_probe(dev, PTR_ERR(ethqos->link_clk),
-				     "Failed to get link_clk\n");
-
-	ret = ethqos_clks_config(ethqos, true);
-	if (ret)
-		return ret;
+	if (WARN_ON(!data->setup))
+		return -EINVAL;
 
-	ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
+	ret = data->setup(ethqos, plat_dat);
 	if (ret)
 		return ret;
 
@@ -765,21 +815,8 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(ethqos->serdes_phy),
 				     "Failed to get serdes phy\n");
 
-	ethqos_set_clk_tx_rate(ethqos, NULL, plat_dat->phy_interface,
-			       SPEED_1000);
-
-	qcom_ethqos_set_sgmii_loopback(ethqos, true);
-	ethqos_set_func_clk_en(ethqos);
-
-	/* The clocks are controlled by firmware, so we don't know for certain
-	 * what clock rate is being used. Hardware documentation mentions that
-	 * the AHB slave clock will be in the range of 50 to 100MHz, which
-	 * equates to a MDC between 1.19 and 2.38MHz.
-	 */
 	plat_dat->clk_csr = STMMAC_CSR_60_100M;
 	plat_dat->bsp_priv = ethqos;
-	plat_dat->set_clk_tx_rate = ethqos_set_clk_tx_rate;
-	plat_dat->dump_debug_regs = rgmii_dump;
 	plat_dat->ptp_clk_freq_config = ethqos_ptp_clk_freq_config;
 	plat_dat->core_type = DWMAC_CORE_GMAC4;
 	if (data->has_emac_ge_3)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
