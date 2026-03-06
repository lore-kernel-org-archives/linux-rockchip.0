Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47F10C43602
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OA5hsiWOLGRhZWjycJ5z3SeU6fivBU8ph8OAT0Fd8r0=; b=UkDlxU2A6xo0ao
	i+RGUZJpOpvuOVzV5EFymkv/QO6qeS1Kv7ZYSSZGXKpjd0iHvoWW3jWBb5lCcPP+aR+eTnuc8mqS/
	uYvkm9hI4iO40kNJOj6YrrXUqLOWHTInF0KZx2z1HPsEd6h/Thxj/Ba/2YN77hYZE2LUkH5CuJPVp
	iKvRm/yMEiTycR1DAI5rH0XfwimO6FipHmyaC2Dgo2bl2/OF3p2CcXWS0tLfaHY9EIfMFO/sQ94WQ
	N4LMNAFMXoYXMiL6Apf0Mh4tJDHoINWARFK/KXKzB6upeBIz0Hi4i0q2XCLMSvcgN6nUmVz4cC4gm
	pWy3NLw9rpoCpBXpuyYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7kT-0000000FISM-05rz;
	Tue, 07 Jul 2026 15:30:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyXOU-000000043v7-25yO
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 15:47:16 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626FT6fl1953630
	for <linux-rockchip@lists.infradead.org>; Fri, 6 Mar 2026 15:47:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2NRYH8lzJWLHa5JUwCNp14+Y3Xn6J7jBFL10EVR15BE=; b=blZWVVFdJm5pq2s4
	PO1IoTK0oZUWN8RBadFnYGbAlc3m2nYxCCAZJoeyN8dZ2GzS0bjFpB/+/WRbRyOp
	cZpzJbPQfn7+onkLGvTUQeviugYAqHOq/E6UEdZyavJbNRK4yvXe+mYUOU7QPYb7
	d0JbnJ8/vwP1drmZ8bqjvxRL3p2PFud7Af9xu0yJEOdXGhYQ882xIq3BJHerJ0ya
	OQ6T2xzkQsIWvvryi6uV2qq00vNQNaUvC9TLAdVdndnGw3EonILWJcNmO7I7ippn
	jt1rdjFiMLsOW7gxeD34OZKDaDvhyZit9ACXtl7PpgHj6PU82Ath2n/2lmPJW0Xg
	hjUYFQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqv9ah6c8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 06 Mar 2026 15:47:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70d16d5a9so4939476385a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Mar 2026 07:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772812033; x=1773416833; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2NRYH8lzJWLHa5JUwCNp14+Y3Xn6J7jBFL10EVR15BE=;
        b=RnuREHZ7I+3qh1j/6IAAhHT3k7sS5ehZ/a6sWuv12qNqsXRBFlM++Tq8OSXH8pjJiD
         AyupDqM27LFVNyZ5x988U2Tyolb3zMr4htIhYX+KEfgfCQvSZIPHpFDuB8IUvy2w+zgA
         TOYt7Y7l2AsODpQqHvJvsj0vnDIyp31/xUpzKUf6zdEi1tRsqdgEqON56bl/EAnYVA9z
         eTrJxp5iDr8ORgSysHK4sZsGkjGua7beV7HwV3cOl+W5u/i8V/EM9PLB+D7+7qyQPpoK
         FusSm5LXOfoSEz4LmHI4brMKIk3HFQCUE5kDQ0umeMeC6LnkFzBbK/C308zQO5KXvBxP
         b9Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772812033; x=1773416833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2NRYH8lzJWLHa5JUwCNp14+Y3Xn6J7jBFL10EVR15BE=;
        b=l884cdQGXLIXogGZ0hGD07XS3rzSQq8rvCQajKKVq2xc6nJwgc0MtxJiw8pdXxsU/t
         ATpKlM/A0d/nvKv9izmH/b4hPCET5H8MzjkzSABcGPWQWl9wxLu2tK/Ge8HFFiEDfkMt
         E2UKclT8jFoDmxrlycIKbZMiOLKNpHhEiySCU/nGUTAMZDGUDz21Gclk2+fYzqhehTZ7
         NW0Zmh8c1fmJyjaCR094mtRwSw8BXX+9waZabA0NPWKq+h7Nvoag/vjQXI2HBfcz5guD
         hastJZT9+KlYOjFTnnNWtsUKOPpwPxTRsEAi65gtUnM5h3doUXm6TRcDQVdVJeCns7jy
         EArQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqqJvwzhbQVvpV9XspHTZhWv8Bn1m5253QJjcpiXDBwXV30SoiiHgCRaxGyQekSzmMt0I96rZcGvYQabrGNw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxZ3MhFMOjhHF6g2tHM/NRCc6RSB56Nc0gQDHAZzFNDlGd3fGWb
	t8Qgm2hUEE8+faQj7MRuvb8DAUYpPloS7j6WQF9ZjeJaGdfQ5F6xLeWR/Uyaj+HKdS6yKD3BKg9
	CfyB/5VrbBJ8CxKBlyNUl/EV5NWbhxwuAQpoy0rpFST7W919+/f7pc4bPsfdyVkuQ4OFdd2Gyib
	M=
X-Gm-Gg: ATEYQzxn10NT6i9Iu+DgNcR4aq/oXAUmYxGBwCPupcfY2ABRYIr2a1/oiQVUbukZGQu
	ltWUSWwyR292KfrFKYAYAHutrMRUpZoryQW9l9Mdhw4fJcJb8/lM8i7a94ESb8wGX816z2j7GUY
	Ob1NTa7JyRwsx8MdRjCa66KUsHavvUgHkzPGWFwVo8WPV+w5bmiS3/9jntGw/xBw3UL5HTosUYm
	giA0ten+M1z2AT2sTJ5OqI0vGkX+VU8vP1yFGKcp4hW3fv1uAPq2wJUqzl4yNPOz8dDDSkBi2EF
	A99H1+Vpo9P7zMBLh34indXiHaQf+3v7jo9F6wweUehrcOcOHB0ii/qsO2zPKCz9Pv3KtX4nfsD
	8A9XTSXz0yeg1kvcuwNFZ3AadaNDlMImej9QWagKSCsN8gjTbRH2c
X-Received: by 2002:a05:620a:4481:b0:8b2:7777:f662 with SMTP id af79cd13be357-8cd6d52ca78mr307271185a.64.1772812032604;
        Fri, 06 Mar 2026 07:47:12 -0800 (PST)
X-Received: by 2002:a05:620a:4481:b0:8b2:7777:f662 with SMTP id af79cd13be357-8cd6d52ca78mr307261085a.64.1772812031898;
        Fri, 06 Mar 2026 07:47:11 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:6d2b:ebde:c946:11eb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae35cf7sm5122767f8f.26.2026.03.06.07.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 07:47:11 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Fri, 06 Mar 2026 16:46:40 +0100
Subject: [PATCH net-next v7 2/7] net: stmmac: qcom-ethqos: use generic
 device properties
MIME-Version: 1.0
Message-Id: <20260306-qcom-sa8255p-emac-v7-2-d6a3013094b7@oss.qualcomm.com>
References: <20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com>
In-Reply-To: <20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Jose Abreu <joabreu@synopsys.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Matthew Gerlach <matthew.gerlach@altera.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Keguang Zhang <keguang.zhang@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Romain Gantois <romain.gantois@bootlin.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Heiko Stuebner <heiko@sntech.de>, Chen Wang <unicorn_wang@outlook.com>,
        Inochi Amaoto <inochiama@gmail.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Minda Chen <minda.chen@starfivetech.com>,
        Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>,
        Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Shuang Liang <liangshuang@eswincomputing.com>,
        Zhi Li <lizhi2@eswincomputing.com>,
        Shangjuan Wei <weishangjuan@eswincomputing.com>,
        "G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>,
        Clark Wang <xiaoning.wang@nxp.com>, Linux Team <linux-imx@nxp.com>,
        Frank Li <Frank.Li@nxp.com>, David Wu <david.wu@rock-chips.com>,
        Samin Guo <samin.guo@starfivetech.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Swathi K S <swathi.ks@samsung.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3034;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=u8u/iXjZq36K7RYc1MNw8bxCkqJ95fEzxfvBCtp9cjI=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpqvbryaTIb50mRpj4hrxdrase97KkN9iHxwUJp
 BlJuvI37VWJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaar26wAKCRAFnS7L/zaE
 wzclD/0ZZh4K959JYxRQjHxVfznc7OkBZWgPBrYs8wAo/K3hokNK0WiKMHJZLzn2SMWtqWzVB0C
 lG0CmntJphIJ1AWgN+rXR93gl3L/sk5A6pAGK7SSpHgcKQlf8M1jF5SOdkc3uDgiPPbHCwxhOPV
 jfsOa3iwvidAeWEMmqummdnOf24q3RxuNLVYxiwqK9KQtEssdTXJFhs3HX4WSDrjs/zBKmKvWfn
 JfxMeHdfG7t91xJMf/P5Wp3DVHk5JKSvM5Lw9DE7CpH8hsz4OoZX1BZ9pxQwOeWcTQiPXheDP4H
 2uoOJ4gBkGRVCondWFER/PJsd0MdsXH5KOFfGoxuqaGdgK1Y3qqZ8vVFIxGTJSNkT4w0iZf3V+q
 w534YqTJUi3ZcbICEFTeWEJ0szhN2f2NEjKDqoPq8mJ8/FfC3bW+4fJQEhhxdpdhQWFeAW3sIC1
 Qc4NbVsTYrLkgRdSzSscY2UwVbUcqY2gpTkANq+PSasQaATRxTxNvKS0sINBmqyjUJmZB9tPw0D
 fB7ST1Lzwr8JkoDBdXDhAT3DM0FM3lJs+m8ywJMoOhaQf0+AsZ5IDwxI61znd6YAwLIw8bOQAQg
 Auc4hPSxQt6V6qfOaIm93wh6MAaEr6z5BfcPqlyr68NN61ugGkB2/8dMWzloVwETVtM1dMCmmwV
 DKcCepzLPjDweIw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: H2GBdzGeChswpvV5voW2F5DFhITqy_cV
X-Proofpoint-ORIG-GUID: H2GBdzGeChswpvV5voW2F5DFhITqy_cV
X-Authority-Analysis: v=2.4 cv=G4wR0tk5 c=1 sm=1 tr=0 ts=69aaf701 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=AGkLNbZTeN-MX8W9OO4A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDE0NiBTYWx0ZWRfX281HjuhkIq1p
 tSRZWz+U+/YaI0QC+9C/XE6qr9Kkn2DlKAPufRluCnA2PnlB30pJ95uc7ZUHCsA1JCn8kbdnFGK
 Sfi8Nh7efLpvnmqQarPzSOCoxmJfvPbtXcvJRCmtsDqrn4hqUujNLkD8WtY7PYpIUkfdGNyKZTE
 L+wYr2WsuqYSEMDBvm6DiZMhnX1uzzYbwNDhnEHqrKA5METa7qyXe0zfBO3vmN6KQcKrnAsumCH
 ToqY5JG6VWZwEn3VX1ekyI20PZr6kDK3mS7TI8rvOH7dC5mKzQEgn9CmdqJXk9wZmSDRhtOtpmS
 z690LlFO6+LDHoaBUuwMhYu/DzAZf6+xm6ZBvSwHWWooYVDDW+sICz0yhQJZ8oNSCMQ+MhYm1uE
 NVwJ+NhkjycQQ2wbor+x7XH1wuusnxti7BfQN6n12hRb+/7xr58ZtSaAiQA99Tho5r3Q01IAORU
 tX8ZsPnnjN0F+uklgcw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_074714_658639_8ACF963C 
X-CRM114-Status: GOOD (  17.23  )
X-Mailman-Approved-At: Tue, 07 Jul 2026 08:29:46 -0700
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

In order to drop the dependency on CONFIG_OF, convert all device property
getters from OF-specific to generic device properties and stop pulling
in any linux/of.h symbols.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig             | 2 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index 07088d03dbab5bd1abf66e9460613b839c1d565e..e2af4fdd654340d618477ed87d3889dbb9aab456 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -135,7 +135,7 @@ config DWMAC_MESON
 config DWMAC_QCOM_ETHQOS
 	tristate "Qualcomm ETHQOS support"
 	default ARCH_QCOM
-	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on ARCH_QCOM || COMPILE_TEST
 	help
 	  Support for the Qualcomm ETHQOS core.
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index af8204c0e188ca8eaa9f31abeddda607f273b4a3..219ea36fe01e6d41299649defe569de034859288 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2018-19, Linaro Limited
 
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of.h>
 #include <linux/of_net.h>
 #include <linux/platform_device.h>
 #include <linux/phy.h>
@@ -730,7 +730,6 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
 	const struct ethqos_emac_driver_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
@@ -779,7 +778,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
 				     "Failed to map rgmii resource\n");
 
-	data = of_device_get_match_data(dev);
+	data = device_get_match_data(dev);
 	ethqos->por = data->por;
 	ethqos->num_por = data->num_por;
 	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
@@ -816,9 +815,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (ethqos->has_emac_ge_3)
 		plat_dat->dwmac4_addrs = &data->dwmac4_addrs;
 	plat_dat->pmt = 1;
-	if (of_property_read_bool(np, "snps,tso"))
+	if (device_property_present(dev, "snps,tso"))
 		plat_dat->flags |= STMMAC_FLAG_TSO_EN;
-	if (of_device_is_compatible(np, "qcom,qcs404-ethqos"))
+	if (device_is_compatible(dev, "qcom,qcs404-ethqos"))
 		plat_dat->flags |= STMMAC_FLAG_RX_CLK_RUNS_IN_LPI;
 	if (data->dma_addr_width)
 		plat_dat->host_dma_width = data->dma_addr_width;

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
